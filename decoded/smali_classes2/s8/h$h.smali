.class Ls8/h$h;
.super Lcom/miui/gameturbo/active/IWebPanelCallback$Stub;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ls8/h;->o1(Lcom/miui/dock/sidebar/j;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/miui/dock/sidebar/j;

.field final synthetic k:Ls8/h;


# direct methods
.method constructor <init>(Ls8/h;Lcom/miui/dock/sidebar/j;)V
    .locals 0

    iput-object p1, p0, Ls8/h$h;->k:Ls8/h;

    iput-object p2, p0, Ls8/h$h;->a:Lcom/miui/dock/sidebar/j;

    invoke-direct {p0}, Lcom/miui/gameturbo/active/IWebPanelCallback$Stub;-><init>()V

    return-void
.end method

.method public static synthetic o8(Ls8/h$h;)V
    .locals 0

    invoke-direct {p0}, Ls8/h$h;->q8()V

    return-void
.end method

.method public static synthetic p8(Lcom/miui/dock/sidebar/j;)V
    .locals 0

    invoke-static {p0}, Ls8/h$h;->r8(Lcom/miui/dock/sidebar/j;)V

    return-void
.end method

.method private synthetic q8()V
    .locals 3

    iget-object v0, p0, Ls8/h$h;->k:Ls8/h;

    const/4 v1, 0x1

    const-string v2, "onDismiss"

    invoke-static {v0, v1, v2}, Ls8/h;->l(Ls8/h;ZLjava/lang/String;)V

    return-void
.end method

.method private static synthetic r8(Lcom/miui/dock/sidebar/j;)V
    .locals 0

    invoke-virtual {p0}, Lcom/miui/dock/sidebar/j;->A()Lcom/miui/gamebooster/windowmanager/newbox/TurboLayout;

    move-result-object p0

    invoke-virtual {p0}, Lcom/miui/gamebooster/windowmanager/newbox/TurboLayout;->t()V

    return-void
.end method

.method private synthetic s8(Lcom/miui/dock/sidebar/j;)V
    .locals 2

    iget-object v0, p0, Ls8/h$h;->k:Ls8/h;

    invoke-static {v0}, Ls8/h;->n(Ls8/h;)Lo7/a;

    move-result-object v0

    invoke-virtual {v0}, Lo7/a;->f()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lcom/miui/dock/sidebar/j;->P()V

    iget-object v0, p0, Ls8/h$h;->k:Ls8/h;

    new-instance v1, Ls8/k;

    invoke-direct {v1, p1}, Ls8/k;-><init>(Lcom/miui/dock/sidebar/j;)V

    invoke-virtual {v0, p1, v1}, Ls8/h;->Y0(Lcom/miui/dock/sidebar/j;Ljava/lang/Runnable;)V

    goto :goto_0

    :cond_0
    iget-object p1, p0, Ls8/h$h;->k:Ls8/h;

    const/4 v0, 0x1

    const-string v1, "openTurbo"

    invoke-static {p1, v0, v1}, Ls8/h;->l(Ls8/h;ZLjava/lang/String;)V

    :goto_0
    return-void
.end method

.method public static synthetic v1(Ls8/h$h;Lcom/miui/dock/sidebar/j;)V
    .locals 0

    invoke-direct {p0, p1}, Ls8/h$h;->s8(Lcom/miui/dock/sidebar/j;)V

    return-void
.end method


# virtual methods
.method public D1(ILjava/lang/String;)V
    .locals 0

    invoke-static {p1, p2}, Lcom/miui/gamebooster/utils/a$n;->U(ILjava/lang/String;)V

    return-void
.end method

.method public P2()V
    .locals 3

    iget-object v0, p0, Ls8/h$h;->k:Ls8/h;

    invoke-static {v0}, Ls8/h;->m(Ls8/h;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Ls8/h$h;->a:Lcom/miui/dock/sidebar/j;

    new-instance v2, Ls8/i;

    invoke-direct {v2, p0, v1}, Ls8/i;-><init>(Ls8/h$h;Lcom/miui/dock/sidebar/j;)V

    invoke-virtual {v0, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    invoke-static {}, Lcom/miui/gamebooster/utils/a$n;->f()V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    const-string v2, "user_close_casual_panel_time"

    invoke-static {v2, v0, v1}, La8/m0;->h(Ljava/lang/String;J)V

    return-void
.end method

.method public c0(I)I
    .locals 3

    int-to-long v0, p1

    const-string v2, "casual_panel_interval"

    invoke-static {v2, v0, v1}, La8/m0;->h(Ljava/lang/String;J)V

    return p1
.end method

.method public onDismiss()V
    .locals 6

    iget-object v0, p0, Ls8/h$h;->k:Ls8/h;

    invoke-static {v0}, Ls8/h;->m(Ls8/h;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Ls8/j;

    invoke-direct {v1, p0}, Ls8/j;-><init>(Ls8/h$h;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    iget-object v0, p0, Ls8/h$h;->k:Ls8/h;

    iget-object v1, p0, Ls8/h$h;->a:Lcom/miui/dock/sidebar/j;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iget-object v4, p0, Ls8/h$h;->k:Ls8/h;

    invoke-static {v4}, Ls8/h;->j(Ls8/h;)J

    move-result-wide v4

    sub-long/2addr v2, v4

    invoke-static {v0, v1, v2, v3}, Ls8/h;->k(Ls8/h;Lcom/miui/dock/sidebar/j;J)V

    return-void
.end method
