.class public Lh7/g;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lh7/g$b;
    }
.end annotation


# static fields
.field private static g:Lh7/g;


# instance fields
.field private a:Z

.field private b:Lcom/miui/powerkeeper/feedbackcontrol/IFeedbackControl;

.field private c:I

.field private d:Z

.field private e:Landroid/content/ServiceConnection;

.field private final f:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lh7/g$b;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lh7/g;->c:I

    new-instance v0, Lh7/g$a;

    invoke-direct {v0, p0}, Lh7/g$a;-><init>(Lh7/g;)V

    iput-object v0, p0, Lh7/g;->e:Landroid/content/ServiceConnection;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lh7/g;->f:Ljava/util/List;

    return-void
.end method

.method static synthetic a(Lh7/g;)Lcom/miui/powerkeeper/feedbackcontrol/IFeedbackControl;
    .locals 0

    iget-object p0, p0, Lh7/g;->b:Lcom/miui/powerkeeper/feedbackcontrol/IFeedbackControl;

    return-object p0
.end method

.method static synthetic b(Lh7/g;Lcom/miui/powerkeeper/feedbackcontrol/IFeedbackControl;)Lcom/miui/powerkeeper/feedbackcontrol/IFeedbackControl;
    .locals 0

    iput-object p1, p0, Lh7/g;->b:Lcom/miui/powerkeeper/feedbackcontrol/IFeedbackControl;

    return-object p1
.end method

.method static synthetic c(Lh7/g;)I
    .locals 0

    iget p0, p0, Lh7/g;->c:I

    return p0
.end method

.method static synthetic d(Lh7/g;I)I
    .locals 0

    iput p1, p0, Lh7/g;->c:I

    return p1
.end method

.method static synthetic e(Lh7/g;)Z
    .locals 0

    iget-boolean p0, p0, Lh7/g;->a:Z

    return p0
.end method

.method static synthetic f(Lh7/g;)Z
    .locals 0

    iget-boolean p0, p0, Lh7/g;->d:Z

    return p0
.end method

.method static synthetic g(Lh7/g;Z)Z
    .locals 0

    iput-boolean p1, p0, Lh7/g;->d:Z

    return p1
.end method

.method static synthetic h(Lh7/g;)Ljava/util/List;
    .locals 0

    iget-object p0, p0, Lh7/g;->f:Ljava/util/List;

    return-object p0
.end method

.method static synthetic i(Lh7/g;)Z
    .locals 0

    invoke-direct {p0}, Lh7/g;->r()Z

    move-result p0

    return p0
.end method

.method private j()Z
    .locals 1

    iget-object v0, p0, Lh7/g;->b:Lcom/miui/powerkeeper/feedbackcontrol/IFeedbackControl;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public static declared-synchronized l()Lh7/g;
    .locals 2

    const-class v0, Lh7/g;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lh7/g;->g:Lh7/g;

    if-nez v1, :cond_0

    new-instance v1, Lh7/g;

    invoke-direct {v1}, Lh7/g;-><init>()V

    sput-object v1, Lh7/g;->g:Lh7/g;

    :cond_0
    sget-object v1, Lh7/g;->g:Lh7/g;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method private n()V
    .locals 1

    invoke-direct {p0}, Lh7/g;->j()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {}, Lcom/miui/securitycenter/Application;->A()Lcom/miui/securitycenter/Application;

    move-result-object v0

    invoke-direct {p0, v0}, Lh7/g;->o(Landroid/content/Context;)V

    :cond_0
    return-void
.end method

.method private o(Landroid/content/Context;)V
    .locals 3

    if-nez p1, :cond_0

    return-void

    :cond_0
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string v1, "com.miui.powerkeeper"

    const-string v2, "com.miui.powerkeeper.feedbackcontrol.FeedbackControlService"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    iget-object v1, p0, Lh7/g;->e:Landroid/content/ServiceConnection;

    const/4 v2, 0x1

    invoke-virtual {p1, v0, v1, v2}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    return-void
.end method

