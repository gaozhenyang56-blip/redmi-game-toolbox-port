.class Lcom/miui/gamebooster/service/w$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/gamebooster/service/w;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/miui/gamebooster/service/w;


# direct methods
.method constructor <init>(Lcom/miui/gamebooster/service/w;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/gamebooster/service/w$b;->a:Lcom/miui/gamebooster/service/w;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 1

    iget-object p1, p0, Lcom/miui/gamebooster/service/w$b;->a:Lcom/miui/gamebooster/service/w;

    invoke-static {p2}, Lcom/miui/powerkeeper/feedbackcontrol/IFeedbackControl$Stub;->asInterface(Landroid/os/IBinder;)Lcom/miui/powerkeeper/feedbackcontrol/IFeedbackControl;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/miui/gamebooster/service/w;->l(Lcom/miui/gamebooster/service/w;Lcom/miui/powerkeeper/feedbackcontrol/IFeedbackControl;)Lcom/miui/powerkeeper/feedbackcontrol/IFeedbackControl;

    iget-object p1, p0, Lcom/miui/gamebooster/service/w$b;->a:Lcom/miui/gamebooster/service/w;

    invoke-static {p1}, Lcom/miui/gamebooster/service/w;->k(Lcom/miui/gamebooster/service/w;)Lcom/miui/powerkeeper/feedbackcontrol/IFeedbackControl;

    move-result-object p1

    if-eqz p1, :cond_5

    invoke-static {}, Lef/d0;->a()I

    move-result p1

    const/16 p2, 0xc

    const-string v0, "GameBoosterService"

    if-ge p1, p2, :cond_1

    :try_start_0
    iget-object p1, p0, Lcom/miui/gamebooster/service/w$b;->a:Lcom/miui/gamebooster/service/w;

    invoke-static {p1}, Lcom/miui/gamebooster/service/w;->k(Lcom/miui/gamebooster/service/w;)Lcom/miui/powerkeeper/feedbackcontrol/IFeedbackControl;

    move-result-object p2

    invoke-interface {p2}, Lcom/miui/powerkeeper/feedbackcontrol/IFeedbackControl;->K7()Z

    move-result p2

    if-eqz p2, :cond_0

    const/4 p2, 0x1

    goto :goto_0

    :cond_0
    const/4 p2, 0x0

    :goto_0
    invoke-static {p1, p2}, Lcom/miui/gamebooster/service/w;->n(Lcom/miui/gamebooster/service/w;I)I

    goto :goto_1

    :cond_1
    iget-object p1, p0, Lcom/miui/gamebooster/service/w$b;->a:Lcom/miui/gamebooster/service/w;

    invoke-static {p1}, Lcom/miui/gamebooster/service/w;->k(Lcom/miui/gamebooster/service/w;)Lcom/miui/powerkeeper/feedbackcontrol/IFeedbackControl;

    move-result-object p2

    invoke-interface {p2}, Lcom/miui/powerkeeper/feedbackcontrol/IFeedbackControl;->r3()I

    move-result p2

    invoke-static {p1, p2}, Lcom/miui/gamebooster/service/w;->n(Lcom/miui/gamebooster/service/w;I)I

    iget-object p1, p0, Lcom/miui/gamebooster/service/w$b;->a:Lcom/miui/gamebooster/service/w;

    invoke-static {p1}, Lcom/miui/gamebooster/service/w;->m(Lcom/miui/gamebooster/service/w;)I

    move-result p1

    const/4 p2, 0x2

    if-ne p1, p2, :cond_2

    iget-object p1, p0, Lcom/miui/gamebooster/service/w$b;->a:Lcom/miui/gamebooster/service/w;

    invoke-static {p1}, Lcom/miui/gamebooster/service/w;->k(Lcom/miui/gamebooster/service/w;)Lcom/miui/powerkeeper/feedbackcontrol/IFeedbackControl;

    move-result-object p1

    iget-object p2, p0, Lcom/miui/gamebooster/service/w$b;->a:Lcom/miui/gamebooster/service/w;

    invoke-static {p2}, Lcom/miui/gamebooster/service/w;->o(Lcom/miui/gamebooster/service/w;)[Ljava/lang/String;

    move-result-object p2

    invoke-interface {p1, p2}, Lcom/miui/powerkeeper/feedbackcontrol/IFeedbackControl;->a4([Ljava/lang/String;)V

    iget-object p1, p0, Lcom/miui/gamebooster/service/w$b;->a:Lcom/miui/gamebooster/service/w;

    invoke-static {p1}, Lcom/miui/gamebooster/service/w;->k(Lcom/miui/gamebooster/service/w;)Lcom/miui/powerkeeper/feedbackcontrol/IFeedbackControl;

    move-result-object p2

    invoke-interface {p2}, Lcom/miui/powerkeeper/feedbackcontrol/IFeedbackControl;->f1()Z

    move-result p2

    invoke-static {p1, p2}, Lcom/miui/gamebooster/service/w;->q(Lcom/miui/gamebooster/service/w;Z)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    :goto_1
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "mThermalMode: "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p2, p0, Lcom/miui/gamebooster/service/w$b;->a:Lcom/miui/gamebooster/service/w;

    invoke-static {p2}, Lcom/miui/gamebooster/service/w;->m(Lcom/miui/gamebooster/service/w;)I

    move-result p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    sget-boolean p2, Luf/a;->a:Z

    if-eqz p2, :cond_3

    iget-object p2, p0, Lcom/miui/gamebooster/service/w$b;->a:Lcom/miui/gamebooster/service/w;

    invoke-static {p2}, Lcom/miui/gamebooster/service/w;->o(Lcom/miui/gamebooster/service/w;)[Ljava/lang/String;

    move-result-object p2

    goto :goto_2

    :cond_3
    const-string p2, ""

    :goto_2
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p2, " mIsWildMode = "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p2, p0, Lcom/miui/gamebooster/service/w$b;->a:Lcom/miui/gamebooster/service/w;

    invoke-static {p2}, Lcom/miui/gamebooster/service/w;->p(Lcom/miui/gamebooster/service/w;)Z

    move-result p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p1, p0, Lcom/miui/gamebooster/service/w$b;->a:Lcom/miui/gamebooster/service/w;

    invoke-static {p1}, Lcom/miui/gamebooster/service/w;->s(Lcom/miui/gamebooster/service/w;)Ljava/util/concurrent/CopyOnWriteArrayList;

    move-result-object p1

    iget-object p2, p0, Lcom/miui/gamebooster/service/w$b;->a:Lcom/miui/gamebooster/service/w;

    invoke-static {p2}, Lcom/miui/gamebooster/service/w;->r(Lcom/miui/gamebooster/service/w;)La7/l;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/util/concurrent/CopyOnWriteArrayList;->contains(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_4

    iget-object p1, p0, Lcom/miui/gamebooster/service/w$b;->a:Lcom/miui/gamebooster/service/w;

    invoke-static {p1}, Lcom/miui/gamebooster/service/w;->r(Lcom/miui/gamebooster/service/w;)La7/l;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/miui/gamebooster/service/w;->t(Lcom/miui/gamebooster/service/w;La7/c;)V

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "addThermal:"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p2, p0, Lcom/miui/gamebooster/service/w$b;->a:Lcom/miui/gamebooster/service/w;

    invoke-static {p2}, Lcom/miui/gamebooster/service/w;->m(Lcom/miui/gamebooster/service/w;)I

    move-result p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_4
    iget-object p1, p0, Lcom/miui/gamebooster/service/w$b;->a:Lcom/miui/gamebooster/service/w;

    invoke-static {p1}, Lcom/miui/gamebooster/service/w;->b(Lcom/miui/gamebooster/service/w;)Landroid/content/Context;

    move-result-object p1

    iget-object p2, p0, Lcom/miui/gamebooster/service/w$b;->a:Lcom/miui/gamebooster/service/w;

    invoke-static {p2}, Lcom/miui/gamebooster/service/w;->u(Lcom/miui/gamebooster/service/w;)Landroid/content/ServiceConnection;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    :cond_5
    return-void
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 1

    iget-object p1, p0, Lcom/miui/gamebooster/service/w$b;->a:Lcom/miui/gamebooster/service/w;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/miui/gamebooster/service/w;->l(Lcom/miui/gamebooster/service/w;Lcom/miui/powerkeeper/feedbackcontrol/IFeedbackControl;)Lcom/miui/powerkeeper/feedbackcontrol/IFeedbackControl;

    return-void
.end method
