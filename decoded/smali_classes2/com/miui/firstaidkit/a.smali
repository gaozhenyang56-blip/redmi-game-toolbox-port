.class public Lcom/miui/firstaidkit/a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/firstaidkit/a$g;,
        Lcom/miui/firstaidkit/a$f;
    }
.end annotation


# static fields
.field private static i:Lcom/miui/firstaidkit/a;


# instance fields
.field private volatile a:Z

.field private b:Landroid/content/Context;

.field private c:Lo5/d;

.field private d:Lcom/miui/firstaidkit/b;

.field private e:Ljava/util/Queue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Queue<",
            "Lo5/e;",
            ">;"
        }
    .end annotation
.end field

.field private f:Lcom/miui/firstaidkit/a$f;

.field private g:Lo5/f;

.field private h:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/miui/firstaidkit/a;->a:Z

    new-instance v1, Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-direct {v1}, Ljava/util/concurrent/ConcurrentLinkedQueue;-><init>()V

    iput-object v1, p0, Lcom/miui/firstaidkit/a;->e:Ljava/util/Queue;

    iput-object p1, p0, Lcom/miui/firstaidkit/a;->b:Landroid/content/Context;

    invoke-static {p1}, Lo5/d;->b(Landroid/content/Context;)Lo5/d;

    move-result-object p1

    iput-object p1, p0, Lcom/miui/firstaidkit/a;->c:Lo5/d;

    new-instance p1, Lcom/miui/firstaidkit/b;

    invoke-direct {p1}, Lcom/miui/firstaidkit/b;-><init>()V

    iput-object p1, p0, Lcom/miui/firstaidkit/a;->d:Lcom/miui/firstaidkit/b;

    invoke-static {}, Lo5/f;->f()Lo5/f;

    move-result-object p1

    iput-object p1, p0, Lcom/miui/firstaidkit/a;->g:Lo5/f;

    iput-boolean v0, p0, Lcom/miui/firstaidkit/a;->a:Z

    return-void
.end method

