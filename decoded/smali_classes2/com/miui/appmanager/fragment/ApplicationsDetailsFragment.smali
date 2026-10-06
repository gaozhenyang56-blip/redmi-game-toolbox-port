.class public Lcom/miui/appmanager/fragment/ApplicationsDetailsFragment;
.super Lcom/miui/common/base/ui/MiuiXPreferenceFragment;
.source "SourceFile"

# interfaces
.implements Landroidx/preference/Preference$c;
.implements Landroidx/preference/Preference$d;
.implements Landroidx/loader/app/a$a;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/appmanager/fragment/ApplicationsDetailsFragment$p;,
        Lcom/miui/appmanager/fragment/ApplicationsDetailsFragment$d;,
        Lcom/miui/appmanager/fragment/ApplicationsDetailsFragment$c;,
        Lcom/miui/appmanager/fragment/ApplicationsDetailsFragment$a;,
        Lcom/miui/appmanager/fragment/ApplicationsDetailsFragment$b;,
        Lcom/miui/appmanager/fragment/ApplicationsDetailsFragment$e;,
        Lcom/miui/appmanager/fragment/ApplicationsDetailsFragment$b0;,
        Lcom/miui/appmanager/fragment/ApplicationsDetailsFragment$n;,
        Lcom/miui/appmanager/fragment/ApplicationsDetailsFragment$o;,
        Lcom/miui/appmanager/fragment/ApplicationsDetailsFragment$z;,
        Lcom/miui/appmanager/fragment/ApplicationsDetailsFragment$t;,
        Lcom/miui/appmanager/fragment/ApplicationsDetailsFragment$x;,
        Lcom/miui/appmanager/fragment/ApplicationsDetailsFragment$s;,
        Lcom/miui/appmanager/fragment/ApplicationsDetailsFragment$a0;,
        Lcom/miui/appmanager/fragment/ApplicationsDetailsFragment$k;,
        Lcom/miui/appmanager/fragment/ApplicationsDetailsFragment$f;,
        Lcom/miui/appmanager/fragment/ApplicationsDetailsFragment$i;,
        Lcom/miui/appmanager/fragment/ApplicationsDetailsFragment$h;,
        Lcom/miui/appmanager/fragment/ApplicationsDetailsFragment$g;,
        Lcom/miui/appmanager/fragment/ApplicationsDetailsFragment$m;,
        Lcom/miui/appmanager/fragment/ApplicationsDetailsFragment$l;,
        Lcom/miui/appmanager/fragment/ApplicationsDetailsFragment$j;,
        Lcom/miui/appmanager/fragment/ApplicationsDetailsFragment$q;,
        Lcom/miui/appmanager/fragment/ApplicationsDetailsFragment$w;,
        Lcom/miui/appmanager/fragment/ApplicationsDetailsFragment$r;,
        Lcom/miui/appmanager/fragment/ApplicationsDetailsFragment$y;,
        Lcom/miui/appmanager/fragment/ApplicationsDetailsFragment$u;,
        Lcom/miui/appmanager/fragment/ApplicationsDetailsFragment$v;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/miui/common/base/ui/MiuiXPreferenceFragment;",
        "Landroidx/preference/Preference$c;",
        "Landroidx/preference/Preference$d;",
        "Landroidx/loader/app/a$a<",
        "Lcom/miui/appmanager/fragment/b;",
        ">;"
    }
.end annotation


# static fields
.field private static final T0:Ljava/lang/Object;


# instance fields
.field private A:Lmiuix/preference/CheckBoxPreference;

.field private A0:J

.field private B:Landroid/content/res/Resources;

.field private B0:J

.field private C:Ljava/lang/Object;

.field private C0:J

.field private D:Landroid/content/pm/ApplicationInfo;

.field private D0:Ljava/io/File;

.field private E:Landroid/content/pm/PackageInfo;

.field private E0:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/Long;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private F:Ljava/lang/Object;

.field private F0:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private G:Landroid/content/pm/PackageManager;

.field private G0:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/miui/powercenter/legacypowerrank/BatteryData;",
            ">;"
        }
    .end annotation
.end field

.field private H:Landroid/app/ActivityManager;

.field private H0:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public I:Landroid/app/admin/DevicePolicyManager;

.field private I0:Lh3/n;

.field private J:Lcom/miui/appmanager/fragment/ApplicationsDetailsFragment$u;

.field J0:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private K:Landroid/app/AppOpsManager;

.field private K0:Lcom/miui/appmanager/fragment/ApplicationsDetailsFragment$p;

.field private L:Landroid/appwidget/AppWidgetManager;

.field private L0:Lcom/miui/appmanager/AppManageUtils$ClearCacheObserver;

.field private M:Lcom/miui/appmanager/fragment/ApplicationsDetailsFragment$b;

.field private M0:Lcom/miui/appmanager/AppManageUtils$ClearUserDataObserver;

.field private N:Landroid/os/UserHandle;

.field private N0:Lcom/miui/appmanager/fragment/ApplicationsDetailsFragment$w;

.field private O:Landroid/content/Intent;

.field private O0:Lcom/miui/appmanager/fragment/ApplicationsDetailsFragment$n;

.field private P:J

.field private P0:Lcom/miui/appmanager/fragment/ApplicationsDetailsFragment$o;

.field private Q:Ljava/lang/String;

.field private Q0:Lcom/miui/appmanager/fragment/ApplicationsDetailsFragment$t;

.field private R:Ljava/lang/String;

.field private R0:Lcom/miui/appmanager/fragment/ApplicationsDetailsFragment$z;

.field private S:Ljava/lang/String;

.field private S0:Lcom/miui/appmanager/fragment/ApplicationsDetailsFragment$m;

.field private T:Ljava/lang/String;

.field private U:Ljava/lang/String;

.field private V:Z

.field private W:D

.field private X:D

.field private Y:Z

.field private Z:Z

.field private b:Landroid/view/MenuItem;

.field private c:Landroid/view/MenuItem;

.field private d:Landroid/view/MenuItem;

.field private e:Landroid/view/MenuItem;

.field private f:Landroid/view/MenuItem;

.field private f0:Z

.field private g:Landroid/view/MenuItem;

.field private g0:Z

.field private h:Landroid/view/MenuItem;

.field private h0:Z

.field private i:Lcom/miui/appmanager/widget/AppDetailTitlePreference;

.field private i0:Z

.field private j:Lmiuix/preference/TextPreference;

.field private j0:Z

.field private k:Lmiuix/preference/TextPreference;

.field private k0:Z

.field private l:Lmiuix/preference/TextPreference;

.field private l0:Z

.field private m:Landroidx/preference/PreferenceCategory;

.field private m0:Z

.field private n:Lmiuix/preference/TextPreference;

.field private n0:Z

.field private o:Lmiuix/preference/CheckBoxPreference;

.field private o0:Z

.field private p:Lmiuix/preference/CheckBoxPreference;

.field private p0:Z

.field private q:Lmiuix/preference/TextPreference;

.field private q0:Z

.field private r:Lmiuix/preference/TextPreference;

.field private r0:Z

.field private s:Lmiuix/preference/TextPreference;

.field public s0:Z

.field private t:Lmiuix/preference/TextPreference;

.field private t0:Z

.field private u:Lmiuix/preference/TextPreference;

.field private u0:Z

.field private v:Lmiuix/preference/TextPreference;

.field private v0:I

.field private w:Landroidx/preference/PreferenceCategory;

.field private w0:I

.field private x:Lmiuix/preference/DropDownPreference;

.field private x0:I

.field private y:Lmiuix/preference/TextPreference;

.field private y0:I

.field private z:Lmiuix/preference/TextPreference;

.field public z0:J


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/miui/appmanager/fragment/ApplicationsDetailsFragment;->T0:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Lcom/miui/common/base/ui/MiuiXPreferenceFragment;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/miui/appmanager/fragment/ApplicationsDetailsFragment;->V:Z

    iput-boolean v0, p0, Lcom/miui/appmanager/fragment/ApplicationsDetailsFragment;->h0:Z

    iput-boolean v0, p0, Lcom/miui/appmanager/fragment/ApplicationsDetailsFragment;->i0:Z

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/miui/appmanager/fragment/ApplicationsDetailsFragment;->q0:Z

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/miui/appmanager/fragment/ApplicationsDetailsFragment;->A0:J

    iput-wide v0, p0, Lcom/miui/appmanager/fragment/ApplicationsDetailsFragment;->B0:J

    iput-wide v0, p0, Lcom/miui/appmanager/fragment/ApplicationsDetailsFragment;->C0:J

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/miui/appmanager/fragment/ApplicationsDetailsFragment;->E0:Ljava/util/HashMap;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/miui/appmanager/fragment/ApplicationsDetailsFragment;->H0:Ljava/util/List;

    return-void
.end method

