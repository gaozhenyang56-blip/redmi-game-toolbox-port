.class Lcom/miui/idprovider/ui/legacy/OAIDSettingsLegacy$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnDismissListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/idprovider/ui/legacy/OAIDSettingsLegacy;->onPreferenceClick(Landroidx/preference/Preference;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/miui/idprovider/ui/legacy/OAIDSettingsLegacy;


# direct methods
.method constructor <init>(Lcom/miui/idprovider/ui/legacy/OAIDSettingsLegacy;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/idprovider/ui/legacy/OAIDSettingsLegacy$b;->a:Lcom/miui/idprovider/ui/legacy/OAIDSettingsLegacy;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 1

    iget-object p1, p0, Lcom/miui/idprovider/ui/legacy/OAIDSettingsLegacy$b;->a:Lcom/miui/idprovider/ui/legacy/OAIDSettingsLegacy;

    const/4 v0, 0x5

    invoke-static {p1, v0}, Lcom/miui/idprovider/ui/legacy/OAIDSettingsLegacy;->d0(Lcom/miui/idprovider/ui/legacy/OAIDSettingsLegacy;I)I

    iget-object p1, p0, Lcom/miui/idprovider/ui/legacy/OAIDSettingsLegacy$b;->a:Lcom/miui/idprovider/ui/legacy/OAIDSettingsLegacy;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/miui/idprovider/ui/legacy/OAIDSettingsLegacy;->e0(Lcom/miui/idprovider/ui/legacy/OAIDSettingsLegacy;Landroid/widget/Button;)Landroid/widget/Button;

    iget-object p1, p0, Lcom/miui/idprovider/ui/legacy/OAIDSettingsLegacy$b;->a:Lcom/miui/idprovider/ui/legacy/OAIDSettingsLegacy;

    invoke-static {p1}, Lcom/miui/idprovider/ui/legacy/OAIDSettingsLegacy;->f0(Lcom/miui/idprovider/ui/legacy/OAIDSettingsLegacy;)Lmiuix/preference/CommentPreference;

    move-result-object p1

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroidx/preference/Preference;->setEnabled(Z)V

    return-void
.end method
