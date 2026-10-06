.class public Lcom/miui/electricrisk/ElectricProtectScreenActivity;
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

    return-void
.end method

.method public onCreateFragment()Landroidx/fragment/app/Fragment;
    .locals 1

    invoke-static {}, Lcom/miui/electricrisk/ElectricProtectScreenFragment;->b0()Lcom/miui/electricrisk/ElectricProtectScreenFragment;

    move-result-object v0

    return-object v0
.end method
