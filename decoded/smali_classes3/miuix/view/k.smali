.class public Lmiuix/view/k;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lmiuix/view/k$a;
    }
.end annotation


# instance fields
.field private final a:Landroid/content/Context;

.field private final b:Landroid/view/View;

.field private final c:Z

.field private final d:Lmiuix/view/k$a;

.field private e:Z

.field private f:Z

.field private g:Z

.field private h:Z

.field private i:Z

.field private j:[I

.field private k:[I

.field private l:I

.field private m:Z

.field private n:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/view/View;ZLmiuix/view/k$a;)V
    .locals 2
    .param p1    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroid/view/View;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p4    # Lmiuix/view/k$a;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lmiuix/view/k;->e:Z

    iput-boolean v0, p0, Lmiuix/view/k;->f:Z

    iput-boolean v0, p0, Lmiuix/view/k;->g:Z

    iput-boolean v0, p0, Lmiuix/view/k;->h:Z

    iput-boolean v0, p0, Lmiuix/view/k;->i:Z

    const/4 v1, 0x0

    iput-object v1, p0, Lmiuix/view/k;->j:[I

    iput-object v1, p0, Lmiuix/view/k;->k:[I

    iput v0, p0, Lmiuix/view/k;->l:I

    iput-object p1, p0, Lmiuix/view/k;->a:Landroid/content/Context;

    iput-object p2, p0, Lmiuix/view/k;->b:Landroid/view/View;

    iput-boolean p3, p0, Lmiuix/view/k;->c:Z

    iput-object p4, p0, Lmiuix/view/k;->d:Lmiuix/view/k$a;

    const/4 p1, 0x1

    iput-boolean p1, p0, Lmiuix/view/k;->m:Z

    if-eqz p3, :cond_0

    const/4 p1, 0x2

    :cond_0
    iput p1, p0, Lmiuix/view/k;->n:I

    return-void
.end method

.method private b(Z)V
    .locals 3

    iget-boolean v0, p0, Lmiuix/view/k;->e:Z

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-boolean v0, p0, Lmiuix/view/k;->g:Z

    if-nez v0, :cond_1

    return-void

    :cond_1
    iget-boolean v0, p0, Lmiuix/view/k;->i:Z

    if-eq v0, p1, :cond_5

    iput-boolean p1, p0, Lmiuix/view/k;->i:Z

    const/4 v0, 0x0

    if-eqz p1, :cond_4

    iget-object p1, p0, Lmiuix/view/k;->j:[I

    if-nez p1, :cond_2

    iget-object p1, p0, Lmiuix/view/k;->d:Lmiuix/view/k$a;

    invoke-interface {p1, p0}, Lmiuix/view/k$a;->onCreateBlurParams(Lmiuix/view/k;)V

    :cond_2
    iget-object p1, p0, Lmiuix/view/k;->d:Lmiuix/view/k$a;

    const/4 v1, 0x1

    invoke-interface {p1, v1}, Lmiuix/view/k$a;->onBlurApplyStateChanged(Z)V

    :try_start_0
    iget-object p1, p0, Lmiuix/view/k;->b:Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p1

    iget p1, p1, Landroid/util/DisplayMetrics;->density:F
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const/high16 p1, 0x40300000    # 2.75f

    :goto_0
    iget-boolean v1, p0, Lmiuix/view/k;->m:Z

    if-eqz v1, :cond_3

    iget-object v1, p0, Lmiuix/view/k;->b:Landroid/view/View;

    iget v2, p0, Lmiuix/view/k;->l:I

    int-to-float v2, v2

    mul-float/2addr v2, p1

    const/high16 p1, 0x3f000000    # 0.5f

    add-float/2addr v2, p1

    float-to-int p1, v2

    iget v2, p0, Lmiuix/view/k;->n:I

    invoke-static {v1, p1, v2}, Lbl/h;->g(Landroid/view/View;II)Z

    goto :goto_1

    :cond_3
    iget-object p1, p0, Lmiuix/view/k;->b:Landroid/view/View;

    iget v1, p0, Lmiuix/view/k;->n:I

    invoke-static {p1, v1}, Lbl/h;->j(Landroid/view/View;I)Z

    :goto_1
    iget-object p1, p0, Lmiuix/view/k;->j:[I

    array-length v1, p1

    if-ge v0, v1, :cond_5

    iget-object v1, p0, Lmiuix/view/k;->b:Landroid/view/View;

    aget p1, p1, v0

    iget-object v2, p0, Lmiuix/view/k;->k:[I

    aget v2, v2, v0

    invoke-static {v1, p1, v2}, Lbl/h;->a(Landroid/view/View;II)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_4
    iget-object p1, p0, Lmiuix/view/k;->b:Landroid/view/View;

    invoke-static {p1}, Lbl/h;->c(Landroid/view/View;)Z

    iget-object p1, p0, Lmiuix/view/k;->b:Landroid/view/View;

    invoke-static {p1}, Lbl/h;->b(Landroid/view/View;)Z

    iget-object p1, p0, Lmiuix/view/k;->d:Lmiuix/view/k$a;

    invoke-interface {p1, v0}, Lmiuix/view/k$a;->onBlurApplyStateChanged(Z)V

    :cond_5
    return-void
.end method

.method public static c(Landroid/content/Context;I[I)[I
    .locals 3
    .param p1    # I
        .annotation build Landroidx/annotation/ColorInt;
        .end annotation
    .end param

    array-length v0, p2

    new-array v1, v0, [I

    const/4 v2, 0x0

    invoke-static {p2, v2, v1, v2, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    if-nez p1, :cond_0

    const v0, 0x1010054

    invoke-static {p0, v0}, Lpl/d;->h(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object p0

    instance-of v0, p0, Landroid/graphics/drawable/ColorDrawable;

    if-eqz v0, :cond_0

    check-cast p0, Landroid/graphics/drawable/ColorDrawable;

    invoke-virtual {p0}, Landroid/graphics/drawable/ColorDrawable;->getColor()I

    move-result p1

    :cond_0
    if-eqz p1, :cond_1

    const p0, 0xffffff

    and-int/2addr p0, p1

    const/high16 p1, -0x1000000

    const/4 v0, 0x1

    aget p2, p2, v0

    and-int/2addr p1, p2

    or-int/2addr p0, p1

    aput p0, v1, v0

    :cond_1
    return-object v1
.end method

.method public static d(Landroid/content/Context;Landroid/graphics/drawable/Drawable;[I)[I
    .locals 1

    if-eqz p1, :cond_0

    instance-of v0, p1, Landroid/graphics/drawable/ColorDrawable;

    if-eqz v0, :cond_0

    check-cast p1, Landroid/graphics/drawable/ColorDrawable;

    invoke-virtual {p1}, Landroid/graphics/drawable/ColorDrawable;->getColor()I

    move-result p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    invoke-static {p0, p1, p2}, Lmiuix/view/k;->c(Landroid/content/Context;I[I)[I

    move-result-object p0

    return-object p0
.end method

.method private m(Z)V
    .locals 1

    iget-boolean v0, p0, Lmiuix/view/k;->g:Z

    if-eq v0, p1, :cond_1

    if-nez p1, :cond_0

    invoke-virtual {p0}, Lmiuix/view/k;->e()Z

    move-result v0

    iput-boolean v0, p0, Lmiuix/view/k;->h:Z

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lmiuix/view/k;->b(Z)V

    :cond_0
    iput-boolean p1, p0, Lmiuix/view/k;->g:Z

    iget-object v0, p0, Lmiuix/view/k;->d:Lmiuix/view/k$a;

    invoke-interface {v0, p1}, Lmiuix/view/k$a;->onBlurEnableStateChanged(Z)V

    if-eqz p1, :cond_1

    iget-boolean p1, p0, Lmiuix/view/k;->h:Z

    if-eqz p1, :cond_1

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lmiuix/view/k;->b(Z)V

    :cond_1
    return-void
.end method


# virtual methods
.method public a(Z)V
    .locals 0

    iput-boolean p1, p0, Lmiuix/view/k;->h:Z

    invoke-direct {p0, p1}, Lmiuix/view/k;->b(Z)V

    return-void
.end method

.method public e()Z
    .locals 1

    iget-boolean v0, p0, Lmiuix/view/k;->h:Z

    return v0
.end method

.method public f()Z
    .locals 1

    iget-boolean v0, p0, Lmiuix/view/k;->f:Z

    return v0
.end method

.method public g()Z
    .locals 1

    iget-boolean v0, p0, Lmiuix/view/k;->e:Z

    return v0
.end method

.method public h()V
    .locals 1

    invoke-virtual {p0}, Lmiuix/view/k;->j()V

    iget-object v0, p0, Lmiuix/view/k;->a:Landroid/content/Context;

    invoke-static {v0}, Lbl/h;->e(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    invoke-direct {p0, v0}, Lmiuix/view/k;->m(Z)V

    goto :goto_1

    :cond_0
    invoke-static {}, Lbl/h;->f()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lmiuix/view/k;->a:Landroid/content/Context;

    invoke-static {v0}, Lbl/h;->e(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lmiuix/view/k;->f()Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    :goto_1
    return-void
.end method

.method public i()V
    .locals 4

    iget-boolean v0, p0, Lmiuix/view/k;->i:Z

    if-eqz v0, :cond_3

    iget-object v0, p0, Lmiuix/view/k;->j:[I

    const/4 v1, 0x0

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lmiuix/view/k;->m:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lmiuix/view/k;->b:Landroid/view/View;

    invoke-static {v0}, Lbl/h;->c(Landroid/view/View;)Z

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lmiuix/view/k;->b:Landroid/view/View;

    invoke-static {v0, v1}, Lbl/h;->j(Landroid/view/View;I)Z

    :goto_0
    iget-object v0, p0, Lmiuix/view/k;->b:Landroid/view/View;

    invoke-static {v0}, Lbl/h;->b(Landroid/view/View;)Z

    iget-object v0, p0, Lmiuix/view/k;->d:Lmiuix/view/k$a;

    invoke-interface {v0, p0}, Lmiuix/view/k$a;->onCreateBlurParams(Lmiuix/view/k;)V

    :cond_1
    :try_start_0
    iget-object v0, p0, Lmiuix/view/k;->b:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    const/high16 v0, 0x40300000    # 2.75f

    :goto_1
    iget-object v2, p0, Lmiuix/view/k;->d:Lmiuix/view/k$a;

    const/4 v3, 0x1

    invoke-interface {v2, v3}, Lmiuix/view/k$a;->onBlurApplyStateChanged(Z)V

    iget-boolean v2, p0, Lmiuix/view/k;->m:Z

    if-eqz v2, :cond_2

    iget-object v2, p0, Lmiuix/view/k;->b:Landroid/view/View;

    iget v3, p0, Lmiuix/view/k;->l:I

    int-to-float v3, v3

    mul-float/2addr v3, v0

    const/high16 v0, 0x3f000000    # 0.5f

    add-float/2addr v3, v0

    float-to-int v0, v3

    iget-boolean v3, p0, Lmiuix/view/k;->c:Z

    invoke-static {v2, v0, v3}, Lbl/h;->h(Landroid/view/View;IZ)Z

    goto :goto_2

    :cond_2
    iget-object v0, p0, Lmiuix/view/k;->b:Landroid/view/View;

    iget v2, p0, Lmiuix/view/k;->n:I

    invoke-static {v0, v2}, Lbl/h;->j(Landroid/view/View;I)Z

    :goto_2
    iget-object v0, p0, Lmiuix/view/k;->j:[I

    array-length v2, v0

    if-ge v1, v2, :cond_3

    iget-object v2, p0, Lmiuix/view/k;->b:Landroid/view/View;

    aget v0, v0, v1

    iget-object v3, p0, Lmiuix/view/k;->k:[I

    aget v3, v3, v1

    invoke-static {v2, v0, v3}, Lbl/h;->a(Landroid/view/View;II)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_3
    return-void
.end method

.method public j()V
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Lmiuix/view/k;->j:[I

    iput-object v0, p0, Lmiuix/view/k;->k:[I

    const/4 v0, 0x0

    iput v0, p0, Lmiuix/view/k;->l:I

    return-void
.end method

.method public k([I[II)V
    .locals 0
    .param p1    # [I
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # [I
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    iput-object p1, p0, Lmiuix/view/k;->j:[I

    iput-object p2, p0, Lmiuix/view/k;->k:[I

    iput p3, p0, Lmiuix/view/k;->l:I

    return-void
.end method

.method public l(Z)V
    .locals 1

    iget-boolean v0, p0, Lmiuix/view/k;->e:Z

    if-nez v0, :cond_0

    return-void

    :cond_0
    iput-boolean p1, p0, Lmiuix/view/k;->f:Z

    iget-object p1, p0, Lmiuix/view/k;->a:Landroid/content/Context;

    invoke-static {p1}, Lbl/h;->e(Landroid/content/Context;)Z

    move-result p1

    if-eqz p1, :cond_1

    iget-boolean p1, p0, Lmiuix/view/k;->f:Z

    invoke-direct {p0, p1}, Lmiuix/view/k;->m(Z)V

    :cond_1
    return-void
.end method

.method public n(Z)V
    .locals 0

    iput-boolean p1, p0, Lmiuix/view/k;->e:Z

    return-void
.end method
