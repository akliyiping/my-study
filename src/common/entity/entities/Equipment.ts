import {BaseEntity,Column,Entity,Index,JoinColumn,JoinTable,ManyToMany,ManyToOne,OneToMany,OneToOne,PrimaryColumn,PrimaryGeneratedColumn,RelationId} from "typeorm";
import {EquipmentPropertyUnit} from "./EquipmentPropertyUnit";


@Entity("equipment",{schema:"kings" } )
@Index("equipment_label_uindex",["label",],{unique:true})
export class Equipment extends BaseEntity {

    @Column("varchar",{ 
        nullable:false,
        primary:true,
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
        

    @Column("varchar",{ 
        nullable:true,
        length:300,
        name:"image_url"
        })
    imageUrl:string | null;
        

    @Column("decimal",{ 
        nullable:true,
        scale:1,
        name:"price"
        })
    price:string | null;
        

    @Column("varchar",{ 
        nullable:true,
        length:100,
        name:"category"
        })
    category:string | null;
        

   
    @OneToMany(type=>EquipmentPropertyUnit, equipment_property_unit=>equipment_property_unit.equipmentLabel,{ onDelete: 'RESTRICT' ,onUpdate: 'RESTRICT' })
    equipmentPropertyUnits:EquipmentPropertyUnit[];
    
}
