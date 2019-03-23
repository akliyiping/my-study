import {BaseEntity, Column, Entity, Index, JoinColumn, JoinTable, ManyToMany, ManyToOne, OneToMany, OneToOne, PrimaryColumn, PrimaryGeneratedColumn, RelationId} from 'typeorm';
import {PropertyUnitPrice} from './PropertyUnitPrice';

@Entity('property_unit', {schema: 'kings' } )
@Index('property_unit_label_uindex', ['label'], {unique: true})
export class PropertyUnit extends BaseEntity {

    @PrimaryGeneratedColumn({
        type: 'bigint',
        name: 'id',
        })
    id: string;

    @Column('varchar', {
        nullable: false,
        unique: true,
        length: 100,
        name: 'label',
        })
    label: string;

    @Column('varchar', {
        nullable: true,
        length: 100,
        name: 'name',
        })
    name: string | null;

    @OneToMany(type => PropertyUnitPrice, property_unit_price => property_unit_price.unitLabel, { onDelete: 'NO ACTION' , onUpdate: 'NO ACTION' })
    propertyUnitPrices: Promise<PropertyUnitPrice[]>;

}
