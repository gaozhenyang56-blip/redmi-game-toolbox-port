.class Ls8/u$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ls8/u;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ls8/u;


# direct methods
.method constructor <init>(Ls8/u;)V
    .locals 0

    iput-object p1, p0, Ls8/u$a;->a:Ls8/u;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    :try_start_0
    iget-object v0, p0, Ls8/u$a;->a:Ls8/u;

    invoke-static {v0}, Ls8/u;->j(Ls8/u;)Lcom/miui/gamebooster/customview/AddedRelativeLayout;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Ls8/u$a;->a:Ls8/u;

    invoke-static {v0}, Ls8/u;->j(Ls8/u;)Lcom/miui/gamebooster/customview/AddedRelativeLayout;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/gamebooster/customview/AddedRelativeLayout;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Ls8/u$a;->a:Ls8/u;

    invoke-static {v0}, Ls8/u;->l(Ls8/u;)Landroid/view/WindowManager;

    move-result-object v0

    iget-object v1, p0, Ls8/u$a;->a:Ls8/u;

    invoke-static {v1}, Ls8/u;->j(Ls8/u;)Lcom/miui/gamebooster/customview/AddedRelativeLayout;

    move-result-object v1

    invoke-interface {v0, v1}, Landroid/view/ViewManager;->removeView(Landroid/view/View;)V

    iget-object v0, p0, Ls8/u$a;->a:Ls8/u;

    invoke-static {v0}, Ls8/u;->j(Ls8/u;)Lcom/miui/gamebooster/customview/AddedRelativeLayout;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/miui/gamebooster/customview/AddedRelativeLayout;->setAdded(Z)V

    iget-object v0, p0, Ls8/u$a;->a:Ls8/u;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Ls8/u;->k(Ls8/u;Lcom/miui/gamebooster/customview/AddedRelativeLayout;)Lcom/miui/gamebooster/customview/AddedRelativeLayout;

    :cond_0
    iget-object v0, p0, Ls8/u$a;->a:Ls8/u;

    invoke-static {v0}, Ls8/u;->m(Ls8/u;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Ls8/u$a;->a:Ls8/u;

    invoke-static {v0}, Ls8/u;->n(Ls8/u;)Ljava/lang/ref/WeakReference;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ls8/h;

    invoke-virtual {v0}, Ls8/h;->U()Lcom/miui/gamebooster/service/DockWindowManagerService;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-static {}, La8/g0;->O()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Ls8/u$a;->a:Ls8/u;

    invoke-static {v0}, Ls8/u;->n(Ls8/u;)Ljava/lang/ref/WeakReference;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ls8/h;

    invoke-virtual {v1}, Ls8/h;->X()Lcom/miui/dock/sidebar/j;

    move-result-object v1

    iget-object v2, p0, Ls8/u$a;->a:Ls8/u;

    invoke-static {v2}, Ls8/u;->n(Ls8/u;)Ljava/lang/ref/WeakReference;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ls8/h;

    invoke-virtual {v2}, Ls8/h;->U()Lcom/miui/gamebooster/service/DockWindowManagerService;

    move-result-object v2

    invoke-virtual {v2}, Lcom/miui/gamebooster/service/DockWindowManagerService;->m0()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ls8/u;->Y(Lcom/miui/dock/sidebar/j;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "GameToastWindowManager"

    const-string v2, "remove error"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_1
    :goto_0
    return-void
.end method
