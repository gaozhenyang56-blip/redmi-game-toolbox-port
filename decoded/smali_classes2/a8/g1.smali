.class public La8/g1;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static i:La8/g1;


# instance fields
.field private a:Lcom/milink/sdk/client/MiLinkCastClient;

.field private b:I

.field private c:Z

.field private d:Landroid/content/Context;

.field private e:Landroid/os/Handler;

.field private f:Ls5/b;

.field private g:Landroid/database/ContentObserver;

.field private h:I


# direct methods
.method private constructor <init>(Landroid/content/Context;)V
    .locals 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, La8/g1;->b:I

    iput-boolean v0, p0, La8/g1;->c:Z

    iput-object p1, p0, La8/g1;->d:Landroid/content/Context;

    new-instance p1, La8/g1$a;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {p1, p0, v1}, La8/g1$a;-><init>(La8/g1;Landroid/os/Looper;)V

    iput-object p1, p0, La8/g1;->e:Landroid/os/Handler;

    new-instance p1, La8/g1$b;

    iget-object v1, p0, La8/g1;->e:Landroid/os/Handler;

    invoke-direct {p1, p0, v1}, La8/g1$b;-><init>(La8/g1;Landroid/os/Handler;)V

    iput-object p1, p0, La8/g1;->g:Landroid/database/ContentObserver;

    iget-object p1, p0, La8/g1;->d:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    const-string v1, "screen_project_in_screening"

    invoke-static {v1}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    iget-object v2, p0, La8/g1;->g:Landroid/database/ContentObserver;

    const/4 v3, 0x1

    invoke-virtual {p1, v1, v3, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    invoke-direct {p0, v0}, La8/g1;->p(Z)V

    return-void
.end method

.method private A()V
    .locals 3

    :try_start_0
    iget-object v0, p0, La8/g1;->d:Landroid/content/Context;

    if-eqz v0, :cond_0

    iget-object v1, p0, La8/g1;->g:Landroid/database/ContentObserver;

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, La8/g1;->g:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "MiLinkUtils"

    const-string v2, "unregisterCastStatusObserver error"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    :goto_0
    return-void
.end method

.method static synthetic a(La8/g1;)Z
    .locals 0

    iget-boolean p0, p0, La8/g1;->c:Z

    return p0
.end method

.method static synthetic b(La8/g1;Z)Z
    .locals 0

    iput-boolean p1, p0, La8/g1;->c:Z

    return p1
.end method

.method static synthetic c(La8/g1;)I
    .locals 0

    iget p0, p0, La8/g1;->h:I

    return p0
.end method

.method static synthetic d(La8/g1;)Ls5/b;
    .locals 0

    iget-object p0, p0, La8/g1;->f:Ls5/b;

    return-object p0
.end method

.method static synthetic e(La8/g1;)V
    .locals 0

    invoke-direct {p0}, La8/g1;->j()V

    return-void
.end method

.method static synthetic f(La8/g1;)Z
    .locals 0

    invoke-direct {p0}, La8/g1;->r()Z

    move-result p0

    return p0
.end method

.method static synthetic g(La8/g1;I)I
    .locals 0

    iput p1, p0, La8/g1;->b:I

    return p1
.end method

.method static synthetic h(La8/g1;II)V
    .locals 0

    invoke-direct {p0, p1, p2}, La8/g1;->w(II)V

    return-void
.end method

.method static synthetic i(La8/g1;I)V
    .locals 0

    invoke-direct {p0, p1}, La8/g1;->v(I)V

    return-void
.end method

.method private j()V
    .locals 2

    const/4 v0, 0x0

    iput-boolean v0, p0, La8/g1;->c:Z

    invoke-static {v0}, Lm6/a;->m0(Z)V

    iget-object v0, p0, La8/g1;->f:Ls5/b;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Ls5/b;->a()V

    :cond_0
    invoke-virtual {p0}, La8/g1;->z()V

    const-string v0, "MiLinkUtils"

    const-string v1, "onConnectFailAndClose"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public static declared-synchronized n(Landroid/content/Context;)La8/g1;
    .locals 2

    const-class v0, La8/g1;

    monitor-enter v0

    :try_start_0
    sget-object v1, La8/g1;->i:La8/g1;

    if-nez v1, :cond_0

    new-instance v1, La8/g1;

    invoke-direct {v1, p0}, La8/g1;-><init>(Landroid/content/Context;)V

    sput-object v1, La8/g1;->i:La8/g1;

    :cond_0
    sget-object p0, La8/g1;->i:La8/g1;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object p0

    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method private p(Z)V
    .locals 4

    new-instance v0, Lcom/milink/sdk/client/MiLinkCastClient;

    iget-object v1, p0, La8/g1;->d:Landroid/content/Context;

    const/4 v2, 0x1

    const-string v3, ":ui"

    invoke-direct {v0, v1, v2, v3}, Lcom/milink/sdk/client/MiLinkCastClient;-><init>(Landroid/content/Context;ZLjava/lang/String;)V

    iput-object v0, p0, La8/g1;->a:Lcom/milink/sdk/client/MiLinkCastClient;

    new-instance v1, La8/g1$c;

    invoke-direct {v1, p0, p1}, La8/g1$c;-><init>(La8/g1;Z)V

    invoke-virtual {v0, v1}, Lcom/milink/sdk/client/MiLinkCastClient;->init(Lcom/milink/sdk/client/MiLinkCastCallback;)I

    return-void
.end method

.method private r()Z
    .locals 3

    invoke-static {}, Lcom/miui/securitycenter/Application;->A()Lcom/miui/securitycenter/Application;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "screen_project_in_screening"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    const/4 v1, 0x1

    if-ne v1, v0, :cond_0

    move v2, v1

    :cond_0
    return v2
.end method

.method private v(I)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, La8/g1;->w(II)V

    return-void
.end method

.method private w(II)V
    .locals 3

    iget-object v0, p0, La8/g1;->e:Landroid/os/Handler;

    if-eqz v0, :cond_0

    int-to-long v1, p2

    invoke-virtual {v0, p1, v1, v2}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    :cond_0
    return-void
.end method


# virtual methods
.method public k(I)V
    .locals 4

    const-string v0, "MiLinkUtils"

    const-string v1, "enterFreeformCasting"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, 0x0

    :try_start_0
    iput-boolean v1, p0, La8/g1;->c:Z

    invoke-static {v1}, Lc8/a;->d(I)V

    invoke-static {v1}, Lm6/a;->m0(Z)V

    iget-object v2, p0, La8/g1;->d:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3, p1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-static {v2, p1, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    iget-object p1, p0, La8/g1;->f:Ls5/b;

    if-eqz p1, :cond_0

    invoke-interface {p1}, Ls5/b;->a()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    :goto_0
    return-void
.end method

.method public l(I)V
    .locals 4

    const-string v0, "MiLinkUtils"

    const-string v1, "exitScreenCasting"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :try_start_0
    invoke-virtual {p0}, La8/g1;->m()Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    iget-object v1, p0, La8/g1;->d:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3, p1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    :cond_0
    invoke-virtual {p0}, La8/g1;->z()V

    iput-boolean v2, p0, La8/g1;->c:Z

    invoke-static {v2}, Lc8/a;->d(I)V

    invoke-static {v2}, Lm6/a;->m0(Z)V

    iget-object p1, p0, La8/g1;->f:Ls5/b;

    if-eqz p1, :cond_1

    invoke-interface {p1}, Ls5/b;->a()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    :goto_0
    return-void
.end method

.method public m()Z
    .locals 1

    iget-boolean v0, p0, La8/g1;->c:Z

    return v0
.end method

.method public o()Ljava/lang/String;
    .locals 2

    iget-object v0, p0, La8/g1;->d:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "screen_project_caller"

    invoke-static {v0, v1}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    const-string v0, ""

    :cond_0
    return-object v0
.end method

.method public q()Z
    .locals 4

    invoke-direct {p0}, La8/g1;->r()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    invoke-virtual {p0}, La8/g1;->o()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    const/4 v3, 0x1

    if-eqz v2, :cond_1

    iget-boolean v0, p0, La8/g1;->c:Z

    xor-int/2addr v0, v3

    return v0

    :cond_1
    const-string v2, "com.miui.securitycenter:ui"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-static {}, Lc8/a;->a()I

    move-result v0

    invoke-static {v0}, Lc8/b;->a(I)I

    move-result v0

    invoke-static {}, Lc8/a;->b()I

    move-result v2

    if-eq v2, v0, :cond_2

    move v1, v3

    :cond_2
    return v1

    :cond_3
    return v3
.end method

.method public s()Z
    .locals 4

    iget-object v0, p0, La8/g1;->d:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "screen_project_small_window_on"

    const/4 v2, 0x0

    const/4 v3, -0x2

    invoke-static {v0, v1, v2, v3}, La8/c0;->h(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    move v2, v1

    :cond_0
    return v2
.end method

.method public t()V
    .locals 1

    const/4 v0, 0x0

    iput v0, p0, La8/g1;->b:I

    invoke-direct {p0}, La8/g1;->A()V

    iget-object v0, p0, La8/g1;->a:Lcom/milink/sdk/client/MiLinkCastClient;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/milink/sdk/client/MiLinkCastClient;->release()V

    const/4 v0, 0x0

    iput-object v0, p0, La8/g1;->a:Lcom/milink/sdk/client/MiLinkCastClient;

    :cond_0
    return-void
.end method

.method public u()Z
    .locals 3

    invoke-direct {p0}, La8/g1;->r()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    invoke-virtual {p0}, La8/g1;->o()Ljava/lang/String;

    move-result-object v0

    const-string v2, "com.miui.securitycenter:ui"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, La8/g1;->e:Landroid/os/Handler;

    const/16 v1, 0x81

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    const/4 v0, 0x1

    return v0

    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "resumeConnectStateIfNeed: MiLinkState="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, La8/g1;->c:Z

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "MiLinkUtils"

    invoke-static {v2, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return v1
.end method

.method public x(Ls5/b;)V
    .locals 0

    iput-object p1, p0, La8/g1;->f:Ls5/b;

    return-void
.end method

.method public y()V
    .locals 4

    iget v0, p0, La8/g1;->b:I

    const-string v1, "MiLinkUtils"

    const/4 v2, 0x1

    if-nez v0, :cond_0

    const-string v0, "startCast\u3000wait init"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0, v2}, La8/g1;->p(Z)V

    return-void

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "startCast:"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, La8/g1;->a:Lcom/milink/sdk/client/MiLinkCastClient;

    if-eqz v3, :cond_1

    move v3, v2

    goto :goto_0

    :cond_1
    const/4 v3, 0x0

    :goto_0
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, La8/g1;->a:Lcom/milink/sdk/client/MiLinkCastClient;

    if-eqz v0, :cond_2

    invoke-static {}, Lc8/a;->a()I

    move-result v0

    invoke-static {v0}, Lc8/b;->a(I)I

    move-result v0

    iput v0, p0, La8/g1;->h:I

    iget-object v0, p0, La8/g1;->a:Lcom/milink/sdk/client/MiLinkCastClient;

    invoke-virtual {v0, v2}, Lcom/milink/sdk/client/MiLinkCastClient;->startWithUI(I)I

    :cond_2
    return-void
.end method

.method public z()V
    .locals 4

    invoke-virtual {p0}, La8/g1;->q()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget v0, p0, La8/g1;->b:I

    const-string v1, "MiLinkUtils"

    if-nez v0, :cond_1

    const-string v0, "stopCast not init, ignore"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_1
    :try_start_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "stopCast:"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, La8/g1;->a:Lcom/milink/sdk/client/MiLinkCastClient;

    const/4 v3, 0x1

    if-eqz v2, :cond_2

    move v2, v3

    goto :goto_0

    :cond_2
    const/4 v2, 0x0

    :goto_0
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, La8/g1;->a:Lcom/milink/sdk/client/MiLinkCastClient;

    if-eqz v0, :cond_3

    invoke-virtual {v0, v3}, Lcom/milink/sdk/client/MiLinkCastClient;->stopConnect(I)I

    const/16 v0, 0x84

    invoke-direct {p0, v0}, La8/g1;->v(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    :goto_1
    return-void
.end method
