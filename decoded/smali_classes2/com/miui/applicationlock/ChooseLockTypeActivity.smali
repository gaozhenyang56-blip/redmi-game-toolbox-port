.class public Lcom/miui/applicationlock/ChooseLockTypeActivity;
.super Lcom/miui/common/base/BaseActivity;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/applicationlock/ChooseLockTypeActivity$ChooseLockTypeFragment;
    }
.end annotation


# instance fields
.field private a:Lcom/miui/applicationlock/ChooseLockTypeActivity$ChooseLockTypeFragment;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/miui/common/base/BaseActivity;-><init>()V

    return-void
.end method


# virtual methods
.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 1

    invoke-super {p0, p1, p2, p3}, Landroidx/fragment/app/FragmentActivity;->onActivityResult(IILandroid/content/Intent;)V

    iget-object v0, p0, Lcom/miui/applicationlock/ChooseLockTypeActivity;->a:Lcom/miui/applicationlock/ChooseLockTypeActivity$ChooseLockTypeFragment;

    invoke-virtual {v0, p1, p2, p3}, Lcom/miui/applicationlock/ChooseLockTypeActivity$ChooseLockTypeFragment;->onActivityResult(IILandroid/content/Intent;)V

    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2

    invoke-super {p0, p1}, Lcom/miui/common/base/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    iget-object v0, p0, Lcom/miui/applicationlock/ChooseLockTypeActivity;->a:Lcom/miui/applicationlock/ChooseLockTypeActivity$ChooseLockTypeFragment;

    if-nez v0, :cond_0

    new-instance v0, Lcom/miui/applicationlock/ChooseLockTypeActivity$ChooseLockTypeFragment;

    invoke-direct {v0}, Lcom/miui/applicationlock/ChooseLockTypeActivity$ChooseLockTypeFragment;-><init>()V

    iput-object v0, p0, Lcom/miui/applicationlock/ChooseLockTypeActivity;->a:Lcom/miui/applicationlock/ChooseLockTypeActivity$ChooseLockTypeFragment;

    :cond_0
    if-eqz p1, :cond_1

    const-string v0, "state"

    invoke-virtual {p1, v0}, Landroid/os/BaseBundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/miui/applicationlock/ChooseLockTypeActivity;->a:Lcom/miui/applicationlock/ChooseLockTypeActivity$ChooseLockTypeFragment;

    const/4 v1, 0x0

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/miui/applicationlock/ChooseLockTypeActivity;->a:Lcom/miui/applicationlock/ChooseLockTypeActivity$ChooseLockTypeFragment;

    const/4 v1, 0x1

    :goto_0
    invoke-static {v0, v1}, Lcom/miui/applicationlock/ChooseLockTypeActivity$ChooseLockTypeFragment;->a0(Lcom/miui/applicationlock/ChooseLockTypeActivity$ChooseLockTypeFragment;Z)Z

    if-nez p1, :cond_2

    invoke-virtual {p0}, Landroidx/fragment/app/FragmentActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/fragment/app/FragmentManager;->m()Landroidx/fragment/app/s;

    move-result-object p1

    const v0, 0x1020002

    iget-object v1, p0, Lcom/miui/applicationlock/ChooseLockTypeActivity;->a:Lcom/miui/applicationlock/ChooseLockTypeActivity$ChooseLockTypeFragment;

    invoke-virtual {p1, v0, v1}, Landroidx/fragment/app/s;->b(ILandroidx/fragment/app/Fragment;)Landroidx/fragment/app/s;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/fragment/app/s;->k()I

    :cond_2
    return-void
.end method
