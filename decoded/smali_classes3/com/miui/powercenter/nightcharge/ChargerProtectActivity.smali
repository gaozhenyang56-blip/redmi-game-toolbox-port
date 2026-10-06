.class public Lcom/miui/powercenter/nightcharge/ChargerProtectActivity;
.super Lcom/miui/common/base/BaseFragmentActivity;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/miui/common/base/BaseFragmentActivity;-><init>()V

    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 0

    invoke-super {p0, p1}, Lcom/miui/common/base/BaseFragmentActivity;->onCreate(Landroid/os/Bundle;)V

    const p1, 0x7f120fe6

    invoke-virtual {p0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/app/Activity;->setTitle(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public onCreateFragment()Landroidx/fragment/app/Fragment;
    .locals 1

    new-instance v0, Lcom/miui/powercenter/nightcharge/ChargeProtectFragment;

    invoke-direct {v0}, Lcom/miui/powercenter/nightcharge/ChargeProtectFragment;-><init>()V

    return-object v0
.end method
