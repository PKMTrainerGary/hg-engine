#ifndef BATTLE_SP_H
#define BATTLE_SP_H

#include "task.h"
#include "types.h"

extern void SetupAndStartWildBattle(
    TaskManager *taskman,
    u16 species,
    u8 level,
    u32 *winFlag,
    BOOL canRun,
    BOOL shiny
);

extern void SetupAndStartTotemBattle(
    TaskManager *taskman,
    u16 species,
    u8 level,
    u32 *winFlag,
    BOOL canRun,
    BOOL shiny
);

#endif // BATTLE_SP_H