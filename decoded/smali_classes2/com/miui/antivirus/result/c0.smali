.class public Lcom/miui/antivirus/result/c0;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/antivirus/result/c0$d;,
        Lcom/miui/antivirus/result/c0$h;,
        Lcom/miui/antivirus/result/c0$e;,
        Lcom/miui/antivirus/result/c0$g;,
        Lcom/miui/antivirus/result/c0$f;,
        Lcom/miui/antivirus/result/c0$c;,
        Lcom/miui/antivirus/result/c0$b;
    }
.end annotation


# static fields
.field private static h:Lcom/miui/antivirus/result/f;

.field private static i:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Ljava/lang/Runnable;",
            ">;"
        }
    .end annotation
.end field

.field private static j:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Landroid/app/Activity;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private a:Landroid/content/Context;

.field private b:Lcom/miui/antivirus/result/ScanResultFrame;

.field private c:Lcom/miui/antivirus/result/n;

.field private d:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/miui/antivirus/result/a;",
            ">;"
        }
    .end annotation
.end field

.field private e:Lcom/miui/antivirus/result/c0$f;

.field private f:Lcom/miui/antivirus/result/c0$g;

.field private g:Lcom/miui/antivirus/result/c0$b;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method private constructor <init>(Lcom/miui/antivirus/result/c0$c;)V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/miui/antivirus/result/c0;->d:Ljava/util/ArrayList;

    new-instance v0, Lcom/miui/antivirus/result/c0$b;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/miui/antivirus/result/c0$b;-><init>(Lcom/miui/antivirus/result/c0$a;)V

    iput-object v0, p0, Lcom/miui/antivirus/result/c0;->g:Lcom/miui/antivirus/result/c0$b;

    invoke-static {p1}, Lcom/miui/antivirus/result/c0$c;->b(Lcom/miui/antivirus/result/c0$c;)Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/antivirus/result/c0;->a:Landroid/content/Context;

    invoke-static {p1}, Lcom/miui/antivirus/result/c0$c;->c(Lcom/miui/antivirus/result/c0$c;)Lcom/miui/antivirus/result/n;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/antivirus/result/c0;->c:Lcom/miui/antivirus/result/n;

    invoke-static {p1}, Lcom/miui/antivirus/result/c0$c;->d(Lcom/miui/antivirus/result/c0$c;)Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/antivirus/result/c0;->d:Ljava/util/ArrayList;

    invoke-static {p1}, Lcom/miui/antivirus/result/c0$c;->e(Lcom/miui/antivirus/result/c0$c;)Lcom/miui/antivirus/result/ScanResultFrame;

    move-result-object p1

    iput-object p1, p0, Lcom/miui/antivirus/result/c0;->b:Lcom/miui/antivirus/result/ScanResultFrame;

    iget-object v0, p0, Lcom/miui/antivirus/result/c0;->a:Landroid/content/Context;

    sget-object v1, Lcom/miui/antivirus/result/c0;->h:Lcom/miui/antivirus/result/f;

    iget-object v2, p0, Lcom/miui/antivirus/result/c0;->c:Lcom/miui/antivirus/result/n;

    invoke-virtual {p1, v0, v1, v2}, Lcom/miui/antivirus/result/ScanResultFrame;->l(Landroid/content/Context;Lcom/miui/antivirus/result/f;Lcom/miui/antivirus/result/n;)V

    iget-object p1, p0, Lcom/miui/antivirus/result/c0;->b:Lcom/miui/antivirus/result/ScanResultFrame;

    invoke-virtual {p1}, Lcom/miui/antivirus/result/ScanResultFrame;->i()V

    new-instance p1, Lcom/miui/antivirus/result/c0$f;

    iget-object v0, p0, Lcom/miui/antivirus/result/c0;->d:Ljava/util/ArrayList;

    invoke-direct {p1, v0, p0}, Lcom/miui/antivirus/result/c0$f;-><init>(Ljava/util/ArrayList;Lcom/miui/antivirus/result/c0;)V

    iput-object p1, p0, Lcom/miui/antivirus/result/c0;->e:Lcom/miui/antivirus/result/c0$f;

    new-instance p1, Lcom/miui/antivirus/result/c0$g;

    iget-object v0, p0, Lcom/miui/antivirus/result/c0;->d:Ljava/util/ArrayList;

    invoke-direct {p1, v0, p0}, Lcom/miui/antivirus/result/c0$g;-><init>(Ljava/util/ArrayList;Lcom/miui/antivirus/result/c0;)V

    iput-object p1, p0, Lcom/miui/antivirus/result/c0;->f:Lcom/miui/antivirus/result/c0$g;

    iget-object p1, p0, Lcom/miui/antivirus/result/c0;->a:Landroid/content/Context;

    invoke-static {p1}, Lsf/h;->c(Landroid/content/Context;)Lsf/h;

    move-result-object p1

    iget-object v0, p0, Lcom/miui/antivirus/result/c0;->e:Lcom/miui/antivirus/result/c0$f;

    invoke-virtual {p1, v0}, Lsf/h;->f(Lsf/h$b;)V

    iget-object p1, p0, Lcom/miui/antivirus/result/c0;->a:Landroid/content/Context;

    invoke-static {p1}, Lsf/e;->d(Landroid/content/Context;)Lsf/e;

    move-result-object p1

    iget-object v0, p0, Lcom/miui/antivirus/result/c0;->f:Lcom/miui/antivirus/result/c0$g;

    invoke-virtual {p1, v0}, Lsf/e;->l(Lsf/e$c;)V

    return-void
