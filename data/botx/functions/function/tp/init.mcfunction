data modify storage botx:temp coord.x set from storage bot:api/interpreter/function execute.args[0]
data modify storage botx:temp coord.y set from storage bot:api/interpreter/function execute.args[1]
data modify storage botx:temp coord.z set from storage bot:api/interpreter/function execute.args[2]

function botx:function/_helpers/coord_to_macro/init

data modify storage botx:temp macro.selector set value "@s"
function botx:function/tp/selector

execute at @s run function botx:function/tp/macro with storage botx:temp macro