.class Lcom/miui/idprovider/ui/legacy/OAIDSettingsLegacy$c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


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

    iput-object p1, p0, Lcom/miui/idprovider/ui/legacy/OAIDSettingsLegacy$c;->a:Lcom/miui/idprovider/ui/legacy/OAIDSettingsLegacy;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2

    iget-object p1, p0, Lcom/miui/idprovider/ui/legacy/OAIDSettingsLegacy$c;->a:Lcom/miui/idprovider/ui/legacy/OAIDSettingsLegacy;

    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    const-string p2, "content://com.miui.idprovider/oaid"

    invoke-static {p2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p2

    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    const/4 v1, 0x0

    invoke-virtual {p1, p2, v0, v1, v1}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    iget-object p1, p0, Lcom/miui/idprovider/ui/legacy/OAIDSettingsLegacy$c;->a:Lcom/miui/idprovider/ui/legacy/OAIDSettingsLegacy;

    invoke-static {p1}, Lcom/miui/idprovider/ui/legacy/OAIDSettingsLegacy;->c0(Lcom/miui/idprovider/ui/legacy/OAIDSettingsLegacy;)V

    iget-object p1, p0, Lcom/miui/idprovider/ui/legacy/OAIDSettingsLegacy$c;->a:Lcom/miui/idprovider/ui/legacy/OAIDSettingsLegacy;

    const-string p2, "oaid_reset"

    const-string v0, "click_oaid_reset"

    invoke-static {p1, p2, p2, v0}, Lcom/miui/idprovider/ui/legacy/OAIDSettingsLegacy;->g0(Lcom/miui/idprovider/ui/legacy/OAIDSettingsLegacy;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
