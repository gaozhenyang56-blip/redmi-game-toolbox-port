.class Lcom/miui/securityscan/ui/settings/SettingsFragment$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/securityscan/ui/settings/SettingsFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "b"
.end annotation


# instance fields
.field private a:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Lcom/miui/securityscan/ui/settings/SettingsFragment;",
            ">;"
        }
    .end annotation
.end field

.field private b:Landroid/content/Context;

.field final synthetic c:Lcom/miui/securityscan/ui/settings/SettingsFragment;


# direct methods
.method public constructor <init>(Lcom/miui/securityscan/ui/settings/SettingsFragment;Lcom/miui/securityscan/ui/settings/SettingsFragment;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/securityscan/ui/settings/SettingsFragment$b;->c:Lcom/miui/securityscan/ui/settings/SettingsFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance p1, Ljava/lang/ref/WeakReference;

    invoke-direct {p1, p2}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object p1, p0, Lcom/miui/securityscan/ui/settings/SettingsFragment$b;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {p2}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    iput-object p1, p0, Lcom/miui/securityscan/ui/settings/SettingsFragment$b;->b:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1

    iget-object p2, p0, Lcom/miui/securityscan/ui/settings/SettingsFragment$b;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {p2}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/miui/securityscan/ui/settings/SettingsFragment;

    if-nez p2, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x1

    invoke-static {v0}, Lqf/c;->E0(Z)V

    invoke-static {p2}, Lcom/miui/securityscan/ui/settings/SettingsFragment;->g0(Lcom/miui/securityscan/ui/settings/SettingsFragment;)Landroidx/preference/CheckBoxPreference;

    move-result-object p2

    const/4 v0, 0x0

    invoke-virtual {p2, v0}, Landroidx/preference/TwoStatePreference;->setChecked(Z)V

    iget-object p2, p0, Lcom/miui/securityscan/ui/settings/SettingsFragment$b;->b:Landroid/content/Context;

    invoke-static {p2, v0}, Leg/o;->c(Landroid/content/Context;Z)V

    invoke-static {}, Lcom/miui/earthquakewarning/utils/Utils;->isEarthquakeWarningOpen()Z

    move-result p2

    if-eqz p2, :cond_1

    invoke-static {}, Lcom/miui/earthquakewarning/EarthquakeWarningManager;->getInstance()Lcom/miui/earthquakewarning/EarthquakeWarningManager;

    move-result-object p2

    iget-object v0, p0, Lcom/miui/securityscan/ui/settings/SettingsFragment$b;->b:Landroid/content/Context;

    invoke-virtual {p2, v0}, Lcom/miui/earthquakewarning/EarthquakeWarningManager;->closeEarthquakeWarning(Landroid/content/Context;)V

    :cond_1
    invoke-static {}, Lcom/miui/warningcenter/disasterwarning/Utils;->getStrongPushToggle()Z

    move-result p2

    if-nez p2, :cond_2

    invoke-static {}, Lcom/miui/warningcenter/disasterwarning/Utils;->getSystemPushToggle()Z

    move-result p2

    if-eqz p2, :cond_3

    :cond_2
    invoke-static {}, Lcom/miui/warningcenter/disasterwarning/WarningCenterDisasterManager;->getInstance()Lcom/miui/warningcenter/disasterwarning/WarningCenterDisasterManager;

    move-result-object p2

    iget-object v0, p0, Lcom/miui/securityscan/ui/settings/SettingsFragment$b;->b:Landroid/content/Context;

    invoke-virtual {p2, v0}, Lcom/miui/warningcenter/disasterwarning/WarningCenterDisasterManager;->closeWarning(Landroid/content/Context;)V

    :cond_3
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    return-void
.end method
