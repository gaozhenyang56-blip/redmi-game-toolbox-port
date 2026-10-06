.class public Lcom/miui/gamebooster/ui/touch/SeekBarMaskView;
.super Landroidx/constraintlayout/widget/ConstraintLayout;
.source "SourceFile"


# static fields
.field private static final c:[I


# instance fields
.field private a:[Ljava/lang/CharSequence;

.field private b:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x5

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Lcom/miui/gamebooster/ui/touch/SeekBarMaskView;->c:[I

    return-void

    nop

    :array_0
    .array-data 4
        0x7f0b0c8e
        0x7f0b0c8f
        0x7f0b0c90
        0x7f0b0c91
        0x7f0b0c92
    .end array-data
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/miui/gamebooster/ui/touch/SeekBarMaskView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Landroidx/constraintlayout/widget/ConstraintLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const p2, 0x7f03002c

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, Lcom/miui/gamebooster/ui/touch/SeekBarMaskView;->a:[Ljava/lang/CharSequence;

    const p2, 0x7f071dda

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    iput p1, p0, Lcom/miui/gamebooster/ui/touch/SeekBarMaskView;->b:I

    return-void
.end method


# virtual methods
.method protected onFinishInflate()V
    .locals 3

    invoke-super {p0}, Landroid/view/ViewGroup;->onFinishInflate()V

    iget-object v0, p0, Lcom/miui/gamebooster/ui/touch/SeekBarMaskView;->a:[Ljava/lang/CharSequence;

    if-eqz v0, :cond_1

    array-length v0, v0

    sget-object v1, Lcom/miui/gamebooster/ui/touch/SeekBarMaskView;->c:[I

    array-length v1, v1

    if-eq v0, v1, :cond_0

    goto :goto_1

    :cond_0
    invoke-static {}, La8/k2;->A()Z

    const/4 v0, 0x0

    :goto_0
    sget-object v1, Lcom/miui/gamebooster/ui/touch/SeekBarMaskView;->c:[I

    array-length v2, v1

    if-ge v0, v2, :cond_1

    aget v1, v1, v0

    invoke-virtual {p0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iget-object v2, p0, Lcom/miui/gamebooster/ui/touch/SeekBarMaskView;->a:[Ljava/lang/CharSequence;

    aget-object v2, v2, v0

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    :goto_1
    return-void
.end method
