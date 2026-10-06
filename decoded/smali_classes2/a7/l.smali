.class public La7/l;
.super La7/c;
.source "SourceFile"


# instance fields
.field private a:Z

.field private b:Z

.field private c:Lcom/miui/powerkeeper/feedbackcontrol/IFeedbackControl;

.field private d:I

.field private e:Landroid/content/Context;

.field private f:Lcom/miui/gamebooster/service/w;

.field private g:Landroid/content/ServiceConnection;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/miui/gamebooster/service/w;)V
    .locals 1

    invoke-direct {p0}, La7/c;-><init>()V

    new-instance v0, La7/l$a;

    invoke-direct {v0, p0}, La7/l$a;-><init>(La7/l;)V

    iput-object v0, p0, La7/l;->g:Landroid/content/ServiceConnection;

    iput-object p1, p0, La7/l;->e:Landroid/content/Context;

    iput-object p2, p0, La7/l;->f:Lcom/miui/gamebooster/service/w;

    return-void
.end method

.method static synthetic f(La7/l;)Lcom/miui/powerkeeper/feedbackcontrol/IFeedbackControl;
    .locals 0

    iget-object p0, p0, La7/l;->c:Lcom/miui/powerkeeper/feedbackcontrol/IFeedbackControl;

    return-object p0
.end method

.method static synthetic g(La7/l;Lcom/miui/powerkeeper/feedbackcontrol/IFeedbackControl;)Lcom/miui/powerkeeper/feedbackcontrol/IFeedbackControl;
    .locals 0

    iput-object p1, p0, La7/l;->c:Lcom/miui/powerkeeper/feedbackcontrol/IFeedbackControl;

    return-object p1
.end method

.method static synthetic h(La7/l;)Z
    .locals 0

    iget-boolean p0, p0, La7/l;->a:Z

    return p0
.end method

.method static synthetic i(La7/l;)Lcom/miui/gamebooster/service/w;
    .locals 0

    iget-object p0, p0, La7/l;->f:Lcom/miui/gamebooster/service/w;

    return-object p0
.end method

.method private j()V
    .locals 4

    iget-object v0, p0, La7/l;->c:Lcom/miui/powerkeeper/feedbackcontrol/IFeedbackControl;

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    :try_start_0
    iget-object v2, p0, La7/l;->f:Lcom/miui/gamebooster/service/w;

    invoke-virtual {v2}, Lcom/miui/gamebooster/service/w;->y()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/miui/powerkeeper/feedbackcontrol/IFeedbackControl;->r5(ILjava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "GameBoosterService"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void

    :cond_0
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string v2, "com.miui.powerkeeper"

    const-string v3, "com.miui.powerkeeper.feedbackcontrol.FeedbackControlService"

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    iget-object v2, p0, La7/l;->e:Landroid/content/Context;

    iget-object v3, p0, La7/l;->g:Landroid/content/ServiceConnection;

    invoke-virtual {v2, v0, v3, v1}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    move-result v0

    iput-boolean v0, p0, La7/l;->b:Z

    return-void
.end method

.method private k()V
    .locals 2

    iget-object v0, p0, La7/l;->c:Lcom/miui/powerkeeper/feedbackcontrol/IFeedbackControl;

    if-eqz v0, :cond_0

    :try_start_0
    invoke-interface {v0}, Lcom/miui/powerkeeper/feedbackcontrol/IFeedbackControl;->Z5()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "GameBoosterService"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    iget-boolean v0, p0, La7/l;->b:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, La7/l;->e:Landroid/content/Context;

    iget-object v1, p0, La7/l;->g:Landroid/content/ServiceConnection;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    const/4 v0, 0x0

    iput-boolean v0, p0, La7/l;->b:Z

    :cond_0
    return-void
.end method


# virtual methods
.method public a()V
    .locals 3

    iget-boolean v0, p0, La7/l;->a:Z

    if-eqz v0, :cond_1

    iget v0, p0, La7/l;->d:I

    const/4 v1, 0x1

    const-string v2, "GameBoosterService"

    if-ne v0, v1, :cond_0

    invoke-direct {p0}, La7/l;->k()V

    const-string v0, "mThermalMode...stop"

    invoke-static {v2, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    const-string v0, "mIsPerformance...stop"

    invoke-static {v2, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    return-void
.end method

.method public b()Z
    .locals 2

    iget-object v0, p0, La7/l;->f:Lcom/miui/gamebooster/service/w;

    invoke-virtual {v0}, Lcom/miui/gamebooster/service/w;->H()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    return v1

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public c()V
    .locals 3

    iget-boolean v0, p0, La7/l;->a:Z

    if-eqz v0, :cond_1

    iget v0, p0, La7/l;->d:I

    const/4 v1, 0x1

    const-string v2, "GameBoosterService"

    if-ne v0, v1, :cond_0

    invoke-direct {p0}, La7/l;->j()V

    const-string v0, "mThermalMode...start "

    invoke-static {v2, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    const-string v0, "mIsPerformance...start "

    invoke-static {v2, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    return-void
.end method

.method public d()V
    .locals 2

    iget-object v0, p0, La7/l;->e:Landroid/content/Context;

    invoke-static {v0}, Lm6/a;->e(Landroid/content/Context;)Lm6/a;

    const/4 v0, 0x0

    invoke-static {v0}, Lm6/a;->E(Z)Z

    move-result v0

    iput-boolean v0, p0, La7/l;->a:Z

    iget-object v0, p0, La7/l;->f:Lcom/miui/gamebooster/service/w;

    invoke-virtual {v0}, Lcom/miui/gamebooster/service/w;->H()I

    move-result v0

    iput v0, p0, La7/l;->d:I

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "initservice mThermalMode:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, La7/l;->d:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "GameBoosterService"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public e()I
    .locals 1

    const/16 v0, 0x9

    return v0
.end method
