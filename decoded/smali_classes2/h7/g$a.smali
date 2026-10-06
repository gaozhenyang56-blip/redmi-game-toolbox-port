.class Lh7/g$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lh7/g;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lh7/g;


# direct methods
.method constructor <init>(Lh7/g;)V
    .locals 0

    iput-object p1, p0, Lh7/g$a;->a:Lh7/g;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 3

    const-string p1, "PerformanceManager"

    iget-object v0, p0, Lh7/g$a;->a:Lh7/g;

    invoke-static {p2}, Lcom/miui/powerkeeper/feedbackcontrol/IFeedbackControl$Stub;->asInterface(Landroid/os/IBinder;)Lcom/miui/powerkeeper/feedbackcontrol/IFeedbackControl;

    move-result-object p2

    invoke-static {v0, p2}, Lh7/g;->b(Lh7/g;Lcom/miui/powerkeeper/feedbackcontrol/IFeedbackControl;)Lcom/miui/powerkeeper/feedbackcontrol/IFeedbackControl;

    :try_start_0
    iget-object p2, p0, Lh7/g$a;->a:Lh7/g;

    invoke-static {p2}, Lh7/g;->a(Lh7/g;)Lcom/miui/powerkeeper/feedbackcontrol/IFeedbackControl;

    move-result-object p2

    if-eqz p2, :cond_5

    invoke-static {}, Lef/d0;->a()I

    move-result p2

    const/16 v0, 0xc

    if-ge p2, v0, :cond_1

    iget-object p2, p0, Lh7/g$a;->a:Lh7/g;

    invoke-static {p2}, Lh7/g;->a(Lh7/g;)Lcom/miui/powerkeeper/feedbackcontrol/IFeedbackControl;

    move-result-object p2

    invoke-interface {p2}, Lcom/miui/powerkeeper/feedbackcontrol/IFeedbackControl;->K7()Z

    move-result p2

    iget-object v0, p0, Lh7/g$a;->a:Lh7/g;

    if-eqz p2, :cond_0

    const/4 p2, 0x1

    goto :goto_0

    :cond_0
    const/4 p2, 0x0

    :goto_0
    invoke-static {v0, p2}, Lh7/g;->d(Lh7/g;I)I

    goto :goto_1

    :cond_1
    iget-object p2, p0, Lh7/g$a;->a:Lh7/g;

    invoke-static {p2}, Lh7/g;->a(Lh7/g;)Lcom/miui/powerkeeper/feedbackcontrol/IFeedbackControl;

    move-result-object p2

    invoke-interface {p2}, Lcom/miui/powerkeeper/feedbackcontrol/IFeedbackControl;->r3()I

    move-result p2

    iget-object v0, p0, Lh7/g$a;->a:Lh7/g;

    goto :goto_0

    :goto_1
    iget-object p2, p0, Lh7/g$a;->a:Lh7/g;

    invoke-static {p2}, Lh7/g;->c(Lh7/g;)I

    move-result p2

    const/4 v0, 0x2

    if-eq p2, v0, :cond_2

    goto/16 :goto_3

    :cond_2
    iget-object p2, p0, Lh7/g$a;->a:Lh7/g;

    invoke-static {p2}, Lh7/g;->e(Lh7/g;)Z

    move-result p2

    if-eqz p2, :cond_4

    iget-object p2, p0, Lh7/g$a;->a:Lh7/g;

    invoke-static {p2}, Lh7/g;->a(Lh7/g;)Lcom/miui/powerkeeper/feedbackcontrol/IFeedbackControl;

    move-result-object v0

    invoke-interface {v0}, Lcom/miui/powerkeeper/feedbackcontrol/IFeedbackControl;->f1()Z

    move-result v0

    invoke-static {p2, v0}, Lh7/g;->g(Lh7/g;Z)Z

    iget-object p2, p0, Lh7/g$a;->a:Lh7/g;

    invoke-static {p2}, Lh7/g;->h(Lh7/g;)Ljava/util/List;

    move-result-object p2

    invoke-interface {p2}, Ljava/util/List;->isEmpty()Z

    move-result p2

    if-nez p2, :cond_5

    iget-object p2, p0, Lh7/g$a;->a:Lh7/g;

    invoke-static {p2}, Lh7/g;->h(Lh7/g;)Ljava/util/List;

    move-result-object p2

    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_2
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lh7/g$b;

    iget-object v1, p0, Lh7/g$a;->a:Lh7/g;

    invoke-static {v1}, Lh7/g;->i(Lh7/g;)Z

    move-result v1

    iget-object v2, p0, Lh7/g$a;->a:Lh7/g;

    invoke-static {v2}, Lh7/g;->f(Lh7/g;)Z

    move-result v2

    invoke-interface {v0, v1, v2}, Lh7/g$b;->a(ZZ)V

    goto :goto_2

    :cond_3
    iget-object p2, p0, Lh7/g$a;->a:Lh7/g;

    invoke-static {p2}, Lh7/g;->h(Lh7/g;)Ljava/util/List;

    move-result-object p2

    invoke-interface {p2}, Ljava/util/List;->clear()V

    goto :goto_3

    :cond_4
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "optimize game:"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lh7/g$a;->a:Lh7/g;

    invoke-static {v0}, Lh7/g;->f(Lh7/g;)Z

    move-result v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p2, p0, Lh7/g$a;->a:Lh7/g;

    invoke-static {p2}, Lh7/g;->a(Lh7/g;)Lcom/miui/powerkeeper/feedbackcontrol/IFeedbackControl;

    move-result-object p2

    iget-object v0, p0, Lh7/g$a;->a:Lh7/g;

    invoke-static {v0}, Lh7/g;->f(Lh7/g;)Z

    move-result v0

    invoke-interface {p2, v0}, Lcom/miui/powerkeeper/feedbackcontrol/IFeedbackControl;->i0(Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_3

    :catch_0
    move-exception p2

    const-string v0, "performace error"

    invoke-static {p1, v0, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_5
    :goto_3
    return-void
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 1

    iget-object p1, p0, Lh7/g$a;->a:Lh7/g;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lh7/g;->b(Lh7/g;Lcom/miui/powerkeeper/feedbackcontrol/IFeedbackControl;)Lcom/miui/powerkeeper/feedbackcontrol/IFeedbackControl;

    return-void
.end method
