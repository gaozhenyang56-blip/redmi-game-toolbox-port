.class Lcom/miui/securityscan/ui/settings/SettingsPrivacyActivity$SettingsPrivacyFragment$a;
.super Ljava/lang/Thread;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/securityscan/ui/settings/SettingsPrivacyActivity$SettingsPrivacyFragment;->j0(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Z

.field final synthetic b:Lcom/miui/securityscan/ui/settings/SettingsPrivacyActivity$SettingsPrivacyFragment;


# direct methods
.method constructor <init>(Lcom/miui/securityscan/ui/settings/SettingsPrivacyActivity$SettingsPrivacyFragment;Z)V
    .locals 0

    iput-object p1, p0, Lcom/miui/securityscan/ui/settings/SettingsPrivacyActivity$SettingsPrivacyFragment$a;->b:Lcom/miui/securityscan/ui/settings/SettingsPrivacyActivity$SettingsPrivacyFragment;

    iput-boolean p2, p0, Lcom/miui/securityscan/ui/settings/SettingsPrivacyActivity$SettingsPrivacyFragment$a;->a:Z

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    invoke-super {p0}, Ljava/lang/Thread;->run()V

    iget-object v0, p0, Lcom/miui/securityscan/ui/settings/SettingsPrivacyActivity$SettingsPrivacyFragment$a;->b:Lcom/miui/securityscan/ui/settings/SettingsPrivacyActivity$SettingsPrivacyFragment;

    invoke-static {v0}, Lcom/miui/securityscan/ui/settings/SettingsPrivacyActivity$SettingsPrivacyFragment;->a0(Lcom/miui/securityscan/ui/settings/SettingsPrivacyActivity$SettingsPrivacyFragment;)Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/securityscan/ui/settings/SettingsPrivacyActivity$SettingsPrivacyFragment$a;->b:Lcom/miui/securityscan/ui/settings/SettingsPrivacyActivity$SettingsPrivacyFragment;

    invoke-static {v1}, Lcom/miui/securityscan/ui/settings/SettingsPrivacyActivity$SettingsPrivacyFragment;->a0(Lcom/miui/securityscan/ui/settings/SettingsPrivacyActivity$SettingsPrivacyFragment;)Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->isFinishing()Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/miui/securityscan/ui/settings/SettingsPrivacyActivity$SettingsPrivacyFragment$a;->b:Lcom/miui/securityscan/ui/settings/SettingsPrivacyActivity$SettingsPrivacyFragment;

    invoke-static {v1}, Lcom/miui/securityscan/ui/settings/SettingsPrivacyActivity$SettingsPrivacyFragment;->a0(Lcom/miui/securityscan/ui/settings/SettingsPrivacyActivity$SettingsPrivacyFragment;)Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->isDestroyed()Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/miui/securityscan/ui/settings/SettingsPrivacyActivity$SettingsPrivacyFragment$a;->b:Lcom/miui/securityscan/ui/settings/SettingsPrivacyActivity$SettingsPrivacyFragment;

    invoke-static {v1}, Lcom/miui/securityscan/ui/settings/SettingsPrivacyActivity$SettingsPrivacyFragment;->a0(Lcom/miui/securityscan/ui/settings/SettingsPrivacyActivity$SettingsPrivacyFragment;)Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    iget-boolean v2, p0, Lcom/miui/securityscan/ui/settings/SettingsPrivacyActivity$SettingsPrivacyFragment$a;->a:Z

    invoke-static {v0, v1, v2}, Leg/r;->b(Landroid/content/Context;Ljava/lang/String;Z)V

    :cond_0
    return-void
.end method
