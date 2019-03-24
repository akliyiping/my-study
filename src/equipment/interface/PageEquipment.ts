export default interface PageEquipment {
    rune_id: string;
    name: string;
    category: string;
    tier: string;
    info: Info;
}

interface Info {
    icon: string;
    price: string;
    detail: string;
    parent_id: string;
    child_id: string;
    attribute: Attribute[];
    effect: Effect[];
    suit: string;
}

interface Effect {
    name: string;
    effect: string;
    type: string;
}

interface Attribute {
    attribute: string;
    value: string;
    unit: string;
    type: string;
    unique: string;
}
