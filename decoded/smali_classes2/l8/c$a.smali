.class Ll8/c$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ll8/c;->c(Landroid/view/View;Landroidx/viewpager/widget/ViewPager;Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:I

.field final synthetic b:[F

.field final synthetic c:I

.field final synthetic d:Landroid/view/View;

.field final synthetic e:Landroidx/viewpager/widget/ViewPager;

.field final synthetic f:Landroid/view/View;


# direct methods
.method constructor <init>(I[FILandroid/view/View;Landroidx/viewpager/widget/ViewPager;Landroid/view/View;)V
    .locals 0

    iput p1, p0, Ll8/c$a;->a:I

    iput-object p2, p0, Ll8/c$a;->b:[F

    iput p3, p0, Ll8/c$a;->c:I

    iput-object p4, p0, Ll8/c$a;->d:Landroid/view/View;

    iput-object p5, p0, Ll8/c$a;->e:Landroidx/viewpager/widget/ViewPager;

    iput-object p6, p0, Ll8/c$a;->f:Landroid/view/View;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 8

    iget v0, p0, Ll8/c$a;->a:I

    int-to-float v1, v0

    iget-object v2, p0, Ll8/c$a;->b:[F

    const/4 v3, 0x1

    aget v4, v2, v3

    div-float/2addr v1, v4

    float-to-int v1, v1

    int-to-float v4, v1

    const/4 v5, 0x0

    aget v5, v2, v5

    mul-float/2addr v4, v5

    float-to-int v4, v4

    int-to-float v0, v0

    const/4 v5, 0x4

    aget v5, v2, v5

    div-float/2addr v0, v5

    float-to-int v0, v0

    iget v5, p0, Ll8/c$a;->c:I

    int-to-float v5, v5

    const/4 v6, 0x5

    aget v2, v2, v6

    div-float/2addr v5, v2

    invoke-static {}, Ll8/c;->a()F

    move-result v2

    mul-float/2addr v5, v2

    float-to-int v2, v5

    shl-int/2addr v0, v3

    add-int/2addr v1, v0

    add-int/2addr v0, v4

    iget-object v3, p0, Ll8/c$a;->d:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    iput v0, v3, Landroid/view/ViewGroup$LayoutParams;->height:I

    instance-of v5, v3, Landroid/view/ViewGroup$MarginLayoutParams;

    if-eqz v5, :cond_0

    check-cast v3, Landroid/view/ViewGroup$MarginLayoutParams;

    iget v5, v3, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    iget v6, v3, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    iget v7, v3, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    invoke-virtual {v3, v5, v2, v6, v7}, Landroid/view/ViewGroup$MarginLayoutParams;->setMargins(IIII)V

    :cond_0
    iget-object v2, p0, Ll8/c$a;->e:Landroidx/viewpager/widget/ViewPager;

    const/4 v3, -0x1

    invoke-static {v2, v3, v4}, Lc7/c;->G(Landroid/view/View;II)V

    iget v2, p0, Ll8/c$a;->a:I

    int-to-float v2, v2

    iget-object v3, p0, Ll8/c$a;->b:[F

    const/4 v4, 0x7

    aget v3, v3, v4

    mul-float/2addr v2, v3

    iget-object v3, p0, Ll8/c$a;->e:Landroidx/viewpager/widget/ViewPager;

    neg-float v2, v2

    float-to-int v2, v2

    invoke-virtual {v3, v2}, Landroidx/viewpager/widget/ViewPager;->setPageMargin(I)V

    iget-object v2, p0, Ll8/c$a;->f:Landroid/view/View;

    invoke-static {v2, v1, v0}, Lc7/c;->G(Landroid/view/View;II)V

    iget-object v0, p0, Ll8/c$a;->f:Landroid/view/View;

    invoke-static {}, Lg7/a;->b()Z

    move-result v1

    if-eqz v1, :cond_1

    const v1, 0x7f0806ef

    goto :goto_0

    :cond_1
    const v1, 0x7f080692

    :goto_0
    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundResource(I)V

    iget-object v0, p0, Ll8/c$a;->d:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->requestLayout()V

    return-void
.end method
