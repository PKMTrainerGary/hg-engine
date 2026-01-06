#include "../../include/script.h"
#include "../../include/task.h"
#include "../../include/battle.h"
#include "../../include/battle_sp.h"

BOOL ScrCmd_WildBattle(SCRIPTCONTEXT* ctx)
{
    u32* winFlag;
    u16 species;
    u8 level;
    BOOL shiny;

    winFlag = FieldSysGetAttrAddr(ctx->fsys, 24);

    species = ScriptGetVar(ctx);
    level = ScriptGetVar(ctx);
    shiny = ScriptReadByte(ctx);

    SetupAndStartWildBattle(
        ctx->taskman,
        species,
        level,
        winFlag,
        TRUE,
        shiny
    );

    return FALSE;
}
