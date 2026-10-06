.class Ls8/h$d;
.super Lmiuix/animation/listener/TransitionListener;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ls8/h;->t0(ILcom/miui/dock/sidebar/j;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/miui/dock/sidebar/j;

.field final synthetic b:Landroid/view/WindowManager$LayoutParams;

.field final synthetic c:Landroid/view/WindowManager$LayoutParams;

.field final synthetic d:I

.field final synthetic e:Ls8/h;


# direct methods
.method constructor <init>(Ls8/h;Lcom/miui/dock/sidebar/j;Landroid/view/WindowManager$LayoutParams;Landroid/view/WindowManager$LayoutParams;I)V
    .locals 0

    iput-object p1, p0, Ls8/h$d;->e:Ls8/h;

    iput-object p2, p0, Ls8/h$d;->a:Lcom/miui/dock/sidebar/j;

    iput-object p3, p0, Ls8/h$d;->b:Landroid/view/WindowManager$LayoutParams;

    iput-object p4, p0, Ls8/h$d;->c:Landroid/view/WindowManager$LayoutParams;

    iput p5, p0, Ls8/h$d;->d:I

    invoke-direct {p0}, Lmiuix/animation/listener/TransitionListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onBegin(Ljava/lang/Object;)V
    .locals 1

    invoke-super {p0, p1}, Lmiuix/animation/listener/TransitionListener;->onBegin(Ljava/lang/Object;)V

    iget-object p1, p0, Ls8/h$d;->a:Lcom/miui/dock/sidebar/j;

    invoke-virtual {p1}, Lcom/miui/dock/sidebar/j;->u()Lcom/miui/dock/sidebar/b;

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/view/View;->setEnabled(Z)V

    iget-object p1, p0, Ls8/h$d;->a:Lcom/miui/dock/sidebar/j;

    invoke-virtual {p1}, Lcom/miui/dock/sidebar/j;->w()Lcom/miui/dock/sidebar/RegionSamplingImageView;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/view/View;->setEnabled(Z)V

    return-void
.end method

.method public onCancel(Ljava/lang/Object;)V
    .locals 1

    invoke-super {p0, p1}, Lmiuix/animation/listener/TransitionListener;->onCancel(Ljava/lang/Object;)V

    iget-object p1, p0, Ls8/h$d;->a:Lcom/miui/dock/sidebar/j;

    invoke-virtual {p1}, Lcom/miui/dock/sidebar/j;->u()Lcom/miui/dock/sidebar/b;

    move-result-object p1

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/view/View;->setEnabled(Z)V

    iget-object p1, p0, Ls8/h$d;->a:Lcom/miui/dock/sidebar/j;

    invoke-virtual {p1}, Lcom/miui/dock/sidebar/j;->w()Lcom/miui/dock/sidebar/RegionSamplingImageView;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/view/View;->setEnabled(Z)V

    return-void
.end method

.method public onComplete(Ljava/lang/Object;)V
    .locals 1

    invoke-super {p0, p1}, Lmiuix/animation/listener/TransitionListener;->onComplete(Ljava/lang/Object;)V

    iget-object p1, p0, Ls8/h$d;->e:Ls8/h;

    iget v0, p0, Ls8/h$d;->d:I

    invoke-virtual {p1, v0}, Ls8/h;->R0(I)V

    iget-object p1, p0, Ls8/h$d;->a:Lcom/miui/dock/sidebar/j;

    invoke-virtual {p1}, Lcom/miui/dock/sidebar/j;->u()Lcom/miui/dock/sidebar/b;

    move-result-object p1

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/view/View;->setEnabled(Z)V

    iget-object p1, p0, Ls8/h$d;->a:Lcom/miui/dock/sidebar/j;

    invoke-virtual {p1}, Lcom/miui/dock/sidebar/j;->w()Lcom/miui/dock/sidebar/RegionSamplingImageView;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/view/View;->setEnabled(Z)V

    return-void
.end method

.method public onUpdate(Ljava/lang/Object;Ljava/util/Collection;)V
    .locals 1
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

    const-string p1, "sidebarY"

    invoke-static {p2, p1}, Lmiuix/animation/listener/UpdateInfo;->findByName(Ljava/util/Collection;Ljava/lang/String;)Lmiuix/animation/listener/UpdateInfo;

    move-result-object p1

    if-eqz p1, :cond_0

    iget-object p2, p0, Ls8/h$d;->b:Landroid/view/WindowManager$LayoutParams;

    invoke-virtual {p1}, Lmiuix/animation/listener/UpdateInfo;->getIntValue()I

    move-result v0

    iput v0, p2, Landroid/view/WindowManager$LayoutParams;->y:I

    iget-object p2, p0, Ls8/h$d;->c:Landroid/view/WindowManager$LayoutParams;

    invoke-virtual {p1}, Lmiuix/animation/listener/UpdateInfo;->getIntValue()I

    move-result p1

    iput p1, p2, Landroid/view/WindowManager$LayoutParams;->y:I

    iget-object p1, p0, Ls8/h$d;->e:Ls8/h;

    iget-object p2, p0, Ls8/h$d;->a:Lcom/miui/dock/sidebar/j;

    invoke-virtual {p2}, Lcom/miui/dock/sidebar/j;->u()Lcom/miui/dock/sidebar/b;

    move-result-object p2

    iget-object v0, p0, Ls8/h$d;->b:Landroid/view/WindowManager$LayoutParams;

    invoke-virtual {p1, p2, v0}, Ls8/h;->v1(Landroid/view/View;Landroid/view/WindowManager$LayoutParams;)V

    iget-object p1, p0, Ls8/h$d;->e:Ls8/h;

    iget-object p2, p0, Ls8/h$d;->a:Lcom/miui/dock/sidebar/j;

    invoke-virtual {p2}, Lcom/miui/dock/sidebar/j;->z()Landroid/widget/FrameLayout;

    move-result-object p2

    iget-object v0, p0, Ls8/h$d;->c:Landroid/view/WindowManager$LayoutParams;

    invoke-virtual {p1, p2, v0}, Ls8/h;->v1(Landroid/view/View;Landroid/view/WindowManager$LayoutParams;)V

    :cond_0
    return-void
.end method
