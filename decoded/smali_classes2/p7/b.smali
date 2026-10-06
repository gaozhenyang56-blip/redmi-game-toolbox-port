.class public Lp7/b;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static i:Lp7/b;


# instance fields
.field private final a:Lcom/miui/securitycenter/Application;

.field private b:[Ljava/lang/String;

.field private c:[I
    .annotation build Landroidx/annotation/DrawableRes;
    .end annotation
.end field

.field private d:Landroid/view/WindowManager;

.field private e:Landroid/view/WindowManager$LayoutParams;

.field private f:Landroid/widget/ImageView;

.field private g:Landroid/widget/ImageView;

.field private h:Z


# direct methods
.method private constructor <init>()V
    .locals 6

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "#FF6C69"

    const-string v1, "#FF975C"

    const-string v2, "#FEE074"

    const-string v3, "#75E9B1"

    const-string v4, "#74DBFE"

    const-string v5, "#5BA6FE"

    filled-new-array/range {v0 .. v5}, [Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lp7/b;->b:[Ljava/lang/String;

    const/4 v0, 0x6

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    iput-object v0, p0, Lp7/b;->c:[I

    invoke-static {}, Lcom/miui/securitycenter/Application;->A()Lcom/miui/securitycenter/Application;

    move-result-object v0

    iput-object v0, p0, Lp7/b;->a:Lcom/miui/securitycenter/Application;

    invoke-static {}, Lcom/miui/securitycenter/Application;->A()Lcom/miui/securitycenter/Application;

    move-result-object v0

    const-string v1, "window"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    iput-object v0, p0, Lp7/b;->d:Landroid/view/WindowManager;

    new-instance v0, Landroid/view/WindowManager$LayoutParams;

    invoke-direct {v0}, Landroid/view/WindowManager$LayoutParams;-><init>()V

    iput-object v0, p0, Lp7/b;->e:Landroid/view/WindowManager$LayoutParams;

    invoke-static {v0}, Ls8/y;->a(Landroid/view/WindowManager$LayoutParams;)V

    return-void

    :array_0
    .array-data 4
        0x7f0808d4
        0x7f0808d3
        0x7f0808d5
        0x7f0808d1
        0x7f0808d2
        0x7f0808d0
    .end array-data
.end method

.method private a(ILjava/lang/String;)V
    .locals 11

    invoke-static {}, Lp7/d;->b()Lp7/d;

    move-result-object v0

    invoke-virtual {v0}, Lp7/d;->h()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1a

    if-lt v0, v1, :cond_1

    iget-object v1, p0, Lp7/b;->e:Landroid/view/WindowManager$LayoutParams;

    const/16 v2, 0x7f6

    goto :goto_0

    :cond_1
    iget-object v1, p0, Lp7/b;->e:Landroid/view/WindowManager$LayoutParams;

    const/16 v2, 0x7d2

    :goto_0
    iput v2, v1, Landroid/view/WindowManager$LayoutParams;->type:I

    iget-object v1, p0, Lp7/b;->e:Landroid/view/WindowManager$LayoutParams;

    const/4 v2, -0x3

    iput v2, v1, Landroid/view/WindowManager$LayoutParams;->format:I

    const v2, 0x50338

    iput v2, v1, Landroid/view/WindowManager$LayoutParams;->flags:I

    const/16 v2, 0x1c

    const/4 v3, 0x1

    if-lt v0, v2, :cond_2

    iput v3, v1, Landroid/view/WindowManager$LayoutParams;->layoutInDisplayCutoutMode:I

    :cond_2
    const/16 v2, 0x1f

    if-lt v0, v2, :cond_3

    iget-object v0, p0, Lp7/b;->a:Lcom/miui/securitycenter/Application;

    invoke-static {v0}, La8/k2;->g(Landroid/content/Context;)F

    move-result v0

    iput v0, v1, Landroid/view/WindowManager$LayoutParams;->alpha:F

    :cond_3
    iget-object v0, p0, Lp7/b;->a:Lcom/miui/securitycenter/Application;

    invoke-static {v0}, La8/k2;->f(Landroid/content/Context;)I

    move-result v0

    const/16 v1, 0x5a

    const/4 v2, 0x0

    if-eq v0, v1, :cond_5

    const/16 v1, 0x10e

    if-ne v0, v1, :cond_4

    goto :goto_1

    :cond_4
    move v1, v2

    goto :goto_2

    :cond_5
    :goto_1
    move v1, v3

    :goto_2
    iget-object v4, p0, Lp7/b;->e:Landroid/view/WindowManager$LayoutParams;

    const/4 v5, -0x2

    iput v5, v4, Landroid/view/WindowManager$LayoutParams;->width:I

    if-eqz v1, :cond_6

    goto :goto_3

    :cond_6
    iget-object v5, p0, Lp7/b;->a:Lcom/miui/securitycenter/Application;

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f071e9f

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v5

    :goto_3
    iput v5, v4, Landroid/view/WindowManager$LayoutParams;->height:I

    iget-object v4, p0, Lp7/b;->e:Landroid/view/WindowManager$LayoutParams;

    iput v2, v4, Landroid/view/WindowManager$LayoutParams;->x:I

    iget-object v4, p0, Lp7/b;->a:Lcom/miui/securitycenter/Application;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f071dc8

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v4

    invoke-direct {p0, p2}, Lp7/b;->e(Ljava/lang/String;)I

    move-result p2

    iget-object v5, p0, Lp7/b;->a:Lcom/miui/securitycenter/Application;

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    iget-object v6, p0, Lp7/b;->c:[I

    aget p2, v6, p2

    invoke-virtual {v5, p2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p2

    invoke-virtual {p2}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v5

    invoke-virtual {p2}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v6

    iget-object v7, p0, Lp7/b;->e:Landroid/view/WindowManager$LayoutParams;

    invoke-direct {p0, v0}, Lp7/b;->g(I)I

    move-result v8

    iput v8, v7, Landroid/view/WindowManager$LayoutParams;->gravity:I

    new-instance v7, Landroid/widget/ImageView;

    iget-object v8, p0, Lp7/b;->a:Lcom/miui/securitycenter/Application;

    invoke-direct {v7, v8}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object v7, p0, Lp7/b;->f:Landroid/widget/ImageView;

    if-eqz v1, :cond_7

    neg-int v8, v4

    goto :goto_4

    :cond_7
    move v8, v2

    :goto_4
    invoke-virtual {v7, v8, v2, v2, v2}, Landroid/view/View;->setPadding(IIII)V

    iget-object v7, p0, Lp7/b;->f:Landroid/widget/ImageView;

    const/16 v8, 0x8

    invoke-virtual {v7, v8}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v7, p0, Lp7/b;->f:Landroid/widget/ImageView;

    invoke-direct {p0, v0}, Lp7/b;->i(I)I

    move-result v9

    int-to-float v9, v9

    invoke-virtual {v7, v9}, Landroid/view/View;->setRotation(F)V

    if-nez v1, :cond_8

    iget-object v7, p0, Lp7/b;->e:Landroid/view/WindowManager$LayoutParams;

    sub-int v9, v6, v5

    neg-int v9, v9

    div-int/lit8 v9, v9, 0x2

    iput v9, v7, Landroid/view/WindowManager$LayoutParams;->x:I

    :cond_8
    iget-object v7, p0, Lp7/b;->f:Landroid/widget/ImageView;

    invoke-virtual {v7, p2}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    iget-object v7, p0, Lp7/b;->d:Landroid/view/WindowManager;

    iget-object v9, p0, Lp7/b;->f:Landroid/widget/ImageView;

    iget-object v10, p0, Lp7/b;->e:Landroid/view/WindowManager$LayoutParams;

    invoke-interface {v7, v9, v10}, Landroid/view/ViewManager;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v7, p0, Lp7/b;->e:Landroid/view/WindowManager$LayoutParams;

    invoke-direct {p0, v0}, Lp7/b;->h(I)I

    move-result v9

    iput v9, v7, Landroid/view/WindowManager$LayoutParams;->gravity:I

    new-instance v7, Landroid/widget/ImageView;

    iget-object v9, p0, Lp7/b;->a:Lcom/miui/securitycenter/Application;

    invoke-direct {v7, v9}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object v7, p0, Lp7/b;->g:Landroid/widget/ImageView;

    if-eqz v1, :cond_9

    neg-int v4, v4

    goto :goto_5

    :cond_9
    move v4, v2

    :goto_5
    invoke-virtual {v7, v2, v2, v4, v2}, Landroid/view/View;->setPadding(IIII)V

    iget-object v2, p0, Lp7/b;->g:Landroid/widget/ImageView;

    invoke-virtual {v2, v8}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v2, p0, Lp7/b;->g:Landroid/widget/ImageView;

    invoke-direct {p0, v0}, Lp7/b;->i(I)I

    move-result v0

    int-to-float v0, v0

    invoke-virtual {v2, v0}, Landroid/view/View;->setRotation(F)V

    if-nez v1, :cond_a

    iget-object v0, p0, Lp7/b;->e:Landroid/view/WindowManager$LayoutParams;

    sub-int/2addr v6, v5

    neg-int v1, v6

    div-int/lit8 v1, v1, 0x2

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->x:I

    :cond_a
    iget-object v0, p0, Lp7/b;->g:Landroid/widget/ImageView;

    invoke-virtual {v0, p2}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    iget-object p2, p0, Lp7/b;->d:Landroid/view/WindowManager;

    iget-object v0, p0, Lp7/b;->g:Landroid/widget/ImageView;

    iget-object v1, p0, Lp7/b;->e:Landroid/view/WindowManager$LayoutParams;

    invoke-interface {p2, v0, v1}, Landroid/view/ViewManager;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    invoke-direct {p0, p1}, Lp7/b;->d(I)V

    iput-boolean v3, p0, Lp7/b;->h:Z

    return-void
.end method

.method private d(I)V
    .locals 4

    iget-object v0, p0, Lp7/b;->f:Landroid/widget/ImageView;

    if-eqz v0, :cond_4

    iget-object v1, p0, Lp7/b;->g:Landroid/widget/ImageView;

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    if-eqz p1, :cond_3

    const/4 v3, 0x1

    if-eq p1, v3, :cond_2

    const/4 v0, 0x2

    if-eq p1, v0, :cond_1

    goto :goto_0

    :cond_1
    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_0

    :cond_2
    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_0

    :cond_3
    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object p1, p0, Lp7/b;->g:Landroid/widget/ImageView;

    invoke-virtual {p1, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    :cond_4
    :goto_0
    return-void
.end method

.method private e(Ljava/lang/String;)I
    .locals 4

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    iget-object v2, p0, Lp7/b;->b:[Ljava/lang/String;

    array-length v3, v2

    if-ge v1, v3, :cond_1

    aget-object v2, v2, v1

    invoke-static {v2, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    return v1

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return v0
.end method

.method public static f()Lp7/b;
    .locals 1

    sget-object v0, Lp7/b;->i:Lp7/b;

    if-nez v0, :cond_0

    new-instance v0, Lp7/b;

    invoke-direct {v0}, Lp7/b;-><init>()V

    sput-object v0, Lp7/b;->i:Lp7/b;

    :cond_0
    sget-object v0, Lp7/b;->i:Lp7/b;

    return-object v0
.end method

.method private g(I)I
    .locals 1

    if-eqz p1, :cond_1

    const/16 v0, 0x10e

    if-eq p1, v0, :cond_0

    const p1, 0x800033

    return p1

    :cond_0
    const p1, 0x800055

    return p1

    :cond_1
    const p1, 0x800035

    return p1
.end method

.method private h(I)I
    .locals 1

    if-eqz p1, :cond_1

    const/16 v0, 0x10e

    if-eq p1, v0, :cond_0

    const p1, 0x800035

    return p1

    :cond_0
    const p1, 0x800053

    return p1

    :cond_1
    const p1, 0x800055

    return p1
.end method

.method private i(I)I
    .locals 1

    if-eqz p1, :cond_1

    const/16 v0, 0x10e

    if-eq p1, v0, :cond_0

    const/4 p1, 0x0

    return p1

    :cond_0
    const/16 p1, 0xb4

    return p1

    :cond_1
    const/16 p1, 0x5a

    return p1
.end method


# virtual methods
.method public b(I)V
    .locals 2

    invoke-static {}, Lp7/d;->b()Lp7/d;

    move-result-object v0

    const-string v1, "#FF6C69"

    invoke-virtual {v0, v1}, Lp7/d;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lp7/b;->c(ILjava/lang/String;)V

    return-void
.end method

.method public c(ILjava/lang/String;)V
    .locals 1

    invoke-static {}, Lp7/d;->b()Lp7/d;

    move-result-object v0

    invoke-virtual {v0}, Lp7/d;->h()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-boolean v0, p0, Lp7/b;->h:Z

    if-eqz v0, :cond_1

    invoke-virtual {p0, p1, p2}, Lp7/b;->n(ILjava/lang/String;)V

    goto :goto_0

    :cond_1
    invoke-direct {p0, p1, p2}, Lp7/b;->a(ILjava/lang/String;)V

    :goto_0
    return-void
.end method

.method public j()V
    .locals 2

    :try_start_0
    iget-boolean v0, p0, Lp7/b;->h:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lp7/b;->f:Landroid/widget/ImageView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v0, p0, Lp7/b;->g:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_0
    :goto_0
    return-void
.end method

.method public k(Z)V
    .locals 1

    :try_start_0
    iget-boolean v0, p0, Lp7/b;->h:Z

    if-eqz v0, :cond_1

    const/16 v0, 0x8

    if-eqz p1, :cond_0

    iget-object p1, p0, Lp7/b;->f:Landroid/widget/ImageView;

    :goto_0
    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_1

    :cond_0
    iget-object p1, p0, Lp7/b;->g:Landroid/widget/ImageView;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_1
    :goto_1
    return-void
.end method

.method public l()Ljava/util/List;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lq7/a;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iget-object v1, p0, Lp7/b;->b:[Ljava/lang/String;

    if-eqz v1, :cond_2

    array-length v2, v1

    if-gtz v2, :cond_0

    goto :goto_1

    :cond_0
    array-length v2, v1

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_1

    aget-object v4, v1, v3

    new-instance v5, Lq7/a;

    invoke-direct {v5}, Lq7/a;-><init>()V

    invoke-virtual {v5, v4}, Lq7/a;->b(Ljava/lang/String;)V

    invoke-interface {v0, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    return-object v0

    :cond_2
    :goto_1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    return-object v0
.end method

.method public m()V
    .locals 2

    :try_start_0
    iget-boolean v0, p0, Lp7/b;->h:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lp7/b;->d:Landroid/view/WindowManager;

    iget-object v1, p0, Lp7/b;->f:Landroid/widget/ImageView;

    invoke-interface {v0, v1}, Landroid/view/ViewManager;->removeView(Landroid/view/View;)V

    iget-object v0, p0, Lp7/b;->d:Landroid/view/WindowManager;

    iget-object v1, p0, Lp7/b;->g:Landroid/widget/ImageView;

    invoke-interface {v0, v1}, Landroid/view/ViewManager;->removeView(Landroid/view/View;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lp7/b;->f:Landroid/widget/ImageView;

    iput-object v0, p0, Lp7/b;->g:Landroid/widget/ImageView;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lp7/b;->h:Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_0
    :goto_0
    return-void
.end method

.method public n(ILjava/lang/String;)V
    .locals 2

    invoke-static {}, Lp7/d;->b()Lp7/d;

    move-result-object v0

    invoke-virtual {v0}, Lp7/d;->h()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-boolean v0, p0, Lp7/b;->h:Z

    if-nez v0, :cond_1

    return-void

    :cond_1
    invoke-direct {p0, p2}, Lp7/b;->e(Ljava/lang/String;)I

    move-result p2

    iget-object v0, p0, Lp7/b;->f:Landroid/widget/ImageView;

    iget-object v1, p0, Lp7/b;->c:[I

    aget v1, v1, p2

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    iget-object v0, p0, Lp7/b;->g:Landroid/widget/ImageView;

    iget-object v1, p0, Lp7/b;->c:[I

    aget p2, v1, p2

    invoke-virtual {v0, p2}, Landroid/widget/ImageView;->setImageResource(I)V

    invoke-direct {p0, p1}, Lp7/b;->d(I)V

    return-void
.end method
