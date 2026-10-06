.class Lmiuix/springback/trigger/c$c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lmiuix/springback/trigger/a$b$b;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmiuix/springback/trigger/c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lmiuix/springback/trigger/c;


# direct methods
.method constructor <init>(Lmiuix/springback/trigger/c;)V
    .locals 0

    iput-object p1, p0, Lmiuix/springback/trigger/c$c;->a:Lmiuix/springback/trigger/c;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(I)V
    .locals 2

    iget-object p1, p0, Lmiuix/springback/trigger/c$c;->a:Lmiuix/springback/trigger/c;

    invoke-static {p1}, Lmiuix/springback/trigger/c;->U0(Lmiuix/springback/trigger/c;)Landroid/widget/ProgressBar;

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    iget-object p1, p0, Lmiuix/springback/trigger/c$c;->a:Lmiuix/springback/trigger/c;

    invoke-static {p1}, Lmiuix/springback/trigger/c;->V0(Lmiuix/springback/trigger/c;)Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    iget-object p1, p0, Lmiuix/springback/trigger/c$c;->a:Lmiuix/springback/trigger/c;

    invoke-static {p1}, Lmiuix/springback/trigger/c;->W0(Lmiuix/springback/trigger/c;)Landroid/widget/TextView;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    iget-object p1, p0, Lmiuix/springback/trigger/c$c;->a:Lmiuix/springback/trigger/c;

    invoke-virtual {p1}, Lmiuix/springback/trigger/a;->g()Lmiuix/springback/trigger/a$b;

    move-result-object p1

    if-eqz p1, :cond_0

    iget-object v0, p0, Lmiuix/springback/trigger/c$c;->a:Lmiuix/springback/trigger/c;

    invoke-static {v0}, Lmiuix/springback/trigger/c;->W0(Lmiuix/springback/trigger/c;)Landroid/widget/TextView;

    move-result-object v0

    iget-object p1, p1, Lmiuix/springback/trigger/a$b;->mTriggerTexts:[Ljava/lang/String;

    const/4 v1, 0x2

    aget-object p1, p1, v1

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_0
    iget-object p1, p0, Lmiuix/springback/trigger/c$c;->a:Lmiuix/springback/trigger/c;

    invoke-static {p1}, Lmiuix/springback/trigger/c;->U0(Lmiuix/springback/trigger/c;)Landroid/widget/ProgressBar;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/View;->getVisibility()I

    move-result p1

    if-nez p1, :cond_1

    iget-object p1, p0, Lmiuix/springback/trigger/c$c;->a:Lmiuix/springback/trigger/c;

    invoke-static {p1}, Lmiuix/springback/trigger/c;->U0(Lmiuix/springback/trigger/c;)Landroid/widget/ProgressBar;

    move-result-object p1

    const/high16 v0, 0x3f800000    # 1.0f

    invoke-virtual {p1, v0}, Landroid/view/View;->setAlpha(F)V

    iget-object p1, p0, Lmiuix/springback/trigger/c$c;->a:Lmiuix/springback/trigger/c;

    invoke-static {p1}, Lmiuix/springback/trigger/c;->U0(Lmiuix/springback/trigger/c;)Landroid/widget/ProgressBar;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/view/View;->setScaleX(F)V

    iget-object p1, p0, Lmiuix/springback/trigger/c$c;->a:Lmiuix/springback/trigger/c;

    invoke-static {p1}, Lmiuix/springback/trigger/c;->U0(Lmiuix/springback/trigger/c;)Landroid/widget/ProgressBar;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/view/View;->setScaleY(F)V

    :cond_1
    return-void
.end method

.method public b(I)V
    .locals 0

    return-void
.end method

.method public c(I)V
    .locals 1

    iget-object p1, p0, Lmiuix/springback/trigger/c$c;->a:Lmiuix/springback/trigger/c;

    invoke-static {p1}, Lmiuix/springback/trigger/c;->V0(Lmiuix/springback/trigger/c;)Landroid/view/View;

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    iget-object p1, p0, Lmiuix/springback/trigger/c$c;->a:Lmiuix/springback/trigger/c;

    invoke-static {p1}, Lmiuix/springback/trigger/c;->W0(Lmiuix/springback/trigger/c;)Landroid/widget/TextView;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    iget-object p1, p0, Lmiuix/springback/trigger/c$c;->a:Lmiuix/springback/trigger/c;

    invoke-virtual {p1}, Lmiuix/springback/trigger/b;->d0()Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lmiuix/springback/trigger/c$c;->a:Lmiuix/springback/trigger/c;

    invoke-virtual {p1}, Lmiuix/springback/trigger/b;->W()Landroid/view/ViewGroup;

    move-result-object p1

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    :cond_0
    return-void
.end method

.method public d()F
    .locals 1

    const/high16 v0, -0x40800000    # -1.0f

    return v0
.end method

.method public e(I)V
    .locals 0

    return-void
.end method

.method public f(I)V
    .locals 0

    return-void
.end method

.method public g(I)V
    .locals 0

    return-void
.end method

.method public h(I)V
    .locals 2

    iget-object p1, p0, Lmiuix/springback/trigger/c$c;->a:Lmiuix/springback/trigger/c;

    invoke-static {p1}, Lmiuix/springback/trigger/c;->U0(Lmiuix/springback/trigger/c;)Landroid/widget/ProgressBar;

    move-result-object p1

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    iget-object p1, p0, Lmiuix/springback/trigger/c$c;->a:Lmiuix/springback/trigger/c;

    invoke-static {p1}, Lmiuix/springback/trigger/c;->V0(Lmiuix/springback/trigger/c;)Landroid/view/View;

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    iget-object p1, p0, Lmiuix/springback/trigger/c$c;->a:Lmiuix/springback/trigger/c;

    invoke-static {p1}, Lmiuix/springback/trigger/c;->W0(Lmiuix/springback/trigger/c;)Landroid/widget/TextView;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    iget-object p1, p0, Lmiuix/springback/trigger/c$c;->a:Lmiuix/springback/trigger/c;

    invoke-virtual {p1}, Lmiuix/springback/trigger/a;->g()Lmiuix/springback/trigger/a$b;

    move-result-object p1

    if-eqz p1, :cond_0

    iget-object v1, p0, Lmiuix/springback/trigger/c$c;->a:Lmiuix/springback/trigger/c;

    invoke-static {v1}, Lmiuix/springback/trigger/c;->W0(Lmiuix/springback/trigger/c;)Landroid/widget/TextView;

    move-result-object v1

    iget-object p1, p1, Lmiuix/springback/trigger/a$b;->mTriggerTexts:[Ljava/lang/String;

    aget-object p1, p1, v0

    invoke-virtual {v1, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_0
    return-void
.end method

.method public i(I)V
    .locals 0

    return-void
.end method

.method public j(I)V
    .locals 0

    return-void
.end method
