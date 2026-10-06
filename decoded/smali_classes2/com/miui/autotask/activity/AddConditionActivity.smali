.class public Lcom/miui/autotask/activity/AddConditionActivity;
.super Lcom/miui/autotask/activity/AddBaseActivity;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/miui/autotask/activity/AddBaseActivity;-><init>()V

    return-void
.end method


# virtual methods
.method protected d0()Landroidx/fragment/app/Fragment;
    .locals 1

    new-instance v0, Lcom/miui/autotask/fragment/AddConditionFragment;

    invoke-direct {v0}, Lcom/miui/autotask/fragment/AddConditionFragment;-><init>()V

    return-object v0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 0

    invoke-super {p0, p1}, Lcom/miui/autotask/activity/AddBaseActivity;->onCreate(Landroid/os/Bundle;)V

    invoke-virtual {p0}, Lcom/miui/common/base/BaseAcquireCtaActivity;->acquireCTAPermissionsForResult()Z

    return-void
.end method
