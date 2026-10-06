.class Lcom/miui/applicationlock/ConfirmAccessControl$k;
.super Landroid/os/CountDownTimer;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/applicationlock/ConfirmAccessControl;->M1(J)V
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

    iput-object p1, p0, Lcom/miui/applicationlock/ConfirmAccessControl$k;->a:Lcom/miui/applicationlock/ConfirmAccessControl;

    invoke-direct {p0, p2, p3, p4, p5}, Landroid/os/CountDownTimer;-><init>(JJ)V

    return-void
.end method


# virtual methods
.method public onFinish()V
    .locals 2

    const-string v0, "ConfirmAccessControl"

    const-string v1, "onFinish: "

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/miui/applicationlock/ConfirmAccessControl$k;->a:Lcom/miui/applicationlock/ConfirmAccessControl;

    invoke-static {v0}, Lcom/miui/applicationlock/ConfirmAccessControl;->e1(Lcom/miui/applicationlock/ConfirmAccessControl;)Landroid/widget/TextView;

    move-result-object v0

    const v1, 0x7f12017a

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    iget-object v0, p0, Lcom/miui/applicationlock/ConfirmAccessControl$k;->a:Lcom/miui/applicationlock/ConfirmAccessControl;

    invoke-static {v0}, Lcom/miui/applicationlock/ConfirmAccessControl;->w0(Lcom/miui/applicationlock/ConfirmAccessControl;)Landroid/widget/TextView;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/miui/applicationlock/ConfirmAccessControl$k;->a:Lcom/miui/applicationlock/ConfirmAccessControl;

    invoke-static {v0}, Lcom/miui/applicationlock/ConfirmAccessControl;->f1(Lcom/miui/applicationlock/ConfirmAccessControl;)V

    return-void
.end method

.method public onTick(J)V
    .locals 6

    iget-object v0, p0, Lcom/miui/applicationlock/ConfirmAccessControl$k;->a:Lcom/miui/applicationlock/ConfirmAccessControl;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/miui/applicationlock/ConfirmAccessControl;->L0(Lcom/miui/applicationlock/ConfirmAccessControl;Z)Z

    iget-object v0, p0, Lcom/miui/applicationlock/ConfirmAccessControl$k;->a:Lcom/miui/applicationlock/ConfirmAccessControl;

    iget-object v2, v0, Lcom/miui/applicationlock/ConfirmAccessControl;->c:Lcom/miui/applicationlock/widget/e;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v3

    invoke-static {v0, v3}, Lcom/miui/applicationlock/ConfirmAccessControl;->b1(Lcom/miui/applicationlock/ConfirmAccessControl;Landroid/content/res/Configuration;)I

    move-result v0

    const/4 v3, 0x0

    const/4 v4, 0x5

    if-ne v0, v4, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    move v0, v3

    :goto_0
    invoke-interface {v2, v0}, Lcom/miui/applicationlock/widget/o;->c(Z)V

    iget-object v0, p0, Lcom/miui/applicationlock/ConfirmAccessControl$k;->a:Lcom/miui/applicationlock/ConfirmAccessControl;

    invoke-static {v0}, Lcom/miui/applicationlock/ConfirmAccessControl;->c1(Lcom/miui/applicationlock/ConfirmAccessControl;)Z

    move-result v0

    if-nez v0, :cond_1

    const-wide/16 v4, 0x3e8

    div-long/2addr p1, v4

    long-to-int p1, p1

    iget-object p2, p0, Lcom/miui/applicationlock/ConfirmAccessControl$k;->a:Lcom/miui/applicationlock/ConfirmAccessControl;

    invoke-static {p2}, Lcom/miui/applicationlock/ConfirmAccessControl;->w0(Lcom/miui/applicationlock/ConfirmAccessControl;)Landroid/widget/TextView;

    move-result-object p2

    iget-object v0, p0, Lcom/miui/applicationlock/ConfirmAccessControl$k;->a:Lcom/miui/applicationlock/ConfirmAccessControl;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v2, 0x7f10006e

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v1, v3

    invoke-virtual {v0, v2, p1, v1}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_1
    return-void
.end method
