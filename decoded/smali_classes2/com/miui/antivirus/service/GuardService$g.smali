.class Lcom/miui/antivirus/service/GuardService$g;
.super Landroid/os/Handler;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/antivirus/service/GuardService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "g"
.end annotation


# instance fields
.field final synthetic a:Lcom/miui/antivirus/service/GuardService;


# direct methods
.method private constructor <init>(Lcom/miui/antivirus/service/GuardService;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/antivirus/service/GuardService$g;->a:Lcom/miui/antivirus/service/GuardService;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/miui/antivirus/service/GuardService;Lcom/miui/antivirus/service/GuardService$a;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/miui/antivirus/service/GuardService$g;-><init>(Lcom/miui/antivirus/service/GuardService;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 3

    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_6

    const/4 v1, 0x2

    if-eq v0, v1, :cond_5

    const/4 v1, 0x3

    if-eq v0, v1, :cond_0

    goto :goto_1

    :cond_0
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    instance-of v0, p1, Lw2/w;

    if-eqz v0, :cond_1

    check-cast p1, Lw2/w;

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    :goto_0
    if-eqz p1, :cond_2

    iget-object v0, p0, Lcom/miui/antivirus/service/GuardService$g;->a:Lcom/miui/antivirus/service/GuardService;

    invoke-static {v0}, Lcom/miui/antivirus/service/GuardService;->p(Lcom/miui/antivirus/service/GuardService;)Lw2/w;

    move-result-object v0

    invoke-virtual {p1, v0}, Lw2/w;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    return-void

    :cond_2
    sget-boolean v0, Lmiui/os/Build;->IS_INTERNATIONAL_BUILD:Z

    if-eqz v0, :cond_3

    return-void

    :cond_3
    invoke-static {}, Lef/x;->z()Z

    move-result v0

    if-nez v0, :cond_4

    return-void

    :cond_4
    iget-object v0, p0, Lcom/miui/antivirus/service/GuardService$g;->a:Lcom/miui/antivirus/service/GuardService;

    invoke-static {v0, p1}, Lcom/miui/antivirus/service/GuardService;->r(Lcom/miui/antivirus/service/GuardService;Lw2/w;)Lw2/w;

    new-instance v0, Lcom/miui/antivirus/service/GuardService$g$a;

    invoke-direct {v0, p0, p1}, Lcom/miui/antivirus/service/GuardService$g$a;-><init>(Lcom/miui/antivirus/service/GuardService$g;Lw2/w;)V

    invoke-static {v0}, Lx4/f;->b(Ljava/lang/Runnable;)V

    goto :goto_1

    :cond_5
    iget-object p1, p0, Lcom/miui/antivirus/service/GuardService$g;->a:Lcom/miui/antivirus/service/GuardService;

    invoke-static {p1}, Lcom/miui/antivirus/service/GuardService;->a(Lcom/miui/antivirus/service/GuardService;)V

    iget-object p1, p0, Lcom/miui/antivirus/service/GuardService$g;->a:Lcom/miui/antivirus/service/GuardService;

    invoke-static {p1}, Lcom/miui/antivirus/service/GuardService;->b(Lcom/miui/antivirus/service/GuardService;)Lp9/a;

    move-result-object p1

    invoke-virtual {p1}, Lp9/a;->m()V

    goto :goto_1

    :cond_6
    iget-object p1, p0, Lcom/miui/antivirus/service/GuardService$g;->a:Lcom/miui/antivirus/service/GuardService;

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const/4 v1, 0x0

    const-string v2, "com.miui.app.ExtraStatusBarManager.action_status_safepay"

    invoke-static {p1, v1, v2, v1, v0}, Lw2/t;->P(Landroid/content/Context;ILjava/lang/String;ZLandroid/os/Bundle;)V

    :goto_1
    return-void
.end method
