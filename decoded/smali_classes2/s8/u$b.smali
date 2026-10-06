.class Ls8/u$b;
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

    iput-object p1, p0, Ls8/u$b;->a:Ls8/u;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    :try_start_0
    iget-object v0, p0, Ls8/u$b;->a:Ls8/u;

    invoke-static {v0}, Ls8/u;->l(Ls8/u;)Landroid/view/WindowManager;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    iget-object v0, p0, Ls8/u$b;->a:Ls8/u;

    invoke-static {v0}, Ls8/u;->o(Ls8/u;)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Ls8/u$b;->a:Ls8/u;

    invoke-static {v0}, Ls8/u;->l(Ls8/u;)Landroid/view/WindowManager;

    move-result-object v0

    iget-object v2, p0, Ls8/u$b;->a:Ls8/u;

    invoke-static {v2}, Ls8/u;->o(Ls8/u;)Landroid/view/View;

    move-result-object v2

    invoke-interface {v0, v2}, Landroid/view/ViewManager;->removeView(Landroid/view/View;)V

    iget-object v0, p0, Ls8/u$b;->a:Ls8/u;

    invoke-static {v0, v1}, Ls8/u;->p(Ls8/u;Landroid/view/View;)Landroid/view/View;

    :cond_0
    iget-object v0, p0, Ls8/u$b;->a:Ls8/u;

    invoke-static {v0}, Ls8/u;->q(Ls8/u;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Ls8/u$b;->a:Ls8/u;

    invoke-static {v0}, Ls8/u;->m(Ls8/u;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Ls8/u$b;->a:Ls8/u;

    invoke-static {v0}, Ls8/u;->n(Ls8/u;)Ljava/lang/ref/WeakReference;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ls8/h;

    invoke-virtual {v0}, Ls8/h;->z()V

    :cond_1
    iget-object v0, p0, Ls8/u$b;->a:Ls8/u;

    invoke-static {v0}, Ls8/u;->q(Ls8/u;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Ls8/u$b;->a:Ls8/u;

    invoke-static {v0}, Ls8/u;->r(Ls8/u;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Ls8/u$b;->a:Ls8/u;

    const-string v2, "\u5212\u51faGT"

    invoke-static {v0}, Ls8/u;->s(Ls8/u;)Lcom/miui/gamebooster/model/ActiveNewModel;

    move-result-object v3

    iget-object v4, p0, Ls8/u$b;->a:Ls8/u;

    invoke-static {v4}, Ls8/u;->u(Ls8/u;)Ljava/lang/String;

    move-result-object v4

    :goto_0
    invoke-static {v0, v2, v3, v4}, Ls8/u;->w(Ls8/u;Ljava/lang/String;Lcom/miui/gamebooster/model/ActiveNewModel;Ljava/lang/String;)V

    goto :goto_1

    :cond_2
    iget-object v0, p0, Ls8/u$b;->a:Ls8/u;

    invoke-static {v0}, Ls8/u;->q(Ls8/u;)Z

    move-result v0

    if-nez v0, :cond_3

    iget-object v0, p0, Ls8/u$b;->a:Ls8/u;

    const-string v2, "\u81ea\u52a8\u6536\u8d77"

    invoke-static {v0}, Ls8/u;->s(Ls8/u;)Lcom/miui/gamebooster/model/ActiveNewModel;

    move-result-object v3

    iget-object v4, p0, Ls8/u$b;->a:Ls8/u;

    invoke-static {v4}, Ls8/u;->u(Ls8/u;)Ljava/lang/String;

    move-result-object v4

    goto :goto_0

    :cond_3
    :goto_1
    iget-object v0, p0, Ls8/u$b;->a:Ls8/u;

    invoke-static {v0, v1}, Ls8/u;->t(Ls8/u;Lcom/miui/gamebooster/model/ActiveNewModel;)Lcom/miui/gamebooster/model/ActiveNewModel;

    iget-object v0, p0, Ls8/u$b;->a:Ls8/u;

    invoke-static {v0, v1}, Ls8/u;->v(Ls8/u;Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    move-exception v0

    const-string v1, "GameToastWindowManager"

    const-string v2, "removeBubbleTips error"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_2
    return-void
.end method
