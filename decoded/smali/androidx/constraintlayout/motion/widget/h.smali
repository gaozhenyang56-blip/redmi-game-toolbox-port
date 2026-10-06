.class public Landroidx/constraintlayout/motion/widget/h;
.super Landroidx/constraintlayout/motion/widget/i;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/constraintlayout/motion/widget/h$a;
    }
.end annotation


# instance fields
.field h:Ljava/lang/String;

.field i:I

.field j:I

.field k:F

.field l:F

.field m:F

.field n:F

.field o:F

.field p:F

.field q:I

.field private r:F

.field private s:F


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Landroidx/constraintlayout/motion/widget/i;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Landroidx/constraintlayout/motion/widget/h;->h:Ljava/lang/String;

    sget v0, Landroidx/constraintlayout/motion/widget/d;->f:I

    iput v0, p0, Landroidx/constraintlayout/motion/widget/h;->i:I

    const/4 v0, 0x0

    iput v0, p0, Landroidx/constraintlayout/motion/widget/h;->j:I

    const/high16 v1, 0x7fc00000    # Float.NaN

    iput v1, p0, Landroidx/constraintlayout/motion/widget/h;->k:F

    iput v1, p0, Landroidx/constraintlayout/motion/widget/h;->l:F

    iput v1, p0, Landroidx/constraintlayout/motion/widget/h;->m:F

    iput v1, p0, Landroidx/constraintlayout/motion/widget/h;->n:F

    iput v1, p0, Landroidx/constraintlayout/motion/widget/h;->o:F

    iput v1, p0, Landroidx/constraintlayout/motion/widget/h;->p:F

    iput v0, p0, Landroidx/constraintlayout/motion/widget/h;->q:I

    iput v1, p0, Landroidx/constraintlayout/motion/widget/h;->r:F

    iput v1, p0, Landroidx/constraintlayout/motion/widget/h;->s:F

    const/4 v0, 0x2

    iput v0, p0, Landroidx/constraintlayout/motion/widget/d;->d:I

    return-void
.end method


# virtual methods
.method public a(Ljava/util/HashMap;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ls/c;",
            ">;)V"
        }
    .end annotation

    return-void
.end method

.method public b()Landroidx/constraintlayout/motion/widget/d;
    .locals 1

    new-instance v0, Landroidx/constraintlayout/motion/widget/h;

    invoke-direct {v0}, Landroidx/constraintlayout/motion/widget/h;-><init>()V

    invoke-virtual {v0, p0}, Landroidx/constraintlayout/motion/widget/h;->c(Landroidx/constraintlayout/motion/widget/d;)Landroidx/constraintlayout/motion/widget/d;

    move-result-object v0

    return-object v0
.end method

.method public c(Landroidx/constraintlayout/motion/widget/d;)Landroidx/constraintlayout/motion/widget/d;
    .locals 1

    invoke-super {p0, p1}, Landroidx/constraintlayout/motion/widget/d;->c(Landroidx/constraintlayout/motion/widget/d;)Landroidx/constraintlayout/motion/widget/d;

    check-cast p1, Landroidx/constraintlayout/motion/widget/h;

    iget-object v0, p1, Landroidx/constraintlayout/motion/widget/h;->h:Ljava/lang/String;

    iput-object v0, p0, Landroidx/constraintlayout/motion/widget/h;->h:Ljava/lang/String;

    iget v0, p1, Landroidx/constraintlayout/motion/widget/h;->i:I

    iput v0, p0, Landroidx/constraintlayout/motion/widget/h;->i:I

    iget v0, p1, Landroidx/constraintlayout/motion/widget/h;->j:I

    iput v0, p0, Landroidx/constraintlayout/motion/widget/h;->j:I

    iget v0, p1, Landroidx/constraintlayout/motion/widget/h;->k:F

    iput v0, p0, Landroidx/constraintlayout/motion/widget/h;->k:F

    const/high16 v0, 0x7fc00000    # Float.NaN

    iput v0, p0, Landroidx/constraintlayout/motion/widget/h;->l:F

    iget v0, p1, Landroidx/constraintlayout/motion/widget/h;->m:F

    iput v0, p0, Landroidx/constraintlayout/motion/widget/h;->m:F

    iget v0, p1, Landroidx/constraintlayout/motion/widget/h;->n:F

    iput v0, p0, Landroidx/constraintlayout/motion/widget/h;->n:F

    iget v0, p1, Landroidx/constraintlayout/motion/widget/h;->o:F

    iput v0, p0, Landroidx/constraintlayout/motion/widget/h;->o:F

    iget v0, p1, Landroidx/constraintlayout/motion/widget/h;->p:F

    iput v0, p0, Landroidx/constraintlayout/motion/widget/h;->p:F

    iget v0, p1, Landroidx/constraintlayout/motion/widget/h;->r:F

    iput v0, p0, Landroidx/constraintlayout/motion/widget/h;->r:F

    iget p1, p1, Landroidx/constraintlayout/motion/widget/h;->s:F

    iput p1, p0, Landroidx/constraintlayout/motion/widget/h;->s:F

    return-object p0
.end method

.method public bridge synthetic clone()Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0}, Landroidx/constraintlayout/motion/widget/h;->b()Landroidx/constraintlayout/motion/widget/d;

    move-result-object v0

    return-object v0
.end method

.method public e(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    sget-object v0, Landroidx/constraintlayout/widget/j;->u6:[I

    invoke-virtual {p1, p2, v0}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object p1

    invoke-static {p0, p1}, Landroidx/constraintlayout/motion/widget/h$a;->a(Landroidx/constraintlayout/motion/widget/h;Landroid/content/res/TypedArray;)V

    return-void
.end method
