.class public Landroidx/constraintlayout/widget/d;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field a:Landroidx/constraintlayout/widget/ConstraintLayout$b;

.field b:Landroid/view/View;


# direct methods
.method public constructor <init>(Landroid/view/View;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    instance-of v1, v0, Landroidx/constraintlayout/widget/ConstraintLayout$b;

    if-eqz v1, :cond_0

    check-cast v0, Landroidx/constraintlayout/widget/ConstraintLayout$b;

    iput-object v0, p0, Landroidx/constraintlayout/widget/d;->a:Landroidx/constraintlayout/widget/ConstraintLayout$b;

    iput-object p1, p0, Landroidx/constraintlayout/widget/d;->b:Landroid/view/View;

    return-void

    :cond_0
    new-instance p1, Ljava/lang/RuntimeException;

    const-string v0, "Only children of ConstraintLayout.LayoutParams supported"

    invoke-direct {p1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1
.end method


# virtual methods
.method public a()V
    .locals 0

    return-void
.end method

.method public b(I)Landroidx/constraintlayout/widget/d;
    .locals 1

    iget-object v0, p0, Landroidx/constraintlayout/widget/d;->a:Landroidx/constraintlayout/widget/ConstraintLayout$b;

    iput p1, v0, Landroid/view/ViewGroup$MarginLayoutParams;->height:I

    return-object p0
.end method

.method public c(I)Landroidx/constraintlayout/widget/d;
    .locals 1

    iget-object v0, p0, Landroidx/constraintlayout/widget/d;->a:Landroidx/constraintlayout/widget/ConstraintLayout$b;

    iput p1, v0, Landroid/view/ViewGroup$MarginLayoutParams;->width:I

    return-object p0
.end method

.method public d(F)Landroidx/constraintlayout/widget/d;
    .locals 1

    iget-object v0, p0, Landroidx/constraintlayout/widget/d;->a:Landroidx/constraintlayout/widget/ConstraintLayout$b;

    iput p1, v0, Landroidx/constraintlayout/widget/ConstraintLayout$b;->H:F

    return-object p0
.end method
