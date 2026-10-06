.class Lcom/miui/applicationlock/ConfirmAccessControl$h;
.super Landroid/os/CountDownTimer;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/applicationlock/ConfirmAccessControl;->E2()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/miui/applicationlock/ConfirmAccessControl;


# direct methods
.method constructor <init>(Lcom/miui/applicationlock/ConfirmAccessControl;JJ)V
    .locals 0

    iput-object p1, p0, Lcom/miui/applicationlock/ConfirmAccessControl$h;->a:Lcom/miui/applicationlock/ConfirmAccessControl;

    invoke-direct {p0, p2, p3, p4, p5}, Landroid/os/CountDownTimer;-><init>(JJ)V

    return-void
.end method


# virtual methods
.method public onFinish()V
    .locals 3

    iget-object v0, p0, Lcom/miui/applicationlock/ConfirmAccessControl$h;->a:Lcom/miui/applicationlock/ConfirmAccessControl;

    invoke-static {v0}, Lcom/miui/applicationlock/ConfirmAccessControl;->Y0(Lcom/miui/applicationlock/ConfirmAccessControl;)Landroid/widget/Button;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/view/View;->setClickable(Z)V

    iget-object v0, p0, Lcom/miui/applicationlock/ConfirmAccessControl$h;->a:Lcom/miui/applicationlock/ConfirmAccessControl;

    invoke-static {v0}, Lcom/miui/applicationlock/ConfirmAccessControl;->Y0(Lcom/miui/applicationlock/ConfirmAccessControl;)Landroid/widget/Button;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/applicationlock/ConfirmAccessControl$h;->a:Lcom/miui/applicationlock/ConfirmAccessControl;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f12157f

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/miui/applicationlock/ConfirmAccessControl$h;->a:Lcom/miui/applicationlock/ConfirmAccessControl;

    invoke-static {v0}, Lcom/miui/applicationlock/ConfirmAccessControl;->Y0(Lcom/miui/applicationlock/ConfirmAccessControl;)Landroid/widget/Button;

    move-result-object v0

    const v1, -0xa5a5a6

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    return-void
.end method

.method public onTick(J)V
    .locals 4

    iget-object v0, p0, Lcom/miui/applicationlock/ConfirmAccessControl$h;->a:Lcom/miui/applicationlock/ConfirmAccessControl;

    invoke-static {v0}, Lcom/miui/applicationlock/ConfirmAccessControl;->Y0(Lcom/miui/applicationlock/ConfirmAccessControl;)Landroid/widget/Button;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setClickable(Z)V

    const-wide/16 v2, 0x3e8

    div-long/2addr p1, v2

    long-to-int p1, p1

    iget-object p2, p0, Lcom/miui/applicationlock/ConfirmAccessControl$h;->a:Lcom/miui/applicationlock/ConfirmAccessControl;

    invoke-static {p2}, Lcom/miui/applicationlock/ConfirmAccessControl;->Y0(Lcom/miui/applicationlock/ConfirmAccessControl;)Landroid/widget/Button;

    move-result-object p2

    iget-object v0, p0, Lcom/miui/applicationlock/ConfirmAccessControl$h;->a:Lcom/miui/applicationlock/ConfirmAccessControl;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v1

    const v1, 0x7f100124

    invoke-virtual {v0, v1, p1, v2}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object p1, p0, Lcom/miui/applicationlock/ConfirmAccessControl$h;->a:Lcom/miui/applicationlock/ConfirmAccessControl;

    invoke-static {p1}, Lcom/miui/applicationlock/ConfirmAccessControl;->Y0(Lcom/miui/applicationlock/ConfirmAccessControl;)Landroid/widget/Button;

    move-result-object p1

    const p2, -0x4e4e4f

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setTextColor(I)V

    return-void
.end method
