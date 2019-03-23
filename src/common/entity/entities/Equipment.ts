import {BaseEntity, Column, Entity, Index, JoinColumn, JoinTable, ManyToMany, ManyToOne, OneToMany, OneToOne, PrimaryColumn, PrimaryGeneratedColumn, RelationId} from 'typeorm';

@Entity('equipment', {schema: 'kings' } )
@Index('equipment_label_uindex', ['label'], {unique: true})
export class Equipment {

    @PrimaryGeneratedColumn({
        type: 'bigint',
        name: 'id',
        })
    id: string;

    @Column('varchar', {
        nullable: true,
        unique: true,
        length: 100,
        name: 'label',
        })
    label: string | null;

    @Column('varchar', {
        nullable: true,
        length: 100,
        name: 'name',
        })
    name: string | null;

}