.method static synthetic A0(Lcom/miui/appmanager/fragment/ApplicationsDetailsFragment;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/miui/appmanager/fragment/ApplicationsDetailsFragment;->R1(I)V

    return-void
.end method

.method static synthetic A1(Lcom/miui/appmanager/fragment/ApplicationsDetailsFragment;)Z
    .locals 0

    invoke-direct {p0}, Lcom/miui/appmanager/fragment/ApplicationsDetailsFragment;->E2()Z

    move-result p0

    return p0
.end method

.method private A2(Landroid/content/Context;)Z
    .locals 5

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iget-object v1, p0, Lcom/miui/appmanager/fragment/ApplicationsDetailsFragment;->G:Landroid/content/pm/PackageManager;

    iget-object v2, p0, Lcom/miui/appmanager/fragment/ApplicationsDetailsFragment;->Q:Ljava/lang/String;

    invoke-virtual {v1, v0, p1, v2}, Landroid/content/pm/PackageManager;->getPreferredActivities(Ljava/util/List;Ljava/util/List;Ljava/lang/String;)I

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v0

    iget-object v1, p0, Lcom/miui/appmanager/fragment/ApplicationsDetailsFragment;->F:Ljava/lang/Object;

    iget-object v2, p0, Lcom/miui/appmanager/fragment/ApplicationsDetailsFragment;->Q:Ljava/lang/String;

    invoke-static {v1, v2, v0}, Lcom/miui/appmanager/AppManageUtils;->V(Ljava/lang/Object;Ljava/lang/String;I)Z

    move-result v1

    iget-object v2, p0, Lcom/miui/appmanager/fragment/ApplicationsDetailsFragment;->G:Landroid/content/pm/PackageManager;

    invoke-static {v2, v0}, Lcom/miui/appmanager/AppManageUtils;->z(Landroid/content/pm/PackageManager;I)Ljava/lang/String;

    move-result-object v0

    iget-object v2, p0, Lcom/miui/appmanager/fragment/ApplicationsDetailsFragment;->Q:Ljava/lang/String;

    invoke-static {v2, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    iget-object v2, p0, Lcom/miui/appmanager/fragment/ApplicationsDetailsFragment;->L:Landroid/appwidget/AppWidgetManager;

    iget-object v3, p0, Lcom/miui/appmanager/fragment/ApplicationsDetailsFragment;->Q:Ljava/lang/String;

    invoke-static {v2, v3}, Lcom/miui/appmanager/AppManageUtils;->T(Landroid/appwidget/AppWidgetManager;Ljava/lang/String;)Z

    move-result v2

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-gtz p1, :cond_1

    if-nez v1, :cond_1

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    move p1, v3

    goto :goto_1

    :cond_1
    :goto_0
    move p1, v4

    :goto_1
    if-nez p1, :cond_2

    if-eqz v2, :cond_3

    :cond_2
    move v3, v4

    :cond_3
    return v3
.end method

.method static synthetic B0(Lcom/miui/appmanager/fragment/ApplicationsDetailsFragment;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/miui/appmanager/fragment/ApplicationsDetailsFragment;->t0:Z

    return p0
.end method

.method static synthetic B1(Lcom/miui/appmanager/fragment/ApplicationsDetailsFragment;Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/miui/appmanager/fragment/ApplicationsDetailsFragment;->M2(Landroid/content/Context;)V

    return-void
.end method

.method private B2()Z
    .locals 3

    sget-boolean v0, Lmiui/os/Build;->IS_INTERNATIONAL_BUILD:Z

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return v0

    :cond_0
    const/4 v0, 0x1

    const-string v1, "app_hibernation"

    const-string v2, "app_hibernation_enabled"

    invoke-direct {p0, v1, v2, v0}, Lcom/miui/appmanager/fragment/ApplicationsDetailsFragment;->Z1(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method static synthetic C0(Lcom/miui/appmanager/fragment/ApplicationsDetailsFragment;)Landroid/view/MenuItem;
    .locals 0

    iget-object p0, p0, Lcom/miui/appmanager/fragment/ApplicationsDetailsFragment;->c:Landroid/view/MenuItem;

    return-object p0
.end method

.method static synthetic C1(Lcom/miui/appmanager/fragment/ApplicationsDetailsFragment;I)I
    .locals 0

    iput p1, p0, Lcom/miui/appmanager/fragment/ApplicationsDetailsFragment;->y0:I

    return p1
.end method

.method private C2()Z
    .locals 2

    sget-boolean v0, Lmiui/os/Build;->IS_INTERNATIONAL_BUILD:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/appmanager/fragment/ApplicationsDetailsFragment;->Q:Ljava/lang/String;

    const-string v1, "com.xiaomi.mircs"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method static synthetic D0(Lcom/miui/appmanager/fragment/ApplicationsDetailsFragment;)V
    .locals 0

    invoke-direct {p0}, Lcom/miui/appmanager/fragment/ApplicationsDetailsFragment;->l3()V

    return-void
.end method

.method static synthetic D1(Lcom/miui/appmanager/fragment/ApplicationsDetailsFragment;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/miui/appmanager/fragment/ApplicationsDetailsFragment;->n0:Z

    return p1
.end method

.method private D2()Z
    .locals 6

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    const-class v1, Landroid/location/LocationManager;

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/location/LocationManager;

    const/4 v1, 0x0

    :try_start_0
    const-string v2, "isProviderPackage"

    const/4 v3, 0x1

    new-array v4, v3, [Ljava/lang/Class;

    const-class v5, Ljava/lang/String;

    aput-object v5, v4, v1

    new-array v3, v3, [Ljava/lang/Object;

    iget-object v5, p0, Lcom/miui/appmanager/fragment/ApplicationsDetailsFragment;->Q:Ljava/lang/String;

    aput-object v5, v3, v1

    invoke-static {v0, v2, v4, v3}, Lbh/f;->d(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    move-exception v0

    const-string v2, "ApplicationsDetailsActivity"

    const-string v3, "isLocationProvider failed"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return v1
.end method

.method static synthetic E0(Lcom/miui/appmanager/fragment/ApplicationsDetailsFragment;ILandroid/content/DialogInterface$OnClickListener;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/miui/appmanager/fragment/ApplicationsDetailsFragment;->b3(ILandroid/content/DialogInterface$OnClickListener;)V

    return-void
.end method

.method static synthetic E1(Lcom/miui/appmanager/fragment/ApplicationsDetailsFragment;)Lmiuix/preference/CheckBoxPreference;
    .locals 0

    iget-object p0, p0, Lcom/miui/appmanager/fragment/ApplicationsDetailsFragment;->o:Lmiuix/preference/CheckBoxPreference;

    return-object p0
.end method

.method private E2()Z
    .locals 8

    iget-object v0, p0, Lcom/miui/appmanager/fragment/ApplicationsDetailsFragment;->G:Landroid/content/pm/PackageManager;

    const-string v1, "android.hardware.type.automotive"

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x1e

    goto :goto_0

    :cond_0
    const/16 v0, 0x1d

    :goto_0
    invoke-direct {p0}, Lcom/miui/appmanager/fragment/ApplicationsDetailsFragment;->k2()Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_1

    goto :goto_1

    :cond_1
    :try_start_0
    iget-object v1, p0, Lcom/miui/appmanager/fragment/ApplicationsDetailsFragment;->G:Landroid/content/pm/PackageManager;

    const-string v3, "getTargetSdkVersion"

    const/4 v4, 0x1

    new-array v5, v4, [Ljava/lang/Class;

    const-class v6, Ljava/lang/String;

    aput-object v6, v5, v2

    new-array v6, v4, [Ljava/lang/Object;

    iget-object v7, p0, Lcom/miui/appmanager/fragment/ApplicationsDetailsFragment;->Q:Ljava/lang/String;

    aput-object v7, v6, v2

    invoke-static {v1, v3, v5, v6}, Lbh/f;->d(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-gt v1, v0, :cond_2

    move v2, v4

    goto :goto_1

    :catch_0
    move-exception v0

    const-string v1, "ApplicationsDetailsActivity"

    const-string v3, "getTargetSdkVersion failed"

    invoke-static {v1, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_2
    :goto_1
    return v2
.end method

.method static synthetic F0(Lcom/miui/appmanager/fragment/ApplicationsDetailsFragment;)V
    .locals 0

    invoke-direct {p0}, Lcom/miui/appmanager/fragment/ApplicationsDetailsFragment;->O1()V

    return-void
.end method

.method static synthetic F1(Lcom/miui/appmanager/fragment/ApplicationsDetailsFragment;)V
    .locals 0

    invoke-direct {p0}, Lcom/miui/appmanager/fragment/ApplicationsDetailsFragment;->t3()V

    return-void
.end method

.method private F2()Z
    .locals 9

    const-class v0, Ljava/lang/String;

    const/4 v1, 0x1

    :try_start_0
    iget-object v2, p0, Lcom/miui/appmanager/fragment/ApplicationsDetailsFragment;->K:Landroid/app/AppOpsManager;

    const-string v3, "unsafeCheckOpNoThrow"

    const/4 v4, 0x3

    new-array v5, v4, [Ljava/lang/Class;

    const/4 v6, 0x0

    aput-object v0, v5, v6

    sget-object v7, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v7, v5, v1

    const/4 v7, 0x2

    aput-object v0, v5, v7

    new-array v0, v4, [Ljava/lang/Object;

    const-string v8, "android:auto_revoke_permissions_if_unused"

    aput-object v8, v0, v6

    iget v8, p0, Lcom/miui/appmanager/fragment/ApplicationsDetailsFragment;->v0:I

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v0, v1

    iget-object v8, p0, Lcom/miui/appmanager/fragment/ApplicationsDetailsFragment;->Q:Ljava/lang/String;

    aput-object v8, v0, v7

    invoke-static {v2, v3, v5, v0}, Lbh/f;->d(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-ne v0, v4, :cond_0

    iget-boolean v1, p0, Lcom/miui/appmanager/fragment/ApplicationsDetailsFragment;->o0:Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :cond_0
    if-eqz v0, :cond_1

    goto :goto_0

    :cond_1
    move v1, v6

    :goto_0
    return v1

    :catch_0
    move-exception v0

    const-string v2, "ApplicationsDetailsActivity"

    const-string v3, "unsafeCheckOpNoThrow failed"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return v1
.end method

.method static synthetic G0(Lcom/miui/appmanager/fragment/ApplicationsDetailsFragment;)Lcom/miui/appmanager/widget/AppDetailTitlePreference;
    .locals 0

    iget-object p0, p0, Lcom/miui/appmanager/fragment/ApplicationsDetailsFragment;->i:Lcom/miui/appmanager/widget/AppDetailTitlePreference;

    return-object p0
.end method

.method static synthetic G1(Lcom/miui/appmanager/fragment/ApplicationsDetailsFragment;)Lmiuix/preference/TextPreference;
    .locals 0

    iget-object p0, p0, Lcom/miui/appmanager/fragment/ApplicationsDetailsFragment;->v:Lmiuix/preference/TextPreference;

    return-object p0
.end method

.method private G2()Z
    .locals 2

    iget-object v0, p0, Lcom/miui/appmanager/fragment/ApplicationsDetailsFragment;->J0:Ljava/util/List;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x2

    if-lt v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method static synthetic H0(Lcom/miui/appmanager/fragment/ApplicationsDetailsFragment;)V
    .locals 0

    invoke-direct {p0}, Lcom/miui/appmanager/fragment/ApplicationsDetailsFragment;->y2()V

    return-void
.end method

.method static synthetic H1(Lcom/miui/appmanager/fragment/ApplicationsDetailsFragment;)Landroidx/preference/PreferenceCategory;
    .locals 0

    iget-object p0, p0, Lcom/miui/appmanager/fragment/ApplicationsDetailsFragment;->m:Landroidx/preference/PreferenceCategory;

    return-object p0
.end method

.method private H2()Z
    .locals 8

    iget-object v0, p0, Lcom/miui/appmanager/fragment/ApplicationsDetailsFragment;->D:Landroid/content/pm/ApplicationInfo;

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/lit16 v0, v0, 0x80

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    move v0, v2

    :goto_0
    sget-object v3, Le3/c;->k:Ljava/util/List;

    iget-object v4, p0, Lcom/miui/appmanager/fragment/ApplicationsDetailsFragment;->Q:Ljava/lang/String;

    invoke-interface {v3, v4}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v3

    const/4 v4, -0x1

    :try_start_0
    const-class v5, Landroid/content/pm/PackageManager;

    const-string v6, "MATCH_FACTORY_ONLY"

    sget-object v7, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    invoke-static {v5, v6, v7}, Lbh/f;->n(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    const-string v5, "ApplicationsDetailsActivity"

    const-string v6, "reflect error when get factory flag"

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    move v5, v4

    :goto_1
    if-eq v5, v4, :cond_1

    iget-object v4, p0, Lcom/miui/appmanager/fragment/ApplicationsDetailsFragment;->Q:Ljava/lang/String;

    or-int/lit16 v5, v5, 0x80

    or-int/lit8 v5, v5, 0x40

    iget v6, p0, Lcom/miui/appmanager/fragment/ApplicationsDetailsFragment;->w0:I

    invoke-static {v4, v5, v6}, Ltg/a;->d(Ljava/lang/String;II)Landroid/content/pm/PackageInfo;

    move-result-object v4

    if-eqz v4, :cond_1

    iget-object v4, v4, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    if-eqz v4, :cond_1

    iget-object v4, v4, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    if-eqz v4, :cond_1

    const-string v5, "com.miui.stub.install"

    invoke-virtual {v4, v5}, Landroid/os/BaseBundle;->getBoolean(Ljava/lang/String;)Z

    move-result v4

    goto :goto_2

    :cond_1
    move v4, v2

    :goto_2
    if-eqz v0, :cond_2

    if-nez v3, :cond_2

    if-nez v4, :cond_2

    goto :goto_3

    :cond_2
    move v1, v2

    :goto_3
    return v1
.end method

.method static synthetic I0(Lcom/miui/appmanager/fragment/ApplicationsDetailsFragment;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/miui/appmanager/fragment/ApplicationsDetailsFragment;->g3(I)V

    return-void
.end method

.method private I1(Landroid/content/Intent;)V
    .locals 5

    :try_start_0
    const-string v0, "addMiuiFlags"

    const/4 v1, 0x1

    new-array v2, v1, [Ljava/lang/Class;

    sget-object v3, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    const/4 v4, 0x0

    aput-object v3, v2, v4

    new-array v1, v1, [Ljava/lang/Object;

    const/16 v3, 0x8

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v4

    invoke-static {p1, v0, v2, v1}, Lbh/f;->d(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    const-string v0, "ApplicationsDetailsActivity"

    const-string v1, "add cacel splite flag failed"

    invoke-static {v0, v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    return-void
.end method

.method private I2()V
    .locals 4

    iget-object v0, p0, Lcom/miui/appmanager/fragment/ApplicationsDetailsFragment;->Q:Ljava/lang/String;

    invoke-static {v0}, Lcom/miui/appmanager/AppManageUtils;->W(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const v0, 0x7f120191

    const v1, 0x7f120190

    goto :goto_0

    :cond_0
    const v0, 0x7f1201c9

    const v1, 0x7f1201c8

    :goto_0
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v2

    if-nez v2, :cond_1

    return-void

    :cond_1
    new-instance v3, Lmiuix/appcompat/app/AlertDialog$Builder;

    invoke-direct {v3, v2}, Lmiuix/appcompat/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {p0, v0}, Landroidx/fragment/app/Fragment;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {v3, v0}, Lmiuix/appcompat/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Lmiuix/appcompat/app/AlertDialog$Builder;

    move-result-object v0

    const v2, 0x1010355

    invoke-virtual {v0, v2}, Lmiuix/appcompat/app/AlertDialog$Builder;->setIconAttribute(I)Lmiuix/appcompat/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {p0, v1}, Landroidx/fragment/app/Fragment;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Lmiuix/appcompat/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Lmiuix/appcompat/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f1201c1

    new-instance v2, Lcom/miui/appmanager/fragment/ApplicationsDetailsFragment$r;

    invoke-direct {v2, p0}, Lcom/miui/appmanager/fragment/ApplicationsDetailsFragment$r;-><init>(Lcom/miui/appmanager/fragment/ApplicationsDetailsFragment;)V

    invoke-virtual {v0, v1, v2}, Lmiuix/appcompat/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Lmiuix/appcompat/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f1201bf

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lmiuix/appcompat/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Lmiuix/appcompat/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lmiuix/appcompat/app/AlertDialog$Builder;->show()Lmiuix/appcompat/app/AlertDialog;

    return-void
.end method

.method static synthetic J0(Lcom/miui/appmanager/fragment/ApplicationsDetailsFragment;Ljava/lang/String;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/miui/appmanager/fragment/ApplicationsDetailsFragment;->q3(Ljava/lang/String;I)V

    return-void
.end method

.method private J1()Z
    .locals 2

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/miui/appmanager/fragment/ApplicationsDetailsFragment;->T1(I)Landroid/content/pm/ResolveInfo;

    move-result-object v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method private synthetic J2(Landroid/content/DialogInterface;I)V
    .locals 0

    iget-object p1, p0, Lcom/miui/appmanager/fragment/ApplicationsDetailsFragment;->o:Lmiuix/preference/CheckBoxPreference;

    const/4 p2, 0x1

    invoke-virtual {p1, p2}, Landroidx/preference/TwoStatePreference;->setChecked(Z)V

    return-void
.end method

.method static synthetic K0(Lcom/miui/appmanager/fragment/ApplicationsDetailsFragment;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/miui/appmanager/fragment/ApplicationsDetailsFragment;->k0:Z

    return p0
.end method

.method private K1()V
    .locals 2

    iget-object v0, p0, Lcom/miui/appmanager/fragment/ApplicationsDetailsFragment;->M:Lcom/miui/appmanager/fragment/ApplicationsDetailsFragment$b;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lq0/c;->b()Z

    :cond_0
    iget-object v0, p0, Lcom/miui/appmanager/fragment/ApplicationsDetailsFragment;->O0:Lcom/miui/appmanager/fragment/ApplicationsDetailsFragment$n;

    const/4 v1, 0x1

    if-eqz v0, :cond_1

    invoke-virtual {v0, v1}, Landroid/os/AsyncTask;->cancel(Z)Z

    :cond_1
    iget-object v0, p0, Lcom/miui/appmanager/fragment/ApplicationsDetailsFragment;->P0:Lcom/miui/appmanager/fragment/ApplicationsDetailsFragment$o;

    if-eqz v0, :cond_2

    invoke-virtual {v0, v1}, Landroid/os/AsyncTask;->cancel(Z)Z

    :cond_2
    iget-object v0, p0, Lcom/miui/appmanager/fragment/ApplicationsDetailsFragment;->S0:Lcom/miui/appmanager/fragment/ApplicationsDetailsFragment$m;

    if-eqz v0, :cond_3

    invoke-virtual {v0, v1}, Landroid/os/AsyncTask;->cancel(Z)Z

    :cond_3
    iget-object v0, p0, Lcom/miui/appmanager/fragment/ApplicationsDetailsFragment;->Q0:Lcom/miui/appmanager/fragment/ApplicationsDetailsFragment$t;

    if-eqz v0, :cond_4

    invoke-virtual {v0, v1}, Landroid/os/AsyncTask;->cancel(Z)Z

    :cond_4
    iget-object v0, p0, Lcom/miui/appmanager/fragment/ApplicationsDetailsFragment;->R0:Lcom/miui/appmanager/fragment/ApplicationsDetailsFragment$z;

    if-eqz v0, :cond_5

    invoke-virtual {v0, v1}, Landroid/os/AsyncTask;->cancel(Z)Z

    :cond_5
    return-void
.end method

.method private synthetic K2(Landroid/app/Activity;ZLandroid/content/DialogInterface;I)V
    .locals 0

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    iget p3, p0, Lcom/miui/appmanager/fragment/ApplicationsDetailsFragment;->w0:I

    iget-object p4, p0, Lcom/miui/appmanager/fragment/ApplicationsDetailsFragment;->Q:Ljava/lang/String;

    invoke-static {p1, p3, p4, p2}, Lcom/miui/appmanager/AppManageUtils;->t0(Landroid/content/Context;ILjava/lang/String;Z)V

    return-void
.end method

.method static synthetic L0(Lcom/miui/appmanager/fragment/ApplicationsDetailsFragment;)Landroid/view/MenuItem;
    .locals 0

    iget-object p0, p0, Lcom/miui/appmanager/fragment/ApplicationsDetailsFragment;->b:Landroid/view/MenuItem;

    return-object p0
.end method

.method private L1()V
    .locals 4

    iget-object v0, p0, Lcom/miui/appmanager/fragment/ApplicationsDetailsFragment;->b:Landroid/view/MenuItem;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/miui/appmanager/fragment/ApplicationsDetailsFragment;->c:Landroid/view/MenuItem;

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    if-nez v0, :cond_1

    return-void

    :cond_1
    iget-object v1, p0, Lcom/miui/appmanager/fragment/ApplicationsDetailsFragment;->b:Landroid/view/MenuItem;

    invoke-direct {p0}, Lcom/miui/appmanager/fragment/ApplicationsDetailsFragment;->M1()Z

    move-result v2

    invoke-interface {v1, v2}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    invoke-direct {p0}, Lcom/miui/appmanager/fragment/ApplicationsDetailsFragment;->x2()V

    invoke-direct {p0}, Lcom/miui/appmanager/fragment/ApplicationsDetailsFragment;->u2()V

    invoke-virtual {p0}, Lcom/miui/appmanager/fragment/ApplicationsDetailsFragment;->W2()V

    iget-object v1, p0, Lcom/miui/appmanager/fragment/ApplicationsDetailsFragment;->Q:Ljava/lang/String;

    iget v2, p0, Lcom/miui/appmanager/fragment/ApplicationsDetailsFragment;->w0:I

    invoke-static {v0, v1, v2}, Lcom/miui/appmanager/AppManageUtils;->f(Landroid/content/Context;Ljava/lang/String;I)Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/miui/appmanager/fragment/ApplicationsDetailsFragment;->d:Landroid/view/MenuItem;

    invoke-interface {v1, v2}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    :cond_2
    iget-object v1, p0, Lcom/miui/appmanager/fragment/ApplicationsDetailsFragment;->Q:Ljava/lang/String;

    iget v3, p0, Lcom/miui/appmanager/fragment/ApplicationsDetailsFragment;->w0:I

    invoke-static {v0, v1, v3}, Lx4/t;->K(Landroid/content/Context;Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Package "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/miui/appmanager/fragment/ApplicationsDetailsFragment;->Q:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " is protected from delete"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Enterprise"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/miui/appmanager/fragment/ApplicationsDetailsFragment;->c:Landroid/view/MenuItem;

    invoke-interface {v0, v2}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    :cond_3
    :goto_0
    return-void
.end method

.method private synthetic L2(Landroid/content/DialogInterface;)V
    .locals 1

    iget-object p1, p0, Lcom/miui/appmanager/fragment/ApplicationsDetailsFragment;->o:Lmiuix/preference/CheckBoxPreference;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroidx/preference/TwoStatePreference;->setChecked(Z)V

    return-void
.end method

.method static synthetic M0(Lcom/miui/appmanager/fragment/ApplicationsDetailsFragment;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/miui/appmanager/fragment/ApplicationsDetailsFragment;->r0:Z

    return p0
.end method

.method private M1()Z
    .locals 4

    invoke-direct {p0}, Lcom/miui/appmanager/fragment/ApplicationsDetailsFragment;->U1()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    sget-object v0, Le3/c;->e:Ljava/util/List;

    iget-object v2, p0, Lcom/miui/appmanager/fragment/ApplicationsDetailsFragment;->Q:Ljava/lang/String;

    invoke-interface {v0, v2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    move v0, v1

    :goto_0
    iput-boolean v0, p0, Lcom/miui/appmanager/fragment/ApplicationsDetailsFragment;->p0:Z

    invoke-static {}, Lx4/t;->x()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/miui/appmanager/fragment/ApplicationsDetailsFragment;->p0:Z

    if-eqz v0, :cond_1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "sys."

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/miui/appmanager/fragment/ApplicationsDetailsFragment;->Q:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v1}, Lx4/v1;->a(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_1

    iput-boolean v1, p0, Lcom/miui/appmanager/fragment/ApplicationsDetailsFragment;->p0:Z

    :cond_1
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    if-nez v0, :cond_2

    return v1

    :cond_2
    iget-object v2, p0, Lcom/miui/appmanager/fragment/ApplicationsDetailsFragment;->Q:Ljava/lang/String;

    iget v3, p0, Lcom/miui/appmanager/fragment/ApplicationsDetailsFragment;->w0:I

    invoke-static {v0, v2, v3}, Lx4/t;->N(Landroid/content/Context;Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Package "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/miui/appmanager/fragment/ApplicationsDetailsFragment;->Q:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " should keep alive"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "Enterprise"

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iput-boolean v1, p0, Lcom/miui/appmanager/fragment/ApplicationsDetailsFragment;->p0:Z

    :cond_3
    iget-object v0, p0, Lcom/miui/appmanager/fragment/ApplicationsDetailsFragment;->I:Landroid/app/admin/DevicePolicyManager;

    iget-object v2, p0, Lcom/miui/appmanager/fragment/ApplicationsDetailsFragment;->Q:Ljava/lang/String;

    invoke-virtual {v0, v2}, Landroid/app/admin/DevicePolicyManager;->isDeviceOwnerApp(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "force stop menu is disabled for device owner app: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/miui/appmanager/fragment/ApplicationsDetailsFragment;->Q:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "ApplicationsDetailsActivity"

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iput-boolean v1, p0, Lcom/miui/appmanager/fragment/ApplicationsDetailsFragment;->p0:Z

    :cond_4
    iget-object v0, p0, Lcom/miui/appmanager/fragment/ApplicationsDetailsFragment;->Q:Ljava/lang/String;

    const-string v2, "com.phonetest.stresstest"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    const-string v0, "persist.mtbf.test"

    invoke-static {v0, v1}, Lx4/v1;->a(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_5

    iput-boolean v1, p0, Lcom/miui/appmanager/fragment/ApplicationsDetailsFragment;->p0:Z

    :cond_5
    iget-boolean v0, p0, Lcom/miui/appmanager/fragment/ApplicationsDetailsFragment;->p0:Z

    return v0
.end method

.method private M2(Landroid/content/Context;)V
    .locals 8

    iget-boolean v0, p0, Lcom/miui/appmanager/fragment/ApplicationsDetailsFragment;->n0:Z

    if-nez v0, :cond_1

    :try_start_0
    const-string v0, "android.permission.PermissionControllerManager"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1c

    if-lt v0, v1, :cond_1

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    const-string v1, "getHibernationEligibility"

    const/4 v2, 0x3

    new-array v3, v2, [Ljava/lang/Class;

    const-class v4, Ljava/lang/String;

    const/4 v5, 0x0

    aput-object v4, v3, v5

    const-class v4, Ljava/util/concurrent/Executor;

    const/4 v6, 0x1

    aput-object v4, v3, v6

    const-class v4, Ljava/util/function/IntConsumer;

    const/4 v7, 0x2

    aput-object v4, v3, v7

    new-array v2, v2, [Ljava/lang/Object;

    iget-object v4, p0, Lcom/miui/appmanager/fragment/ApplicationsDetailsFragment;->Q:Ljava/lang/String;

    aput-object v4, v2, v5

    invoke-static {v0}, Lg3/a;->a(Landroid/app/Activity;)Ljava/util/concurrent/Executor;

    move-result-object v0

    aput-object v0, v2, v6

    new-instance v0, Lcom/miui/appmanager/fragment/ApplicationsDetailsFragment$a;

    invoke-direct {v0, p0}, Lcom/miui/appmanager/fragment/ApplicationsDetailsFragment$a;-><init>(Lcom/miui/appmanager/fragment/ApplicationsDetailsFragment;)V

    aput-object v0, v2, v7

    invoke-static {p1, v1, v3, v2}, Lbh/f;->d(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    const-string v0, "ApplicationsDetailsActivity"

    const-string v1, "load hibernation data failed"

    invoke-static {v0, v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_1
    :goto_0
    return-void
.end method

.method static synthetic N0(Lcom/miui/appmanager/fragment/ApplicationsDetailsFragment;Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/miui/appmanager/fragment/ApplicationsDetailsFragment;->c2(Landroid/content/Context;)V

    return-void
.end method

.method private N2()Z
    .locals 3

    iget-boolean v0, p0, Lcom/miui/appmanager/fragment/ApplicationsDetailsFragment;->h0:Z

    const/4 v1, 0x0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v2, p0, Lcom/miui/appmanager/fragment/ApplicationsDetailsFragment;->Q:Ljava/lang/String;

    invoke-static {v0, v2, v1}, Lx4/t;->y(Landroid/content/Context;Ljava/lang/String;I)Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    const/4 v1, 0x1

    :cond_1
    return v1
.end method

.method static synthetic O0(Lcom/miui/appmanager/fragment/ApplicationsDetailsFragment;Ljava/util/List;)Ljava/util/List;
    .locals 0

    iput-object p1, p0, Lcom/miui/appmanager/fragment/ApplicationsDetailsFragment;->G0:Ljava/util/List;

    return-object p1
.end method

.method private O1()V
    .locals 4

    iget-object v0, p0, Lcom/miui/appmanager/fragment/ApplicationsDetailsFragment;->L0:Lcom/miui/appmanager/AppManageUtils$ClearCacheObserver;

    if-nez v0, :cond_0

    new-instance v0, Lcom/miui/appmanager/AppManageUtils$ClearCacheObserver;

    iget-object v1, p0, Lcom/miui/appmanager/fragment/ApplicationsDetailsFragment;->J:Lcom/miui/appmanager/fragment/ApplicationsDetailsFragment$u;

    invoke-direct {v0, v1}, Lcom/miui/appmanager/AppManageUtils$ClearCacheObserver;-><init>(Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/miui/appmanager/fragment/ApplicationsDetailsFragment;->L0:Lcom/miui/appmanager/AppManageUtils$ClearCacheObserver;

    :cond_0
    iget-object v0, p0, Lcom/miui/appmanager/fragment/ApplicationsDetailsFragment;->C:Ljava/lang/Object;

    iget-object v1, p0, Lcom/miui/appmanager/fragment/ApplicationsDetailsFragment;->Q:Ljava/lang/String;

    iget v2, p0, Lcom/miui/appmanager/fragment/ApplicationsDetailsFragment;->w0:I

    iget-object v3, p0, Lcom/miui/appmanager/fragment/ApplicationsDetailsFragment;->L0:Lcom/miui/appmanager/AppManageUtils$ClearCacheObserver;

    invoke-static {v0, v1, v2, v3}, Lcom/miui/appmanager/AppManageUtils;->g(Ljava/lang/Object;Ljava/lang/String;ILcom/miui/appmanager/AppManageUtils$ClearCacheObserver;)V

    const-string v0, "clear_cache"

    invoke-static {v0}, Lf3/a;->i(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic P0(Lcom/miui/appmanager/fragment/ApplicationsDetailsFragment;D)D
    .locals 0

    iput-wide p1, p0, Lcom/miui/appmanager/fragment/ApplicationsDetailsFragment;->X:D

    return-wide p1
.end method

.method private P1()V
    .locals 3

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v0

    :try_start_0
    iget-object v1, p0, Lcom/miui/appmanager/fragment/ApplicationsDetailsFragment;->G:Landroid/content/pm/PackageManager;

    iget-object v2, p0, Lcom/miui/appmanager/fragment/ApplicationsDetailsFragment;->Q:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/content/pm/PackageManager;->clearPackagePreferredActivities(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/miui/appmanager/fragment/ApplicationsDetailsFragment;->G:Landroid/content/pm/PackageManager;

    invoke-static {v1, v0}, Lcom/miui/appmanager/AppManageUtils;->z(Landroid/content/pm/PackageManager;I)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/miui/appmanager/fragment/ApplicationsDetailsFragment;->Q:Ljava/lang/String;

    invoke-static {v2, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/miui/appmanager/fragment/ApplicationsDetailsFragment;->G:Landroid/content/pm/PackageManager;

    const/4 v2, 0x0

    invoke-static {v1, v2, v0}, Lcom/miui/appmanager/AppManageUtils;->x0(Landroid/content/pm/PackageManager;Ljava/lang/String;I)V

    :cond_0
    iget-object v1, p0, Lcom/miui/appmanager/fragment/ApplicationsDetailsFragment;->F:Ljava/lang/Object;

    iget-object v2, p0, Lcom/miui/appmanager/fragment/ApplicationsDetailsFragment;->Q:Ljava/lang/String;

    invoke-static {v1, v2, v0}, Lcom/miui/appmanager/AppManageUtils;->i(Ljava/lang/Object;Ljava/lang/String;I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "ApplicationsDetailsActivity"

    const-string v2, "mUsbManager.clearDefaults"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    iget-object v0, p0, Lcom/miui/appmanager/fragment/ApplicationsDetailsFragment;->L:Landroid/appwidget/AppWidgetManager;

    iget-object v1, p0, Lcom/miui/appmanager/fragment/ApplicationsDetailsFragment;->Q:Ljava/lang/String;

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/miui/appmanager/AppManageUtils;->u0(Landroid/appwidget/AppWidgetManager;Ljava/lang/String;Z)V

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f1201b0

    invoke-static {v0, v1}, Leg/c;->n(Landroid/content/Context;I)V

    iget-object v0, p0, Lcom/miui/appmanager/fragment/ApplicationsDetailsFragment;->y:Lmiuix/preference/TextPreference;

    const v1, 0x7f1201b1

    invoke-virtual {v0, v1}, Landroidx/preference/Preference;->setSummary(I)V

    iput-boolean v2, p0, Lcom/miui/appmanager/fragment/ApplicationsDetailsFragment;->f0:Z

    return-void
.end method

.method static synthetic Q0(Lcom/miui/appmanager/fragment/ApplicationsDetailsFragment;D)D
    .locals 0

    iput-wide p1, p0, Lcom/miui/appmanager/fragment/ApplicationsDetailsFragment;->W:D

    return-wide p1
.end method

.method private Q1()V
    .locals 5

    iget-object v0, p0, Lcom/miui/appmanager/fragment/ApplicationsDetailsFragment;->D:Landroid/content/pm/ApplicationInfo;

    iget-boolean v1, v0, Landroid/content/pm/ApplicationInfo;->enabled:Z

    if-eqz v1, :cond_3

    if-eqz v0, :cond_2

    iget-object v0, v0, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    if-eqz v0, :cond_2

    const-string v1, "app_disable_description_title"

    invoke-virtual {v0, v1}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iget-object v1, p0, Lcom/miui/appmanager/fragment/ApplicationsDetailsFragment;->D:Landroid/content/pm/ApplicationInfo;

    iget-object v1, v1, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    const-string v2, "app_disable_description_content"

    invoke-virtual {v1, v2}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;)I

    move-result v1

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    if-eqz v1, :cond_0

    iget-object v2, p0, Lcom/miui/appmanager/fragment/ApplicationsDetailsFragment;->G:Landroid/content/pm/PackageManager;

    iget-object v3, p0, Lcom/miui/appmanager/fragment/ApplicationsDetailsFragment;->Q:Ljava/lang/String;

    iget-object v4, p0, Lcom/miui/appmanager/fragment/ApplicationsDetailsFragment;->D:Landroid/content/pm/ApplicationInfo;

    invoke-virtual {v2, v3, v0, v4}, Landroid/content/pm/PackageManager;->getText(Ljava/lang/String;ILandroid/content/pm/ApplicationInfo;)Ljava/lang/CharSequence;

    move-result-object v2

    iget-object v0, p0, Lcom/miui/appmanager/fragment/ApplicationsDetailsFragment;->G:Landroid/content/pm/PackageManager;

    iget-object v3, p0, Lcom/miui/appmanager/fragment/ApplicationsDetailsFragment;->Q:Ljava/lang/String;

    iget-object v4, p0, Lcom/miui/appmanager/fragment/ApplicationsDetailsFragment;->D:Landroid/content/pm/ApplicationInfo;

    invoke-virtual {v0, v3, v1, v4}, Landroid/content/pm/PackageManager;->getText(Ljava/lang/String;ILandroid/content/pm/ApplicationInfo;)Ljava/lang/CharSequence;

    move-result-object v0

    goto :goto_0

    :cond_0
    move-object v0, v2

    :goto_0
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_2

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    goto :goto_1

    :cond_1
    invoke-direct {p0, v2, v0}, Lcom/miui/appmanager/fragment/ApplicationsDetailsFragment;->d3(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)V

    goto :goto_2

    :cond_2
    :goto_1
    invoke-direct {p0}, Lcom/miui/appmanager/fragment/ApplicationsDetailsFragment;->f3()V

    goto :goto_2

    :cond_3
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/miui/appmanager/fragment/ApplicationsDetailsFragment;->R1(I)V

    :goto_2
    return-void
.end method

.method private Q2()Z
    .locals 9

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    invoke-virtual {v0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    :try_start_0
    const-string v2, "android.os.ServiceManager"

    invoke-static {v2}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2

    const-string v3, "getService"

    const/4 v4, 0x1

    new-array v5, v4, [Ljava/lang/Class;

    const-class v6, Ljava/lang/String;

    aput-object v6, v5, v1

    new-array v6, v4, [Ljava/lang/Object;

    const-string v7, "package"

    aput-object v7, v6, v1

    invoke-static {v2, v3, v5, v6}, Lbh/f;->h(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/IBinder;

    const-string v3, "android.content.pm.IPackageManager$Stub"

    invoke-static {v3}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v3

    const-string v5, "asInterface"

    new-array v6, v4, [Ljava/lang/Class;

    const-class v7, Landroid/os/IBinder;

    aput-object v7, v6, v1

    new-array v7, v4, [Ljava/lang/Object;

    aput-object v2, v7, v1

    invoke-static {v3, v5, v6, v7}, Lbh/f;->h(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    iput-object v2, p0, Lcom/miui/appmanager/fragment/ApplicationsDetailsFragment;->C:Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const-string v2, "package_name"

    invoke-virtual {v0, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/miui/appmanager/fragment/ApplicationsDetailsFragment;->Q:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    return v1

    :cond_1
    const-string v2, "enter_from_appmanagermainactivity"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v2

    iput-boolean v2, p0, Lcom/miui/appmanager/fragment/ApplicationsDetailsFragment;->r0:Z

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v2

    const-string v3, "miui.intent.extra.USER_ID"

    invoke-virtual {v0, v3, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    iput v2, p0, Lcom/miui/appmanager/fragment/ApplicationsDetailsFragment;->w0:I

    const-string v2, "size"

    const-wide/16 v5, 0x0

    invoke-virtual {v0, v2, v5, v6}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v2

    iput-wide v2, p0, Lcom/miui/appmanager/fragment/ApplicationsDetailsFragment;->z0:J

    const-wide/16 v7, -0x1

    cmp-long v0, v2, v7

    if-nez v0, :cond_2

    iput-wide v5, p0, Lcom/miui/appmanager/fragment/ApplicationsDetailsFragment;->z0:J

    :cond_2
    iget v0, p0, Lcom/miui/appmanager/fragment/ApplicationsDetailsFragment;->w0:I

    invoke-static {v0}, Lx4/b2;->d(I)Z

    move-result v0

    iput-boolean v0, p0, Lcom/miui/appmanager/fragment/ApplicationsDetailsFragment;->s0:Z

    iget-object v0, p0, Lcom/miui/appmanager/fragment/ApplicationsDetailsFragment;->Q:Ljava/lang/String;

    const/16 v2, 0x10c0

    iget v3, p0, Lcom/miui/appmanager/fragment/ApplicationsDetailsFragment;->w0:I

    invoke-static {v0, v2, v3}, Ltg/a;->d(Ljava/lang/String;II)Landroid/content/pm/PackageInfo;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/appmanager/fragment/ApplicationsDetailsFragment;->E:Landroid/content/pm/PackageInfo;

    if-nez v0, :cond_3

    return v1

    :cond_3
    iget-object v0, v0, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iput-object v0, p0, Lcom/miui/appmanager/fragment/ApplicationsDetailsFragment;->D:Landroid/content/pm/ApplicationInfo;

    if-nez v0, :cond_4

    return v1

    :cond_4
    return v4

    :catch_0
    move-exception v0

    const-string v2, "ApplicationsDetailsActivity"

    const-string v3, "reflect error while get package manager service"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return v1
.end method

.method static synthetic R0(Lcom/miui/appmanager/fragment/ApplicationsDetailsFragment;)Landroid/content/pm/ApplicationInfo;
    .locals 0

    iget-object p0, p0, Lcom/miui/appmanager/fragment/ApplicationsDetailsFragment;->D:Landroid/content/pm/ApplicationInfo;

    return-object p0
.end method

.method private R1(I)V
    .locals 2

    sget-boolean v0, Ln9/a;->a:Z

    if-eqz v0, :cond_1

    sget-object v0, Ln9/a;->b:Ljava/util/List;

    iget-object v1, p0, Lcom/miui/appmanager/fragment/ApplicationsDetailsFragment;->Q:Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Ln9/a;->e:Ljava/util/List;

    iget-object v1, p0, Lcom/miui/appmanager/fragment/ApplicationsDetailsFragment;->Q:Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    if-eqz v0, :cond_1

    new-instance p1, Landroid/content/Intent;

    const-class v1, Lcom/miui/googlebase/ui/GmsCoreSettings;

    invoke-direct {p1, v0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, p1}, Lcom/miui/common/base/ui/MiuiXPreferenceFragment;->startActivity(Landroid/content/Intent;)V

    return-void

    :cond_1
    new-instance v0, Lcom/miui/appmanager/fragment/ApplicationsDetailsFragment$m;

    invoke-direct {v0, p0, p1}, Lcom/miui/appmanager/fragment/ApplicationsDetailsFragment$m;-><init>(Lcom/miui/appmanager/fragment/ApplicationsDetailsFragment;I)V

    iput-object v0, p0, Lcom/miui/appmanager/fragment/ApplicationsDetailsFragment;->S0:Lcom/miui/appmanager/fragment/ApplicationsDetailsFragment$m;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Landroid/os/AsyncTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    const/4 v0, 0x3

    if-ne p1, v0, :cond_2

    iget-object p1, p0, Lcom/miui/appmanager/fragment/ApplicationsDetailsFragment;->Q:Ljava/lang/String;

    const-string v0, "disable_app"

    goto :goto_0

    :cond_2
    iget-object p1, p0, Lcom/miui/appmanager/fragment/ApplicationsDetailsFragment;->Q:Ljava/lang/String;

    const-string v0, "enable_app"

    :goto_0
    invoke-static {v0, p1}, Lf3/a;->h(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic S0(Lcom/miui/appmanager/fragment/ApplicationsDetailsFragment;)Lmiuix/preference/TextPreference;
    .locals 0

    iget-object p0, p0, Lcom/miui/appmanager/fragment/ApplicationsDetailsFragment;->l:Lmiuix/preference/TextPreference;

    return-object p0
.end method

.method private S1()V
    .locals 3

    iget-object v0, p0, Lcom/miui/appmanager/fragment/ApplicationsDetailsFragment;->H:Landroid/app/ActivityManager;

    iget-object v1, p0, Lcom/miui/appmanager/fragment/ApplicationsDetailsFragment;->Q:Ljava/lang/String;

    iget v2, p0, Lcom/miui/appmanager/fragment/ApplicationsDetailsFragment;->w0:I

    invoke-static {v0, v1, v2}, Lcom/miui/appmanager/AppManageUtils;->m(Landroid/app/ActivityManager;Ljava/lang/String;I)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/miui/appmanager/fragment/ApplicationsDetailsFragment;->p0:Z

    iget-object v1, p0, Lcom/miui/appmanager/fragment/ApplicationsDetailsFragment;->b:Landroid/view/MenuItem;

    invoke-interface {v1, v0}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    invoke-virtual {p0}, Lcom/miui/appmanager/fragment/ApplicationsDetailsFragment;->W2()V

    return-void
.end method

.method private S2(Landroid/os/Message;)V
    .locals 7

    iget v0, p1, Landroid/os/Message;->arg1:I

    iget p1, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x3

    const/4 v2, 0x1

    if-ne v0, v2, :cond_4

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x19

    if-le v2, v3, :cond_3

    const/4 v2, 0x0

    const-wide/16 v3, 0x0

    if-ne p1, v1, :cond_2

    iget-object p1, p0, Lcom/miui/appmanager/fragment/ApplicationsDetailsFragment;->Q:Ljava/lang/String;

    invoke-static {v0, p1}, Lx4/k1;->j(Landroid/content/Context;Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_1

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/miui/appmanager/fragment/ApplicationsDetailsFragment;->Q:Ljava/lang/String;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "clear data, close privacy input mode"

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v1, "ApplicationsDetailsActivity"

    invoke-static {v1, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p1, p0, Lcom/miui/appmanager/fragment/ApplicationsDetailsFragment;->Q:Ljava/lang/String;

    invoke-static {v2, v0, p1}, Lx4/k1;->t(ZLandroid/content/Context;Ljava/lang/String;)V

    :cond_1
    iput-wide v3, p0, Lcom/miui/appmanager/fragment/ApplicationsDetailsFragment;->A0:J

    goto :goto_0

    :cond_2
    iget-wide v0, p0, Lcom/miui/appmanager/fragment/ApplicationsDetailsFragment;->A0:J

    iget-wide v5, p0, Lcom/miui/appmanager/fragment/ApplicationsDetailsFragment;->B0:J

    sub-long/2addr v0, v5

    iput-wide v0, p0, Lcom/miui/appmanager/fragment/ApplicationsDetailsFragment;->A0:J

    :goto_0
    iput-wide v3, p0, Lcom/miui/appmanager/fragment/ApplicationsDetailsFragment;->B0:J

    iget-wide v0, p0, Lcom/miui/appmanager/fragment/ApplicationsDetailsFragment;->A0:J

    iget-wide v3, p0, Lcom/miui/appmanager/fragment/ApplicationsDetailsFragment;->C0:J

    add-long/2addr v0, v3

    iput-wide v0, p0, Lcom/miui/appmanager/fragment/ApplicationsDetailsFragment;->z0:J

    iget-object p1, p0, Lcom/miui/appmanager/fragment/ApplicationsDetailsFragment;->J:Lcom/miui/appmanager/fragment/ApplicationsDetailsFragment$u;

    invoke-virtual {p1, v2}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_1

    :cond_3
    invoke-direct {p0}, Lcom/miui/appmanager/fragment/ApplicationsDetailsFragment;->d2()V

    :goto_1
    iget-object p1, p0, Lcom/miui/appmanager/fragment/ApplicationsDetailsFragment;->b:Landroid/view/MenuItem;

    invoke-direct {p0}, Lcom/miui/appmanager/fragment/ApplicationsDetailsFragment;->M1()Z

    move-result v0

    invoke-interface {p1, v0}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    invoke-virtual {p0}, Lcom/miui/appmanager/fragment/ApplicationsDetailsFragment;->W2()V

    goto :goto_2

    :cond_4
    if-ne p1, v1, :cond_5

    iget-object p1, p0, Lcom/miui/appmanager/fragment/ApplicationsDetailsFragment;->d:Landroid/view/MenuItem;

    invoke-interface {p1, v2}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    :cond_5
    :goto_2
    return-void
.end method

.method static synthetic T0(Lcom/miui/appmanager/fragment/ApplicationsDetailsFragment;Landroid/content/pm/ApplicationInfo;)Landroid/content/pm/ApplicationInfo;
    .locals 0

    iput-object p1, p0, Lcom/miui/appmanager/fragment/ApplicationsDetailsFragment;->D:Landroid/content/pm/ApplicationInfo;

    return-object p1
.end method

.method private T1(I)Landroid/content/pm/ResolveInfo;
    .locals 2

    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.VIEW_APP_FEATURES"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/miui/appmanager/fragment/ApplicationsDetailsFragment;->Q:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    iget-object v1, p0, Lcom/miui/appmanager/fragment/ApplicationsDetailsFragment;->G:Landroid/content/pm/PackageManager;

    invoke-virtual {v1, v0, p1}, Landroid/content/pm/PackageManager;->resolveActivity(Landroid/content/Intent;I)Landroid/content/pm/ResolveInfo;

    move-result-object p1

    return-object p1
.end method

.method private T2()V
    .locals 4

    iget-boolean v0, p0, Lcom/miui/appmanager/fragment/ApplicationsDetailsFragment;->k0:Z

    if-eqz v0, :cond_0

    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const-string v1, "android.intent.action.PACKAGE_ADDED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "package"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    new-instance v1, Lcom/miui/appmanager/fragment/ApplicationsDetailsFragment$p;

    invoke-direct {v1, p0}, Lcom/miui/appmanager/fragment/ApplicationsDetailsFragment$p;-><init>(Lcom/miui/appmanager/fragment/ApplicationsDetailsFragment;)V

    iput-object v1, p0, Lcom/miui/appmanager/fragment/ApplicationsDetailsFragment;->K0:Lcom/miui/appmanager/fragment/ApplicationsDetailsFragment$p;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    iget-object v2, p0, Lcom/miui/appmanager/fragment/ApplicationsDetailsFragment;->K0:Lcom/miui/appmanager/fragment/ApplicationsDetailsFragment$p;

    const/4 v3, 0x4

    invoke-static {v1, v2, v0, v3}, Lx4/v;->m(Landroid/content/Context;Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;I)Landroid/content/Intent;

    :cond_0
    return-void
.end method

.method static synthetic U0(Lcom/miui/appmanager/fragment/ApplicationsDetailsFragment;)Lmiuix/preference/TextPreference;
    .locals 0

    iget-object p0, p0, Lcom/miui/appmanager/fragment/ApplicationsDetailsFragment;->n:Lmiuix/preference/TextPreference;

    return-object p0
.end method

.method private U1()Z
    .locals 5

    iget-object v0, p0, Lcom/miui/appmanager/fragment/ApplicationsDetailsFragment;->H:Landroid/app/ActivityManager;

    invoke-virtual {v0}, Landroid/app/ActivityManager;->getRunningAppProcesses()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/ActivityManager$RunningAppProcessInfo;

    iget v3, v1, Landroid/app/ActivityManager$RunningAppProcessInfo;->uid:I

    iget-object v4, p0, Lcom/miui/appmanager/fragment/ApplicationsDetailsFragment;->D:Landroid/content/pm/ApplicationInfo;

    iget v4, v4, Landroid/content/pm/ApplicationInfo;->uid:I

    if-ne v3, v4, :cond_0

    iget-object v3, v1, Landroid/app/ActivityManager$RunningAppProcessInfo;->pkgList:[Ljava/lang/String;

    if-eqz v3, :cond_0

    :goto_0
    iget-object v3, v1, Landroid/app/ActivityManager$RunningAppProcessInfo;->pkgList:[Ljava/lang/String;

    array-length v4, v3

    if-ge v2, v4, :cond_0

    aget-object v3, v3, v2

    iget-object v4, p0, Lcom/miui/appmanager/fragment/ApplicationsDetailsFragment;->Q:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    const/4 v0, 0x1

    return v0

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    return v2
.end method

.method private U2(Landroid/content/Intent;)Landroid/content/Intent;
    .locals 2

    iget-object v0, p0, Lcom/miui/appmanager/fragment/ApplicationsDetailsFragment;->G:Landroid/content/pm/PackageManager;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Landroid/content/pm/PackageManager;->resolveActivity(Landroid/content/Intent;I)Landroid/content/pm/ResolveInfo;

    move-result-object v0

    if-eqz v0, :cond_0

    new-instance v1, Landroid/content/Intent;

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v1, p1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    iget-object p1, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v0, p1, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    iget-object p1, p1, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-virtual {v1, v0, p1}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object p1

    return-object p1

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method

.method static synthetic V0(Lcom/miui/appmanager/fragment/ApplicationsDetailsFragment;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/miui/appmanager/fragment/ApplicationsDetailsFragment;->Y:Z

    return p0
.end method

.method private V2(Landroid/content/Intent;)Landroid/content/Intent;
    .locals 2

    iget-object v0, p0, Lcom/miui/appmanager/fragment/ApplicationsDetailsFragment;->G:Landroid/content/pm/PackageManager;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Landroid/content/pm/PackageManager;->resolveActivity(Landroid/content/Intent;I)Landroid/content/pm/ResolveInfo;

    move-result-object v0

    if-eqz v0, :cond_0

    new-instance v1, Landroid/content/Intent;

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v1, p1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    iget-object p1, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v0, p1, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    iget-object p1, p1, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-virtual {v1, v0, p1}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return-object p1
.end method

.method static synthetic W0(Lcom/miui/appmanager/fragment/ApplicationsDetailsFragment;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/miui/appmanager/fragment/ApplicationsDetailsFragment;->Y:Z

    return p1
.end method

.method private W1()Z
    .locals 1

    invoke-direct {p0}, Lcom/miui/appmanager/fragment/ApplicationsDetailsFragment;->J1()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/miui/appmanager/fragment/ApplicationsDetailsFragment;->D2()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method static synthetic X0(Lcom/miui/appmanager/fragment/ApplicationsDetailsFragment;J)J
    .locals 0

    iput-wide p1, p0, Lcom/miui/appmanager/fragment/ApplicationsDetailsFragment;->P:J

    return-wide p1
.end method

.method private X1()Lcom/miui/powercenter/legacypowerrank/BatteryData;
    .locals 5

    iget-object v0, p0, Lcom/miui/appmanager/fragment/ApplicationsDetailsFragment;->G0:Ljava/util/List;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    :cond_0
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/miui/powercenter/legacypowerrank/BatteryData;

    invoke-virtual {v2}, Lcom/miui/powercenter/legacypowerrank/BatteryData;->getPackageName()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_1

    invoke-virtual {v2}, Lcom/miui/powercenter/legacypowerrank/BatteryData;->getPackageName()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/miui/appmanager/fragment/ApplicationsDetailsFragment;->Q:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    iget v3, v2, Lcom/miui/powercenter/legacypowerrank/BatteryData;->uid:I

    invoke-static {v3}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v3

    iget v4, p0, Lcom/miui/appmanager/fragment/ApplicationsDetailsFragment;->w0:I

    if-ne v3, v4, :cond_1

    return-object v2

    :cond_2
    return-object v1
.end method

.method static synthetic Y0(Lcom/miui/appmanager/fragment/ApplicationsDetailsFragment;Landroid/content/Context;)J
    .locals 0

    invoke-direct {p0, p1}, Lcom/miui/appmanager/fragment/ApplicationsDetailsFragment;->i2(Landroid/content/Context;)J

    move-result-wide p0

    return-wide p0
.end method

.method private Y1(I)I
    .locals 1

    const/16 v0, 0x8

    if-le p1, v0, :cond_0

    const p1, 0x7f0802fc

    return p1

    :cond_0
    const/4 v0, 0x7

    if-le p1, v0, :cond_1

    const p1, 0x7f0802f6

    return p1

    :cond_1
    const p1, 0x7f0802f7

    return p1
.end method

.method private Y2()V
    .locals 2

    iget-boolean v0, p0, Lcom/miui/appmanager/fragment/ApplicationsDetailsFragment;->r0:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    new-instance v0, Lcom/miui/appmanager/fragment/ApplicationsDetailsFragment$z;

    invoke-direct {v0, p0}, Lcom/miui/appmanager/fragment/ApplicationsDetailsFragment$z;-><init>(Lcom/miui/appmanager/fragment/ApplicationsDetailsFragment;)V

    iput-object v0, p0, Lcom/miui/appmanager/fragment/ApplicationsDetailsFragment;->R0:Lcom/miui/appmanager/fragment/ApplicationsDetailsFragment$z;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Landroid/os/AsyncTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    return-void
.end method

.method static synthetic Z0(Lcom/miui/appmanager/fragment/ApplicationsDetailsFragment;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/miui/appmanager/fragment/ApplicationsDetailsFragment;->f0:Z

    return p1
.end method

.method private Z1(Ljava/lang/String;Ljava/lang/String;Z)Z
    .locals 8

    const-class v0, Ljava/lang/String;

    const/4 v1, 0x0

    :try_start_0
    const-string v2, "android.provider.DeviceConfig"

    invoke-static {v2}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2

    const-string v3, "getBoolean"

    const/4 v4, 0x3

    new-array v5, v4, [Ljava/lang/Class;

    aput-object v0, v5, v1

    const/4 v6, 0x1

    aput-object v0, v5, v6

    sget-object v0, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    const/4 v7, 0x2

    aput-object v0, v5, v7

    new-array v0, v4, [Ljava/lang/Object;

    aput-object p1, v0, v1

    aput-object p2, v0, v6

    invoke-static {p3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    aput-object p1, v0, v7

    invoke-static {v2, v3, v5, v0}, Lbh/f;->h(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return p1

    :catch_0
    move-exception p1

    const-string p2, "ApplicationsDetailsActivity"

    const-string p3, "isHibernationEnabled failed"

    invoke-static {p2, p3, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return v1
.end method

.method private Z2(Z)V
    .locals 4

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    new-instance v1, Lmiuix/appcompat/app/AlertDialog$Builder;

    invoke-direct {v1, v0}, Lmiuix/appcompat/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v2, 0x7f1201a0

    invoke-virtual {v1, v2}, Lmiuix/appcompat/app/AlertDialog$Builder;->setTitle(I)Lmiuix/appcompat/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x7f12019e

    invoke-virtual {v1, v2}, Lmiuix/appcompat/app/AlertDialog$Builder;->setMessage(I)Lmiuix/appcompat/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x104000a

    new-instance v3, Lcom/miui/appmanager/fragment/ApplicationsDetailsFragment$c;

    invoke-direct {v3, p0, p1}, Lcom/miui/appmanager/fragment/ApplicationsDetailsFragment$c;-><init>(Lcom/miui/appmanager/fragment/ApplicationsDetailsFragment;Z)V

    invoke-virtual {v1, v2, v3}, Lmiuix/appcompat/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Lmiuix/appcompat/app/AlertDialog$Builder;

    move-result-object p1

    const/high16 v1, 0x1040000

    const/4 v2, 0x0

    invoke-virtual {p1, v1, v2}, Lmiuix/appcompat/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Lmiuix/appcompat/app/AlertDialog$Builder;

    move-result-object p1

    invoke-virtual {p1}, Lmiuix/appcompat/app/AlertDialog$Builder;->create()Lmiuix/appcompat/app/AlertDialog;

    move-result-object p1

    new-instance v1, Lcom/miui/appmanager/fragment/ApplicationsDetailsFragment$d;

    invoke-direct {v1, p0}, Lcom/miui/appmanager/fragment/ApplicationsDetailsFragment$d;-><init>(Lcom/miui/appmanager/fragment/ApplicationsDetailsFragment;)V

    invoke-virtual {p1, v1}, Landroid/app/Dialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    invoke-virtual {v0}, Landroid/app/Activity;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p1}, Lmiuix/appcompat/app/AlertDialog;->show()V

    :cond_1
    return-void
.end method

.method static synthetic a1(Lcom/miui/appmanager/fragment/ApplicationsDetailsFragment;Landroid/content/Context;)Z
    .locals 0

    invoke-direct {p0, p1}, Lcom/miui/appmanager/fragment/ApplicationsDetailsFragment;->A2(Landroid/content/Context;)Z

    move-result p0

    return p0
.end method

.method private a2(Ljava/lang/String;)Ljava/lang/String;
    .locals 6

    const/4 v0, 0x0

    :try_start_0
    iget-object v1, p0, Lcom/miui/appmanager/fragment/ApplicationsDetailsFragment;->G:Landroid/content/pm/PackageManager;

    invoke-static {v1, p1}, Lcom/miui/appmanager/AppManageUtils;->E(Landroid/content/pm/PackageManager;Ljava/lang/String;)Landroid/content/pm/InstallSourceInfo;

    move-result-object v1

    if-nez v1, :cond_0

    return-object v0

    :cond_0
    invoke-static {v1}, Lcom/miui/appmanager/AppManageUtils;->H(Landroid/content/pm/InstallSourceInfo;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1}, Lcom/miui/appmanager/AppManageUtils;->I(Landroid/content/pm/InstallSourceInfo;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v1}, Lcom/miui/appmanager/AppManageUtils;->D(Landroid/content/pm/InstallSourceInfo;)Ljava/lang/String;

    move-result-object v1

    if-eqz v3, :cond_1

    if-eqz v1, :cond_1

    iget-object v4, p0, Lcom/miui/appmanager/fragment/ApplicationsDetailsFragment;->G:Landroid/content/pm/PackageManager;

    const/4 v5, 0x0

    invoke-virtual {v4, v1, v5}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v1

    iget p1, v1, Landroid/content/pm/ApplicationInfo;->flags:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    and-int/lit8 p1, p1, 0x1

    if-eqz p1, :cond_1

    move-object v0, v3

    goto :goto_0

    :cond_1
    move-object v0, v2

    goto :goto_0

    :catch_0
    move-exception v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Exception while retrieving the package installer of "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v2, "ApplicationsDetailsActivity"

    invoke-static {v2, p1, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    return-object v0
.end method

.method private a3(Z)V
    .locals 4

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    iget v2, p0, Lcom/miui/appmanager/fragment/ApplicationsDetailsFragment;->w0:I

    iget-object v3, p0, Lcom/miui/appmanager/fragment/ApplicationsDetailsFragment;->Q:Ljava/lang/String;

    invoke-static {v1, v2, v3, p1}, Lcom/miui/appmanager/AppManageUtils;->t0(Landroid/content/Context;ILjava/lang/String;Z)V

    const/16 p1, 0x1f4

    const/4 v1, 0x0

    invoke-virtual {p0, p1, v1}, Lcom/miui/appmanager/fragment/ApplicationsDetailsFragment;->s3(IZ)V

    new-instance p1, Lmiuix/appcompat/app/AlertDialog$Builder;

    invoke-direct {p1, v0}, Lmiuix/appcompat/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v1, 0x7f1201a0

    invoke-virtual {p1, v1}, Lmiuix/appcompat/app/AlertDialog$Builder;->setTitle(I)Lmiuix/appcompat/app/AlertDialog$Builder;

    move-result-object p1

    const v1, 0x7f12019f

    invoke-virtual {p1, v1}, Lmiuix/appcompat/app/AlertDialog$Builder;->setMessage(I)Lmiuix/appcompat/app/AlertDialog$Builder;

    move-result-object p1

    const v1, 0x7f121905

    const/4 v2, 0x0

    invoke-virtual {p1, v1, v2}, Lmiuix/appcompat/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Lmiuix/appcompat/app/AlertDialog$Builder;

    move-result-object p1

    invoke-virtual {p1}, Lmiuix/appcompat/app/AlertDialog$Builder;->create()Lmiuix/appcompat/app/AlertDialog;

    move-result-object p1

    invoke-virtual {v0}, Landroid/app/Activity;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p1}, Lmiuix/appcompat/app/AlertDialog;->show()V

    :cond_1
    return-void
.end method

.method static synthetic b1(Lcom/miui/appmanager/fragment/ApplicationsDetailsFragment;)Landroid/app/AppOpsManager;
    .locals 0

    iget-object p0, p0, Lcom/miui/appmanager/fragment/ApplicationsDetailsFragment;->K:Landroid/app/AppOpsManager;

    return-object p0
.end method

.method private b2(Landroid/content/Context;)Ljava/lang/String;
    .locals 3

    sget-object v0, Lcom/miui/appmanager/fragment/ApplicationsDetailsFragment;->T0:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/miui/appmanager/fragment/ApplicationsDetailsFragment;->Q:Ljava/lang/String;

    const/4 v2, 0x1

    invoke-static {p1, v1, v2}, Lcom/miui/appmanager/AppManageUtils;->o(Landroid/content/Context;Ljava/lang/String;Z)I

    move-result p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v0, 0x3

    if-ne p1, v0, :cond_0

    const p1, 0x7f1201db

    :goto_0
    invoke-virtual {p0, p1}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_0
    const p1, 0x7f120192

    goto :goto_0

    :catchall_0
    move-exception p1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method private b3(ILandroid/content/DialogInterface$OnClickListener;)V
    .locals 1

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-static {v0, p1, p2}, Lcom/miui/appmanager/AppManageUtils;->C0(Landroid/content/Context;ILandroid/content/DialogInterface$OnClickListener;)V

    :cond_0
    return-void
.end method

.method public static synthetic c0(Lcom/miui/appmanager/fragment/ApplicationsDetailsFragment;Landroid/content/DialogInterface;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/miui/appmanager/fragment/ApplicationsDetailsFragment;->J2(Landroid/content/DialogInterface;I)V

    return-void
.end method

.method static synthetic c1(Lcom/miui/appmanager/fragment/ApplicationsDetailsFragment;Landroid/app/AppOpsManager;)Landroid/app/AppOpsManager;
    .locals 0

    iput-object p1, p0, Lcom/miui/appmanager/fragment/ApplicationsDetailsFragment;->K:Landroid/app/AppOpsManager;

    return-object p1
.end method

.method private c2(Landroid/content/Context;)V
    .locals 8

    iget-object v0, p0, Lcom/miui/appmanager/fragment/ApplicationsDetailsFragment;->D:Landroid/content/pm/ApplicationInfo;

    if-nez v0, :cond_0

    return-void

    :cond_0
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x19

    if-le v1, v2, :cond_2

    iget v1, v0, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-static {p1, v0, v1}, Lcom/miui/appmanager/AppManageUtils;->L(Landroid/content/Context;Landroid/content/pm/ApplicationInfo;I)Lcom/miui/appmanager/a;

    move-result-object p1

    iget-wide v0, p1, Lcom/miui/appmanager/a;->c:J

    iget-wide v2, p1, Lcom/miui/appmanager/a;->b:J

    add-long v4, v0, v2

    iget-wide v6, p0, Lcom/miui/appmanager/fragment/ApplicationsDetailsFragment;->z0:J

    cmp-long v6, v4, v6

    if-nez v6, :cond_1

    iget-wide v6, p0, Lcom/miui/appmanager/fragment/ApplicationsDetailsFragment;->A0:J

    cmp-long v6, v2, v6

    if-eqz v6, :cond_3

    :cond_1
    iput-wide v4, p0, Lcom/miui/appmanager/fragment/ApplicationsDetailsFragment;->z0:J

    iput-wide v2, p0, Lcom/miui/appmanager/fragment/ApplicationsDetailsFragment;->A0:J

    iget-wide v2, p1, Lcom/miui/appmanager/a;->a:J

    iput-wide v2, p0, Lcom/miui/appmanager/fragment/ApplicationsDetailsFragment;->B0:J

    iput-wide v0, p0, Lcom/miui/appmanager/fragment/ApplicationsDetailsFragment;->C0:J

    iget-object p1, p0, Lcom/miui/appmanager/fragment/ApplicationsDetailsFragment;->J:Lcom/miui/appmanager/fragment/ApplicationsDetailsFragment$u;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_0

    :cond_2
    iget-object p1, p0, Lcom/miui/appmanager/fragment/ApplicationsDetailsFragment;->G:Landroid/content/pm/PackageManager;

    iget-object v0, p0, Lcom/miui/appmanager/fragment/ApplicationsDetailsFragment;->Q:Ljava/lang/String;

    iget v1, p0, Lcom/miui/appmanager/fragment/ApplicationsDetailsFragment;->w0:I

    new-instance v2, Lcom/miui/appmanager/fragment/ApplicationsDetailsFragment$y;

    invoke-direct {v2, p0}, Lcom/miui/appmanager/fragment/ApplicationsDetailsFragment$y;-><init>(Lcom/miui/appmanager/fragment/ApplicationsDetailsFragment;)V

    invoke-static {p1, v0, v1, v2}, Lcom/miui/appmanager/AppManageUtils;->J(Landroid/content/pm/PackageManager;Ljava/lang/String;ILandroid/content/pm/IPackageStatsObserver;)V

    :cond_3
    :goto_0
    return-void
.end method

.method private c3()V
    .locals 4

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    new-instance v1, Lmiuix/appcompat/app/AlertDialog$Builder;

    invoke-direct {v1, v0}, Lmiuix/appcompat/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    new-instance v0, Lcom/miui/appmanager/fragment/ApplicationsDetailsFragment$q;

    invoke-direct {v0, p0}, Lcom/miui/appmanager/fragment/ApplicationsDetailsFragment$q;-><init>(Lcom/miui/appmanager/fragment/ApplicationsDetailsFragment;)V

    const v2, 0x7f120539

    invoke-virtual {v1, v2, v0}, Lmiuix/appcompat/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Lmiuix/appcompat/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f120499

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v3}, Lmiuix/appcompat/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Lmiuix/appcompat/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0, v2}, Lmiuix/appcompat/app/AlertDialog$Builder;->setTitle(I)Lmiuix/appcompat/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f120538

    invoke-virtual {v0, v1}, Lmiuix/appcompat/app/AlertDialog$Builder;->setMessage(I)Lmiuix/appcompat/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lmiuix/appcompat/app/AlertDialog$Builder;->create()Lmiuix/appcompat/app/AlertDialog;

    move-result-object v0

    invoke-virtual {v0}, Lmiuix/appcompat/app/AlertDialog;->show()V

    return-void
.end method

.method public static synthetic d0(Lcom/miui/appmanager/fragment/ApplicationsDetailsFragment;Landroid/app/Activity;ZLandroid/content/DialogInterface;I)V
    .locals 0

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/miui/appmanager/fragment/ApplicationsDetailsFragment;->K2(Landroid/app/Activity;ZLandroid/content/DialogInterface;I)V

    return-void
.end method

.method static synthetic d1(Lcom/miui/appmanager/fragment/ApplicationsDetailsFragment;Ljava/util/HashMap;)Ljava/util/HashMap;
    .locals 0

    iput-object p1, p0, Lcom/miui/appmanager/fragment/ApplicationsDetailsFragment;->E0:Ljava/util/HashMap;

    return-object p1
.end method

.method private d2()V
    .locals 3

    iget-object v0, p0, Lcom/miui/appmanager/fragment/ApplicationsDetailsFragment;->Q0:Lcom/miui/appmanager/fragment/ApplicationsDetailsFragment$t;

    if-eqz v0, :cond_0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/AsyncTask;->cancel(Z)Z

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/miui/appmanager/fragment/ApplicationsDetailsFragment;->Q0:Lcom/miui/appmanager/fragment/ApplicationsDetailsFragment$t;

    :cond_0
    new-instance v0, Lcom/miui/appmanager/fragment/ApplicationsDetailsFragment$t;

    invoke-direct {v0, p0}, Lcom/miui/appmanager/fragment/ApplicationsDetailsFragment$t;-><init>(Lcom/miui/appmanager/fragment/ApplicationsDetailsFragment;)V

    iput-object v0, p0, Lcom/miui/appmanager/fragment/ApplicationsDetailsFragment;->Q0:Lcom/miui/appmanager/fragment/ApplicationsDetailsFragment$t;

    sget-object v1, Landroid/os/AsyncTask;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Void;

    invoke-virtual {v0, v1, v2}, Landroid/os/AsyncTask;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    return-void
.end method

.method private d3(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)V
    .locals 2

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    new-instance v1, Lmiuix/appcompat/app/AlertDialog$Builder;

    invoke-direct {v1, v0}, Lmiuix/appcompat/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v1, p1}, Lmiuix/appcompat/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Lmiuix/appcompat/app/AlertDialog$Builder;

    move-result-object p1

    invoke-virtual {p1, p2}, Lmiuix/appcompat/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Lmiuix/appcompat/app/AlertDialog$Builder;

    move-result-object p1

    const p2, 0x7f12016d

    new-instance v0, Lcom/miui/appmanager/fragment/ApplicationsDetailsFragment$j;

    invoke-direct {v0, p0}, Lcom/miui/appmanager/fragment/ApplicationsDetailsFragment$j;-><init>(Lcom/miui/appmanager/fragment/ApplicationsDetailsFragment;)V

    invoke-virtual {p1, p2, v0}, Lmiuix/appcompat/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Lmiuix/appcompat/app/AlertDialog$Builder;

    move-result-object p1

    const/high16 p2, 0x1040000

    const/4 v0, 0x0

    invoke-virtual {p1, p2, v0}, Lmiuix/appcompat/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Lmiuix/appcompat/app/AlertDialog$Builder;

    move-result-object p1

    invoke-virtual {p1}, Lmiuix/appcompat/app/AlertDialog$Builder;->show()Lmiuix/appcompat/app/AlertDialog;

    return-void
.end method

.method public static synthetic e0(Lcom/miui/appmanager/fragment/ApplicationsDetailsFragment;Landroid/content/DialogInterface;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/miui/appmanager/fragment/ApplicationsDetailsFragment;->L2(Landroid/content/DialogInterface;)V

    return-void
.end method

.method static synthetic e1(Lcom/miui/appmanager/fragment/ApplicationsDetailsFragment;)I
    .locals 0

    iget p0, p0, Lcom/miui/appmanager/fragment/ApplicationsDetailsFragment;->x0:I

    return p0
.end method

.method private e2(Landroid/content/Context;Lcom/miui/powercenter/legacypowerrank/BatteryData;)Landroid/os/Bundle;
    .locals 11

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    invoke-static {p1, p2}, Lcom/miui/powercenter/legacypowerrank/a;->c(Landroid/content/Context;Lcom/miui/powercenter/legacypowerrank/BatteryData;)Ljava/lang/String;

    move-result-object p1

    const-string v1, "title"

    invoke-virtual {v0, v1, p1}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p2}, Lcom/miui/powercenter/legacypowerrank/BatteryData;->getValue()D

    move-result-wide v1

    iget-wide v3, p0, Lcom/miui/appmanager/fragment/ApplicationsDetailsFragment;->X:D

    div-double/2addr v1, v3

    const-wide/high16 v3, 0x4059000000000000L    # 100.0

    mul-double/2addr v1, v3

    double-to-float p1, v1

    const-string v1, "percent"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putFloat(Ljava/lang/String;F)V

    iget-object p1, p0, Lcom/miui/appmanager/fragment/ApplicationsDetailsFragment;->Q:Ljava/lang/String;

    const-string v1, "iconPackage"

    invoke-virtual {v0, v1, p1}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {p2}, Lcom/miui/powercenter/legacypowerrank/a;->d(Lcom/miui/powercenter/legacypowerrank/BatteryData;)I

    move-result p1

    const-string v1, "iconId"

    invoke-virtual {v0, v1, p1}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    invoke-virtual {p2}, Lcom/miui/powercenter/legacypowerrank/BatteryData;->getUid()I

    move-result p1

    if-ltz p1, :cond_0

    iget p1, p0, Lcom/miui/appmanager/fragment/ApplicationsDetailsFragment;->v0:I

    const-string v1, "uid"

    invoke-virtual {v0, v1, p1}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    :cond_0
    iget p1, p2, Lcom/miui/powercenter/legacypowerrank/BatteryData;->drainType:I

    const-string v1, "drainType"

    invoke-virtual {v0, v1, p1}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    const-string p1, "showMenus"

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Landroid/os/BaseBundle;->putBoolean(Ljava/lang/String;Z)V

    iget p1, p2, Lcom/miui/powercenter/legacypowerrank/BatteryData;->drainType:I

    const/4 v2, 0x2

    const/4 v3, 0x1

    if-eq p1, v3, :cond_4

    const/4 v4, 0x5

    const/4 v5, 0x4

    const/4 v6, 0x3

    const/4 v7, 0x6

    if-eq p1, v7, :cond_3

    if-eq p1, v6, :cond_2

    if-eq p1, v5, :cond_1

    new-array p1, v3, [I

    const v2, 0x7f121b16

    aput v2, p1, v1

    new-array v2, v3, [D

    iget-wide v3, p2, Lcom/miui/powercenter/legacypowerrank/BatteryData;->usageTime:J

    long-to-double v3, v3

    aput-wide v3, v2, v1

    goto/16 :goto_1

    :cond_1
    new-array p1, v7, [I

    fill-array-data p1, :array_0

    new-array v7, v7, [D

    iget-wide v8, p2, Lcom/miui/powercenter/legacypowerrank/BatteryData;->usageTime:J

    long-to-double v8, v8

    aput-wide v8, v7, v1

    iget-wide v8, p2, Lcom/miui/powercenter/legacypowerrank/BatteryData;->cpuTime:J

    long-to-double v8, v8

    aput-wide v8, v7, v3

    iget-wide v8, p2, Lcom/miui/powercenter/legacypowerrank/BatteryData;->cpuFgTime:J

    long-to-double v8, v8

    aput-wide v8, v7, v2

    iget-wide v1, p2, Lcom/miui/powercenter/legacypowerrank/BatteryData;->wakeLockTime:J

    long-to-double v1, v1

    aput-wide v1, v7, v6

    iget-wide v1, p2, Lcom/miui/powercenter/legacypowerrank/BatteryData;->mobileTxBytes:J

    long-to-double v1, v1

    aput-wide v1, v7, v5

    iget-wide v1, p2, Lcom/miui/powercenter/legacypowerrank/BatteryData;->mobileRxBytes:J

    long-to-double v1, v1

    aput-wide v1, v7, v4

    goto :goto_0

    :cond_2
    new-array p1, v7, [I

    fill-array-data p1, :array_1

    new-array v7, v7, [D

    iget-wide v8, p2, Lcom/miui/powercenter/legacypowerrank/BatteryData;->usageTime:J

    long-to-double v8, v8

    aput-wide v8, v7, v1

    iget-wide v8, p2, Lcom/miui/powercenter/legacypowerrank/BatteryData;->cpuTime:J

    long-to-double v8, v8

    aput-wide v8, v7, v3

    iget-wide v8, p2, Lcom/miui/powercenter/legacypowerrank/BatteryData;->cpuFgTime:J

    long-to-double v8, v8

    aput-wide v8, v7, v2

    iget-wide v1, p2, Lcom/miui/powercenter/legacypowerrank/BatteryData;->wakeLockTime:J

    long-to-double v1, v1

    aput-wide v1, v7, v6

    iget-wide v1, p2, Lcom/miui/powercenter/legacypowerrank/BatteryData;->mobileTxBytes:J

    long-to-double v1, v1

    aput-wide v1, v7, v5

    iget-wide v1, p2, Lcom/miui/powercenter/legacypowerrank/BatteryData;->mobileRxBytes:J

    long-to-double v1, v1

    aput-wide v1, v7, v4

    :goto_0
    move-object v2, v7

    goto :goto_1

    :cond_3
    const/16 p1, 0x9

    new-array v8, p1, [I

    fill-array-data v8, :array_2

    new-array p1, p1, [D

    iget-wide v9, p2, Lcom/miui/powercenter/legacypowerrank/BatteryData;->cpuTime:J

    long-to-double v9, v9

    aput-wide v9, p1, v1

    iget-wide v9, p2, Lcom/miui/powercenter/legacypowerrank/BatteryData;->cpuFgTime:J

    long-to-double v9, v9

    aput-wide v9, p1, v3

    iget-wide v9, p2, Lcom/miui/powercenter/legacypowerrank/BatteryData;->wakeLockTime:J

    long-to-double v9, v9

    aput-wide v9, p1, v2

    iget-wide v1, p2, Lcom/miui/powercenter/legacypowerrank/BatteryData;->gpsTime:J

    long-to-double v1, v1

    aput-wide v1, p1, v6

    iget-wide v1, p2, Lcom/miui/powercenter/legacypowerrank/BatteryData;->wifiRunningTime:J

    long-to-double v1, v1

    aput-wide v1, p1, v5

    iget-wide v1, p2, Lcom/miui/powercenter/legacypowerrank/BatteryData;->mobileTxBytes:J

    long-to-double v1, v1

    aput-wide v1, p1, v4

    iget-wide v1, p2, Lcom/miui/powercenter/legacypowerrank/BatteryData;->mobileRxBytes:J

    long-to-double v1, v1

    aput-wide v1, p1, v7

    const/4 p2, 0x7

    const-wide/16 v1, 0x0

    aput-wide v1, p1, p2

    const/16 p2, 0x8

    aput-wide v1, p1, p2

    move-object v2, p1

    move-object p1, v8

    goto :goto_1

    :cond_4
    new-array p1, v2, [I

    fill-array-data p1, :array_3

    new-array v2, v2, [D

    iget-wide v4, p2, Lcom/miui/powercenter/legacypowerrank/BatteryData;->usageTime:J

    long-to-double v4, v4

    aput-wide v4, v2, v1

    iget-wide v4, p2, Lcom/miui/powercenter/legacypowerrank/BatteryData;->noCoveragePercent:D

    aput-wide v4, v2, v3

    :goto_1
    const-string p2, "types"

    invoke-virtual {v0, p2, p1}, Landroid/os/BaseBundle;->putIntArray(Ljava/lang/String;[I)V

    const-string p1, "values"

    invoke-virtual {v0, p1, v2}, Landroid/os/BaseBundle;->putDoubleArray(Ljava/lang/String;[D)V

    return-object v0

    :array_0
    .array-data 4
        0x7f121b16
        0x7f121b10
        0x7f121b11
        0x7f121b18
        0x7f121b13
        0x7f121b12
    .end array-data

    :array_1
    .array-data 4
        0x7f121b19
        0x7f121b10
        0x7f121b11
        0x7f121b18
        0x7f121b13
        0x7f121b12
    .end array-data

    :array_2
    .array-data 4
        0x7f121b10
        0x7f121b11
        0x7f121b18
        0x7f121b14
        0x7f121b19
        0x7f121b13
        0x7f121b12
        0x7f121b0f
        0x7f121b17
    .end array-data

    :array_3
    .array-data 4
        0x7f121b16
        0x7f121b15
    .end array-data
.end method

.method private e3(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)V
    .locals 2

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    new-instance v1, Lmiuix/appcompat/app/AlertDialog$Builder;

    invoke-direct {v1, v0}, Lmiuix/appcompat/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v1, p1}, Lmiuix/appcompat/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Lmiuix/appcompat/app/AlertDialog$Builder;

    move-result-object p1

    invoke-virtual {p1, p2}, Lmiuix/appcompat/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Lmiuix/appcompat/app/AlertDialog$Builder;

    move-result-object p1

    const p2, 0x7f120206

    new-instance v0, Lcom/miui/appmanager/fragment/ApplicationsDetailsFragment$k;

    invoke-direct {v0, p0}, Lcom/miui/appmanager/fragment/ApplicationsDetailsFragment$k;-><init>(Lcom/miui/appmanager/fragment/ApplicationsDetailsFragment;)V

    invoke-virtual {p1, p2, v0}, Lmiuix/appcompat/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Lmiuix/appcompat/app/AlertDialog$Builder;

    move-result-object p1

    const/high16 p2, 0x1040000

    const/4 v0, 0x0

    invoke-virtual {p1, p2, v0}, Lmiuix/appcompat/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Lmiuix/appcompat/app/AlertDialog$Builder;

    move-result-object p1

    invoke-virtual {p1}, Lmiuix/appcompat/app/AlertDialog$Builder;->show()Lmiuix/appcompat/app/AlertDialog;

    return-void
.end method

.method static synthetic f0(Lcom/miui/appmanager/fragment/ApplicationsDetailsFragment;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    iput-object p1, p0, Lcom/miui/appmanager/fragment/ApplicationsDetailsFragment;->F:Ljava/lang/Object;

    return-object p1
.end method

.method static synthetic f1(Lcom/miui/appmanager/fragment/ApplicationsDetailsFragment;I)I
    .locals 0

    iput p1, p0, Lcom/miui/appmanager/fragment/ApplicationsDetailsFragment;->x0:I

    return p1
.end method

.method private f3()V
    .locals 3

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    new-instance v1, Lmiuix/appcompat/app/AlertDialog$Builder;

    invoke-direct {v1, v0}, Lmiuix/appcompat/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v0, 0x7f1201bb

    invoke-virtual {v1, v0}, Lmiuix/appcompat/app/AlertDialog$Builder;->setTitle(I)Lmiuix/appcompat/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f12016e

    invoke-virtual {v0, v1}, Lmiuix/appcompat/app/AlertDialog$Builder;->setMessage(I)Lmiuix/appcompat/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f12016d

    new-instance v2, Lcom/miui/appmanager/fragment/ApplicationsDetailsFragment$l;

    invoke-direct {v2, p0}, Lcom/miui/appmanager/fragment/ApplicationsDetailsFragment$l;-><init>(Lcom/miui/appmanager/fragment/ApplicationsDetailsFragment;)V

    invoke-virtual {v0, v1, v2}, Lmiuix/appcompat/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Lmiuix/appcompat/app/AlertDialog$Builder;

    move-result-object v0

    const/high16 v1, 0x1040000

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lmiuix/appcompat/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Lmiuix/appcompat/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lmiuix/appcompat/app/AlertDialog$Builder;->show()Lmiuix/appcompat/app/AlertDialog;

    return-void
.end method

.method static synthetic g0(Lcom/miui/appmanager/fragment/ApplicationsDetailsFragment;)I
    .locals 0

    iget p0, p0, Lcom/miui/appmanager/fragment/ApplicationsDetailsFragment;->w0:I

    return p0
.end method

.method static synthetic g1(Lcom/miui/appmanager/fragment/ApplicationsDetailsFragment;)Landroid/content/pm/PackageManager;
    .locals 0

    iget-object p0, p0, Lcom/miui/appmanager/fragment/ApplicationsDetailsFragment;->G:Landroid/content/pm/PackageManager;

    return-object p0
.end method

.method private g2(I)I
    .locals 1

    const/16 v0, 0x8

    if-le p1, v0, :cond_0

    const p1, 0x7f08030c

    return p1

    :cond_0
    const/4 v0, 0x7

    if-le p1, v0, :cond_1

    const p1, 0x7f080304

    return p1

    :cond_1
    const p1, 0x7f080305

    return p1
.end method

.method private g3(I)V
    .locals 4

    const v0, 0x7f121af0

    const v1, 0x7f121aef

    if-eqz p1, :cond_3

    const/4 v2, 0x1

    if-eq p1, v2, :cond_0

    goto :goto_1

    :cond_0
    iget-boolean v2, p0, Lcom/miui/appmanager/fragment/ApplicationsDetailsFragment;->s0:Z

    if-eqz v2, :cond_1

    const v0, 0x7f120205

    const v1, 0x7f120204

    goto :goto_0

    :cond_1
    iget-object v2, p0, Lcom/miui/appmanager/fragment/ApplicationsDetailsFragment;->C:Ljava/lang/Object;

    iget-object v3, p0, Lcom/miui/appmanager/fragment/ApplicationsDetailsFragment;->Q:Ljava/lang/String;

    invoke-static {v2, v3}, Ltg/a;->g(Ljava/lang/Object;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    const v1, 0x7f120203

    :cond_2
    :goto_0
    invoke-direct {p0}, Lcom/miui/appmanager/fragment/ApplicationsDetailsFragment;->N2()Z

    move-result v2

    if-nez v2, :cond_4

    const v0, 0x7f120202

    const v1, 0x7f120201

    goto :goto_1

    :cond_3
    const v0, 0x7f1201c6

    const v1, 0x7f1201c5

    :cond_4
    :goto_1
    iget-object v2, p0, Lcom/miui/appmanager/fragment/ApplicationsDetailsFragment;->Q:Ljava/lang/String;

    invoke-static {v2}, Lcom/miui/appmanager/AppManageUtils;->W(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_5

    const v0, 0x7f120191

    const v1, 0x7f120190

    :cond_5
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v2

    if-nez v2, :cond_6

    return-void

    :cond_6
    new-instance v3, Lmiuix/appcompat/app/AlertDialog$Builder;

    invoke-direct {v3, v2}, Lmiuix/appcompat/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v3, v0}, Lmiuix/appcompat/app/AlertDialog$Builder;->setTitle(I)Lmiuix/appcompat/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0, v1}, Lmiuix/appcompat/app/AlertDialog$Builder;->setMessage(I)Lmiuix/appcompat/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x104000a

    new-instance v2, Lcom/miui/appmanager/fragment/ApplicationsDetailsFragment$a0;

    invoke-direct {v2, p0, p1}, Lcom/miui/appmanager/fragment/ApplicationsDetailsFragment$a0;-><init>(Lcom/miui/appmanager/fragment/ApplicationsDetailsFragment;I)V

    invoke-virtual {v0, v1, v2}, Lmiuix/appcompat/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Lmiuix/appcompat/app/AlertDialog$Builder;

    move-result-object p1

    const/high16 v0, 0x1040000

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Lmiuix/appcompat/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Lmiuix/appcompat/app/AlertDialog$Builder;

    move-result-object p1

    invoke-virtual {p1}, Lmiuix/appcompat/app/AlertDialog$Builder;->show()Lmiuix/appcompat/app/AlertDialog;

    return-void
.end method

.method static synthetic h0(Lcom/miui/appmanager/fragment/ApplicationsDetailsFragment;)Landroid/view/MenuItem;
    .locals 0

    iget-object p0, p0, Lcom/miui/appmanager/fragment/ApplicationsDetailsFragment;->d:Landroid/view/MenuItem;

    return-object p0
.end method

.method static synthetic h1(Lcom/miui/appmanager/fragment/ApplicationsDetailsFragment;)I
    .locals 0

    iget p0, p0, Lcom/miui/appmanager/fragment/ApplicationsDetailsFragment;->v0:I

    return p0
.end method

.method private h2()Ljava/lang/String;
    .locals 7

    const/16 v0, 0x80

    invoke-direct {p0, v0}, Lcom/miui/appmanager/fragment/ApplicationsDetailsFragment;->T1(I)Landroid/content/pm/ResolveInfo;

    move-result-object v0

    const/4 v1, 0x0

    const-string v2, "ApplicationsDetailsActivity"

    if-nez v0, :cond_0

    const-string v0, "mResolveInfo is null."

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-object v1

    :cond_0
    iget-object v3, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v3, v3, Landroid/content/pm/ActivityInfo;->metaData:Landroid/os/Bundle;

    if-eqz v3, :cond_1

    :try_start_0
    iget-object v4, p0, Lcom/miui/appmanager/fragment/ApplicationsDetailsFragment;->G:Landroid/content/pm/PackageManager;

    new-instance v5, Landroid/content/ComponentName;

    iget-object v6, p0, Lcom/miui/appmanager/fragment/ApplicationsDetailsFragment;->Q:Ljava/lang/String;

    iget-object v0, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v0, v0, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-direct {v5, v6, v0}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v4, v5}, Landroid/content/pm/PackageManager;->getResourcesForActivity(Landroid/content/ComponentName;)Landroid/content/res/Resources;

    move-result-object v0

    const-string v4, "app_features_preference_summary"

    invoke-virtual {v3, v4}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    const-string v0, "Name of resource not found for summary string."

    goto :goto_0

    :catch_1
    const-string v0, "Resource not found for summary string."

    :goto_0
    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    return-object v1
.end method

.method private h3()V
    .locals 1

    iget-object v0, p0, Lcom/miui/appmanager/fragment/ApplicationsDetailsFragment;->O:Landroid/content/Intent;

    invoke-virtual {p0, v0}, Lcom/miui/common/base/ui/MiuiXPreferenceFragment;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method static synthetic i0(Lcom/miui/appmanager/fragment/ApplicationsDetailsFragment;)J
    .locals 2

    iget-wide v0, p0, Lcom/miui/appmanager/fragment/ApplicationsDetailsFragment;->A0:J

    return-wide v0
.end method

.method static synthetic i1(Lcom/miui/appmanager/fragment/ApplicationsDetailsFragment;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/miui/appmanager/fragment/ApplicationsDetailsFragment;->Z:Z

    return p1
.end method

.method private i2(Landroid/content/Context;)J
    .locals 2

    new-instance v0, Lcom/miui/networkassistant/traffic/statistic/StatisticAppTraffic;

    invoke-static {p1}, Lx4/a0;->b(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, p1, v1}, Lcom/miui/networkassistant/traffic/statistic/StatisticAppTraffic;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    iget p1, p0, Lcom/miui/appmanager/fragment/ApplicationsDetailsFragment;->v0:I

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Lcom/miui/networkassistant/traffic/statistic/StatisticAppTraffic;->buildMobileDataUsage(IZ)Landroid/util/SparseArray;

    move-result-object p1

    const/4 v0, 0x3

    invoke-virtual {p1, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Lcom/miui/networkassistant/model/AppDataUsage;

    aget-object p1, p1, v1

    invoke-virtual {p1}, Lcom/miui/networkassistant/model/AppDataUsage;->getTotal()J

    move-result-wide v0

    return-wide v0
.end method

.method private i3()V
    .locals 4

    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.VIEW_APP_FEATURES"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/4 v1, 0x0

    invoke-direct {p0, v1}, Lcom/miui/appmanager/fragment/ApplicationsDetailsFragment;->T1(I)Landroid/content/pm/ResolveInfo;

    move-result-object v1

    if-nez v1, :cond_0

    return-void

    :cond_0
    new-instance v2, Landroid/content/ComponentName;

    iget-object v3, p0, Lcom/miui/appmanager/fragment/ApplicationsDetailsFragment;->Q:Ljava/lang/String;

    iget-object v1, v1, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v1, v1, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-direct {v2, v3, v1}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v2}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    invoke-virtual {p0, v0}, Lcom/miui/common/base/ui/MiuiXPreferenceFragment;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method private initData()V
    .locals 3

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/miui/appmanager/fragment/ApplicationsDetailsFragment;->Q:Ljava/lang/String;

    iget v1, p0, Lcom/miui/appmanager/fragment/ApplicationsDetailsFragment;->v0:I

    invoke-static {v0, v1}, Lcom/miui/networkassistant/utils/PackageUtil;->getPackageNameFormat(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/appmanager/fragment/ApplicationsDetailsFragment;->S:Ljava/lang/String;

    iget v0, p0, Lcom/miui/appmanager/fragment/ApplicationsDetailsFragment;->v0:I

    invoke-static {v0}, Lx4/z1;->b(I)I

    move-result v0

    const/16 v1, 0x2710

    if-ge v0, v1, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    iput-boolean v0, p0, Lcom/miui/appmanager/fragment/ApplicationsDetailsFragment;->i0:Z

    iget-object v0, p0, Lcom/miui/appmanager/fragment/ApplicationsDetailsFragment;->J:Lcom/miui/appmanager/fragment/ApplicationsDetailsFragment$u;

    new-instance v1, Lcom/miui/appmanager/fragment/ApplicationsDetailsFragment$v;

    invoke-direct {v1, p0}, Lcom/miui/appmanager/fragment/ApplicationsDetailsFragment$v;-><init>(Lcom/miui/appmanager/fragment/ApplicationsDetailsFragment;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    iget-object v0, p0, Lcom/miui/appmanager/fragment/ApplicationsDetailsFragment;->B:Landroid/content/res/Resources;

    const v1, 0x7f030006

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/util/HashSet;

    array-length v2, v0

    invoke-direct {v1, v2}, Ljava/util/HashSet;-><init>(I)V

    iput-object v1, p0, Lcom/miui/appmanager/fragment/ApplicationsDetailsFragment;->F0:Ljava/util/HashSet;

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/util/AbstractCollection;->addAll(Ljava/util/Collection;)Z

    return-void
.end method

.method private initView()V
    .locals 5

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    new-instance v1, Landroid/os/UserHandle;

    iget v2, p0, Lcom/miui/appmanager/fragment/ApplicationsDetailsFragment;->w0:I

    invoke-direct {v1, v2}, Landroid/os/UserHandle;-><init>(I)V

    iput-object v1, p0, Lcom/miui/appmanager/fragment/ApplicationsDetailsFragment;->N:Landroid/os/UserHandle;

    iget-object v1, p0, Lcom/miui/appmanager/fragment/ApplicationsDetailsFragment;->D:Landroid/content/pm/ApplicationInfo;

    iget v1, v1, Landroid/content/pm/ApplicationInfo;->flags:I

    const/4 v2, 0x1

    and-int/2addr v1, v2

    if-eqz v1, :cond_1

    move v1, v2

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    :goto_0
    iput-boolean v1, p0, Lcom/miui/appmanager/fragment/ApplicationsDetailsFragment;->h0:Z

    const-string v1, "device_policy"

    invoke-virtual {v0, v1}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/admin/DevicePolicyManager;

    iput-object v1, p0, Lcom/miui/appmanager/fragment/ApplicationsDetailsFragment;->I:Landroid/app/admin/DevicePolicyManager;

    const-string v1, "activity"

    invoke-virtual {v0, v1}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/ActivityManager;

    iput-object v1, p0, Lcom/miui/appmanager/fragment/ApplicationsDetailsFragment;->H:Landroid/app/ActivityManager;

    iget-object v1, p0, Lcom/miui/appmanager/fragment/ApplicationsDetailsFragment;->G:Landroid/content/pm/PackageManager;

    iget-object v3, p0, Lcom/miui/appmanager/fragment/ApplicationsDetailsFragment;->Q:Ljava/lang/String;

    invoke-static {v1, v3}, Lcom/miui/appmanager/AppManageUtils;->d0(Landroid/content/pm/PackageManager;Ljava/lang/String;)Z

    move-result v1

    iput-boolean v1, p0, Lcom/miui/appmanager/fragment/ApplicationsDetailsFragment;->k0:Z

    iget-object v1, p0, Lcom/miui/appmanager/fragment/ApplicationsDetailsFragment;->D:Landroid/content/pm/ApplicationInfo;

    invoke-static {v1}, Lcom/miui/appmanager/AppManageUtils;->X(Landroid/content/pm/ApplicationInfo;)Z

    move-result v1

    iput-boolean v1, p0, Lcom/miui/appmanager/fragment/ApplicationsDetailsFragment;->t0:Z

    invoke-direct {p0}, Lcom/miui/appmanager/fragment/ApplicationsDetailsFragment;->H2()Z

    move-result v1

    iput-boolean v1, p0, Lcom/miui/appmanager/fragment/ApplicationsDetailsFragment;->u0:Z

    new-instance v1, Lcom/miui/appmanager/fragment/ApplicationsDetailsFragment$w;

    invoke-direct {v1, p0}, Lcom/miui/appmanager/fragment/ApplicationsDetailsFragment$w;-><init>(Lcom/miui/appmanager/fragment/ApplicationsDetailsFragment;)V

    iput-object v1, p0, Lcom/miui/appmanager/fragment/ApplicationsDetailsFragment;->N0:Lcom/miui/appmanager/fragment/ApplicationsDetailsFragment$w;

    iget-object v1, p0, Lcom/miui/appmanager/fragment/ApplicationsDetailsFragment;->D:Landroid/content/pm/ApplicationInfo;

    iget-object v3, p0, Lcom/miui/appmanager/fragment/ApplicationsDetailsFragment;->G:Landroid/content/pm/PackageManager;

    invoke-virtual {v1, v3}, Landroid/content/pm/PackageItemInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/miui/appmanager/AppManageUtils;->G0(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/miui/appmanager/fragment/ApplicationsDetailsFragment;->R:Ljava/lang/String;

    iget-object v1, p0, Lcom/miui/appmanager/fragment/ApplicationsDetailsFragment;->D:Landroid/content/pm/ApplicationInfo;

    iget v1, v1, Landroid/content/pm/ApplicationInfo;->uid:I

    iput v1, p0, Lcom/miui/appmanager/fragment/ApplicationsDetailsFragment;->v0:I

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    iput-object v1, p0, Lcom/miui/appmanager/fragment/ApplicationsDetailsFragment;->B:Landroid/content/res/Resources;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Landroid/appwidget/AppWidgetManager;->getInstance(Landroid/content/Context;)Landroid/appwidget/AppWidgetManager;

    move-result-object v1

    iput-object v1, p0, Lcom/miui/appmanager/fragment/ApplicationsDetailsFragment;->L:Landroid/appwidget/AppWidgetManager;

    const-string v1, "app_detail_title"

    invoke-virtual {p0, v1}, Landroidx/preference/PreferenceFragmentCompat;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v1

    check-cast v1, Lcom/miui/appmanager/widget/AppDetailTitlePreference;

    iput-object v1, p0, Lcom/miui/appmanager/fragment/ApplicationsDetailsFragment;->i:Lcom/miui/appmanager/widget/AppDetailTitlePreference;

    iget-object v3, p0, Lcom/miui/appmanager/fragment/ApplicationsDetailsFragment;->R:Ljava/lang/String;

    invoke-virtual {v1, v3}, Lcom/miui/appmanager/widget/AppDetailTitlePreference;->h(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/miui/appmanager/fragment/ApplicationsDetailsFragment;->i:Lcom/miui/appmanager/widget/AppDetailTitlePreference;

    iget-boolean v3, p0, Lcom/miui/appmanager/fragment/ApplicationsDetailsFragment;->k0:Z

    invoke-virtual {v1, v3}, Lcom/miui/appmanager/widget/AppDetailTitlePreference;->g(Z)V

    iget-object v1, p0, Lcom/miui/appmanager/fragment/ApplicationsDetailsFragment;->i:Lcom/miui/appmanager/widget/AppDetailTitlePreference;

    iget-object v3, p0, Lcom/miui/appmanager/fragment/ApplicationsDetailsFragment;->E:Landroid/content/pm/PackageInfo;

    iget-object v3, v3, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;

    invoke-virtual {v1, v3}, Lcom/miui/appmanager/widget/AppDetailTitlePreference;->i(Ljava/lang/String;)V

    const-string v1, "app_storage_pref"

    invoke-virtual {p0, v1}, Landroidx/preference/PreferenceFragmentCompat;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v1

    check-cast v1, Lmiuix/preference/TextPreference;

    iput-object v1, p0, Lcom/miui/appmanager/fragment/ApplicationsDetailsFragment;->j:Lmiuix/preference/TextPreference;

    iget-wide v3, p0, Lcom/miui/appmanager/fragment/ApplicationsDetailsFragment;->z0:J

    invoke-static {v0, v3, v4}, Lsm/a;->a(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Lmiuix/preference/TextPreference;->setText(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/miui/appmanager/fragment/ApplicationsDetailsFragment;->j:Lmiuix/preference/TextPreference;

    invoke-virtual {v1, p0}, Landroidx/preference/Preference;->setOnPreferenceClickListener(Landroidx/preference/Preference$d;)V

    const-string v1, "app_traffic_pref"

    invoke-virtual {p0, v1}, Landroidx/preference/PreferenceFragmentCompat;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v1

    check-cast v1, Lmiuix/preference/TextPreference;

    iput-object v1, p0, Lcom/miui/appmanager/fragment/ApplicationsDetailsFragment;->k:Lmiuix/preference/TextPreference;

    invoke-virtual {v1, p0}, Landroidx/preference/Preference;->setOnPreferenceClickListener(Landroidx/preference/Preference$d;)V

    const-string v1, "app_power_pref"

    invoke-virtual {p0, v1}, Landroidx/preference/PreferenceFragmentCompat;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v1

    check-cast v1, Lmiuix/preference/TextPreference;

    iput-object v1, p0, Lcom/miui/appmanager/fragment/ApplicationsDetailsFragment;->l:Lmiuix/preference/TextPreference;

    invoke-virtual {v1, p0}, Landroidx/preference/Preference;->setOnPreferenceClickListener(Landroidx/preference/Preference$d;)V

    const-string v1, "app_detail_perm_category"

    invoke-virtual {p0, v1}, Landroidx/preference/PreferenceFragmentCompat;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v1

    check-cast v1, Landroidx/preference/PreferenceCategory;

    iput-object v1, p0, Lcom/miui/appmanager/fragment/ApplicationsDetailsFragment;->m:Landroidx/preference/PreferenceCategory;

    const-string v1, "app_behavior_pref"

    invoke-virtual {p0, v1}, Landroidx/preference/PreferenceFragmentCompat;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v1

    check-cast v1, Lmiuix/preference/TextPreference;

    iput-object v1, p0, Lcom/miui/appmanager/fragment/ApplicationsDetailsFragment;->n:Lmiuix/preference/TextPreference;

    const-string v1, "app_autostart_pref"

    invoke-virtual {p0, v1}, Landroidx/preference/PreferenceFragmentCompat;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v1

    check-cast v1, Lmiuix/preference/CheckBoxPreference;

    iput-object v1, p0, Lcom/miui/appmanager/fragment/ApplicationsDetailsFragment;->o:Lmiuix/preference/CheckBoxPreference;

    iget-object v1, p0, Lcom/miui/appmanager/fragment/ApplicationsDetailsFragment;->E:Landroid/content/pm/PackageInfo;

    invoke-static {v0, v1, v2}, Lcom/miui/permcenter/l;->m(Landroid/content/Context;Landroid/content/pm/PackageInfo;Z)Z

    move-result v1

    if-nez v1, :cond_3

    sget-boolean v1, Lmiui/os/Build;->IS_INTERNATIONAL_BUILD:Z

    if-eqz v1, :cond_2

    goto :goto_1

    :cond_2
    iget-object v1, p0, Lcom/miui/appmanager/fragment/ApplicationsDetailsFragment;->o:Lmiuix/preference/CheckBoxPreference;

    invoke-virtual {v1, v2}, Landroidx/preference/Preference;->setVisible(Z)V

    goto :goto_2

    :cond_3
    :goto_1
    iget-object v1, p0, Lcom/miui/appmanager/fragment/ApplicationsDetailsFragment;->m:Landroidx/preference/PreferenceCategory;

    iget-object v3, p0, Lcom/miui/appmanager/fragment/ApplicationsDetailsFragment;->o:Lmiuix/preference/CheckBoxPreference;

    invoke-virtual {v1, v3}, Landroidx/preference/PreferenceGroup;->removePreference(Landroidx/preference/Preference;)Z

    :goto_2
    iget-object v1, p0, Lcom/miui/appmanager/fragment/ApplicationsDetailsFragment;->o:Lmiuix/preference/CheckBoxPreference;

    invoke-virtual {v1, p0}, Landroidx/preference/Preference;->setOnPreferenceChangeListener(Landroidx/preference/Preference$c;)V

    const-string v1, "app_notify_pref"

    invoke-virtual {p0, v1}, Landroidx/preference/PreferenceFragmentCompat;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v1

    check-cast v1, Lmiuix/preference/TextPreference;

    iput-object v1, p0, Lcom/miui/appmanager/fragment/ApplicationsDetailsFragment;->v:Lmiuix/preference/TextPreference;

    invoke-virtual {v1, p0}, Landroidx/preference/Preference;->setOnPreferenceClickListener(Landroidx/preference/Preference$d;)V

    const-string v1, "app_advanced_category"

    invoke-virtual {p0, v1}, Landroidx/preference/PreferenceFragmentCompat;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v1

    check-cast v1, Landroidx/preference/PreferenceCategory;

    iput-object v1, p0, Lcom/miui/appmanager/fragment/ApplicationsDetailsFragment;->w:Landroidx/preference/PreferenceCategory;

    const-string v1, "app_hybrid_perm_pref"

    invoke-virtual {p0, v1}, Landroidx/preference/PreferenceFragmentCompat;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v1

    check-cast v1, Lmiuix/preference/TextPreference;

    iput-object v1, p0, Lcom/miui/appmanager/fragment/ApplicationsDetailsFragment;->s:Lmiuix/preference/TextPreference;

    new-instance v1, Landroid/content/Intent;

    const-string v3, "com.miui.hybrid.action.PERMISSION_PREFERENCES"

    invoke-direct {v1, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/miui/appmanager/fragment/ApplicationsDetailsFragment;->Q:Ljava/lang/String;

    const-string v4, "com.miui.hybrid"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    invoke-static {v0, v1}, Lx4/f1;->F(Landroid/content/Context;Landroid/content/Intent;)Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/miui/appmanager/fragment/ApplicationsDetailsFragment;->s:Lmiuix/preference/TextPreference;

    invoke-virtual {v0, p0}, Landroidx/preference/Preference;->setOnPreferenceClickListener(Landroidx/preference/Preference$d;)V

    iget-object v0, p0, Lcom/miui/appmanager/fragment/ApplicationsDetailsFragment;->s:Lmiuix/preference/TextPreference;

    invoke-virtual {v0, v2}, Landroidx/preference/Preference;->setVisible(Z)V

    goto :goto_3

    :cond_4
    iget-object v0, p0, Lcom/miui/appmanager/fragment/ApplicationsDetailsFragment;->m:Landroidx/preference/PreferenceCategory;

    iget-object v1, p0, Lcom/miui/appmanager/fragment/ApplicationsDetailsFragment;->s:Lmiuix/preference/TextPreference;

    invoke-virtual {v0, v1}, Landroidx/preference/PreferenceGroup;->removePreference(Landroidx/preference/Preference;)Z

    :goto_3
    const-string v0, "app_global_perm_pref"

    invoke-virtual {p0, v0}, Landroidx/preference/PreferenceFragmentCompat;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v0

    check-cast v0, Lmiuix/preference/TextPreference;

    iput-object v0, p0, Lcom/miui/appmanager/fragment/ApplicationsDetailsFragment;->r:Lmiuix/preference/TextPreference;

    iget-object v0, p0, Lcom/miui/appmanager/fragment/ApplicationsDetailsFragment;->Q:Ljava/lang/String;

    invoke-static {v0}, Le3/c;->a(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-static {}, Lx4/t;->p()Z

    move-result v0

    if-nez v0, :cond_5

    iget-object v0, p0, Lcom/miui/appmanager/fragment/ApplicationsDetailsFragment;->r:Lmiuix/preference/TextPreference;

    const v1, 0x7f1201cd

    invoke-virtual {v0, v1}, Landroidx/preference/Preference;->setSummary(I)V

    :cond_5
    iget-object v0, p0, Lcom/miui/appmanager/fragment/ApplicationsDetailsFragment;->r:Lmiuix/preference/TextPreference;

    invoke-virtual {v0, p0}, Landroidx/preference/Preference;->setOnPreferenceClickListener(Landroidx/preference/Preference$d;)V

    iget-object v0, p0, Lcom/miui/appmanager/fragment/ApplicationsDetailsFragment;->r:Lmiuix/preference/TextPreference;

    invoke-virtual {v0, v2}, Landroidx/preference/Preference;->setVisible(Z)V

    goto :goto_4

    :cond_6
    iget-object v0, p0, Lcom/miui/appmanager/fragment/ApplicationsDetailsFragment;->m:Landroidx/preference/PreferenceCategory;

    iget-object v1, p0, Lcom/miui/appmanager/fragment/ApplicationsDetailsFragment;->r:Lmiuix/preference/TextPreference;

    invoke-virtual {v0, v1}, Landroidx/preference/PreferenceGroup;->removePreference(Landroidx/preference/Preference;)Z

    :goto_4
    const-string v0, "app_default_pref"

    invoke-virtual {p0, v0}, Landroidx/preference/PreferenceFragmentCompat;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v0

    check-cast v0, Lmiuix/preference/TextPreference;

    iput-object v0, p0, Lcom/miui/appmanager/fragment/ApplicationsDetailsFragment;->y:Lmiuix/preference/TextPreference;

    sget-object v0, Le3/c;->l:Ljava/util/List;

    iget-object v1, p0, Lcom/miui/appmanager/fragment/ApplicationsDetailsFragment;->Q:Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    iget-object v0, p0, Lcom/miui/appmanager/fragment/ApplicationsDetailsFragment;->w:Landroidx/preference/PreferenceCategory;

    iget-object v1, p0, Lcom/miui/appmanager/fragment/ApplicationsDetailsFragment;->y:Lmiuix/preference/TextPreference;

    invoke-virtual {v0, v1}, Landroidx/preference/PreferenceGroup;->removePreference(Landroidx/preference/Preference;)Z

    goto :goto_5

    :cond_7
    iget-object v0, p0, Lcom/miui/appmanager/fragment/ApplicationsDetailsFragment;->y:Lmiuix/preference/TextPreference;

    invoke-virtual {v0, v2}, Landroidx/preference/Preference;->setVisible(Z)V

    :goto_5
    iget-object v0, p0, Lcom/miui/appmanager/fragment/ApplicationsDetailsFragment;->y:Lmiuix/preference/TextPreference;

    invoke-virtual {v0, p0}, Landroidx/preference/Preference;->setOnPreferenceClickListener(Landroidx/preference/Preference$d;)V

    return-void
.end method

.method static synthetic j0(Lcom/miui/appmanager/fragment/ApplicationsDetailsFragment;J)J
    .locals 0

    iput-wide p1, p0, Lcom/miui/appmanager/fragment/ApplicationsDetailsFragment;->A0:J

    return-wide p1
.end method

.method static synthetic j1(Lcom/miui/appmanager/fragment/ApplicationsDetailsFragment;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    iput-object p1, p0, Lcom/miui/appmanager/fragment/ApplicationsDetailsFragment;->T:Ljava/lang/String;

    return-object p1
.end method

.method private j2(Landroid/content/Context;)Z
    .locals 1

    new-instance p1, Landroid/content/Intent;

    const-string v0, "android.intent.action.APPLICATION_PREFERENCES"

    invoke-direct {p1, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/miui/appmanager/fragment/ApplicationsDetailsFragment;->Q:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/miui/appmanager/fragment/ApplicationsDetailsFragment;->U2(Landroid/content/Intent;)Landroid/content/Intent;

    move-result-object p1

    iput-object p1, p0, Lcom/miui/appmanager/fragment/ApplicationsDetailsFragment;->O:Landroid/content/Intent;

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method private j3()V
    .locals 4

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    new-instance v1, Landroid/content/Intent;

    const-class v2, Lcom/miui/appmanager/AMAppStorageDetailsActivity;

    invoke-direct {v1, v0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    iget-object v0, p0, Lcom/miui/appmanager/fragment/ApplicationsDetailsFragment;->Q:Ljava/lang/String;

    const-string v2, "package_name"

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    iget v0, p0, Lcom/miui/appmanager/fragment/ApplicationsDetailsFragment;->v0:I

    const-string v2, "uid"

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    iget-wide v2, p0, Lcom/miui/appmanager/fragment/ApplicationsDetailsFragment;->z0:J

    const-string v0, "size"

    invoke-virtual {v1, v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    invoke-virtual {p0, v1}, Lcom/miui/common/base/ui/MiuiXPreferenceFragment;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method static synthetic k0(Lcom/miui/appmanager/fragment/ApplicationsDetailsFragment;)J
    .locals 2

    iget-wide v0, p0, Lcom/miui/appmanager/fragment/ApplicationsDetailsFragment;->B0:J

    return-wide v0
.end method

.method static synthetic k1(Lcom/miui/appmanager/fragment/ApplicationsDetailsFragment;Landroid/content/Context;)Ljava/lang/String;
    .locals 0

    invoke-direct {p0, p1}, Lcom/miui/appmanager/fragment/ApplicationsDetailsFragment;->b2(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private k2()Z
    .locals 3

    const-string v0, "app_hibernation"

    const-string v1, "app_hibernation_targets_pre_s_apps"

    const/4 v2, 0x0

    invoke-direct {p0, v0, v1, v2}, Lcom/miui/appmanager/fragment/ApplicationsDetailsFragment;->Z1(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method private k3()V
    .locals 6

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string v1, "android.intent.action.MANAGE_APP_PERMISSIONS"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    iget-object v1, p0, Lcom/miui/appmanager/fragment/ApplicationsDetailsFragment;->Q:Ljava/lang/String;

    const-string v2, "android.intent.extra.PACKAGE_NAME"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    iget-object v1, p0, Lcom/miui/appmanager/fragment/ApplicationsDetailsFragment;->D:Landroid/content/pm/ApplicationInfo;

    iget-object v1, v1, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    if-eqz v1, :cond_0

    const/4 v2, 0x0

    const-string v3, "miui.supportAlertNative"

    invoke-virtual {v1, v3, v2}, Landroid/os/BaseBundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    if-eqz v1, :cond_0

    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    iget-object v2, p0, Lcom/miui/appmanager/fragment/ApplicationsDetailsFragment;->Q:Ljava/lang/String;

    const-string v3, "packageName"

    invoke-virtual {v1, v3, v2}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "content://com.miui.permissions.alertnative"

    invoke-static {v3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    const/4 v4, 0x0

    const-string v5, "check_all_permission"

    invoke-virtual {v2, v3, v5, v4, v1}, Landroid/content/ContentResolver;->call(Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v1

    if-eqz v1, :cond_0

    const-string v2, "extra_data"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v1

    if-eqz v1, :cond_0

    const-string v1, "miui.intent.action.SYSTEM_PERMISSION_ALERT_EDITOR"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    :cond_0
    iget-object v1, p0, Lcom/miui/appmanager/fragment/ApplicationsDetailsFragment;->N:Landroid/os/UserHandle;

    if-eqz v1, :cond_1

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    iget-object v2, p0, Lcom/miui/appmanager/fragment/ApplicationsDetailsFragment;->N:Landroid/os/UserHandle;

    invoke-static {v1, v0, v2}, Lx4/v;->u(Landroid/content/Context;Landroid/content/Intent;Landroid/os/UserHandle;)V

    goto :goto_0

    :cond_1
    invoke-virtual {p0, v0}, Lcom/miui/common/base/ui/MiuiXPreferenceFragment;->startActivity(Landroid/content/Intent;)V

    :goto_0
    return-void
.end method

.method static synthetic l0(Lcom/miui/appmanager/fragment/ApplicationsDetailsFragment;J)J
    .locals 0

    iput-wide p1, p0, Lcom/miui/appmanager/fragment/ApplicationsDetailsFragment;->B0:J

    return-wide p1
.end method

.method static synthetic l1(Lcom/miui/appmanager/fragment/ApplicationsDetailsFragment;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/miui/appmanager/fragment/ApplicationsDetailsFragment;->j0:Z

    return p1
.end method

.method private l2()V
    .locals 2

    iget-object v0, p0, Lcom/miui/appmanager/fragment/ApplicationsDetailsFragment;->z:Lmiuix/preference/TextPreference;

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget-boolean v0, p0, Lcom/miui/appmanager/fragment/ApplicationsDetailsFragment;->j0:Z

    const-string v1, "app_additional_pref"

    if-eqz v0, :cond_1

    invoke-virtual {p0, v1}, Landroidx/preference/PreferenceFragmentCompat;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v0

    check-cast v0, Lmiuix/preference/TextPreference;

    iput-object v0, p0, Lcom/miui/appmanager/fragment/ApplicationsDetailsFragment;->z:Lmiuix/preference/TextPreference;

    invoke-virtual {v0, p0}, Landroidx/preference/Preference;->setOnPreferenceClickListener(Landroidx/preference/Preference$d;)V

    iget-object v0, p0, Lcom/miui/appmanager/fragment/ApplicationsDetailsFragment;->z:Lmiuix/preference/TextPreference;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroidx/preference/Preference;->setVisible(Z)V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/miui/appmanager/fragment/ApplicationsDetailsFragment;->w:Landroidx/preference/PreferenceCategory;

    invoke-virtual {v0, v1}, Landroidx/preference/PreferenceGroup;->removePreferenceRecursively(Ljava/lang/CharSequence;)Z

    :goto_0
    return-void
.end method

.method private l3()V
    .locals 5

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/miui/appmanager/fragment/ApplicationsDetailsFragment;->Q:Ljava/lang/String;

    iget-object v2, p0, Lcom/miui/appmanager/fragment/ApplicationsDetailsFragment;->D:Landroid/content/pm/ApplicationInfo;

    iget-object v2, v2, Landroid/content/pm/ApplicationInfo;->manageSpaceActivityName:Ljava/lang/String;

    iget v3, p0, Lcom/miui/appmanager/fragment/ApplicationsDetailsFragment;->w0:I

    const/16 v4, 0x2726

    invoke-static {v0, v1, v2, v3, v4}, Lcom/miui/appmanager/AppManageUtils;->E0(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;II)V

    :cond_0
    return-void
.end method

.method static synthetic m0(Lcom/miui/appmanager/fragment/ApplicationsDetailsFragment;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/miui/appmanager/fragment/ApplicationsDetailsFragment;->q0:Z

    return p0
.end method

.method static synthetic m1(Lcom/miui/appmanager/fragment/ApplicationsDetailsFragment;Landroid/content/Context;)Z
    .locals 0

    invoke-direct {p0, p1}, Lcom/miui/appmanager/fragment/ApplicationsDetailsFragment;->j2(Landroid/content/Context;)Z

    move-result p0

    return p0
.end method

.method private m2()V
    .locals 2

    iget-object v0, p0, Lcom/miui/appmanager/fragment/ApplicationsDetailsFragment;->u:Lmiuix/preference/TextPreference;

    if-nez v0, :cond_2

    const-string v0, "app_all_service_pref"

    invoke-virtual {p0, v0}, Landroidx/preference/PreferenceFragmentCompat;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v0

    check-cast v0, Lmiuix/preference/TextPreference;

    iput-object v0, p0, Lcom/miui/appmanager/fragment/ApplicationsDetailsFragment;->u:Lmiuix/preference/TextPreference;

    iget-boolean v1, p0, Lcom/miui/appmanager/fragment/ApplicationsDetailsFragment;->l0:Z

    if-eqz v1, :cond_1

    iget-object v0, p0, Lcom/miui/appmanager/fragment/ApplicationsDetailsFragment;->U:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/miui/appmanager/fragment/ApplicationsDetailsFragment;->u:Lmiuix/preference/TextPreference;

    iget-object v1, p0, Lcom/miui/appmanager/fragment/ApplicationsDetailsFragment;->U:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroidx/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    :cond_0
    iget-object v0, p0, Lcom/miui/appmanager/fragment/ApplicationsDetailsFragment;->u:Lmiuix/preference/TextPreference;

    invoke-virtual {v0, p0}, Landroidx/preference/Preference;->setOnPreferenceClickListener(Landroidx/preference/Preference$d;)V

    iget-object v0, p0, Lcom/miui/appmanager/fragment/ApplicationsDetailsFragment;->u:Lmiuix/preference/TextPreference;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroidx/preference/Preference;->setVisible(Z)V

    goto :goto_0

    :cond_1
    iget-object v1, p0, Lcom/miui/appmanager/fragment/ApplicationsDetailsFragment;->m:Landroidx/preference/PreferenceCategory;

    invoke-virtual {v1, v0}, Landroidx/preference/PreferenceGroup;->removePreference(Landroidx/preference/Preference;)Z

    :cond_2
    :goto_0
    return-void
.end method

.method private m3()V
    .locals 4

    new-instance v0, Landroid/content/Intent;

    const-string v1, "miui.intent.action.NETWORKASSISTANT_APP_DETAIL"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    iget-object v2, p0, Lcom/miui/appmanager/fragment/ApplicationsDetailsFragment;->S:Ljava/lang/String;

    const-string v3, "package_name"

    invoke-virtual {v1, v3, v2}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "title_type"

    const/4 v3, 0x3

    invoke-virtual {v1, v2, v3}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    const-string v2, "sort_type"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    invoke-virtual {v0, v1}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    const-string v1, "from_appmanager"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    invoke-static {}, Lcom/miui/networkassistant/dual/Sim;->getCurrentActiveSlotNum()I

    move-result v1

    const-string v2, "sim_slot_num_tag"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    invoke-virtual {p0, v0}, Lcom/miui/common/base/ui/MiuiXPreferenceFragment;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method static synthetic n0(Lcom/miui/appmanager/fragment/ApplicationsDetailsFragment;Landroid/os/Message;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/miui/appmanager/fragment/ApplicationsDetailsFragment;->S2(Landroid/os/Message;)V

    return-void
.end method

.method static synthetic n1(Lcom/miui/appmanager/fragment/ApplicationsDetailsFragment;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/miui/appmanager/fragment/ApplicationsDetailsFragment;->g0:Z

    return p1
.end method

.method private n2()V
    .locals 2

    iget-object v0, p0, Lcom/miui/appmanager/fragment/ApplicationsDetailsFragment;->p:Lmiuix/preference/CheckBoxPreference;

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const-string v0, "app_hiberanations_pref"

    invoke-virtual {p0, v0}, Landroidx/preference/PreferenceFragmentCompat;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v0

    check-cast v0, Lmiuix/preference/CheckBoxPreference;

    iput-object v0, p0, Lcom/miui/appmanager/fragment/ApplicationsDetailsFragment;->p:Lmiuix/preference/CheckBoxPreference;

    iget-boolean v1, p0, Lcom/miui/appmanager/fragment/ApplicationsDetailsFragment;->m0:Z

    if-eqz v1, :cond_1

    invoke-virtual {v0, p0}, Landroidx/preference/Preference;->setOnPreferenceChangeListener(Landroidx/preference/Preference$c;)V

    iget-object v0, p0, Lcom/miui/appmanager/fragment/ApplicationsDetailsFragment;->p:Lmiuix/preference/CheckBoxPreference;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroidx/preference/Preference;->setVisible(Z)V

    goto :goto_0

    :cond_1
    iget-object v1, p0, Lcom/miui/appmanager/fragment/ApplicationsDetailsFragment;->m:Landroidx/preference/PreferenceCategory;

    invoke-virtual {v1, v0}, Landroidx/preference/PreferenceGroup;->removePreference(Landroidx/preference/Preference;)Z

    :goto_0
    return-void
.end method

.method private n3()V
    .locals 7

    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.MAIN"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, "com.android.settings"

    const-string v2, "com.android.settings.Settings$NotificationFilterActivity"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    iget-object v1, p0, Lcom/miui/appmanager/fragment/ApplicationsDetailsFragment;->R:Ljava/lang/String;

    const-string v2, "appName"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    iget-object v1, p0, Lcom/miui/appmanager/fragment/ApplicationsDetailsFragment;->Q:Ljava/lang/String;

    const-string v3, "packageName"

    invoke-virtual {v0, v3, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    iget v1, p0, Lcom/miui/appmanager/fragment/ApplicationsDetailsFragment;->w0:I

    const-string v4, "userId"

    invoke-virtual {v0, v4, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    iget-object v1, p0, Lcom/miui/appmanager/fragment/ApplicationsDetailsFragment;->R:Ljava/lang/String;

    const-string v5, ":miui:starting_window_label"

    invoke-virtual {v0, v5, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    iget-object v6, p0, Lcom/miui/appmanager/fragment/ApplicationsDetailsFragment;->R:Ljava/lang/String;

    invoke-virtual {v1, v2, v6}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v2, p0, Lcom/miui/appmanager/fragment/ApplicationsDetailsFragment;->Q:Ljava/lang/String;

    invoke-virtual {v1, v3, v2}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    iget v2, p0, Lcom/miui/appmanager/fragment/ApplicationsDetailsFragment;->w0:I

    invoke-virtual {v1, v4, v2}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    iget-object v2, p0, Lcom/miui/appmanager/fragment/ApplicationsDetailsFragment;->R:Ljava/lang/String;

    invoke-virtual {v1, v5, v2}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, ":settings:show_fragment_args"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Bundle;)Landroid/content/Intent;

    iget v1, p0, Lcom/miui/appmanager/fragment/ApplicationsDetailsFragment;->w0:I

    if-eqz v1, :cond_1

    const/16 v2, 0x3e7

    if-ne v1, v2, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    iget-object v2, p0, Lcom/miui/appmanager/fragment/ApplicationsDetailsFragment;->N:Landroid/os/UserHandle;

    invoke-static {v1, v0, v2}, Lx4/v;->u(Landroid/content/Context;Landroid/content/Intent;Landroid/os/UserHandle;)V

    goto :goto_1

    :cond_1
    :goto_0
    invoke-virtual {p0, v0}, Lcom/miui/common/base/ui/MiuiXPreferenceFragment;->startActivity(Landroid/content/Intent;)V

    :goto_1
    return-void
.end method

.method static synthetic o0(Lcom/miui/appmanager/fragment/ApplicationsDetailsFragment;)Ljava/io/File;
    .locals 0

    iget-object p0, p0, Lcom/miui/appmanager/fragment/ApplicationsDetailsFragment;->D0:Ljava/io/File;

    return-object p0
.end method

.method static synthetic o1(Lcom/miui/appmanager/fragment/ApplicationsDetailsFragment;Lh3/n;)Lh3/n;
    .locals 0

    iput-object p1, p0, Lcom/miui/appmanager/fragment/ApplicationsDetailsFragment;->I0:Lh3/n;

    return-object p1
.end method

.method private o2()V
    .locals 5

    iget-object v0, p0, Lcom/miui/appmanager/fragment/ApplicationsDetailsFragment;->t:Lmiuix/preference/TextPreference;

    if-eqz v0, :cond_0

    return-void

    :cond_0
    sget-object v0, Le3/c;->j:Ljava/util/List;

    iget-object v1, p0, Lcom/miui/appmanager/fragment/ApplicationsDetailsFragment;->Q:Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    return-void

    :cond_1
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    if-nez v0, :cond_2

    return-void

    :cond_2
    iget-object v1, p0, Lcom/miui/appmanager/fragment/ApplicationsDetailsFragment;->I:Landroid/app/admin/DevicePolicyManager;

    iget-object v2, p0, Lcom/miui/appmanager/fragment/ApplicationsDetailsFragment;->Q:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/app/admin/DevicePolicyManager;->isDeviceOwnerApp(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "other permissions setting is hidden for device owner: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/miui/appmanager/fragment/ApplicationsDetailsFragment;->Q:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ApplicationsDetailsActivity"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_3
    const-string v1, "app_perm_pref"

    invoke-virtual {p0, v1}, Landroidx/preference/PreferenceFragmentCompat;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v1

    check-cast v1, Lmiuix/preference/TextPreference;

    iput-object v1, p0, Lcom/miui/appmanager/fragment/ApplicationsDetailsFragment;->t:Lmiuix/preference/TextPreference;

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iget-boolean v1, p0, Lcom/miui/appmanager/fragment/ApplicationsDetailsFragment;->h0:Z

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-nez v1, :cond_4

    iget v1, p0, Lcom/miui/appmanager/fragment/ApplicationsDetailsFragment;->v0:I

    invoke-static {v1}, Lx4/z1;->b(I)I

    move-result v1

    const/16 v4, 0x2710

    if-ge v1, v4, :cond_5

    :cond_4
    iget-object v1, p0, Lcom/miui/appmanager/fragment/ApplicationsDetailsFragment;->E:Landroid/content/pm/PackageInfo;

    invoke-static {v0, v1}, Lcom/miui/permission/RequiredPermissionsUtil;->isAdaptedRequiredPermissionsIncludeShared(Landroid/content/Context;Landroid/content/pm/PackageInfo;)Z

    move-result v1

    if-nez v1, :cond_7

    :cond_5
    iget-object v1, p0, Lcom/miui/appmanager/fragment/ApplicationsDetailsFragment;->E:Landroid/content/pm/PackageInfo;

    invoke-static {v0, v1}, Lcom/miui/permission/RequiredPermissionsUtil;->isAdaptedRequiredPermissionsOnData(Landroid/content/Context;Landroid/content/pm/PackageInfo;)Z

    move-result v1

    if-eqz v1, :cond_6

    goto :goto_0

    :cond_6
    move v1, v2

    goto :goto_1

    :cond_7
    :goto_0
    move v1, v3

    :goto_1
    iget-object v4, p0, Lcom/miui/appmanager/fragment/ApplicationsDetailsFragment;->Q:Ljava/lang/String;

    invoke-static {v4, v0}, Lxc/z;->d(Ljava/lang/String;Landroid/content/Context;)Z

    move-result v0

    if-nez v1, :cond_9

    iget-boolean v1, p0, Lcom/miui/appmanager/fragment/ApplicationsDetailsFragment;->h0:Z

    if-nez v1, :cond_8

    iget-boolean v1, p0, Lcom/miui/appmanager/fragment/ApplicationsDetailsFragment;->i0:Z

    if-nez v1, :cond_8

    iget-object v1, p0, Lcom/miui/appmanager/fragment/ApplicationsDetailsFragment;->E0:Ljava/util/HashMap;

    if-eqz v1, :cond_8

    invoke-direct {p0}, Lcom/miui/appmanager/fragment/ApplicationsDetailsFragment;->C2()Z

    move-result v1

    if-eqz v1, :cond_9

    :cond_8
    if-eqz v0, :cond_a

    :cond_9
    move v2, v3

    :cond_a
    if-nez v2, :cond_b

    iget-object v0, p0, Lcom/miui/appmanager/fragment/ApplicationsDetailsFragment;->m:Landroidx/preference/PreferenceCategory;

    iget-object v1, p0, Lcom/miui/appmanager/fragment/ApplicationsDetailsFragment;->t:Lmiuix/preference/TextPreference;

    invoke-virtual {v0, v1}, Landroidx/preference/PreferenceGroup;->removePreference(Landroidx/preference/Preference;)Z

    return-void

    :cond_b
    iget-object v1, p0, Lcom/miui/appmanager/fragment/ApplicationsDetailsFragment;->t:Lmiuix/preference/TextPreference;

    invoke-virtual {v1, v3}, Landroidx/preference/Preference;->setVisible(Z)V

    if-eqz v0, :cond_c

    iget-object v0, p0, Lcom/miui/appmanager/fragment/ApplicationsDetailsFragment;->t:Lmiuix/preference/TextPreference;

    const v1, 0x7f120090

    :goto_2
    invoke-virtual {v0, v1}, Landroidx/preference/Preference;->setTitle(I)V

    goto :goto_3

    :cond_c
    iget-object v0, p0, Lcom/miui/appmanager/fragment/ApplicationsDetailsFragment;->t:Lmiuix/preference/TextPreference;

    sget-boolean v1, Lmiui/os/Build;->IS_INTERNATIONAL_BUILD:Z

    if-eqz v1, :cond_d

    const v1, 0x7f1201cc

    goto :goto_2

    :cond_d
    const v1, 0x7f1201e0

    goto :goto_2

    :goto_3
    iget-object v0, p0, Lcom/miui/appmanager/fragment/ApplicationsDetailsFragment;->t:Lmiuix/preference/TextPreference;

    invoke-virtual {v0, p0}, Landroidx/preference/Preference;->setOnPreferenceClickListener(Landroidx/preference/Preference$d;)V

    return-void
.end method

.method private o3()V
    .locals 5

    sget-boolean v0, Lmiui/os/Build;->IS_INTERNATIONAL_BUILD:Z

    const/16 v1, 0x3e7

    const-string v2, "extra_pkgname"

    if-eqz v0, :cond_0

    new-instance v0, Landroid/content/Intent;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v3

    const-class v4, Lcom/miui/permcenter/settings/OtherPermissionsActivity;

    invoke-direct {v0, v3, v4}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    iget-object v3, p0, Lcom/miui/appmanager/fragment/ApplicationsDetailsFragment;->Q:Ljava/lang/String;

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    iget v2, p0, Lcom/miui/appmanager/fragment/ApplicationsDetailsFragment;->w0:I

    if-eqz v2, :cond_2

    if-ne v2, v1, :cond_1

    goto :goto_0

    :cond_0
    new-instance v0, Landroid/content/Intent;

    const-string v3, "miui.intent.action.APP_PERM_EDITOR_PRIVATE"

    invoke-direct {v0, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/miui/appmanager/fragment/ApplicationsDetailsFragment;->Q:Ljava/lang/String;

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    iget v2, p0, Lcom/miui/appmanager/fragment/ApplicationsDetailsFragment;->w0:I

    const-string v3, "userId"

    invoke-virtual {v0, v3, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    const-string v3, "start_pkg"

    invoke-virtual {v0, v3, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    iget v2, p0, Lcom/miui/appmanager/fragment/ApplicationsDetailsFragment;->w0:I

    if-eqz v2, :cond_2

    if-ne v2, v1, :cond_1

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    iget-object v2, p0, Lcom/miui/appmanager/fragment/ApplicationsDetailsFragment;->N:Landroid/os/UserHandle;

    invoke-static {v1, v0, v2}, Lx4/v;->u(Landroid/content/Context;Landroid/content/Intent;Landroid/os/UserHandle;)V

    goto :goto_1

    :cond_2
    :goto_0
    invoke-virtual {p0, v0}, Lcom/miui/common/base/ui/MiuiXPreferenceFragment;->startActivity(Landroid/content/Intent;)V

    :goto_1
    return-void
.end method

.method static synthetic p0(Lcom/miui/appmanager/fragment/ApplicationsDetailsFragment;Ljava/io/File;)Ljava/io/File;
    .locals 0

    iput-object p1, p0, Lcom/miui/appmanager/fragment/ApplicationsDetailsFragment;->D0:Ljava/io/File;

    return-object p1
.end method

.method static synthetic p1(Lcom/miui/appmanager/fragment/ApplicationsDetailsFragment;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/miui/appmanager/fragment/ApplicationsDetailsFragment;->l0:Z

    return p0
.end method

.method private p2()V
    .locals 2

    iget-object v0, p0, Lcom/miui/appmanager/fragment/ApplicationsDetailsFragment;->A:Lmiuix/preference/CheckBoxPreference;

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget-boolean v0, p0, Lcom/miui/appmanager/fragment/ApplicationsDetailsFragment;->Z:Z

    const-string v1, "app_restricted_setting_pref"

    if-eqz v0, :cond_2

    invoke-virtual {p0, v1}, Landroidx/preference/PreferenceFragmentCompat;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v0

    check-cast v0, Lmiuix/preference/CheckBoxPreference;

    iput-object v0, p0, Lcom/miui/appmanager/fragment/ApplicationsDetailsFragment;->A:Lmiuix/preference/CheckBoxPreference;

    if-nez v0, :cond_1

    return-void

    :cond_1
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroidx/preference/TwoStatePreference;->setChecked(Z)V

    iget-object v0, p0, Lcom/miui/appmanager/fragment/ApplicationsDetailsFragment;->A:Lmiuix/preference/CheckBoxPreference;

    invoke-virtual {v0, p0}, Landroidx/preference/Preference;->setOnPreferenceChangeListener(Landroidx/preference/Preference$c;)V

    iget-object v0, p0, Lcom/miui/appmanager/fragment/ApplicationsDetailsFragment;->A:Lmiuix/preference/CheckBoxPreference;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroidx/preference/Preference;->setVisible(Z)V

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/miui/appmanager/fragment/ApplicationsDetailsFragment;->w:Landroidx/preference/PreferenceCategory;

    invoke-virtual {v0, v1}, Landroidx/preference/PreferenceGroup;->removePreferenceRecursively(Ljava/lang/CharSequence;)Z

    :goto_0
    return-void
.end method

.method private p3()V
    .locals 3

    new-instance v0, Landroid/content/Intent;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    const-class v2, Lcom/miui/powercenter/legacypowerrank/PowerDetailActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-direct {p0}, Lcom/miui/appmanager/fragment/ApplicationsDetailsFragment;->X1()Lcom/miui/powercenter/legacypowerrank/BatteryData;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v2

    invoke-direct {p0, v2, v1}, Lcom/miui/appmanager/fragment/ApplicationsDetailsFragment;->e2(Landroid/content/Context;Lcom/miui/powercenter/legacypowerrank/BatteryData;)Landroid/os/Bundle;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lcom/miui/appmanager/fragment/ApplicationsDetailsFragment;->Q:Ljava/lang/String;

    const-string v2, "iconPackage"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    iget v1, p0, Lcom/miui/appmanager/fragment/ApplicationsDetailsFragment;->v0:I

    const-string v2, "uid"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const/4 v1, 0x0

    const-string v2, "showMenus"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    :goto_0
    iget v1, p0, Lcom/miui/appmanager/fragment/ApplicationsDetailsFragment;->w0:I

    const-string v2, "UserId"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    invoke-virtual {p0, v0}, Lcom/miui/common/base/ui/MiuiXPreferenceFragment;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method static synthetic q0(Lcom/miui/appmanager/fragment/ApplicationsDetailsFragment;)Landroid/view/MenuItem;
    .locals 0

    iget-object p0, p0, Lcom/miui/appmanager/fragment/ApplicationsDetailsFragment;->h:Landroid/view/MenuItem;

    return-object p0
.end method

.method static synthetic q1(Lcom/miui/appmanager/fragment/ApplicationsDetailsFragment;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/miui/appmanager/fragment/ApplicationsDetailsFragment;->l0:Z

    return p1
.end method

.method private q2()V
    .locals 2

    iget-object v0, p0, Lcom/miui/appmanager/fragment/ApplicationsDetailsFragment;->x:Lmiuix/preference/DropDownPreference;

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const-string v0, "app_size_compat_pref"

    invoke-virtual {p0, v0}, Landroidx/preference/PreferenceFragmentCompat;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v0

    check-cast v0, Lmiuix/preference/DropDownPreference;

    iput-object v0, p0, Lcom/miui/appmanager/fragment/ApplicationsDetailsFragment;->x:Lmiuix/preference/DropDownPreference;

    invoke-direct {p0}, Lcom/miui/appmanager/fragment/ApplicationsDetailsFragment;->G2()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_1

    invoke-direct {p0}, Lcom/miui/appmanager/fragment/ApplicationsDetailsFragment;->v2()V

    iget-object v0, p0, Lcom/miui/appmanager/fragment/ApplicationsDetailsFragment;->x:Lmiuix/preference/DropDownPreference;

    invoke-virtual {v0, v1}, Landroidx/preference/Preference;->setVisible(Z)V

    iget-object v0, p0, Lcom/miui/appmanager/fragment/ApplicationsDetailsFragment;->x:Lmiuix/preference/DropDownPreference;

    invoke-virtual {v0, p0}, Landroidx/preference/Preference;->setOnPreferenceChangeListener(Landroidx/preference/Preference$c;)V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/miui/appmanager/fragment/ApplicationsDetailsFragment;->I0:Lh3/n;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lh3/n;->d()I

    move-result v0

    if-eqz v0, :cond_2

    invoke-direct {p0}, Lcom/miui/appmanager/fragment/ApplicationsDetailsFragment;->w2()V

    iget-object v0, p0, Lcom/miui/appmanager/fragment/ApplicationsDetailsFragment;->x:Lmiuix/preference/DropDownPreference;

    invoke-virtual {v0, p0}, Landroidx/preference/Preference;->setOnPreferenceChangeListener(Landroidx/preference/Preference$c;)V

    iget-object v0, p0, Lcom/miui/appmanager/fragment/ApplicationsDetailsFragment;->x:Lmiuix/preference/DropDownPreference;

    invoke-virtual {v0, v1}, Landroidx/preference/Preference;->setVisible(Z)V

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/miui/appmanager/fragment/ApplicationsDetailsFragment;->w:Landroidx/preference/PreferenceCategory;

    iget-object v1, p0, Lcom/miui/appmanager/fragment/ApplicationsDetailsFragment;->x:Lmiuix/preference/DropDownPreference;

    invoke-virtual {v0, v1}, Landroidx/preference/PreferenceGroup;->removePreference(Landroidx/preference/Preference;)Z

    :goto_0
    return-void
.end method

.method private q3(Ljava/lang/String;I)V
    .locals 13

    iget-boolean v0, p0, Lcom/miui/appmanager/fragment/ApplicationsDetailsFragment;->h0:Z

    if-eqz v0, :cond_2

    invoke-static {p1}, Lo9/a;->b(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "com.xiaomi.kidspace"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_0
    iget-object v1, p0, Lcom/miui/appmanager/fragment/ApplicationsDetailsFragment;->C:Ljava/lang/Object;

    iget-object v0, p0, Lcom/miui/appmanager/fragment/ApplicationsDetailsFragment;->E:Landroid/content/pm/PackageInfo;

    iget v3, v0, Landroid/content/pm/PackageInfo;->versionCode:I

    iget-object v4, p0, Lcom/miui/appmanager/fragment/ApplicationsDetailsFragment;->N0:Lcom/miui/appmanager/fragment/ApplicationsDetailsFragment$w;

    iget-boolean v0, p0, Lcom/miui/appmanager/fragment/ApplicationsDetailsFragment;->u0:Z

    if-eqz v0, :cond_1

    const/4 v0, 0x0

    goto :goto_0

    :cond_1
    const/4 v0, 0x4

    :goto_0
    move v6, v0

    move-object v2, p1

    move v5, p2

    invoke-static/range {v1 .. v6}, Lcom/miui/appmanager/AppManageUtils;->k(Ljava/lang/Object;Ljava/lang/String;ILandroid/content/pm/IPackageDeleteObserver;II)V

    return-void

    :cond_2
    iget-boolean v0, p0, Lcom/miui/appmanager/fragment/ApplicationsDetailsFragment;->s0:Z

    if-eqz v0, :cond_3

    iget-object v1, p0, Lcom/miui/appmanager/fragment/ApplicationsDetailsFragment;->C:Ljava/lang/Object;

    iget-object v0, p0, Lcom/miui/appmanager/fragment/ApplicationsDetailsFragment;->E:Landroid/content/pm/PackageInfo;

    iget v3, v0, Landroid/content/pm/PackageInfo;->versionCode:I

    iget-object v4, p0, Lcom/miui/appmanager/fragment/ApplicationsDetailsFragment;->N0:Lcom/miui/appmanager/fragment/ApplicationsDetailsFragment$w;

    const/4 v6, 0x0

    move-object v2, p1

    move v5, p2

    invoke-static/range {v1 .. v6}, Lcom/miui/appmanager/AppManageUtils;->k(Ljava/lang/Object;Ljava/lang/String;ILandroid/content/pm/IPackageDeleteObserver;II)V

    goto :goto_1

    :cond_3
    iget-object v7, p0, Lcom/miui/appmanager/fragment/ApplicationsDetailsFragment;->C:Ljava/lang/Object;

    iget-object v0, p0, Lcom/miui/appmanager/fragment/ApplicationsDetailsFragment;->E:Landroid/content/pm/PackageInfo;

    iget v9, v0, Landroid/content/pm/PackageInfo;->versionCode:I

    iget-object v10, p0, Lcom/miui/appmanager/fragment/ApplicationsDetailsFragment;->N0:Lcom/miui/appmanager/fragment/ApplicationsDetailsFragment$w;

    const/4 v12, 0x0

    move-object v8, p1

    move v11, p2

    invoke-static/range {v7 .. v12}, Lcom/miui/appmanager/AppManageUtils;->k(Ljava/lang/Object;Ljava/lang/String;ILandroid/content/pm/IPackageDeleteObserver;II)V

    iget-object p2, p0, Lcom/miui/appmanager/fragment/ApplicationsDetailsFragment;->C:Ljava/lang/Object;

    invoke-static {p2, p1}, Ltg/a;->g(Ljava/lang/Object;Ljava/lang/String;)Z

    move-result p2

    if-eqz p2, :cond_4

    iget-object v0, p0, Lcom/miui/appmanager/fragment/ApplicationsDetailsFragment;->C:Ljava/lang/Object;

    iget-object p2, p0, Lcom/miui/appmanager/fragment/ApplicationsDetailsFragment;->E:Landroid/content/pm/PackageInfo;

    iget v2, p2, Landroid/content/pm/PackageInfo;->versionCode:I

    const/4 v3, 0x0

    const/16 v4, 0x3e7

    const/4 v5, 0x0

    move-object v1, p1

    invoke-static/range {v0 .. v5}, Lcom/miui/appmanager/AppManageUtils;->k(Ljava/lang/Object;Ljava/lang/String;ILandroid/content/pm/IPackageDeleteObserver;II)V

    :cond_4
    :goto_1
    return-void
.end method

.method static synthetic r0(Lcom/miui/appmanager/fragment/ApplicationsDetailsFragment;)Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Lcom/miui/appmanager/fragment/ApplicationsDetailsFragment;->C:Ljava/lang/Object;

    return-object p0
.end method

.method static synthetic r1(Lcom/miui/appmanager/fragment/ApplicationsDetailsFragment;)Z
    .locals 0

    invoke-direct {p0}, Lcom/miui/appmanager/fragment/ApplicationsDetailsFragment;->W1()Z

    move-result p0

    return p0
.end method

.method private r2()V
    .locals 3

    new-instance v0, Lcom/miui/appmanager/fragment/ApplicationsDetailsFragment$n;

    iget-object v1, p0, Lcom/miui/appmanager/fragment/ApplicationsDetailsFragment;->Q:Ljava/lang/String;

    iget v2, p0, Lcom/miui/appmanager/fragment/ApplicationsDetailsFragment;->w0:I

    invoke-direct {v0, p0, v1, v2}, Lcom/miui/appmanager/fragment/ApplicationsDetailsFragment$n;-><init>(Lcom/miui/appmanager/fragment/ApplicationsDetailsFragment;Ljava/lang/String;I)V

    iput-object v0, p0, Lcom/miui/appmanager/fragment/ApplicationsDetailsFragment;->O0:Lcom/miui/appmanager/fragment/ApplicationsDetailsFragment$n;

    sget-object v1, Landroid/os/AsyncTask;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Void;

    invoke-virtual {v0, v1, v2}, Landroid/os/AsyncTask;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    return-void
.end method

.method private r3()V
    .locals 6

    iget-object v0, p0, Lcom/miui/appmanager/fragment/ApplicationsDetailsFragment;->I:Landroid/app/admin/DevicePolicyManager;

    iget-object v1, p0, Lcom/miui/appmanager/fragment/ApplicationsDetailsFragment;->Q:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/miui/appmanager/AppManageUtils;->n0(Landroid/app/admin/DevicePolicyManager;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string v1, "com.android.settings"

    const-string v2, "com.android.settings.applications.specialaccess.deviceadmin.DeviceAdminAdd"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    iget-object v1, p0, Lcom/miui/appmanager/fragment/ApplicationsDetailsFragment;->Q:Ljava/lang/String;

    const-string v2, "android.app.extra.DEVICE_ADMIN_PACKAGE_NAME"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {p0, v0}, Lcom/miui/common/base/ui/MiuiXPreferenceFragment;->startActivity(Landroid/content/Intent;)V

    return-void

    :cond_0
    iget-boolean v0, p0, Lcom/miui/appmanager/fragment/ApplicationsDetailsFragment;->u0:Z

    if-eqz v0, :cond_1

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/miui/appmanager/fragment/ApplicationsDetailsFragment;->g3(I)V

    goto :goto_2

    :cond_1
    invoke-direct {p0}, Lcom/miui/appmanager/fragment/ApplicationsDetailsFragment;->N2()Z

    move-result v0

    const/4 v1, 0x1

    if-nez v0, :cond_4

    iget-object v0, p0, Lcom/miui/appmanager/fragment/ApplicationsDetailsFragment;->D:Landroid/content/pm/ApplicationInfo;

    iget-object v0, v0, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    const/4 v2, 0x0

    if-eqz v0, :cond_2

    const-string v3, "app_description_title"

    invoke-virtual {v0, v3}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iget-object v3, p0, Lcom/miui/appmanager/fragment/ApplicationsDetailsFragment;->D:Landroid/content/pm/ApplicationInfo;

    iget-object v3, v3, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    const-string v4, "app_description_content"

    invoke-virtual {v3, v4}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;)I

    move-result v3

    if-eqz v0, :cond_2

    if-eqz v3, :cond_2

    iget-object v2, p0, Lcom/miui/appmanager/fragment/ApplicationsDetailsFragment;->G:Landroid/content/pm/PackageManager;

    iget-object v4, p0, Lcom/miui/appmanager/fragment/ApplicationsDetailsFragment;->Q:Ljava/lang/String;

    iget-object v5, p0, Lcom/miui/appmanager/fragment/ApplicationsDetailsFragment;->D:Landroid/content/pm/ApplicationInfo;

    invoke-virtual {v2, v4, v0, v5}, Landroid/content/pm/PackageManager;->getText(Ljava/lang/String;ILandroid/content/pm/ApplicationInfo;)Ljava/lang/CharSequence;

    move-result-object v2

    iget-object v0, p0, Lcom/miui/appmanager/fragment/ApplicationsDetailsFragment;->G:Landroid/content/pm/PackageManager;

    iget-object v4, p0, Lcom/miui/appmanager/fragment/ApplicationsDetailsFragment;->Q:Ljava/lang/String;

    iget-object v5, p0, Lcom/miui/appmanager/fragment/ApplicationsDetailsFragment;->D:Landroid/content/pm/ApplicationInfo;

    invoke-virtual {v0, v4, v3, v5}, Landroid/content/pm/PackageManager;->getText(Ljava/lang/String;ILandroid/content/pm/ApplicationInfo;)Ljava/lang/CharSequence;

    move-result-object v0

    goto :goto_0

    :cond_2
    move-object v0, v2

    :goto_0
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_4

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_3

    goto :goto_1

    :cond_3
    invoke-direct {p0, v2, v0}, Lcom/miui/appmanager/fragment/ApplicationsDetailsFragment;->e3(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)V

    goto :goto_2

    :cond_4
    :goto_1
    invoke-direct {p0, v1}, Lcom/miui/appmanager/fragment/ApplicationsDetailsFragment;->g3(I)V

    :goto_2
    return-void
.end method

.method static synthetic s0(Lcom/miui/appmanager/fragment/ApplicationsDetailsFragment;)Landroid/view/MenuItem;
    .locals 0

    iget-object p0, p0, Lcom/miui/appmanager/fragment/ApplicationsDetailsFragment;->g:Landroid/view/MenuItem;

    return-object p0
.end method

.method static synthetic s1(Lcom/miui/appmanager/fragment/ApplicationsDetailsFragment;)Landroid/os/UserHandle;
    .locals 0

    iget-object p0, p0, Lcom/miui/appmanager/fragment/ApplicationsDetailsFragment;->N:Landroid/os/UserHandle;

    return-object p0
.end method

.method private s2(Z)V
    .locals 1

    iget-object v0, p0, Lcom/miui/appmanager/fragment/ApplicationsDetailsFragment;->q:Lmiuix/preference/TextPreference;

    if-nez v0, :cond_1

    const-string v0, "app_management_pref"

    invoke-virtual {p0, v0}, Landroidx/preference/PreferenceFragmentCompat;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v0

    check-cast v0, Lmiuix/preference/TextPreference;

    iput-object v0, p0, Lcom/miui/appmanager/fragment/ApplicationsDetailsFragment;->q:Lmiuix/preference/TextPreference;

    if-eqz p1, :cond_0

    invoke-virtual {v0, p0}, Landroidx/preference/Preference;->setOnPreferenceClickListener(Landroidx/preference/Preference$d;)V

    iget-object p1, p0, Lcom/miui/appmanager/fragment/ApplicationsDetailsFragment;->q:Lmiuix/preference/TextPreference;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroidx/preference/Preference;->setVisible(Z)V

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lcom/miui/appmanager/fragment/ApplicationsDetailsFragment;->m:Landroidx/preference/PreferenceCategory;

    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceGroup;->removePreference(Landroidx/preference/Preference;)Z

    :cond_1
    :goto_0
    return-void
.end method

.method static synthetic t0(Lcom/miui/appmanager/fragment/ApplicationsDetailsFragment;)J
    .locals 2

    iget-wide v0, p0, Lcom/miui/appmanager/fragment/ApplicationsDetailsFragment;->C0:J

    return-wide v0
.end method

.method static synthetic t1(Lcom/miui/appmanager/fragment/ApplicationsDetailsFragment;)Ljava/lang/String;
    .locals 0

    invoke-direct {p0}, Lcom/miui/appmanager/fragment/ApplicationsDetailsFragment;->h2()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private t2()V
    .locals 3

    new-instance v0, Lcom/miui/appmanager/fragment/ApplicationsDetailsFragment$o;

    iget-object v1, p0, Lcom/miui/appmanager/fragment/ApplicationsDetailsFragment;->Q:Ljava/lang/String;

    iget v2, p0, Lcom/miui/appmanager/fragment/ApplicationsDetailsFragment;->w0:I

    invoke-direct {v0, p0, v1, v2}, Lcom/miui/appmanager/fragment/ApplicationsDetailsFragment$o;-><init>(Lcom/miui/appmanager/fragment/ApplicationsDetailsFragment;Ljava/lang/String;I)V

    iput-object v0, p0, Lcom/miui/appmanager/fragment/ApplicationsDetailsFragment;->P0:Lcom/miui/appmanager/fragment/ApplicationsDetailsFragment$o;

    sget-object v1, Landroid/os/AsyncTask;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Void;

    invoke-virtual {v0, v1, v2}, Landroid/os/AsyncTask;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    return-void
.end method

.method private t3()V
    .locals 3

    iget-object v0, p0, Lcom/miui/appmanager/fragment/ApplicationsDetailsFragment;->p:Lmiuix/preference/CheckBoxPreference;

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-direct {p0}, Lcom/miui/appmanager/fragment/ApplicationsDetailsFragment;->z2()Z

    move-result v0

    iget-object v1, p0, Lcom/miui/appmanager/fragment/ApplicationsDetailsFragment;->p:Lmiuix/preference/CheckBoxPreference;

    if-eqz v0, :cond_1

    invoke-direct {p0}, Lcom/miui/appmanager/fragment/ApplicationsDetailsFragment;->F2()Z

    move-result v2

    if-nez v2, :cond_1

    const/4 v2, 0x1

    goto :goto_0

    :cond_1
    const/4 v2, 0x0

    :goto_0
    invoke-virtual {v1, v2}, Landroidx/preference/TwoStatePreference;->setChecked(Z)V

    iget-object v1, p0, Lcom/miui/appmanager/fragment/ApplicationsDetailsFragment;->p:Lmiuix/preference/CheckBoxPreference;

    invoke-virtual {v1, v0}, Landroidx/preference/Preference;->setEnabled(Z)V

    return-void
.end method

.method static synthetic u0(Lcom/miui/appmanager/fragment/ApplicationsDetailsFragment;J)J
    .locals 0

    iput-wide p1, p0, Lcom/miui/appmanager/fragment/ApplicationsDetailsFragment;->C0:J

    return-wide p1
.end method

.method static synthetic u1(Lcom/miui/appmanager/fragment/ApplicationsDetailsFragment;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    iput-object p1, p0, Lcom/miui/appmanager/fragment/ApplicationsDetailsFragment;->U:Ljava/lang/String;

    return-object p1
.end method

.method private u2()V
    .locals 5

    iget-boolean v0, p0, Lcom/miui/appmanager/fragment/ApplicationsDetailsFragment;->h0:Z

    const/4 v1, 0x0

    const/4 v2, 0x1

    const v3, 0x7f1201c2

    if-eqz v0, :cond_2

    sget-object v0, Le3/c;->d:Ljava/util/ArrayList;

    iget-object v4, p0, Lcom/miui/appmanager/fragment/ApplicationsDetailsFragment;->Q:Ljava/lang/String;

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    const v4, 0x7f1201bc

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lcom/miui/appmanager/fragment/ApplicationsDetailsFragment;->t0:Z

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/miui/appmanager/fragment/ApplicationsDetailsFragment;->D:Landroid/content/pm/ApplicationInfo;

    iget-boolean v0, v0, Landroid/content/pm/ApplicationInfo;->enabled:Z

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/miui/appmanager/fragment/ApplicationsDetailsFragment;->g:Landroid/view/MenuItem;

    invoke-interface {v0, v4}, Landroid/view/MenuItem;->setTitle(I)Landroid/view/MenuItem;

    goto :goto_2

    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/miui/appmanager/fragment/ApplicationsDetailsFragment;->g:Landroid/view/MenuItem;

    iget-object v1, p0, Lcom/miui/appmanager/fragment/ApplicationsDetailsFragment;->D:Landroid/content/pm/ApplicationInfo;

    iget-boolean v1, v1, Landroid/content/pm/ApplicationInfo;->enabled:Z

    if-eqz v1, :cond_4

    move v3, v4

    goto :goto_1

    :cond_2
    iget-object v0, p0, Lcom/miui/appmanager/fragment/ApplicationsDetailsFragment;->D:Landroid/content/pm/ApplicationInfo;

    iget-boolean v0, v0, Landroid/content/pm/ApplicationInfo;->enabled:Z

    if-nez v0, :cond_5

    :cond_3
    iget-object v0, p0, Lcom/miui/appmanager/fragment/ApplicationsDetailsFragment;->g:Landroid/view/MenuItem;

    :cond_4
    :goto_1
    invoke-interface {v0, v3}, Landroid/view/MenuItem;->setTitle(I)Landroid/view/MenuItem;

    move v1, v2

    :cond_5
    :goto_2
    iget-object v0, p0, Lcom/miui/appmanager/fragment/ApplicationsDetailsFragment;->g:Landroid/view/MenuItem;

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    iget-object v0, p0, Lcom/miui/appmanager/fragment/ApplicationsDetailsFragment;->g:Landroid/view/MenuItem;

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    return-void
.end method

.method static synthetic v0(Lcom/miui/appmanager/fragment/ApplicationsDetailsFragment;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/miui/appmanager/fragment/ApplicationsDetailsFragment;->Q:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic v1(Lcom/miui/appmanager/fragment/ApplicationsDetailsFragment;Ljava/util/List;)Ljava/util/List;
    .locals 0

    iput-object p1, p0, Lcom/miui/appmanager/fragment/ApplicationsDetailsFragment;->H0:Ljava/util/List;

    return-object p1
.end method

.method private v2()V
    .locals 9

    iget-object v0, p0, Lcom/miui/appmanager/fragment/ApplicationsDetailsFragment;->x:Lmiuix/preference/DropDownPreference;

    const v1, 0x7f12026b

    invoke-virtual {v0, v1}, Landroidx/preference/Preference;->setTitle(I)V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    const/4 v3, 0x0

    move v4, v3

    move v5, v4

    :goto_0
    iget-object v6, p0, Lcom/miui/appmanager/fragment/ApplicationsDetailsFragment;->J0:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v6

    if-ge v4, v6, :cond_4

    iget-object v6, p0, Lcom/miui/appmanager/fragment/ApplicationsDetailsFragment;->J0:Ljava/util/List;

    invoke-interface {v6, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    const-string v7, "ae"

    invoke-virtual {v6, v7}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_0

    const v7, 0x7f080333

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-interface {v0, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v8, 0x7f1216bd

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-interface {v1, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const/4 v7, 0x1

    :goto_1
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-interface {v2, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2

    :cond_0
    const-string v7, "full"

    invoke-virtual {v6, v7}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_1

    const v7, 0x7f080335

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-interface {v0, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v8, 0x7f120e1a

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-interface {v1, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const/4 v7, 0x3

    goto :goto_1

    :cond_1
    const-string v7, "fo"

    invoke-virtual {v6, v7}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_2

    const v7, 0x7f08033e

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-interface {v0, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v8, 0x7f120e19

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-interface {v1, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const/4 v7, 0x2

    goto :goto_1

    :cond_2
    :goto_2
    const-string v7, "true"

    invoke-virtual {v6, v7}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_3

    move v5, v4

    :cond_3
    add-int/lit8 v4, v4, 0x1

    goto/16 :goto_0

    :cond_4
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v4

    new-array v4, v4, [I

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v6

    new-array v6, v6, [Ljava/lang/String;

    :goto_3
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v7

    if-ge v3, v7, :cond_5

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Integer;

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7

    aput v7, v4, v3

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Integer;

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7

    invoke-static {v7}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v6, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_3

    :cond_5
    iget-object v0, p0, Lcom/miui/appmanager/fragment/ApplicationsDetailsFragment;->x:Lmiuix/preference/DropDownPreference;

    invoke-virtual {v0, v4}, Lmiuix/preference/DropDownPreference;->z([I)V

    iget-object v0, p0, Lcom/miui/appmanager/fragment/ApplicationsDetailsFragment;->x:Lmiuix/preference/DropDownPreference;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    new-array v2, v2, [Ljava/lang/String;

    invoke-interface {v1, v2}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Lmiuix/preference/DropDownPreference;->y([Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/miui/appmanager/fragment/ApplicationsDetailsFragment;->x:Lmiuix/preference/DropDownPreference;

    invoke-virtual {v0, v6}, Lmiuix/preference/DropDownPreference;->B([Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/miui/appmanager/fragment/ApplicationsDetailsFragment;->x:Lmiuix/preference/DropDownPreference;

    invoke-virtual {v0, v5}, Lmiuix/preference/DropDownPreference;->E(I)V

    return-void
.end method

.method static synthetic w0(Lcom/miui/appmanager/fragment/ApplicationsDetailsFragment;)Lcom/miui/appmanager/fragment/ApplicationsDetailsFragment$u;
    .locals 0

    iget-object p0, p0, Lcom/miui/appmanager/fragment/ApplicationsDetailsFragment;->J:Lcom/miui/appmanager/fragment/ApplicationsDetailsFragment$u;

    return-object p0
.end method

.method static synthetic w1(Lcom/miui/appmanager/fragment/ApplicationsDetailsFragment;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/miui/appmanager/fragment/ApplicationsDetailsFragment;->m0:Z

    return p0
.end method

.method private w2()V
    .locals 14

    iget-object v0, p0, Lcom/miui/appmanager/fragment/ApplicationsDetailsFragment;->I0:Lh3/n;

    invoke-virtual {v0}, Lh3/n;->d()I

    move-result v0

    const/4 v1, 0x2

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-ne v0, v2, :cond_3

    iget-object v0, p0, Lcom/miui/appmanager/fragment/ApplicationsDetailsFragment;->x:Lmiuix/preference/DropDownPreference;

    const v4, 0x7f120a50

    invoke-virtual {v0, v4}, Landroidx/preference/Preference;->setTitle(I)V

    new-array v0, v1, [Ljava/lang/String;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f120a4f

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v0, v3

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f120a52

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v0, v2

    iget-object v4, p0, Lcom/miui/appmanager/fragment/ApplicationsDetailsFragment;->x:Lmiuix/preference/DropDownPreference;

    invoke-virtual {v4, v0}, Lmiuix/preference/DropDownPreference;->y([Ljava/lang/CharSequence;)V

    new-array v0, v1, [I

    fill-array-data v0, :array_0

    iget-object v4, p0, Lcom/miui/appmanager/fragment/ApplicationsDetailsFragment;->x:Lmiuix/preference/DropDownPreference;

    invoke-virtual {v4, v0}, Lmiuix/preference/DropDownPreference;->z([I)V

    new-array v0, v1, [F

    sget v4, Lx6/a;->f:F

    aput v4, v0, v3

    sget v4, Lx6/a;->i:F

    aput v4, v0, v2

    new-array v2, v1, [Ljava/lang/String;

    move v4, v3

    :goto_0
    if-ge v4, v1, :cond_0

    aget v5, v0, v4

    invoke-static {v5}, Ljava/lang/String;->valueOf(F)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v2, v4

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_0
    iget-object v4, p0, Lcom/miui/appmanager/fragment/ApplicationsDetailsFragment;->x:Lmiuix/preference/DropDownPreference;

    invoke-virtual {v4, v2}, Lmiuix/preference/DropDownPreference;->B([Ljava/lang/CharSequence;)V

    move v2, v3

    :goto_1
    if-ge v3, v1, :cond_2

    iget-object v4, p0, Lcom/miui/appmanager/fragment/ApplicationsDetailsFragment;->I0:Lh3/n;

    invoke-virtual {v4}, Lh3/n;->c()F

    move-result v4

    aget v5, v0, v3

    cmpl-float v4, v4, v5

    if-nez v4, :cond_1

    move v2, v3

    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_2
    :goto_2
    iget-object v0, p0, Lcom/miui/appmanager/fragment/ApplicationsDetailsFragment;->x:Lmiuix/preference/DropDownPreference;

    invoke-virtual {v0, v2}, Lmiuix/preference/DropDownPreference;->E(I)V

    goto/16 :goto_6

    :cond_3
    iget-object v0, p0, Lcom/miui/appmanager/fragment/ApplicationsDetailsFragment;->I0:Lh3/n;

    invoke-virtual {v0}, Lh3/n;->d()I

    move-result v0

    if-ne v0, v1, :cond_8

    iget-object v0, p0, Lcom/miui/appmanager/fragment/ApplicationsDetailsFragment;->x:Lmiuix/preference/DropDownPreference;

    const v4, 0x7f12026e

    invoke-virtual {v0, v4}, Landroidx/preference/Preference;->setTitle(I)V

    iget-object v0, p0, Lcom/miui/appmanager/fragment/ApplicationsDetailsFragment;->I0:Lh3/n;

    invoke-virtual {v0}, Lh3/n;->f()Z

    move-result v0

    const/16 v4, 0x9

    const/16 v5, 0x10

    const v6, 0x7f1216bc

    const v7, 0x7f1216bb

    const v8, 0x7f1216be

    const/4 v9, 0x4

    const/4 v10, 0x3

    if-eqz v0, :cond_4

    new-array v0, v9, [I

    fill-array-data v0, :array_1

    new-array v11, v9, [Ljava/lang/String;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v12

    const v13, 0x7f1216bd

    invoke-virtual {v12, v13}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v12

    aput-object v12, v11, v3

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v12

    invoke-virtual {v12, v8}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v8

    aput-object v8, v11, v2

    new-array v8, v1, [Ljava/lang/Object;

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    aput-object v12, v8, v3

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    aput-object v12, v8, v2

    invoke-virtual {p0, v7, v8}, Landroidx/fragment/app/Fragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v11, v1

    new-array v7, v1, [Ljava/lang/Object;

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v7, v3

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v7, v2

    invoke-virtual {p0, v6, v7}, Landroidx/fragment/app/Fragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v11, v10

    new-array v4, v9, [F

    sget v5, Lx6/a;->e:F

    aput v5, v4, v3

    sget v5, Lx6/a;->f:F

    aput v5, v4, v2

    sget v2, Lx6/a;->h:F

    aput v2, v4, v1

    sget v1, Lx6/a;->g:F

    aput v1, v4, v10

    goto :goto_3

    :cond_4
    new-array v0, v10, [I

    fill-array-data v0, :array_2

    new-array v11, v10, [Ljava/lang/String;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v12

    invoke-virtual {v12, v8}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v8

    aput-object v8, v11, v3

    new-array v8, v1, [Ljava/lang/Object;

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v8, v3

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v8, v2

    invoke-virtual {p0, v7, v8}, Landroidx/fragment/app/Fragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v11, v2

    new-array v7, v1, [Ljava/lang/Object;

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v7, v3

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v7, v2

    invoke-virtual {p0, v6, v7}, Landroidx/fragment/app/Fragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v11, v1

    new-array v4, v10, [F

    sget v5, Lx6/a;->f:F

    aput v5, v4, v3

    sget v5, Lx6/a;->h:F

    aput v5, v4, v2

    sget v2, Lx6/a;->g:F

    aput v2, v4, v1

    :goto_3
    iget-object v1, p0, Lcom/miui/appmanager/fragment/ApplicationsDetailsFragment;->x:Lmiuix/preference/DropDownPreference;

    invoke-virtual {v1, v0}, Lmiuix/preference/DropDownPreference;->z([I)V

    iget-object v1, p0, Lcom/miui/appmanager/fragment/ApplicationsDetailsFragment;->x:Lmiuix/preference/DropDownPreference;

    invoke-virtual {v1, v11}, Lmiuix/preference/DropDownPreference;->y([Ljava/lang/CharSequence;)V

    move v1, v3

    move v2, v1

    :goto_4
    array-length v5, v0

    if-ge v1, v5, :cond_6

    iget-object v5, p0, Lcom/miui/appmanager/fragment/ApplicationsDetailsFragment;->I0:Lh3/n;

    invoke-virtual {v5}, Lh3/n;->c()F

    move-result v5

    aget v6, v4, v1

    cmpl-float v5, v5, v6

    if-nez v5, :cond_5

    move v2, v1

    :cond_5
    add-int/lit8 v1, v1, 0x1

    goto :goto_4

    :cond_6
    array-length v0, v4

    new-array v1, v0, [Ljava/lang/String;

    :goto_5
    if-ge v3, v0, :cond_7

    aget v5, v4, v3

    invoke-static {v5}, Ljava/lang/String;->valueOf(F)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v1, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_5

    :cond_7
    iget-object v0, p0, Lcom/miui/appmanager/fragment/ApplicationsDetailsFragment;->x:Lmiuix/preference/DropDownPreference;

    invoke-virtual {v0, v1}, Lmiuix/preference/DropDownPreference;->B([Ljava/lang/CharSequence;)V

    goto/16 :goto_2

    :cond_8
    :goto_6
    return-void

    nop

    :array_0
    .array-data 4
        0x7f080335
        0x7f08033f
    .end array-data

    :array_1
    .array-data 4
        0x7f080333
        0x7f080335
        0x7f080334
        0x7f08033e
    .end array-data

    :array_2
    .array-data 4
        0x7f080335
        0x7f080334
        0x7f08033e
    .end array-data
.end method

.method static synthetic x0(Lcom/miui/appmanager/fragment/ApplicationsDetailsFragment;)V
    .locals 0

    invoke-direct {p0}, Lcom/miui/appmanager/fragment/ApplicationsDetailsFragment;->S1()V

    return-void
.end method

.method static synthetic x1(Lcom/miui/appmanager/fragment/ApplicationsDetailsFragment;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/miui/appmanager/fragment/ApplicationsDetailsFragment;->m0:Z

    return p1
.end method

.method private x2()V
    .locals 8

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/miui/appmanager/fragment/ApplicationsDetailsFragment;->Q:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/miui/appmanager/AppManageUtils;->b0(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_1

    iget-object v0, p0, Lcom/miui/appmanager/fragment/ApplicationsDetailsFragment;->c:Landroid/view/MenuItem;

    invoke-interface {v0, v2}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    return-void

    :cond_1
    iget-boolean v1, p0, Lcom/miui/appmanager/fragment/ApplicationsDetailsFragment;->k0:Z

    const/4 v3, 0x1

    if-eqz v1, :cond_2

    iget-object v0, p0, Lcom/miui/appmanager/fragment/ApplicationsDetailsFragment;->c:Landroid/view/MenuItem;

    const v1, 0x7f120539

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setTitle(I)Landroid/view/MenuItem;

    iget-object v0, p0, Lcom/miui/appmanager/fragment/ApplicationsDetailsFragment;->c:Landroid/view/MenuItem;

    const v1, 0x7f08037d

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    iget-object v0, p0, Lcom/miui/appmanager/fragment/ApplicationsDetailsFragment;->c:Landroid/view/MenuItem;

    invoke-interface {v0, v3}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    return-void

    :cond_2
    const v1, 0x7f120206

    iget-boolean v4, p0, Lcom/miui/appmanager/fragment/ApplicationsDetailsFragment;->u0:Z

    const-string v5, "kid_mode_status"

    const-string v6, "com.xiaomi.kidspace"

    if-eqz v4, :cond_4

    const v1, 0x7f1201c4

    iget-object v4, p0, Lcom/miui/appmanager/fragment/ApplicationsDetailsFragment;->Q:Ljava/lang/String;

    invoke-virtual {v6, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_7

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-static {v0, v5, v2}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-eq v0, v3, :cond_3

    :goto_0
    move v2, v3

    :cond_3
    move v3, v2

    goto :goto_2

    :cond_4
    iget-boolean v4, p0, Lcom/miui/appmanager/fragment/ApplicationsDetailsFragment;->h0:Z

    if-eqz v4, :cond_7

    iget-object v4, p0, Lcom/miui/appmanager/fragment/ApplicationsDetailsFragment;->Q:Ljava/lang/String;

    invoke-static {v4}, Lo9/a;->b(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_5

    invoke-static {v0}, Lo9/a;->d(Landroid/content/Context;)Z

    move-result v4

    goto :goto_1

    :cond_5
    move v4, v2

    :goto_1
    iget-object v7, p0, Lcom/miui/appmanager/fragment/ApplicationsDetailsFragment;->Q:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_6

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-static {v0, v5, v2}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-eq v0, v3, :cond_3

    goto :goto_0

    :cond_6
    move v3, v4

    :cond_7
    :goto_2
    iget-object v0, p0, Lcom/miui/appmanager/fragment/ApplicationsDetailsFragment;->c:Landroid/view/MenuItem;

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setTitle(I)Landroid/view/MenuItem;

    iget-object v0, p0, Lcom/miui/appmanager/fragment/ApplicationsDetailsFragment;->c:Landroid/view/MenuItem;

    invoke-interface {v0, v3}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    iget-object v0, p0, Lcom/miui/appmanager/fragment/ApplicationsDetailsFragment;->c:Landroid/view/MenuItem;

    invoke-interface {v0, v3}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    return-void
.end method

.method static synthetic y0(Lcom/miui/appmanager/fragment/ApplicationsDetailsFragment;)Lcom/miui/appmanager/fragment/ApplicationsDetailsFragment$w;
    .locals 0

    iget-object p0, p0, Lcom/miui/appmanager/fragment/ApplicationsDetailsFragment;->N0:Lcom/miui/appmanager/fragment/ApplicationsDetailsFragment$w;

    return-object p0
.end method

.method static synthetic y1(Lcom/miui/appmanager/fragment/ApplicationsDetailsFragment;)Z
    .locals 0

    invoke-direct {p0}, Lcom/miui/appmanager/fragment/ApplicationsDetailsFragment;->B2()Z

    move-result p0

    return p0
.end method

.method private y2()V
    .locals 3

    iget-object v0, p0, Lcom/miui/appmanager/fragment/ApplicationsDetailsFragment;->M0:Lcom/miui/appmanager/AppManageUtils$ClearUserDataObserver;

    if-nez v0, :cond_0

    new-instance v0, Lcom/miui/appmanager/AppManageUtils$ClearUserDataObserver;

    iget-object v1, p0, Lcom/miui/appmanager/fragment/ApplicationsDetailsFragment;->J:Lcom/miui/appmanager/fragment/ApplicationsDetailsFragment$u;

    invoke-direct {v0, v1}, Lcom/miui/appmanager/AppManageUtils$ClearUserDataObserver;-><init>(Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/miui/appmanager/fragment/ApplicationsDetailsFragment;->M0:Lcom/miui/appmanager/AppManageUtils$ClearUserDataObserver;

    :cond_0
    iget-object v0, p0, Lcom/miui/appmanager/fragment/ApplicationsDetailsFragment;->d:Landroid/view/MenuItem;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    iget-object v0, p0, Lcom/miui/appmanager/fragment/ApplicationsDetailsFragment;->Q:Ljava/lang/String;

    iget v1, p0, Lcom/miui/appmanager/fragment/ApplicationsDetailsFragment;->w0:I

    iget-object v2, p0, Lcom/miui/appmanager/fragment/ApplicationsDetailsFragment;->M0:Lcom/miui/appmanager/AppManageUtils$ClearUserDataObserver;

    invoke-static {v0, v1, v2}, Lcom/miui/appmanager/AppManageUtils;->h(Ljava/lang/String;ILcom/miui/appmanager/AppManageUtils$ClearUserDataObserver;)Z

    move-result v0

    if-nez v0, :cond_1

    const/4 v0, 0x2

    new-instance v1, Lcom/miui/appmanager/fragment/ApplicationsDetailsFragment$f;

    invoke-direct {v1, p0}, Lcom/miui/appmanager/fragment/ApplicationsDetailsFragment$f;-><init>(Lcom/miui/appmanager/fragment/ApplicationsDetailsFragment;)V

    invoke-direct {p0, v0, v1}, Lcom/miui/appmanager/fragment/ApplicationsDetailsFragment;->b3(ILandroid/content/DialogInterface$OnClickListener;)V

    :cond_1
    const/16 v0, 0x1f4

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Lcom/miui/appmanager/fragment/ApplicationsDetailsFragment;->s3(IZ)V

    const-string v0, "clear_data"

    invoke-static {v0}, Lf3/a;->i(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic z0(Lcom/miui/appmanager/fragment/ApplicationsDetailsFragment;)V
    .locals 0

    invoke-direct {p0}, Lcom/miui/appmanager/fragment/ApplicationsDetailsFragment;->f3()V

    return-void
.end method

.method static synthetic z1(Lcom/miui/appmanager/fragment/ApplicationsDetailsFragment;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/miui/appmanager/fragment/ApplicationsDetailsFragment;->o0:Z

    return p1
.end method

.method private z2()Z
    .locals 3

    iget-boolean v0, p0, Lcom/miui/appmanager/fragment/ApplicationsDetailsFragment;->n0:Z

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/miui/appmanager/fragment/ApplicationsDetailsFragment;->y0:I

    if-eq v0, v1, :cond_0

    const/4 v2, -0x1

    if-eq v0, v2, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method


# virtual methods
.method public F(Lq0/c;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lq0/c<",
            "Lcom/miui/appmanager/fragment/b;",
            ">;)V"
        }
    .end annotation

    return-void
.end method

.method public N1(Landroid/content/Context;Landroid/net/Uri;)Z
    .locals 2

    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.VIEW"

    invoke-direct {v0, v1, p2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    const-string p2, "com.xiaomi.market"

    invoke-virtual {v0, p2}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p1

    const/4 p2, 0x0

    invoke-virtual {p1, v0, p2}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result p1

    xor-int/lit8 p1, p1, 0x1

    return p1
.end method

.method public O2(Lq0/c;Lcom/miui/appmanager/fragment/b;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lq0/c<",
            "Lcom/miui/appmanager/fragment/b;",
            ">;",
            "Lcom/miui/appmanager/fragment/b;",
            ")V"
        }
    .end annotation

    invoke-virtual {p2}, Lcom/miui/appmanager/fragment/b;->a()Z

    move-result p1

    if-nez p1, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object p1

    if-nez p1, :cond_1

    return-void

    :cond_1
    iget-object p2, p0, Lcom/miui/appmanager/fragment/ApplicationsDetailsFragment;->k:Lmiuix/preference/TextPreference;

    iget-boolean v0, p0, Lcom/miui/appmanager/fragment/ApplicationsDetailsFragment;->g0:Z

    invoke-virtual {p2, v0}, Landroidx/preference/Preference;->setVisible(Z)V

    iget-object p2, p0, Lcom/miui/appmanager/fragment/ApplicationsDetailsFragment;->k:Lmiuix/preference/TextPreference;

    iget-wide v0, p0, Lcom/miui/appmanager/fragment/ApplicationsDetailsFragment;->P:J

    invoke-static {p1, v0, v1}, Lcom/miui/networkassistant/utils/FormatBytesUtil;->formatBytes(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Lmiuix/preference/TextPreference;->setText(Ljava/lang/String;)V

    iget-object p2, p0, Lcom/miui/appmanager/fragment/ApplicationsDetailsFragment;->o:Lmiuix/preference/CheckBoxPreference;

    iget-boolean v0, p0, Lcom/miui/appmanager/fragment/ApplicationsDetailsFragment;->Y:Z

    invoke-virtual {p2, v0}, Landroidx/preference/TwoStatePreference;->setChecked(Z)V

    invoke-direct {p0}, Lcom/miui/appmanager/fragment/ApplicationsDetailsFragment;->o2()V

    iget-boolean p2, p0, Lcom/miui/appmanager/fragment/ApplicationsDetailsFragment;->f0:Z

    if-eqz p2, :cond_2

    iget-object p2, p0, Lcom/miui/appmanager/fragment/ApplicationsDetailsFragment;->y:Lmiuix/preference/TextPreference;

    const v0, 0x7f1201b2

    goto :goto_0

    :cond_2
    iget-object p2, p0, Lcom/miui/appmanager/fragment/ApplicationsDetailsFragment;->y:Lmiuix/preference/TextPreference;

    const v0, 0x7f1201b1

    :goto_0
    invoke-virtual {p2, v0}, Landroidx/preference/Preference;->setSummary(I)V

    iget-object p2, p0, Lcom/miui/appmanager/fragment/ApplicationsDetailsFragment;->v:Lmiuix/preference/TextPreference;

    iget-object v0, p0, Lcom/miui/appmanager/fragment/ApplicationsDetailsFragment;->T:Ljava/lang/String;

    invoke-virtual {p2, v0}, Lmiuix/preference/TextPreference;->setText(Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/miui/appmanager/fragment/ApplicationsDetailsFragment;->l2()V

    invoke-direct {p0}, Lcom/miui/appmanager/fragment/ApplicationsDetailsFragment;->q2()V

    invoke-direct {p0}, Lcom/miui/appmanager/fragment/ApplicationsDetailsFragment;->p2()V

    invoke-static {p1}, Lcom/miui/permcenter/o;->E(Landroid/content/Context;)Z

    move-result p1

    sget-boolean p2, Lcom/miui/permcenter/o;->t:Z

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-eqz p2, :cond_3

    sget-boolean p2, Lcom/miui/permcenter/o;->y:Z

    if-nez p2, :cond_3

    move p2, v0

    goto :goto_1

    :cond_3
    move p2, v1

    :goto_1
    iget-boolean v2, p0, Lcom/miui/appmanager/fragment/ApplicationsDetailsFragment;->h0:Z

    if-nez v2, :cond_4

    if-nez p1, :cond_5

    if-eqz p2, :cond_4

    goto :goto_2

    :cond_4
    move v0, v1

    :cond_5
    :goto_2
    invoke-direct {p0, v0}, Lcom/miui/appmanager/fragment/ApplicationsDetailsFragment;->s2(Z)V

    if-eqz v0, :cond_6

    iget-boolean p1, p0, Lcom/miui/appmanager/fragment/ApplicationsDetailsFragment;->V:Z

    if-nez p1, :cond_6

    iget-object p1, p0, Lcom/miui/appmanager/fragment/ApplicationsDetailsFragment;->Q:Ljava/lang/String;

    const-string p2, "expose"

    const-string v0, "ApplicationsDetailsActivity"

    const/4 v1, 0x0

    invoke-static {p2, v0, p1, v1, v1}, Lmb/b;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/Boolean;)V

    :cond_6
    invoke-direct {p0}, Lcom/miui/appmanager/fragment/ApplicationsDetailsFragment;->m2()V

    invoke-direct {p0}, Lcom/miui/appmanager/fragment/ApplicationsDetailsFragment;->n2()V

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    const-string p2, "enter_way"

    invoke-virtual {p1, p2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    if-eqz p2, :cond_7

    const-string p1, "00004"

    :cond_7
    invoke-static {p1}, Lf3/a;->f(Ljava/lang/String;)V

    iget-object p1, p0, Lcom/miui/appmanager/fragment/ApplicationsDetailsFragment;->w:Landroidx/preference/PreferenceCategory;

    invoke-virtual {p1}, Landroidx/preference/PreferenceGroup;->getPreferenceCount()I

    move-result p1

    if-nez p1, :cond_8

    invoke-virtual {p0}, Landroidx/preference/PreferenceFragmentCompat;->getPreferenceScreen()Landroidx/preference/PreferenceScreen;

    move-result-object p1

    iget-object p2, p0, Lcom/miui/appmanager/fragment/ApplicationsDetailsFragment;->w:Landroidx/preference/PreferenceCategory;

    invoke-virtual {p1, p2}, Landroidx/preference/PreferenceGroup;->removePreference(Landroidx/preference/Preference;)Z

    :cond_8
    return-void
.end method

.method public P2(Landroid/view/MenuItem;)V
    .locals 10

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result p1

    const/4 v1, 0x1

    if-eq p1, v1, :cond_c

    const/4 v2, 0x2

    if-eq p1, v2, :cond_a

    const/4 v2, 0x3

    if-eq p1, v2, :cond_6

    const/4 v2, 0x5

    if-eq p1, v2, :cond_5

    const/4 v2, 0x6

    if-eq p1, v2, :cond_4

    const v2, 0x7f0b00e7

    if-eq p1, v2, :cond_3

    const v2, 0x7f0b00f5

    if-eq p1, v2, :cond_2

    const v2, 0x7f0b00f7

    if-eq p1, v2, :cond_1

    goto/16 :goto_3

    :cond_1
    new-instance p1, Landroid/content/Intent;

    const-string v2, "android.intent.action.SEND"

    invoke-direct {p1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    const-string v1, "application/vnd.android.package-archive"

    invoke-virtual {p1, v1}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    iget-object v1, p0, Lcom/miui/appmanager/fragment/ApplicationsDetailsFragment;->D0:Ljava/io/File;

    const-string v2, "com.miui.securitycenter.zman.fileProvider"

    invoke-static {v0, v2, v1}, Landroidx/core/content/FileProvider;->h(Landroid/content/Context;Ljava/lang/String;Ljava/io/File;)Landroid/net/Uri;

    move-result-object v0

    const-string v1, "android.intent.extra.STREAM"

    invoke-virtual {p1, v1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Landroid/content/Intent;->createChooser(Landroid/content/Intent;Ljava/lang/CharSequence;)Landroid/content/Intent;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/miui/appmanager/fragment/ApplicationsDetailsFragment;->I1(Landroid/content/Intent;)V

    goto :goto_0

    :cond_2
    :try_start_0
    invoke-virtual {p0}, Lcom/miui/appmanager/fragment/ApplicationsDetailsFragment;->f2()Ljava/lang/String;

    move-result-object p1

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "mimarket://browse"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, "?back=true"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "&url="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    invoke-virtual {p0, v0, p1}, Lcom/miui/appmanager/fragment/ApplicationsDetailsFragment;->N1(Landroid/content/Context;Landroid/net/Uri;)Z

    move-result v0

    if-eqz v0, :cond_d

    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.VIEW"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    const/high16 p1, 0x10000000

    invoke-virtual {v0, p1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    invoke-virtual {p0, v0}, Lcom/miui/common/base/ui/MiuiXPreferenceFragment;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_3

    :catch_0
    move-exception p1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "report fail:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "ApplicationsDetailsActivity"

    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_3

    :cond_3
    new-instance p1, Landroid/content/Intent;

    const-class v1, Lcom/miui/appmanager/AMAppInfomationActivity;

    invoke-direct {p1, v0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    iget-object v0, p0, Lcom/miui/appmanager/fragment/ApplicationsDetailsFragment;->Q:Ljava/lang/String;

    const-string v1, "am_app_pkgname"

    invoke-virtual {p1, v1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    iget-object v0, p0, Lcom/miui/appmanager/fragment/ApplicationsDetailsFragment;->R:Ljava/lang/String;

    const-string v1, "am_app_label"

    invoke-virtual {p1, v1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    iget-object v0, p0, Lcom/miui/appmanager/fragment/ApplicationsDetailsFragment;->D:Landroid/content/pm/ApplicationInfo;

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->uid:I

    const-string v1, "am_app_uid"

    invoke-virtual {p1, v1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    :goto_0
    invoke-virtual {p0, p1}, Lcom/miui/common/base/ui/MiuiXPreferenceFragment;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_3

    :cond_4
    invoke-direct {p0}, Lcom/miui/appmanager/fragment/ApplicationsDetailsFragment;->Q1()V

    goto/16 :goto_3

    :cond_5
    iget-object p1, p0, Lcom/miui/appmanager/fragment/ApplicationsDetailsFragment;->Q:Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/miui/appmanager/fragment/ApplicationsDetailsFragment;->V1(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object p1

    if-eqz p1, :cond_d

    goto :goto_0

    :cond_6
    iget-wide v3, p0, Lcom/miui/appmanager/fragment/ApplicationsDetailsFragment;->A0:J

    const-wide/16 v5, 0x0

    cmp-long p1, v3, v5

    if-lez p1, :cond_7

    iget-boolean p1, p0, Lcom/miui/appmanager/fragment/ApplicationsDetailsFragment;->q0:Z

    if-eqz p1, :cond_7

    iget-wide v7, p0, Lcom/miui/appmanager/fragment/ApplicationsDetailsFragment;->B0:J

    cmp-long v9, v7, v5

    if-lez v9, :cond_7

    iget-object v1, p0, Lcom/miui/appmanager/fragment/ApplicationsDetailsFragment;->D:Landroid/content/pm/ApplicationInfo;

    iget-object v1, v1, Landroid/content/pm/ApplicationInfo;->manageSpaceActivityName:Ljava/lang/String;

    new-instance v9, Lcom/miui/appmanager/fragment/ApplicationsDetailsFragment$g;

    invoke-direct {v9, p0}, Lcom/miui/appmanager/fragment/ApplicationsDetailsFragment$g;-><init>(Lcom/miui/appmanager/fragment/ApplicationsDetailsFragment;)V

    move-wide v2, v3

    move-wide v4, v7

    move v6, p1

    move-object v7, v9

    invoke-static/range {v0 .. v7}, Lcom/miui/appmanager/AppManageUtils;->B0(Landroid/content/Context;Ljava/lang/String;JJZLandroid/content/DialogInterface$OnClickListener;)V

    goto :goto_3

    :cond_7
    cmp-long p1, v3, v5

    if-lez p1, :cond_9

    iget-boolean p1, p0, Lcom/miui/appmanager/fragment/ApplicationsDetailsFragment;->q0:Z

    if-eqz p1, :cond_9

    iget-object p1, p0, Lcom/miui/appmanager/fragment/ApplicationsDetailsFragment;->D:Landroid/content/pm/ApplicationInfo;

    iget-object p1, p1, Landroid/content/pm/ApplicationInfo;->manageSpaceActivityName:Ljava/lang/String;

    if-eqz p1, :cond_8

    invoke-direct {p0}, Lcom/miui/appmanager/fragment/ApplicationsDetailsFragment;->l3()V

    goto :goto_3

    :cond_8
    new-instance p1, Lcom/miui/appmanager/fragment/ApplicationsDetailsFragment$i;

    invoke-direct {p1, p0}, Lcom/miui/appmanager/fragment/ApplicationsDetailsFragment$i;-><init>(Lcom/miui/appmanager/fragment/ApplicationsDetailsFragment;)V

    invoke-direct {p0, v1, p1}, Lcom/miui/appmanager/fragment/ApplicationsDetailsFragment;->b3(ILandroid/content/DialogInterface$OnClickListener;)V

    goto :goto_3

    :cond_9
    iget-wide v0, p0, Lcom/miui/appmanager/fragment/ApplicationsDetailsFragment;->B0:J

    cmp-long p1, v0, v5

    if-lez p1, :cond_d

    new-instance p1, Lcom/miui/appmanager/fragment/ApplicationsDetailsFragment$h;

    invoke-direct {p1, p0}, Lcom/miui/appmanager/fragment/ApplicationsDetailsFragment$h;-><init>(Lcom/miui/appmanager/fragment/ApplicationsDetailsFragment;)V

    invoke-direct {p0, v2, p1}, Lcom/miui/appmanager/fragment/ApplicationsDetailsFragment;->b3(ILandroid/content/DialogInterface$OnClickListener;)V

    goto :goto_3

    :cond_a
    iget-boolean p1, p0, Lcom/miui/appmanager/fragment/ApplicationsDetailsFragment;->k0:Z

    if-eqz p1, :cond_b

    invoke-direct {p0}, Lcom/miui/appmanager/fragment/ApplicationsDetailsFragment;->c3()V

    goto :goto_1

    :cond_b
    invoke-direct {p0}, Lcom/miui/appmanager/fragment/ApplicationsDetailsFragment;->r3()V

    :goto_1
    const-string p1, "uninstall"

    goto :goto_2

    :cond_c
    invoke-direct {p0}, Lcom/miui/appmanager/fragment/ApplicationsDetailsFragment;->I2()V

    const-string p1, "stop_running"

    :goto_2
    invoke-static {p1}, Lf3/a;->i(Ljava/lang/String;)V

    :cond_d
    :goto_3
    return-void
.end method

.method public R2(Landroid/view/Menu;)V
    .locals 9

    iget-object v0, p0, Lcom/miui/appmanager/fragment/ApplicationsDetailsFragment;->d:Landroid/view/MenuItem;

    iget-wide v1, p0, Lcom/miui/appmanager/fragment/ApplicationsDetailsFragment;->z0:J

    iget-wide v3, p0, Lcom/miui/appmanager/fragment/ApplicationsDetailsFragment;->A0:J

    iget-wide v5, p0, Lcom/miui/appmanager/fragment/ApplicationsDetailsFragment;->B0:J

    iget-boolean v7, p0, Lcom/miui/appmanager/fragment/ApplicationsDetailsFragment;->q0:Z

    iget-object p1, p0, Lcom/miui/appmanager/fragment/ApplicationsDetailsFragment;->D:Landroid/content/pm/ApplicationInfo;

    iget-object v8, p1, Landroid/content/pm/ApplicationInfo;->manageSpaceActivityName:Ljava/lang/String;

    invoke-static/range {v0 .. v8}, Lcom/miui/appmanager/AppManageUtils;->H0(Landroid/view/MenuItem;JJJZLjava/lang/String;)V

    invoke-direct {p0}, Lcom/miui/appmanager/fragment/ApplicationsDetailsFragment;->L1()V

    return-void
.end method

.method public bridge synthetic T(Lq0/c;Ljava/lang/Object;)V
    .locals 0

    check-cast p2, Lcom/miui/appmanager/fragment/b;

    invoke-virtual {p0, p1, p2}, Lcom/miui/appmanager/fragment/ApplicationsDetailsFragment;->O2(Lq0/c;Lcom/miui/appmanager/fragment/b;)V

    return-void
.end method

.method public V1(Ljava/lang/String;)Landroid/content/Intent;
    .locals 4

    invoke-direct {p0, p1}, Lcom/miui/appmanager/fragment/ApplicationsDetailsFragment;->a2(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    :cond_0
    new-instance v2, Landroid/content/Intent;

    const-string v3, "android.intent.action.SHOW_APP_INFO"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/miui/appmanager/fragment/ApplicationsDetailsFragment;->V2(Landroid/content/Intent;)Landroid/content/Intent;

    move-result-object v0

    if-eqz v0, :cond_1

    const-string v1, "android.intent.extra.PACKAGE_NAME"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    return-object v0

    :cond_1
    return-object v1
.end method

.method public W2()V
    .locals 2

    iget-object v0, p0, Lcom/miui/appmanager/fragment/ApplicationsDetailsFragment;->n:Lmiuix/preference/TextPreference;

    if-eqz v0, :cond_1

    iget-boolean v1, p0, Lcom/miui/appmanager/fragment/ApplicationsDetailsFragment;->p0:Z

    if-eqz v1, :cond_0

    const v1, 0x7f120152

    invoke-virtual {p0, v1}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    invoke-virtual {v0, v1}, Lmiuix/preference/TextPreference;->setText(Ljava/lang/String;)V

    :cond_1
    return-void
.end method

.method public X2(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/miui/appmanager/fragment/ApplicationsDetailsFragment;->j:Lmiuix/preference/TextPreference;

    invoke-virtual {v0, p1}, Lmiuix/preference/TextPreference;->setText(Ljava/lang/String;)V

    return-void
.end method

.method public f2()Ljava/lang/String;
    .locals 4

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/appmanager/fragment/ApplicationsDetailsFragment;->Q:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/miui/networkassistant/utils/PackageUtil;->getInstaller(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/appmanager/fragment/ApplicationsDetailsFragment;->E:Landroid/content/pm/PackageInfo;

    if-nez v1, :cond_0

    const-string v1, ""

    goto :goto_0

    :cond_0
    iget-object v1, v1, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;

    :goto_0
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "https://app.market.xiaomi.com/hd/apm-h5-cdn/cdn-feedbackV1.html"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v3, "?pName="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/miui/appmanager/fragment/ApplicationsDetailsFragment;->Q:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "&appName="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/miui/appmanager/fragment/ApplicationsDetailsFragment;->R:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "&appVersionCode="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "&pageRef=app_info"

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "&installSource="

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "&a_hide=true"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 0

    invoke-super {p0, p1, p2, p3}, Landroidx/fragment/app/Fragment;->onActivityResult(IILandroid/content/Intent;)V

    const/16 p2, 0x2726

    if-ne p1, p2, :cond_1

    invoke-direct {p0}, Lcom/miui/appmanager/fragment/ApplicationsDetailsFragment;->d2()V

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object p1

    if-nez p1, :cond_0

    return-void

    :cond_0
    iget-object p2, p0, Lcom/miui/appmanager/fragment/ApplicationsDetailsFragment;->Q:Ljava/lang/String;

    invoke-static {p1, p2}, Lx4/k1;->j(Landroid/content/Context;Ljava/lang/String;)Z

    move-result p2

    if-eqz p2, :cond_1

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object p3, p0, Lcom/miui/appmanager/fragment/ApplicationsDetailsFragment;->Q:Ljava/lang/String;

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p3, "clear data, close privacy input mode"

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const-string p3, "ApplicationsDetailsActivity"

    invoke-static {p3, p2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p2, 0x0

    iget-object p3, p0, Lcom/miui/appmanager/fragment/ApplicationsDetailsFragment;->Q:Ljava/lang/String;

    invoke-static {p2, p1, p3}, Lx4/k1;->t(ZLandroid/content/Context;Ljava/lang/String;)V

    :cond_1
    return-void
.end method

.method public onCreateLoader(ILandroid/os/Bundle;)Lq0/c;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Landroid/os/Bundle;",
            ")",
            "Lq0/c<",
            "Lcom/miui/appmanager/fragment/b;",
            ">;"
        }
    .end annotation

    new-instance p1, Lcom/miui/appmanager/fragment/ApplicationsDetailsFragment$b;

    invoke-direct {p1, p0}, Lcom/miui/appmanager/fragment/ApplicationsDetailsFragment$b;-><init>(Lcom/miui/appmanager/fragment/ApplicationsDetailsFragment;)V

    iput-object p1, p0, Lcom/miui/appmanager/fragment/ApplicationsDetailsFragment;->M:Lcom/miui/appmanager/fragment/ApplicationsDetailsFragment$b;

    return-object p1
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V
    .locals 5
    .param p1    # Landroid/view/Menu;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroid/view/MenuInflater;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    invoke-super {p0, p1, p2}, Landroidx/fragment/app/Fragment;->onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V

    const/high16 v0, 0x7f0f0000

    invoke-virtual {p2, v0, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    const p2, 0x7f0b00f7

    invoke-interface {p1, p2}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object p2

    iput-object p2, p0, Lcom/miui/appmanager/fragment/ApplicationsDetailsFragment;->h:Landroid/view/MenuItem;

    iget-object p2, p0, Lcom/miui/appmanager/fragment/ApplicationsDetailsFragment;->D:Landroid/content/pm/ApplicationInfo;

    if-eqz p2, :cond_6

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object p2

    if-nez p2, :cond_0

    return-void

    :cond_0
    invoke-static {}, Lx4/t;->h()I

    move-result v0

    const v1, 0x7f120d9c

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-interface {p1, v2, v3, v2, v1}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v1

    iput-object v1, p0, Lcom/miui/appmanager/fragment/ApplicationsDetailsFragment;->b:Landroid/view/MenuItem;

    const v4, 0x7f08037e

    invoke-interface {v1, v4}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    iget-object v1, p0, Lcom/miui/appmanager/fragment/ApplicationsDetailsFragment;->b:Landroid/view/MenuItem;

    invoke-interface {v1, v3}, Landroid/view/MenuItem;->setShowAsAction(I)V

    const/4 v1, 0x2

    const v4, 0x7f120206

    invoke-interface {p1, v2, v1, v2, v4}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v1

    iput-object v1, p0, Lcom/miui/appmanager/fragment/ApplicationsDetailsFragment;->c:Landroid/view/MenuItem;

    const v4, 0x7f08037d

    invoke-interface {v1, v4}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    iget-object v1, p0, Lcom/miui/appmanager/fragment/ApplicationsDetailsFragment;->c:Landroid/view/MenuItem;

    invoke-interface {v1, v3}, Landroid/view/MenuItem;->setShowAsAction(I)V

    const/4 v1, 0x6

    const v4, 0x7f1201bc

    invoke-interface {p1, v2, v1, v2, v4}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v1

    iput-object v1, p0, Lcom/miui/appmanager/fragment/ApplicationsDetailsFragment;->g:Landroid/view/MenuItem;

    invoke-direct {p0, v0}, Lcom/miui/appmanager/fragment/ApplicationsDetailsFragment;->g2(I)I

    move-result v4

    invoke-interface {v1, v4}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    iget-object v1, p0, Lcom/miui/appmanager/fragment/ApplicationsDetailsFragment;->g:Landroid/view/MenuItem;

    invoke-interface {v1, v3}, Landroid/view/MenuItem;->setShowAsAction(I)V

    const/4 v1, 0x3

    const v4, 0x7f1201d4

    invoke-interface {p1, v2, v1, v2, v4}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v1

    iput-object v1, p0, Lcom/miui/appmanager/fragment/ApplicationsDetailsFragment;->d:Landroid/view/MenuItem;

    invoke-direct {p0, v0}, Lcom/miui/appmanager/fragment/ApplicationsDetailsFragment;->Y1(I)I

    move-result v0

    invoke-interface {v1, v0}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    iget-object v0, p0, Lcom/miui/appmanager/fragment/ApplicationsDetailsFragment;->d:Landroid/view/MenuItem;

    invoke-interface {v0, v3}, Landroid/view/MenuItem;->setShowAsAction(I)V

    sget-boolean v0, Lmiui/os/Build;->IS_INTERNATIONAL_BUILD:Z

    if-nez v0, :cond_1

    const-string v0, "mimarket://browse"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {p0, p2, v0}, Lcom/miui/appmanager/fragment/ApplicationsDetailsFragment;->N1(Landroid/content/Context;Landroid/net/Uri;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/miui/appmanager/fragment/ApplicationsDetailsFragment;->h0:Z

    if-nez v0, :cond_1

    const v0, 0x7f0b00f5

    invoke-interface {p1, v0}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/appmanager/fragment/ApplicationsDetailsFragment;->e:Landroid/view/MenuItem;

    invoke-interface {v0, v3}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    :cond_1
    iget-object v0, p0, Lcom/miui/appmanager/fragment/ApplicationsDetailsFragment;->D:Landroid/content/pm/ApplicationInfo;

    iget-object v1, p0, Lcom/miui/appmanager/fragment/ApplicationsDetailsFragment;->I:Landroid/app/admin/DevicePolicyManager;

    iget-object v4, p0, Lcom/miui/appmanager/fragment/ApplicationsDetailsFragment;->Q:Ljava/lang/String;

    invoke-static {v0, v1, v4}, Lcom/miui/appmanager/AppManageUtils;->d(Landroid/content/pm/ApplicationInfo;Landroid/app/admin/DevicePolicyManager;Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/miui/appmanager/fragment/ApplicationsDetailsFragment;->q0:Z

    invoke-direct {p0}, Lcom/miui/appmanager/fragment/ApplicationsDetailsFragment;->x2()V

    invoke-direct {p0}, Lcom/miui/appmanager/fragment/ApplicationsDetailsFragment;->u2()V

    iget-boolean v0, p0, Lcom/miui/appmanager/fragment/ApplicationsDetailsFragment;->k0:Z

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/miui/appmanager/fragment/ApplicationsDetailsFragment;->d:Landroid/view/MenuItem;

    invoke-interface {v0, v2}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    const/4 v0, 0x5

    const v1, 0x7f120c67

    invoke-interface {p1, v2, v0, v2, v1}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object p1

    iput-object p1, p0, Lcom/miui/appmanager/fragment/ApplicationsDetailsFragment;->f:Landroid/view/MenuItem;

    const v0, 0x7f0802fd

    invoke-interface {p1, v0}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    iget-object p1, p0, Lcom/miui/appmanager/fragment/ApplicationsDetailsFragment;->f:Landroid/view/MenuItem;

    invoke-interface {p1, v3}, Landroid/view/MenuItem;->setShowAsAction(I)V

    iget-object p1, p0, Lcom/miui/appmanager/fragment/ApplicationsDetailsFragment;->Q:Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/miui/appmanager/fragment/ApplicationsDetailsFragment;->V1(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object p1

    iget-object v0, p0, Lcom/miui/appmanager/fragment/ApplicationsDetailsFragment;->f:Landroid/view/MenuItem;

    if-eqz p1, :cond_2

    move p1, v3

    goto :goto_0

    :cond_2
    move p1, v2

    :goto_0
    invoke-interface {v0, p1}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    :cond_3
    iget-boolean p1, p0, Lcom/miui/appmanager/fragment/ApplicationsDetailsFragment;->h0:Z

    if-nez p1, :cond_4

    new-instance p1, Lcom/miui/appmanager/fragment/ApplicationsDetailsFragment$s;

    invoke-direct {p1, p0}, Lcom/miui/appmanager/fragment/ApplicationsDetailsFragment$s;-><init>(Lcom/miui/appmanager/fragment/ApplicationsDetailsFragment;)V

    invoke-virtual {p1}, Ljava/lang/Thread;->start()V

    :cond_4
    iget-object p1, p0, Lcom/miui/appmanager/fragment/ApplicationsDetailsFragment;->Q:Ljava/lang/String;

    const-string v0, "com.xiaomi.kidspace"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_6

    invoke-virtual {p2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    const-string p2, "kid_mode_status"

    invoke-static {p1, p2, v2}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p1

    if-ne p1, v3, :cond_5

    move v2, v3

    :cond_5
    iget-object p1, p0, Lcom/miui/appmanager/fragment/ApplicationsDetailsFragment;->d:Landroid/view/MenuItem;

    xor-int/lit8 p2, v2, 0x1

    invoke-interface {p1, p2}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    iget-object p1, p0, Lcom/miui/appmanager/fragment/ApplicationsDetailsFragment;->b:Landroid/view/MenuItem;

    xor-int/lit8 p2, v2, 0x1

    invoke-interface {p1, p2}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    :cond_6
    return-void
.end method

.method public onCreatePreferences(Landroid/os/Bundle;Ljava/lang/String;)V
    .locals 5

    const p2, 0x7f15000b

    invoke-virtual {p0, p2}, Landroidx/preference/PreferenceFragmentCompat;->addPreferencesFromResource(I)V

    new-instance p2, Lcom/miui/appmanager/fragment/ApplicationsDetailsFragment$u;

    invoke-direct {p2, p0}, Lcom/miui/appmanager/fragment/ApplicationsDetailsFragment$u;-><init>(Lcom/miui/appmanager/fragment/ApplicationsDetailsFragment;)V

    iput-object p2, p0, Lcom/miui/appmanager/fragment/ApplicationsDetailsFragment;->J:Lcom/miui/appmanager/fragment/ApplicationsDetailsFragment$u;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-virtual {p2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p2

    iput-object p2, p0, Lcom/miui/appmanager/fragment/ApplicationsDetailsFragment;->G:Landroid/content/pm/PackageManager;

    invoke-direct {p0}, Lcom/miui/appmanager/fragment/ApplicationsDetailsFragment;->Q2()Z

    move-result p2

    if-nez p2, :cond_0

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/Activity;->finish()V

    return-void

    :cond_0
    invoke-direct {p0}, Lcom/miui/appmanager/fragment/ApplicationsDetailsFragment;->initView()V

    invoke-direct {p0}, Lcom/miui/appmanager/fragment/ApplicationsDetailsFragment;->initData()V

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p2

    invoke-virtual {p2}, Landroidx/fragment/app/FragmentActivity;->getSupportLoaderManager()Landroidx/loader/app/a;

    move-result-object p2

    const/16 v0, 0x7c

    invoke-virtual {p2, v0}, Landroidx/loader/app/a;->d(I)Lq0/c;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {p2, v0, v2, p0}, Landroidx/loader/app/a;->e(ILandroid/os/Bundle;Landroidx/loader/app/a$a;)Lq0/c;

    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v4, 0x18

    if-lt v3, v4, :cond_1

    if-eqz p1, :cond_1

    if-eqz v1, :cond_1

    invoke-virtual {p2, v0, v2, p0}, Landroidx/loader/app/a;->g(ILandroid/os/Bundle;Landroidx/loader/app/a$a;)Lq0/c;

    :cond_1
    invoke-direct {p0}, Lcom/miui/appmanager/fragment/ApplicationsDetailsFragment;->r2()V

    invoke-direct {p0}, Lcom/miui/appmanager/fragment/ApplicationsDetailsFragment;->t2()V

    invoke-direct {p0}, Lcom/miui/appmanager/fragment/ApplicationsDetailsFragment;->T2()V

    invoke-direct {p0}, Lcom/miui/appmanager/fragment/ApplicationsDetailsFragment;->Y2()V

    return-void
.end method

.method public onDestroy()V
    .locals 3

    invoke-super {p0}, Landroidx/fragment/app/Fragment;->onDestroy()V

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v1, p0, Lcom/miui/appmanager/fragment/ApplicationsDetailsFragment;->J:Lcom/miui/appmanager/fragment/ApplicationsDetailsFragment$u;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    invoke-direct {p0}, Lcom/miui/appmanager/fragment/ApplicationsDetailsFragment;->K1()V

    invoke-virtual {v0}, Landroid/app/Activity;->getLoaderManager()Landroid/app/LoaderManager;

    move-result-object v1

    const/16 v2, 0x7c

    invoke-virtual {v1, v2}, Landroid/app/LoaderManager;->destroyLoader(I)V

    iget-object v1, p0, Lcom/miui/appmanager/fragment/ApplicationsDetailsFragment;->K0:Lcom/miui/appmanager/fragment/ApplicationsDetailsFragment$p;

    if-eqz v1, :cond_1

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    :cond_1
    return-void
.end method

.method public onPause()V
    .locals 1

    invoke-super {p0}, Landroidx/fragment/app/Fragment;->onPause()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/miui/appmanager/fragment/ApplicationsDetailsFragment;->V:Z

    return-void
.end method

.method public onPreferenceChange(Landroidx/preference/Preference;Ljava/lang/Object;)Z
    .locals 10
    .param p1    # Landroidx/preference/Preference;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    const-string v0, "ApplicationsDetailsActivity"

    const-class v1, Ljava/lang/String;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v2

    const/4 v3, 0x0

    if-nez v2, :cond_0

    return v3

    :cond_0
    invoke-virtual {p1}, Landroidx/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object p1

    const-string v4, "app_autostart_pref"

    invoke-virtual {v4, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    const/4 v5, 0x1

    if-eqz v4, :cond_4

    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-eqz p1, :cond_2

    sget-boolean p2, Lcom/miui/permcenter/o;->r:Z

    if-eqz p2, :cond_1

    invoke-direct {p0, p1}, Lcom/miui/appmanager/fragment/ApplicationsDetailsFragment;->a3(Z)V

    goto :goto_0

    :cond_1
    invoke-direct {p0, p1}, Lcom/miui/appmanager/fragment/ApplicationsDetailsFragment;->Z2(Z)V

    goto :goto_0

    :cond_2
    iget-object p2, p0, Lcom/miui/appmanager/fragment/ApplicationsDetailsFragment;->Q:Ljava/lang/String;

    iget-object v0, p0, Lcom/miui/appmanager/fragment/ApplicationsDetailsFragment;->H0:Ljava/util/List;

    invoke-static {p2, v0}, Lcom/miui/appmanager/AppManageUtils;->j0(Ljava/lang/String;Ljava/util/List;)Z

    move-result p2

    if-eqz p2, :cond_3

    new-instance p2, Lg3/b;

    invoke-direct {p2, p0}, Lg3/b;-><init>(Lcom/miui/appmanager/fragment/ApplicationsDetailsFragment;)V

    new-instance v0, Lg3/c;

    invoke-direct {v0, p0, v2, p1}, Lg3/c;-><init>(Lcom/miui/appmanager/fragment/ApplicationsDetailsFragment;Landroid/app/Activity;Z)V

    new-instance p1, Lg3/d;

    invoke-direct {p1, p0}, Lg3/d;-><init>(Lcom/miui/appmanager/fragment/ApplicationsDetailsFragment;)V

    iget-object v1, p0, Lcom/miui/appmanager/fragment/ApplicationsDetailsFragment;->R:Ljava/lang/String;

    invoke-static {v2, p2, v0, p1, v1}, Lcom/miui/permcenter/q;->v(Landroid/content/Context;Landroid/content/DialogInterface$OnClickListener;Landroid/content/DialogInterface$OnClickListener;Landroid/content/DialogInterface$OnCancelListener;Ljava/lang/String;)V

    goto :goto_0

    :cond_3
    invoke-virtual {v2}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p2

    iget v0, p0, Lcom/miui/appmanager/fragment/ApplicationsDetailsFragment;->w0:I

    iget-object v1, p0, Lcom/miui/appmanager/fragment/ApplicationsDetailsFragment;->Q:Ljava/lang/String;

    invoke-static {p2, v0, v1, p1}, Lcom/miui/appmanager/AppManageUtils;->t0(Landroid/content/Context;ILjava/lang/String;Z)V

    :goto_0
    const-string p1, "start_toggle"

    invoke-static {p1}, Lf3/a;->i(Ljava/lang/String;)V

    return v5

    :cond_4
    const-string v4, "app_size_compat_pref"

    invoke-virtual {v4, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_6

    iget-object p1, p0, Lcom/miui/appmanager/fragment/ApplicationsDetailsFragment;->x:Lmiuix/preference/DropDownPreference;

    check-cast p2, Ljava/lang/String;

    invoke-virtual {p1, p2}, Lmiuix/preference/DropDownPreference;->D(Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/miui/appmanager/fragment/ApplicationsDetailsFragment;->G2()Z

    move-result p1

    if-eqz p1, :cond_5

    invoke-static {}, Lx4/s1;->c()Lx4/s1;

    move-result-object p1

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/miui/appmanager/fragment/ApplicationsDetailsFragment;->Q:Ljava/lang/String;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    invoke-virtual {p1, v0, v1, p2}, Lx4/s1;->d(Ljava/lang/String;Ljava/lang/String;I)V

    goto :goto_1

    :cond_5
    iget-object p1, p0, Lcom/miui/appmanager/fragment/ApplicationsDetailsFragment;->I0:Lh3/n;

    invoke-static {p2}, Ljava/lang/Float;->valueOf(Ljava/lang/String;)Ljava/lang/Float;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/Float;->floatValue()F

    move-result p2

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/appmanager/fragment/ApplicationsDetailsFragment;->D:Landroid/content/pm/ApplicationInfo;

    invoke-static {p1, p2, v0, v1}, Lx4/d;->k(Lh3/n;FLandroid/content/Context;Landroid/content/pm/ApplicationInfo;)V

    :goto_1
    return v5

    :cond_6
    const-string v4, "app_restricted_setting_pref"

    invoke-virtual {v4, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_7

    iget-object p1, p0, Lcom/miui/appmanager/fragment/ApplicationsDetailsFragment;->K:Landroid/app/AppOpsManager;

    const/16 v0, 0x77

    iget v1, p0, Lcom/miui/appmanager/fragment/ApplicationsDetailsFragment;->x0:I

    iget-object v2, p0, Lcom/miui/appmanager/fragment/ApplicationsDetailsFragment;->Q:Ljava/lang/String;

    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p2

    xor-int/2addr p2, v5

    invoke-static {p1, v0, v1, v2, p2}, Landroid/app/AppOpsManagerCompat;->setMode(Landroid/app/AppOpsManager;IILjava/lang/String;I)V

    return v5

    :cond_7
    const-string v4, "app_hiberanations_pref"

    invoke-virtual {v4, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_a

    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    :try_start_0
    iget-object p2, p0, Lcom/miui/appmanager/fragment/ApplicationsDetailsFragment;->K:Landroid/app/AppOpsManager;

    const-string v4, "setUidMode"

    const/4 v6, 0x3

    new-array v7, v6, [Ljava/lang/Class;

    aput-object v1, v7, v3

    sget-object v8, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v8, v7, v5

    const/4 v9, 0x2

    aput-object v8, v7, v9

    new-array v6, v6, [Ljava/lang/Object;

    const-string v8, "android:auto_revoke_permissions_if_unused"

    aput-object v8, v6, v3

    iget v8, p0, Lcom/miui/appmanager/fragment/ApplicationsDetailsFragment;->v0:I

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v6, v5

    if-eqz p1, :cond_8

    move v8, v3

    goto :goto_2

    :cond_8
    move v8, v5

    :goto_2
    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v6, v9

    invoke-static {p2, v4, v7, v6}, Lbh/f;->d(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    if-nez p1, :cond_9

    :try_start_1
    const-string p1, "android.apphibernation.AppHibernationManager"

    invoke-static {p1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {v2, p1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    const-string p2, "setHibernatingForUser"

    new-array v2, v9, [Ljava/lang/Class;

    aput-object v1, v2, v3

    sget-object v4, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    aput-object v4, v2, v5

    new-array v6, v9, [Ljava/lang/Object;

    iget-object v7, p0, Lcom/miui/appmanager/fragment/ApplicationsDetailsFragment;->Q:Ljava/lang/String;

    aput-object v7, v6, v3

    sget-object v7, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    aput-object v7, v6, v5

    invoke-static {p1, p2, v2, v6}, Lbh/f;->d(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    const-string p2, "setHibernatingGlobally"

    new-array v2, v9, [Ljava/lang/Class;

    aput-object v1, v2, v3

    aput-object v4, v2, v5

    new-array v1, v9, [Ljava/lang/Object;

    iget-object v4, p0, Lcom/miui/appmanager/fragment/ApplicationsDetailsFragment;->Q:Ljava/lang/String;

    aput-object v4, v1, v3

    aput-object v7, v1, v5

    invoke-static {p1, p2, v2, v1}, Lbh/f;->d(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_3

    :catch_0
    move-exception p1

    :try_start_2
    const-string p2, "setHiberanation failed"

    invoke-static {v0, p2, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_3

    :catch_1
    move-exception p1

    const-string p2, "setUidMode failed "

    invoke-static {v0, p2, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_9
    :goto_3
    return v5

    :cond_a
    return v3
.end method

.method public onPreferenceClick(Landroidx/preference/Preference;)Z
    .locals 6
    .param p1    # Landroidx/preference/Preference;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    invoke-virtual {p1}, Landroidx/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object p1

    const-string v2, "app_storage_pref"

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    const/4 v3, 0x1

    if-eqz v2, :cond_2

    iget-wide v1, p0, Lcom/miui/appmanager/fragment/ApplicationsDetailsFragment;->z0:J

    const-wide/16 v4, 0x0

    cmp-long p1, v1, v4

    if-lez p1, :cond_1

    invoke-direct {p0}, Lcom/miui/appmanager/fragment/ApplicationsDetailsFragment;->j3()V

    goto :goto_0

    :cond_1
    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    const v0, 0x7f1201cf

    invoke-static {p1, v0}, Leg/c;->n(Landroid/content/Context;I)V

    :goto_0
    const-string p1, "storage"

    invoke-static {p1}, Lf3/a;->i(Ljava/lang/String;)V

    return v3

    :cond_2
    const-string v2, "app_traffic_pref"

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-direct {p0}, Lcom/miui/appmanager/fragment/ApplicationsDetailsFragment;->m3()V

    const-string p1, "flow"

    invoke-static {p1}, Lf3/a;->i(Ljava/lang/String;)V

    return v3

    :cond_3
    const-string v2, "app_power_pref"

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-direct {p0}, Lcom/miui/appmanager/fragment/ApplicationsDetailsFragment;->p3()V

    const-string p1, "power"

    invoke-static {p1}, Lf3/a;->i(Ljava/lang/String;)V

    return v3

    :cond_4
    const-string v2, "app_behavior_pref"

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    new-instance p1, Landroid/content/Intent;

    invoke-direct {p1}, Landroid/content/Intent;-><init>()V

    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "com.miui.permcenter.privacycenter.usage.AppPermissionUsageActivity"

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    iget-object v0, p0, Lcom/miui/appmanager/fragment/ApplicationsDetailsFragment;->Q:Ljava/lang/String;

    const-string v1, "android.intent.extra.PACKAGE_NAME"

    invoke-virtual {p1, v1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    iget v0, p0, Lcom/miui/appmanager/fragment/ApplicationsDetailsFragment;->w0:I

    const-string v1, "android.intent.extra.USER"

    invoke-virtual {p1, v1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    iget-object v0, p0, Lcom/miui/appmanager/fragment/ApplicationsDetailsFragment;->R:Ljava/lang/String;

    const-string v1, "android.intent.extra.TITLE"

    invoke-virtual {p1, v1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {p0, p1}, Lcom/miui/common/base/ui/MiuiXPreferenceFragment;->startActivity(Landroid/content/Intent;)V

    return v3

    :cond_5
    const-string v2, "app_management_pref"

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6

    new-instance p1, Landroid/content/Intent;

    invoke-direct {p1}, Landroid/content/Intent;-><init>()V

    new-instance v1, Landroid/content/ComponentName;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    const-string v2, "com.miui.applicationmanagement.ApplicationManagementActivity"

    invoke-direct {v1, v0, v2}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p1, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    iget-object v0, p0, Lcom/miui/appmanager/fragment/ApplicationsDetailsFragment;->Q:Ljava/lang/String;

    const-string v1, "app_packageName"

    invoke-virtual {p1, v1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    iget v0, p0, Lcom/miui/appmanager/fragment/ApplicationsDetailsFragment;->w0:I

    const-string v1, "app_userId"

    invoke-virtual {p1, v1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    invoke-virtual {p0, p1}, Lcom/miui/common/base/ui/MiuiXPreferenceFragment;->startActivity(Landroid/content/Intent;)V

    iget-object p1, p0, Lcom/miui/appmanager/fragment/ApplicationsDetailsFragment;->Q:Ljava/lang/String;

    const-string v0, "click"

    const-string v1, "ApplicationsDetailsActivity"

    const/4 v2, 0x0

    invoke-static {v0, v1, p1, v2, v2}, Lmb/b;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/Boolean;)V

    return v3

    :cond_6
    const-string v2, "app_global_perm_pref"

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_7

    invoke-direct {p0}, Lcom/miui/appmanager/fragment/ApplicationsDetailsFragment;->k3()V

    return v3

    :cond_7
    const-string v2, "app_perm_pref"

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_8

    invoke-direct {p0}, Lcom/miui/appmanager/fragment/ApplicationsDetailsFragment;->o3()V

    const-string p1, "permissions"

    invoke-static {p1}, Lf3/a;->i(Ljava/lang/String;)V

    return v3

    :cond_8
    const-string v2, "app_hybrid_perm_pref"

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_9

    new-instance p1, Landroid/content/Intent;

    const-string v0, "com.miui.hybrid.action.PERMISSION_PREFERENCES"

    invoke-direct {p1, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Lcom/miui/common/base/ui/MiuiXPreferenceFragment;->startActivity(Landroid/content/Intent;)V

    return v3

    :cond_9
    const-string v2, "app_all_service_pref"

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_a

    invoke-direct {p0}, Lcom/miui/appmanager/fragment/ApplicationsDetailsFragment;->i3()V

    return v3

    :cond_a
    const-string v2, "app_notify_pref"

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_b

    invoke-direct {p0}, Lcom/miui/appmanager/fragment/ApplicationsDetailsFragment;->n3()V

    const-string p1, "noti_manage"

    invoke-static {p1}, Lf3/a;->i(Ljava/lang/String;)V

    return v3

    :cond_b
    const-string v2, "app_default_pref"

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_d

    iget-boolean p1, p0, Lcom/miui/appmanager/fragment/ApplicationsDetailsFragment;->f0:Z

    if-eqz p1, :cond_c

    invoke-direct {p0}, Lcom/miui/appmanager/fragment/ApplicationsDetailsFragment;->P1()V

    goto :goto_1

    :cond_c
    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    const v0, 0x7f1201b1

    invoke-static {p1, v0}, Leg/c;->n(Landroid/content/Context;I)V

    :goto_1
    const-string p1, "clean_default"

    invoke-static {p1}, Lf3/a;->i(Ljava/lang/String;)V

    return v3

    :cond_d
    const-string v0, "app_additional_pref"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_e

    invoke-direct {p0}, Lcom/miui/appmanager/fragment/ApplicationsDetailsFragment;->h3()V

    return v3

    :cond_e
    return v1
.end method

.method public onResume()V
    .locals 6

    invoke-super {p0}, Landroidx/fragment/app/Fragment;->onResume()V

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-boolean v1, p0, Lcom/miui/appmanager/fragment/ApplicationsDetailsFragment;->V:Z

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/miui/appmanager/fragment/ApplicationsDetailsFragment;->C:Ljava/lang/Object;

    iget-object v2, p0, Lcom/miui/appmanager/fragment/ApplicationsDetailsFragment;->G:Landroid/content/pm/PackageManager;

    iget-object v3, p0, Lcom/miui/appmanager/fragment/ApplicationsDetailsFragment;->Q:Ljava/lang/String;

    const/16 v4, 0x80

    iget v5, p0, Lcom/miui/appmanager/fragment/ApplicationsDetailsFragment;->w0:I

    invoke-static {v1, v2, v3, v4, v5}, Lcom/miui/appmanager/AppManageUtils;->s(Ljava/lang/Object;Landroid/content/pm/PackageManager;Ljava/lang/String;II)Landroid/content/pm/ApplicationInfo;

    move-result-object v1

    if-nez v1, :cond_1

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    goto :goto_0

    :cond_1
    iput-object v1, p0, Lcom/miui/appmanager/fragment/ApplicationsDetailsFragment;->D:Landroid/content/pm/ApplicationInfo;

    :goto_0
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/fragment/app/FragmentActivity;->getSupportLoaderManager()Landroidx/loader/app/a;

    move-result-object v0

    const/16 v1, 0x7c

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2, p0}, Landroidx/loader/app/a;->g(ILandroid/os/Bundle;Landroidx/loader/app/a$a;)Lq0/c;

    invoke-direct {p0}, Lcom/miui/appmanager/fragment/ApplicationsDetailsFragment;->t3()V

    :cond_2
    invoke-direct {p0}, Lcom/miui/appmanager/fragment/ApplicationsDetailsFragment;->L1()V

    return-void
.end method

.method public s3(IZ)V
    .locals 1

    new-instance v0, Lcom/miui/appmanager/fragment/ApplicationsDetailsFragment$b0;

    invoke-direct {v0, p0, p1, p2}, Lcom/miui/appmanager/fragment/ApplicationsDetailsFragment$b0;-><init>(Lcom/miui/appmanager/fragment/ApplicationsDetailsFragment;IZ)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    return-void
.end method
