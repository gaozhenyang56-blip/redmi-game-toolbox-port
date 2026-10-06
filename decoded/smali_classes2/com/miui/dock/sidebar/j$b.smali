.class Lcom/miui/dock/sidebar/j$b;
.super Lmiuix/animation/listener/TransitionListener;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/dock/sidebar/j;->e0()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/miui/dock/sidebar/j;


# direct methods
.method constructor <init>(Lcom/miui/dock/sidebar/j;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/dock/sidebar/j$b;->a:Lcom/miui/dock/sidebar/j;

    invoke-direct {p0}, Lmiuix/animation/listener/TransitionListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onBegin(Ljava/lang/Object;Ljava/util/Collection;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Ljava/util/Collection<",
            "Lmiuix/animation/listener/UpdateInfo;",
            ">;)V"
        }
    .end annotation

    invoke-super {p0, p1, p2}, Lmiuix/animation/listener/TransitionListener;->onBegin(Ljava/lang/Object;Ljava/util/Collection;)V

    iget-object p1, p0, Lcom/miui/dock/sidebar/j$b;->a:Lcom/miui/dock/sidebar/j;

    invoke-virtual {p1}, Lcom/miui/dock/sidebar/j;->Y()V

    const-string p1, "SidebarWrapper"

    const-string p2, "onBegin: do not showSidebarMovingViews"

    invoke-static {p1, p2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public onUpdate(Ljava/lang/Object;Ljava/util/Collection;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Ljava/util/Collection<",
            "Lmiuix/animation/listener/UpdateInfo;",
            ">;)V"
        }
    .end annotation

    invoke-super {p0, p1, p2}, Lmiuix/animation/listener/TransitionListener;->onUpdate(Ljava/lang/Object;Ljava/util/Collection;)V

    const-string p1, "lineWidth"

    invoke-static {p2, p1}, Lmiuix/animation/listener/UpdateInfo;->findByName(Ljava/util/Collection;Ljava/lang/String;)Lmiuix/animation/listener/UpdateInfo;

    move-result-object p1

    if-eqz p1, :cond_0

    invoke-static {p1}, Lcom/miui/dock/sidebar/a;->b(Lmiuix/animation/listener/UpdateInfo;)F

    move-result v0

    iget-object v1, p0, Lcom/miui/dock/sidebar/j$b;->a:Lcom/miui/dock/sidebar/j;

    invoke-static {v1}, Lcom/miui/dock/sidebar/j;->b(Lcom/miui/dock/sidebar/j;)Lcom/miui/dock/sidebar/c;

    move-result-object v1

    iget-object v2, p0, Lcom/miui/dock/sidebar/j$b;->a:Lcom/miui/dock/sidebar/j;

    invoke-static {v2}, Lcom/miui/dock/sidebar/j;->c(Lcom/miui/dock/sidebar/j;)I

    move-result v2

    int-to-float v2, v2

    iget-object v3, p0, Lcom/miui/dock/sidebar/j$b;->a:Lcom/miui/dock/sidebar/j;

    invoke-static {v3}, Lcom/miui/dock/sidebar/j;->d(Lcom/miui/dock/sidebar/j;)I

    move-result v3

    int-to-float v3, v3

    mul-float/2addr v3, v0

    sub-float/2addr v2, v3

    float-to-int v2, v2

    iput v2, v1, Lcom/miui/dock/sidebar/c;->g:I

    iget-object v1, p0, Lcom/miui/dock/sidebar/j$b;->a:Lcom/miui/dock/sidebar/j;

    invoke-static {v1}, Lcom/miui/dock/sidebar/j;->b(Lcom/miui/dock/sidebar/j;)Lcom/miui/dock/sidebar/c;

    move-result-object v1

    invoke-virtual {p1}, Lmiuix/animation/listener/UpdateInfo;->getFloatValue()F

    move-result p1

    iget-object v2, p0, Lcom/miui/dock/sidebar/j$b;->a:Lcom/miui/dock/sidebar/j;

    float-to-double v3, v0

    invoke-static {v2, v3, v4}, Lcom/miui/dock/sidebar/j;->e(Lcom/miui/dock/sidebar/j;D)F

    move-result v0

    invoke-virtual {v1, p1, v0}, Lcom/miui/dock/sidebar/c;->n(FF)V

    :cond_0
    const-string p1, "layoutX"

    invoke-static {p2, p1}, Lmiuix/animation/listener/UpdateInfo;->findByName(Ljava/util/Collection;Ljava/lang/String;)Lmiuix/animation/listener/UpdateInfo;

    move-result-object p1

    if-eqz p1, :cond_1

    iget-object p2, p0, Lcom/miui/dock/sidebar/j$b;->a:Lcom/miui/dock/sidebar/j;

    invoke-virtual {p1}, Lmiuix/animation/listener/UpdateInfo;->getIntValue()I

    move-result p1

    invoke-static {p2, p1}, Lcom/miui/dock/sidebar/j;->f(Lcom/miui/dock/sidebar/j;I)V

    iget-object p1, p0, Lcom/miui/dock/sidebar/j$b;->a:Lcom/miui/dock/sidebar/j;

    invoke-static {p1}, Lcom/miui/dock/sidebar/j;->g(Lcom/miui/dock/sidebar/j;)Landroid/view/View;

    move-result-object p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/miui/dock/sidebar/j$b;->a:Lcom/miui/dock/sidebar/j;

    invoke-static {p1}, Lcom/miui/dock/sidebar/j;->h(Lcom/miui/dock/sidebar/j;)Lcom/miui/dock/sidebar/RegionSamplingImageView;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    check-cast p1, Landroid/view/WindowManager$LayoutParams;

    iget-object p2, p0, Lcom/miui/dock/sidebar/j$b;->a:Lcom/miui/dock/sidebar/j;

    invoke-static {p2}, Lcom/miui/dock/sidebar/j;->g(Lcom/miui/dock/sidebar/j;)Landroid/view/View;

    move-result-object p2

    invoke-virtual {p2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p2

    check-cast p2, Landroid/view/WindowManager$LayoutParams;

    iget v0, p1, Landroid/view/WindowManager$LayoutParams;->gravity:I

    iput v0, p2, Landroid/view/WindowManager$LayoutParams;->gravity:I

    iget-object v0, p0, Lcom/miui/dock/sidebar/j$b;->a:Lcom/miui/dock/sidebar/j;

    invoke-static {v0}, Lcom/miui/dock/sidebar/j;->g(Lcom/miui/dock/sidebar/j;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/miui/dock/sidebar/j;->r(Landroid/content/Context;)I

    move-result v0

    iget p1, p1, Landroid/view/WindowManager$LayoutParams;->x:I

    add-int/2addr v0, p1

    iput v0, p2, Landroid/view/WindowManager$LayoutParams;->x:I

    iget-object p1, p0, Lcom/miui/dock/sidebar/j$b;->a:Lcom/miui/dock/sidebar/j;

    invoke-static {p1}, Lcom/miui/dock/sidebar/j;->i(Lcom/miui/dock/sidebar/j;)Ls8/h;

    move-result-object p1

    iget-object v0, p0, Lcom/miui/dock/sidebar/j$b;->a:Lcom/miui/dock/sidebar/j;

    invoke-static {v0}, Lcom/miui/dock/sidebar/j;->g(Lcom/miui/dock/sidebar/j;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {p1, v0, p2}, Ls8/h;->v1(Landroid/view/View;Landroid/view/WindowManager$LayoutParams;)V

    :cond_1
    return-void
.end method
