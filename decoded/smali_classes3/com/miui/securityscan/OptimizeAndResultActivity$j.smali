.class Lcom/miui/securityscan/OptimizeAndResultActivity$j;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/ViewStub$OnInflateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/securityscan/OptimizeAndResultActivity;->E0()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/miui/securityscan/OptimizeAndResultActivity;


# direct methods
.method constructor <init>(Lcom/miui/securityscan/OptimizeAndResultActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/securityscan/OptimizeAndResultActivity$j;->a:Lcom/miui/securityscan/OptimizeAndResultActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onInflate(Landroid/view/ViewStub;Landroid/view/View;)V
    .locals 3

    iget-object p1, p0, Lcom/miui/securityscan/OptimizeAndResultActivity$j;->a:Lcom/miui/securityscan/OptimizeAndResultActivity;

    invoke-static {p1, p2}, Lcom/miui/securityscan/OptimizeAndResultActivity;->j0(Lcom/miui/securityscan/OptimizeAndResultActivity;Landroid/view/View;)Landroid/view/View;

    iget-object p1, p0, Lcom/miui/securityscan/OptimizeAndResultActivity$j;->a:Lcom/miui/securityscan/OptimizeAndResultActivity;

    invoke-static {p1}, Lcom/miui/securityscan/OptimizeAndResultActivity;->i0(Lcom/miui/securityscan/OptimizeAndResultActivity;)Landroid/view/View;

    move-result-object p1

    iget-object v0, p0, Lcom/miui/securityscan/OptimizeAndResultActivity$j;->a:Lcom/miui/securityscan/OptimizeAndResultActivity;

    invoke-static {v0}, Lcom/miui/securityscan/OptimizeAndResultActivity;->p0(Lcom/miui/securityscan/OptimizeAndResultActivity;)I

    move-result v0

    iget-object v1, p0, Lcom/miui/securityscan/OptimizeAndResultActivity$j;->a:Lcom/miui/securityscan/OptimizeAndResultActivity;

    invoke-static {v1}, Lcom/miui/securityscan/OptimizeAndResultActivity;->p0(Lcom/miui/securityscan/OptimizeAndResultActivity;)I

    move-result v1

    const/4 v2, 0x0

    invoke-virtual {p1, v0, v2, v1, v2}, Landroid/view/View;->setPaddingRelative(IIII)V

    iget-object p1, p0, Lcom/miui/securityscan/OptimizeAndResultActivity$j;->a:Lcom/miui/securityscan/OptimizeAndResultActivity;

    const v0, 0x7f0b0a27

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Lcom/miui/common/customview/AutoPasteListView;

    invoke-static {p1, p2}, Lcom/miui/securityscan/OptimizeAndResultActivity;->r0(Lcom/miui/securityscan/OptimizeAndResultActivity;Lcom/miui/common/customview/AutoPasteListView;)Lcom/miui/common/customview/AutoPasteListView;

    sget-boolean p1, Lmiui/os/Build;->IS_INTERNATIONAL_BUILD:Z

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/miui/securityscan/OptimizeAndResultActivity$j;->a:Lcom/miui/securityscan/OptimizeAndResultActivity;

    invoke-static {p1}, Lcom/miui/securityscan/OptimizeAndResultActivity;->q0(Lcom/miui/securityscan/OptimizeAndResultActivity;)Lcom/miui/common/customview/AutoPasteListView;

    move-result-object p1

    const/4 p2, 0x2

    invoke-virtual {p1, p2}, Landroid/view/View;->setOverScrollMode(I)V

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lcom/miui/securityscan/OptimizeAndResultActivity$j;->a:Lcom/miui/securityscan/OptimizeAndResultActivity;

    invoke-static {p1}, Lcom/miui/securityscan/OptimizeAndResultActivity;->q0(Lcom/miui/securityscan/OptimizeAndResultActivity;)Lcom/miui/common/customview/AutoPasteListView;

    move-result-object p1

    invoke-virtual {p1, v2}, Landroid/view/View;->setOverScrollMode(I)V

    :goto_0
    iget-object p1, p0, Lcom/miui/securityscan/OptimizeAndResultActivity$j;->a:Lcom/miui/securityscan/OptimizeAndResultActivity;

    invoke-static {p1}, Lcom/miui/securityscan/OptimizeAndResultActivity;->q0(Lcom/miui/securityscan/OptimizeAndResultActivity;)Lcom/miui/common/customview/AutoPasteListView;

    move-result-object p1

    const/4 p2, 0x1

    invoke-virtual {p1, p2}, Lcom/miui/common/customview/AutoPasteListView;->setTopDraggable(Z)V

    iget-object p1, p0, Lcom/miui/securityscan/OptimizeAndResultActivity$j;->a:Lcom/miui/securityscan/OptimizeAndResultActivity;

    invoke-static {p1}, Lcom/miui/securityscan/OptimizeAndResultActivity;->q0(Lcom/miui/securityscan/OptimizeAndResultActivity;)Lcom/miui/common/customview/AutoPasteListView;

    move-result-object p1

    invoke-virtual {p1, v2}, Lcom/miui/common/customview/AutoPasteListView;->setAlignItem(I)V

    iget-object p1, p0, Lcom/miui/securityscan/OptimizeAndResultActivity$j;->a:Lcom/miui/securityscan/OptimizeAndResultActivity;

    invoke-static {p1}, Lcom/miui/securityscan/OptimizeAndResultActivity;->q0(Lcom/miui/securityscan/OptimizeAndResultActivity;)Lcom/miui/common/customview/AutoPasteListView;

    move-result-object p1

    new-instance p2, Lcom/miui/securityscan/OptimizeAndResultActivity$j$a;

    invoke-direct {p2, p0}, Lcom/miui/securityscan/OptimizeAndResultActivity$j$a;-><init>(Lcom/miui/securityscan/OptimizeAndResultActivity$j;)V

    invoke-virtual {p1, p2}, Lcom/miui/common/customview/AutoPasteListView;->setOnScrollPercentChangeListener(Lcom/miui/common/customview/AutoPasteListView$c;)V

    return-void
.end method
