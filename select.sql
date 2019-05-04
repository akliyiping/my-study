select et.*, p.real_price, (et.price-p.real_price)/p.real_price*100 as premium_rate
  from

  (select epu.equipment_label, sum(epu.size*pup.price) as real_price from  equipment_property_unit as epu,
                                                                           property_unit_price as pup
   where  pup.unit_label = epu.unit_label
   group by equipment_label) as p left join equipment et on p.equipment_label = et.label
  #   where et.price > 1500
order by premium_rate asc
