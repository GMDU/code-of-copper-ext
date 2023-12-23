data modify storage botx:temp macro.x set from storage botx:temp coord.x.value
data modify storage botx:temp macro.y set from storage botx:temp coord.y.value
data modify storage botx:temp macro.z set from storage botx:temp coord.z.value

execute if data storage botx:temp coord.x{variant:"string"} run function botx:function/_helpers/coord_to_macro/macro {coord:"x"}
execute if data storage botx:temp coord.y{variant:"string"} run function botx:function/_helpers/coord_to_macro/macro {coord:"y"}
execute if data storage botx:temp coord.z{variant:"string"} run function botx:function/_helpers/coord_to_macro/macro {coord:"z"}