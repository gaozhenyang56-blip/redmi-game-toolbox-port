.class public Landroidx/core/view/WindowInsetsCompat;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/core/view/WindowInsetsCompat$k;,
        Landroidx/core/view/WindowInsetsCompat$l;,
        Landroidx/core/view/WindowInsetsCompat$j;,
        Landroidx/core/view/WindowInsetsCompat$i;,
        Landroidx/core/view/WindowInsetsCompat$h;,
        Landroidx/core/view/WindowInsetsCompat$g;,
        Landroidx/core/view/WindowInsetsCompat$Type;,
        Landroidx/core/view/WindowInsetsCompat$b;,
        Landroidx/core/view/WindowInsetsCompat$a;,
        Landroidx/core/view/WindowInsetsCompat$m;,
        Landroidx/core/view/WindowInsetsCompat$e;,
        Landroidx/core/view/WindowInsetsCompat$d;,
        Landroidx/core/view/WindowInsetsCompat$c;,
        Landroidx/core/view/WindowInsetsCompat$f;
    }
.end annotation


# static fields
.field public static final b:Landroidx/core/view/WindowInsetsCompat;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field


# instance fields
.field private final a:Landroidx/core/view/WindowInsetsCompat$l;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1e

    if-lt v0, v1, :cond_0

    sget-object v0, Landroidx/core/view/WindowInsetsCompat$k;->q:Landroidx/core/view/WindowInsetsCompat;

    goto :goto_0

    :cond_0
    sget-object v0, Landroidx/core/view/WindowInsetsCompat$l;->b:Landroidx/core/view/WindowInsetsCompat;

    :goto_0
    sput-object v0, Landroidx/core/view/WindowInsetsCompat;->b:Landroidx/core/view/WindowInsetsCompat;

    return-void
.end method

.method private constructor <init>(Landroid/view/WindowInsets;)V
    .locals 2
    .param p1    # Landroid/view/WindowInsets;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/RequiresApi;
        value = 0x14
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1e

    if-lt v0, v1, :cond_0

    new-instance v0, Landroidx/core/view/WindowInsetsCompat$k;

    invoke-direct {v0, p0, p1}, Landroidx/core/view/WindowInsetsCompat$k;-><init>(Landroidx/core/view/WindowInsetsCompat;Landroid/view/WindowInsets;)V

    :goto_0
    iput-object v0, p0, Landroidx/core/view/WindowInsetsCompat;->a:Landroidx/core/view/WindowInsetsCompat$l;

    goto :goto_1

    :cond_0
    const/16 v1, 0x1d

    if-lt v0, v1, :cond_1

    new-instance v0, Landroidx/core/view/WindowInsetsCompat$j;

    invoke-direct {v0, p0, p1}, Landroidx/core/view/WindowInsetsCompat$j;-><init>(Landroidx/core/view/WindowInsetsCompat;Landroid/view/WindowInsets;)V

    goto :goto_0

    :cond_1
    const/16 v1, 0x1c

    if-lt v0, v1, :cond_2

    new-instance v0, Landroidx/core/view/WindowInsetsCompat$i;

    invoke-direct {v0, p0, p1}, Landroidx/core/view/WindowInsetsCompat$i;-><init>(Landroidx/core/view/WindowInsetsCompat;Landroid/view/WindowInsets;)V

    goto :goto_0

    :cond_2
    new-instance v0, Landroidx/core/view/WindowInsetsCompat$h;

    invoke-direct {v0, p0, p1}, Landroidx/core/view/WindowInsetsCompat$h;-><init>(Landroidx/core/view/WindowInsetsCompat;Landroid/view/WindowInsets;)V

    goto :goto_0

    :goto_1
    return-void
.end method

