import {BaseEntity,Column,Entity,Index,JoinColumn,JoinTable,ManyToMany,ManyToOne,OneToMany,OneToOne,PrimaryColumn,PrimaryGeneratedColumn,RelationId} from "typeorm";
import {PropertyUnit} from "./PropertyUnit";


@Entity("property_unit_price",{schema:"kings" } )
@Index("property_unit_price_property_unit_label_fk",["unitLabel",])
export class PropertyUnitPrice extends BaseEntity {

    @PrimaryGeneratedColumn({
        type:"bigint", 
        name:"id"
        })
    id:string;
        

   
    @ManyToOne(type=>PropertyUnit, property_unit=>property_unit.propertyUnitPrices,{  nullable:false,onDelete: 'NO ACTION',onUpdate: 'NO ACTION' })
    @JoinColumn({ name:'unit_label'})
    unitLabel:Promise<PropertyUnit | null>;


    @Column("decimal",{ 
        nullable:true,
        scale:1,
        name:"price"
        })
    price:string | null;
        
}
