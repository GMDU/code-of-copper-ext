execute unless data storage bot:api/interpreter/function execute.args[3].value[] run return -1

data modify storage moxlib:api/string/from_array target set from storage bot:api/interpreter/function execute.args[3].value
function moxlib:api/string/from_array

data modify storage botx:temp macro.selector set from storage moxlib:api/string/from_array output