.class public Lcom/miui/electricrisk/ElectricRiskMainFragment;
.super Lmiuix/preference/PreferenceFragment;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/electricrisk/ElectricRiskMainFragment$c;
    }
.end annotation


# static fields
.field public static final h:Ljava/lang/String;


# instance fields
.field private a:Lcom/miui/electricrisk/ElectricProtectionFunctionPreference;

.field private b:Lcom/miui/electricrisk/ElectricProtectionFunctionPreference;

.field private c:Lcom/miui/electricrisk/ElectricProtectionFunctionPreference;

.field private d:Lcom/miui/electricrisk/ElectricProtectionFunctionPreference;

.field private e:Lcom/miui/electricrisk/ElectricProtectionFunctionPreference;

.field private f:Lcom/miui/electricrisk/ElectricRiskMainFragment$c;

.field private g:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lcom/miui/electricrisk/ElectricRiskMainFragment;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/miui/electricrisk/ElectricRiskMainFragment;->h:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lmiuix/preference/PreferenceFragment;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/miui/electricrisk/ElectricRiskMainFragment;->g:Z

    return-void
.end method

.method static synthetic a0(Lcom/miui/electricrisk/ElectricRiskMainFragment;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/miui/electricrisk/ElectricRiskMainFragment;->g:Z

    return p0
.end method

.method static synthetic b0(Lcom/miui/electricrisk/ElectricRiskMainFragment;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/miui/electricrisk/ElectricRiskMainFragment;->g:Z

    return p1
.end method

.method static synthetic c0(Lcom/miui/electricrisk/ElectricRiskMainFragment;)Lcom/miui/electricrisk/ElectricProtectionFunctionPreference;
    .locals 0

    iget-object p0, p0, Lcom/miui/electricrisk/ElectricRiskMainFragment;->b:Lcom/miui/electricrisk/ElectricProtectionFunctionPreference;

    return-object p0
.end method

.method static synthetic d0(Lcom/miui/electricrisk/ElectricRiskMainFragment;)Lcom/miui/electricrisk/ElectricRiskMainFragment$c;
    .locals 0

    iget-object p0, p0, Lcom/miui/electricrisk/ElectricRiskMainFragment;->f:Lcom/miui/electricrisk/ElectricRiskMainFragment$c;

    return-object p0
.end method


# virtual methods
.method public onCreatePreferences(Landroid/os/Bundle;Ljava/lang/String;)V
    .locals 0

    const p1, 0x7f150024

    invoke-virtual {p0, p1, p2}, Landroidx/preference/PreferenceFragmentCompat;->setPreferencesFromResource(ILjava/lang/String;)V

    const-string p1, "protect_phone"

    invoke-virtual {p0, p1}, Landroidx/preference/PreferenceFragmentCompat;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p1

    check-cast p1, Lcom/miui/electricrisk/ElectricProtectionFunctionPreference;

    iput-object p1, p0, Lcom/miui/electricrisk/ElectricRiskMainFragment;->a:Lcom/miui/electricrisk/ElectricProtectionFunctionPreference;

    const-string p1, "protect_mms"

    invoke-virtual {p0, p1}, Landroidx/preference/PreferenceFragmentCompat;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p1

    check-cast p1, Lcom/miui/electricrisk/ElectricProtectionFunctionPreference;

    iput-object p1, p0, Lcom/miui/electricrisk/ElectricRiskMainFragment;->b:Lcom/miui/electricrisk/ElectricProtectionFunctionPreference;

    const-string p1, "protect_app"

    invoke-virtual {p0, p1}, Landroidx/preference/PreferenceFragmentCompat;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p1

    check-cast p1, Lcom/miui/electricrisk/ElectricProtectionFunctionPreference;

    iput-object p1, p0, Lcom/miui/electricrisk/ElectricRiskMainFragment;->c:Lcom/miui/electricrisk/ElectricProtectionFunctionPreference;

    const-string p1, "protect_web"

    invoke-virtual {p0, p1}, Landroidx/preference/PreferenceFragmentCompat;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p1

    check-cast p1, Lcom/miui/electricrisk/ElectricProtectionFunctionPreference;

    iput-object p1, p0, Lcom/miui/electricrisk/ElectricRiskMainFragment;->d:Lcom/miui/electricrisk/ElectricProtectionFunctionPreference;

    const-string p1, "protect_screen_share"

    invoke-virtual {p0, p1}, Landroidx/preference/PreferenceFragmentCompat;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p1

    check-cast p1, Lcom/miui/electricrisk/ElectricProtectionFunctionPreference;

    iput-object p1, p0, Lcom/miui/electricrisk/ElectricRiskMainFragment;->e:Lcom/miui/electricrisk/ElectricProtectionFunctionPreference;

    invoke-static {}, Ldb/c;->a()I

    move-result p1

    const/16 p2, 0xd

    if-gt p1, p2, :cond_0

    new-instance p1, Lcom/miui/electricrisk/ElectricRiskMainFragment$a;

    invoke-direct {p1, p0}, Lcom/miui/electricrisk/ElectricRiskMainFragment$a;-><init>(Lcom/miui/electricrisk/ElectricRiskMainFragment;)V

    iput-object p1, p0, Lcom/miui/electricrisk/ElectricRiskMainFragment;->f:Lcom/miui/electricrisk/ElectricRiskMainFragment$c;

    :cond_0
    iget-object p1, p0, Lcom/miui/electricrisk/ElectricRiskMainFragment;->a:Lcom/miui/electricrisk/ElectricProtectionFunctionPreference;

    invoke-static {}, Lcom/miui/electricrisk/h;->m()Z

    move-result p2

    invoke-virtual {p1, p2}, Landroidx/preference/Preference;->setVisible(Z)V

    iget-object p1, p0, Lcom/miui/electricrisk/ElectricRiskMainFragment;->c:Lcom/miui/electricrisk/ElectricProtectionFunctionPreference;

    invoke-static {}, Lcom/miui/electricrisk/h;->d()Z

    move-result p2

    invoke-virtual {p1, p2}, Landroidx/preference/Preference;->setVisible(Z)V

    iget-object p1, p0, Lcom/miui/electricrisk/ElectricRiskMainFragment;->d:Lcom/miui/electricrisk/ElectricProtectionFunctionPreference;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    move-result-object p2

    invoke-static {p2}, Lcom/miui/electricrisk/h;->q(Landroid/content/Context;)Z

    move-result p2

    invoke-virtual {p1, p2}, Landroidx/preference/Preference;->setVisible(Z)V

    iget-object p1, p0, Lcom/miui/electricrisk/ElectricRiskMainFragment;->e:Lcom/miui/electricrisk/ElectricProtectionFunctionPreference;

    invoke-static {}, Lcom/miui/electricrisk/h;->o()Z

    move-result p2

    invoke-virtual {p1, p2}, Landroidx/preference/Preference;->setVisible(Z)V

    return-void
.end method

.method public onResume()V
    .locals 2

    invoke-super {p0}, Landroidx/fragment/app/Fragment;->onResume()V

    invoke-static {}, Ldb/c;->a()I

    move-result v0

    const/16 v1, 0xd

    if-gt v0, v1, :cond_0

    new-instance v0, Lcom/miui/electricrisk/ElectricRiskMainFragment$b;

    invoke-direct {v0, p0}, Lcom/miui/electricrisk/ElectricRiskMainFragment$b;-><init>(Lcom/miui/electricrisk/ElectricRiskMainFragment;)V

    invoke-static {v0}, Lcom/miui/common/base/asyn/a;->a(Ljava/lang/Runnable;)V

    :cond_0
    iget-object v0, p0, Lcom/miui/electricrisk/ElectricRiskMainFragment;->a:Lcom/miui/electricrisk/ElectricProtectionFunctionPreference;

    invoke-virtual {v0}, Lcom/miui/electricrisk/ElectricProtectionFunctionPreference;->notifyChanged()V

    iget-object v0, p0, Lcom/miui/electricrisk/ElectricRiskMainFragment;->b:Lcom/miui/electricrisk/ElectricProtectionFunctionPreference;

    invoke-virtual {v0}, Lcom/miui/electricrisk/ElectricProtectionFunctionPreference;->notifyChanged()V

    iget-object v0, p0, Lcom/miui/electricrisk/ElectricRiskMainFragment;->c:Lcom/miui/electricrisk/ElectricProtectionFunctionPreference;

    invoke-virtual {v0}, Lcom/miui/electricrisk/ElectricProtectionFunctionPreference;->notifyChanged()V

    iget-object v0, p0, Lcom/miui/electricrisk/ElectricRiskMainFragment;->d:Lcom/miui/electricrisk/ElectricProtectionFunctionPreference;

    invoke-virtual {v0}, Lcom/miui/electricrisk/ElectricProtectionFunctionPreference;->notifyChanged()V

    iget-object v0, p0, Lcom/miui/electricrisk/ElectricRiskMainFragment;->e:Lcom/miui/electricrisk/ElectricProtectionFunctionPreference;

    invoke-virtual {v0}, Lcom/miui/electricrisk/ElectricProtectionFunctionPreference;->notifyChanged()V

    return-void
.end method
