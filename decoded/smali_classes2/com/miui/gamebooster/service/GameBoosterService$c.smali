.class Lcom/miui/gamebooster/service/GameBoosterService$c;
.super Landroid/content/BroadcastReceiver;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/gamebooster/service/GameBoosterService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/miui/gamebooster/service/GameBoosterService;


# direct methods
.method constructor <init>(Lcom/miui/gamebooster/service/GameBoosterService;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/gamebooster/service/GameBoosterService$c;->a:Lcom/miui/gamebooster/service/GameBoosterService;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 3

    if-eqz p2, :cond_2

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p2

    const-string v0, "gb.action.update_game_list"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object p1, p0, Lcom/miui/gamebooster/service/GameBoosterService$c;->a:Lcom/miui/gamebooster/service/GameBoosterService;

    const/16 p2, 0x7e

    invoke-static {p1, p2}, Lcom/miui/gamebooster/service/GameBoosterService;->N(Lcom/miui/gamebooster/service/GameBoosterService;I)V

    goto :goto_0

    :cond_1
    const-string v0, "android.net.conn.CONNECTIVITY_CHANGE"

    invoke-static {p2, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p2

    if-eqz p2, :cond_2

    iget-object p2, p0, Lcom/miui/gamebooster/service/GameBoosterService$c;->a:Lcom/miui/gamebooster/service/GameBoosterService;

    invoke-static {p2}, Lcom/miui/gamebooster/service/GameBoosterService;->P(Lcom/miui/gamebooster/service/GameBoosterService;)Landroid/os/Handler;

    move-result-object v0

    invoke-static {p2, v0}, Lcom/miui/gamebooster/service/w;->B(Landroid/content/Context;Landroid/os/Handler;)Lcom/miui/gamebooster/service/w;

    move-result-object p2

    invoke-virtual {p2}, Lcom/miui/gamebooster/service/w;->C()Z

    move-result p2

    if-nez p2, :cond_2

    invoke-static {}, Lu6/e;->n()Lu6/e;

    move-result-object p2

    iget-object v0, p0, Lcom/miui/gamebooster/service/GameBoosterService$c;->a:Lcom/miui/gamebooster/service/GameBoosterService;

    invoke-static {v0}, Lcom/miui/gamebooster/service/GameBoosterService;->P(Lcom/miui/gamebooster/service/GameBoosterService;)Landroid/os/Handler;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/miui/gamebooster/service/w;->B(Landroid/content/Context;Landroid/os/Handler;)Lcom/miui/gamebooster/service/w;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/gamebooster/service/GameBoosterService$c;->a:Lcom/miui/gamebooster/service/GameBoosterService;

    invoke-static {v1}, Lcom/miui/gamebooster/service/GameBoosterService;->P(Lcom/miui/gamebooster/service/GameBoosterService;)Landroid/os/Handler;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/miui/gamebooster/service/w;->B(Landroid/content/Context;Landroid/os/Handler;)Lcom/miui/gamebooster/service/w;

    move-result-object v1

    invoke-virtual {v1}, Lcom/miui/gamebooster/service/w;->C()Z

    move-result v1

    xor-int/lit8 v1, v1, 0x1

    invoke-virtual {p2, p1, v0, v1}, Lu6/e;->y(Landroid/content/Context;Lcom/miui/gamebooster/service/w;Z)V

    :cond_2
    :goto_0
    return-void
.end method
