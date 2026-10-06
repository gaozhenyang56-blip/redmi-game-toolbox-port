.class Lcom/miui/securityscan/MainFragment$y;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/ViewStub$OnInflateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/securityscan/MainFragment;->U1()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/miui/securityscan/MainFragment;


# direct methods
.method constructor <init>(Lcom/miui/securityscan/MainFragment;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/securityscan/MainFragment$y;->a:Lcom/miui/securityscan/MainFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onInflate(Landroid/view/ViewStub;Landroid/view/View;)V
    .locals 1

    iget-object p1, p0, Lcom/miui/securityscan/MainFragment$y;->a:Lcom/miui/securityscan/MainFragment;

    invoke-static {p1, p2}, Lcom/miui/securityscan/MainFragment;->M0(Lcom/miui/securityscan/MainFragment;Landroid/view/View;)Landroid/view/View;

    iget-object p1, p0, Lcom/miui/securityscan/MainFragment$y;->a:Lcom/miui/securityscan/MainFragment;

    const v0, 0x7f0b0a27

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Lcom/miui/common/customview/AutoPasteListView;

    invoke-static {p1, p2}, Lcom/miui/securityscan/MainFragment;->O0(Lcom/miui/securityscan/MainFragment;Lcom/miui/common/customview/AutoPasteListView;)Lcom/miui/common/customview/AutoPasteListView;

    sget-boolean p1, Lmiui/os/Build;->IS_INTERNATIONAL_BUILD:Z

    const/4 p2, 0x0

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/miui/securityscan/MainFragment$y;->a:Lcom/miui/securityscan/MainFragment;

    invoke-static {p1}, Lcom/miui/securityscan/MainFragment;->N0(Lcom/miui/securityscan/MainFragment;)Lcom/miui/common/customview/AutoPasteListView;

    move-result-object p1

    const/4 v0, 0x2

    invoke-virtual {p1, v0}, Landroid/view/View;->setOverScrollMode(I)V

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lcom/miui/securityscan/MainFragment$y;->a:Lcom/miui/securityscan/MainFragment;

    invoke-static {p1}, Lcom/miui/securityscan/MainFragment;->N0(Lcom/miui/securityscan/MainFragment;)Lcom/miui/common/customview/AutoPasteListView;

    move-result-object p1

    invoke-virtual {p1, p2}, Landroid/view/View;->setOverScrollMode(I)V

    :goto_0
    iget-object p1, p0, Lcom/miui/securityscan/MainFragment$y;->a:Lcom/miui/securityscan/MainFragment;

    invoke-static {p1}, Lcom/miui/securityscan/MainFragment;->N0(Lcom/miui/securityscan/MainFragment;)Lcom/miui/common/customview/AutoPasteListView;

    move-result-object p1

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lcom/miui/common/customview/AutoPasteListView;->setTopDraggable(Z)V

    iget-object p1, p0, Lcom/miui/securityscan/MainFragment$y;->a:Lcom/miui/securityscan/MainFragment;

    invoke-static {p1}, Lcom/miui/securityscan/MainFragment;->N0(Lcom/miui/securityscan/MainFragment;)Lcom/miui/common/customview/AutoPasteListView;

    move-result-object p1

    invoke-virtual {p1, p2}, Lcom/miui/common/customview/AutoPasteListView;->setAlignItem(I)V

    iget-object p1, p0, Lcom/miui/securityscan/MainFragment$y;->a:Lcom/miui/securityscan/MainFragment;

    invoke-static {p1}, Lcom/miui/securityscan/MainFragment;->N0(Lcom/miui/securityscan/MainFragment;)Lcom/miui/common/customview/AutoPasteListView;

    move-result-object p1

    new-instance p2, Lcom/miui/securityscan/MainFragment$y$a;

    invoke-direct {p2, p0}, Lcom/miui/securityscan/MainFragment$y$a;-><init>(Lcom/miui/securityscan/MainFragment$y;)V

    invoke-virtual {p1, p2}, Lcom/miui/common/customview/AutoPasteListView;->setOnScrollPercentChangeListener(Lcom/miui/common/customview/AutoPasteListView$c;)V

    return-void
.end method
