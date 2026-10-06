.class Lcom/miui/gamebooster/brightness/QCToggleSliderView$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/widget/SeekBar$OnSeekBarChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/gamebooster/brightness/QCToggleSliderView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/miui/gamebooster/brightness/QCToggleSliderView;


# direct methods
.method constructor <init>(Lcom/miui/gamebooster/brightness/QCToggleSliderView;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/gamebooster/brightness/QCToggleSliderView$b;->a:Lcom/miui/gamebooster/brightness/QCToggleSliderView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onProgressChanged(Landroid/widget/SeekBar;IZ)V
    .locals 0

    iget-object p1, p0, Lcom/miui/gamebooster/brightness/QCToggleSliderView$b;->a:Lcom/miui/gamebooster/brightness/QCToggleSliderView;

    invoke-static {p1}, Lcom/miui/gamebooster/brightness/QCToggleSliderView;->j(Lcom/miui/gamebooster/brightness/QCToggleSliderView;)Z

    move-result p1

    if-nez p1, :cond_0

    return-void

    :cond_0
    iget-object p1, p0, Lcom/miui/gamebooster/brightness/QCToggleSliderView$b;->a:Lcom/miui/gamebooster/brightness/QCToggleSliderView;

    invoke-static {p1, p2}, Lcom/miui/gamebooster/brightness/QCToggleSliderView;->l(Lcom/miui/gamebooster/brightness/QCToggleSliderView;I)V

    return-void
.end method

.method public onStartTrackingTouch(Landroid/widget/SeekBar;)V
    .locals 2

    iget-object v0, p0, Lcom/miui/gamebooster/brightness/QCToggleSliderView$b;->a:Lcom/miui/gamebooster/brightness/QCToggleSliderView;

    invoke-static {v0}, Lcom/miui/gamebooster/brightness/QCToggleSliderView;->m(Lcom/miui/gamebooster/brightness/QCToggleSliderView;)I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    iget-object p1, p0, Lcom/miui/gamebooster/brightness/QCToggleSliderView$b;->a:Lcom/miui/gamebooster/brightness/QCToggleSliderView;

    invoke-static {p1, v1}, Lcom/miui/gamebooster/brightness/QCToggleSliderView;->o(Lcom/miui/gamebooster/brightness/QCToggleSliderView;Z)Z

    const-string p1, "QCToggleSliderView"

    const-string v0, "ignoring onStartTrackingTouch, maybe tap event"

    invoke-static {p1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    iget-object v0, p0, Lcom/miui/gamebooster/brightness/QCToggleSliderView$b;->a:Lcom/miui/gamebooster/brightness/QCToggleSliderView;

    invoke-static {v0, v1}, Lcom/miui/gamebooster/brightness/QCToggleSliderView;->k(Lcom/miui/gamebooster/brightness/QCToggleSliderView;Z)Z

    iget-object v0, p0, Lcom/miui/gamebooster/brightness/QCToggleSliderView$b;->a:Lcom/miui/gamebooster/brightness/QCToggleSliderView;

    invoke-static {v0}, Lcom/miui/gamebooster/brightness/QCToggleSliderView;->p(Lcom/miui/gamebooster/brightness/QCToggleSliderView;)Lcom/miui/gamebooster/brightness/a$a;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/miui/gamebooster/brightness/QCToggleSliderView$b;->a:Lcom/miui/gamebooster/brightness/QCToggleSliderView;

    invoke-static {v0}, Lcom/miui/gamebooster/brightness/QCToggleSliderView;->p(Lcom/miui/gamebooster/brightness/QCToggleSliderView;)Lcom/miui/gamebooster/brightness/a$a;

    move-result-object v0

    invoke-virtual {p1}, Landroid/widget/ProgressBar;->getProgress()I

    move-result p1

    invoke-interface {v0, p1}, Lcom/miui/gamebooster/brightness/a$a;->a(I)V

    :cond_1
    iget-object p1, p0, Lcom/miui/gamebooster/brightness/QCToggleSliderView$b;->a:Lcom/miui/gamebooster/brightness/QCToggleSliderView;

    invoke-static {p1}, Lcom/miui/gamebooster/brightness/QCToggleSliderView;->q(Lcom/miui/gamebooster/brightness/QCToggleSliderView;)Landroid/widget/SeekBar;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/ProgressBar;->getProgress()I

    move-result v0

    invoke-static {p1, v0}, Lcom/miui/gamebooster/brightness/QCToggleSliderView;->l(Lcom/miui/gamebooster/brightness/QCToggleSliderView;I)V

    return-void
.end method

.method public onStopTrackingTouch(Landroid/widget/SeekBar;)V
    .locals 2

    iget-object v0, p0, Lcom/miui/gamebooster/brightness/QCToggleSliderView$b;->a:Lcom/miui/gamebooster/brightness/QCToggleSliderView;

    invoke-static {v0}, Lcom/miui/gamebooster/brightness/QCToggleSliderView;->n(Lcom/miui/gamebooster/brightness/QCToggleSliderView;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    iget-object p1, p0, Lcom/miui/gamebooster/brightness/QCToggleSliderView$b;->a:Lcom/miui/gamebooster/brightness/QCToggleSliderView;

    invoke-static {p1, v1}, Lcom/miui/gamebooster/brightness/QCToggleSliderView;->o(Lcom/miui/gamebooster/brightness/QCToggleSliderView;Z)Z

    const-string p1, "QCToggleSliderView"

    const-string v0, "ignoring onStopTrackingTouch, maybe tap event"

    invoke-static {p1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    iget-object v0, p0, Lcom/miui/gamebooster/brightness/QCToggleSliderView$b;->a:Lcom/miui/gamebooster/brightness/QCToggleSliderView;

    invoke-static {v0, v1}, Lcom/miui/gamebooster/brightness/QCToggleSliderView;->k(Lcom/miui/gamebooster/brightness/QCToggleSliderView;Z)Z

    iget-object v0, p0, Lcom/miui/gamebooster/brightness/QCToggleSliderView$b;->a:Lcom/miui/gamebooster/brightness/QCToggleSliderView;

    invoke-static {v0}, Lcom/miui/gamebooster/brightness/QCToggleSliderView;->p(Lcom/miui/gamebooster/brightness/QCToggleSliderView;)Lcom/miui/gamebooster/brightness/a$a;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/miui/gamebooster/brightness/QCToggleSliderView$b;->a:Lcom/miui/gamebooster/brightness/QCToggleSliderView;

    invoke-static {v0}, Lcom/miui/gamebooster/brightness/QCToggleSliderView;->p(Lcom/miui/gamebooster/brightness/QCToggleSliderView;)Lcom/miui/gamebooster/brightness/a$a;

    move-result-object v0

    invoke-virtual {p1}, Landroid/widget/ProgressBar;->getProgress()I

    move-result p1

    invoke-interface {v0, p1}, Lcom/miui/gamebooster/brightness/a$a;->b(I)V

    :cond_1
    iget-object p1, p0, Lcom/miui/gamebooster/brightness/QCToggleSliderView$b;->a:Lcom/miui/gamebooster/brightness/QCToggleSliderView;

    invoke-static {p1}, Lcom/miui/gamebooster/brightness/QCToggleSliderView;->q(Lcom/miui/gamebooster/brightness/QCToggleSliderView;)Landroid/widget/SeekBar;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/ProgressBar;->getProgress()I

    move-result v0

    invoke-static {p1, v0}, Lcom/miui/gamebooster/brightness/QCToggleSliderView;->l(Lcom/miui/gamebooster/brightness/QCToggleSliderView;I)V

    return-void
.end method
