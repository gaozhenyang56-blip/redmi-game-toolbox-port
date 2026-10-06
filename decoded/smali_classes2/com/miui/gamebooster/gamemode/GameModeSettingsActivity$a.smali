.class Lcom/miui/gamebooster/gamemode/GameModeSettingsActivity$a;
.super Lw4/d;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/gamebooster/gamemode/GameModeSettingsActivity;->onCreateLoader(ILandroid/os/Bundle;)Lq0/c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lw4/d<",
        "Ljava/util/List<",
        "Lx6/d;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic q:Lcom/miui/gamebooster/gamemode/GameModeSettingsActivity;


# direct methods
.method constructor <init>(Lcom/miui/gamebooster/gamemode/GameModeSettingsActivity;Landroid/content/Context;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/gamebooster/gamemode/GameModeSettingsActivity$a;->q:Lcom/miui/gamebooster/gamemode/GameModeSettingsActivity;

    invoke-direct {p0, p2}, Lw4/d;-><init>(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method public bridge synthetic G()Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0}, Lcom/miui/gamebooster/gamemode/GameModeSettingsActivity$a;->J()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public J()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lx6/d;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/miui/gamebooster/gamemode/GameModeSettingsActivity$a;->q:Lcom/miui/gamebooster/gamemode/GameModeSettingsActivity;

    invoke-static {v0}, Lcom/miui/gamebooster/gamemode/GameModeSettingsActivity;->d0(Lcom/miui/gamebooster/gamemode/GameModeSettingsActivity;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method
