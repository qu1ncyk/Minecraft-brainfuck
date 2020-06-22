#Called by dec_pointer
tag @s add at_start
function bf/pause
tellraw @a {"rawtext": [{"text": "§4Pointer can't go before start. Run §6/function bf/continue §4to continue the execution or run §6/function bf/reset §4to stop."}]}