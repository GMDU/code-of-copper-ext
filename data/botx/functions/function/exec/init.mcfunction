data modify storage botx:temp exec set from storage bot:api/interpreter/function execute.args
data modify storage bot:api/interpreter/function execute.return set value {type:"literal", variant: "boolean", value: false}

function botx:function/exec/iterate