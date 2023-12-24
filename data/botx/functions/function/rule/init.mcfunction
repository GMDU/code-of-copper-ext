data modify storage bot:api/interpreter/function execute.return set value {type:"undefined", variant: "undefined", value: false}

data modify storage moxlib:api/string/from_array target set from storage bot:api/interpreter/function execute.args[0].value
execute unless data storage moxlib:api/string/from_array target[] run return -1

function moxlib:api/string/from_array

data modify storage bot:api/interpreter/function execute.return set value {type:"literal", variant: "integer", value: 0}

data modify storage botx:temp macro.gamerule set from storage moxlib:api/string/from_array output

function botx:function/rule/set/init
function botx:function/rule/macro with storage botx:temp macro