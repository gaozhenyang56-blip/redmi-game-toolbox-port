.class Lcom/miui/powercenter/bootshutdown/a$b;
.super Landroid/widget/ArrayAdapter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/powercenter/bootshutdown/a;->k()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/widget/ArrayAdapter<",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/miui/powercenter/bootshutdown/a;


# direct methods
.method constructor <init>(Lcom/miui/powercenter/bootshutdown/a;Landroid/content/Context;ILjava/util/List;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/powercenter/bootshutdown/a$b;->a:Lcom/miui/powercenter/bootshutdown/a;

    invoke-direct {p0, p2, p3, p4}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;ILjava/util/List;)V

    return-void
.end method

.method private a(Landroid/content/Context;IILandroid/view/View;)Landroid/view/View;
    .locals 5

    invoke-virtual {p4}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    invoke-virtual {p4}, Landroid/view/View;->getPaddingStart()I

    move-result v0

    invoke-virtual {p4}, Landroid/view/View;->getPaddingTop()I

    invoke-virtual {p4}, Landroid/view/View;->getPaddingEnd()I

    move-result v1

    invoke-virtual {p4}, Landroid/view/View;->getPaddingBottom()I

    const/4 v2, 0x1

    const v3, 0x7f071335

    if-ne p2, v2, :cond_1

    :cond_0
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    invoke-virtual {p2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p2

    :goto_0
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    goto :goto_1

    :cond_1
    const v4, 0x7f071333

    if-nez p3, :cond_2

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    invoke-virtual {p2, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p2

    goto :goto_0

    :cond_2
    sub-int/2addr p2, v2

    if-ne p3, p2, :cond_0

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    invoke-virtual {p2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p2

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    :goto_1
    invoke-virtual {p4, v0, p2, v1, p1}, Landroid/view/View;->setPaddingRelative(IIII)V

    return-object p4
.end method


# virtual methods
.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 3

    invoke-super {p0, p1, p2, p3}, Landroid/widget/ArrayAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    invoke-virtual {p0}, Landroid/widget/ArrayAdapter;->getContext()Landroid/content/Context;

    move-result-object p3

    invoke-interface {p0}, Landroid/widget/Adapter;->getCount()I

    move-result v0

    invoke-direct {p0, p3, v0, p1, p2}, Lcom/miui/powercenter/bootshutdown/a$b;->a(Landroid/content/Context;IILandroid/view/View;)Landroid/view/View;

    move-result-object p1

    const/4 p2, 0x1

    new-array p3, p2, [Landroid/view/View;

    const/4 v0, 0x0

    aput-object p1, p3, v0

    invoke-static {p3}, Lmiuix/animation/Folme;->useAt([Landroid/view/View;)Lmiuix/animation/IFolme;

    move-result-object p3

    invoke-interface {p3}, Lmiuix/animation/IFolme;->touch()Lmiuix/animation/ITouchStyle;

    move-result-object p3

    new-array v1, v0, [Lmiuix/animation/ITouchStyle$TouchType;

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-interface {p3, v2, v1}, Lmiuix/animation/ITouchStyle;->setScale(F[Lmiuix/animation/ITouchStyle$TouchType;)Lmiuix/animation/ITouchStyle;

    move-result-object p3

    new-array v1, v0, [Lmiuix/animation/base/AnimConfig;

    invoke-interface {p3, p1, v1}, Lmiuix/animation/ITouchStyle;->handleTouchOf(Landroid/view/View;[Lmiuix/animation/base/AnimConfig;)V

    new-array p2, p2, [Landroid/view/View;

    aput-object p1, p2, v0

    invoke-static {p2}, Lmiuix/animation/Folme;->useAt([Landroid/view/View;)Lmiuix/animation/IFolme;

    move-result-object p2

    invoke-interface {p2}, Lmiuix/animation/IFolme;->hover()Lmiuix/animation/IHoverStyle;

    move-result-object p2

    sget-object p3, Lmiuix/animation/IHoverStyle$HoverEffect;->NORMAL:Lmiuix/animation/IHoverStyle$HoverEffect;

    invoke-interface {p2, p3}, Lmiuix/animation/IHoverStyle;->setEffect(Lmiuix/animation/IHoverStyle$HoverEffect;)Lmiuix/animation/IHoverStyle;

    move-result-object p2

    new-array p3, v0, [Lmiuix/animation/base/AnimConfig;

    invoke-interface {p2, p1, p3}, Lmiuix/animation/IHoverStyle;->handleHoverOf(Landroid/view/View;[Lmiuix/animation/base/AnimConfig;)V

    return-object p1
.end method
