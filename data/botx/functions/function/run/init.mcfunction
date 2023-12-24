data modify storage bot:api/interpreter/function execute.return set value {type:"undefined", variant: "undefined", value: false}

data modify storage moxlib:api/string/from_array target set from storage bot:api/interpreter/function execute.args[0].namespace
data modify storage moxlib:api/string/from_array target append value ":"
data modify storage moxlib:api/string/from_array target append from storage bot:api/interpreter/function execute.args[0].id[]

execute unless data storage moxlib:api/string/from_array target[] run return -1

function moxlib:api/string/from_array

data modify storage bot:api/interpreter/function execute.return set value {type:"literal", variant: "integer", value: 0}

function botx:function/run/macro with storage moxlib:api/string/from_array