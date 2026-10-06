.class La7/l$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = La7/l;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:La7/l;


# direct methods
.method constructor <init>(La7/l;)V
    .locals 0

    iput-object p1, p0, La7/l$a;->a:La7/l;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 1

    iget-object p1, p0, La7/l$a;->a:La7/l;

    invoke-static {p2}, Lcom/miui/powerkeeper/feedbackcontrol/IFeedbackControl$Stub;->asInterface(Landroid/os/IBinder;)Lcom/miui/powerkeeper/feedbackcontrol/IFeedbackControl;

    move-result-object p2

    invoke-static {p1, p2}, La7/l;->g(La7/l;Lcom/miui/powerkeeper/feedbackcontrol/IFeedbackControl;)Lcom/miui/powerkeeper/feedbackcontrol/IFeedbackControl;

    iget-object p1, p0, La7/l$a;->a:La7/l;

    invoke-static {p1}, La7/l;->f(La7/l;)Lcom/miui/powerkeeper/feedbackcontrol/IFeedbackControl;

    move-result-object p1

    if-eqz p1, :cond_0

    iget-object p1, p0, La7/l$a;->a:La7/l;

    invoke-static {p1}, La7/l;->h(La7/l;)Z

    move-result p1

    if-eqz p1, :cond_0

    :try_start_0
    iget-object p1, p0, La7/l$a;->a:La7/l;

    invoke-static {p1}, La7/l;->f(La7/l;)Lcom/miui/powerkeeper/feedbackcontrol/IFeedbackControl;

    move-result-object p1

    const/4 p2, 0x1

    iget-object v0, p0, La7/l$a;->a:La7/l;

    invoke-static {v0}, La7/l;->i(La7/l;)Lcom/miui/gamebooster/service/w;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/gamebooster/service/w;->y()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, p2, v0}, Lcom/miui/powerkeeper/feedbackcontrol/IFeedbackControl;->r5(ILjava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "GameBoosterService"

    invoke-static {p2, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    :goto_0
    return-void
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 1

    iget-object p1, p0, La7/l$a;->a:La7/l;

    const/4 v0, 0x0

    invoke-static {p1, v0}, La7/l;->g(La7/l;Lcom/miui/powerkeeper/feedbackcontrol/IFeedbackControl;)Lcom/miui/powerkeeper/feedbackcontrol/IFeedbackControl;

    return-void
.end method
