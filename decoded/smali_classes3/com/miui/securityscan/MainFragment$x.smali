.class Lcom/miui/securityscan/MainFragment$x;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/ViewStub$OnInflateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/securityscan/MainFragment;->T1()V
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

    iput-object p1, p0, Lcom/miui/securityscan/MainFragment$x;->a:Lcom/miui/securityscan/MainFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onInflate(Landroid/view/ViewStub;Landroid/view/View;)V
    .locals 1

    iget-object p1, p0, Lcom/miui/securityscan/MainFragment$x;->a:Lcom/miui/securityscan/MainFragment;

    check-cast p2, Lcom/miui/securityscan/ui/main/OptimizingBar;

    iput-object p2, p1, Lcom/miui/securityscan/MainFragment;->m:Lcom/miui/securityscan/ui/main/OptimizingBar;

    invoke-static {p1}, Lcom/miui/securityscan/MainFragment;->K0(Lcom/miui/securityscan/MainFragment;)V

    iget-object p1, p0, Lcom/miui/securityscan/MainFragment$x;->a:Lcom/miui/securityscan/MainFragment;

    iget-object p1, p1, Lcom/miui/securityscan/MainFragment;->m:Lcom/miui/securityscan/ui/main/OptimizingBar;

    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    check-cast p1, Landroid/widget/RelativeLayout$LayoutParams;

    iget-object p2, p0, Lcom/miui/securityscan/MainFragment$x;->a:Lcom/miui/securityscan/MainFragment;

    invoke-virtual {p2}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p2

    if-eqz p2, :cond_0

    invoke-static {p2}, Lx4/t;->B(Landroid/app/Activity;)Z

    move-result p2

    goto :goto_0

    :cond_0
    const/4 p2, 0x0

    :goto_0
    if-eqz p2, :cond_1

    iget-object p2, p0, Lcom/miui/securityscan/MainFragment$x;->a:Lcom/miui/securityscan/MainFragment;

    invoke-virtual {p2}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    const v0, 0x7f0716a4

    goto :goto_1

    :cond_1
    iget-object p2, p0, Lcom/miui/securityscan/MainFragment$x;->a:Lcom/miui/securityscan/MainFragment;

    invoke-virtual {p2}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    const v0, 0x7f0716a3

    :goto_1
    invoke-virtual {p2, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p2

    iput p2, p1, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    iget-object p2, p0, Lcom/miui/securityscan/MainFragment$x;->a:Lcom/miui/securityscan/MainFragment;

    iget-object p2, p2, Lcom/miui/securityscan/MainFragment;->m:Lcom/miui/securityscan/ui/main/OptimizingBar;

    invoke-virtual {p2, p1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object p1, p0, Lcom/miui/securityscan/MainFragment$x;->a:Lcom/miui/securityscan/MainFragment;

    iget-object p2, p1, Lcom/miui/securityscan/MainFragment;->m:Lcom/miui/securityscan/ui/main/OptimizingBar;

    iget-object p1, p1, Lcom/miui/securityscan/MainFragment;->h:Lzf/h;

    invoke-virtual {p2, p1}, Lcom/miui/securityscan/ui/main/OptimizingBar;->b(Landroid/os/Handler;)V

    return-void
.end method
