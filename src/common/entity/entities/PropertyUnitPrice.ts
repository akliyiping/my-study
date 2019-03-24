import {BaseEntity,Column,Entity,Index,JoinColumn,JoinTable,ManyToMany,ManyToOne,OneToMany,OneToOne,PrimaryColumn,PrimaryGeneratedColumn,RelationId} from "typeorm";


@Entity("property_unit_price",{schema:"kings" } )
export class PropertyUnitPrice extends BaseEntity {

    @Column("varchar",{ 
        nullable:false,
        primary:true,
        length:100,
        name:"unit_label"
        })
    unitLabel:string;
        

    @Column("decimal",{ 
        nullable:true,
        scale:1,
        name:"price"
        })
    price:string | null;
        
}
