.class Lcom/miui/gamebooster/gamemode/GameModeSettingsActivity$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/gamebooster/gamemode/GameModeSettingsActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/miui/gamebooster/gamemode/GameModeSettingsActivity;


# direct methods
.method constructor <init>(Lcom/miui/gamebooster/gamemode/GameModeSettingsActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/gamebooster/gamemode/GameModeSettingsActivity$b;->a:Lcom/miui/gamebooster/gamemode/GameModeSettingsActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    iget-object v0, p0, Lcom/miui/gamebooster/gamemode/GameModeSettingsActivity$b;->a:Lcom/miui/gamebooster/gamemode/GameModeSettingsActivity;

    invoke-static {v0}, Lcom/miui/gamebooster/gamemode/GameModeSettingsActivity;->e0(Lcom/miui/gamebooster/gamemode/GameModeSettingsActivity;)Landroid/view/View;

    move-result-object v0

    if-ne p1, v0, :cond_0

    iget-object p1, p0, Lcom/miui/gamebooster/gamemode/GameModeSettingsActivity$b;->a:Lcom/miui/gamebooster/gamemode/GameModeSettingsActivity;

    invoke-static {p1}, Lcom/miui/gamebooster/gamemode/GameModeSettingsActivity;->f0(Lcom/miui/gamebooster/gamemode/GameModeSettingsActivity;)Lmiuix/view/l$b;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/miui/gamebooster/gamemode/GameModeSettingsActivity;->startSearchMode(Lmiuix/view/l$b;)V

    :cond_0
    return-void
.end method
