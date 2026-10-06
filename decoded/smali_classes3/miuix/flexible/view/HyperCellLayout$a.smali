.class public Lmiuix/flexible/view/HyperCellLayout$a;
.super Landroid/view/ViewGroup$MarginLayoutParams;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmiuix/flexible/view/HyperCellLayout;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation


# instance fields
.field private a:I

.field private b:F

.field private c:F

.field private d:I

.field private e:I

.field private f:I

.field private g:I

.field private h:I

.field private i:F

.field private j:Z

.field private k:I

.field private l:I

.field private m:I


# direct methods
.method public constructor <init>(II)V
    .locals 0

    invoke-direct {p0, p1, p2}, Landroid/view/ViewGroup$MarginLayoutParams;-><init>(II)V

    const/4 p1, 0x0

    iput p1, p0, Lmiuix/flexible/view/HyperCellLayout$a;->d:I

    iput-boolean p1, p0, Lmiuix/flexible/view/HyperCellLayout$a;->j:Z

    const/4 p2, 0x7

    iput p2, p0, Lmiuix/flexible/view/HyperCellLayout$a;->k:I

    const p2, 0x800003

    iput p2, p0, Lmiuix/flexible/view/HyperCellLayout$a;->l:I

    iput p1, p0, Lmiuix/flexible/view/HyperCellLayout$a;->m:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 5

    invoke-direct {p0, p1, p2}, Landroid/view/ViewGroup$MarginLayoutParams;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 v0, 0x0

    iput v0, p0, Lmiuix/flexible/view/HyperCellLayout$a;->d:I

    iput-boolean v0, p0, Lmiuix/flexible/view/HyperCellLayout$a;->j:Z

    const/4 v1, 0x7

    iput v1, p0, Lmiuix/flexible/view/HyperCellLayout$a;->k:I

    const v1, 0x800003

    iput v1, p0, Lmiuix/flexible/view/HyperCellLayout$a;->l:I

    iput v0, p0, Lmiuix/flexible/view/HyperCellLayout$a;->m:I

    if-eqz p2, :cond_b

    sget-object v1, Lhl/c;->M:[I

    invoke-virtual {p1, p2, v1}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/res/TypedArray;->getIndexCount()I

    move-result p2

    move v1, v0

    :goto_0
    if-ge v1, p2, :cond_a

    invoke-virtual {p1, v1}, Landroid/content/res/TypedArray;->getIndex(I)I

    move-result v2

    sget v3, Lhl/c;->S:I

    if-ne v2, v3, :cond_1

    const/4 v3, 0x1

    invoke-virtual {p1, v2, v3}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v2

    iput v2, p0, Lmiuix/flexible/view/HyperCellLayout$a;->a:I

    if-lt v2, v3, :cond_0

    goto :goto_1

    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Layout Parameter \'mark\' can not be smaller than 1"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    sget v3, Lhl/c;->V:I

    const/4 v4, 0x0

    if-ne v2, v3, :cond_2

    invoke-virtual {p1, v2, v4}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v2

    iput v2, p0, Lmiuix/flexible/view/HyperCellLayout$a;->b:F

    goto :goto_1

    :cond_2
    sget v3, Lhl/c;->R:I

    if-ne v2, v3, :cond_3

    invoke-virtual {p1, v2, v4}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v2

    iput v2, p0, Lmiuix/flexible/view/HyperCellLayout$a;->c:F

    goto :goto_1

    :cond_3
    sget v3, Lhl/c;->N:I

    if-ne v2, v3, :cond_4

    invoke-virtual {p1, v2, v0}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v2

    iput v2, p0, Lmiuix/flexible/view/HyperCellLayout$a;->d:I

    goto :goto_1

    :cond_4
    sget v3, Lhl/c;->T:I

    if-ne v2, v3, :cond_5

    invoke-virtual {p1, v2, v0}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v2

    iput v2, p0, Lmiuix/flexible/view/HyperCellLayout$a;->e:I

    goto :goto_1

    :cond_5
    sget v3, Lhl/c;->U:I

    if-ne v2, v3, :cond_6

    invoke-virtual {p1, v2, v0}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v2

    iput v2, p0, Lmiuix/flexible/view/HyperCellLayout$a;->f:I

    goto :goto_1

    :cond_6
    sget v3, Lhl/c;->Q:I

    if-ne v2, v3, :cond_7

    invoke-virtual {p1, v2, v0}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v2

    iput v2, p0, Lmiuix/flexible/view/HyperCellLayout$a;->g:I

    goto :goto_1

    :cond_7
    sget v3, Lhl/c;->O:I

    if-ne v2, v3, :cond_8

    invoke-virtual {p1, v2, v0}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v2

    iput v2, p0, Lmiuix/flexible/view/HyperCellLayout$a;->h:I

    goto :goto_1

    :cond_8
    sget v3, Lhl/c;->P:I

    if-ne v2, v3, :cond_9

    invoke-virtual {p1, v2, v0}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v2

    iput v2, p0, Lmiuix/flexible/view/HyperCellLayout$a;->m:I

    :cond_9
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_a
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    :cond_b
    return-void
.end method

.method public constructor <init>(Landroid/view/ViewGroup$LayoutParams;)V
    .locals 1

    invoke-direct {p0, p1}, Landroid/view/ViewGroup$MarginLayoutParams;-><init>(Landroid/view/ViewGroup$LayoutParams;)V

    const/4 p1, 0x0

    iput p1, p0, Lmiuix/flexible/view/HyperCellLayout$a;->d:I

    iput-boolean p1, p0, Lmiuix/flexible/view/HyperCellLayout$a;->j:Z

    const/4 v0, 0x7

    iput v0, p0, Lmiuix/flexible/view/HyperCellLayout$a;->k:I

    const v0, 0x800003

    iput v0, p0, Lmiuix/flexible/view/HyperCellLayout$a;->l:I

    iput p1, p0, Lmiuix/flexible/view/HyperCellLayout$a;->m:I

    return-void
.end method


# virtual methods
.method public a()I
    .locals 1

    iget v0, p0, Lmiuix/flexible/view/HyperCellLayout$a;->k:I

    return v0
.end method

.method public b()F
    .locals 1

    iget v0, p0, Lmiuix/flexible/view/HyperCellLayout$a;->i:F

    return v0
.end method

.method public c()I
    .locals 1

    iget v0, p0, Lmiuix/flexible/view/HyperCellLayout$a;->h:I

    return v0
.end method

.method public d()I
    .locals 1

    iget v0, p0, Lmiuix/flexible/view/HyperCellLayout$a;->m:I

    return v0
.end method

.method public e()I
    .locals 1

    iget v0, p0, Lmiuix/flexible/view/HyperCellLayout$a;->d:I

    return v0
.end method

.method public f()I
    .locals 1

    iget v0, p0, Lmiuix/flexible/view/HyperCellLayout$a;->g:I

    return v0
.end method

.method public g()F
    .locals 1

    iget v0, p0, Lmiuix/flexible/view/HyperCellLayout$a;->c:F

    return v0
.end method

.method public h()I
    .locals 1

    iget v0, p0, Lmiuix/flexible/view/HyperCellLayout$a;->a:I

    return v0
.end method

.method public i()I
    .locals 1

    iget v0, p0, Lmiuix/flexible/view/HyperCellLayout$a;->e:I

    return v0
.end method

.method public j()I
    .locals 1

    iget v0, p0, Lmiuix/flexible/view/HyperCellLayout$a;->f:I

    return v0
.end method

.method public k()F
    .locals 1

    iget v0, p0, Lmiuix/flexible/view/HyperCellLayout$a;->b:F

    return v0
.end method

.method public l()Z
    .locals 1

    iget-boolean v0, p0, Lmiuix/flexible/view/HyperCellLayout$a;->j:Z

    return v0
.end method

.method public m(I)Lmiuix/flexible/view/HyperCellLayout$a;
    .locals 0

    iput p1, p0, Lmiuix/flexible/view/HyperCellLayout$a;->h:I

    return-object p0
.end method

.method public n(I)Lmiuix/flexible/view/HyperCellLayout$a;
    .locals 0

    iput p1, p0, Lmiuix/flexible/view/HyperCellLayout$a;->d:I

    return-object p0
.end method

.method public o(I)Lmiuix/flexible/view/HyperCellLayout$a;
    .locals 0

    iput p1, p0, Lmiuix/flexible/view/HyperCellLayout$a;->g:I

    return-object p0
.end method

.method public p(F)Lmiuix/flexible/view/HyperCellLayout$a;
    .locals 0

    iput p1, p0, Lmiuix/flexible/view/HyperCellLayout$a;->c:F

    return-object p0
.end method

.method public q(IIII)Lmiuix/flexible/view/HyperCellLayout$a;
    .locals 0

    invoke-virtual {p0, p1}, Landroid/view/ViewGroup$MarginLayoutParams;->setMarginStart(I)V

    invoke-virtual {p0, p3}, Landroid/view/ViewGroup$MarginLayoutParams;->setMarginEnd(I)V

    iput p2, p0, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    iput p4, p0, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    return-object p0
.end method

.method public r(I)Lmiuix/flexible/view/HyperCellLayout$a;
    .locals 0

    iput p1, p0, Lmiuix/flexible/view/HyperCellLayout$a;->a:I

    return-object p0
.end method

.method public s(I)Lmiuix/flexible/view/HyperCellLayout$a;
    .locals 0

    iput p1, p0, Lmiuix/flexible/view/HyperCellLayout$a;->e:I

    return-object p0
.end method

.method public t(I)Lmiuix/flexible/view/HyperCellLayout$a;
    .locals 0

    iput p1, p0, Lmiuix/flexible/view/HyperCellLayout$a;->f:I

    return-object p0
.end method

.method public u(F)Lmiuix/flexible/view/HyperCellLayout$a;
    .locals 0

    iput p1, p0, Lmiuix/flexible/view/HyperCellLayout$a;->b:F

    return-object p0
.end method
