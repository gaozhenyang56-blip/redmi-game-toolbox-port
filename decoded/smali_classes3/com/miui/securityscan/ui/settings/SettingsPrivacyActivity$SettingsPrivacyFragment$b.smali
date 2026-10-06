.class Lcom/miui/securityscan/ui/settings/SettingsPrivacyActivity$SettingsPrivacyFragment$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


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

    iput-object p1, p0, Lcom/miui/securityscan/ui/settings/SettingsPrivacyActivity$SettingsPrivacyFragment$b;->a:Lcom/miui/securityscan/ui/settings/SettingsPrivacyActivity$SettingsPrivacyFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 0

    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    iget-object p1, p0, Lcom/miui/securityscan/ui/settings/SettingsPrivacyActivity$SettingsPrivacyFragment$b;->a:Lcom/miui/securityscan/ui/settings/SettingsPrivacyActivity$SettingsPrivacyFragment;

    invoke-static {p1}, Lcom/miui/securityscan/ui/settings/SettingsPrivacyActivity$SettingsPrivacyFragment;->b0(Lcom/miui/securityscan/ui/settings/SettingsPrivacyActivity$SettingsPrivacyFragment;)V

    return-void
.end method
