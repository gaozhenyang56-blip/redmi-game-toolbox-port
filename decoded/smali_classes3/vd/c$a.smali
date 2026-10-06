.class Lvd/c$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/Handler$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lvd/c;->x()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/os/HandlerThread;

.field final synthetic b:Lvd/c;


# direct methods
.method constructor <init>(Lvd/c;Landroid/os/HandlerThread;)V
    .locals 0

    iput-object p1, p0, Lvd/c$a;->b:Lvd/c;

    iput-object p2, p0, Lvd/c$a;->a:Landroid/os/HandlerThread;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)Z
    .locals 4
    .param p1    # Landroid/os/Message;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    iget p1, p1, Landroid/os/Message;->what:I

    const/4 v0, 0x1

    const/4 v1, 0x0

    packed-switch p1, :pswitch_data_0

    packed-switch p1, :pswitch_data_1

    goto/16 :goto_1

    :pswitch_0
    iget-object p1, p0, Lvd/c$a;->b:Lvd/c;

    invoke-virtual {p1, v1}, Lvd/c;->v(Z)V

    goto/16 :goto_1

    :pswitch_1
    iget-object p1, p0, Lvd/c$a;->b:Lvd/c;

    invoke-static {p1}, Lvd/c;->n(Lvd/c;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lvd/c$a;->b:Lvd/c;

    invoke-static {p1}, Lvd/c;->o(Lvd/c;)Landroid/view/WindowManager;

    move-result-object p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lvd/c$a;->b:Lvd/c;

    invoke-static {p1}, Lvd/c;->o(Lvd/c;)Landroid/view/WindowManager;

    move-result-object p1

    iget-object v0, p0, Lvd/c$a;->b:Lvd/c;

    invoke-static {v0}, Lvd/c;->c(Lvd/c;)Landroid/view/View;

    move-result-object v0

    invoke-interface {p1, v0}, Landroid/view/ViewManager;->removeView(Landroid/view/View;)V

    iget-object p1, p0, Lvd/c$a;->b:Lvd/c;

    invoke-static {p1}, Lvd/c;->n(Lvd/c;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object p1

    invoke-virtual {p1, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    :cond_0
    iget-object p1, p0, Lvd/c$a;->b:Lvd/c;

    invoke-static {p1}, Lvd/c;->l(Lvd/c;)Landroid/os/Handler;

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    iget-object p1, p0, Lvd/c$a;->a:Landroid/os/HandlerThread;

    invoke-virtual {p1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object p1

    invoke-virtual {p1}, Landroid/os/Looper;->quitSafely()V

    iget-object p1, p0, Lvd/c$a;->b:Lvd/c;

    invoke-static {p1, v0}, Lvd/c;->d(Lvd/c;Landroid/view/View;)Landroid/view/View;

    iget-object p1, p0, Lvd/c$a;->b:Lvd/c;

    invoke-static {p1, v0}, Lvd/c;->m(Lvd/c;Landroid/os/Handler;)Landroid/os/Handler;

    goto :goto_1

    :pswitch_2
    iget-object p1, p0, Lvd/c$a;->b:Lvd/c;

    invoke-static {p1}, Lvd/c;->b(Lvd/c;)Landroid/content/Context;

    move-result-object p1

    invoke-static {}, Lgd/c;->S()I

    move-result v2

    if-ne v2, v0, :cond_1

    goto :goto_0

    :cond_1
    move v0, v1

    :goto_0
    invoke-static {p1, v0}, Lvd/c;->g(Landroid/content/Context;Z)V

    const/4 p1, -0x1

    invoke-static {p1}, Lgd/c;->L1(I)V

    iget-object p1, p0, Lvd/c$a;->b:Lvd/c;

    invoke-static {p1}, Lvd/c;->i(Lvd/c;)V

    iget-object p1, p0, Lvd/c$a;->b:Lvd/c;

    invoke-static {p1}, Lvd/c;->j(Lvd/c;)V

    iget-object p1, p0, Lvd/c$a;->b:Lvd/c;

    invoke-static {p1, v1}, Lvd/c;->k(Lvd/c;Z)V

    iget-object p1, p0, Lvd/c$a;->b:Lvd/c;

    invoke-static {p1}, Lvd/c;->l(Lvd/c;)Landroid/os/Handler;

    move-result-object p1

    const/16 v0, 0x7d1

    const-wide/16 v2, 0x5dc

    invoke-virtual {p1, v0, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_1

    :pswitch_3
    iget-object p1, p0, Lvd/c$a;->b:Lvd/c;

    invoke-static {p1}, Lvd/c;->b(Lvd/c;)Landroid/content/Context;

    move-result-object p1

    const-string v0, "keyguard"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/app/KeyguardManager;

    invoke-virtual {p1}, Landroid/app/KeyguardManager;->isKeyguardLocked()Z

    move-result p1

    if-eqz p1, :cond_2

    iget-object p1, p0, Lvd/c$a;->b:Lvd/c;

    invoke-static {p1}, Lvd/c;->h(Lvd/c;)V

    goto :goto_1

    :pswitch_4
    iget-object p1, p0, Lvd/c$a;->b:Lvd/c;

    invoke-static {p1, v1}, Lvd/c;->a(Lvd/c;Z)V

    goto :goto_1

    :pswitch_5
    iget-object p1, p0, Lvd/c$a;->b:Lvd/c;

    invoke-static {p1, v1}, Lvd/c;->a(Lvd/c;Z)V

    iget-object p1, p0, Lvd/c$a;->b:Lvd/c;

    invoke-static {p1}, Lvd/c;->b(Lvd/c;)Landroid/content/Context;

    move-result-object p1

    invoke-static {p1, v0}, Lvd/c;->g(Landroid/content/Context;Z)V

    :cond_2
    :goto_1
    return v1

    :pswitch_data_0
    .packed-switch 0x3e8
        :pswitch_5
        :pswitch_4
        :pswitch_3
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x7d0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
