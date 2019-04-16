import {BaseEntity,Column,Entity,Index,JoinColumn,JoinTable,ManyToMany,ManyToOne,OneToMany,OneToOne,PrimaryColumn,PrimaryGeneratedColumn,RelationId} from "typeorm";
import {EquipmentPropertyUnit} from "./EquipmentPropertyUnit";


@Entity("property_unit",{schema:"kings" } )
@Index("property_unit_label_uindex",["label",],{unique:true})
export class PropertyUnit extends BaseEntity {

    @PrimaryGeneratedColumn({
        type:"bigint", 
        name:"id"
        })
    id:string;
        

    @Column("varchar",{ 
        nullable:false,
        unique: true,
        length:100,
        name:"label"
        })
    label:string;
        

    @Column("varchar",{ 
        nullable:true,
        length:100,
        name:"name"
        })
    name:string | null;
        

    @Column("int",{ 
        nullable:true,
        default: () => "'0'",
        name:"unique"
        })
    unique:number | null;
        

   
    @OneToMany(type=>EquipmentPropertyUnit, equipment_property_unit=>equipment_property_unit.unitLabel,{ onDelete: 'RESTRICT' ,onUpdate: 'RESTRICT' })
    equipmentPropertyUnits:EquipmentPropertyUnit[];
    
}
