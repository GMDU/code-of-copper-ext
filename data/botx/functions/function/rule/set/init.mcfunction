data modify storage botx:temp arg set from storage bot:api/interpreter/function execute.args[1]

execute unless data storage botx:temp arg.value run return -1

data modify storage botx:temp macro.set set from storage botx:temp arg.value

function botx:function/rule/set/string
function botx:function/rule/set/boolean

function botx:function/rule/set/macro with storage botx:temp macro