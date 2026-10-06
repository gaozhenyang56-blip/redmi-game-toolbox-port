.class public Lc3/k;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static d:Ljava/lang/String; = "DislikeManager"

.field private static e:Lc3/k;


# instance fields
.field private a:Lcom/xiaomi/ad/feedback/IAdFeedbackService;

.field private b:Landroid/content/ServiceConnection;

.field private c:Z


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lc3/k;->c:Z

    return-void
.end method

.method static synthetic a(Lc3/k;)Lcom/xiaomi/ad/feedback/IAdFeedbackService;
    .locals 0

    iget-object p0, p0, Lc3/k;->a:Lcom/xiaomi/ad/feedback/IAdFeedbackService;

    return-object p0
.end method

.method static synthetic b(Lc3/k;Lcom/xiaomi/ad/feedback/IAdFeedbackService;)Lcom/xiaomi/ad/feedback/IAdFeedbackService;
    .locals 0

    iput-object p1, p0, Lc3/k;->a:Lcom/xiaomi/ad/feedback/IAdFeedbackService;

    return-object p1
.end method

.method static synthetic c()Ljava/lang/String;
    .locals 1

    sget-object v0, Lc3/k;->d:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic d(Lc3/k;)Z
    .locals 0

    iget-boolean p0, p0, Lc3/k;->c:Z

    return p0
.end method

.method static synthetic e(Lc3/k;Z)Z
    .locals 0

    iput-boolean p1, p0, Lc3/k;->c:Z

    return p1
.end method

.method private f(Landroid/content/Context;)Landroid/content/Intent;
    .locals 2

    new-instance v0, Landroid/content/Intent;

    const-string v1, "miui.intent.action.ad.FEEDBACK_SERVICE"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-static {p1}, Lcom/miui/msa/util/MsaUtils;->getMsaPackageName(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    return-object v0
.end method

.method public static g()Lc3/k;
    .locals 1

    sget-object v0, Lc3/k;->e:Lc3/k;

    if-nez v0, :cond_0

    new-instance v0, Lc3/k;

    invoke-direct {v0}, Lc3/k;-><init>()V

    sput-object v0, Lc3/k;->e:Lc3/k;

    :cond_0
    sget-object v0, Lc3/k;->e:Lc3/k;

    return-object v0
.end method


# virtual methods
.method public h(Landroid/content/Context;)Z
    .locals 3

    invoke-direct {p0, p1}, Lc3/k;->f(Landroid/content/Context;)Landroid/content/Intent;

    move-result-object v0

    new-instance v1, Lc3/k$a;

    invoke-direct {v1, p0}, Lc3/k$a;-><init>(Lc3/k;)V

    const/4 v2, 0x1

    invoke-virtual {p1, v0, v1, v2}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p1, v1}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    return v2

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public i(Landroid/content/Context;Lcom/xiaomi/ad/feedback/IAdFeedbackListener;)V
    .locals 2

    invoke-direct {p0, p1}, Lc3/k;->f(Landroid/content/Context;)Landroid/content/Intent;

    move-result-object v0

    new-instance v1, Lc3/k$b;

    invoke-direct {v1, p0, p2}, Lc3/k$b;-><init>(Lc3/k;Lcom/xiaomi/ad/feedback/IAdFeedbackListener;)V

    iput-object v1, p0, Lc3/k;->b:Landroid/content/ServiceConnection;

    const/4 p2, 0x1

    invoke-virtual {p1, v0, v1, p2}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    move-result p1

    if-nez p1, :cond_0

    const/4 p1, 0x0

    iput-object p1, p0, Lc3/k;->b:Landroid/content/ServiceConnection;

    sget-object p1, Lc3/k;->d:Ljava/lang/String;

    const-string p2, "bind service fail"

    invoke-static {p1, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void
.end method

.method public j(Landroid/content/Context;Lcom/xiaomi/ad/feedback/IAdFeedbackListener;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 8

    invoke-direct {p0, p1}, Lc3/k;->f(Landroid/content/Context;)Landroid/content/Intent;

    move-result-object v0

    new-instance v7, Lc3/k$c;

    move-object v1, v7

    move-object v2, p0

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    invoke-direct/range {v1 .. v6}, Lc3/k$c;-><init>(Lc3/k;Lcom/xiaomi/ad/feedback/IAdFeedbackListener;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iput-object v7, p0, Lc3/k;->b:Landroid/content/ServiceConnection;

    const/4 p2, 0x1

    invoke-virtual {p1, v0, v7, p2}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    move-result p1

    if-nez p1, :cond_0

    const/4 p1, 0x0

    iput-object p1, p0, Lc3/k;->b:Landroid/content/ServiceConnection;

    sget-object p1, Lc3/k;->d:Ljava/lang/String;

    const-string p2, "bind service fail"

    invoke-static {p1, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void
.end method

.method public k(Landroid/content/Context;Lcom/xiaomi/ad/feedback/IAdFeedbackListener;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)V
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/xiaomi/ad/feedback/IAdFeedbackListener;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    const/4 v0, 0x1

    iput-boolean v0, p0, Lc3/k;->c:Z

    invoke-direct {p0, p1}, Lc3/k;->f(Landroid/content/Context;)Landroid/content/Intent;

    move-result-object v1

    new-instance v8, Lc3/k$d;

    move-object v2, v8

    move-object v3, p0

    move-object v4, p2

    move-object v5, p3

    move-object v6, p4

    move-object v7, p5

    invoke-direct/range {v2 .. v7}, Lc3/k$d;-><init>(Lc3/k;Lcom/xiaomi/ad/feedback/IAdFeedbackListener;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)V

    iput-object v8, p0, Lc3/k;->b:Landroid/content/ServiceConnection;

    invoke-virtual {p1, v1, v8, v0}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    move-result p1

    if-nez p1, :cond_0

    sget-object p1, Lc3/k;->d:Ljava/lang/String;

    const-string p2, "bind service fail"

    invoke-static {p1, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void
.end method

.method public l(Landroid/content/Context;)V
    .locals 1

    iget-object v0, p0, Lc3/k;->b:Landroid/content/ServiceConnection;

    if-eqz v0, :cond_0

    invoke-virtual {p1, v0}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    const/4 p1, 0x0

    iput-object p1, p0, Lc3/k;->b:Landroid/content/ServiceConnection;

    :cond_0
    return-void
.end method
