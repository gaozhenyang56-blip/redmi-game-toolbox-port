.class Lcom/miui/gamebooster/windowmanager/GbNestedScrollView$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/gamebooster/windowmanager/GbNestedScrollView;->onFinishInflate()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/miui/gamebooster/windowmanager/GbNestedScrollView;


# direct methods
.method constructor <init>(Lcom/miui/gamebooster/windowmanager/GbNestedScrollView;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/gamebooster/windowmanager/GbNestedScrollView$b;->a:Lcom/miui/gamebooster/windowmanager/GbNestedScrollView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onGlobalLayout()V
    .locals 3

    iget-object v0, p0, Lcom/miui/gamebooster/windowmanager/GbNestedScrollView$b;->a:Lcom/miui/gamebooster/windowmanager/GbNestedScrollView;

    invoke-static {v0}, Lcom/miui/gamebooster/windowmanager/GbNestedScrollView;->T(Lcom/miui/gamebooster/windowmanager/GbNestedScrollView;)Landroidx/recyclerview/widget/RecyclerView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/ViewTreeObserver;->removeOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    iget-object v0, p0, Lcom/miui/gamebooster/windowmanager/GbNestedScrollView$b;->a:Lcom/miui/gamebooster/windowmanager/GbNestedScrollView;

    invoke-static {v0}, Lcom/miui/gamebooster/windowmanager/GbNestedScrollView;->T(Lcom/miui/gamebooster/windowmanager/GbNestedScrollView;)Landroidx/recyclerview/widget/RecyclerView;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getHeight()I

    move-result v1

    invoke-static {v0, v1}, Lcom/miui/gamebooster/windowmanager/GbNestedScrollView;->V(Lcom/miui/gamebooster/windowmanager/GbNestedScrollView;I)I

    iget-object v0, p0, Lcom/miui/gamebooster/windowmanager/GbNestedScrollView$b;->a:Lcom/miui/gamebooster/windowmanager/GbNestedScrollView;

    invoke-static {v0}, Lcom/miui/gamebooster/windowmanager/GbNestedScrollView;->T(Lcom/miui/gamebooster/windowmanager/GbNestedScrollView;)Landroidx/recyclerview/widget/RecyclerView;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/miui/gamebooster/windowmanager/GbNestedScrollView;->W(Lcom/miui/gamebooster/windowmanager/GbNestedScrollView;Landroidx/recyclerview/widget/RecyclerView;)V

    iget-object v0, p0, Lcom/miui/gamebooster/windowmanager/GbNestedScrollView$b;->a:Lcom/miui/gamebooster/windowmanager/GbNestedScrollView;

    invoke-static {v0}, Lcom/miui/gamebooster/windowmanager/GbNestedScrollView;->U(Lcom/miui/gamebooster/windowmanager/GbNestedScrollView;)I

    move-result v0

    iget-object v1, p0, Lcom/miui/gamebooster/windowmanager/GbNestedScrollView$b;->a:Lcom/miui/gamebooster/windowmanager/GbNestedScrollView;

    invoke-static {v1}, Lcom/miui/gamebooster/windowmanager/GbNestedScrollView;->X(Lcom/miui/gamebooster/windowmanager/GbNestedScrollView;)I

    move-result v1

    const-string v2, "GbNestedScrollView"

    if-le v0, v1, :cond_0

    iget-object v0, p0, Lcom/miui/gamebooster/windowmanager/GbNestedScrollView$b;->a:Lcom/miui/gamebooster/windowmanager/GbNestedScrollView;

    invoke-static {v0}, Lcom/miui/gamebooster/windowmanager/GbNestedScrollView;->Y(Lcom/miui/gamebooster/windowmanager/GbNestedScrollView;)Landroidx/recyclerview/widget/RecyclerView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    iget-object v0, p0, Lcom/miui/gamebooster/windowmanager/GbNestedScrollView$b;->a:Lcom/miui/gamebooster/windowmanager/GbNestedScrollView;

    invoke-static {v0}, Lcom/miui/gamebooster/windowmanager/GbNestedScrollView;->Z(Lcom/miui/gamebooster/windowmanager/GbNestedScrollView;)Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setMainViewHeight:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/miui/gamebooster/windowmanager/GbNestedScrollView$b;->a:Lcom/miui/gamebooster/windowmanager/GbNestedScrollView;

    invoke-static {v1}, Lcom/miui/gamebooster/windowmanager/GbNestedScrollView;->X(Lcom/miui/gamebooster/windowmanager/GbNestedScrollView;)I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/miui/gamebooster/windowmanager/GbNestedScrollView$b;->a:Lcom/miui/gamebooster/windowmanager/GbNestedScrollView;

    invoke-static {v0}, Lcom/miui/gamebooster/windowmanager/GbNestedScrollView;->X(Lcom/miui/gamebooster/windowmanager/GbNestedScrollView;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/miui/gamebooster/windowmanager/GbNestedScrollView;->setMainViewHeight(I)V

    :cond_2
    iget-object v0, p0, Lcom/miui/gamebooster/windowmanager/GbNestedScrollView$b;->a:Lcom/miui/gamebooster/windowmanager/GbNestedScrollView;

    invoke-static {v0}, Lcom/miui/gamebooster/windowmanager/GbNestedScrollView;->a0(Lcom/miui/gamebooster/windowmanager/GbNestedScrollView;)I

    move-result v0

    if-lez v0, :cond_3

    iget-object v0, p0, Lcom/miui/gamebooster/windowmanager/GbNestedScrollView$b;->a:Lcom/miui/gamebooster/windowmanager/GbNestedScrollView;

    invoke-static {v0}, Lcom/miui/gamebooster/windowmanager/GbNestedScrollView;->a0(Lcom/miui/gamebooster/windowmanager/GbNestedScrollView;)I

    move-result v1

    invoke-static {v0, v1}, Lcom/miui/gamebooster/windowmanager/GbNestedScrollView;->V(Lcom/miui/gamebooster/windowmanager/GbNestedScrollView;I)I

    iget-object v0, p0, Lcom/miui/gamebooster/windowmanager/GbNestedScrollView$b;->a:Lcom/miui/gamebooster/windowmanager/GbNestedScrollView;

    invoke-static {v0}, Lcom/miui/gamebooster/windowmanager/GbNestedScrollView;->a0(Lcom/miui/gamebooster/windowmanager/GbNestedScrollView;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/miui/gamebooster/windowmanager/GbNestedScrollView;->setMainViewHeight(I)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "collapse height : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/miui/gamebooster/windowmanager/GbNestedScrollView$b;->a:Lcom/miui/gamebooster/windowmanager/GbNestedScrollView;

    invoke-static {v1}, Lcom/miui/gamebooster/windowmanager/GbNestedScrollView;->a0(Lcom/miui/gamebooster/windowmanager/GbNestedScrollView;)I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    iget-object v0, p0, Lcom/miui/gamebooster/windowmanager/GbNestedScrollView$b;->a:Lcom/miui/gamebooster/windowmanager/GbNestedScrollView;

    invoke-static {v0}, Lcom/miui/gamebooster/windowmanager/GbNestedScrollView;->N(Lcom/miui/gamebooster/windowmanager/GbNestedScrollView;)V

    return-void
.end method
