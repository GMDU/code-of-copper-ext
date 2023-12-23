data modify storage bot:api/interpreter/function execute.return set value {type:"undefined", variant: "undefined", value: false}
execute unless data storage bot:api/interpreter/function execute.args[0].value[] run return -1
data modify storage bot:api/interpreter/function execute.return set value {type:"literal", variant: "integer", value: 0}


data modify storage moxlib:api/string/from_array target set from storage bot:api/interpreter/function execute.args[0].value
function moxlib:api/string/from_array

data modify storage botx:temp macro.scoreboard set from storage moxlib:api/string/from_array output
data modify storage botx:temp macro.amount set from storage bot:api/interpreter/function execute.args[1].value
data modify storage botx:temp macro.selector set value "@p"
function botx:function/scoreset/selector

execute at @s run function botx:function/scoreset/macro with storage botx:temp macro