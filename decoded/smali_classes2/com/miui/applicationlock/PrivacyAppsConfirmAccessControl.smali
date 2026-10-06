.class public Lcom/miui/applicationlock/PrivacyAppsConfirmAccessControl;
.super Lcom/miui/applicationlock/ConfirmAccessControl;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/miui/applicationlock/ConfirmAccessControl;-><init>()V

    return-void
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 1

    invoke-super {p0, p1}, Lcom/miui/applicationlock/ConfirmAccessControl;->onCreate(Landroid/os/Bundle;)V

    iget-object p1, p0, Lcom/miui/applicationlock/ConfirmAccessControl;->h:Landroid/widget/ImageView;

    const v0, 0x7f080dd1

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/miui/applicationlock/ConfirmAccessControl;->Q:Z

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/miui/applicationlock/ConfirmAccessControl;->C:Z

    iget-object v0, p0, Lcom/miui/applicationlock/ConfirmAccessControl;->c:Lcom/miui/applicationlock/widget/e;

    invoke-virtual {v0, p1}, Lcom/miui/applicationlock/widget/e;->setLightMode(Z)V

    iget-object p1, p0, Lcom/miui/applicationlock/ConfirmAccessControl;->U:Ljava/lang/String;

    const-string v0, "numeric"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/miui/applicationlock/ConfirmAccessControl;->V:Lcom/miui/applicationlock/widget/MiuiNumericInputView;

    iget-boolean v0, p0, Lcom/miui/applicationlock/ConfirmAccessControl;->C:Z

    invoke-virtual {p1, v0}, Lcom/miui/applicationlock/widget/MiuiNumericInputView;->f(Z)V

    :cond_0
    return-void
.end method
