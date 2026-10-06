.class public final Lrh/c;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lrh/c$b;
    }
.end annotation


# instance fields
.field private final a:I

.field private final b:I

.field private final c:I

.field private final d:Landroid/graphics/drawable/Drawable;

.field private final e:Landroid/graphics/drawable/Drawable;

.field private final f:Landroid/graphics/drawable/Drawable;

.field private final g:Z

.field private final h:Z

.field private final i:Z

.field private final j:Lsh/d;

.field private final k:Landroid/graphics/BitmapFactory$Options;

.field private final l:I

.field private final m:Z

.field private final n:Ljava/lang/Object;

.field private final o:Lzh/a;

.field private final p:Lzh/a;

.field private final q:Lvh/a;

.field private final r:Landroid/os/Handler;

.field private final s:Z

.field private final t:Z

.field private final u:Z


# direct methods
.method private constructor <init>(Lrh/c$b;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p1}, Lrh/c$b;->a(Lrh/c$b;)I

    move-result v0

    iput v0, p0, Lrh/c;->a:I

    invoke-static {p1}, Lrh/c$b;->b(Lrh/c$b;)I

    move-result v0

    iput v0, p0, Lrh/c;->b:I

    invoke-static {p1}, Lrh/c$b;->m(Lrh/c$b;)I

    move-result v0

    iput v0, p0, Lrh/c;->c:I

    invoke-static {p1}, Lrh/c$b;->o(Lrh/c$b;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lrh/c;->d:Landroid/graphics/drawable/Drawable;

    invoke-static {p1}, Lrh/c$b;->p(Lrh/c$b;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lrh/c;->e:Landroid/graphics/drawable/Drawable;

    invoke-static {p1}, Lrh/c$b;->q(Lrh/c$b;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lrh/c;->f:Landroid/graphics/drawable/Drawable;

    invoke-static {p1}, Lrh/c$b;->r(Lrh/c$b;)Z

    move-result v0

    iput-boolean v0, p0, Lrh/c;->g:Z

    invoke-static {p1}, Lrh/c$b;->s(Lrh/c$b;)Z

    move-result v0

    iput-boolean v0, p0, Lrh/c;->h:Z

    invoke-static {p1}, Lrh/c$b;->t(Lrh/c$b;)Z

    move-result v0

    iput-boolean v0, p0, Lrh/c;->i:Z

    invoke-static {p1}, Lrh/c$b;->u(Lrh/c$b;)Lsh/d;

    move-result-object v0

    iput-object v0, p0, Lrh/c;->j:Lsh/d;

    invoke-static {p1}, Lrh/c$b;->c(Lrh/c$b;)Landroid/graphics/BitmapFactory$Options;

    move-result-object v0

    iput-object v0, p0, Lrh/c;->k:Landroid/graphics/BitmapFactory$Options;

    invoke-static {p1}, Lrh/c$b;->d(Lrh/c$b;)I

    move-result v0

    iput v0, p0, Lrh/c;->l:I

    invoke-static {p1}, Lrh/c$b;->e(Lrh/c$b;)Z

    move-result v0

    iput-boolean v0, p0, Lrh/c;->m:Z

    invoke-static {p1}, Lrh/c$b;->f(Lrh/c$b;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lrh/c;->n:Ljava/lang/Object;

    invoke-static {p1}, Lrh/c$b;->g(Lrh/c$b;)Lzh/a;

    move-result-object v0

    iput-object v0, p0, Lrh/c;->o:Lzh/a;

    invoke-static {p1}, Lrh/c$b;->h(Lrh/c$b;)Lzh/a;

    move-result-object v0

    iput-object v0, p0, Lrh/c;->p:Lzh/a;

    invoke-static {p1}, Lrh/c$b;->i(Lrh/c$b;)Lvh/a;

    move-result-object v0

    iput-object v0, p0, Lrh/c;->q:Lvh/a;

    invoke-static {p1}, Lrh/c$b;->j(Lrh/c$b;)Landroid/os/Handler;

    move-result-object v0

    iput-object v0, p0, Lrh/c;->r:Landroid/os/Handler;

    invoke-static {p1}, Lrh/c$b;->k(Lrh/c$b;)Z

    move-result v0

    iput-boolean v0, p0, Lrh/c;->s:Z

    invoke-static {p1}, Lrh/c$b;->l(Lrh/c$b;)Z

    move-result v0

    iput-boolean v0, p0, Lrh/c;->t:Z

    invoke-static {p1}, Lrh/c$b;->n(Lrh/c$b;)Z

    move-result p1

    iput-boolean p1, p0, Lrh/c;->u:Z

    return-void
.end method

.method synthetic constructor <init>(Lrh/c$b;Lrh/c$a;)V
    .locals 0

    invoke-direct {p0, p1}, Lrh/c;-><init>(Lrh/c$b;)V

    return-void
.end method

.method static synthetic a(Lrh/c;)I
    .locals 0

    iget p0, p0, Lrh/c;->a:I

    return p0
.end method

.method static synthetic b(Lrh/c;)I
    .locals 0

    iget p0, p0, Lrh/c;->b:I

    return p0
.end method

.method static synthetic c(Lrh/c;)I
    .locals 0

    iget p0, p0, Lrh/c;->c:I

    return p0
.end method

.method static synthetic d(Lrh/c;)Landroid/graphics/drawable/Drawable;
    .locals 0

    iget-object p0, p0, Lrh/c;->d:Landroid/graphics/drawable/Drawable;

    return-object p0
.end method

.method static synthetic e(Lrh/c;)Landroid/graphics/drawable/Drawable;
    .locals 0

    iget-object p0, p0, Lrh/c;->e:Landroid/graphics/drawable/Drawable;

    return-object p0
.end method

.method static synthetic f(Lrh/c;)Landroid/graphics/drawable/Drawable;
    .locals 0

    iget-object p0, p0, Lrh/c;->f:Landroid/graphics/drawable/Drawable;

    return-object p0
.end method

.method static synthetic g(Lrh/c;)Z
    .locals 0

    iget-boolean p0, p0, Lrh/c;->g:Z

    return p0
.end method

.method static synthetic h(Lrh/c;)Z
    .locals 0

    iget-boolean p0, p0, Lrh/c;->h:Z

    return p0
.end method

.method static synthetic i(Lrh/c;)Z
    .locals 0

    iget-boolean p0, p0, Lrh/c;->i:Z

    return p0
.end method

.method static synthetic j(Lrh/c;)Lsh/d;
    .locals 0

    iget-object p0, p0, Lrh/c;->j:Lsh/d;

    return-object p0
.end method

.method static synthetic k(Lrh/c;)Landroid/graphics/BitmapFactory$Options;
    .locals 0

    iget-object p0, p0, Lrh/c;->k:Landroid/graphics/BitmapFactory$Options;

    return-object p0
.end method

.method static synthetic l(Lrh/c;)I
    .locals 0

    iget p0, p0, Lrh/c;->l:I

    return p0
.end method

.method static synthetic m(Lrh/c;)Z
    .locals 0

    iget-boolean p0, p0, Lrh/c;->m:Z

    return p0
.end method

.method static synthetic n(Lrh/c;)Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Lrh/c;->n:Ljava/lang/Object;

    return-object p0
.end method

.method static synthetic o(Lrh/c;)Lzh/a;
    .locals 0

    iget-object p0, p0, Lrh/c;->o:Lzh/a;

    return-object p0
.end method

.method static synthetic p(Lrh/c;)Lzh/a;
    .locals 0

    iget-object p0, p0, Lrh/c;->p:Lzh/a;

    return-object p0
.end method

.method static synthetic q(Lrh/c;)Lvh/a;
    .locals 0

    iget-object p0, p0, Lrh/c;->q:Lvh/a;

    return-object p0
.end method

.method static synthetic r(Lrh/c;)Landroid/os/Handler;
    .locals 0

    iget-object p0, p0, Lrh/c;->r:Landroid/os/Handler;

    return-object p0
.end method

.method static synthetic s(Lrh/c;)Z
    .locals 0

    iget-boolean p0, p0, Lrh/c;->s:Z

    return p0
.end method

.method static synthetic t(Lrh/c;)Z
    .locals 0

    iget-boolean p0, p0, Lrh/c;->t:Z

    return p0
.end method

.method public static u()Lrh/c;
    .locals 1

    new-instance v0, Lrh/c$b;

    invoke-direct {v0}, Lrh/c$b;-><init>()V

    invoke-virtual {v0}, Lrh/c$b;->w()Lrh/c;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public A(Landroid/content/res/Resources;)Landroid/graphics/drawable/Drawable;
    .locals 1

    iget v0, p0, Lrh/c;->b:I

    if-eqz v0, :cond_0

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lrh/c;->e:Landroid/graphics/drawable/Drawable;

    :goto_0
    return-object p1
.end method

.method public B(Landroid/content/res/Resources;)Landroid/graphics/drawable/Drawable;
    .locals 1

    iget v0, p0, Lrh/c;->c:I

    if-eqz v0, :cond_0

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lrh/c;->f:Landroid/graphics/drawable/Drawable;

    :goto_0
    return-object p1
.end method

.method public C(Landroid/content/res/Resources;)Landroid/graphics/drawable/Drawable;
    .locals 1

    iget v0, p0, Lrh/c;->a:I

    if-eqz v0, :cond_0

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lrh/c;->d:Landroid/graphics/drawable/Drawable;

    :goto_0
    return-object p1
.end method

.method public D()Lsh/d;
    .locals 1

    iget-object v0, p0, Lrh/c;->j:Lsh/d;

    return-object v0
.end method

.method public E()Lzh/a;
    .locals 1

    iget-object v0, p0, Lrh/c;->p:Lzh/a;

    return-object v0
.end method

.method public F()Lzh/a;
    .locals 1

    iget-object v0, p0, Lrh/c;->o:Lzh/a;

    return-object v0
.end method

.method public G()Z
    .locals 1

    iget-boolean v0, p0, Lrh/c;->h:Z

    return v0
.end method

.method public H()Z
    .locals 1

    iget-boolean v0, p0, Lrh/c;->i:Z

    return v0
.end method

.method public I()Z
    .locals 1

    iget-boolean v0, p0, Lrh/c;->m:Z

    return v0
.end method

.method public J()Z
    .locals 1

    iget-boolean v0, p0, Lrh/c;->u:Z

    return v0
.end method

.method public K()Z
    .locals 1

    iget-boolean v0, p0, Lrh/c;->t:Z

    return v0
.end method

.method public L()Z
    .locals 1

    iget-boolean v0, p0, Lrh/c;->g:Z

    return v0
.end method

.method M()Z
    .locals 1

    iget-boolean v0, p0, Lrh/c;->s:Z

    return v0
.end method

.method public N()Z
    .locals 1

    iget v0, p0, Lrh/c;->l:I

    if-lez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public O()Z
    .locals 1

    iget-object v0, p0, Lrh/c;->p:Lzh/a;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public P()Z
    .locals 1

    iget-object v0, p0, Lrh/c;->o:Lzh/a;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public Q()Z
    .locals 1

    iget-object v0, p0, Lrh/c;->e:Landroid/graphics/drawable/Drawable;

    if-nez v0, :cond_1

    iget v0, p0, Lrh/c;->b:I

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method public R()Z
    .locals 1

    iget-object v0, p0, Lrh/c;->f:Landroid/graphics/drawable/Drawable;

    if-nez v0, :cond_1

    iget v0, p0, Lrh/c;->c:I

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method public S()Z
    .locals 1

    iget-object v0, p0, Lrh/c;->d:Landroid/graphics/drawable/Drawable;

    if-nez v0, :cond_1

    iget v0, p0, Lrh/c;->a:I

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method public v()Landroid/graphics/BitmapFactory$Options;
    .locals 1

    iget-object v0, p0, Lrh/c;->k:Landroid/graphics/BitmapFactory$Options;

    return-object v0
.end method

.method public w()I
    .locals 1

    iget v0, p0, Lrh/c;->l:I

    return v0
.end method

.method public x()Lvh/a;
    .locals 1

    iget-object v0, p0, Lrh/c;->q:Lvh/a;

    return-object v0
.end method

.method public y()Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lrh/c;->n:Ljava/lang/Object;

    return-object v0
.end method

.method public z()Landroid/os/Handler;
    .locals 1

    iget-object v0, p0, Lrh/c;->r:Landroid/os/Handler;

    return-object v0
.end method