.end method

.method synthetic constructor <init>(Lcom/miui/antivirus/result/c0$c;Lcom/miui/antivirus/result/c0$a;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/miui/antivirus/result/c0;-><init>(Lcom/miui/antivirus/result/c0$c;)V

    return-void
.end method

.method static synthetic a()Lcom/miui/antivirus/result/f;
    .locals 1

    sget-object v0, Lcom/miui/antivirus/result/c0;->h:Lcom/miui/antivirus/result/f;

    return-object v0
.end method

.method static synthetic b(Lcom/miui/antivirus/result/f;)Lcom/miui/antivirus/result/f;
    .locals 0

    sput-object p0, Lcom/miui/antivirus/result/c0;->h:Lcom/miui/antivirus/result/f;

    return-object p0
.end method

.method static synthetic c()Ljava/lang/ref/WeakReference;
    .locals 1

    sget-object v0, Lcom/miui/antivirus/result/c0;->i:Ljava/lang/ref/WeakReference;

    return-object v0
.end method

.method public static d(Ljava/lang/String;Lcom/miui/antivirus/result/b;)V
    .locals 2

    invoke-virtual {p1}, Lcom/miui/antivirus/result/b;->m()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    new-instance v1, Lqf/a$e;

    invoke-direct {v1, p0, p1}, Lqf/a$e;-><init>(Ljava/lang/String;Lcom/miui/antivirus/result/b;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-static {}, Lcom/miui/securitycenter/Application;->A()Lcom/miui/securitycenter/Application;

    move-result-object p0

    invoke-static {p0, v0}, Lqf/a;->h(Landroid/content/Context;Ljava/util/List;)V

    return-void
.end method

.method public static e(Landroid/app/Activity;)V
    .locals 2

    sget-object v0, Lcom/miui/antivirus/result/c0;->j:Ljava/lang/ref/WeakReference;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    sput-object v1, Lcom/miui/antivirus/result/c0;->h:Lcom/miui/antivirus/result/f;

    return-void

    :cond_0
    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    if-eqz v0, :cond_1

    if-ne p0, v0, :cond_2

    :cond_1
    sput-object v1, Lcom/miui/antivirus/result/c0;->h:Lcom/miui/antivirus/result/f;

    sput-object v1, Lcom/miui/antivirus/result/c0;->j:Ljava/lang/ref/WeakReference;

    :cond_2
    return-void
.end method

.method public static g()Z
    .locals 1

    sget-object v0, Lcom/miui/antivirus/result/c0;->h:Lcom/miui/antivirus/result/f;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public static j(Landroid/app/Activity;)V
    .locals 2

    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p0}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    sput-object v0, Lcom/miui/antivirus/result/c0;->j:Ljava/lang/ref/WeakReference;

    new-instance p0, Lcom/miui/antivirus/result/c0$e;

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/miui/antivirus/result/c0$e;-><init>(Lcom/miui/antivirus/result/c0$a;)V

    sget-object v0, Landroid/os/AsyncTask;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Void;

    invoke-virtual {p0, v0, v1}, Landroid/os/AsyncTask;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    return-void
.end method

.method public static k(Lcom/miui/antivirus/result/c0$d;Landroid/content/Context;)V
    .locals 1

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lu2/b;->b(Landroid/content/Context;)Lu2/b;

    move-result-object p1

    invoke-virtual {p1}, Lu2/b;->g()Z

    move-result p1

    if-nez p1, :cond_0

    return-void

    :cond_0
    const-string p1, "CleanResultControl"

    const-string v0, "start load sidekick data"

    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance p1, Lcom/miui/antivirus/result/c0$h;

    invoke-direct {p1, p0}, Lcom/miui/antivirus/result/c0$h;-><init>(Lcom/miui/antivirus/result/c0$d;)V

    sget-object p0, Landroid/os/AsyncTask;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Void;

    invoke-virtual {p1, p0, v0}, Landroid/os/AsyncTask;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    return-void
.end method

.method public static o(Ljava/lang/Runnable;)V
    .locals 1

    if-nez p0, :cond_0

    const/4 p0, 0x0

    sput-object p0, Lcom/miui/antivirus/result/c0;->i:Ljava/lang/ref/WeakReference;

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p0}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    sput-object v0, Lcom/miui/antivirus/result/c0;->i:Ljava/lang/ref/WeakReference;

    :goto_0
    return-void
