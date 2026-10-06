.class Lcom/miui/gamebooster/customview/y$b;
.super Lo8/a;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/gamebooster/customview/y;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/miui/gamebooster/customview/y;


# direct methods
.method constructor <init>(Lcom/miui/gamebooster/customview/y;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/gamebooster/customview/y$b;->a:Lcom/miui/gamebooster/customview/y;

    invoke-direct {p0}, Lo8/a;-><init>()V

    return-void
.end method


# virtual methods
.method public a(J)V
    .locals 2

    iget-object v0, p0, Lcom/miui/gamebooster/customview/y$b;->a:Lcom/miui/gamebooster/customview/y;

    invoke-virtual {v0}, Lcom/miui/gamebooster/customview/y;->getSelectView()Lcom/miui/gamebooster/customview/VoiceModeView;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/miui/gamebooster/customview/y;->n(Lcom/miui/gamebooster/customview/y;Lcom/miui/gamebooster/customview/VoiceModeView;)Lcom/miui/gamebooster/customview/VoiceModeView;

    iget-object v0, p0, Lcom/miui/gamebooster/customview/y$b;->a:Lcom/miui/gamebooster/customview/y;

    invoke-static {v0}, Lcom/miui/gamebooster/customview/y;->k(Lcom/miui/gamebooster/customview/y;)Lcom/miui/gamebooster/customview/VoiceModeView;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/miui/gamebooster/customview/y$b;->a:Lcom/miui/gamebooster/customview/y;

    invoke-static {v0}, Lcom/miui/gamebooster/customview/y;->k(Lcom/miui/gamebooster/customview/y;)Lcom/miui/gamebooster/customview/VoiceModeView;

    move-result-object v0

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/miui/gamebooster/customview/VoiceModeView;->setIonBgStatus(I)V

    iget-object v0, p0, Lcom/miui/gamebooster/customview/y$b;->a:Lcom/miui/gamebooster/customview/y;

    new-array v1, v1, [F

    fill-array-data v1, :array_0

    invoke-static {v1}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/miui/gamebooster/customview/y;->C(Lcom/miui/gamebooster/customview/y;Landroid/animation/ValueAnimator;)Landroid/animation/ValueAnimator;

    iget-object v0, p0, Lcom/miui/gamebooster/customview/y$b;->a:Lcom/miui/gamebooster/customview/y;

    invoke-static {v0}, Lcom/miui/gamebooster/customview/y;->B(Lcom/miui/gamebooster/customview/y;)Landroid/animation/ValueAnimator;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    iget-object p1, p0, Lcom/miui/gamebooster/customview/y$b;->a:Lcom/miui/gamebooster/customview/y;

    invoke-static {p1}, Lcom/miui/gamebooster/customview/y;->B(Lcom/miui/gamebooster/customview/y;)Landroid/animation/ValueAnimator;

    move-result-object p1

    new-instance p2, Lcom/miui/gamebooster/customview/y$b$a;

    invoke-direct {p2, p0}, Lcom/miui/gamebooster/customview/y$b$a;-><init>(Lcom/miui/gamebooster/customview/y$b;)V

    invoke-virtual {p1, p2}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    iget-object p1, p0, Lcom/miui/gamebooster/customview/y$b;->a:Lcom/miui/gamebooster/customview/y;

    invoke-static {p1}, Lcom/miui/gamebooster/customview/y;->B(Lcom/miui/gamebooster/customview/y;)Landroid/animation/ValueAnimator;

    move-result-object p1

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->start()V

    return-void

    nop

    :array_0
    .array-data 4
        0x0
        0x42c80000    # 100.0f
    .end array-data
.end method

.method public b(I)V
    .locals 1

    iget-object p1, p0, Lcom/miui/gamebooster/customview/y$b;->a:Lcom/miui/gamebooster/customview/y;

    invoke-virtual {p1}, Lcom/miui/gamebooster/customview/y;->getSelectView()Lcom/miui/gamebooster/customview/VoiceModeView;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/miui/gamebooster/customview/y;->n(Lcom/miui/gamebooster/customview/y;Lcom/miui/gamebooster/customview/VoiceModeView;)Lcom/miui/gamebooster/customview/VoiceModeView;

    iget-object p1, p0, Lcom/miui/gamebooster/customview/y$b;->a:Lcom/miui/gamebooster/customview/y;

    invoke-static {p1}, Lcom/miui/gamebooster/customview/y;->k(Lcom/miui/gamebooster/customview/y;)Lcom/miui/gamebooster/customview/VoiceModeView;

    move-result-object p1

    if-nez p1, :cond_0

    return-void

    :cond_0
    iget-object p1, p0, Lcom/miui/gamebooster/customview/y$b;->a:Lcom/miui/gamebooster/customview/y;

    invoke-static {p1}, Lcom/miui/gamebooster/customview/y;->k(Lcom/miui/gamebooster/customview/y;)Lcom/miui/gamebooster/customview/VoiceModeView;

    move-result-object p1

    invoke-virtual {p1}, Lcom/miui/gamebooster/customview/VoiceModeView;->d()V

    return-void
.end method

.method public c(Z)V
    .locals 1

    iget-object v0, p0, Lcom/miui/gamebooster/customview/y$b;->a:Lcom/miui/gamebooster/customview/y;

    invoke-static {v0, p1}, Lcom/miui/gamebooster/customview/y;->A(Lcom/miui/gamebooster/customview/y;Z)Z

    return-void
.end method
