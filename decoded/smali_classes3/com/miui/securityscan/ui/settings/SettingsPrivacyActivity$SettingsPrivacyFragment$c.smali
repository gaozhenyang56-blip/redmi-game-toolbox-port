.class Lcom/miui/securityscan/ui/settings/SettingsPrivacyActivity$SettingsPrivacyFragment$c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnDismissListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/securityscan/ui/settings/SettingsPrivacyActivity$SettingsPrivacyFragment;->i0(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/miui/securityscan/ui/settings/SettingsPrivacyActivity$SettingsPrivacyFragment;


# direct methods
.method constructor <init>(Lcom/miui/securityscan/ui/settings/SettingsPrivacyActivity$SettingsPrivacyFragment;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/securityscan/ui/settings/SettingsPrivacyActivity$SettingsPrivacyFragment$c;->a:Lcom/miui/securityscan/ui/settings/SettingsPrivacyActivity$SettingsPrivacyFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 1

    iget-object p1, p0, Lcom/miui/securityscan/ui/settings/SettingsPrivacyActivity$SettingsPrivacyFragment$c;->a:Lcom/miui/securityscan/ui/settings/SettingsPrivacyActivity$SettingsPrivacyFragment;

    invoke-static {p1}, Lcom/miui/securityscan/ui/settings/SettingsPrivacyActivity$SettingsPrivacyFragment;->c0(Lcom/miui/securityscan/ui/settings/SettingsPrivacyActivity$SettingsPrivacyFragment;)Landroid/os/CountDownTimer;

    move-result-object p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/miui/securityscan/ui/settings/SettingsPrivacyActivity$SettingsPrivacyFragment$c;->a:Lcom/miui/securityscan/ui/settings/SettingsPrivacyActivity$SettingsPrivacyFragment;

    invoke-static {p1}, Lcom/miui/securityscan/ui/settings/SettingsPrivacyActivity$SettingsPrivacyFragment;->c0(Lcom/miui/securityscan/ui/settings/SettingsPrivacyActivity$SettingsPrivacyFragment;)Landroid/os/CountDownTimer;

    move-result-object p1

    invoke-virtual {p1}, Landroid/os/CountDownTimer;->cancel()V

    iget-object p1, p0, Lcom/miui/securityscan/ui/settings/SettingsPrivacyActivity$SettingsPrivacyFragment$c;->a:Lcom/miui/securityscan/ui/settings/SettingsPrivacyActivity$SettingsPrivacyFragment;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/miui/securityscan/ui/settings/SettingsPrivacyActivity$SettingsPrivacyFragment;->d0(Lcom/miui/securityscan/ui/settings/SettingsPrivacyActivity$SettingsPrivacyFragment;Landroid/os/CountDownTimer;)Landroid/os/CountDownTimer;

    :cond_0
    return-void
.end method