.method static synthetic a(Lcom/miui/firstaidkit/a;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/miui/firstaidkit/a;->a:Z

    return p0
.end method

.method static synthetic b(Lcom/miui/firstaidkit/a;)Lcom/miui/firstaidkit/b;
    .locals 0

    iget-object p0, p0, Lcom/miui/firstaidkit/a;->d:Lcom/miui/firstaidkit/b;

    return-object p0
.end method

.method static synthetic c(Lcom/miui/firstaidkit/a;)Lo5/f;
    .locals 0

    iget-object p0, p0, Lcom/miui/firstaidkit/a;->g:Lo5/f;

    return-object p0
.end method

.method static synthetic d(Lcom/miui/firstaidkit/a;I)I
    .locals 1

    iget v0, p0, Lcom/miui/firstaidkit/a;->h:I

    add-int/2addr v0, p1

    iput v0, p0, Lcom/miui/firstaidkit/a;->h:I

    return v0
.end method

.method public static g(Landroid/content/Context;)Lcom/miui/firstaidkit/a;
    .locals 1

    sget-object v0, Lcom/miui/firstaidkit/a;->i:Lcom/miui/firstaidkit/a;

    if-nez v0, :cond_0

    new-instance v0, Lcom/miui/firstaidkit/a;

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    invoke-direct {v0, p0}, Lcom/miui/firstaidkit/a;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/miui/firstaidkit/a;->i:Lcom/miui/firstaidkit/a;

    :cond_0
    sget-object p0, Lcom/miui/firstaidkit/a;->i:Lcom/miui/firstaidkit/a;

    return-object p0
.end method

.method private j(Lcom/miui/firstaidkit/a$g;Landroid/os/Handler;)V
    .locals 2

    iget-object v0, p0, Lcom/miui/firstaidkit/a;->c:Lo5/d;

    new-instance v1, Lcom/miui/firstaidkit/a$d;

    invoke-direct {v1, p0, p1}, Lcom/miui/firstaidkit/a$d;-><init>(Lcom/miui/firstaidkit/a;Lcom/miui/firstaidkit/a$g;)V

    const-string p1, "ConsumePower"

    invoke-virtual {v0, p2, p1, v1}, Lo5/d;->d(Landroid/os/Handler;Ljava/lang/String;Lp5/a;)V

    return-void
.end method

.method private m(Lcom/miui/firstaidkit/a$g;Landroid/os/Handler;)V
    .locals 2

    iget-object v0, p0, Lcom/miui/firstaidkit/a;->c:Lo5/d;

    new-instance v1, Lcom/miui/firstaidkit/a$b;

    invoke-direct {v1, p0, p1}, Lcom/miui/firstaidkit/a$b;-><init>(Lcom/miui/firstaidkit/a;Lcom/miui/firstaidkit/a$g;)V

    const-string p1, "Internet"

    invoke-virtual {v0, p2, p1, v1}, Lo5/d;->d(Landroid/os/Handler;Ljava/lang/String;Lp5/a;)V

    return-void
.end method

.method private n(Lcom/miui/firstaidkit/a$g;Landroid/os/Handler;)V
    .locals 2

    iget-object v0, p0, Lcom/miui/firstaidkit/a;->c:Lo5/d;

    new-instance v1, Lcom/miui/firstaidkit/a$c;

    invoke-direct {v1, p0, p1}, Lcom/miui/firstaidkit/a$c;-><init>(Lcom/miui/firstaidkit/a;Lcom/miui/firstaidkit/a$g;)V

    const-string p1, "Operation"

    invoke-virtual {v0, p2, p1, v1}, Lo5/d;->d(Landroid/os/Handler;Ljava/lang/String;Lp5/a;)V

    return-void
.end method

.method private o(Lcom/miui/firstaidkit/a$g;Landroid/os/Handler;)V
    .locals 2

    iget-object v0, p0, Lcom/miui/firstaidkit/a;->c:Lo5/d;

    new-instance v1, Lcom/miui/firstaidkit/a$e;

    invoke-direct {v1, p0, p1}, Lcom/miui/firstaidkit/a$e;-><init>(Lcom/miui/firstaidkit/a;Lcom/miui/firstaidkit/a$g;)V

    const-string p1, "Other"

    invoke-virtual {v0, p2, p1, v1}, Lo5/d;->d(Landroid/os/Handler;Ljava/lang/String;Lp5/a;)V

    return-void
.end method

.method private p(Lcom/miui/firstaidkit/a$g;Landroid/os/Handler;)V
    .locals 2

    iget-object v0, p0, Lcom/miui/firstaidkit/a;->c:Lo5/d;

    new-instance v1, Lcom/miui/firstaidkit/a$a;

    invoke-direct {v1, p0, p1}, Lcom/miui/firstaidkit/a$a;-><init>(Lcom/miui/firstaidkit/a;Lcom/miui/firstaidkit/a$g;)V

    const-string p1, "Performance"

    invoke-virtual {v0, p2, p1, v1}, Lo5/d;->d(Landroid/os/Handler;Ljava/lang/String;Lp5/a;)V

    return-void
.end method


# virtual methods
.method public e()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/miui/firstaidkit/a;->a:Z

    iget-object v0, p0, Lcom/miui/firstaidkit/a;->f:Lcom/miui/firstaidkit/a$f;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/Thread;->isAlive()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/firstaidkit/a;->f:Lcom/miui/firstaidkit/a$f;

    invoke-virtual {v0}, Ljava/lang/Thread;->interrupt()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/miui/firstaidkit/a;->f:Lcom/miui/firstaidkit/a$f;

    :cond_0
    return-void
.end method

.method public f()I
    .locals 1

    iget v0, p0, Lcom/miui/firstaidkit/a;->h:I

    return v0
.end method

.method public h()Lo5/e;
    .locals 1

    iget-object v0, p0, Lcom/miui/firstaidkit/a;->e:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->poll()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lo5/e;

    return-object v0
.end method

.method public i(Lo5/e;Lp5/b;)V
    .locals 2

    new-instance v0, Lcom/miui/firstaidkit/a$f;

    iget-object v1, p0, Lcom/miui/firstaidkit/a;->d:Lcom/miui/firstaidkit/b;

    invoke-virtual {v1, p1}, Lcom/miui/firstaidkit/b;->b(Lo5/e;)Ljava/util/concurrent/BlockingQueue;

    move-result-object p1

    invoke-direct {v0, p0, p2, p1}, Lcom/miui/firstaidkit/a$f;-><init>(Lcom/miui/firstaidkit/a;Lp5/b;Ljava/util/concurrent/BlockingQueue;)V

    iput-object v0, p0, Lcom/miui/firstaidkit/a;->f:Lcom/miui/firstaidkit/a$f;

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    return-void
.end method

.method public k(Landroid/os/Handler;)V
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, v0, p1}, Lcom/miui/firstaidkit/a;->l(Lcom/miui/firstaidkit/a$g;Landroid/os/Handler;)V

    return-void
.end method

.method public l(Lcom/miui/firstaidkit/a$g;Landroid/os/Handler;)V
    .locals 2

    const/4 v0, 0x0

    iput v0, p0, Lcom/miui/firstaidkit/a;->h:I

    iput-boolean v0, p0, Lcom/miui/firstaidkit/a;->a:Z

    iget-object v0, p0, Lcom/miui/firstaidkit/a;->e:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Collection;->clear()V

    iget-object v0, p0, Lcom/miui/firstaidkit/a;->e:Ljava/util/Queue;

    invoke-static {}, Lo5/e;->values()[Lo5/e;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Collection;->addAll(Ljava/util/Collection;)Z

    iget-object v0, p0, Lcom/miui/firstaidkit/a;->d:Lcom/miui/firstaidkit/b;

    invoke-virtual {v0}, Lcom/miui/firstaidkit/b;->a()V

    invoke-direct {p0, p1, p2}, Lcom/miui/firstaidkit/a;->p(Lcom/miui/firstaidkit/a$g;Landroid/os/Handler;)V

    invoke-direct {p0, p1, p2}, Lcom/miui/firstaidkit/a;->m(Lcom/miui/firstaidkit/a$g;Landroid/os/Handler;)V

    invoke-direct {p0, p1, p2}, Lcom/miui/firstaidkit/a;->n(Lcom/miui/firstaidkit/a$g;Landroid/os/Handler;)V

    invoke-direct {p0, p1, p2}, Lcom/miui/firstaidkit/a;->j(Lcom/miui/firstaidkit/a$g;Landroid/os/Handler;)V

    invoke-direct {p0, p1, p2}, Lcom/miui/firstaidkit/a;->o(Lcom/miui/firstaidkit/a$g;Landroid/os/Handler;)V

    return-void
.end method
