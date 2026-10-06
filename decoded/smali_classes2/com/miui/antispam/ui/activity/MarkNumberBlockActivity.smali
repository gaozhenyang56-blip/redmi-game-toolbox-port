.class public Lcom/miui/antispam/ui/activity/MarkNumberBlockActivity;
.super Lcom/miui/antispam/ui/activity/BaseFragmentActivity;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/antispam/ui/activity/MarkNumberBlockActivity$SettingsFragment;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/miui/antispam/ui/activity/BaseFragmentActivity;-><init>()V

    return-void
.end method


# virtual methods
.method protected d0()Landroidx/fragment/app/Fragment;
    .locals 1

    new-instance v0, Lcom/miui/antispam/ui/activity/MarkNumberBlockActivity$SettingsFragment;

    invoke-direct {v0}, Lcom/miui/antispam/ui/activity/MarkNumberBlockActivity$SettingsFragment;-><init>()V

    return-object v0
.end method
