.class public Lcom/miui/powercenter/charge/ChargeFeatureFragment;
.super Lcom/miui/common/base/ui/MiuiXPreferenceFragment;
.source "SourceFile"

# interfaces
.implements Landroidx/preference/Preference$c;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/powercenter/charge/ChargeFeatureFragment$b;,
        Lcom/miui/powercenter/charge/ChargeFeatureFragment$c;
    }
.end annotation


# instance fields
.field private A:Landroid/content/BroadcastReceiver;

.field B:Landroid/os/HandlerThread;

.field private C:Lcom/miui/powercenter/charge/ChargeFeatureFragment$b;

.field private b:Landroidx/preference/PreferenceScreen;

.field private c:Lmiuix/preference/PreferenceCategory;

.field private d:Lmiuix/preference/DropDownPreference;

.field private e:Lmiuix/preference/PreferenceCategory;

.field private f:Lmiuix/preference/PreferenceCategory;

.field private g:Lmiuix/preference/DropDownPreference;

.field private h:Lmiuix/preference/DropDownPreference;

.field private i:Lmiuix/preference/PreferenceCategory;

.field private j:Lmiuix/preference/DropDownPreference;

.field private k:Lmiuix/preference/CheckBoxPreference;

.field private l:Lcom/miui/powercenter/charge/ChargeFeatureFragment$c;

.field private m:Lcom/miui/powercenter/charge/ChargeFeatureFragment$c;

.field private n:Lcom/miui/powercenter/charge/ChargeFeatureFragment$c;

.field private o:[I

.field private p:Z

.field private q:Z

.field private r:Loe/a;

.field private s:Z

.field private t:Z

.field private u:Z

.field private v:Z

.field private w:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/Integer;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private x:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/Integer;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private y:Ljava/lang/Integer;

.field private z:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/miui/common/base/ui/MiuiXPreferenceFragment;-><init>()V

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/miui/powercenter/charge/ChargeFeatureFragment;->w:Ljava/util/HashMap;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/miui/powercenter/charge/ChargeFeatureFragment;->x:Ljava/util/HashMap;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/miui/powercenter/charge/ChargeFeatureFragment;->y:Ljava/lang/Integer;

    return-void
.end method

.method static synthetic c0(Lcom/miui/powercenter/charge/ChargeFeatureFragment;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/miui/powercenter/charge/ChargeFeatureFragment;->z:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic d0(Lcom/miui/powercenter/charge/ChargeFeatureFragment;)V
    .locals 0

    invoke-direct {p0}, Lcom/miui/powercenter/charge/ChargeFeatureFragment;->s0()V

    return-void
.end method

.method static synthetic e0(Lcom/miui/powercenter/charge/ChargeFeatureFragment;)Lmiuix/preference/CheckBoxPreference;
    .locals 0

    iget-object p0, p0, Lcom/miui/powercenter/charge/ChargeFeatureFragment;->k:Lmiuix/preference/CheckBoxPreference;

    return-object p0
.end method

.method static synthetic f0(Lcom/miui/powercenter/charge/ChargeFeatureFragment;)V
    .locals 0

    invoke-direct {p0}, Lcom/miui/powercenter/charge/ChargeFeatureFragment;->t0()V

    return-void
.end method

.method static synthetic g0(Lcom/miui/powercenter/charge/ChargeFeatureFragment;Ljava/lang/Integer;)Ljava/lang/Integer;
    .locals 0

    iput-object p1, p0, Lcom/miui/powercenter/charge/ChargeFeatureFragment;->y:Ljava/lang/Integer;

    return-object p1
.end method

.method static synthetic h0(Lcom/miui/powercenter/charge/ChargeFeatureFragment;)Loe/a;
    .locals 0

    iget-object p0, p0, Lcom/miui/powercenter/charge/ChargeFeatureFragment;->r:Loe/a;

    return-object p0
.end method

.method private i0()V
    .locals 2

    invoke-static {}, Lme/q;->B()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/powercenter/charge/ChargeFeatureFragment;->y:Ljava/lang/Integer;

    if-nez v1, :cond_1

    invoke-static {}, Lgd/c;->O()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iput-object v1, p0, Lcom/miui/powercenter/charge/ChargeFeatureFragment;->y:Ljava/lang/Integer;

    :cond_1
    if-eqz v0, :cond_2

    iget-object v1, p0, Lcom/miui/powercenter/charge/ChargeFeatureFragment;->y:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-gtz v1, :cond_2

    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/powercenter/charge/ChargeFeatureFragment;->z:Ljava/lang/String;

    iget-object v0, p0, Lcom/miui/powercenter/charge/ChargeFeatureFragment;->C:Lcom/miui/powercenter/charge/ChargeFeatureFragment$b;

    if-eqz v0, :cond_2

    const/16 v1, 0x3eb

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    :cond_2
    return-void
.end method

.method private j0()V
    .locals 4

    invoke-static {}, Lld/a;->b()Ljava/lang/String;

    move-result-object v0

    const-string v1, "WIRELESS_SILENCE"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_1

    invoke-direct {p0, v2}, Lcom/miui/powercenter/charge/ChargeFeatureFragment;->u0(Z)V

    invoke-static {}, Lld/a;->c()Ljava/lang/String;

    move-result-object v0

    const-string v3, "WIRELESS_TIME_ALWAYS"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {v1}, Lme/y;->b(Z)V

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, v2}, Lme/f;->o(Landroid/content/Context;Z)V

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, v1}, Lme/f;->o(Landroid/content/Context;Z)V

    goto :goto_0

    :cond_1
    invoke-static {}, Lld/a;->b()Ljava/lang/String;

    move-result-object v0

    const-string v3, "WIRELESS_TOPSPEED"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-static {v2}, Lme/y;->b(Z)V

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, v2}, Lme/f;->o(Landroid/content/Context;Z)V

    invoke-direct {p0, v1}, Lcom/miui/powercenter/charge/ChargeFeatureFragment;->u0(Z)V

    goto :goto_0

    :cond_2
    invoke-static {}, Lld/a;->b()Ljava/lang/String;

    move-result-object v0

    const-string v1, "WIRELESS_STANDARD"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-static {v2}, Lme/y;->b(Z)V

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, v2}, Lme/f;->o(Landroid/content/Context;Z)V

    invoke-direct {p0, v2}, Lcom/miui/powercenter/charge/ChargeFeatureFragment;->u0(Z)V

    :cond_3
    :goto_0
    return-void
.end method

