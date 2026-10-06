.class final Lcom/miui/antivirus/activity/MonitoredAppSettingsActivity$PreferenceFragment$c;
.super Lbk/n;
.source "SourceFile"

# interfaces
.implements Lak/a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/antivirus/activity/MonitoredAppSettingsActivity$PreferenceFragment;-><init>()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lbk/n;",
        "Lak/a<",
        "Lcom/miui/antivirus/ui/HeaderPreference;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/miui/antivirus/activity/MonitoredAppSettingsActivity$PreferenceFragment;


# direct methods
.method constructor <init>(Lcom/miui/antivirus/activity/MonitoredAppSettingsActivity$PreferenceFragment;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/antivirus/activity/MonitoredAppSettingsActivity$PreferenceFragment$c;->a:Lcom/miui/antivirus/activity/MonitoredAppSettingsActivity$PreferenceFragment;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lbk/n;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final a()Lcom/miui/antivirus/ui/HeaderPreference;
    .locals 2
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object v0, p0, Lcom/miui/antivirus/activity/MonitoredAppSettingsActivity$PreferenceFragment$c;->a:Lcom/miui/antivirus/activity/MonitoredAppSettingsActivity$PreferenceFragment;

    invoke-virtual {v0}, Landroidx/preference/PreferenceFragmentCompat;->getPreferenceScreen()Landroidx/preference/PreferenceScreen;

    move-result-object v0

    const-string v1, "security_payment_main_header"

    invoke-virtual {v0, v1}, Landroidx/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v0

    check-cast v0, Lcom/miui/antivirus/ui/HeaderPreference;

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Preference with key \'security_payment_main_header\' not found!"

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public bridge synthetic invoke()Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0}, Lcom/miui/antivirus/activity/MonitoredAppSettingsActivity$PreferenceFragment$c;->a()Lcom/miui/antivirus/ui/HeaderPreference;

    move-result-object v0

    return-object v0
.end method
