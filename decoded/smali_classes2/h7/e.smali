.class public Lh7/e;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static h:Lh7/e;


# instance fields
.field private a:Z

.field private b:Lh7/f;

.field private volatile c:Z

.field private d:Lh7/a;

.field private e:Lh7/i;

.field private f:Ljava/lang/String;

.field private g:I


# direct methods
.method private constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget-boolean v0, Lsl/a;->a:Z

    if-nez v0, :cond_1

    invoke-static {}, Lh7/g;->q()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    iput-boolean v0, p0, Lh7/e;->a:Z

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "PerformanceBubbleController: isSupportTips="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lh7/e;->a:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "GTB.PBC"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public static synthetic a(Lh7/e;ZZ)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lh7/e;->h(ZZ)V

    return-void
.end method

.method public static synthetic b(Lh7/e;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lh7/e;->j(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic c(Lh7/e;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lh7/e;->i(Landroid/view/View;)V

    return-void
.end method

.method static synthetic d(Lh7/e;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lh7/e;->f:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic e(Lh7/e;)I
    .locals 0

    iget p0, p0, Lh7/e;->g:I

    return p0
.end method

.method static synthetic f(Lh7/e;Ljava/lang/String;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lh7/e;->k(Ljava/lang/String;I)V

    return-void
.end method

.method public static declared-synchronized g()Lh7/e;
    .locals 2

    const-class v0, Lh7/e;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lh7/e;->h:Lh7/e;

    if-nez v1, :cond_0

    new-instance v1, Lh7/e;

    invoke-direct {v1}, Lh7/e;-><init>()V

    sput-object v1, Lh7/e;->h:Lh7/e;

    :cond_0
    sget-object v1, Lh7/e;->h:Lh7/e;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method private synthetic h(ZZ)V
    .locals 1

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "onGameCaton: P-MODE="

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "GTB.PBC"

    invoke-static {v0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    if-nez p2, :cond_0

    invoke-direct {p0}, Lh7/e;->m()V

    :cond_0
    return-void
.end method

.method private synthetic i(Landroid/view/View;)V
    .locals 2

    const-string p1, "GTB.PBC"

    const-string v0, "showTips: set performance mode on."

    invoke-static {p1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lcom/miui/securitycenter/Application;->A()Lcom/miui/securitycenter/Application;

    move-result-object p1

    const v0, 0x7f120a83

    const/4 v1, 0x0

    invoke-static {p1, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    iget-object p1, p0, Lh7/e;->e:Lh7/i;

    invoke-virtual {p1}, Lh7/i;->b()V

    invoke-static {}, Lh7/g;->l()Lh7/g;

    move-result-object p1

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lh7/g;->u(Z)V

    return-void
.end method

.method private synthetic j(Landroid/view/View;)V
    .locals 0

    iget-object p1, p0, Lh7/e;->e:Lh7/i;

    invoke-virtual {p1}, Lh7/i;->b()V

    return-void
.end method

.method private k(Ljava/lang/String;I)V
    .locals 0

    iget-boolean p1, p0, Lh7/e;->a:Z

    if-eqz p1, :cond_1

    iget-object p1, p0, Lh7/e;->b:Lh7/f;

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Lh7/f;->a()Z

    move-result p1

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lh7/e;->b:Lh7/f;

    invoke-virtual {p1}, Lh7/f;->i()V

    const-string p1, "GTB.PBC"

    const-string p2, "onGameCaton: \u63d0\u793a\u7528\u6237\u5f00\u542f\u6027\u80fd\u6a21\u5f0f"

    invoke-static {p1, p2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lh7/g;->l()Lh7/g;

    move-result-object p1

    new-instance p2, Lh7/b;

    invoke-direct {p2, p0}, Lh7/b;-><init>(Lh7/e;)V

    invoke-virtual {p1, p2}, Lh7/g;->m(Lh7/g$b;)V

    :cond_1
    :goto_0
    return-void
.end method

.method private m()V
    .locals 4

    const-string v0, "GTB.PBC"

    const-string v1, "showTips: ..."

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lh7/e;->e:Lh7/i;

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-static {}, Lcom/miui/securitycenter/Application;->A()Lcom/miui/securitycenter/Application;

    move-result-object v1

    new-instance v2, Lh7/c;

    invoke-direct {v2, p0}, Lh7/c;-><init>(Lh7/e;)V

    new-instance v3, Lh7/d;

    invoke-direct {v3, p0}, Lh7/d;-><init>(Lh7/e;)V

    invoke-virtual {v0, v1, v2, v3}, Lh7/i;->d(Landroid/content/Context;Landroid/view/View$OnClickListener;Landroid/view/View$OnClickListener;)V

    return-void
.end method


# virtual methods
.method public l()V
    .locals 2

    iget-boolean v0, p0, Lh7/e;->a:Z

    if-eqz v0, :cond_3

    iget-boolean v0, p0, Lh7/e;->c:Z

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lh7/e;->d:Lh7/a;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lh7/a;->c()V

    :cond_1
    iget-object v0, p0, Lh7/e;->e:Lh7/i;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lh7/i;->b()V

    :cond_2
    const/4 v0, -0x1

    iput v0, p0, Lh7/e;->g:I

    const/4 v0, 0x0

    iput-object v0, p0, Lh7/e;->f:Ljava/lang/String;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lh7/e;->c:Z

    const-string v0, "GTB.PBC"

    const-string v1, "release: success"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    :goto_0
    return-void
.end method

.method public n(Ljava/lang/String;I)V
    .locals 4

    iget-boolean v0, p0, Lh7/e;->a:Z

    const-string v1, "GTB.PBC"

    if-eqz v0, :cond_3

    iget-boolean v0, p0, Lh7/e;->c:Z

    if-eqz v0, :cond_0

    goto :goto_1

    :cond_0
    new-instance v0, Lh7/f;

    invoke-static {}, Lcom/miui/securitycenter/Application;->A()Lcom/miui/securitycenter/Application;

    move-result-object v2

    invoke-direct {v0, v2}, Lh7/f;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lh7/e;->b:Lh7/f;

    invoke-virtual {v0}, Lh7/f;->f()Z

    move-result v0

    if-nez v0, :cond_1

    const-string p1, "initialize: enable=false"

    :goto_0
    invoke-static {v1, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_1
    iput-object p1, p0, Lh7/e;->f:Ljava/lang/String;

    iput p2, p0, Lh7/e;->g:I

    new-instance p1, Lh7/i;

    invoke-direct {p1}, Lh7/i;-><init>()V

    iput-object p1, p0, Lh7/e;->e:Lh7/i;

    iget-object p2, p0, Lh7/e;->b:Lh7/f;

    invoke-virtual {p2}, Lh7/f;->b()J

    move-result-wide v2

    invoke-virtual {p1, v2, v3}, Lh7/i;->c(J)V

    iget-object p1, p0, Lh7/e;->d:Lh7/a;

    if-nez p1, :cond_2

    new-instance p1, Lh7/e$a;

    invoke-direct {p1, p0}, Lh7/e$a;-><init>(Lh7/e;)V

    iput-object p1, p0, Lh7/e;->d:Lh7/a;

    :cond_2
    iget-object p1, p0, Lh7/e;->d:Lh7/a;

    invoke-static {}, Lcom/miui/securitycenter/Application;->A()Lcom/miui/securitycenter/Application;

    move-result-object p2

    const-string v0, "com.miui.securitycenter.gtb.RECOMMEND_PERFORMANCE_MODE"

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, p2, v0}, Lh7/a;->a(Landroid/content/Context;[Ljava/lang/String;)V

    const/4 p1, 0x1

    iput-boolean p1, p0, Lh7/e;->c:Z

    const-string p1, "startPerformanceMonitor: initialize success."

    goto :goto_0

    :cond_3
    :goto_1
    const-string p1, "startPerformanceMonitor: not support or already initialized;"

    goto :goto_0
.end method
