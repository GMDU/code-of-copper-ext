execute unless data storage botx:temp arg{variant:"boolean"} run return -1

execute if data storage botx:temp arg{value:true} run data modify storage botx:temp macro.set set value "true"
execute if data storage botx:temp arg{value:false} run data modify storage botx:temp macro.set set value "false"