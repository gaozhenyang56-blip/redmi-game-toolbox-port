.class Lcom/miui/antispam/ui/activity/BackSoundActivity$BackSoundFragment$e;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/antispam/ui/activity/BackSoundActivity$BackSoundFragment;->onPreferenceClick(Landroidx/preference/Preference;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/miui/antispam/ui/activity/BackSoundActivity$BackSoundFragment;


# direct methods
.method constructor <init>(Lcom/miui/antispam/ui/activity/BackSoundActivity$BackSoundFragment;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/antispam/ui/activity/BackSoundActivity$BackSoundFragment$e;->a:Lcom/miui/antispam/ui/activity/BackSoundActivity$BackSoundFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3

    if-nez p2, :cond_0

    invoke-static {}, Lcom/miui/antispam/ui/activity/BackSoundActivity$BackSoundFragment;->l0()Landroid/net/Uri;

    move-result-object p2

    goto :goto_0

    :cond_0
    invoke-static {}, Lcom/miui/antispam/ui/activity/BackSoundActivity$BackSoundFragment;->m0()Landroid/net/Uri;

    move-result-object p2

    :goto_0
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.CALL"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/miui/antispam/ui/activity/BackSoundActivity$BackSoundFragment$e;->a:Lcom/miui/antispam/ui/activity/BackSoundActivity$BackSoundFragment;

    invoke-static {v1}, Lcom/miui/antispam/ui/activity/BackSoundActivity$BackSoundFragment;->s0(Lcom/miui/antispam/ui/activity/BackSoundActivity$BackSoundFragment;)I

    move-result v1

    const/4 v2, -0x1

    if-eq v1, v2, :cond_1

    iget-object v1, p0, Lcom/miui/antispam/ui/activity/BackSoundActivity$BackSoundFragment$e;->a:Lcom/miui/antispam/ui/activity/BackSoundActivity$BackSoundFragment;

    invoke-static {v1}, Lcom/miui/antispam/ui/activity/BackSoundActivity$BackSoundFragment;->s0(Lcom/miui/antispam/ui/activity/BackSoundActivity$BackSoundFragment;)I

    move-result v1

    invoke-static {v0, v1}, Lmiui/telephony/SubscriptionManager;->putSlotIdExtra(Landroid/content/Intent;I)V

    iget-object v1, p0, Lcom/miui/antispam/ui/activity/BackSoundActivity$BackSoundFragment$e;->a:Lcom/miui/antispam/ui/activity/BackSoundActivity$BackSoundFragment;

    invoke-static {v1}, Lcom/miui/antispam/ui/activity/BackSoundActivity$BackSoundFragment;->s0(Lcom/miui/antispam/ui/activity/BackSoundActivity$BackSoundFragment;)I

    move-result v1

    const-string v2, "com.android.phone.extra.slot"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    :cond_1
    invoke-virtual {v0, p2}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    iget-object p2, p0, Lcom/miui/antispam/ui/activity/BackSoundActivity$BackSoundFragment$e;->a:Lcom/miui/antispam/ui/activity/BackSoundActivity$BackSoundFragment;

    invoke-virtual {p2, v0}, Lcom/miui/common/base/ui/MiuiXPreferenceFragment;->startActivity(Landroid/content/Intent;)V

    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    return-void
.end method
