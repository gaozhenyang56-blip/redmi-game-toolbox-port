.class public Lrh/c$b;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lrh/c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "b"
.end annotation


# instance fields
.field private a:I

.field private b:I

.field private c:I

.field private d:Landroid/graphics/drawable/Drawable;

.field private e:Landroid/graphics/drawable/Drawable;

.field private f:Landroid/graphics/drawable/Drawable;

.field private g:Z

.field private h:Z

.field private i:Z

.field private j:Lsh/d;

.field private k:Landroid/graphics/BitmapFactory$Options;

.field private l:I

.field private m:Z

.field private n:Ljava/lang/Object;

.field private o:Lzh/a;

.field private p:Lzh/a;

.field private q:Lvh/a;

.field private r:Landroid/os/Handler;

.field private s:Z

.field private t:Z

.field private u:Z


# direct methods
.method public constructor <init>()V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lrh/c$b;->a:I

    iput v0, p0, Lrh/c$b;->b:I

    iput v0, p0, Lrh/c$b;->c:I

    const/4 v1, 0x0

    iput-object v1, p0, Lrh/c$b;->d:Landroid/graphics/drawable/Drawable;

    iput-object v1, p0, Lrh/c$b;->e:Landroid/graphics/drawable/Drawable;

    iput-object v1, p0, Lrh/c$b;->f:Landroid/graphics/drawable/Drawable;

    iput-boolean v0, p0, Lrh/c$b;->g:Z

    iput-boolean v0, p0, Lrh/c$b;->h:Z

    iput-boolean v0, p0, Lrh/c$b;->i:Z

    sget-object v2, Lsh/d;->c:Lsh/d;

    iput-object v2, p0, Lrh/c$b;->j:Lsh/d;

    new-instance v2, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v2}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    iput-object v2, p0, Lrh/c$b;->k:Landroid/graphics/BitmapFactory$Options;

    iput v0, p0, Lrh/c$b;->l:I

    iput-boolean v0, p0, Lrh/c$b;->m:Z

    iput-object v1, p0, Lrh/c$b;->n:Ljava/lang/Object;

    iput-object v1, p0, Lrh/c$b;->o:Lzh/a;

    iput-object v1, p0, Lrh/c$b;->p:Lzh/a;

    invoke-static {}, Lrh/a;->a()Lvh/a;

    move-result-object v2

    iput-object v2, p0, Lrh/c$b;->q:Lvh/a;

    iput-object v1, p0, Lrh/c$b;->r:Landroid/os/Handler;

    iput-boolean v0, p0, Lrh/c$b;->s:Z

    return-void
.end method

.method static synthetic a(Lrh/c$b;)I
    .locals 0

    iget p0, p0, Lrh/c$b;->a:I

    return p0
.end method

.method static synthetic b(Lrh/c$b;)I
    .locals 0

    iget p0, p0, Lrh/c$b;->b:I

    return p0
.end method

.method static synthetic c(Lrh/c$b;)Landroid/graphics/BitmapFactory$Options;
    .locals 0

    iget-object p0, p0, Lrh/c$b;->k:Landroid/graphics/BitmapFactory$Options;

    return-object p0
.end method

.method static synthetic d(Lrh/c$b;)I
    .locals 0

    iget p0, p0, Lrh/c$b;->l:I

    return p0
.end method

.method static synthetic e(Lrh/c$b;)Z
    .locals 0

    iget-boolean p0, p0, Lrh/c$b;->m:Z

    return p0
.end method

.method static synthetic f(Lrh/c$b;)Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Lrh/c$b;->n:Ljava/lang/Object;

    return-object p0
.end method

.method static synthetic g(Lrh/c$b;)Lzh/a;
    .locals 0

    iget-object p0, p0, Lrh/c$b;->o:Lzh/a;

    return-object p0
.end method

.method static synthetic h(Lrh/c$b;)Lzh/a;
    .locals 0

    iget-object p0, p0, Lrh/c$b;->p:Lzh/a;

    return-object p0
.end method

.method static synthetic i(Lrh/c$b;)Lvh/a;
    .locals 0

    iget-object p0, p0, Lrh/c$b;->q:Lvh/a;

    return-object p0
.end method