.method private k0(Landroidx/preference/Preference;Ljava/lang/String;)I
    .locals 1

    :try_start_0
    check-cast p1, Lmiuix/preference/DropDownPreference;

    invoke-virtual {p1, p2}, Lmiuix/preference/DropDownPreference;->n(Ljava/lang/String;)I

    move-result p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return p1

    :catch_0
    move-exception p1

    const-string p2, "PC_CHARGE_PROTECTION"

    const-string v0, "findDropDownSelectIndex: "

    invoke-static {p2, v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/4 p1, -0x1

    return p1
.end method

.method private l0()V
    .locals 4

    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "PC_CHARGE_PROTECTION"

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/miui/powercenter/charge/ChargeFeatureFragment;->B:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    :try_start_0
    iget-object v0, p0, Lcom/miui/powercenter/charge/ChargeFeatureFragment;->B:Landroid/os/HandlerThread;

    const/16 v2, 0xa

    invoke-virtual {v0, v2}, Ljava/lang/Thread;->setPriority(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "set thread priority error :"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    new-instance v0, Lcom/miui/powercenter/charge/ChargeFeatureFragment$b;

    iget-object v1, p0, Lcom/miui/powercenter/charge/ChargeFeatureFragment;->B:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1, p0}, Lcom/miui/powercenter/charge/ChargeFeatureFragment$b;-><init>(Landroid/os/Looper;Lcom/miui/powercenter/charge/ChargeFeatureFragment;)V

    iput-object v0, p0, Lcom/miui/powercenter/charge/ChargeFeatureFragment;->C:Lcom/miui/powercenter/charge/ChargeFeatureFragment$b;

    return-void
.end method

.method private m0()V
    .locals 6

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f12100d

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v2, ""

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-static {}, Lld/a;->a()Ljava/lang/String;

    move-result-object v2

    iget-boolean v3, p0, Lcom/miui/powercenter/charge/ChargeFeatureFragment;->q:Z

    if-eqz v3, :cond_0

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f12100b

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f12100c

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    iget-boolean v3, p0, Lcom/miui/powercenter/charge/ChargeFeatureFragment;->p:Z

    if-eqz v3, :cond_1

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f12100e

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f12100f

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_1
    const-string v3, "pref_key_charge_protection_wired_charge_category"

    invoke-virtual {p0, v3}, Landroidx/preference/PreferenceFragmentCompat;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v3

    check-cast v3, Lmiuix/preference/PreferenceCategory;

    iput-object v3, p0, Lcom/miui/powercenter/charge/ChargeFeatureFragment;->c:Lmiuix/preference/PreferenceCategory;

    const-string v3, "key_wired_fast_charge_summary"

    invoke-virtual {p0, v3}, Landroidx/preference/PreferenceFragmentCompat;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v3

    check-cast v3, Lmiuix/preference/PreferenceCategory;

    iput-object v3, p0, Lcom/miui/powercenter/charge/ChargeFeatureFragment;->e:Lmiuix/preference/PreferenceCategory;

    iget-boolean v3, p0, Lcom/miui/powercenter/charge/ChargeFeatureFragment;->q:Z

    if-nez v3, :cond_4

    iget-boolean v3, p0, Lcom/miui/powercenter/charge/ChargeFeatureFragment;->p:Z

    if-eqz v3, :cond_2

    goto :goto_0

    :cond_2
    const-string v0, "PC_CHARGE_PROTECTION"

    const-string v1, "Hide wired group, reason: only standard mode supported."

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/miui/powercenter/charge/ChargeFeatureFragment;->c:Lmiuix/preference/PreferenceCategory;

    if-eqz v0, :cond_3

    iget-object v1, p0, Lcom/miui/powercenter/charge/ChargeFeatureFragment;->b:Landroidx/preference/PreferenceScreen;

    invoke-virtual {v1, v0}, Landroidx/preference/PreferenceGroup;->removePreference(Landroidx/preference/Preference;)Z

    :cond_3
    iget-object v0, p0, Lcom/miui/powercenter/charge/ChargeFeatureFragment;->b:Landroidx/preference/PreferenceScreen;

    if-eqz v0, :cond_b

    iget-object v1, p0, Lcom/miui/powercenter/charge/ChargeFeatureFragment;->e:Lmiuix/preference/PreferenceCategory;

    invoke-virtual {v0, v1}, Landroidx/preference/PreferenceGroup;->removePreference(Landroidx/preference/Preference;)Z

    goto/16 :goto_4

    :cond_4
    :goto_0
    new-instance v3, Lcom/miui/powercenter/charge/ChargeFeatureFragment$c;

    const/4 v4, 0x0

    invoke-direct {v3, v4}, Lcom/miui/powercenter/charge/ChargeFeatureFragment$c;-><init>(Lcom/miui/powercenter/charge/ChargeFeatureFragment$a;)V

    iput-object v3, p0, Lcom/miui/powercenter/charge/ChargeFeatureFragment;->l:Lcom/miui/powercenter/charge/ChargeFeatureFragment$c;

    const/4 v4, 0x0

    new-array v5, v4, [Ljava/lang/String;

    invoke-interface {v0, v5}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    invoke-static {v3, v0}, Lcom/miui/powercenter/charge/ChargeFeatureFragment$c;->b(Lcom/miui/powercenter/charge/ChargeFeatureFragment$c;[Ljava/lang/String;)[Ljava/lang/String;

    iget-object v0, p0, Lcom/miui/powercenter/charge/ChargeFeatureFragment;->l:Lcom/miui/powercenter/charge/ChargeFeatureFragment$c;

    invoke-static {v0}, Lcom/miui/powercenter/charge/ChargeFeatureFragment$c;->a(Lcom/miui/powercenter/charge/ChargeFeatureFragment$c;)[Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Lcom/miui/powercenter/charge/ChargeFeatureFragment$c;->d(Lcom/miui/powercenter/charge/ChargeFeatureFragment$c;[Ljava/lang/String;)[Ljava/lang/String;

    iget-object v0, p0, Lcom/miui/powercenter/charge/ChargeFeatureFragment;->l:Lcom/miui/powercenter/charge/ChargeFeatureFragment$c;

    new-array v3, v4, [Ljava/lang/String;

    invoke-interface {v1, v3}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/miui/powercenter/charge/ChargeFeatureFragment$c;->f(Lcom/miui/powercenter/charge/ChargeFeatureFragment$c;[Ljava/lang/String;)[Ljava/lang/String;

    const-string v0, "pref_key_charge_protection_wired_charge_mode"

    invoke-virtual {p0, v0}, Landroidx/preference/PreferenceFragmentCompat;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v0

    check-cast v0, Lmiuix/preference/DropDownPreference;

    iput-object v0, p0, Lcom/miui/powercenter/charge/ChargeFeatureFragment;->d:Lmiuix/preference/DropDownPreference;

    if-nez v0, :cond_5

    return-void

    :cond_5
    iget-object v0, p0, Lcom/miui/powercenter/charge/ChargeFeatureFragment;->w:Ljava/util/HashMap;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v3, "WIRED_STANDARD"

    invoke-virtual {v0, v1, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-boolean v0, p0, Lcom/miui/powercenter/charge/ChargeFeatureFragment;->p:Z

    const-string v1, "WIRED_LOW_FAST"

    const-string v3, "WIRED_TOP_SPEED_FAST"

    const/4 v4, 0x1

    if-eqz v0, :cond_6

    iget-boolean v0, p0, Lcom/miui/powercenter/charge/ChargeFeatureFragment;->q:Z

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/miui/powercenter/charge/ChargeFeatureFragment;->w:Ljava/util/HashMap;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v0, v4, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/miui/powercenter/charge/ChargeFeatureFragment;->w:Ljava/util/HashMap;

    const/4 v1, 0x2

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    goto :goto_1

    :cond_6
    iget-boolean v0, p0, Lcom/miui/powercenter/charge/ChargeFeatureFragment;->q:Z

    if-eqz v0, :cond_7

    iget-object v0, p0, Lcom/miui/powercenter/charge/ChargeFeatureFragment;->w:Ljava/util/HashMap;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v0, v4, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2

    :cond_7
    iget-object v0, p0, Lcom/miui/powercenter/charge/ChargeFeatureFragment;->w:Ljava/util/HashMap;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    :goto_1
    invoke-virtual {v0, v1, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :goto_2
    iget-object v0, p0, Lcom/miui/powercenter/charge/ChargeFeatureFragment;->w:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_8
    :goto_3
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_9

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_8

    iget-object v4, p0, Lcom/miui/powercenter/charge/ChargeFeatureFragment;->l:Lcom/miui/powercenter/charge/ChargeFeatureFragment$c;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-static {v4, v1}, Lcom/miui/powercenter/charge/ChargeFeatureFragment$c;->h(Lcom/miui/powercenter/charge/ChargeFeatureFragment$c;I)I

    goto :goto_3

    :cond_9
    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_a

    iget-object v0, p0, Lcom/miui/powercenter/charge/ChargeFeatureFragment;->b:Landroidx/preference/PreferenceScreen;

    if-eqz v0, :cond_a

    iget-object v1, p0, Lcom/miui/powercenter/charge/ChargeFeatureFragment;->e:Lmiuix/preference/PreferenceCategory;

    invoke-virtual {v0, v1}, Landroidx/preference/PreferenceGroup;->removePreference(Landroidx/preference/Preference;)Z

    :cond_a
    iget-object v0, p0, Lcom/miui/powercenter/charge/ChargeFeatureFragment;->d:Lmiuix/preference/DropDownPreference;

    iget-object v1, p0, Lcom/miui/powercenter/charge/ChargeFeatureFragment;->l:Lcom/miui/powercenter/charge/ChargeFeatureFragment$c;

    invoke-static {v1}, Lcom/miui/powercenter/charge/ChargeFeatureFragment$c;->a(Lcom/miui/powercenter/charge/ChargeFeatureFragment$c;)[Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lmiuix/preference/DropDownPreference;->y([Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/miui/powercenter/charge/ChargeFeatureFragment;->d:Lmiuix/preference/DropDownPreference;

    iget-object v1, p0, Lcom/miui/powercenter/charge/ChargeFeatureFragment;->l:Lcom/miui/powercenter/charge/ChargeFeatureFragment$c;

    invoke-static {v1}, Lcom/miui/powercenter/charge/ChargeFeatureFragment$c;->c(Lcom/miui/powercenter/charge/ChargeFeatureFragment$c;)[Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lmiuix/preference/DropDownPreference;->B([Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/miui/powercenter/charge/ChargeFeatureFragment;->d:Lmiuix/preference/DropDownPreference;

    iget-object v1, p0, Lcom/miui/powercenter/charge/ChargeFeatureFragment;->l:Lcom/miui/powercenter/charge/ChargeFeatureFragment$c;

    invoke-static {v1}, Lcom/miui/powercenter/charge/ChargeFeatureFragment$c;->g(Lcom/miui/powercenter/charge/ChargeFeatureFragment$c;)I

    move-result v1

    invoke-virtual {v0, v1}, Lmiuix/preference/DropDownPreference;->E(I)V

    iget-object v0, p0, Lcom/miui/powercenter/charge/ChargeFeatureFragment;->d:Lmiuix/preference/DropDownPreference;

    iget-object v1, p0, Lcom/miui/powercenter/charge/ChargeFeatureFragment;->l:Lcom/miui/powercenter/charge/ChargeFeatureFragment$c;

    invoke-static {v1}, Lcom/miui/powercenter/charge/ChargeFeatureFragment$c;->e(Lcom/miui/powercenter/charge/ChargeFeatureFragment$c;)[Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lmiuix/preference/DropDownPreference;->C([Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/miui/powercenter/charge/ChargeFeatureFragment;->d:Lmiuix/preference/DropDownPreference;

    invoke-virtual {v0, p0}, Landroidx/preference/Preference;->setOnPreferenceChangeListener(Landroidx/preference/Preference$c;)V

    :cond_b
    :goto_4
    return-void
.end method

.method private n0()V
    .locals 22

    move-object/from16 v0, p0

    invoke-static {}, Lme/q;->q()Z

    move-result v1

    iput-boolean v1, v0, Lcom/miui/powercenter/charge/ChargeFeatureFragment;->u:Z

    const-string v1, "pref_key_charge_protection_wireless_charge_category"

    invoke-virtual {v0, v1}, Landroidx/preference/PreferenceFragmentCompat;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v1

    check-cast v1, Lmiuix/preference/PreferenceCategory;

    iput-object v1, v0, Lcom/miui/powercenter/charge/ChargeFeatureFragment;->f:Lmiuix/preference/PreferenceCategory;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    invoke-static {}, Lld/a;->b()Ljava/lang/String;

    move-result-object v3

    const-string v4, "pref_key_charge_wireless_silence_mode"

    invoke-virtual {v0, v4}, Landroidx/preference/PreferenceFragmentCompat;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v4

    check-cast v4, Lmiuix/preference/DropDownPreference;

    iput-object v4, v0, Lcom/miui/powercenter/charge/ChargeFeatureFragment;->h:Lmiuix/preference/DropDownPreference;

    const-string v4, "key_wireless_charge_original_charger"

    invoke-virtual {v0, v4}, Landroidx/preference/PreferenceFragmentCompat;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v4

    check-cast v4, Lmiuix/preference/PreferenceCategory;

    iput-object v4, v0, Lcom/miui/powercenter/charge/ChargeFeatureFragment;->i:Lmiuix/preference/PreferenceCategory;

    iget-boolean v4, v0, Lcom/miui/powercenter/charge/ChargeFeatureFragment;->u:Z

    const/4 v5, 0x0

    const v6, 0x7f12101e

    const-string v7, "WIRELESS_SILENCE"

    const-string v8, ""

    const/4 v9, 0x2

    const/4 v10, 0x1

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    const/4 v12, 0x0

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    if-eqz v4, :cond_1

    invoke-virtual/range {p0 .. p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v14, 0x7f121019

    invoke-virtual {v4, v14}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-virtual/range {p0 .. p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-virtual/range {p0 .. p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v14, 0x7f12101d

    invoke-virtual {v4, v14}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v2, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-interface {v2, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v4, Lcom/miui/powercenter/charge/ChargeFeatureFragment$c;

    invoke-direct {v4, v5}, Lcom/miui/powercenter/charge/ChargeFeatureFragment$c;-><init>(Lcom/miui/powercenter/charge/ChargeFeatureFragment$a;)V

    new-array v14, v9, [Ljava/lang/String;

    invoke-virtual/range {p0 .. p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v15

    const v5, 0x7f12101b

    invoke-virtual {v15, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v14, v12

    invoke-virtual/range {p0 .. p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v15, 0x7f12101a

    invoke-virtual {v5, v15}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v14, v10

    invoke-static {v4, v14}, Lcom/miui/powercenter/charge/ChargeFeatureFragment$c;->b(Lcom/miui/powercenter/charge/ChargeFeatureFragment$c;[Ljava/lang/String;)[Ljava/lang/String;

    invoke-static {v4}, Lcom/miui/powercenter/charge/ChargeFeatureFragment$c;->a(Lcom/miui/powercenter/charge/ChargeFeatureFragment$c;)[Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/miui/powercenter/charge/ChargeFeatureFragment$c;->d(Lcom/miui/powercenter/charge/ChargeFeatureFragment$c;[Ljava/lang/String;)[Ljava/lang/String;

    new-instance v5, Ljava/text/SimpleDateFormat;

    const-string v14, "HH:mm"

    invoke-direct {v5, v14}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    new-array v14, v9, [Ljava/lang/String;

    invoke-virtual/range {p0 .. p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v15

    new-array v6, v9, [Ljava/lang/Object;

    new-instance v9, Ljava/util/Date;

    const/16 v17, 0x0

    const/16 v18, 0x0

    const/16 v19, 0x0

    const/16 v20, 0x16

    const/16 v21, 0x0

    move-object/from16 v16, v9

    invoke-direct/range {v16 .. v21}, Ljava/util/Date;-><init>(IIIII)V

    invoke-virtual {v5, v9}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v9

    aput-object v9, v6, v12

    new-instance v9, Ljava/util/Date;

    const/16 v20, 0x7

    move-object/from16 v16, v9

    invoke-direct/range {v16 .. v21}, Ljava/util/Date;-><init>(IIIII)V

    invoke-virtual {v5, v9}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v6, v10

    const v5, 0x7f12101c

    invoke-virtual {v15, v5, v6}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v14, v12

    aput-object v8, v14, v10

    invoke-static {v4, v14}, Lcom/miui/powercenter/charge/ChargeFeatureFragment$c;->f(Lcom/miui/powercenter/charge/ChargeFeatureFragment$c;[Ljava/lang/String;)[Ljava/lang/String;

    invoke-direct/range {p0 .. p0}, Lcom/miui/powercenter/charge/ChargeFeatureFragment;->q0()Z

    move-result v5

    xor-int/2addr v5, v10

    invoke-static {v4, v5}, Lcom/miui/powercenter/charge/ChargeFeatureFragment$c;->h(Lcom/miui/powercenter/charge/ChargeFeatureFragment$c;I)I

    iget-object v5, v0, Lcom/miui/powercenter/charge/ChargeFeatureFragment;->h:Lmiuix/preference/DropDownPreference;

    if-eqz v5, :cond_0

    invoke-static {v4}, Lcom/miui/powercenter/charge/ChargeFeatureFragment$c;->a(Lcom/miui/powercenter/charge/ChargeFeatureFragment$c;)[Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lmiuix/preference/DropDownPreference;->y([Ljava/lang/CharSequence;)V

    iget-object v5, v0, Lcom/miui/powercenter/charge/ChargeFeatureFragment;->h:Lmiuix/preference/DropDownPreference;

    invoke-static {v4}, Lcom/miui/powercenter/charge/ChargeFeatureFragment$c;->c(Lcom/miui/powercenter/charge/ChargeFeatureFragment$c;)[Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lmiuix/preference/DropDownPreference;->B([Ljava/lang/CharSequence;)V

    iget-object v5, v0, Lcom/miui/powercenter/charge/ChargeFeatureFragment;->h:Lmiuix/preference/DropDownPreference;

    invoke-static {v4}, Lcom/miui/powercenter/charge/ChargeFeatureFragment$c;->g(Lcom/miui/powercenter/charge/ChargeFeatureFragment$c;)I

    move-result v6

    invoke-virtual {v5, v6}, Lmiuix/preference/DropDownPreference;->E(I)V

    iget-object v5, v0, Lcom/miui/powercenter/charge/ChargeFeatureFragment;->h:Lmiuix/preference/DropDownPreference;

    invoke-static {v4}, Lcom/miui/powercenter/charge/ChargeFeatureFragment$c;->e(Lcom/miui/powercenter/charge/ChargeFeatureFragment$c;)[Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v5, v4}, Lmiuix/preference/DropDownPreference;->C([Ljava/lang/CharSequence;)V

    iget-object v4, v0, Lcom/miui/powercenter/charge/ChargeFeatureFragment;->h:Lmiuix/preference/DropDownPreference;

    invoke-virtual {v4, v0}, Landroidx/preference/Preference;->setOnPreferenceChangeListener(Landroidx/preference/Preference$c;)V

    :cond_0
    invoke-virtual {v3, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_2

    :cond_1
    iget-object v4, v0, Lcom/miui/powercenter/charge/ChargeFeatureFragment;->f:Lmiuix/preference/PreferenceCategory;

    iget-object v5, v0, Lcom/miui/powercenter/charge/ChargeFeatureFragment;->h:Lmiuix/preference/DropDownPreference;

    invoke-virtual {v4, v5}, Landroidx/preference/PreferenceGroup;->removePreference(Landroidx/preference/Preference;)Z

    iget-object v4, v0, Lcom/miui/powercenter/charge/ChargeFeatureFragment;->b:Landroidx/preference/PreferenceScreen;

    iget-object v5, v0, Lcom/miui/powercenter/charge/ChargeFeatureFragment;->i:Lmiuix/preference/PreferenceCategory;

    invoke-virtual {v4, v5}, Landroidx/preference/PreferenceGroup;->removePreference(Landroidx/preference/Preference;)Z

    :cond_2
    invoke-direct/range {p0 .. p0}, Lcom/miui/powercenter/charge/ChargeFeatureFragment;->p0()Z

    move-result v4

    if-eqz v4, :cond_4

    iget-boolean v4, v0, Lcom/miui/powercenter/charge/ChargeFeatureFragment;->u:Z

    const v5, 0x7f121020

    const v6, 0x7f12101f

    if-nez v4, :cond_3

    invoke-virtual/range {p0 .. p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v9, 0x7f12101e

    invoke-virtual {v4, v9}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-virtual/range {p0 .. p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-interface {v2, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_3
    invoke-virtual/range {p0 .. p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :goto_0
    invoke-virtual/range {p0 .. p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v2, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_4
    iget-boolean v4, v0, Lcom/miui/powercenter/charge/ChargeFeatureFragment;->u:Z

    if-nez v4, :cond_6

    invoke-direct/range {p0 .. p0}, Lcom/miui/powercenter/charge/ChargeFeatureFragment;->p0()Z

    move-result v4

    if-eqz v4, :cond_5

    goto :goto_1

    :cond_5
    const-string v1, "PC_CHARGE_PROTECTION"

    const-string v2, "Hide wireless group, reason: only standard mode supported."

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, v0, Lcom/miui/powercenter/charge/ChargeFeatureFragment;->b:Landroidx/preference/PreferenceScreen;

    iget-object v2, v0, Lcom/miui/powercenter/charge/ChargeFeatureFragment;->f:Lmiuix/preference/PreferenceCategory;

    invoke-virtual {v1, v2}, Landroidx/preference/PreferenceGroup;->removePreference(Landroidx/preference/Preference;)Z

    goto/16 :goto_4

    :cond_6
    :goto_1
    new-instance v4, Lcom/miui/powercenter/charge/ChargeFeatureFragment$c;

    const/4 v5, 0x0

    invoke-direct {v4, v5}, Lcom/miui/powercenter/charge/ChargeFeatureFragment$c;-><init>(Lcom/miui/powercenter/charge/ChargeFeatureFragment$a;)V

    iput-object v4, v0, Lcom/miui/powercenter/charge/ChargeFeatureFragment;->m:Lcom/miui/powercenter/charge/ChargeFeatureFragment$c;

    new-array v5, v12, [Ljava/lang/String;

    invoke-interface {v1, v5}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Ljava/lang/String;

    invoke-static {v4, v1}, Lcom/miui/powercenter/charge/ChargeFeatureFragment$c;->b(Lcom/miui/powercenter/charge/ChargeFeatureFragment$c;[Ljava/lang/String;)[Ljava/lang/String;

    iget-object v1, v0, Lcom/miui/powercenter/charge/ChargeFeatureFragment;->m:Lcom/miui/powercenter/charge/ChargeFeatureFragment$c;

    invoke-static {v1}, Lcom/miui/powercenter/charge/ChargeFeatureFragment$c;->a(Lcom/miui/powercenter/charge/ChargeFeatureFragment$c;)[Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Lcom/miui/powercenter/charge/ChargeFeatureFragment$c;->d(Lcom/miui/powercenter/charge/ChargeFeatureFragment$c;[Ljava/lang/String;)[Ljava/lang/String;

    iget-object v1, v0, Lcom/miui/powercenter/charge/ChargeFeatureFragment;->m:Lcom/miui/powercenter/charge/ChargeFeatureFragment$c;

    new-array v4, v12, [Ljava/lang/String;

    invoke-interface {v2, v4}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/miui/powercenter/charge/ChargeFeatureFragment$c;->f(Lcom/miui/powercenter/charge/ChargeFeatureFragment$c;[Ljava/lang/String;)[Ljava/lang/String;

    iget-boolean v1, v0, Lcom/miui/powercenter/charge/ChargeFeatureFragment;->u:Z

    const-string v2, "WIRELESS_TOPSPEED"

    const-string v4, "WIRELESS_STANDARD"

    if-eqz v1, :cond_7

    invoke-direct/range {p0 .. p0}, Lcom/miui/powercenter/charge/ChargeFeatureFragment;->p0()Z

    move-result v1

    if-eqz v1, :cond_7

    iget-object v1, v0, Lcom/miui/powercenter/charge/ChargeFeatureFragment;->x:Ljava/util/HashMap;

    invoke-virtual {v1, v13, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, v0, Lcom/miui/powercenter/charge/ChargeFeatureFragment;->x:Ljava/util/HashMap;

    invoke-virtual {v1, v11, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, v0, Lcom/miui/powercenter/charge/ChargeFeatureFragment;->x:Ljava/util/HashMap;

    const/4 v4, 0x2

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v1, v4, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2

    :cond_7
    iget-boolean v1, v0, Lcom/miui/powercenter/charge/ChargeFeatureFragment;->u:Z

    if-eqz v1, :cond_8

    iget-object v1, v0, Lcom/miui/powercenter/charge/ChargeFeatureFragment;->x:Ljava/util/HashMap;

    invoke-virtual {v1, v13, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, v0, Lcom/miui/powercenter/charge/ChargeFeatureFragment;->x:Ljava/util/HashMap;

    invoke-virtual {v1, v11, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2

    :cond_8
    iget-object v1, v0, Lcom/miui/powercenter/charge/ChargeFeatureFragment;->x:Ljava/util/HashMap;

    invoke-virtual {v1, v13, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, v0, Lcom/miui/powercenter/charge/ChargeFeatureFragment;->x:Ljava/util/HashMap;

    invoke-virtual {v1, v11, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :goto_2
    iget-object v1, v0, Lcom/miui/powercenter/charge/ChargeFeatureFragment;->x:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_9
    :goto_3
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_a

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_9

    iget-object v4, v0, Lcom/miui/powercenter/charge/ChargeFeatureFragment;->m:Lcom/miui/powercenter/charge/ChargeFeatureFragment$c;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-static {v4, v2}, Lcom/miui/powercenter/charge/ChargeFeatureFragment$c;->h(Lcom/miui/powercenter/charge/ChargeFeatureFragment$c;I)I

    goto :goto_3

    :cond_a
    const-string v1, "pref_key_charge_protection_wireless_charge_mode"

    invoke-virtual {v0, v1}, Landroidx/preference/PreferenceFragmentCompat;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v1

    check-cast v1, Lmiuix/preference/DropDownPreference;

    iput-object v1, v0, Lcom/miui/powercenter/charge/ChargeFeatureFragment;->g:Lmiuix/preference/DropDownPreference;

    iget-object v2, v0, Lcom/miui/powercenter/charge/ChargeFeatureFragment;->m:Lcom/miui/powercenter/charge/ChargeFeatureFragment$c;

    invoke-static {v2}, Lcom/miui/powercenter/charge/ChargeFeatureFragment$c;->a(Lcom/miui/powercenter/charge/ChargeFeatureFragment$c;)[Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lmiuix/preference/DropDownPreference;->y([Ljava/lang/CharSequence;)V

    iget-object v1, v0, Lcom/miui/powercenter/charge/ChargeFeatureFragment;->g:Lmiuix/preference/DropDownPreference;

    iget-object v2, v0, Lcom/miui/powercenter/charge/ChargeFeatureFragment;->m:Lcom/miui/powercenter/charge/ChargeFeatureFragment$c;

    invoke-static {v2}, Lcom/miui/powercenter/charge/ChargeFeatureFragment$c;->c(Lcom/miui/powercenter/charge/ChargeFeatureFragment$c;)[Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lmiuix/preference/DropDownPreference;->B([Ljava/lang/CharSequence;)V

    iget-object v1, v0, Lcom/miui/powercenter/charge/ChargeFeatureFragment;->g:Lmiuix/preference/DropDownPreference;

    iget-object v2, v0, Lcom/miui/powercenter/charge/ChargeFeatureFragment;->m:Lcom/miui/powercenter/charge/ChargeFeatureFragment$c;

    invoke-static {v2}, Lcom/miui/powercenter/charge/ChargeFeatureFragment$c;->g(Lcom/miui/powercenter/charge/ChargeFeatureFragment$c;)I

    move-result v2

    invoke-virtual {v1, v2}, Lmiuix/preference/DropDownPreference;->E(I)V

    iget-object v1, v0, Lcom/miui/powercenter/charge/ChargeFeatureFragment;->g:Lmiuix/preference/DropDownPreference;

    iget-object v2, v0, Lcom/miui/powercenter/charge/ChargeFeatureFragment;->m:Lcom/miui/powercenter/charge/ChargeFeatureFragment$c;

    invoke-static {v2}, Lcom/miui/powercenter/charge/ChargeFeatureFragment$c;->e(Lcom/miui/powercenter/charge/ChargeFeatureFragment$c;)[Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lmiuix/preference/DropDownPreference;->C([Ljava/lang/CharSequence;)V

    iget-object v1, v0, Lcom/miui/powercenter/charge/ChargeFeatureFragment;->g:Lmiuix/preference/DropDownPreference;

    invoke-virtual {v1, v0}, Landroidx/preference/Preference;->setOnPreferenceChangeListener(Landroidx/preference/Preference$c;)V

    :goto_4
    return-void
.end method

.method private o0()V
    .locals 10

    const-string v0, "pref_key_charge_protection_wireless_reverse_charge_category"

    invoke-virtual {p0, v0}, Landroidx/preference/PreferenceFragmentCompat;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v0

    check-cast v0, Lmiuix/preference/PreferenceCategory;

    iget-boolean v1, p0, Lcom/miui/powercenter/charge/ChargeFeatureFragment;->v:Z

    if-eqz v1, :cond_6

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f030045

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getIntArray(I)[I

    move-result-object v1

    iput-object v1, p0, Lcom/miui/powercenter/charge/ChargeFeatureFragment;->o:[I

    const-string v1, "pref_key_charge_protection_wireless_reverse_charge_switch"

    invoke-virtual {p0, v1}, Landroidx/preference/PreferenceFragmentCompat;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v1

    check-cast v1, Lmiuix/preference/CheckBoxPreference;

    iput-object v1, p0, Lcom/miui/powercenter/charge/ChargeFeatureFragment;->k:Lmiuix/preference/CheckBoxPreference;

    const-string v1, "pref_key_charge_protection_wireless_reverse_charge_limit"

    invoke-virtual {p0, v1}, Landroidx/preference/PreferenceFragmentCompat;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v1

    check-cast v1, Lmiuix/preference/DropDownPreference;

    iput-object v1, p0, Lcom/miui/powercenter/charge/ChargeFeatureFragment;->j:Lmiuix/preference/DropDownPreference;

    iget-object v2, p0, Lcom/miui/powercenter/charge/ChargeFeatureFragment;->k:Lmiuix/preference/CheckBoxPreference;

    if-eqz v2, :cond_5

    if-nez v1, :cond_0

    goto/16 :goto_1

    :cond_0
    invoke-virtual {v2, p0}, Landroidx/preference/Preference;->setOnPreferenceChangeListener(Landroidx/preference/Preference$c;)V

    iget-object v1, p0, Lcom/miui/powercenter/charge/ChargeFeatureFragment;->r:Loe/a;

    invoke-interface {v1}, Loe/a;->g()Z

    move-result v1

    iget-object v2, p0, Lcom/miui/powercenter/charge/ChargeFeatureFragment;->k:Lmiuix/preference/CheckBoxPreference;

    invoke-virtual {v2, v1}, Landroidx/preference/TwoStatePreference;->setChecked(Z)V

    iget-object v1, p0, Lcom/miui/powercenter/charge/ChargeFeatureFragment;->j:Lmiuix/preference/DropDownPreference;

    invoke-virtual {v1, p0}, Landroidx/preference/Preference;->setOnPreferenceChangeListener(Landroidx/preference/Preference$c;)V

    iget-object v1, p0, Lcom/miui/powercenter/charge/ChargeFeatureFragment;->n:Lcom/miui/powercenter/charge/ChargeFeatureFragment$c;

    if-nez v1, :cond_1

    new-instance v1, Lcom/miui/powercenter/charge/ChargeFeatureFragment$c;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Lcom/miui/powercenter/charge/ChargeFeatureFragment$c;-><init>(Lcom/miui/powercenter/charge/ChargeFeatureFragment$a;)V

    iput-object v1, p0, Lcom/miui/powercenter/charge/ChargeFeatureFragment;->n:Lcom/miui/powercenter/charge/ChargeFeatureFragment$c;

    :cond_1
    iget-object v1, p0, Lcom/miui/powercenter/charge/ChargeFeatureFragment;->n:Lcom/miui/powercenter/charge/ChargeFeatureFragment$c;

    const/4 v2, -0x1

    invoke-static {v1, v2}, Lcom/miui/powercenter/charge/ChargeFeatureFragment$c;->h(Lcom/miui/powercenter/charge/ChargeFeatureFragment$c;I)I

    iget-object v1, p0, Lcom/miui/powercenter/charge/ChargeFeatureFragment;->o:[I

    array-length v3, v1

    new-array v3, v3, [Ljava/lang/String;

    array-length v1, v1

    new-array v1, v1, [Ljava/lang/String;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const/16 v5, 0x1e

    const-string v6, "wireless_reverse_charging"

    invoke-static {v4, v6, v5}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v4

    const/4 v5, 0x0

    move v6, v5

    :goto_0
    iget-object v7, p0, Lcom/miui/powercenter/charge/ChargeFeatureFragment;->o:[I

    array-length v8, v7

    if-ge v6, v8, :cond_3

    aget v7, v7, v6

    invoke-static {v7}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v1, v6

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v7

    invoke-static {v7}, Ljava/text/NumberFormat;->getPercentInstance(Ljava/util/Locale;)Ljava/text/NumberFormat;

    move-result-object v7

    iget-object v8, p0, Lcom/miui/powercenter/charge/ChargeFeatureFragment;->o:[I

    aget v8, v8, v6

    int-to-float v8, v8

    const/high16 v9, 0x42c80000    # 100.0f

    div-float/2addr v8, v9

    float-to-double v8, v8

    invoke-virtual {v7, v8, v9}, Ljava/text/NumberFormat;->format(D)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v3, v6

    iget-object v7, p0, Lcom/miui/powercenter/charge/ChargeFeatureFragment;->o:[I

    aget v7, v7, v6

    if-ne v4, v7, :cond_2

    iget-object v7, p0, Lcom/miui/powercenter/charge/ChargeFeatureFragment;->n:Lcom/miui/powercenter/charge/ChargeFeatureFragment$c;

    invoke-static {v7, v6}, Lcom/miui/powercenter/charge/ChargeFeatureFragment$c;->h(Lcom/miui/powercenter/charge/ChargeFeatureFragment$c;I)I

    :cond_2
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    :cond_3
    iget-object v4, p0, Lcom/miui/powercenter/charge/ChargeFeatureFragment;->n:Lcom/miui/powercenter/charge/ChargeFeatureFragment$c;

    invoke-static {v4}, Lcom/miui/powercenter/charge/ChargeFeatureFragment$c;->g(Lcom/miui/powercenter/charge/ChargeFeatureFragment$c;)I

    move-result v4

    const/4 v6, 0x1

    if-ne v4, v2, :cond_4

    iget-object v2, p0, Lcom/miui/powercenter/charge/ChargeFeatureFragment;->n:Lcom/miui/powercenter/charge/ChargeFeatureFragment$c;

    invoke-static {v2, v6}, Lcom/miui/powercenter/charge/ChargeFeatureFragment$c;->h(Lcom/miui/powercenter/charge/ChargeFeatureFragment$c;I)I

    :cond_4
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "initWirelessReverseChargeMode: "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v3}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "\t "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v1}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v4, "PC_CHARGE_PROTECTION"

    invoke-static {v4, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v2, p0, Lcom/miui/powercenter/charge/ChargeFeatureFragment;->n:Lcom/miui/powercenter/charge/ChargeFeatureFragment$c;

    invoke-static {v2, v3}, Lcom/miui/powercenter/charge/ChargeFeatureFragment$c;->b(Lcom/miui/powercenter/charge/ChargeFeatureFragment$c;[Ljava/lang/String;)[Ljava/lang/String;

    iget-object v2, p0, Lcom/miui/powercenter/charge/ChargeFeatureFragment;->n:Lcom/miui/powercenter/charge/ChargeFeatureFragment$c;

    invoke-static {v2, v1}, Lcom/miui/powercenter/charge/ChargeFeatureFragment$c;->d(Lcom/miui/powercenter/charge/ChargeFeatureFragment$c;[Ljava/lang/String;)[Ljava/lang/String;

    iget-object v1, p0, Lcom/miui/powercenter/charge/ChargeFeatureFragment;->j:Lmiuix/preference/DropDownPreference;

    iget-object v2, p0, Lcom/miui/powercenter/charge/ChargeFeatureFragment;->n:Lcom/miui/powercenter/charge/ChargeFeatureFragment$c;

    invoke-static {v2}, Lcom/miui/powercenter/charge/ChargeFeatureFragment$c;->a(Lcom/miui/powercenter/charge/ChargeFeatureFragment$c;)[Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lmiuix/preference/DropDownPreference;->y([Ljava/lang/CharSequence;)V

    iget-object v1, p0, Lcom/miui/powercenter/charge/ChargeFeatureFragment;->j:Lmiuix/preference/DropDownPreference;

    iget-object v2, p0, Lcom/miui/powercenter/charge/ChargeFeatureFragment;->n:Lcom/miui/powercenter/charge/ChargeFeatureFragment$c;

    invoke-static {v2}, Lcom/miui/powercenter/charge/ChargeFeatureFragment$c;->c(Lcom/miui/powercenter/charge/ChargeFeatureFragment$c;)[Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lmiuix/preference/DropDownPreference;->B([Ljava/lang/CharSequence;)V

    iget-object v1, p0, Lcom/miui/powercenter/charge/ChargeFeatureFragment;->j:Lmiuix/preference/DropDownPreference;

    iget-object v2, p0, Lcom/miui/powercenter/charge/ChargeFeatureFragment;->n:Lcom/miui/powercenter/charge/ChargeFeatureFragment$c;

    invoke-static {v2}, Lcom/miui/powercenter/charge/ChargeFeatureFragment$c;->g(Lcom/miui/powercenter/charge/ChargeFeatureFragment$c;)I

    move-result v2

    invoke-virtual {v1, v2}, Lmiuix/preference/DropDownPreference;->E(I)V

    iget-object v1, p0, Lcom/miui/powercenter/charge/ChargeFeatureFragment;->j:Lmiuix/preference/DropDownPreference;

    const v2, 0x7f121016

    new-array v3, v6, [Ljava/lang/Object;

    iget-object v4, p0, Lcom/miui/powercenter/charge/ChargeFeatureFragment;->n:Lcom/miui/powercenter/charge/ChargeFeatureFragment$c;

    invoke-virtual {v4}, Lcom/miui/powercenter/charge/ChargeFeatureFragment$c;->i()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v5

    invoke-virtual {v0, v2, v3}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroidx/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    invoke-direct {p0}, Lcom/miui/powercenter/charge/ChargeFeatureFragment;->r0()V

    goto :goto_2

    :cond_5
    :goto_1
    return-void

    :cond_6
    invoke-virtual {p0}, Landroidx/preference/PreferenceFragmentCompat;->getPreferenceScreen()Landroidx/preference/PreferenceScreen;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroidx/preference/PreferenceGroup;->removePreference(Landroidx/preference/Preference;)Z

    :goto_2
    return-void
.end method

.method private p0()Z
    .locals 1

    iget-boolean v0, p0, Lcom/miui/powercenter/charge/ChargeFeatureFragment;->s:Z

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lcom/miui/powercenter/charge/ChargeFeatureFragment;->t:Z

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

.method private q0()Z
    .locals 2

    invoke-static {}, Lld/a;->c()Ljava/lang/String;

    move-result-object v0

    const-string v1, "WIRELESS_TIME_NIGHT"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method private r0()V
    .locals 4

    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const-string v1, "miui.intent.action.ACTION_WIRELESS_CHARGING"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    new-instance v1, Lcom/miui/powercenter/charge/ChargeFeatureFragment$a;

    invoke-direct {v1, p0}, Lcom/miui/powercenter/charge/ChargeFeatureFragment$a;-><init>(Lcom/miui/powercenter/charge/ChargeFeatureFragment;)V

    iput-object v1, p0, Lcom/miui/powercenter/charge/ChargeFeatureFragment;->A:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/miui/powercenter/charge/ChargeFeatureFragment;->A:Landroid/content/BroadcastReceiver;

    const/4 v3, 0x2

    invoke-static {v1, v2, v0, v3}, Lx4/v;->m(Landroid/content/Context;Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;I)Landroid/content/Intent;

    return-void
.end method

.method private s0()V
    .locals 2

    iget-object v0, p0, Lcom/miui/powercenter/charge/ChargeFeatureFragment;->C:Lcom/miui/powercenter/charge/ChargeFeatureFragment$b;

    if-eqz v0, :cond_0

    const/16 v1, 0x3e9

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    :cond_0
    return-void
.end method

.method private t0()V
    .locals 2

    iget-object v0, p0, Lcom/miui/powercenter/charge/ChargeFeatureFragment;->C:Lcom/miui/powercenter/charge/ChargeFeatureFragment$b;

    if-eqz v0, :cond_0

    const/16 v1, 0x3ea

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    :cond_0
    return-void
.end method

.method private u0(Z)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setWirelessFastChargeState: isSupport="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {p0}, Lcom/miui/powercenter/charge/ChargeFeatureFragment;->p0()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, "\tstate="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "PC_CHARGE_PROTECTION"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0}, Lcom/miui/powercenter/charge/ChargeFeatureFragment;->p0()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-boolean v0, p0, Lcom/miui/powercenter/charge/ChargeFeatureFragment;->s:Z

    if-eqz v0, :cond_1

    invoke-static {p1}, Lme/k;->d(Z)V

    goto :goto_1

    :cond_1
    if-eqz p1, :cond_2

    const/4 p1, 0x7

    goto :goto_0

    :cond_2
    const/4 p1, 0x4

    :goto_0
    invoke-static {p1}, Lke/a;->d(I)Ljava/lang/Boolean;

    :goto_1
    return-void
.end method

.method private v0(Z)V
    .locals 3

    invoke-static {p1}, Lgd/c;->x2(Z)V

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lme/w;->L(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "key_fast_charge_enabled"

    invoke-static {v0, v1, p1}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    :cond_0
    invoke-static {}, Lgd/c;->W0()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f121047

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    :cond_1
    iget-object v0, p0, Lcom/miui/powercenter/charge/ChargeFeatureFragment;->b:Landroidx/preference/PreferenceScreen;

    if-eqz v0, :cond_3

    if-eqz p1, :cond_2

    iget-object p1, p0, Lcom/miui/powercenter/charge/ChargeFeatureFragment;->e:Lmiuix/preference/PreferenceCategory;

    invoke-virtual {v0, p1}, Landroidx/preference/PreferenceGroup;->addPreference(Landroidx/preference/Preference;)Z

    goto :goto_0

    :cond_2
    iget-object p1, p0, Lcom/miui/powercenter/charge/ChargeFeatureFragment;->e:Lmiuix/preference/PreferenceCategory;

    invoke-virtual {v0, p1}, Landroidx/preference/PreferenceGroup;->removePreference(Landroidx/preference/Preference;)Z

    :cond_3
    :goto_0
    return-void
.end method


# virtual methods
.method public onCreatePreferences(Landroid/os/Bundle;Ljava/lang/String;)V
    .locals 0

    invoke-super {p0, p1, p2}, Lcom/miui/common/base/ui/MiuiXPreferenceFragment;->onCreatePreferences(Landroid/os/Bundle;Ljava/lang/String;)V

    const p1, 0x7f15001c

    invoke-virtual {p0, p1, p2}, Landroidx/preference/PreferenceFragmentCompat;->setPreferencesFromResource(ILjava/lang/String;)V

    invoke-static {}, Lme/w;->Z()Z

    move-result p1

    iput-boolean p1, p0, Lcom/miui/powercenter/charge/ChargeFeatureFragment;->q:Z

    invoke-static {}, Lsd/b;->f()Z

    move-result p1

    iput-boolean p1, p0, Lcom/miui/powercenter/charge/ChargeFeatureFragment;->p:Z

    invoke-static {}, Lsd/b;->g()Z

    move-result p1

    iput-boolean p1, p0, Lcom/miui/powercenter/charge/ChargeFeatureFragment;->s:Z

    invoke-static {}, Lke/a;->c()Z

    move-result p1

    iput-boolean p1, p0, Lcom/miui/powercenter/charge/ChargeFeatureFragment;->t:Z

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lld/b;->s(Landroid/content/Context;)Loe/a;

    move-result-object p1

    iput-object p1, p0, Lcom/miui/powercenter/charge/ChargeFeatureFragment;->r:Loe/a;

    invoke-interface {p1}, Loe/a;->b()Z

    move-result p1

    iput-boolean p1, p0, Lcom/miui/powercenter/charge/ChargeFeatureFragment;->v:Z

    invoke-virtual {p0}, Landroidx/preference/PreferenceFragmentCompat;->getPreferenceScreen()Landroidx/preference/PreferenceScreen;

    move-result-object p1

    iput-object p1, p0, Lcom/miui/powercenter/charge/ChargeFeatureFragment;->b:Landroidx/preference/PreferenceScreen;

    invoke-direct {p0}, Lcom/miui/powercenter/charge/ChargeFeatureFragment;->m0()V

    invoke-direct {p0}, Lcom/miui/powercenter/charge/ChargeFeatureFragment;->n0()V

    invoke-direct {p0}, Lcom/miui/powercenter/charge/ChargeFeatureFragment;->o0()V

    invoke-direct {p0}, Lcom/miui/powercenter/charge/ChargeFeatureFragment;->l0()V

    return-void
.end method

.method public onDestroy()V
    .locals 2

    invoke-super {p0}, Landroidx/fragment/app/Fragment;->onDestroy()V

    iget-object v0, p0, Lcom/miui/powercenter/charge/ChargeFeatureFragment;->A:Landroid/content/BroadcastReceiver;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/powercenter/charge/ChargeFeatureFragment;->A:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    :cond_0
    iget-object v0, p0, Lcom/miui/powercenter/charge/ChargeFeatureFragment;->C:Lcom/miui/powercenter/charge/ChargeFeatureFragment$b;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    iput-object v1, p0, Lcom/miui/powercenter/charge/ChargeFeatureFragment;->C:Lcom/miui/powercenter/charge/ChargeFeatureFragment$b;

    :cond_1
    iget-object v0, p0, Lcom/miui/powercenter/charge/ChargeFeatureFragment;->B:Landroid/os/HandlerThread;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Looper;->quit()V

    :cond_2
    iget-object v0, p0, Lcom/miui/powercenter/charge/ChargeFeatureFragment;->B:Landroid/os/HandlerThread;

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Landroid/os/HandlerThread;->quit()Z

    iput-object v1, p0, Lcom/miui/powercenter/charge/ChargeFeatureFragment;->B:Landroid/os/HandlerThread;

    :cond_3
    return-void
.end method

.method public onPreferenceChange(Landroidx/preference/Preference;Ljava/lang/Object;)Z
    .locals 8
    .param p1    # Landroidx/preference/Preference;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    invoke-virtual {p1}, Landroidx/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onPreferenceChange: key="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "\tnewValue="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "PC_CHARGE_PROTECTION"

    invoke-static {v2, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v1

    const/4 v3, 0x1

    const/4 v4, 0x0

    const/4 v5, -0x1

    sparse-switch v1, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    const-string v1, "pref_key_charge_protection_wired_charge_mode"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v5, 0x4

    goto :goto_0

    :sswitch_1
    const-string v1, "pref_key_charge_protection_wireless_reverse_charge_limit"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    goto :goto_0

    :cond_1
    const/4 v5, 0x3

    goto :goto_0

    :sswitch_2
    const-string v1, "pref_key_charge_protection_wireless_charge_mode"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    goto :goto_0

    :cond_2
    const/4 v5, 0x2

    goto :goto_0

    :sswitch_3
    const-string v1, "pref_key_charge_wireless_silence_mode"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    goto :goto_0

    :cond_3
    move v5, v3

    goto :goto_0

    :sswitch_4
    const-string v1, "pref_key_charge_protection_wireless_reverse_charge_switch"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4

    goto :goto_0

    :cond_4
    move v5, v4

    :goto_0
    packed-switch v5, :pswitch_data_0

    const-string p1, "onPreferenceChange: not handled key!!!"

    invoke-static {v2, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_5

    :pswitch_0
    check-cast p2, Ljava/lang/String;

    invoke-direct {p0, p1, p2}, Lcom/miui/powercenter/charge/ChargeFeatureFragment;->k0(Landroidx/preference/Preference;Ljava/lang/String;)I

    move-result p1

    iget-object p2, p0, Lcom/miui/powercenter/charge/ChargeFeatureFragment;->w:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "onPreferenceChange: selectMode:"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v2, p2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string p2, "WIRED_STANDARD"

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-static {p2}, Lld/a;->d(Ljava/lang/String;)V

    invoke-direct {p0, v4}, Lcom/miui/powercenter/charge/ChargeFeatureFragment;->v0(Z)V

    :goto_1
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1, v4}, Lme/w;->L0(Landroid/content/Context;Z)V

    goto/16 :goto_5

    :cond_5
    const-string p2, "WIRED_LOW_FAST"

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-static {p2}, Lld/a;->d(Ljava/lang/String;)V

    invoke-direct {p0, v4}, Lcom/miui/powercenter/charge/ChargeFeatureFragment;->v0(Z)V

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1, v3}, Lme/w;->L0(Landroid/content/Context;Z)V

    goto/16 :goto_5

    :cond_6
    const-string p2, "WIRED_TOP_SPEED_FAST"

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_b

    invoke-direct {p0}, Lcom/miui/powercenter/charge/ChargeFeatureFragment;->i0()V

    invoke-static {p2}, Lld/a;->d(Ljava/lang/String;)V

    invoke-direct {p0, v3}, Lcom/miui/powercenter/charge/ChargeFeatureFragment;->v0(Z)V

    goto :goto_1

    :pswitch_1
    check-cast p2, Ljava/lang/String;

    invoke-direct {p0, p1, p2}, Lcom/miui/powercenter/charge/ChargeFeatureFragment;->k0(Landroidx/preference/Preference;Ljava/lang/String;)I

    move-result p1

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "onPreferenceChange: valueIndex="

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, "\t"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/miui/powercenter/charge/ChargeFeatureFragment;->n:Lcom/miui/powercenter/charge/ChargeFeatureFragment$c;

    invoke-static {v0}, Lcom/miui/powercenter/charge/ChargeFeatureFragment$c;->c(Lcom/miui/powercenter/charge/ChargeFeatureFragment$c;)[Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v2, p2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p2, p0, Lcom/miui/powercenter/charge/ChargeFeatureFragment;->j:Lmiuix/preference/DropDownPreference;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f121016

    new-array v2, v3, [Ljava/lang/Object;

    invoke-static {}, Ljava/text/NumberFormat;->getPercentInstance()Ljava/text/NumberFormat;

    move-result-object v5

    iget-object v6, p0, Lcom/miui/powercenter/charge/ChargeFeatureFragment;->o:[I

    aget v6, v6, p1

    int-to-float v6, v6

    const/high16 v7, 0x42c80000    # 100.0f

    div-float/2addr v6, v7

    float-to-double v6, v6

    invoke-virtual {v5, v6, v7}, Ljava/text/NumberFormat;->format(D)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v2, v4

    invoke-virtual {v0, v1, v2}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroidx/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    iget-object p2, p0, Lcom/miui/powercenter/charge/ChargeFeatureFragment;->r:Loe/a;

    iget-object v0, p0, Lcom/miui/powercenter/charge/ChargeFeatureFragment;->o:[I

    aget p1, v0, p1

    invoke-interface {p2, p1}, Loe/a;->c(I)V

    goto/16 :goto_5

    :pswitch_2
    check-cast p2, Ljava/lang/String;

    invoke-direct {p0, p1, p2}, Lcom/miui/powercenter/charge/ChargeFeatureFragment;->k0(Landroidx/preference/Preference;Ljava/lang/String;)I

    move-result p1

    iget-object p2, p0, Lcom/miui/powercenter/charge/ChargeFeatureFragment;->x:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    invoke-static {p1}, Lld/a;->e(Ljava/lang/String;)V

    const-string p2, "WIRELESS_SILENCE"

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_7

    iget-object p2, p0, Lcom/miui/powercenter/charge/ChargeFeatureFragment;->f:Lmiuix/preference/PreferenceCategory;

    iget-object v0, p0, Lcom/miui/powercenter/charge/ChargeFeatureFragment;->h:Lmiuix/preference/DropDownPreference;

    invoke-virtual {p2, v0}, Landroidx/preference/PreferenceGroup;->addPreference(Landroidx/preference/Preference;)Z

    iget-object p2, p0, Lcom/miui/powercenter/charge/ChargeFeatureFragment;->b:Landroidx/preference/PreferenceScreen;

    iget-object v0, p0, Lcom/miui/powercenter/charge/ChargeFeatureFragment;->i:Lmiuix/preference/PreferenceCategory;

    invoke-virtual {p2, v0}, Landroidx/preference/PreferenceGroup;->addPreference(Landroidx/preference/Preference;)Z

    goto :goto_3

    :cond_7
    const-string p2, "WIRELESS_STANDARD"

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_8

    :goto_2
    iget-object p2, p0, Lcom/miui/powercenter/charge/ChargeFeatureFragment;->f:Lmiuix/preference/PreferenceCategory;

    iget-object v0, p0, Lcom/miui/powercenter/charge/ChargeFeatureFragment;->h:Lmiuix/preference/DropDownPreference;

    invoke-virtual {p2, v0}, Landroidx/preference/PreferenceGroup;->removePreference(Landroidx/preference/Preference;)Z

    iget-object p2, p0, Lcom/miui/powercenter/charge/ChargeFeatureFragment;->b:Landroidx/preference/PreferenceScreen;

    iget-object v0, p0, Lcom/miui/powercenter/charge/ChargeFeatureFragment;->i:Lmiuix/preference/PreferenceCategory;

    invoke-virtual {p2, v0}, Landroidx/preference/PreferenceGroup;->removePreference(Landroidx/preference/Preference;)Z

    goto :goto_3

    :cond_8
    const-string p2, "WIRELESS_TOPSPEED"

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_9

    goto :goto_2

    :cond_9
    :goto_3
    invoke-direct {p0}, Lcom/miui/powercenter/charge/ChargeFeatureFragment;->j0()V

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "onPreferenceChange: selectWirelessMode:"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v2, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_5

    :pswitch_3
    check-cast p2, Ljava/lang/String;

    invoke-direct {p0, p1, p2}, Lcom/miui/powercenter/charge/ChargeFeatureFragment;->k0(Landroidx/preference/Preference;Ljava/lang/String;)I

    move-result p1

    if-nez p1, :cond_a

    const-string p1, "WIRELESS_TIME_NIGHT"

    goto :goto_4

    :cond_a
    const-string p1, "WIRELESS_TIME_ALWAYS"

    :goto_4
    invoke-static {p1}, Lld/a;->f(Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/miui/powercenter/charge/ChargeFeatureFragment;->j0()V

    goto :goto_5

    :pswitch_4
    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    iget-object p2, p0, Lcom/miui/powercenter/charge/ChargeFeatureFragment;->r:Loe/a;

    invoke-interface {p2}, Loe/a;->g()Z

    move-result p2

    if-eq p1, p2, :cond_b

    iget-object p2, p0, Lcom/miui/powercenter/charge/ChargeFeatureFragment;->r:Loe/a;

    invoke-interface {p2, p1}, Loe/a;->i(Z)V

    :cond_b
    :goto_5
    return v3

    :sswitch_data_0
    .sparse-switch
        -0x6da68488 -> :sswitch_4
        -0x63631d4d -> :sswitch_3
        -0x4323593c -> :sswitch_2
        0x2d99eef7 -> :sswitch_1
        0x66e73a57 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
