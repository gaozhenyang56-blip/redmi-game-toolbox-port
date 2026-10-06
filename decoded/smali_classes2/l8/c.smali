.class public Ll8/c;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ll8/c$c;,
        Ll8/c$d;
    }
.end annotation


# static fields
.field private static a:[[F

.field private static b:F

.field private static c:I

.field private static d:I


# direct methods
.method static constructor <clinit>()V
    .locals 15

    invoke-static {}, La8/z;->d()Z

    move-result v0

    const/4 v1, 0x1

    const/16 v2, 0x8

    const/4 v3, 0x0

    const/4 v4, 0x2

    if-eqz v0, :cond_0

    new-array v0, v4, [[F

    new-array v4, v2, [F

    fill-array-data v4, :array_0

    aput-object v4, v0, v3

    new-array v2, v2, [F

    fill-array-data v2, :array_1

    aput-object v2, v0, v1

    sput-object v0, Ll8/c;->a:[[F

    goto/16 :goto_b

    :cond_0
    new-array v0, v4, [[F

    new-array v5, v2, [F

    const v6, 0x3fe38e39

    aput v6, v5, v3

    sget-boolean v6, Lmiui/os/Build;->IS_TABLET:Z

    if-eqz v6, :cond_1

    const v7, 0x405e17fd

    goto :goto_0

    :cond_1
    const v7, 0x401e9188

    :goto_0
    aput v7, v5, v1

    if-eqz v6, :cond_2

    const v7, 0x3f54758f

    goto :goto_1

    :cond_2
    const v7, 0x3f527ae7

    :goto_1
    aput v7, v5, v4

    const v7, 0x408b4c76

    const/4 v8, 0x3

    aput v7, v5, v8

    if-eqz v6, :cond_3

    const v7, 0x41e49249

    goto :goto_2

    :cond_3
    const v7, 0x41a2b63c

    :goto_2
    const/4 v9, 0x4

    aput v7, v5, v9

    const v7, 0x40e2e8ba

    if-eqz v6, :cond_4

    move v10, v7

    goto :goto_3

    :cond_4
    const v10, 0x413a44c7

    :goto_3
    const/4 v11, 0x5

    aput v10, v5, v11

    const v10, 0x3ddf2df3

    if-eqz v6, :cond_5

    const v12, 0x3e1d89d9

    goto :goto_4

    :cond_5
    move v12, v10

    :goto_4
    const/4 v13, 0x6

    aput v12, v5, v13

    if-eqz v6, :cond_6

    const v12, 0x3f293e94

    goto :goto_5

    :cond_6
    const v12, 0x3f071c72

    :goto_5
    const/4 v14, 0x7

    aput v12, v5, v14

    aput-object v5, v0, v3

    new-array v2, v2, [F

    const/high16 v5, 0x3f800000    # 1.0f

    aput v5, v2, v3

    if-eqz v6, :cond_7

    const v3, 0x407e148d    # 3.9700043f

    goto :goto_6

    :cond_7
    const v3, 0x400263f7

    :goto_6
    aput v3, v2, v1

    const v3, 0x3f4ad464

    aput v3, v2, v4

    const v3, 0x40bbeda0

    aput v3, v2, v8

    if-eqz v6, :cond_8

    const v3, 0x41ad7e75

    goto :goto_7

    :cond_8
    const v3, 0x4184b809

    :goto_7
    aput v3, v2, v9

    if-eqz v6, :cond_9

    goto :goto_8

    :cond_9
    const v7, 0x418aaaab

    :goto_8
    aput v7, v2, v11

    if-eqz v6, :cond_a

    goto :goto_9

    :cond_a
    const v10, 0x3dafeaff

    :goto_9
    aput v10, v2, v13

    if-eqz v6, :cond_b

    const v3, 0x3f2aaaab

    goto :goto_a

    :cond_b
    const v3, 0x3ed9999a    # 0.425f

    :goto_a
    aput v3, v2, v14

    aput-object v2, v0, v1

    sput-object v0, Ll8/c;->a:[[F

    :goto_b
    const/4 v0, 0x0

    sput v0, Ll8/c;->b:F

    return-void

    nop

    :array_0
    .array-data 4
        0x3fe38e39
        0x405e17fd
        0x3f527ae7
        0x408b4c76
        0x41a2b63c
        0x410aaaab
        0x3e106907
        0x3f5c71c7
    .end array-data

    :array_1
    .array-data 4
        0x3f800000    # 1.0f
        0x400263f7
        0x3f4ad464
        0x40bbeda0
        0x4184b809
        0x418aaaab
        0x3dafeaff
        0x3ed9999a    # 0.425f
    .end array-data
.end method

.method static synthetic a()F
    .locals 1

    invoke-static {}, Ll8/c;->e()F

    move-result v0

    return v0
.end method

.method public static b(Landroid/view/View;)V
    .locals 5

    invoke-virtual {p0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    instance-of v1, v0, Landroid/view/ViewGroup$MarginLayoutParams;

    if-nez v1, :cond_0

    return-void

    :cond_0
    check-cast v0, Landroid/view/ViewGroup$MarginLayoutParams;

    invoke-static {}, Ll8/c;->g()[F

    move-result-object v1

    iget v2, v0, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    invoke-static {}, Ll8/c;->d()I

    move-result v3

    int-to-float v3, v3

    const/4 v4, 0x6

    aget v1, v1, v4

    mul-float/2addr v3, v1

    invoke-static {}, Ll8/c;->e()F

    move-result v1

    mul-float/2addr v3, v1

    float-to-int v1, v3

    iget v3, v0, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    iget v4, v0, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    invoke-virtual {v0, v2, v1, v3, v4}, Landroid/view/ViewGroup$MarginLayoutParams;->setMargins(IIII)V

    invoke-virtual {p0}, Landroid/view/View;->requestLayout()V

    return-void
.end method

.method public static c(Landroid/view/View;Landroidx/viewpager/widget/ViewPager;Landroid/view/View;)V
    .locals 8

    invoke-static {}, Ll8/c;->g()[F

    move-result-object v2

    invoke-static {}, Ll8/c;->f()I

    move-result v1

    invoke-static {}, Ll8/c;->d()I

    move-result v3

    new-instance v7, Ll8/c$a;

    move-object v0, v7

    move-object v4, p0

    move-object v5, p1

    move-object v6, p2

    invoke-direct/range {v0 .. v6}, Ll8/c$a;-><init>(I[FILandroid/view/View;Landroidx/viewpager/widget/ViewPager;Landroid/view/View;)V

    invoke-static {p1, v7}, Lc7/c;->e(Landroid/view/View;Ljava/lang/Runnable;)V

    return-void
.end method

.method private static d()I
    .locals 1

    sget v0, Ll8/c;->d:I

    if-nez v0, :cond_0

    invoke-static {}, La8/k2;->t()I

    move-result v0

    sput v0, Ll8/c;->d:I

    :cond_0
    sget v0, Ll8/c;->d:I

    return v0
.end method

.method private static e()F
    .locals 2

    invoke-static {}, Ll8/c;->d()I

    move-result v0

    int-to-float v0, v0

    invoke-static {}, Ll8/c;->f()I

    move-result v1

    int-to-float v1, v1

    div-float/2addr v0, v1

    const v1, 0x400ae148    # 2.17f

    div-float/2addr v0, v1

    return v0
.end method

.method private static f()I
    .locals 2

    sget v0, Ll8/c;->c:I

    if-nez v0, :cond_0

    invoke-static {}, La8/k2;->u()I

    move-result v0

    sput v0, Ll8/c;->c:I

    :cond_0
    sget v0, Ll8/c;->c:I

    const/16 v1, 0x5dc

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    return v0
.end method

.method private static g()[F
    .locals 2

    invoke-static {}, Lg7/a;->b()Z

    move-result v0

    sget-object v1, Ll8/c;->a:[[F

    aget-object v0, v1, v0

    return-object v0
.end method

.method public static h()V
    .locals 1

    const/4 v0, 0x0

    sput v0, Ll8/c;->c:I

    sput v0, Ll8/c;->d:I

    return-void
.end method

.method public static i(Landroid/view/View;Landroid/view/View;)V
    .locals 2

    invoke-static {}, Ll8/c;->g()[F

    move-result-object p0

    invoke-static {}, Ll8/c;->f()I

    move-result v0

    new-instance v1, Ll8/c$b;

    invoke-direct {v1, v0, p0, p1}, Ll8/c$b;-><init>(I[FLandroid/view/View;)V

    invoke-static {p1, v1}, Lc7/c;->e(Landroid/view/View;Ljava/lang/Runnable;)V

    return-void
.end method

.method public static j()F
    .locals 2

    sget v0, Ll8/c;->b:F

    const/4 v1, 0x0

    cmpl-float v1, v0, v1

    if-eqz v1, :cond_0

    return v0

    :cond_0
    invoke-static {}, Ll8/c;->g()[F

    move-result-object v0

    const/4 v1, 0x2

    aget v0, v0, v1

    sput v0, Ll8/c;->b:F

    return v0
.end method