.end method


# virtual methods
.method public f()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/miui/antivirus/result/c;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/miui/antivirus/result/c0;->b:Lcom/miui/antivirus/result/ScanResultFrame;

    invoke-virtual {v0}, Lcom/miui/antivirus/result/ScanResultFrame;->getModels()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public h()V
    .locals 2

    iget-object v0, p0, Lcom/miui/antivirus/result/c0;->b:Lcom/miui/antivirus/result/ScanResultFrame;

    invoke-virtual {v0}, Lcom/miui/antivirus/result/ScanResultFrame;->j()V

    iget-object v0, p0, Lcom/miui/antivirus/result/c0;->a:Landroid/content/Context;

    invoke-static {v0}, Lsf/h;->c(Landroid/content/Context;)Lsf/h;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/antivirus/result/c0;->e:Lcom/miui/antivirus/result/c0$f;

    invoke-virtual {v0, v1}, Lsf/h;->g(Lsf/h$b;)V

    iget-object v0, p0, Lcom/miui/antivirus/result/c0;->a:Landroid/content/Context;

    invoke-static {v0}, Lsf/e;->d(Landroid/content/Context;)Lsf/e;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/antivirus/result/c0;->f:Lcom/miui/antivirus/result/c0$g;

    invoke-virtual {v0, v1}, Lsf/e;->p(Lsf/e$c;)V

    return-void
.end method

.method public i()V
    .locals 1

    iget-object v0, p0, Lcom/miui/antivirus/result/c0;->c:Lcom/miui/antivirus/result/n;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    :cond_0
    return-void
.end method

.method public l(Lcom/miui/antivirus/result/a;)V
    .locals 1

    iget-object v0, p0, Lcom/miui/antivirus/result/c0;->d:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    invoke-virtual {p0}, Lcom/miui/antivirus/result/c0;->i()V

    return-void
.end method

.method public m(Lcom/miui/antivirus/result/c;Ljava/util/List;Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/miui/antivirus/result/c;",
            "Ljava/util/List<",
            "Lcom/miui/antivirus/result/c;",
            ">;",
            "Ljava/util/List<",
            "Lcom/miui/antivirus/result/c;",
            ">;)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/miui/antivirus/result/c0;->d:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result p1

    if-lez p1, :cond_0

    iget-object v0, p0, Lcom/miui/antivirus/result/c0;->d:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    if-ge p1, v0, :cond_0

    iget-object v0, p0, Lcom/miui/antivirus/result/c0;->d:Ljava/util/ArrayList;

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->removeAll(Ljava/util/Collection;)Z

    invoke-interface {p3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result p3

    if-eqz p3, :cond_0

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/miui/antivirus/result/c;

    add-int/lit8 p1, p1, 0x1

    iget-object v0, p0, Lcom/miui/antivirus/result/c0;->d:Ljava/util/ArrayList;

    invoke-virtual {v0, p1, p3}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/miui/antivirus/result/c0;->i()V

    return-void
.end method

.method public n(Lw4/e;)V
    .locals 1

    iget-object v0, p0, Lcom/miui/antivirus/result/c0;->b:Lcom/miui/antivirus/result/ScanResultFrame;

    invoke-virtual {v0, p1}, Lcom/miui/antivirus/result/ScanResultFrame;->setEventHandler(Lw4/e;)V

    return-void
.end method

.method public p(Lcom/miui/securitycenter/ad/view/AdImageView;ILcom/miui/antivirus/result/b;)V
    .locals 1

    iget-object v0, p0, Lcom/miui/antivirus/result/c0;->g:Lcom/miui/antivirus/result/c0$b;

    invoke-virtual {p1, v0, p2, p3}, Lcom/miui/securitycenter/ad/view/AdImageView;->startTime(Landroid/os/Handler;ILjava/lang/Object;)V

    return-void
.end method
