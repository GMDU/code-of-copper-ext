data remove storage botx:temp macro
data remove storage botx:temp coord

execute if data storage bot:api/interpreter/function execute.signature{id:"exec"} run function botx:function/exec/init
execute if data storage bot:api/interpreter/function execute.signature{id:"tp"} run function botx:function/tp/init
execute if data storage bot:api/interpreter/function execute.signature{id:"setblock"} run function botx:function/setblock/init
execute if data storage bot:api/interpreter/function execute.signature{id:"score"} run function botx:function/score/init
execute if data storage bot:api/interpreter/function execute.signature{id:"scoreset"} run function botx:function/scoreset/init