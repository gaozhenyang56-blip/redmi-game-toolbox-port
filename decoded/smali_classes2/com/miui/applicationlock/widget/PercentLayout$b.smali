.class public Lcom/miui/applicationlock/widget/PercentLayout$b;
.super Landroid/widget/RelativeLayout$LayoutParams;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/applicationlock/widget/PercentLayout;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "b"
.end annotation


# instance fields
.field private a:F

.field private b:F

.field private c:F

.field private d:F

.field private e:F

.field private f:F


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    invoke-direct {p0, p1, p2}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    sget-object v0, Lef/y;->d3:[I

    invoke-virtual {p1, p2, v0}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object p1

    const/4 p2, 0x5

    const/4 v0, 0x0

    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result p2

    iput p2, p0, Lcom/miui/applicationlock/widget/PercentLayout$b;->a:F

    const/4 p2, 0x0

    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result p2

    iput p2, p0, Lcom/miui/applicationlock/widget/PercentLayout$b;->b:F

    const/4 p2, 0x2

    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result p2

    iput p2, p0, Lcom/miui/applicationlock/widget/PercentLayout$b;->c:F

    const/4 p2, 0x3

    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result p2

    iput p2, p0, Lcom/miui/applicationlock/widget/PercentLayout$b;->d:F

    const/4 p2, 0x4

    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result p2

    iput p2, p0, Lcom/miui/applicationlock/widget/PercentLayout$b;->e:F

    const/4 p2, 0x1

    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result p2

    iput p2, p0, Lcom/miui/applicationlock/widget/PercentLayout$b;->f:F

    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    return-void
.end method

.method static synthetic a(Lcom/miui/applicationlock/widget/PercentLayout$b;)F
    .locals 0

    iget p0, p0, Lcom/miui/applicationlock/widget/PercentLayout$b;->a:F

    return p0
.end method

.method static synthetic b(Lcom/miui/applicationlock/widget/PercentLayout$b;)F
    .locals 0

    iget p0, p0, Lcom/miui/applicationlock/widget/PercentLayout$b;->b:F

    return p0
.end method

.method static synthetic c(Lcom/miui/applicationlock/widget/PercentLayout$b;)F
    .locals 0

    iget p0, p0, Lcom/miui/applicationlock/widget/PercentLayout$b;->c:F

    return p0
.end method

.method static synthetic d(Lcom/miui/applicationlock/widget/PercentLayout$b;)F
    .locals 0

    iget p0, p0, Lcom/miui/applicationlock/widget/PercentLayout$b;->d:F

    return p0
.end method

.method static synthetic e(Lcom/miui/applicationlock/widget/PercentLayout$b;)F
    .locals 0

    iget p0, p0, Lcom/miui/applicationlock/widget/PercentLayout$b;->e:F

    return p0
.end method

.method static synthetic f(Lcom/miui/applicationlock/widget/PercentLayout$b;)F
    .locals 0

    iget p0, p0, Lcom/miui/applicationlock/widget/PercentLayout$b;->f:F

    return p0
.end method