.method static synthetic j(Lrh/c$b;)Landroid/os/Handler;
    .locals 0

    iget-object p0, p0, Lrh/c$b;->r:Landroid/os/Handler;

    return-object p0
.end method

.method static synthetic k(Lrh/c$b;)Z
    .locals 0

    iget-boolean p0, p0, Lrh/c$b;->s:Z

    return p0
.end method

.method static synthetic l(Lrh/c$b;)Z
    .locals 0

    iget-boolean p0, p0, Lrh/c$b;->t:Z

    return p0
.end method

.method static synthetic m(Lrh/c$b;)I
    .locals 0

    iget p0, p0, Lrh/c$b;->c:I

    return p0
.end method

.method static synthetic n(Lrh/c$b;)Z
    .locals 0

    iget-boolean p0, p0, Lrh/c$b;->u:Z

    return p0
.end method

.method static synthetic o(Lrh/c$b;)Landroid/graphics/drawable/Drawable;
    .locals 0

    iget-object p0, p0, Lrh/c$b;->d:Landroid/graphics/drawable/Drawable;

    return-object p0
.end method

.method static synthetic p(Lrh/c$b;)Landroid/graphics/drawable/Drawable;
    .locals 0

    iget-object p0, p0, Lrh/c$b;->e:Landroid/graphics/drawable/Drawable;

    return-object p0
.end method

.method static synthetic q(Lrh/c$b;)Landroid/graphics/drawable/Drawable;
    .locals 0

    iget-object p0, p0, Lrh/c$b;->f:Landroid/graphics/drawable/Drawable;

    return-object p0
.end method

.method static synthetic r(Lrh/c$b;)Z
    .locals 0

    iget-boolean p0, p0, Lrh/c$b;->g:Z

    return p0
.end method

.method static synthetic s(Lrh/c$b;)Z
    .locals 0

    iget-boolean p0, p0, Lrh/c$b;->h:Z

    return p0
.end method

.method static synthetic t(Lrh/c$b;)Z
    .locals 0

    iget-boolean p0, p0, Lrh/c$b;->i:Z

    return p0
.end method

.method static synthetic u(Lrh/c$b;)Lsh/d;
    .locals 0

    iget-object p0, p0, Lrh/c$b;->j:Lsh/d;

    return-object p0
.end method


# virtual methods
.method public A(Z)Lrh/c$b;
    .locals 0

    iput-boolean p1, p0, Lrh/c$b;->m:Z

    return-object p0
.end method

.method public B(Lvh/a;)Lrh/c$b;
    .locals 1

    if-eqz p1, :cond_0

    iput-object p1, p0, Lrh/c$b;->q:Lvh/a;

    return-object p0

    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "displayer can\'t be null"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public C(Lsh/d;)Lrh/c$b;
    .locals 0

    iput-object p1, p0, Lrh/c$b;->j:Lsh/d;

    return-object p0
.end method

.method public D(Lzh/a;)Lrh/c$b;
    .locals 0

    iput-object p1, p0, Lrh/c$b;->o:Lzh/a;

    return-object p0
.end method

.method public E(Z)Lrh/c$b;
    .locals 0

    iput-boolean p1, p0, Lrh/c$b;->u:Z

    return-object p0
.end method

.method public F(Z)Lrh/c$b;
    .locals 0

    iput-boolean p1, p0, Lrh/c$b;->t:Z

    return-object p0
.end method

.method public G(I)Lrh/c$b;
    .locals 0

    iput p1, p0, Lrh/c$b;->b:I

    return-object p0
.end method

.method public H(I)Lrh/c$b;
    .locals 0

    iput p1, p0, Lrh/c$b;->c:I

    return-object p0
.end method

.method public I(I)Lrh/c$b;
    .locals 0

    iput p1, p0, Lrh/c$b;->a:I

    return-object p0
.end method

.method J(Z)Lrh/c$b;
    .locals 0

    iput-boolean p1, p0, Lrh/c$b;->s:Z

    return-object p0
.end method

