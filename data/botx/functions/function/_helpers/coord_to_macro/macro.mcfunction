$data modify storage moxlib:api/string/from_array target set from storage botx:temp coord.$(coord).value
execute unless data storage moxlib:api/string/from_array target[] run return -1
function moxlib:api/string/from_array

$data modify storage botx:temp macro.$(coord) set from storage moxlib:api/string/from_array output