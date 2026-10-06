.class Lcom/miui/simlock/fragment/SimLockChooseFragment$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/preference/Preference$d;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/simlock/fragment/SimLockChooseFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/miui/simlock/fragment/SimLockChooseFragment;


# direct methods
.method constructor <init>(Lcom/miui/simlock/fragment/SimLockChooseFragment;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/simlock/fragment/SimLockChooseFragment$a;->a:Lcom/miui/simlock/fragment/SimLockChooseFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPreferenceClick(Landroidx/preference/Preference;)Z
    .locals 5

    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/miui/simlock/fragment/SimLockChooseFragment$a;->a:Lcom/miui/simlock/fragment/SimLockChooseFragment;

    iget-object v1, v1, Lcom/miui/simlock/fragment/SimLockBaseFragment;->b:Landroid/content/Context;

    const-class v2, Lcom/miui/simlock/activity/SimLockStartActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    iget-object v1, p0, Lcom/miui/simlock/fragment/SimLockChooseFragment$a;->a:Lcom/miui/simlock/fragment/SimLockChooseFragment;

    invoke-static {v1}, Lcom/miui/simlock/fragment/SimLockChooseFragment;->b0(Lcom/miui/simlock/fragment/SimLockChooseFragment;)Landroidx/preference/Preference;

    move-result-object v1

    const/4 v2, 0x1

    const/4 v3, 0x0

    const-string v4, "slot_id"

    if-ne p1, v1, :cond_0

    invoke-virtual {v0, v4, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lcom/miui/simlock/fragment/SimLockChooseFragment$a;->a:Lcom/miui/simlock/fragment/SimLockChooseFragment;

    invoke-static {v1}, Lcom/miui/simlock/fragment/SimLockChooseFragment;->c0(Lcom/miui/simlock/fragment/SimLockChooseFragment;)Landroidx/preference/Preference;

    move-result-object v1

    if-ne p1, v1, :cond_1

    invoke-virtual {v0, v4, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    :cond_1
    :goto_0
    iget-object p1, p0, Lcom/miui/simlock/fragment/SimLockChooseFragment$a;->a:Lcom/miui/simlock/fragment/SimLockChooseFragment;

    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    const-string v1, "sim_request_code"

    invoke-virtual {p1, v1, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p1

    const/16 v3, 0x64

    if-ne p1, v3, :cond_2

    invoke-virtual {v0, v1, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    iget-object p1, p0, Lcom/miui/simlock/fragment/SimLockChooseFragment$a;->a:Lcom/miui/simlock/fragment/SimLockChooseFragment;

    iget-object p1, p1, Lcom/miui/simlock/fragment/SimLockBaseFragment;->b:Landroid/content/Context;

    invoke-static {p1, v0, v3}, Lx4/f1;->S(Landroid/content/Context;Landroid/content/Intent;I)Z

    goto :goto_1

    :cond_2
    iget-object p1, p0, Lcom/miui/simlock/fragment/SimLockChooseFragment$a;->a:Lcom/miui/simlock/fragment/SimLockChooseFragment;

    invoke-virtual {p1, v0}, Landroidx/fragment/app/Fragment;->startActivity(Landroid/content/Intent;)V

    :goto_1
    return v2
.end method
