execute @e[tag=instr_ptr,tag=!pause] ~~~ detect ~-1~-1~ concrete -1 function bf/internal/step
#Run internal/step if the execution hasn't paused and the next block is concrete