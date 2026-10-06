.class public Lcom/miui/powercenter/PowerSettingsFragment;
.super Lcom/miui/common/base/ui/MiuiXPreferenceFragment;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/powercenter/PowerSettingsFragment$k;,
        Lcom/miui/powercenter/PowerSettingsFragment$l;
    }
.end annotation


# static fields
.field private static L:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private A:Lmiuix/appcompat/app/ProgressDialog;

.field private B:Landroid/os/CountDownTimer;

.field private C:Loe/a;

.field private D:I

.field private E:Z

.field private F:Landroidx/preference/PreferenceCategory;

.field private G:Landroidx/preference/Preference$c;

.field private H:Landroidx/preference/Preference$c;

.field private I:Landroidx/preference/Preference$d;

.field private J:Landroid/database/ContentObserver;

.field private K:Landroid/content/BroadcastReceiver;

.field private b:Lmiuix/preference/DropDownPreference;

.field private c:Lmiuix/preference/TextPreference;

.field private d:Landroidx/preference/CheckBoxPreference;

.field private e:Lmiuix/preference/TextPreference;

.field private f:Lmiuix/preference/TextPreference;

.field private g:Lmiuix/preference/TextPreference;

.field private h:Lmiuix/preference/TextPreference;

.field private i:Landroidx/preference/ListPreference;

.field private j:Landroidx/preference/CheckBoxPreference;

.field private k:Landroidx/preference/CheckBoxPreference;

.field private l:Landroidx/preference/PreferenceScreen;

.field private m:Z

.field private n:I

