data modify storage moxlib:api/string/from_array target set from storage botx:temp exec[0].value
execute unless data storage moxlib:api/string/from_array target[] run return -1

function moxlib:api/string/from_array

data modify storage moxlib:api/exec target set from storage moxlib:api/string/from_array output
execute at @s store success storage bot:api/interpreter/function execute.return.value byte 1 run function moxlib:api/exec

data remove storage botx:temp exec[0]
execute if data storage botx:temp exec[] run function botx:function/exec/iterate