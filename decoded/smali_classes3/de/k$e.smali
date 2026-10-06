.class Lde/k$e;
.super Landroid/os/CountDownTimer;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lde/k;->K()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lde/k;


# direct methods
.method constructor <init>(Lde/k;JJ)V
    .locals 0

    iput-object p1, p0, Lde/k$e;->a:Lde/k;

    invoke-direct {p0, p2, p3, p4, p5}, Landroid/os/CountDownTimer;-><init>(JJ)V

    return-void
.end method


# virtual methods
.method public onFinish()V
    .locals 3

    iget-object v0, p0, Lde/k$e;->a:Lde/k;

    invoke-static {v0}, Lde/k;->c(Lde/k;)Lcom/miui/common/ui/d;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lde/k$e;->a:Lde/k;

    invoke-static {v0}, Lde/k;->c(Lde/k;)Lcom/miui/common/ui/d;

    move-result-object v0

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Lmiuix/appcompat/app/AlertDialog;->getButton(I)Landroid/widget/Button;

    move-result-object v0

    iget-object v1, p0, Lde/k$e;->a:Lde/k;

    invoke-static {v1}, Lde/k;->e(Lde/k;)Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f1212ae

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_0
    iget-object v0, p0, Lde/k$e;->a:Lde/k;

    invoke-static {v0}, Lde/k;->h(Lde/k;)V

    return-void
.end method

.method public onTick(J)V
    .locals 5

    iget-object v0, p0, Lde/k$e;->a:Lde/k;

    long-to-int p1, p1

    div-int/lit16 p1, p1, 0x3e8

    invoke-static {v0, p1}, Lde/k;->r(Lde/k;I)I

    iget-object p1, p0, Lde/k$e;->a:Lde/k;

    invoke-static {p1}, Lde/k;->c(Lde/k;)Lcom/miui/common/ui/d;

    move-result-object p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lde/k$e;->a:Lde/k;

    invoke-static {p1}, Lde/k;->c(Lde/k;)Lcom/miui/common/ui/d;

    move-result-object p1

    const/4 p2, -0x1

    invoke-virtual {p1, p2}, Lmiuix/appcompat/app/AlertDialog;->getButton(I)Landroid/widget/Button;

    move-result-object p1

    iget-object p2, p0, Lde/k$e;->a:Lde/k;

    invoke-static {p2}, Lde/k;->e(Lde/k;)Landroid/content/Context;

    move-result-object p2

    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    const v0, 0x7f10010a

    iget-object v1, p0, Lde/k$e;->a:Lde/k;

    invoke-static {v1}, Lde/k;->q(Lde/k;)I

    move-result v1

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget-object v4, p0, Lde/k$e;->a:Lde/k;

    invoke-static {v4}, Lde/k;->q(Lde/k;)I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-virtual {p2, v0, v1, v2}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_0
    iget-object p1, p0, Lde/k$e;->a:Lde/k;

    invoke-static {p1}, Lde/k;->f(Lde/k;)Lw4/b$b;

    move-result-object p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lde/k$e;->a:Lde/k;

    invoke-static {p1}, Lde/k;->g(Lde/k;)V

    :cond_1
    return-void
.end method
