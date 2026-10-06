.class public Lcom/miui/gamebooster/globalgame/global/GlobalCardVH;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation build Landroidx/annotation/Keep;
.end annotation


# instance fields
.field private alter:I

.field public rootView:Landroid/view/View;

.field private verticalPadding:[I


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x2

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/miui/gamebooster/globalgame/global/GlobalCardVH;->verticalPadding:[I

    return-void
.end method

.method public static gapItemVerticalPadding(Landroid/content/Context;)I
    .locals 1

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    const v0, 0x7f07025d

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result p0

    mul-int/lit8 p0, p0, 0x2

    return p0
.end method


# virtual methods
.method public custom(Landroid/view/View;ZZ)V
    .locals 2

    iput-object p1, p0, Lcom/miui/gamebooster/globalgame/global/GlobalCardVH;->rootView:Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v0, 0x7f07025d

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result p1

    iput p1, p0, Lcom/miui/gamebooster/globalgame/global/GlobalCardVH;->alter:I

    iget-object v0, p0, Lcom/miui/gamebooster/globalgame/global/GlobalCardVH;->verticalPadding:[I

    const/4 v1, 0x0

    aput p1, v0, v1

    const/4 v1, 0x1

    aput p1, v0, v1

    if-nez p2, :cond_0

    if-nez p3, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0, p2, p3}, Lcom/miui/gamebooster/globalgame/global/GlobalCardVH;->refreshPadding(ZZ)V

    return-void
.end method

.method public refreshPadding(ZZ)V
    .locals 6

    iget-object v0, p0, Lcom/miui/gamebooster/globalgame/global/GlobalCardVH;->rootView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getPaddingLeft()I

    move-result v1

    iget-object v2, p0, Lcom/miui/gamebooster/globalgame/global/GlobalCardVH;->verticalPadding:[I

    const/4 v3, 0x0

    aget v2, v2, v3

    if-eqz p1, :cond_0

    iget p1, p0, Lcom/miui/gamebooster/globalgame/global/GlobalCardVH;->alter:I

    goto :goto_0

    :cond_0
    move p1, v3

    :goto_0
    add-int/2addr v2, p1

    iget-object p1, p0, Lcom/miui/gamebooster/globalgame/global/GlobalCardVH;->rootView:Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->getPaddingRight()I

    move-result p1

    iget-object v4, p0, Lcom/miui/gamebooster/globalgame/global/GlobalCardVH;->verticalPadding:[I

    const/4 v5, 0x1

    aget v4, v4, v5

    if-eqz p2, :cond_1

    iget v3, p0, Lcom/miui/gamebooster/globalgame/global/GlobalCardVH;->alter:I

    :cond_1
    add-int/2addr v4, v3

    invoke-virtual {v0, v1, v2, p1, v4}, Landroid/view/View;->setPadding(IIII)V

    return-void
.end method
