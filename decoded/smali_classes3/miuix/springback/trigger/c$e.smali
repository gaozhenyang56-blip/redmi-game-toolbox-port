.class Lmiuix/springback/trigger/c$e;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lmiuix/springback/trigger/a$c$a;


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

    iput-object p1, p0, Lmiuix/springback/trigger/c$e;->a:Lmiuix/springback/trigger/c;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(I)V
    .locals 0

    return-void
.end method

.method public b(I)V
    .locals 0

    return-void
.end method

.method public c(I)V
    .locals 0

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

    iget-object p1, p0, Lmiuix/springback/trigger/c$e;->a:Lmiuix/springback/trigger/c;

    invoke-static {p1}, Lmiuix/springback/trigger/c;->c1(Lmiuix/springback/trigger/c;)Landroid/view/ViewGroup;

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    iget-object p1, p0, Lmiuix/springback/trigger/c$e;->a:Lmiuix/springback/trigger/c;

    invoke-virtual {p1}, Lmiuix/springback/trigger/a;->h()Lmiuix/springback/trigger/a$c;

    move-result-object p1

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Lmiuix/springback/trigger/a$c;->isNoData()Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v0, p0, Lmiuix/springback/trigger/c$e;->a:Lmiuix/springback/trigger/c;

    invoke-static {v0}, Lmiuix/springback/trigger/c;->a1(Lmiuix/springback/trigger/c;)Landroid/view/View;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lmiuix/springback/trigger/c$e;->a:Lmiuix/springback/trigger/c;

    invoke-static {v0}, Lmiuix/springback/trigger/c;->Z0(Lmiuix/springback/trigger/c;)Landroid/widget/ProgressBar;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    invoke-virtual {p1}, Lmiuix/springback/trigger/a$c;->getCountNoData()I

    move-result v0

    const/4 v1, 0x3

    if-ge v0, v1, :cond_0

    iget-object v0, p0, Lmiuix/springback/trigger/c$e;->a:Lmiuix/springback/trigger/c;

    invoke-static {v0}, Lmiuix/springback/trigger/c;->Y0(Lmiuix/springback/trigger/c;)Landroid/widget/TextView;

    move-result-object v0

    iget-object p1, p1, Lmiuix/springback/trigger/a$c;->mTriggerTexts:[Ljava/lang/String;

    const/4 v1, 0x2

    aget-object p1, p1, v1

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lmiuix/springback/trigger/c$e;->a:Lmiuix/springback/trigger/c;

    invoke-static {v0}, Lmiuix/springback/trigger/c;->Y0(Lmiuix/springback/trigger/c;)Landroid/widget/TextView;

    move-result-object v0

    iget-object p1, p1, Lmiuix/springback/trigger/a$c;->mTriggerTexts:[Ljava/lang/String;

    aget-object p1, p1, v1

    :goto_0
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1

    :cond_1
    if-eqz p1, :cond_2

    iget-object v1, p0, Lmiuix/springback/trigger/c$e;->a:Lmiuix/springback/trigger/c;

    invoke-static {v1}, Lmiuix/springback/trigger/c;->a1(Lmiuix/springback/trigger/c;)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/View;->setVisibility(I)V

    iget-object v1, p0, Lmiuix/springback/trigger/c$e;->a:Lmiuix/springback/trigger/c;

    invoke-static {v1}, Lmiuix/springback/trigger/c;->Z0(Lmiuix/springback/trigger/c;)Landroid/widget/ProgressBar;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/View;->setVisibility(I)V

    iget-object v1, p0, Lmiuix/springback/trigger/c$e;->a:Lmiuix/springback/trigger/c;

    invoke-static {v1}, Lmiuix/springback/trigger/c;->Y0(Lmiuix/springback/trigger/c;)Landroid/widget/TextView;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/View;->setVisibility(I)V

    iget-object v1, p0, Lmiuix/springback/trigger/c$e;->a:Lmiuix/springback/trigger/c;

    invoke-static {v1}, Lmiuix/springback/trigger/c;->Y0(Lmiuix/springback/trigger/c;)Landroid/widget/TextView;

    move-result-object v1

    iget-object p1, p1, Lmiuix/springback/trigger/a$c;->mTriggerTexts:[Ljava/lang/String;

    aget-object p1, p1, v0

    invoke-virtual {v1, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_2
    :goto_1
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
