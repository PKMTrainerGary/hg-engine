#include "../../include/script.h"
#include "../../include/task.h"
#include "../../include/battle.h"
#include "../../include/battle_sp.h"

void SetupAndStartTotemBattle(
    TaskManager* taskman,
    u16 species,
    u8 level,
    u32* winFlag,
    BOOL canRun,
    BOOL shiny
)
{
    SetupAndStartWildBattle(
        taskman,
        species,
        level,
        winFlag,
        canRun,
        shiny
    );
}
