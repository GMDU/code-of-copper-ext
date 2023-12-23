data modify storage bot:api/interpreter/function execute.return set value {type:"literal", variant: "boolean", value: false}
execute unless data storage bot:api/interpreter/function execute.args[0].namespace[] run return -1

data modify storage moxlib:api/string/from_array target set from storage bot:api/interpreter/function execute.args[0].namespace
data modify storage moxlib:api/string/from_array target append value ":"
data modify storage moxlib:api/string/from_array target append from storage bot:api/interpreter/function execute.args[0].id[]

function moxlib:api/string/from_array

data modify storage botx:temp macro.block set from storage moxlib:api/string/from_array output

data modify storage botx:temp coord.x set from storage bot:api/interpreter/function execute.args[1]
data modify storage botx:temp coord.y set from storage bot:api/interpreter/function execute.args[2]
data modify storage botx:temp coord.z set from storage bot:api/interpreter/function execute.args[3]

function botx:function/_helpers/coord_to_macro/init

execute at @s store success storage bot:api/interpreter/function execute.return.value byte 1 run function botx:function/setblock/macro with storage botx:temp macro