.method public v(Landroid/graphics/Bitmap$Config;)Lrh/c$b;
    .locals 1

    if-eqz p1, :cond_0

    iget-object v0, p0, Lrh/c$b;->k:Landroid/graphics/BitmapFactory$Options;

    iput-object p1, v0, Landroid/graphics/BitmapFactory$Options;->inPreferredConfig:Landroid/graphics/Bitmap$Config;

    return-object p0

    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "bitmapConfig can\'t be null"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public w()Lrh/c;
    .locals 2

    new-instance v0, Lrh/c;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lrh/c;-><init>(Lrh/c$b;Lrh/c$a;)V

    return-object v0
.end method

.method public x(Z)Lrh/c$b;
    .locals 0

    iput-boolean p1, p0, Lrh/c$b;->h:Z

    return-object p0
.end method

.method public y(Z)Lrh/c$b;
    .locals 0

    iput-boolean p1, p0, Lrh/c$b;->i:Z

    return-object p0
.end method

.method public z(Lrh/c;)Lrh/c$b;
    .locals 1

    invoke-static {p1}, Lrh/c;->a(Lrh/c;)I

    move-result v0

    iput v0, p0, Lrh/c$b;->a:I

    invoke-static {p1}, Lrh/c;->b(Lrh/c;)I

    move-result v0

    iput v0, p0, Lrh/c$b;->b:I

    invoke-static {p1}, Lrh/c;->c(Lrh/c;)I

    move-result v0

    iput v0, p0, Lrh/c$b;->c:I

    invoke-static {p1}, Lrh/c;->d(Lrh/c;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lrh/c$b;->d:Landroid/graphics/drawable/Drawable;

    invoke-static {p1}, Lrh/c;->e(Lrh/c;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lrh/c$b;->e:Landroid/graphics/drawable/Drawable;

    invoke-static {p1}, Lrh/c;->f(Lrh/c;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lrh/c$b;->f:Landroid/graphics/drawable/Drawable;

    invoke-static {p1}, Lrh/c;->g(Lrh/c;)Z

    move-result v0

    iput-boolean v0, p0, Lrh/c$b;->g:Z

    invoke-static {p1}, Lrh/c;->h(Lrh/c;)Z

    move-result v0

    iput-boolean v0, p0, Lrh/c$b;->h:Z

    invoke-static {p1}, Lrh/c;->i(Lrh/c;)Z

    move-result v0

    iput-boolean v0, p0, Lrh/c$b;->i:Z

    invoke-static {p1}, Lrh/c;->j(Lrh/c;)Lsh/d;

    move-result-object v0

    iput-object v0, p0, Lrh/c$b;->j:Lsh/d;

    invoke-static {p1}, Lrh/c;->k(Lrh/c;)Landroid/graphics/BitmapFactory$Options;

    move-result-object v0

    iput-object v0, p0, Lrh/c$b;->k:Landroid/graphics/BitmapFactory$Options;

    invoke-static {p1}, Lrh/c;->l(Lrh/c;)I

    move-result v0

    iput v0, p0, Lrh/c$b;->l:I

    invoke-static {p1}, Lrh/c;->m(Lrh/c;)Z

    move-result v0

    iput-boolean v0, p0, Lrh/c$b;->m:Z

    invoke-static {p1}, Lrh/c;->n(Lrh/c;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lrh/c$b;->n:Ljava/lang/Object;

    invoke-static {p1}, Lrh/c;->o(Lrh/c;)Lzh/a;

    move-result-object v0

    iput-object v0, p0, Lrh/c$b;->o:Lzh/a;

    invoke-static {p1}, Lrh/c;->p(Lrh/c;)Lzh/a;

    move-result-object v0

    iput-object v0, p0, Lrh/c$b;->p:Lzh/a;

    invoke-static {p1}, Lrh/c;->q(Lrh/c;)Lvh/a;

    move-result-object v0

    iput-object v0, p0, Lrh/c$b;->q:Lvh/a;

    invoke-static {p1}, Lrh/c;->r(Lrh/c;)Landroid/os/Handler;

    move-result-object v0

    iput-object v0, p0, Lrh/c$b;->r:Landroid/os/Handler;

    invoke-static {p1}, Lrh/c;->s(Lrh/c;)Z

    move-result v0

    iput-boolean v0, p0, Lrh/c$b;->s:Z

    invoke-static {p1}, Lrh/c;->t(Lrh/c;)Z

    move-result p1

    iput-boolean p1, p0, Lrh/c$b;->t:Z

    return-object p0
.end method
