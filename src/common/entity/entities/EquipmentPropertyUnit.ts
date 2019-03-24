import {BaseEntity,Column,Entity,Index,JoinColumn,JoinTable,ManyToMany,ManyToOne,OneToMany,OneToOne,PrimaryColumn,PrimaryGeneratedColumn,RelationId} from "typeorm";
import {Equipment} from "./Equipment";
import {PropertyUnit} from "./PropertyUnit";


@Entity("equipment_property_unit",{schema:"kings" } )
@Index("equipment_property_unit_equipment_label_fk",["equipmentLabel",])
@Index("equipment_property_unit_property_unit_label_fk",["unitLabel",])
export class EquipmentPropertyUnit extends BaseEntity {

    @PrimaryGeneratedColumn({
        type:"bigint", 
        name:"id"
        })
    id:string;
        

   
    @ManyToOne(type=>Equipment, equipment=>equipment.equipmentPropertyUnits,{ onDelete: 'NO ACTION',onUpdate: 'NO ACTION' })
    @JoinColumn({ name:'equipment_label'})
    equipmentLabel:Equipment | null;


   
    @ManyToOne(type=>PropertyUnit, property_unit=>property_unit.equipmentPropertyUnits,{ onDelete: 'NO ACTION',onUpdate: 'NO ACTION' })
    @JoinColumn({ name:'unit_label'})
    unitLabel:PropertyUnit | null;


    @Column("bigint",{ 
        nullable:true,
        name:"size"
        })
    size:string | null;
        
}