.method public constructor <init>(Landroidx/core/view/WindowInsetsCompat;)V
    .locals 2
    .param p1    # Landroidx/core/view/WindowInsetsCompat;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-eqz p1, :cond_5

    iget-object p1, p1, Landroidx/core/view/WindowInsetsCompat;->a:Landroidx/core/view/WindowInsetsCompat$l;

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1e

    if-lt v0, v1, :cond_0

    instance-of v1, p1, Landroidx/core/view/WindowInsetsCompat$k;

    if-eqz v1, :cond_0

    new-instance v0, Landroidx/core/view/WindowInsetsCompat$k;

    move-object v1, p1

    check-cast v1, Landroidx/core/view/WindowInsetsCompat$k;

    invoke-direct {v0, p0, v1}, Landroidx/core/view/WindowInsetsCompat$k;-><init>(Landroidx/core/view/WindowInsetsCompat;Landroidx/core/view/WindowInsetsCompat$k;)V

    :goto_0
    iput-object v0, p0, Landroidx/core/view/WindowInsetsCompat;->a:Landroidx/core/view/WindowInsetsCompat$l;

    goto :goto_1

    :cond_0
    const/16 v1, 0x1d

    if-lt v0, v1, :cond_1

    instance-of v1, p1, Landroidx/core/view/WindowInsetsCompat$j;

    if-eqz v1, :cond_1

    new-instance v0, Landroidx/core/view/WindowInsetsCompat$j;

    move-object v1, p1

    check-cast v1, Landroidx/core/view/WindowInsetsCompat$j;

    invoke-direct {v0, p0, v1}, Landroidx/core/view/WindowInsetsCompat$j;-><init>(Landroidx/core/view/WindowInsetsCompat;Landroidx/core/view/WindowInsetsCompat$j;)V

    goto :goto_0

    :cond_1
    const/16 v1, 0x1c

    if-lt v0, v1, :cond_2

    instance-of v0, p1, Landroidx/core/view/WindowInsetsCompat$i;

    if-eqz v0, :cond_2

    new-instance v0, Landroidx/core/view/WindowInsetsCompat$i;

    move-object v1, p1

    check-cast v1, Landroidx/core/view/WindowInsetsCompat$i;

    invoke-direct {v0, p0, v1}, Landroidx/core/view/WindowInsetsCompat$i;-><init>(Landroidx/core/view/WindowInsetsCompat;Landroidx/core/view/WindowInsetsCompat$i;)V

    goto :goto_0

    :cond_2
    instance-of v0, p1, Landroidx/core/view/WindowInsetsCompat$h;

    if-eqz v0, :cond_3

    new-instance v0, Landroidx/core/view/WindowInsetsCompat$h;

    move-object v1, p1

    check-cast v1, Landroidx/core/view/WindowInsetsCompat$h;

    invoke-direct {v0, p0, v1}, Landroidx/core/view/WindowInsetsCompat$h;-><init>(Landroidx/core/view/WindowInsetsCompat;Landroidx/core/view/WindowInsetsCompat$h;)V

    goto :goto_0

    :cond_3
    instance-of v0, p1, Landroidx/core/view/WindowInsetsCompat$g;

    if-eqz v0, :cond_4

    new-instance v0, Landroidx/core/view/WindowInsetsCompat$g;

    move-object v1, p1

    check-cast v1, Landroidx/core/view/WindowInsetsCompat$g;

    invoke-direct {v0, p0, v1}, Landroidx/core/view/WindowInsetsCompat$g;-><init>(Landroidx/core/view/WindowInsetsCompat;Landroidx/core/view/WindowInsetsCompat$g;)V

    goto :goto_0

    :cond_4
    new-instance v0, Landroidx/core/view/WindowInsetsCompat$l;

    invoke-direct {v0, p0}, Landroidx/core/view/WindowInsetsCompat$l;-><init>(Landroidx/core/view/WindowInsetsCompat;)V

    goto :goto_0

    :goto_1
    invoke-virtual {p1, p0}, Landroidx/core/view/WindowInsetsCompat$l;->e(Landroidx/core/view/WindowInsetsCompat;)V

    goto :goto_2

    :cond_5
    new-instance p1, Landroidx/core/view/WindowInsetsCompat$l;

    invoke-direct {p1, p0}, Landroidx/core/view/WindowInsetsCompat$l;-><init>(Landroidx/core/view/WindowInsetsCompat;)V

    iput-object p1, p0, Landroidx/core/view/WindowInsetsCompat;->a:Landroidx/core/view/WindowInsetsCompat$l;

    :goto_2
    return-void
.end method

