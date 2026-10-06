.class Lcom/miui/optimizemanage/ResultFragment$d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lfl/f;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/optimizemanage/ResultFragment;->M0()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/miui/optimizemanage/ResultFragment;


# direct methods
.method constructor <init>(Lcom/miui/optimizemanage/ResultFragment;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/optimizemanage/ResultFragment$d;->a:Lcom/miui/optimizemanage/ResultFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(IIZ)V
    .locals 0

    return-void
.end method

.method public onScrollChange(Landroid/view/View;IIII)V
    .locals 0

    if-ltz p3, :cond_3

    iget-object p1, p0, Lcom/miui/optimizemanage/ResultFragment$d;->a:Lcom/miui/optimizemanage/ResultFragment;

    invoke-static {p1}, Lcom/miui/optimizemanage/ResultFragment;->x0(Lcom/miui/optimizemanage/ResultFragment;)Lcom/miui/common/customview/AutoPasteListView;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/AdapterView;->getFirstVisiblePosition()I

    move-result p1

    if-lez p1, :cond_0

    goto :goto_1

    :cond_0
    iget-object p1, p0, Lcom/miui/optimizemanage/ResultFragment$d;->a:Lcom/miui/optimizemanage/ResultFragment;

    invoke-static {p1}, Lcom/miui/optimizemanage/ResultFragment;->x0(Lcom/miui/optimizemanage/ResultFragment;)Lcom/miui/common/customview/AutoPasteListView;

    move-result-object p1

    invoke-virtual {p1}, Lcom/miui/common/customview/AutoPasteListView;->getAlignHeight()I

    move-result p1

    if-nez p1, :cond_1

    return-void

    :cond_1
    iget-object p2, p0, Lcom/miui/optimizemanage/ResultFragment$d;->a:Lcom/miui/optimizemanage/ResultFragment;

    invoke-static {p2}, Lcom/miui/optimizemanage/ResultFragment;->x0(Lcom/miui/optimizemanage/ResultFragment;)Lcom/miui/common/customview/AutoPasteListView;

    move-result-object p2

    invoke-virtual {p2}, Lcom/miui/common/customview/AutoPasteListView;->getFirstViewScrollTop()I

    move-result p2

    invoke-static {p2}, Ljava/lang/Math;->abs(I)I

    move-result p2

    add-int/2addr p3, p2

    iget-object p2, p0, Lcom/miui/optimizemanage/ResultFragment$d;->a:Lcom/miui/optimizemanage/ResultFragment;

    invoke-static {p2}, Lcom/miui/optimizemanage/ResultFragment;->y0(Lcom/miui/optimizemanage/ResultFragment;)Landroid/widget/LinearLayout;

    move-result-object p2

    if-le p3, p1, :cond_2

    const/4 p1, 0x0

    goto :goto_0

    :cond_2
    sub-int p3, p1, p3

    int-to-float p3, p3

    int-to-float p1, p1

    const/high16 p4, 0x3f800000    # 1.0f

    mul-float/2addr p1, p4

    div-float p1, p3, p1

    :goto_0
    invoke-virtual {p2, p1}, Landroid/view/View;->setAlpha(F)V

    :cond_3
    :goto_1
    return-void
.end method
