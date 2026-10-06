.class public Lcom/miui/antispam/ui/activity/MsgInterceptSettingsActivity;
.super Lcom/miui/antispam/ui/activity/BaseFragmentActivity;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/antispam/ui/activity/MsgInterceptSettingsActivity$MsgInterceptSettingsFragment;,
        Lcom/miui/antispam/ui/activity/MsgInterceptSettingsActivity$UnavailableFragment;
    }
.end annotation


# instance fields
.field private a:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/miui/antispam/ui/activity/BaseFragmentActivity;-><init>()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/miui/antispam/ui/activity/MsgInterceptSettingsActivity;->a:Z

    return-void
.end method


# virtual methods
.method protected d0()Landroidx/fragment/app/Fragment;
    .locals 1

    invoke-static {p0}, Lm2/f;->E(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/miui/antispam/ui/activity/MsgInterceptSettingsActivity;->a:Z

    invoke-static {}, Lcom/miui/antispam/ui/activity/MsgInterceptSettingsActivity$MsgInterceptSettingsFragment;->c0()Lcom/miui/antispam/ui/activity/MsgInterceptSettingsActivity$MsgInterceptSettingsFragment;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/miui/antispam/ui/activity/MsgInterceptSettingsActivity;->a:Z

    invoke-static {}, Lcom/miui/antispam/ui/activity/MsgInterceptSettingsActivity$UnavailableFragment;->a0()Lcom/miui/antispam/ui/activity/MsgInterceptSettingsActivity$UnavailableFragment;

    move-result-object v0

    return-object v0
.end method

.method protected onResume()V
    .locals 3

    invoke-super {p0}, Landroidx/fragment/app/FragmentActivity;->onResume()V

    invoke-static {p0}, Lm2/f;->E(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/miui/antispam/ui/activity/MsgInterceptSettingsActivity;->a:Z

    if-nez v0, :cond_1

    :cond_0
    invoke-static {p0}, Lm2/f;->E(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-boolean v0, p0, Lcom/miui/antispam/ui/activity/MsgInterceptSettingsActivity;->a:Z

    if-nez v0, :cond_2

    :cond_1
    invoke-virtual {p0}, Landroidx/fragment/app/FragmentActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/fragment/app/FragmentManager;->m()Landroidx/fragment/app/s;

    move-result-object v0

    const v1, 0x1020002

    invoke-virtual {p0}, Lcom/miui/antispam/ui/activity/MsgInterceptSettingsActivity;->d0()Landroidx/fragment/app/Fragment;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroidx/fragment/app/s;->v(ILandroidx/fragment/app/Fragment;)Landroidx/fragment/app/s;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/fragment/app/s;->k()I

    :cond_2
    return-void
.end method
