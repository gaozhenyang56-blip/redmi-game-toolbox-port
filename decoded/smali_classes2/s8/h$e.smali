.class Ls8/h$e;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ls8/h;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ls8/h;


# direct methods
.method constructor <init>(Ls8/h;)V
    .locals 0

    iput-object p1, p0, Ls8/h$e;->a:Ls8/h;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    iget-object v0, p0, Ls8/h$e;->a:Ls8/h;

    new-instance v1, Ld7/a0;

    invoke-static {v0}, Ls8/h;->o(Ls8/h;)Landroid/content/Context;

    move-result-object v2

    iget-object v3, p0, Ls8/h$e;->a:Ls8/h;

    invoke-static {v3}, Ls8/h;->r(Ls8/h;)Landroid/view/WindowManager;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Ld7/a0;-><init>(Landroid/content/Context;Landroid/view/WindowManager;)V

    invoke-static {v0, v1}, Ls8/h;->q(Ls8/h;Ld7/a0;)Ld7/a0;

    iget-object v0, p0, Ls8/h$e;->a:Ls8/h;

    invoke-static {v0}, Ls8/h;->s(Ls8/h;)Lcom/miui/dock/sidebar/j;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Ls8/h$e;->a:Ls8/h;

    invoke-static {v0}, Ls8/h;->s(Ls8/h;)Lcom/miui/dock/sidebar/j;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/dock/sidebar/j;->A()Lcom/miui/gamebooster/windowmanager/newbox/TurboLayout;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/gamebooster/windowmanager/newbox/TurboLayout;->getVideoBoxViewAdapter()Ld8/n;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v1, p0, Ls8/h$e;->a:Ls8/h;

    invoke-static {v1}, Ls8/h;->p(Ls8/h;)Ld7/a0;

    move-result-object v1

    invoke-virtual {v0}, Ld8/n;->l()Landroid/view/View;

    move-result-object v0

    iget-object v2, p0, Ls8/h$e;->a:Ls8/h;

    invoke-static {v2}, Ls8/h;->s(Ls8/h;)Lcom/miui/dock/sidebar/j;

    move-result-object v2

    invoke-virtual {v2}, Lcom/miui/dock/sidebar/j;->H()Z

    move-result v2

    invoke-virtual {v1, v0, v2}, Ld7/a0;->b(Landroid/view/View;Z)V

    :cond_0
    return-void
.end method