.field private o:[I

.field private p:[Ljava/lang/String;

.field private q:[Ljava/lang/String;

.field private r:I

.field private s:[I

.field private t:[Ljava/lang/String;

.field private u:[Ljava/lang/String;

.field private v:[Ljava/lang/String;

.field private w:[Ljava/lang/String;

.field private x:I

.field private y:I

.field private z:Z


# direct methods
.method static constructor <clinit>()V
    .locals 11

    new-instance v0, Ljava/util/HashSet;

    const-string v1, "jason"

    const-string v2, "chiron"

    const-string v3, "polaris"

    const-string v4, "equuleus"

    const-string v5, "ursa"

    const-string v6, "beryllium"

    const-string v7, "sirius"

    const-string v8, "platina"

    const-string v9, "dipper"

    const-string v10, "nitrogen"

    filled-new-array/range {v1 .. v10}, [Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    sput-object v0, Lcom/miui/powercenter/PowerSettingsFragment;->L:Ljava/util/Set;

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    invoke-direct {p0}, Lcom/miui/common/base/ui/MiuiXPreferenceFragment;-><init>()V

    const-string v0, "default"

    const-string v1, "performance"

    filled-new-array {v0, v1}, [Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/powercenter/PowerSettingsFragment;->w:[Ljava/lang/String;

    const/4 v0, -0x1

    iput v0, p0, Lcom/miui/powercenter/PowerSettingsFragment;->x:I

    iput v0, p0, Lcom/miui/powercenter/PowerSettingsFragment;->y:I

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/miui/powercenter/PowerSettingsFragment;->z:Z

    iput v0, p0, Lcom/miui/powercenter/PowerSettingsFragment;->D:I

    new-instance v0, Lcom/miui/powercenter/PowerSettingsFragment$a;

    invoke-direct {v0, p0}, Lcom/miui/powercenter/PowerSettingsFragment$a;-><init>(Lcom/miui/powercenter/PowerSettingsFragment;)V

    iput-object v0, p0, Lcom/miui/powercenter/PowerSettingsFragment;->G:Landroidx/preference/Preference$c;

    new-instance v0, Lcom/miui/powercenter/PowerSettingsFragment$c;

    invoke-direct {v0, p0}, Lcom/miui/powercenter/PowerSettingsFragment$c;-><init>(Lcom/miui/powercenter/PowerSettingsFragment;)V

    iput-object v0, p0, Lcom/miui/powercenter/PowerSettingsFragment;->H:Landroidx/preference/Preference$c;

    new-instance v0, Lcom/miui/powercenter/PowerSettingsFragment$d;

    invoke-direct {v0, p0}, Lcom/miui/powercenter/PowerSettingsFragment$d;-><init>(Lcom/miui/powercenter/PowerSettingsFragment;)V

    iput-object v0, p0, Lcom/miui/powercenter/PowerSettingsFragment;->I:Landroidx/preference/Preference$d;

    new-instance v0, Lcom/miui/powercenter/PowerSettingsFragment$f;

    new-instance v1, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    invoke-direct {v0, p0, v1}, Lcom/miui/powercenter/PowerSettingsFragment$f;-><init>(Lcom/miui/powercenter/PowerSettingsFragment;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/miui/powercenter/PowerSettingsFragment;->J:Landroid/database/ContentObserver;

    new-instance v0, Lcom/miui/powercenter/PowerSettingsFragment$b;

    invoke-direct {v0, p0}, Lcom/miui/powercenter/PowerSettingsFragment$b;-><init>(Lcom/miui/powercenter/PowerSettingsFragment;)V

    iput-object v0, p0, Lcom/miui/powercenter/PowerSettingsFragment;->K:Landroid/content/BroadcastReceiver;

    return-void
.end method

.method static synthetic A0(Lcom/miui/powercenter/PowerSettingsFragment;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/miui/powercenter/PowerSettingsFragment;->z:Z

    return p1
.end method

.method static synthetic B0(Lcom/miui/powercenter/PowerSettingsFragment;)Lmiuix/preference/DropDownPreference;
    .locals 0

    iget-object p0, p0, Lcom/miui/powercenter/PowerSettingsFragment;->b:Lmiuix/preference/DropDownPreference;

    return-object p0
.end method

.method static synthetic C0(Lcom/miui/powercenter/PowerSettingsFragment;)I
    .locals 0

    iget p0, p0, Lcom/miui/powercenter/PowerSettingsFragment;->n:I

    return p0
.end method

.method static synthetic D0(Lcom/miui/powercenter/PowerSettingsFragment;I)I
    .locals 0

    iput p1, p0, Lcom/miui/powercenter/PowerSettingsFragment;->n:I

    return p1
.end method

.method static synthetic E0(Lcom/miui/powercenter/PowerSettingsFragment;)[I
    .locals 0

    iget-object p0, p0, Lcom/miui/powercenter/PowerSettingsFragment;->o:[I

    return-object p0
.end method

.method static synthetic F0(Lcom/miui/powercenter/PowerSettingsFragment;)V
    .locals 0

    invoke-direct {p0}, Lcom/miui/powercenter/PowerSettingsFragment;->f1()V

    return-void
.end method

.method static synthetic G0(Lcom/miui/powercenter/PowerSettingsFragment;)V
    .locals 0

    invoke-direct {p0}, Lcom/miui/powercenter/PowerSettingsFragment;->c1()V

    return-void
.end method

.method static synthetic H0(Lcom/miui/powercenter/PowerSettingsFragment;)V
    .locals 0

    invoke-direct {p0}, Lcom/miui/powercenter/PowerSettingsFragment;->b1()V

    return-void
.end method

.method static synthetic I0(Lcom/miui/powercenter/PowerSettingsFragment;)V
    .locals 0

    invoke-direct {p0}, Lcom/miui/powercenter/PowerSettingsFragment;->g1()V

    return-void
.end method

.method private J0()V
    .locals 3

    iget-object v0, p0, Lcom/miui/powercenter/PowerSettingsFragment;->i:Landroidx/preference/ListPreference;

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lme/a0;->j(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v0

    const-string v2, "ultimate_extra"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/powercenter/PowerSettingsFragment;->i:Landroidx/preference/ListPreference;

    invoke-virtual {v0, v1}, Landroidx/preference/Preference;->setEnabled(Z)V

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lme/a0;->h(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/powercenter/PowerSettingsFragment;->i:Landroidx/preference/ListPreference;

    invoke-virtual {v1, v0}, Landroidx/preference/ListPreference;->w(Ljava/lang/String;)V

    const-string v1, "default"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    iget-object v1, p0, Lcom/miui/powercenter/PowerSettingsFragment;->i:Landroidx/preference/ListPreference;

    iget-object v2, p0, Lcom/miui/powercenter/PowerSettingsFragment;->v:[Ljava/lang/String;

    aget-object v0, v2, v0

    invoke-virtual {v1, v0}, Landroidx/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    :cond_1
    :goto_0
    return-void
.end method

.method private K0(Z)V
    .locals 0

    if-eqz p1, :cond_0

    const/4 p1, 0x7

    invoke-static {p1}, Lke/a;->d(I)Ljava/lang/Boolean;

    goto :goto_0

    :cond_0
    const/4 p1, 0x4

    invoke-static {p1}, Lke/a;->d(I)Ljava/lang/Boolean;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    invoke-static {p1}, Lke/a;->a(Landroid/content/Context;)V

    :goto_0
    return-void
.end method

.method public static L0()Z
    .locals 2

    sget-object v0, Lcom/miui/powercenter/PowerSettingsFragment;->L:Ljava/util/Set;

    sget-object v1, Lmiui/os/Build;->DEVICE:Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "munch"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "IN"

    invoke-static {v0}, Lmiui/os/Build;->checkRegion(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method private M0(I)Ljava/lang/String;
    .locals 1

    if-eqz p1, :cond_2

    const/4 v0, 0x1

    if-eq p1, v0, :cond_1

    const/4 v0, 0x2

    if-eq p1, v0, :cond_0

    const-string p1, ""

    return-object p1

    :cond_0
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v0, 0x7f121325

    :goto_0
    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_1
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v0, 0x7f121321

    goto :goto_0

    :cond_2
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v0, 0x7f121323

    goto :goto_0
.end method

.method private N0()I
    .locals 4

    const-string v0, "android.provider.MiuiSettings$System"

    :try_start_0
    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    const-string v2, "BATTERY_INDICATOR_STYLE"

    const-class v3, Ljava/lang/String;

    invoke-static {v1, v2, v3}, Lbh/f;->n(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    const-string v2, "BATTERY_INDICATOR_STYLE_DEFAULT"

    sget-object v3, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    invoke-static {v0, v2, v3}, Lbh/f;->n(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    invoke-static {v2, v1, v0}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    move-exception v0

    const-string v1, "PowerSettings"

    const-string v2, "getBatteryStyleValue: "

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method private O0()I
    .locals 4

    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "android.intent.action.BATTERY_CHANGED"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x2

    invoke-static {v1, v2, v0, v3}, Lx4/v;->m(Landroid/content/Context;Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;I)Landroid/content/Intent;

    move-result-object v0

    const/4 v1, -0x1

    if-eqz v0, :cond_0

    const-string v2, "level"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    return v0

    :cond_0
    return v1
.end method

.method private P0()I
    .locals 1

    invoke-static {}, Lgd/c;->K()I

    move-result v0

    div-int/lit8 v0, v0, 0x3c

    return v0
.end method

.method private Q0()I
    .locals 1

    invoke-static {}, Lgd/c;->o0()I

    move-result v0

    div-int/lit8 v0, v0, 0x3c

    return v0
.end method

.method private R0(I)Ljava/lang/String;
    .locals 5

    if-nez p1, :cond_0

    const p1, 0x7f120634

    invoke-virtual {p0, p1}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_0
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f100024

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-virtual {v0, v1, p1, v2}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method private S0(I)Ljava/lang/String;
    .locals 5

    if-nez p1, :cond_0

    const p1, 0x7f120634

    invoke-virtual {p0, p1}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_0
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f100024

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-virtual {v0, v1, p1, v2}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method private T0()Landroidx/preference/PreferenceGroup;
    .locals 1

    iget-object v0, p0, Lcom/miui/powercenter/PowerSettingsFragment;->F:Landroidx/preference/PreferenceCategory;

    if-nez v0, :cond_0

    invoke-virtual {p0}, Landroidx/preference/PreferenceFragmentCompat;->getPreferenceScreen()Landroidx/preference/PreferenceScreen;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method private U0()Z
    .locals 8

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "sensor"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/SensorManager;

    const/4 v1, 0x1

    const/4 v2, 0x0

    :try_start_0
    const-class v3, Landroid/hardware/Sensor;

    const-string v4, "getDefaultSensor"

    const/4 v5, 0x2

    new-array v6, v5, [Ljava/lang/Class;

    sget-object v7, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v7, v6, v2

    sget-object v7, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    aput-object v7, v6, v1

    new-array v5, v5, [Ljava/lang/Object;

    const v7, 0x1fa2653

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v5, v2

    sget-object v7, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    aput-object v7, v5, v1

    invoke-static {v0, v3, v4, v6, v5}, Lbh/f;->e(Ljava/lang/Object;Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/Sensor;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    const/4 v0, 0x0

    :goto_0
    if-nez v0, :cond_0

    return v2

    :cond_0
    return v1
.end method

.method private V0()Z
    .locals 2

    sget-boolean v0, Lmiui/os/Build;->IS_INTERNATIONAL_BUILD:Z

    const/4 v1, 0x1

    if-eqz v0, :cond_1

    invoke-direct {p0}, Lcom/miui/powercenter/PowerSettingsFragment;->U0()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/miui/powercenter/PowerSettingsFragment;->L0()Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lce/g;->s(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_1

    return v1

    :cond_1
    invoke-static {}, Lx4/z1;->y()I

    move-result v0

    if-eqz v0, :cond_2

    return v1

    :cond_2
    const/4 v0, 0x0

    return v0
.end method

.method private W0()V
    .locals 2

    invoke-static {}, Lx4/a0;->x()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/miui/powercenter/PowerSettingsFragment;->f:Lmiuix/preference/TextPreference;

    invoke-direct {p0}, Lcom/miui/powercenter/PowerSettingsFragment;->N0()I

    move-result v1

    invoke-direct {p0, v1}, Lcom/miui/powercenter/PowerSettingsFragment;->M0(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lmiuix/preference/TextPreference;->setText(Ljava/lang/String;)V

    :cond_0
    iget-object v0, p0, Lcom/miui/powercenter/PowerSettingsFragment;->d:Landroidx/preference/CheckBoxPreference;

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lme/h;->a(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_1

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lme/h;->c(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 v1, 0x1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    :goto_0
    invoke-virtual {v0, v1}, Landroidx/preference/Preference;->setEnabled(Z)V

    :cond_2
    return-void
.end method

.method private X0()V
    .locals 4

    invoke-direct {p0}, Lcom/miui/powercenter/PowerSettingsFragment;->Q0()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    iget-object v2, p0, Lcom/miui/powercenter/PowerSettingsFragment;->o:[I

    array-length v3, v2

    if-ge v1, v3, :cond_1

    aget v2, v2, v1

    if-ne v2, v0, :cond_0

    iput v1, p0, Lcom/miui/powercenter/PowerSettingsFragment;->n:I

    goto :goto_1

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    :goto_1
    return-void
.end method

.method private Y0(Ljava/lang/String;)V
    .locals 3

    iget-object v0, p0, Lcom/miui/powercenter/PowerSettingsFragment;->i:Landroidx/preference/ListPreference;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p1}, Lme/a0;->m(Landroid/content/Context;Ljava/lang/String;)V

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "warm_control"

    invoke-static {v0, v1, p1}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    iget-object v0, p0, Lcom/miui/powercenter/PowerSettingsFragment;->i:Landroidx/preference/ListPreference;

    invoke-virtual {v0, p1}, Landroidx/preference/ListPreference;->w(Ljava/lang/String;)V

    invoke-static {}, Lme/a0;->d()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "default"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    const/4 v0, 0x1

    xor-int/2addr p1, v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "saveThermalConfig------>"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "PowerSettings"

    invoke-static {v2, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/miui/powercenter/PowerSettingsFragment;->i:Landroidx/preference/ListPreference;

    iget-object v2, p0, Lcom/miui/powercenter/PowerSettingsFragment;->v:[Ljava/lang/String;

    aget-object v2, v2, p1

    invoke-virtual {v1, v2}, Landroidx/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    invoke-static {p1, v0}, Lme/a0;->e(IZ)V

    :cond_0
    return-void
.end method

.method private Z0(I)V
    .locals 3

    :try_start_0
    const-string v0, "android.provider.MiuiSettings$System"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    const-string v1, "BATTERY_INDICATOR_STYLE"

    const-class v2, Ljava/lang/String;

    invoke-static {v0, v1, v2}, Lbh/f;->n(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    invoke-static {v1, v0, p1}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    const-string v0, "PowerSettings"

    const-string v1, "getBatteryStyleValue: "

    invoke-static {v0, v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    :goto_0
    return-void
.end method

.method private a1()V
    .locals 3

    :try_start_0
    new-instance v0, Landroid/content/Intent;

    const-string v1, "miui.intent.action.POWER_HIDE_MODE_APP_LIST"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/miui/common/base/ui/MiuiXPreferenceFragment;->startActivity(Landroid/content/Intent;)V

    const-string v0, "app_smart_save"

    invoke-static {v0}, Lhd/a;->O0(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "PowerSettings"

    const-string v2, "can not find hide mode action"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    return-void
.end method

.method private b1()V
    .locals 6

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f030046

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getIntArray(I)[I

    move-result-object v0

    invoke-direct {p0}, Lcom/miui/powercenter/PowerSettingsFragment;->N0()I

    move-result v1

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    array-length v4, v0

    if-ge v3, v4, :cond_1

    aget v4, v0, v3

    if-ne v4, v1, :cond_0

    goto :goto_1

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    move v3, v2

    :goto_1
    array-length v1, v0

    new-array v4, v1, [Ljava/lang/String;

    :goto_2
    if-ge v2, v1, :cond_2

    aget v5, v0, v2

    invoke-direct {p0, v5}, Lcom/miui/powercenter/PowerSettingsFragment;->M0(I)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    :cond_2
    new-instance v1, Lmiuix/appcompat/app/AlertDialog$Builder;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Lmiuix/appcompat/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v2, 0x7f12131e

    invoke-virtual {p0, v2}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lmiuix/appcompat/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Lmiuix/appcompat/app/AlertDialog$Builder;

    move-result-object v1

    new-instance v2, Lcom/miui/powercenter/PowerSettingsFragment$j;

    invoke-direct {v2, p0, v0, v4}, Lcom/miui/powercenter/PowerSettingsFragment$j;-><init>(Lcom/miui/powercenter/PowerSettingsFragment;[I[Ljava/lang/String;)V

    invoke-virtual {v1, v4, v3, v2}, Lmiuix/appcompat/app/AlertDialog$Builder;->setSingleChoiceItems([Ljava/lang/CharSequence;ILandroid/content/DialogInterface$OnClickListener;)Lmiuix/appcompat/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f120499

    invoke-virtual {p0, v1}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lmiuix/appcompat/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lmiuix/appcompat/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lmiuix/appcompat/app/AlertDialog$Builder;->show()Lmiuix/appcompat/app/AlertDialog;

    return-void
.end method

.method static synthetic c0(Lcom/miui/powercenter/PowerSettingsFragment;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/miui/powercenter/PowerSettingsFragment;->j1(Ljava/lang/String;)V

    return-void
.end method

.method private c1()V
    .locals 3

    new-instance v0, Landroid/content/Intent;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v1

    const-class v2, Lcom/miui/powercenter/bootshutdown/PowerShutdownOnTime;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, v0}, Lcom/miui/common/base/ui/MiuiXPreferenceFragment;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method static synthetic d0(Lcom/miui/powercenter/PowerSettingsFragment;)V
    .locals 0

    invoke-direct {p0}, Lcom/miui/powercenter/PowerSettingsFragment;->d1()V

    return-void
.end method

.method private d1()V
    .locals 3

    new-instance v0, Lmiuix/appcompat/app/AlertDialog$Builder;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lmiuix/appcompat/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f12120e

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lmiuix/appcompat/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Lmiuix/appcompat/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f12120c

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lmiuix/appcompat/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Lmiuix/appcompat/app/AlertDialog$Builder;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lmiuix/appcompat/app/AlertDialog$Builder;->setCancelable(Z)Lmiuix/appcompat/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f12120d

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/miui/powercenter/PowerSettingsFragment$l;

    invoke-direct {v2, p0}, Lcom/miui/powercenter/PowerSettingsFragment$l;-><init>(Lcom/miui/powercenter/PowerSettingsFragment;)V

    invoke-virtual {v0, v1, v2}, Lmiuix/appcompat/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lmiuix/appcompat/app/AlertDialog$Builder;

    move-result-object v0

    new-instance v1, Lcom/miui/powercenter/PowerSettingsFragment$k;

    invoke-direct {v1, p0}, Lcom/miui/powercenter/PowerSettingsFragment$k;-><init>(Lcom/miui/powercenter/PowerSettingsFragment;)V

    const v2, 0x104000a

    invoke-virtual {v0, v2, v1}, Lmiuix/appcompat/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Lmiuix/appcompat/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lmiuix/appcompat/app/AlertDialog$Builder;->show()Lmiuix/appcompat/app/AlertDialog;

    invoke-static {}, Lhd/a;->m()V

    return-void
.end method

.method static synthetic e0(Lcom/miui/powercenter/PowerSettingsFragment;)V
    .locals 0

    invoke-direct {p0}, Lcom/miui/powercenter/PowerSettingsFragment;->h1()V

    return-void
.end method

.method private e1()V
    .locals 3

    :try_start_0
    new-instance v0, Landroid/content/Intent;

    const-string v1, "miui.intent.action.POWER_SCENARIO_POLICY_ACTION"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, "com.miui.powerkeeper"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {p0, v0}, Lcom/miui/common/base/ui/MiuiXPreferenceFragment;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "PowerSettings"

    const-string v2, "showConfigScenarioPolicy error"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    return-void
.end method

.method static synthetic f0(Lcom/miui/powercenter/PowerSettingsFragment;)V
    .locals 0

    invoke-direct {p0}, Lcom/miui/powercenter/PowerSettingsFragment;->a1()V

    return-void
.end method

.method private f1()V
    .locals 4

    new-instance v0, Lmiuix/appcompat/app/AlertDialog$Builder;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lmiuix/appcompat/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v1, 0x7f120633

    invoke-virtual {p0, v1}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lmiuix/appcompat/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Lmiuix/appcompat/app/AlertDialog$Builder;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/powercenter/PowerSettingsFragment;->p:[Ljava/lang/String;

    iget v2, p0, Lcom/miui/powercenter/PowerSettingsFragment;->n:I

    new-instance v3, Lcom/miui/powercenter/PowerSettingsFragment$e;

    invoke-direct {v3, p0}, Lcom/miui/powercenter/PowerSettingsFragment$e;-><init>(Lcom/miui/powercenter/PowerSettingsFragment;)V

    invoke-virtual {v0, v1, v2, v3}, Lmiuix/appcompat/app/AlertDialog$Builder;->setSingleChoiceItems([Ljava/lang/CharSequence;ILandroid/content/DialogInterface$OnClickListener;)Lmiuix/appcompat/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f120499

    invoke-virtual {p0, v1}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lmiuix/appcompat/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lmiuix/appcompat/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lmiuix/appcompat/app/AlertDialog$Builder;->show()Lmiuix/appcompat/app/AlertDialog;

    return-void
.end method

.method static synthetic g0(Lcom/miui/powercenter/PowerSettingsFragment;)V
    .locals 0

    invoke-direct {p0}, Lcom/miui/powercenter/PowerSettingsFragment;->e1()V

    return-void
.end method

.method private g1()V
    .locals 3

    new-instance v0, Landroid/content/Intent;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v1

    const-class v2, Lcom/miui/powercenter/savemode/PowerSaveActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, v0}, Lcom/miui/common/base/ui/MiuiXPreferenceFragment;->startActivity(Landroid/content/Intent;)V

    const-string v0, "save_mode"

    invoke-static {v0}, Lhd/a;->O0(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic h0(Lcom/miui/powercenter/PowerSettingsFragment;)V
    .locals 0

    invoke-direct {p0}, Lcom/miui/powercenter/PowerSettingsFragment;->k1()V

    return-void
.end method

.method private h1()V
    .locals 3

    new-instance v0, Landroid/content/Intent;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v1

    const-class v2, Lcom/miui/superpower/SuperPowerSettings;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, v0}, Lcom/miui/common/base/ui/MiuiXPreferenceFragment;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method static synthetic i0(Lcom/miui/powercenter/PowerSettingsFragment;)[Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/miui/powercenter/PowerSettingsFragment;->p:[Ljava/lang/String;

    return-object p0
.end method

.method private i1(Landroid/content/Context;)V
    .locals 2

    new-instance v0, Lmiuix/appcompat/app/AlertDialog$Builder;

    const v1, 0x7f130455

    invoke-direct {v0, p1, v1}, Lmiuix/appcompat/app/AlertDialog$Builder;-><init>(Landroid/content/Context;I)V

    const/4 p1, 0x1

    invoke-virtual {v0, p1}, Lmiuix/appcompat/app/AlertDialog$Builder;->setCancelable(Z)Lmiuix/appcompat/app/AlertDialog$Builder;

    move-result-object p1

    const v0, 0x7f121330

    invoke-virtual {p1, v0}, Lmiuix/appcompat/app/AlertDialog$Builder;->setTitle(I)Lmiuix/appcompat/app/AlertDialog$Builder;

    move-result-object p1

    const v0, 0x7f121331

    invoke-virtual {p1, v0}, Lmiuix/appcompat/app/AlertDialog$Builder;->setMessage(I)Lmiuix/appcompat/app/AlertDialog$Builder;

    move-result-object p1

    new-instance v0, Lcom/miui/powercenter/PowerSettingsFragment$h;

    invoke-direct {v0, p0}, Lcom/miui/powercenter/PowerSettingsFragment$h;-><init>(Lcom/miui/powercenter/PowerSettingsFragment;)V

    const v1, 0x7f120f48

    invoke-virtual {p1, v1, v0}, Lmiuix/appcompat/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Lmiuix/appcompat/app/AlertDialog$Builder;

    move-result-object p1

    new-instance v0, Lcom/miui/powercenter/PowerSettingsFragment$g;

    invoke-direct {v0, p0}, Lcom/miui/powercenter/PowerSettingsFragment$g;-><init>(Lcom/miui/powercenter/PowerSettingsFragment;)V

    const v1, 0x7f120499

    invoke-virtual {p1, v1, v0}, Lmiuix/appcompat/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Lmiuix/appcompat/app/AlertDialog$Builder;

    move-result-object p1

    invoke-virtual {p1}, Lmiuix/appcompat/app/AlertDialog$Builder;->create()Lmiuix/appcompat/app/AlertDialog;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/16 v1, 0x7da

    invoke-virtual {v0, v1}, Landroid/view/Window;->setType(I)V

    invoke-virtual {p1}, Lmiuix/appcompat/app/AlertDialog;->show()V

    return-void
.end method

.method private initData()V
    .locals 5

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f030047

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getIntArray(I)[I

    move-result-object v0

    iput-object v0, p0, Lcom/miui/powercenter/PowerSettingsFragment;->s:[I

    const/4 v0, 0x0

    iput v0, p0, Lcom/miui/powercenter/PowerSettingsFragment;->r:I

    invoke-direct {p0}, Lcom/miui/powercenter/PowerSettingsFragment;->P0()I

    move-result v1

    move v2, v0

    :goto_0
    iget-object v3, p0, Lcom/miui/powercenter/PowerSettingsFragment;->s:[I

    array-length v4, v3

    if-ge v2, v4, :cond_1

    aget v4, v3, v2

    if-ne v4, v1, :cond_0

    iput v2, p0, Lcom/miui/powercenter/PowerSettingsFragment;->r:I

    goto :goto_1

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    :goto_1
    array-length v1, v3

    new-array v1, v1, [Ljava/lang/String;

    iput-object v1, p0, Lcom/miui/powercenter/PowerSettingsFragment;->t:[Ljava/lang/String;

    array-length v1, v3

    new-array v1, v1, [Ljava/lang/String;

    iput-object v1, p0, Lcom/miui/powercenter/PowerSettingsFragment;->u:[Ljava/lang/String;

    move v1, v0

    :goto_2
    iget-object v2, p0, Lcom/miui/powercenter/PowerSettingsFragment;->t:[Ljava/lang/String;

    array-length v3, v2

    if-ge v1, v3, :cond_2

    iget-object v3, p0, Lcom/miui/powercenter/PowerSettingsFragment;->s:[I

    aget v3, v3, v1

    invoke-direct {p0, v3}, Lcom/miui/powercenter/PowerSettingsFragment;->R0(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v1

    iget-object v2, p0, Lcom/miui/powercenter/PowerSettingsFragment;->u:[Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_2
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f03004c

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getIntArray(I)[I

    move-result-object v1

    iput-object v1, p0, Lcom/miui/powercenter/PowerSettingsFragment;->o:[I

    iput v0, p0, Lcom/miui/powercenter/PowerSettingsFragment;->n:I

    invoke-direct {p0}, Lcom/miui/powercenter/PowerSettingsFragment;->X0()V

    iget-object v1, p0, Lcom/miui/powercenter/PowerSettingsFragment;->o:[I

    array-length v2, v1

    new-array v2, v2, [Ljava/lang/String;

    iput-object v2, p0, Lcom/miui/powercenter/PowerSettingsFragment;->p:[Ljava/lang/String;

    array-length v1, v1

    new-array v1, v1, [Ljava/lang/String;

    iput-object v1, p0, Lcom/miui/powercenter/PowerSettingsFragment;->q:[Ljava/lang/String;

    :goto_3
    iget-object v1, p0, Lcom/miui/powercenter/PowerSettingsFragment;->p:[Ljava/lang/String;

    array-length v2, v1

    if-ge v0, v2, :cond_3

    iget-object v2, p0, Lcom/miui/powercenter/PowerSettingsFragment;->o:[I

    aget v2, v2, v0

    invoke-direct {p0, v2}, Lcom/miui/powercenter/PowerSettingsFragment;->S0(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v0

    iget-object v1, p0, Lcom/miui/powercenter/PowerSettingsFragment;->q:[Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    :cond_3
    return-void
.end method

.method static synthetic j0(Lcom/miui/powercenter/PowerSettingsFragment;)Lmiuix/preference/TextPreference;
    .locals 0

    iget-object p0, p0, Lcom/miui/powercenter/PowerSettingsFragment;->c:Lmiuix/preference/TextPreference;

    return-object p0
.end method

.method private j1(Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/miui/powercenter/PowerSettingsFragment;->Y0(Ljava/lang/String;)V

    invoke-static {p1}, Lme/a0;->r(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic k0(Lcom/miui/powercenter/PowerSettingsFragment;)V
    .locals 0

    invoke-direct {p0}, Lcom/miui/powercenter/PowerSettingsFragment;->X0()V

    return-void
.end method

.method private k1()V
    .locals 3

    iget v0, p0, Lcom/miui/powercenter/PowerSettingsFragment;->y:I

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f12132a

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    return-void

    :cond_0
    invoke-direct {p0}, Lcom/miui/powercenter/PowerSettingsFragment;->O0()I

    move-result v0

    const/16 v1, 0xa

    if-ge v0, v1, :cond_1

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/miui/powercenter/wirelesscharge/WirelessReverseActivity;->O0(Landroid/content/Context;)V

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/miui/powercenter/PowerSettingsFragment;->i1(Landroid/content/Context;)V

    :goto_0
    return-void
.end method

.method static synthetic l0(Lcom/miui/powercenter/PowerSettingsFragment;)I
    .locals 0

    invoke-direct {p0}, Lcom/miui/powercenter/PowerSettingsFragment;->Q0()I

    move-result p0

    return p0
.end method

.method private l1()V
    .locals 9

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "PowerSettings"

    if-nez v0, :cond_0

    const-string v0, "updateFirmwareStatus context is null!"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mWirelessFwState = "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/miui/powercenter/PowerSettingsFragment;->x:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/powercenter/PowerSettingsFragment;->A:Lmiuix/appcompat/app/ProgressDialog;

    if-nez v1, :cond_1

    new-instance v1, Lmiuix/appcompat/app/ProgressDialog;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Lmiuix/appcompat/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/miui/powercenter/PowerSettingsFragment;->A:Lmiuix/appcompat/app/ProgressDialog;

    :cond_1
    iget v1, p0, Lcom/miui/powercenter/PowerSettingsFragment;->x:I

    const/4 v2, 0x5

    if-ne v1, v2, :cond_2

    const v1, 0x7f12132c

    :goto_0
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/powercenter/PowerSettingsFragment;->A:Lmiuix/appcompat/app/ProgressDialog;

    invoke-virtual {v1, v0}, Lmiuix/appcompat/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    goto :goto_1

    :cond_2
    if-eqz v1, :cond_7

    const/4 v2, 0x1

    if-ne v1, v2, :cond_3

    goto :goto_2

    :cond_3
    const/4 v3, 0x2

    if-ne v1, v3, :cond_4

    const v1, 0x7f121333

    goto :goto_0

    :cond_4
    const/4 v3, 0x3

    if-ne v1, v3, :cond_5

    const v1, 0x7f121337

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/powercenter/PowerSettingsFragment;->A:Lmiuix/appcompat/app/ProgressDialog;

    invoke-virtual {v1, v0}, Lmiuix/appcompat/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/miui/powercenter/PowerSettingsFragment;->A:Lmiuix/appcompat/app/ProgressDialog;

    invoke-virtual {v0, v2}, Lmiuix/appcompat/app/AlertDialog;->setCancelable(Z)V

    new-instance v0, Lcom/miui/powercenter/PowerSettingsFragment$i;

    const-wide/16 v5, 0x7d0

    const-wide/16 v7, 0x3e8

    move-object v3, v0

    move-object v4, p0

    invoke-direct/range {v3 .. v8}, Lcom/miui/powercenter/PowerSettingsFragment$i;-><init>(Lcom/miui/powercenter/PowerSettingsFragment;JJ)V

    invoke-virtual {v0}, Landroid/os/CountDownTimer;->start()Landroid/os/CountDownTimer;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/powercenter/PowerSettingsFragment;->B:Landroid/os/CountDownTimer;

    return-void

    :cond_5
    const/4 v3, 0x4

    if-ne v1, v3, :cond_6

    const v1, 0x7f121332

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/powercenter/PowerSettingsFragment;->A:Lmiuix/appcompat/app/ProgressDialog;

    invoke-virtual {v1, v0}, Lmiuix/appcompat/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/miui/powercenter/PowerSettingsFragment;->A:Lmiuix/appcompat/app/ProgressDialog;

    invoke-virtual {v0, v2}, Lmiuix/appcompat/app/AlertDialog;->setCancelable(Z)V

    return-void

    :cond_6
    :goto_1
    iget-object v0, p0, Lcom/miui/powercenter/PowerSettingsFragment;->A:Lmiuix/appcompat/app/ProgressDialog;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lmiuix/appcompat/app/AlertDialog;->setCancelable(Z)V

    iget-object v0, p0, Lcom/miui/powercenter/PowerSettingsFragment;->A:Lmiuix/appcompat/app/ProgressDialog;

    invoke-virtual {v0}, Lmiuix/appcompat/app/AlertDialog;->show()V

    :cond_7
    :goto_2
    return-void
.end method

.method static synthetic m0(Lcom/miui/powercenter/PowerSettingsFragment;I)Ljava/lang/String;
    .locals 0

    invoke-direct {p0, p1}, Lcom/miui/powercenter/PowerSettingsFragment;->S0(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static synthetic n0(Lcom/miui/powercenter/PowerSettingsFragment;)Landroidx/preference/CheckBoxPreference;
    .locals 0

    iget-object p0, p0, Lcom/miui/powercenter/PowerSettingsFragment;->d:Landroidx/preference/CheckBoxPreference;

    return-object p0
.end method

.method static synthetic o0(Lcom/miui/powercenter/PowerSettingsFragment;Z)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/miui/powercenter/PowerSettingsFragment;->K0(Z)V

    return-void
.end method

.method static synthetic p0(Lcom/miui/powercenter/PowerSettingsFragment;)Loe/a;
    .locals 0

    iget-object p0, p0, Lcom/miui/powercenter/PowerSettingsFragment;->C:Loe/a;

    return-object p0
.end method

.method static synthetic q0(Lcom/miui/powercenter/PowerSettingsFragment;)I
    .locals 0

    iget p0, p0, Lcom/miui/powercenter/PowerSettingsFragment;->x:I

    return p0
.end method

.method static synthetic r0(Lcom/miui/powercenter/PowerSettingsFragment;I)I
    .locals 0

    iput p1, p0, Lcom/miui/powercenter/PowerSettingsFragment;->x:I

    return p1
.end method

.method static synthetic s0(Lcom/miui/powercenter/PowerSettingsFragment;)V
    .locals 0

    invoke-direct {p0}, Lcom/miui/powercenter/PowerSettingsFragment;->l1()V

    return-void
.end method

.method static synthetic t0(Lcom/miui/powercenter/PowerSettingsFragment;)Lmiuix/appcompat/app/ProgressDialog;
    .locals 0

    iget-object p0, p0, Lcom/miui/powercenter/PowerSettingsFragment;->A:Lmiuix/appcompat/app/ProgressDialog;

    return-object p0
.end method

.method static synthetic u0(Lcom/miui/powercenter/PowerSettingsFragment;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/miui/powercenter/PowerSettingsFragment;->Z0(I)V

    return-void
.end method

.method static synthetic v0(Lcom/miui/powercenter/PowerSettingsFragment;)Lmiuix/preference/TextPreference;
    .locals 0

    iget-object p0, p0, Lcom/miui/powercenter/PowerSettingsFragment;->f:Lmiuix/preference/TextPreference;

    return-object p0
.end method

.method static synthetic w0(Lcom/miui/powercenter/PowerSettingsFragment;)V
    .locals 0

    invoke-direct {p0}, Lcom/miui/powercenter/PowerSettingsFragment;->J0()V

    return-void
.end method

.method static synthetic x0(Lcom/miui/powercenter/PowerSettingsFragment;)I
    .locals 0

    iget p0, p0, Lcom/miui/powercenter/PowerSettingsFragment;->y:I

    return p0
.end method

.method static synthetic y0(Lcom/miui/powercenter/PowerSettingsFragment;I)I
    .locals 0

    iput p1, p0, Lcom/miui/powercenter/PowerSettingsFragment;->y:I

    return p1
.end method

.method static synthetic z0(Lcom/miui/powercenter/PowerSettingsFragment;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/miui/powercenter/PowerSettingsFragment;->z:Z

    return p0
.end method


# virtual methods
.method public onCreatePreferences(Landroid/os/Bundle;Ljava/lang/String;)V
    .locals 4

    invoke-virtual {p0}, Lcom/miui/common/base/ui/MiuiXPreferenceFragment;->a0()Z

    move-result p1

    if-eqz p1, :cond_0

    const p1, 0x7f15004e

    goto :goto_0

    :cond_0
    const p1, 0x7f15004d

    :goto_0
    invoke-virtual {p0, p1, p2}, Landroidx/preference/PreferenceFragmentCompat;->setPreferencesFromResource(ILjava/lang/String;)V

    invoke-virtual {p0}, Landroidx/preference/PreferenceFragmentCompat;->getPreferenceScreen()Landroidx/preference/PreferenceScreen;

    move-result-object p1

    iput-object p1, p0, Lcom/miui/powercenter/PowerSettingsFragment;->l:Landroidx/preference/PreferenceScreen;

    invoke-direct {p0}, Lcom/miui/powercenter/PowerSettingsFragment;->initData()V

    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Lcom/miui/common/base/ui/MiuiXPreferenceFragment;->b0(Z)V

    invoke-direct {p0}, Lcom/miui/powercenter/PowerSettingsFragment;->V0()Z

    move-result p2

    xor-int/2addr p2, p1

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lce/g;->o(Landroid/content/Context;)Z

    move-result v0

    const-string v1, "preference_key_config_scenario_policies"

    invoke-virtual {p0, v1}, Landroidx/preference/PreferenceFragmentCompat;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v1

    check-cast v1, Lmiuix/preference/TextPreference;

    iput-object v1, p0, Lcom/miui/powercenter/PowerSettingsFragment;->g:Lmiuix/preference/TextPreference;

    invoke-virtual {p0}, Lcom/miui/common/base/ui/MiuiXPreferenceFragment;->a0()Z

    move-result v1

    const-string v2, "preference_key_deep_save_memory_clean_in_lockscreen"

    const/4 v3, 0x0

    if-eqz v1, :cond_8

    const-string v1, "category_container"

    invoke-virtual {p0, v1}, Landroidx/preference/PreferenceFragmentCompat;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v1

    check-cast v1, Landroidx/preference/PreferenceCategory;

    iput-object v1, p0, Lcom/miui/powercenter/PowerSettingsFragment;->F:Landroidx/preference/PreferenceCategory;

    invoke-direct {p0}, Lcom/miui/powercenter/PowerSettingsFragment;->T0()Landroidx/preference/PreferenceGroup;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroidx/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v1

    check-cast v1, Lmiuix/preference/DropDownPreference;

    iput-object v1, p0, Lcom/miui/powercenter/PowerSettingsFragment;->b:Lmiuix/preference/DropDownPreference;

    iget-object v2, p0, Lcom/miui/powercenter/PowerSettingsFragment;->p:[Ljava/lang/String;

    invoke-virtual {v1, v2}, Lmiuix/preference/DropDownPreference;->y([Ljava/lang/CharSequence;)V

    iget-object v1, p0, Lcom/miui/powercenter/PowerSettingsFragment;->b:Lmiuix/preference/DropDownPreference;

    iget-object v2, p0, Lcom/miui/powercenter/PowerSettingsFragment;->q:[Ljava/lang/String;

    invoke-virtual {v1, v2}, Lmiuix/preference/DropDownPreference;->B([Ljava/lang/CharSequence;)V

    iget-object v1, p0, Lcom/miui/powercenter/PowerSettingsFragment;->b:Lmiuix/preference/DropDownPreference;

    iget v2, p0, Lcom/miui/powercenter/PowerSettingsFragment;->n:I

    invoke-virtual {v1, v2}, Lmiuix/preference/DropDownPreference;->E(I)V

    iget-object v1, p0, Lcom/miui/powercenter/PowerSettingsFragment;->b:Lmiuix/preference/DropDownPreference;

    iget-object v2, p0, Lcom/miui/powercenter/PowerSettingsFragment;->H:Landroidx/preference/Preference$c;

    invoke-virtual {v1, v2}, Landroidx/preference/Preference;->setOnPreferenceChangeListener(Landroidx/preference/Preference$c;)V

    invoke-direct {p0}, Lcom/miui/powercenter/PowerSettingsFragment;->T0()Landroidx/preference/PreferenceGroup;

    move-result-object v1

    const-string v2, "preference_key_settings_night_save"

    invoke-virtual {v1, v2}, Landroidx/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v1

    check-cast v1, Landroidx/preference/CheckBoxPreference;

    iput-object v1, p0, Lcom/miui/powercenter/PowerSettingsFragment;->j:Landroidx/preference/CheckBoxPreference;

    if-eqz p2, :cond_2

    invoke-static {}, Ldb/c;->k()Z

    move-result p2

    if-eqz p2, :cond_1

    iget-object p2, p0, Lcom/miui/powercenter/PowerSettingsFragment;->j:Landroidx/preference/CheckBoxPreference;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lce/g;->h(Landroid/content/Context;)Z

    move-result v1

    invoke-virtual {p2, v1}, Landroidx/preference/TwoStatePreference;->setChecked(Z)V

    iget-object p2, p0, Lcom/miui/powercenter/PowerSettingsFragment;->j:Landroidx/preference/CheckBoxPreference;

    iget-object v1, p0, Lcom/miui/powercenter/PowerSettingsFragment;->H:Landroidx/preference/Preference$c;

    invoke-virtual {p2, v1}, Landroidx/preference/Preference;->setOnPreferenceChangeListener(Landroidx/preference/Preference$c;)V

    invoke-static {}, Lx4/t;->E()Z

    move-result p2

    if-eqz p2, :cond_3

    iget-object p2, p0, Lcom/miui/powercenter/PowerSettingsFragment;->j:Landroidx/preference/CheckBoxPreference;

    const v1, 0x7f12108d

    invoke-virtual {p2, v1}, Landroidx/preference/Preference;->setSummary(I)V

    iget-object p2, p0, Lcom/miui/powercenter/PowerSettingsFragment;->j:Landroidx/preference/CheckBoxPreference;

    const v1, 0x7f12106f

    invoke-virtual {p2, v1}, Landroidx/preference/Preference;->setTitle(I)V

    goto :goto_1

    :cond_1
    iget-object p2, p0, Lcom/miui/powercenter/PowerSettingsFragment;->g:Lmiuix/preference/TextPreference;

    iget-object v1, p0, Lcom/miui/powercenter/PowerSettingsFragment;->I:Landroidx/preference/Preference$d;

    invoke-virtual {p2, v1}, Landroidx/preference/Preference;->setOnPreferenceClickListener(Landroidx/preference/Preference$d;)V

    invoke-direct {p0}, Lcom/miui/powercenter/PowerSettingsFragment;->T0()Landroidx/preference/PreferenceGroup;

    move-result-object p2

    iget-object v1, p0, Lcom/miui/powercenter/PowerSettingsFragment;->j:Landroidx/preference/CheckBoxPreference;

    goto :goto_2

    :cond_2
    invoke-direct {p0}, Lcom/miui/powercenter/PowerSettingsFragment;->T0()Landroidx/preference/PreferenceGroup;

    move-result-object p2

    iget-object v1, p0, Lcom/miui/powercenter/PowerSettingsFragment;->j:Landroidx/preference/CheckBoxPreference;

    invoke-virtual {p2, v1}, Landroidx/preference/PreferenceGroup;->removePreference(Landroidx/preference/Preference;)Z

    :cond_3
    :goto_1
    invoke-direct {p0}, Lcom/miui/powercenter/PowerSettingsFragment;->T0()Landroidx/preference/PreferenceGroup;

    move-result-object p2

    iget-object v1, p0, Lcom/miui/powercenter/PowerSettingsFragment;->g:Lmiuix/preference/TextPreference;

    :goto_2
    invoke-virtual {p2, v1}, Landroidx/preference/PreferenceGroup;->removePreference(Landroidx/preference/Preference;)Z

    const-string p2, "preference_key_settings_low_temperature"

    invoke-virtual {p0, p2}, Landroidx/preference/PreferenceFragmentCompat;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p2

    check-cast p2, Landroidx/preference/CheckBoxPreference;

    iput-object p2, p0, Lcom/miui/powercenter/PowerSettingsFragment;->k:Landroidx/preference/CheckBoxPreference;

    if-eqz v0, :cond_4

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lce/g;->f(Landroid/content/Context;)Z

    move-result v0

    invoke-virtual {p2, v0}, Landroidx/preference/TwoStatePreference;->setChecked(Z)V

    iget-object p2, p0, Lcom/miui/powercenter/PowerSettingsFragment;->k:Landroidx/preference/CheckBoxPreference;

    iget-object v0, p0, Lcom/miui/powercenter/PowerSettingsFragment;->H:Landroidx/preference/Preference$c;

    invoke-virtual {p2, v0}, Landroidx/preference/Preference;->setOnPreferenceChangeListener(Landroidx/preference/Preference$c;)V

    goto :goto_3

    :cond_4
    invoke-direct {p0}, Lcom/miui/powercenter/PowerSettingsFragment;->T0()Landroidx/preference/PreferenceGroup;

    move-result-object p2

    iget-object v0, p0, Lcom/miui/powercenter/PowerSettingsFragment;->k:Landroidx/preference/CheckBoxPreference;

    invoke-virtual {p2, v0}, Landroidx/preference/PreferenceGroup;->removePreference(Landroidx/preference/Preference;)Z

    :goto_3
    new-instance p2, Loe/b;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {p2, v0}, Loe/b;-><init>(Landroid/content/Context;)V

    iput-object p2, p0, Lcom/miui/powercenter/PowerSettingsFragment;->C:Loe/a;

    invoke-interface {p2}, Loe/a;->a()Z

    move-result p2

    if-nez p2, :cond_6

    invoke-static {}, Lme/w;->i0()Z

    move-result p2

    if-eqz p2, :cond_5

    iget-object p2, p0, Lcom/miui/powercenter/PowerSettingsFragment;->C:Loe/a;

    invoke-interface {p2}, Loe/a;->h()Z

    move-result p2

    if-eqz p2, :cond_5

    goto :goto_4

    :cond_5
    move p2, v3

    goto :goto_5

    :cond_6
    :goto_4
    move p2, p1

    :goto_5
    iput-boolean p2, p0, Lcom/miui/powercenter/PowerSettingsFragment;->E:Z

    invoke-direct {p0}, Lcom/miui/powercenter/PowerSettingsFragment;->T0()Landroidx/preference/PreferenceGroup;

    move-result-object p2

    const-string v0, "preference_key_wireless_driver_update"

    invoke-virtual {p2, v0}, Landroidx/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p2

    check-cast p2, Lmiuix/preference/TextPreference;

    iput-object p2, p0, Lcom/miui/powercenter/PowerSettingsFragment;->h:Lmiuix/preference/TextPreference;

    iget-boolean v0, p0, Lcom/miui/powercenter/PowerSettingsFragment;->E:Z

    if-eqz v0, :cond_7

    iget-object v0, p0, Lcom/miui/powercenter/PowerSettingsFragment;->I:Landroidx/preference/Preference$d;

    invoke-virtual {p2, v0}, Landroidx/preference/Preference;->setOnPreferenceClickListener(Landroidx/preference/Preference$d;)V

    goto :goto_7

    :cond_7
    invoke-direct {p0}, Lcom/miui/powercenter/PowerSettingsFragment;->T0()Landroidx/preference/PreferenceGroup;

    move-result-object p2

    iget-object v0, p0, Lcom/miui/powercenter/PowerSettingsFragment;->h:Lmiuix/preference/TextPreference;

    goto :goto_6

    :cond_8
    invoke-direct {p0}, Lcom/miui/powercenter/PowerSettingsFragment;->T0()Landroidx/preference/PreferenceGroup;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroidx/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v0

    check-cast v0, Lmiuix/preference/TextPreference;

    iput-object v0, p0, Lcom/miui/powercenter/PowerSettingsFragment;->c:Lmiuix/preference/TextPreference;

    iget-object v1, p0, Lcom/miui/powercenter/PowerSettingsFragment;->I:Landroidx/preference/Preference$d;

    invoke-virtual {v0, v1}, Landroidx/preference/Preference;->setOnPreferenceClickListener(Landroidx/preference/Preference$d;)V

    iget-object v0, p0, Lcom/miui/powercenter/PowerSettingsFragment;->c:Lmiuix/preference/TextPreference;

    invoke-direct {p0}, Lcom/miui/powercenter/PowerSettingsFragment;->Q0()I

    move-result v1

    invoke-direct {p0, v1}, Lcom/miui/powercenter/PowerSettingsFragment;->S0(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lmiuix/preference/TextPreference;->setText(Ljava/lang/String;)V

    if-nez p2, :cond_9

    invoke-direct {p0}, Lcom/miui/powercenter/PowerSettingsFragment;->T0()Landroidx/preference/PreferenceGroup;

    move-result-object p2

    iget-object v0, p0, Lcom/miui/powercenter/PowerSettingsFragment;->g:Lmiuix/preference/TextPreference;

    :goto_6
    invoke-virtual {p2, v0}, Landroidx/preference/PreferenceGroup;->removePreference(Landroidx/preference/Preference;)Z

    :cond_9
    :goto_7
    invoke-direct {p0}, Lcom/miui/powercenter/PowerSettingsFragment;->T0()Landroidx/preference/PreferenceGroup;

    move-result-object p2

    const-string v0, "preference_key_settings_5g_save"

    invoke-virtual {p2, v0}, Landroidx/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p2

    check-cast p2, Landroidx/preference/CheckBoxPreference;

    iput-object p2, p0, Lcom/miui/powercenter/PowerSettingsFragment;->d:Landroidx/preference/CheckBoxPreference;

    invoke-static {}, Lme/h;->n()Z

    move-result p2

    const/4 v0, 0x0

    if-eqz p2, :cond_c

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-static {p2}, Lme/h;->g(Landroid/content/Context;)Z

    move-result p2

    if-eqz p2, :cond_c

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-static {p2}, Lme/h;->h(Landroid/content/Context;)Z

    move-result p2

    if-eqz p2, :cond_c

    iget-object p2, p0, Lcom/miui/powercenter/PowerSettingsFragment;->d:Landroidx/preference/CheckBoxPreference;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lme/h;->a(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_a

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lme/h;->c(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_a

    move v1, p1

    goto :goto_8

    :cond_a
    move v1, v3

    :goto_8
    invoke-virtual {p2, v1}, Landroidx/preference/Preference;->setEnabled(Z)V

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-static {p2}, Lme/h;->b(Landroid/content/Context;)I

    move-result p2

    iget-object v1, p0, Lcom/miui/powercenter/PowerSettingsFragment;->d:Landroidx/preference/CheckBoxPreference;

    if-ne p2, p1, :cond_b

    move p2, p1

    goto :goto_9

    :cond_b
    move p2, v3

    :goto_9
    invoke-virtual {v1, p2}, Landroidx/preference/TwoStatePreference;->setChecked(Z)V

    iget-object p2, p0, Lcom/miui/powercenter/PowerSettingsFragment;->d:Landroidx/preference/CheckBoxPreference;

    iget-object v1, p0, Lcom/miui/powercenter/PowerSettingsFragment;->H:Landroidx/preference/Preference$c;

    invoke-virtual {p2, v1}, Landroidx/preference/Preference;->setOnPreferenceChangeListener(Landroidx/preference/Preference$c;)V

    goto :goto_a

    :cond_c
    invoke-direct {p0}, Lcom/miui/powercenter/PowerSettingsFragment;->T0()Landroidx/preference/PreferenceGroup;

    move-result-object p2

    iget-object v1, p0, Lcom/miui/powercenter/PowerSettingsFragment;->d:Landroidx/preference/CheckBoxPreference;

    invoke-virtual {p2, v1}, Landroidx/preference/PreferenceGroup;->removePreference(Landroidx/preference/Preference;)Z

    iput-object v0, p0, Lcom/miui/powercenter/PowerSettingsFragment;->d:Landroidx/preference/CheckBoxPreference;

    :goto_a
    invoke-direct {p0}, Lcom/miui/powercenter/PowerSettingsFragment;->T0()Landroidx/preference/PreferenceGroup;

    move-result-object p2

    const-string v1, "preference_key_boot_shutdown_ontime"

    invoke-virtual {p2, v1}, Landroidx/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p2

    check-cast p2, Lmiuix/preference/TextPreference;

    iput-object p2, p0, Lcom/miui/powercenter/PowerSettingsFragment;->e:Lmiuix/preference/TextPreference;

    iget-object v1, p0, Lcom/miui/powercenter/PowerSettingsFragment;->I:Landroidx/preference/Preference$d;

    invoke-virtual {p2, v1}, Landroidx/preference/Preference;->setOnPreferenceClickListener(Landroidx/preference/Preference$d;)V

    invoke-direct {p0}, Lcom/miui/powercenter/PowerSettingsFragment;->T0()Landroidx/preference/PreferenceGroup;

    move-result-object p2

    const-string v1, "preference_key_battery_style"

    invoke-virtual {p2, v1}, Landroidx/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p2

    check-cast p2, Lmiuix/preference/TextPreference;

    iput-object p2, p0, Lcom/miui/powercenter/PowerSettingsFragment;->f:Lmiuix/preference/TextPreference;

    iget-object v1, p0, Lcom/miui/powercenter/PowerSettingsFragment;->I:Landroidx/preference/Preference$d;

    invoke-virtual {p2, v1}, Landroidx/preference/Preference;->setOnPreferenceClickListener(Landroidx/preference/Preference$d;)V

    iget-object p2, p0, Lcom/miui/powercenter/PowerSettingsFragment;->f:Lmiuix/preference/TextPreference;

    invoke-direct {p0}, Lcom/miui/powercenter/PowerSettingsFragment;->N0()I

    move-result v1

    invoke-direct {p0, v1}, Lcom/miui/powercenter/PowerSettingsFragment;->M0(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Lmiuix/preference/TextPreference;->setText(Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/miui/powercenter/PowerSettingsFragment;->T0()Landroidx/preference/PreferenceGroup;

    move-result-object p2

    iget-object v1, p0, Lcom/miui/powercenter/PowerSettingsFragment;->f:Lmiuix/preference/TextPreference;

    invoke-virtual {p2, v1}, Landroidx/preference/PreferenceGroup;->removePreference(Landroidx/preference/Preference;)Z

    invoke-direct {p0}, Lcom/miui/powercenter/PowerSettingsFragment;->T0()Landroidx/preference/PreferenceGroup;

    move-result-object p2

    const-string v1, "preference_key_thermal_configure"

    invoke-virtual {p2, v1}, Landroidx/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p2

    check-cast p2, Landroidx/preference/ListPreference;

    iput-object p2, p0, Lcom/miui/powercenter/PowerSettingsFragment;->i:Landroidx/preference/ListPreference;

    iget-object v1, p0, Lcom/miui/powercenter/PowerSettingsFragment;->I:Landroidx/preference/Preference$d;

    invoke-virtual {p2, v1}, Landroidx/preference/Preference;->setOnPreferenceClickListener(Landroidx/preference/Preference$d;)V

    iget-object p2, p0, Lcom/miui/powercenter/PowerSettingsFragment;->i:Landroidx/preference/ListPreference;

    iget-object v1, p0, Lcom/miui/powercenter/PowerSettingsFragment;->G:Landroidx/preference/Preference$c;

    invoke-virtual {p2, v1}, Landroidx/preference/Preference;->setOnPreferenceChangeListener(Landroidx/preference/Preference$c;)V

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    const v1, 0x7f03004b

    invoke-virtual {p2, v1}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, Lcom/miui/powercenter/PowerSettingsFragment;->v:[Ljava/lang/String;

    iget-object p2, p0, Lcom/miui/powercenter/PowerSettingsFragment;->i:Landroidx/preference/ListPreference;

    iget-object v1, p0, Lcom/miui/powercenter/PowerSettingsFragment;->w:[Ljava/lang/String;

    invoke-virtual {p2, v1}, Landroidx/preference/ListPreference;->v([Ljava/lang/CharSequence;)V

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-static {p2}, Lme/a0;->l(Landroid/content/Context;)Z

    move-result p2

    if-nez p2, :cond_d

    const-string p2, "PowerSettings"

    const-string v1, "sIsWarmControlModeSupported---false"

    invoke-static {p2, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0}, Lcom/miui/powercenter/PowerSettingsFragment;->T0()Landroidx/preference/PreferenceGroup;

    move-result-object p2

    iget-object v1, p0, Lcom/miui/powercenter/PowerSettingsFragment;->i:Landroidx/preference/ListPreference;

    invoke-virtual {p2, v1}, Landroidx/preference/PreferenceGroup;->removePreference(Landroidx/preference/Preference;)Z

    iput-object v0, p0, Lcom/miui/powercenter/PowerSettingsFragment;->i:Landroidx/preference/ListPreference;

    :cond_d
    invoke-static {}, Lx4/z1;->y()I

    move-result p2

    if-eqz p2, :cond_e

    iget-object p2, p0, Lcom/miui/powercenter/PowerSettingsFragment;->i:Landroidx/preference/ListPreference;

    if-eqz p2, :cond_e

    invoke-direct {p0}, Lcom/miui/powercenter/PowerSettingsFragment;->T0()Landroidx/preference/PreferenceGroup;

    move-result-object p2

    iget-object v1, p0, Lcom/miui/powercenter/PowerSettingsFragment;->i:Landroidx/preference/ListPreference;

    invoke-virtual {p2, v1}, Landroidx/preference/PreferenceGroup;->removePreference(Landroidx/preference/Preference;)Z

    iput-object v0, p0, Lcom/miui/powercenter/PowerSettingsFragment;->i:Landroidx/preference/ListPreference;

    :cond_e
    new-instance p2, Landroid/content/IntentFilter;

    invoke-direct {p2}, Landroid/content/IntentFilter;-><init>()V

    const-string v0, "miui.intent.action.EXTREME_POWER_SAVE_MODE_CHANGED"

    invoke-virtual {p2, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/miui/powercenter/PowerSettingsFragment;->C:Loe/a;

    if-eqz v0, :cond_f

    iget-boolean v0, p0, Lcom/miui/powercenter/PowerSettingsFragment;->E:Z

    if-eqz v0, :cond_f

    const-string v0, "miui.intent.action.ACTION_WIRELESS_FW_UPDATE"

    invoke-virtual {p2, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v0, "android.intent.action.BATTERY_CHANGED"

    invoke-virtual {p2, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    :cond_f
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/powercenter/PowerSettingsFragment;->K:Landroid/content/BroadcastReceiver;

    const/4 v2, 0x4

    invoke-static {v0, v1, p2, v2}, Lx4/v;->m(Landroid/content/Context;Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;I)Landroid/content/Intent;

    iput-boolean p1, p0, Lcom/miui/powercenter/PowerSettingsFragment;->m:Z

    invoke-direct {p0}, Lcom/miui/powercenter/PowerSettingsFragment;->J0()V

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    const-string p2, "content://com.miui.securitycenter.remoteprovider"

    invoke-static {p2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p2

    const-string v0, "key_memory_clean_time"

    invoke-static {p2, v0}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p2

    iget-object v0, p0, Lcom/miui/powercenter/PowerSettingsFragment;->J:Landroid/database/ContentObserver;

    invoke-virtual {p1, p2, v3, v0}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    return-void
.end method

.method public onDestroy()V
    .locals 2

    invoke-super {p0}, Landroidx/fragment/app/Fragment;->onDestroy()V

    iget-object v0, p0, Lcom/miui/powercenter/PowerSettingsFragment;->J:Landroid/database/ContentObserver;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/powercenter/PowerSettingsFragment;->J:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    :cond_0
    iget-object v0, p0, Lcom/miui/powercenter/PowerSettingsFragment;->B:Landroid/os/CountDownTimer;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/os/CountDownTimer;->cancel()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/miui/powercenter/PowerSettingsFragment;->B:Landroid/os/CountDownTimer;

    :cond_1
    iget-boolean v0, p0, Lcom/miui/powercenter/PowerSettingsFragment;->m:Z

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/miui/powercenter/PowerSettingsFragment;->K:Landroid/content/BroadcastReceiver;

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/powercenter/PowerSettingsFragment;->K:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/miui/powercenter/PowerSettingsFragment;->m:Z

    :cond_2
    return-void
.end method

.method public onResume()V
    .locals 0

    invoke-direct {p0}, Lcom/miui/powercenter/PowerSettingsFragment;->W0()V

    invoke-super {p0}, Landroidx/fragment/app/Fragment;->onResume()V

    return-void
.end method