.method static p(Landroidx/core/graphics/e;IIII)Landroidx/core/graphics/e;
    .locals 5
    .param p0    # Landroidx/core/graphics/e;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    iget v0, p0, Landroidx/core/graphics/e;->a:I

    sub-int/2addr v0, p1

    const/4 v1, 0x0

    invoke-static {v1, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    iget v2, p0, Landroidx/core/graphics/e;->b:I

    sub-int/2addr v2, p2

    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    move-result v2

    iget v3, p0, Landroidx/core/graphics/e;->c:I

    sub-int/2addr v3, p3

    invoke-static {v1, v3}, Ljava/lang/Math;->max(II)I

    move-result v3

    iget v4, p0, Landroidx/core/graphics/e;->d:I

    sub-int/2addr v4, p4

    invoke-static {v1, v4}, Ljava/lang/Math;->max(II)I

    move-result v1

    if-ne v0, p1, :cond_0

    if-ne v2, p2, :cond_0

    if-ne v3, p3, :cond_0

    if-ne v1, p4, :cond_0

    return-object p0

    :cond_0
    invoke-static {v0, v2, v3, v1}, Landroidx/core/graphics/e;->b(IIII)Landroidx/core/graphics/e;

    move-result-object p0

    return-object p0
.end method

.method public static x(Landroid/view/WindowInsets;)Landroidx/core/view/WindowInsetsCompat;
    .locals 1
    .param p0    # Landroid/view/WindowInsets;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation build Landroidx/annotation/RequiresApi;
        value = 0x14
    .end annotation

    const/4 v0, 0x0

    invoke-static {p0, v0}, Landroidx/core/view/WindowInsetsCompat;->y(Landroid/view/WindowInsets;Landroid/view/View;)Landroidx/core/view/WindowInsetsCompat;

    move-result-object p0

    return-object p0
.end method

.method public static y(Landroid/view/WindowInsets;Landroid/view/View;)Landroidx/core/view/WindowInsetsCompat;
    .locals 1
    .param p0    # Landroid/view/WindowInsets;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p1    # Landroid/view/View;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation build Landroidx/annotation/RequiresApi;
        value = 0x14
    .end annotation

    new-instance v0, Landroidx/core/view/WindowInsetsCompat;

    invoke-static {p0}, Lb0/h;->g(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/view/WindowInsets;

    invoke-direct {v0, p0}, Landroidx/core/view/WindowInsetsCompat;-><init>(Landroid/view/WindowInsets;)V

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/view/View;->isAttachedToWindow()Z

    move-result p0

    if-eqz p0, :cond_0

    invoke-static {p1}, Landroidx/core/view/ViewCompat;->H(Landroid/view/View;)Landroidx/core/view/WindowInsetsCompat;

    move-result-object p0

    invoke-virtual {v0, p0}, Landroidx/core/view/WindowInsetsCompat;->u(Landroidx/core/view/WindowInsetsCompat;)V

    invoke-virtual {p1}, Landroid/view/View;->getRootView()Landroid/view/View;

    move-result-object p0

    invoke-virtual {v0, p0}, Landroidx/core/view/WindowInsetsCompat;->d(Landroid/view/View;)V

    :cond_0
    return-object v0
.end method


# virtual methods
.method public a()Landroidx/core/view/WindowInsetsCompat;
    .locals 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    iget-object v0, p0, Landroidx/core/view/WindowInsetsCompat;->a:Landroidx/core/view/WindowInsetsCompat$l;

    invoke-virtual {v0}, Landroidx/core/view/WindowInsetsCompat$l;->a()Landroidx/core/view/WindowInsetsCompat;

    move-result-object v0

    return-object v0
.end method

.method public b()Landroidx/core/view/WindowInsetsCompat;
    .locals 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    iget-object v0, p0, Landroidx/core/view/WindowInsetsCompat;->a:Landroidx/core/view/WindowInsetsCompat$l;

    invoke-virtual {v0}, Landroidx/core/view/WindowInsetsCompat$l;->b()Landroidx/core/view/WindowInsetsCompat;

    move-result-object v0

    return-object v0
.end method

.method public c()Landroidx/core/view/WindowInsetsCompat;
    .locals 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    iget-object v0, p0, Landroidx/core/view/WindowInsetsCompat;->a:Landroidx/core/view/WindowInsetsCompat$l;

    invoke-virtual {v0}, Landroidx/core/view/WindowInsetsCompat$l;->c()Landroidx/core/view/WindowInsetsCompat;

    move-result-object v0

    return-object v0
.end method

.method d(Landroid/view/View;)V
    .locals 1
    .param p1    # Landroid/view/View;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    iget-object v0, p0, Landroidx/core/view/WindowInsetsCompat;->a:Landroidx/core/view/WindowInsetsCompat$l;

    invoke-virtual {v0, p1}, Landroidx/core/view/WindowInsetsCompat$l;->d(Landroid/view/View;)V

    return-void
.end method

.method public e()Landroidx/core/view/g;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    iget-object v0, p0, Landroidx/core/view/WindowInsetsCompat;->a:Landroidx/core/view/WindowInsetsCompat$l;

    invoke-virtual {v0}, Landroidx/core/view/WindowInsetsCompat$l;->f()Landroidx/core/view/g;

    move-result-object v0

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 1

    if-ne p0, p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    instance-of v0, p1, Landroidx/core/view/WindowInsetsCompat;

    if-nez v0, :cond_1

    const/4 p1, 0x0

    return p1

    :cond_1
    check-cast p1, Landroidx/core/view/WindowInsetsCompat;

    iget-object v0, p0, Landroidx/core/view/WindowInsetsCompat;->a:Landroidx/core/view/WindowInsetsCompat$l;

    iget-object p1, p1, Landroidx/core/view/WindowInsetsCompat;->a:Landroidx/core/view/WindowInsetsCompat$l;

    invoke-static {v0, p1}, Lb0/c;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public f(I)Landroidx/core/graphics/e;
    .locals 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    iget-object v0, p0, Landroidx/core/view/WindowInsetsCompat;->a:Landroidx/core/view/WindowInsetsCompat$l;

    invoke-virtual {v0, p1}, Landroidx/core/view/WindowInsetsCompat$l;->g(I)Landroidx/core/graphics/e;

    move-result-object p1

    return-object p1
.end method

.method public g(I)Landroidx/core/graphics/e;
    .locals 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    iget-object v0, p0, Landroidx/core/view/WindowInsetsCompat;->a:Landroidx/core/view/WindowInsetsCompat$l;

    invoke-virtual {v0, p1}, Landroidx/core/view/WindowInsetsCompat$l;->h(I)Landroidx/core/graphics/e;

    move-result-object p1

    return-object p1
.end method

.method public h()Landroidx/core/graphics/e;
    .locals 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    iget-object v0, p0, Landroidx/core/view/WindowInsetsCompat;->a:Landroidx/core/view/WindowInsetsCompat$l;

    invoke-virtual {v0}, Landroidx/core/view/WindowInsetsCompat$l;->j()Landroidx/core/graphics/e;

    move-result-object v0

    return-object v0
.end method

.method public hashCode()I
    .locals 1

    iget-object v0, p0, Landroidx/core/view/WindowInsetsCompat;->a:Landroidx/core/view/WindowInsetsCompat$l;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Landroidx/core/view/WindowInsetsCompat$l;->hashCode()I

    move-result v0

    :goto_0
    return v0
.end method

.method public i()Landroidx/core/graphics/e;
    .locals 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    iget-object v0, p0, Landroidx/core/view/WindowInsetsCompat;->a:Landroidx/core/view/WindowInsetsCompat$l;

    invoke-virtual {v0}, Landroidx/core/view/WindowInsetsCompat$l;->k()Landroidx/core/graphics/e;

    move-result-object v0

    return-object v0
.end method

.method public j()I
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    iget-object v0, p0, Landroidx/core/view/WindowInsetsCompat;->a:Landroidx/core/view/WindowInsetsCompat$l;

    invoke-virtual {v0}, Landroidx/core/view/WindowInsetsCompat$l;->l()Landroidx/core/graphics/e;

    move-result-object v0

    iget v0, v0, Landroidx/core/graphics/e;->d:I

    return v0
.end method

.method public k()I
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    iget-object v0, p0, Landroidx/core/view/WindowInsetsCompat;->a:Landroidx/core/view/WindowInsetsCompat$l;

    invoke-virtual {v0}, Landroidx/core/view/WindowInsetsCompat$l;->l()Landroidx/core/graphics/e;

    move-result-object v0

    iget v0, v0, Landroidx/core/graphics/e;->a:I

    return v0
.end method

.method public l()I
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    iget-object v0, p0, Landroidx/core/view/WindowInsetsCompat;->a:Landroidx/core/view/WindowInsetsCompat$l;

    invoke-virtual {v0}, Landroidx/core/view/WindowInsetsCompat$l;->l()Landroidx/core/graphics/e;

    move-result-object v0

    iget v0, v0, Landroidx/core/graphics/e;->c:I

    return v0
.end method

.method public m()I
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    iget-object v0, p0, Landroidx/core/view/WindowInsetsCompat;->a:Landroidx/core/view/WindowInsetsCompat$l;

    invoke-virtual {v0}, Landroidx/core/view/WindowInsetsCompat$l;->l()Landroidx/core/graphics/e;

    move-result-object v0

    iget v0, v0, Landroidx/core/graphics/e;->b:I

    return v0
.end method

.method public n()Z
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    iget-object v0, p0, Landroidx/core/view/WindowInsetsCompat;->a:Landroidx/core/view/WindowInsetsCompat$l;

    invoke-virtual {v0}, Landroidx/core/view/WindowInsetsCompat$l;->l()Landroidx/core/graphics/e;

    move-result-object v0

    sget-object v1, Landroidx/core/graphics/e;->e:Landroidx/core/graphics/e;

    invoke-virtual {v0, v1}, Landroidx/core/graphics/e;->equals(Ljava/lang/Object;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public o(IIII)Landroidx/core/view/WindowInsetsCompat;
    .locals 1
    .param p1    # I
        .annotation build Landroidx/annotation/IntRange;
            from = 0x0L
        .end annotation
    .end param
    .param p2    # I
        .annotation build Landroidx/annotation/IntRange;
            from = 0x0L
        .end annotation
    .end param
    .param p3    # I
        .annotation build Landroidx/annotation/IntRange;
            from = 0x0L
        .end annotation
    .end param
    .param p4    # I
        .annotation build Landroidx/annotation/IntRange;
            from = 0x0L
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    iget-object v0, p0, Landroidx/core/view/WindowInsetsCompat;->a:Landroidx/core/view/WindowInsetsCompat$l;

    invoke-virtual {v0, p1, p2, p3, p4}, Landroidx/core/view/WindowInsetsCompat$l;->n(IIII)Landroidx/core/view/WindowInsetsCompat;

    move-result-object p1

    return-object p1
.end method

.method public q()Z
    .locals 1

    iget-object v0, p0, Landroidx/core/view/WindowInsetsCompat;->a:Landroidx/core/view/WindowInsetsCompat$l;

    invoke-virtual {v0}, Landroidx/core/view/WindowInsetsCompat$l;->o()Z

    move-result v0

    return v0
.end method

.method public r(IIII)Landroidx/core/view/WindowInsetsCompat;
    .locals 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    new-instance v0, Landroidx/core/view/WindowInsetsCompat$b;

    invoke-direct {v0, p0}, Landroidx/core/view/WindowInsetsCompat$b;-><init>(Landroidx/core/view/WindowInsetsCompat;)V

    invoke-static {p1, p2, p3, p4}, Landroidx/core/graphics/e;->b(IIII)Landroidx/core/graphics/e;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroidx/core/view/WindowInsetsCompat$b;->c(Landroidx/core/graphics/e;)Landroidx/core/view/WindowInsetsCompat$b;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/core/view/WindowInsetsCompat$b;->a()Landroidx/core/view/WindowInsetsCompat;

    move-result-object p1

    return-object p1
.end method

.method s([Landroidx/core/graphics/e;)V
    .locals 1

    iget-object v0, p0, Landroidx/core/view/WindowInsetsCompat;->a:Landroidx/core/view/WindowInsetsCompat$l;

    invoke-virtual {v0, p1}, Landroidx/core/view/WindowInsetsCompat$l;->q([Landroidx/core/graphics/e;)V

    return-void
.end method

.method t(Landroidx/core/graphics/e;)V
    .locals 1
    .param p1    # Landroidx/core/graphics/e;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    iget-object v0, p0, Landroidx/core/view/WindowInsetsCompat;->a:Landroidx/core/view/WindowInsetsCompat$l;

    invoke-virtual {v0, p1}, Landroidx/core/view/WindowInsetsCompat$l;->r(Landroidx/core/graphics/e;)V

    return-void
.end method

.method u(Landroidx/core/view/WindowInsetsCompat;)V
    .locals 1
    .param p1    # Landroidx/core/view/WindowInsetsCompat;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    iget-object v0, p0, Landroidx/core/view/WindowInsetsCompat;->a:Landroidx/core/view/WindowInsetsCompat$l;

    invoke-virtual {v0, p1}, Landroidx/core/view/WindowInsetsCompat$l;->s(Landroidx/core/view/WindowInsetsCompat;)V

    return-void
.end method

.method v(Landroidx/core/graphics/e;)V
    .locals 1
    .param p1    # Landroidx/core/graphics/e;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    iget-object v0, p0, Landroidx/core/view/WindowInsetsCompat;->a:Landroidx/core/view/WindowInsetsCompat$l;

    invoke-virtual {v0, p1}, Landroidx/core/view/WindowInsetsCompat$l;->t(Landroidx/core/graphics/e;)V

    return-void
.end method

.method public w()Landroid/view/WindowInsets;
    .locals 2
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .annotation build Landroidx/annotation/RequiresApi;
        value = 0x14
    .end annotation

    iget-object v0, p0, Landroidx/core/view/WindowInsetsCompat;->a:Landroidx/core/view/WindowInsetsCompat$l;

    instance-of v1, v0, Landroidx/core/view/WindowInsetsCompat$g;

    if-eqz v1, :cond_0

    check-cast v0, Landroidx/core/view/WindowInsetsCompat$g;

    iget-object v0, v0, Landroidx/core/view/WindowInsetsCompat$g;->c:Landroid/view/WindowInsets;

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method