.method public static p(Landroid/content/Context;)Z
    .locals 1

    sget-boolean v0, Lsl/a;->a:Z

    if-nez v0, :cond_0

    invoke-static {p0}, Lme/w;->P(Landroid/content/Context;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static q()Z
    .locals 3

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1c

    if-le v0, v1, :cond_1

    invoke-static {}, Lx4/t;->h()I

    move-result v0

    const/16 v1, 0xa

    if-gt v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const-string v0, "persist.sys.power.default.powermode"

    const-string v1, "unsupported"

    invoke-static {v0, v1}, Lx4/v1;->c(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "isSupportGameModeChange = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "PerformanceManager"

    invoke-static {v2, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return v0

    :cond_1
    :goto_0
    const/4 v0, 0x0

    return v0
.end method

.method private r()Z
    .locals 1

    iget v0, p0, Lh7/g;->c:I

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method


# virtual methods
.method public k(Landroid/content/Context;)V
    .locals 1

    sget-boolean v0, Lsl/a;->a:Z

    if-nez v0, :cond_1

    invoke-static {}, Lh7/g;->q()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-static {p1}, Lme/w;->P(Landroid/content/Context;)Z

    move-result p1

    if-eqz p1, :cond_1

    const-string p1, "PerformanceManager"

    const-string v0, "checkPerformanceMode: system power mode is performance, so set game performance mode."

    invoke-static {p1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Lh7/g;->u(Z)V

    :cond_1
    :goto_0
    return-void
.end method

.method public m(Lh7/g$b;)V
    .locals 3

    iget-object v0, p0, Lh7/g;->f:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const/4 p1, 0x1

    iput-boolean p1, p0, Lh7/g;->a:Z

    :try_start_0
    iget-object p1, p0, Lh7/g;->b:Lcom/miui/powerkeeper/feedbackcontrol/IFeedbackControl;

    if-eqz p1, :cond_1

    iget-object p1, p0, Lh7/g;->f:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_1

    iget-object p1, p0, Lh7/g;->f:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lh7/g$b;

    invoke-direct {p0}, Lh7/g;->r()Z

    move-result v1

    iget-object v2, p0, Lh7/g;->b:Lcom/miui/powerkeeper/feedbackcontrol/IFeedbackControl;

    invoke-interface {v2}, Lcom/miui/powerkeeper/feedbackcontrol/IFeedbackControl;->f1()Z

    move-result v2

    invoke-interface {v0, v1, v2}, Lh7/g$b;->a(ZZ)V

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lh7/g;->f:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->clear()V

    goto :goto_1

    :cond_1
    invoke-direct {p0}, Lh7/g;->n()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p1

    const-string v0, "PerformanceManager"

    const-string v1, "getPerformanceMode error"

    invoke-static {v0, v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_1
    return-void
.end method

.method public s()V
    .locals 1

    invoke-static {}, Lh7/e;->g()Lh7/e;

    move-result-object v0

    invoke-virtual {v0}, Lh7/e;->l()V

    return-void
.end method

.method public t(Ljava/lang/String;I)V
    .locals 1

    invoke-static {}, Lh7/e;->g()Lh7/e;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lh7/e;->n(Ljava/lang/String;I)V

    return-void
.end method

.method public u(Z)V
    .locals 3

    const-string v0, "PerformanceManager"

    const/4 v1, 0x0

    iput-boolean v1, p0, Lh7/g;->a:Z

    :try_start_0
    iget-object v1, p0, Lh7/g;->b:Lcom/miui/powerkeeper/feedbackcontrol/IFeedbackControl;

    if-eqz v1, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "optimize mode:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lh7/g;->b:Lcom/miui/powerkeeper/feedbackcontrol/IFeedbackControl;

    invoke-interface {v1, p1}, Lcom/miui/powerkeeper/feedbackcontrol/IFeedbackControl;->i0(Z)V

    goto :goto_0

    :cond_0
    iput-boolean p1, p0, Lh7/g;->d:Z

    invoke-direct {p0}, Lh7/g;->n()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    const-string v1, "setGameOptimize error"

    invoke-static {v0, v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    return-void
.end method
