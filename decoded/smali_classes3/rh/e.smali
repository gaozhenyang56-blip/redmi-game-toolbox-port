.class public final Lrh/e;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lrh/e$d;,
        Lrh/e$c;,
        Lrh/e$b;
    }
.end annotation


# instance fields
.field final a:Landroid/content/res/Resources;

.field final b:I

.field final c:I

.field final d:I

.field final e:I

.field final f:Lzh/a;

.field final g:Ljava/util/concurrent/Executor;

.field final h:Ljava/util/concurrent/Executor;

.field final i:Z

.field final j:Z

.field final k:I

.field final l:I

.field final m:Lsh/g;

.field final n:Lph/a;

.field final o:Llh/a;

.field final p:Lwh/c;

.field final q:Luh/b;

.field final r:Lrh/c;

.field final s:Lwh/c;

.field final t:Lwh/c;


# direct methods
.method private constructor <init>(Lrh/e$b;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p1}, Lrh/e$b;->a(Lrh/e$b;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    iput-object v0, p0, Lrh/e;->a:Landroid/content/res/Resources;

    invoke-static {p1}, Lrh/e$b;->b(Lrh/e$b;)I

    move-result v0

    iput v0, p0, Lrh/e;->b:I

    invoke-static {p1}, Lrh/e$b;->l(Lrh/e$b;)I

    move-result v0

    iput v0, p0, Lrh/e;->c:I

    invoke-static {p1}, Lrh/e$b;->m(Lrh/e$b;)I

    move-result v0

    iput v0, p0, Lrh/e;->d:I

    invoke-static {p1}, Lrh/e$b;->n(Lrh/e$b;)I

    move-result v0

    iput v0, p0, Lrh/e;->e:I

    invoke-static {p1}, Lrh/e$b;->o(Lrh/e$b;)Lzh/a;

    move-result-object v0

    iput-object v0, p0, Lrh/e;->f:Lzh/a;

    invoke-static {p1}, Lrh/e$b;->p(Lrh/e$b;)Ljava/util/concurrent/Executor;

    move-result-object v0

    iput-object v0, p0, Lrh/e;->g:Ljava/util/concurrent/Executor;

    invoke-static {p1}, Lrh/e$b;->q(Lrh/e$b;)Ljava/util/concurrent/Executor;

    move-result-object v0

    iput-object v0, p0, Lrh/e;->h:Ljava/util/concurrent/Executor;

    invoke-static {p1}, Lrh/e$b;->r(Lrh/e$b;)I

    move-result v0

    iput v0, p0, Lrh/e;->k:I

    invoke-static {p1}, Lrh/e$b;->s(Lrh/e$b;)I

    move-result v0

    iput v0, p0, Lrh/e;->l:I

    invoke-static {p1}, Lrh/e$b;->c(Lrh/e$b;)Lsh/g;

    move-result-object v0

    iput-object v0, p0, Lrh/e;->m:Lsh/g;

    invoke-static {p1}, Lrh/e$b;->d(Lrh/e$b;)Llh/a;

    move-result-object v0

    iput-object v0, p0, Lrh/e;->o:Llh/a;

    invoke-static {p1}, Lrh/e$b;->e(Lrh/e$b;)Lph/a;

    move-result-object v0

    iput-object v0, p0, Lrh/e;->n:Lph/a;

    invoke-static {p1}, Lrh/e$b;->f(Lrh/e$b;)Lrh/c;

    move-result-object v0

    iput-object v0, p0, Lrh/e;->r:Lrh/c;

    invoke-static {p1}, Lrh/e$b;->g(Lrh/e$b;)Lwh/c;

    move-result-object v0

    iput-object v0, p0, Lrh/e;->p:Lwh/c;

    invoke-static {p1}, Lrh/e$b;->h(Lrh/e$b;)Luh/b;

    move-result-object v1

    iput-object v1, p0, Lrh/e;->q:Luh/b;

    invoke-static {p1}, Lrh/e$b;->i(Lrh/e$b;)Z

    move-result v1

    iput-boolean v1, p0, Lrh/e;->i:Z

    invoke-static {p1}, Lrh/e$b;->j(Lrh/e$b;)Z

    move-result v1

    iput-boolean v1, p0, Lrh/e;->j:Z

    new-instance v1, Lrh/e$c;

    invoke-direct {v1, v0}, Lrh/e$c;-><init>(Lwh/c;)V

    iput-object v1, p0, Lrh/e;->s:Lwh/c;

    new-instance v1, Lrh/e$d;

    invoke-direct {v1, v0}, Lrh/e$d;-><init>(Lwh/c;)V

    iput-object v1, p0, Lrh/e;->t:Lwh/c;

    invoke-static {p1}, Lrh/e$b;->k(Lrh/e$b;)Z

    move-result p1

    invoke-static {p1}, Lai/c;->h(Z)V

    return-void
.end method

.method synthetic constructor <init>(Lrh/e$b;Lrh/e$a;)V
    .locals 0

    invoke-direct {p0, p1}, Lrh/e;-><init>(Lrh/e$b;)V

    return-void
.end method

.method public static a(Landroid/content/Context;)Lrh/e;
    .locals 1

    new-instance v0, Lrh/e$b;

    invoke-direct {v0, p0}, Lrh/e$b;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0}, Lrh/e$b;->t()Lrh/e;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method b()Lsh/e;
    .locals 3

    iget-object v0, p0, Lrh/e;->a:Landroid/content/res/Resources;

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v1, p0, Lrh/e;->b:I

    if-gtz v1, :cond_0

    iget v1, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    :cond_0
    iget v2, p0, Lrh/e;->c:I

    if-gtz v2, :cond_1

    iget v2, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    :cond_1
    new-instance v0, Lsh/e;

    invoke-direct {v0, v1, v2}, Lsh/e;-><init>(II)V

    return-object v0
.end method
