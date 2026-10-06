.class public final Lcom/miui/permcenter/permissions/PermissionAppsModifyFragment;
.super Lmiuix/preference/PreferenceFragment;
.source "SourceFile"

# interfaces
.implements Landroidx/preference/Preference$c;
.implements Lwb/b;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/permcenter/permissions/PermissionAppsModifyFragment$a;
    }
.end annotation

.annotation build Lkotlin/jvm/internal/SourceDebugExtension;
    value = {
        "SMAP\nPermissionAppsModifyActivity.kt\nKotlin\n*S Kotlin\n*F\n+ 1 PermissionAppsModifyActivity.kt\ncom/miui/permcenter/permissions/PermissionAppsModifyFragment\n+ 2 Maps.kt\nkotlin/collections/MapsKt__MapsKt\n*L\n1#1,1023:1\n483#2,7:1024\n*S KotlinDebug\n*F\n+ 1 PermissionAppsModifyActivity.kt\ncom/miui/permcenter/permissions/PermissionAppsModifyFragment\n*L\n251#1:1024,7\n*E\n"
    }
.end annotation


# static fields
.field public static final s:Lcom/miui/permcenter/permissions/PermissionAppsModifyFragment$a;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# instance fields
.field private a:Lcom/miui/permcenter/permissions/PermTipsPreference;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private b:Lcom/miui/permcenter/permissions/RadioButtonPreference;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private c:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public d:Ljava/lang/String;

.field private e:I

.field private f:Landroid/content/pm/PackageInfo;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private g:Ljava/lang/Integer;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private h:I

.field private i:Landroidx/preference/PreferenceCategory;

.field private j:Lmiuix/preference/CheckBoxPreference;

.field private k:Lmiuix/preference/CheckBoxPreference;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private l:I

.field private m:Landroid/app/ActivityManager;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private n:Landroid/app/AppOpsManager;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private o:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private p:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private q:Lcom/miui/permcenter/AppPermissionInfo;

.field private final r:Lcom/miui/permcenter/permissions/PermissionAppsModifyFragment$e;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/miui/permcenter/permissions/PermissionAppsModifyFragment$a;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/miui/permcenter/permissions/PermissionAppsModifyFragment$a;-><init>(Lbk/g;)V

    sput-object v0, Lcom/miui/permcenter/permissions/PermissionAppsModifyFragment;->s:Lcom/miui/permcenter/permissions/PermissionAppsModifyFragment$a;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lmiuix/preference/PreferenceFragment;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/miui/permcenter/permissions/PermissionAppsModifyFragment;->c:Ljava/util/ArrayList;

    const/4 v0, -0x1

    iput v0, p0, Lcom/miui/permcenter/permissions/PermissionAppsModifyFragment;->h:I

    const-string v0, ""

    iput-object v0, p0, Lcom/miui/permcenter/permissions/PermissionAppsModifyFragment;->o:Ljava/lang/String;

    iput-object v0, p0, Lcom/miui/permcenter/permissions/PermissionAppsModifyFragment;->p:Ljava/lang/String;

    new-instance v0, Lcom/miui/permcenter/permissions/PermissionAppsModifyFragment$e;

    invoke-direct {v0, p0}, Lcom/miui/permcenter/permissions/PermissionAppsModifyFragment$e;-><init>(Lcom/miui/permcenter/permissions/PermissionAppsModifyFragment;)V

    iput-object v0, p0, Lcom/miui/permcenter/permissions/PermissionAppsModifyFragment;->r:Lcom/miui/permcenter/permissions/PermissionAppsModifyFragment$e;

    return-void
.end method

.method public static final synthetic A0(Lcom/miui/permcenter/permissions/PermissionAppsModifyFragment;Lcom/miui/permcenter/permissions/PermTipsPreference;Ltj/d;)Ljava/lang/Object;
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/miui/permcenter/permissions/PermissionAppsModifyFragment;->c1(Lcom/miui/permcenter/permissions/PermTipsPreference;Ltj/d;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic B0(Lcom/miui/permcenter/permissions/PermissionAppsModifyFragment;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/miui/permcenter/permissions/PermissionAppsModifyFragment;->f1(I)V

    return-void
.end method

.method public static final synthetic C0(Lcom/miui/permcenter/permissions/PermissionAppsModifyFragment;Ltj/d;)Ljava/lang/Object;
    .locals 0

    invoke-direct {p0, p1}, Lcom/miui/permcenter/permissions/PermissionAppsModifyFragment;->n1(Ltj/d;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic D0(Lcom/miui/permcenter/permissions/PermissionAppsModifyFragment;JIZ)V
    .locals 0

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/miui/permcenter/permissions/PermissionAppsModifyFragment;->q1(JIZ)V

    return-void
.end method

.method private final E0(Landroid/view/View;I)V
    .locals 4

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->orientation:I

    const/4 v1, 0x1

    const/4 v2, 0x2

    const/4 v3, 0x0

    if-ne v0, v2, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    move v0, v3

    :goto_0
    if-eq p2, v1, :cond_3

    if-eq p2, v2, :cond_1

    move p2, v3

    goto :goto_1

    :cond_1
    if-eqz v0, :cond_2

    const/16 p2, 0x104

    goto :goto_1

    :cond_2
    const/16 p2, 0x82

    goto :goto_1

    :cond_3
    if-eqz v0, :cond_4

    const/16 p2, 0x96

    goto :goto_1

    :cond_4
    const/16 p2, 0x3c

    :goto_1
    invoke-virtual {p1, p2, v3, p2, v3}, Landroid/view/View;->setPadding(IIII)V

    return-void
.end method

.method private final F0()Lxc/f;
    .locals 4

    sget-boolean v0, Lcom/miui/permcenter/o;->p:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/miui/permcenter/permissions/PermissionAppsModifyFragment;->f:Landroid/content/pm/PackageInfo;

    invoke-static {v0}, Lbk/m;->b(Ljava/lang/Object;)V

    iget-object v0, v0, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/lit16 v0, v0, 0x80

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    new-instance v1, Lbk/y;

    invoke-direct {v1}, Lbk/y;-><init>()V

    const/4 v2, 0x0

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    invoke-virtual {p0}, Lcom/miui/permcenter/permissions/PermissionAppsModifyFragment;->K0()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lbk/m;->b(Ljava/lang/Object;)V

    const v3, 0x2010c0

    invoke-virtual {v0, v2, v3}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v0

    const-string v2, "requireActivity().packag\u2026pact.FLAG_REQUIRED_VALUE)"

    invoke-static {v0, v2}, Lbk/m;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2, v0}, Lcom/miui/permission/RequiredPermissionsUtil;->isAdaptedRequiredPermissionsOnData(Landroid/content/Context;Landroid/content/pm/PackageInfo;)Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object v0, v0, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    invoke-static {v0}, Lcom/miui/permission/RequiredPermissionsUtil;->retrieveRequiredPermissions(Landroid/content/pm/ApplicationInfo;)Ljava/util/List;

    move-result-object v0

    iput-object v0, v1, Lbk/y;->a:Ljava/lang/Object;

    :cond_1
    new-instance v0, Lcc/x;

    invoke-direct {v0, v2, v1}, Lcc/x;-><init>(ZLbk/y;)V

    move-object v2, v0

    :cond_2
    return-object v2
.end method

.method private static final G0(ZLbk/y;J)Z
    .locals 3

    const-string v0, "$mFactoryRequired"

    invoke-static {p1, v0}, Lbk/m;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x1

    if-nez p0, :cond_0

    return v0

    :cond_0
    iget-object p0, p1, Lbk/y;->a:Ljava/lang/Object;

    if-eqz p0, :cond_4

    check-cast p0, Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_1
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p1

    if-eqz p1, :cond_3

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    sget-object v1, Lcom/miui/permission/RequiredPermissionsUtil;->RUNTIME_PERMISSIONS:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Long;

    if-nez p1, :cond_2

    goto :goto_0

    :cond_2
    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    cmp-long p1, v1, p2

    if-nez p1, :cond_1

    return v0

    :cond_3
    const/4 p0, 0x0

    return p0

    :cond_4
    return v0
.end method

.method private final H0(Ljava/lang/String;Ltj/d;)Ljava/lang/Object;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ltj/d<",
            "-",
            "Ljava/util/HashMap<",
            "Ljava/lang/Long;",
            "Ljava/lang/String;",
            ">;>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    instance-of v0, p2, Lcom/miui/permcenter/permissions/PermissionAppsModifyFragment$b;

    if-eqz v0, :cond_0

    move-object v0, p2

    check-cast v0, Lcom/miui/permcenter/permissions/PermissionAppsModifyFragment$b;

    iget v1, v0, Lcom/miui/permcenter/permissions/PermissionAppsModifyFragment$b;->c:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_0

    sub-int/2addr v1, v2

    iput v1, v0, Lcom/miui/permcenter/permissions/PermissionAppsModifyFragment$b;->c:I

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/miui/permcenter/permissions/PermissionAppsModifyFragment$b;

    invoke-direct {v0, p0, p2}, Lcom/miui/permcenter/permissions/PermissionAppsModifyFragment$b;-><init>(Lcom/miui/permcenter/permissions/PermissionAppsModifyFragment;Ltj/d;)V

    :goto_0
    iget-object p2, v0, Lcom/miui/permcenter/permissions/PermissionAppsModifyFragment$b;->a:Ljava/lang/Object;

    invoke-static {}, Luj/b;->c()Ljava/lang/Object;

    move-result-object v1

    iget v2, v0, Lcom/miui/permcenter/permissions/PermissionAppsModifyFragment$b;->c:I

    const/4 v3, 0x1

    if-eqz v2, :cond_2

    if-ne v2, v3, :cond_1

    invoke-static {p2}, Loj/n;->b(Ljava/lang/Object;)V

    goto :goto_1

    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_2
    invoke-static {p2}, Loj/n;->b(Ljava/lang/Object;)V

    invoke-static {}, Llk/w0;->b()Llk/d0;

    move-result-object p2

    new-instance v2, Lcom/miui/permcenter/permissions/PermissionAppsModifyFragment$c;

    const/4 v4, 0x0

    invoke-direct {v2, p0, p1, v4}, Lcom/miui/permcenter/permissions/PermissionAppsModifyFragment$c;-><init>(Lcom/miui/permcenter/permissions/PermissionAppsModifyFragment;Ljava/lang/String;Ltj/d;)V

    iput v3, v0, Lcom/miui/permcenter/permissions/PermissionAppsModifyFragment$b;->c:I

    invoke-static {p2, v2, v0}, Llk/g;->c(Ltj/g;Lak/p;Ltj/d;)Ljava/lang/Object;

    move-result-object p2

    if-ne p2, v1, :cond_3

    return-object v1

    :cond_3
    :goto_1
    const-string p1, "private suspend fun getP\u2026(context, mPkgName)\n    }"

    invoke-static {p2, p1}, Lbk/m;->d(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p2
.end method

.method private final L0(Landroid/content/Context;)Ljava/util/ArrayList;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sget-boolean v1, Lmiui/os/Build;->IS_INTERNATIONAL_BUILD:Z

    if-nez v1, :cond_3

    if-eqz p1, :cond_3

    iget-object v1, p0, Lcom/miui/permcenter/permissions/PermissionAppsModifyFragment;->f:Landroid/content/pm/PackageInfo;

    if-nez v1, :cond_0

    goto :goto_1

    :cond_0
    invoke-static {v1}, Lbk/m;->b(Ljava/lang/Object;)V

    iget-object v1, v1, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    invoke-static {v1}, Lx4/f1;->L(Landroid/content/pm/ApplicationInfo;)Z

    move-result v1

    if-nez v1, :cond_1

    return-object v0

    :cond_1
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p1

    :try_start_0
    iget-object v1, p0, Lcom/miui/permcenter/permissions/PermissionAppsModifyFragment;->f:Landroid/content/pm/PackageInfo;

    invoke-static {v1}, Lbk/m;->b(Ljava/lang/Object;)V

    iget-object v1, v1, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v1, v1, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-virtual {p1, v1}, Landroid/content/pm/PackageManager;->getPackagesForUid(I)[Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_3

    array-length v1, p1

    const/4 v2, 0x1

    if-le v1, v2, :cond_3

    invoke-static {p1}, Lbk/b;->a([Ljava/lang/Object;)Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {p0}, Lcom/miui/permcenter/permissions/PermissionAppsModifyFragment;->K0()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, v1}, Lbk/m;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    goto :goto_0

    :cond_2
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const-string p1, "AppPermissionModify"

    const-string v1, "addViewForShareUidApps error"

    invoke-static {p1, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    :goto_1
    return-object v0
.end method

.method private final M0(Ljava/lang/String;J)Z
    .locals 4

    sget-object v0, Lcom/miui/permission/PermissionManager;->doNotUseVirtualPermission:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    return v1

    :cond_0
    sget-object v0, Lcom/miui/permission/PermissionManager;->hidePartVirtualPermission:Ljava/util/HashMap;

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    const/4 v3, 0x0

    if-eqz v2, :cond_2

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p2

    invoke-virtual {v0, p2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/util/ArrayList;

    if-eqz p2, :cond_1

    invoke-virtual {p2, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    goto :goto_0

    :cond_1
    move v1, v3

    :goto_0
    return v1

    :cond_2
    return v3
.end method

.method private final N0()Z
    .locals 4

    iget-object v0, p0, Lcom/miui/permcenter/permissions/PermissionAppsModifyFragment;->c:Ljava/util/ArrayList;

    const-wide v1, 0x4000000000L

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/miui/permission/PermissionManager;->getInstance(Landroid/content/Context;)Lcom/miui/permission/PermissionManager;

    move-result-object v0

    iget-object v2, p0, Lcom/miui/permcenter/permissions/PermissionAppsModifyFragment;->c:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    const-string v2, "permissionIds[0]"

    invoke-static {v1, v2}, Lbk/m;->d(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v1, Ljava/lang/Number;

    invoke-virtual {v1}, Ljava/lang/Number;->longValue()J

    move-result-wide v1

    invoke-virtual {p0}, Lcom/miui/permcenter/permissions/PermissionAppsModifyFragment;->K0()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v1, v2, v3}, Lcom/miui/permission/PermissionManager;->supportAlwaysAllow(JLjava/lang/String;)Z

    move-result v1

    :goto_0
    return v1
.end method

.method private final O0()Z
    .locals 7

    iget-object v0, p0, Lcom/miui/permcenter/permissions/PermissionAppsModifyFragment;->c:Ljava/util/ArrayList;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    const-string v2, "permissionIds[0]"

    invoke-static {v0, v2}, Lbk/m;->d(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Ljava/lang/Number;

    invoke-virtual {v0}, Ljava/lang/Number;->longValue()J

    move-result-wide v3

    invoke-static {v3, v4}, Lxc/m;->d(J)Z

    move-result v0

    const/4 v3, 0x1

    if-eqz v0, :cond_7

    iget-object v0, p0, Lcom/miui/permcenter/permissions/PermissionAppsModifyFragment;->f:Landroid/content/pm/PackageInfo;

    invoke-static {v0}, Lbk/m;->b(Ljava/lang/Object;)V

    iget-object v0, v0, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    const/16 v2, 0x21

    if-ge v0, v2, :cond_6

    iget-object v0, p0, Lcom/miui/permcenter/permissions/PermissionAppsModifyFragment;->f:Landroid/content/pm/PackageInfo;

    invoke-static {v0}, Lbk/m;->b(Ljava/lang/Object;)V

    iget-object v0, v0, Landroid/content/pm/PackageInfo;->requestedPermissions:[Ljava/lang/String;

    if-eqz v0, :cond_2

    array-length v0, v0

    if-nez v0, :cond_0

    move v0, v3

    goto :goto_0

    :cond_0
    move v0, v1

    :goto_0
    if-eqz v0, :cond_1

    goto :goto_1

    :cond_1
    move v0, v1

    goto :goto_2

    :cond_2
    :goto_1
    move v0, v3

    :goto_2
    if-eqz v0, :cond_3

    goto :goto_5

    :cond_3
    iget-object v0, p0, Lcom/miui/permcenter/permissions/PermissionAppsModifyFragment;->f:Landroid/content/pm/PackageInfo;

    invoke-static {v0}, Lbk/m;->b(Ljava/lang/Object;)V

    iget-object v0, v0, Landroid/content/pm/PackageInfo;->requestedPermissions:[Ljava/lang/String;

    const-string v2, "mPackageInfo!!.requestedPermissions"

    invoke-static {v0, v2}, Lbk/m;->d(Ljava/lang/Object;Ljava/lang/String;)V

    array-length v2, v0

    move v4, v1

    :goto_3
    if-ge v4, v2, :cond_6

    aget-object v5, v0, v4

    const-string v6, "android.permission.READ_EXTERNAL_STORAGE"

    invoke-static {v6, v5}, Lbk/m;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_5

    const-string v6, "android.permission.WRITE_EXTERNAL_STORAGE"

    invoke-static {v6, v5}, Lbk/m;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_4

    goto :goto_4

    :cond_4
    add-int/lit8 v4, v4, 0x1

    goto :goto_3

    :cond_5
    :goto_4
    return v3

    :cond_6
    :goto_5
    return v1

    :cond_7
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/miui/permission/PermissionManager;->getInstance(Landroid/content/Context;)Lcom/miui/permission/PermissionManager;

    move-result-object v0

    iget-object v4, p0, Lcom/miui/permcenter/permissions/PermissionAppsModifyFragment;->c:Ljava/util/ArrayList;

    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    invoke-static {v4, v2}, Lbk/m;->d(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v4, Ljava/lang/Number;

    invoke-virtual {v4}, Ljava/lang/Number;->longValue()J

    move-result-wide v4

    invoke-virtual {v0, v4, v5}, Lcom/miui/permission/PermissionManager;->getPermissionForId(J)Lcom/miui/permission/PermissionInfo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/permission/PermissionInfo;->getFlags()I

    move-result v0

    and-int/lit8 v0, v0, 0x40

    if-eqz v0, :cond_8

    move v1, v3

    :cond_8
    return v1
.end method

.method private final P0()V
    .locals 7

    const-string v0, "category"

    invoke-virtual {p0, v0}, Landroidx/preference/PreferenceFragmentCompat;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v0

    invoke-static {v0}, Lbk/m;->b(Ljava/lang/Object;)V

    check-cast v0, Landroidx/preference/PreferenceCategory;

    iput-object v0, p0, Lcom/miui/permcenter/permissions/PermissionAppsModifyFragment;->i:Landroidx/preference/PreferenceCategory;

    const-string v0, "perm_detail_checkbox"

    invoke-virtual {p0, v0}, Landroidx/preference/PreferenceFragmentCompat;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v0

    invoke-static {v0}, Lbk/m;->b(Ljava/lang/Object;)V

    check-cast v0, Lmiuix/preference/CheckBoxPreference;

    iput-object v0, p0, Lcom/miui/permcenter/permissions/PermissionAppsModifyFragment;->j:Lmiuix/preference/CheckBoxPreference;

    iget-object v0, p0, Lcom/miui/permcenter/permissions/PermissionAppsModifyFragment;->c:Ljava/util/ArrayList;

    const-wide/16 v1, 0x20

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v3, p0, Lcom/miui/permcenter/permissions/PermissionAppsModifyFragment;->f:Landroid/content/pm/PackageInfo;

    invoke-static {v0, v3}, Lcom/miui/permcenter/o;->u(Landroid/content/Context;Landroid/content/pm/PackageInfo;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/miui/permcenter/permissions/PermissionAppsModifyFragment;->f:Landroid/content/pm/PackageInfo;

    if-eqz v0, :cond_0

    iget-object v0, v0, Landroid/content/pm/PackageInfo;->requestedPermissions:[Ljava/lang/String;

    goto :goto_0

    :cond_0
    move-object v0, v1

    :goto_0
    const-string v3, "android.permission.ACCESS_COARSE_LOCATION"

    invoke-static {v0, v3}, Lcom/miui/permission/PermissionManager$ArrayUtils;->contains([Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iput v2, p0, Lcom/miui/permcenter/permissions/PermissionAppsModifyFragment;->l:I

    goto/16 :goto_3

    :cond_1
    iget-object v0, p0, Lcom/miui/permcenter/permissions/PermissionAppsModifyFragment;->c:Ljava/util/ArrayList;

    const-wide v3, 0x4000000000L

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    const/4 v0, 0x5

    :goto_1
    iput v0, p0, Lcom/miui/permcenter/permissions/PermissionAppsModifyFragment;->l:I

    goto/16 :goto_3

    :cond_2
    iget-object v0, p0, Lcom/miui/permcenter/permissions/PermissionAppsModifyFragment;->c:Ljava/util/ArrayList;

    const-wide v3, 0x200000000000L

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_5

    iget-object v0, p0, Lcom/miui/permcenter/permissions/PermissionAppsModifyFragment;->c:Ljava/util/ArrayList;

    const-wide/16 v5, -0x3

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    goto :goto_2

    :cond_3
    iget-object v0, p0, Lcom/miui/permcenter/permissions/PermissionAppsModifyFragment;->c:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_4
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_7

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Long;

    sget-object v4, Lcom/miui/permission/PermissionManager;->virtualMap:Ljava/util/Map;

    invoke-interface {v4, v3}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4

    invoke-virtual {p0}, Lcom/miui/permcenter/permissions/PermissionAppsModifyFragment;->K0()Ljava/lang/String;

    move-result-object v4

    const-string v5, "permissionId"

    invoke-static {v3, v5}, Lbk/m;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v5

    invoke-direct {p0, v4, v5, v6}, Lcom/miui/permcenter/permissions/PermissionAppsModifyFragment;->M0(Ljava/lang/String;J)Z

    move-result v3

    if-nez v3, :cond_4

    const/4 v0, 0x2

    goto :goto_1

    :cond_5
    :goto_2
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    move-result-object v0

    iget-object v5, p0, Lcom/miui/permcenter/permissions/PermissionAppsModifyFragment;->f:Landroid/content/pm/PackageInfo;

    invoke-static {v5}, Lbk/m;->b(Ljava/lang/Object;)V

    iget-object v5, v5, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    invoke-static {v0, v5}, Lxc/m;->b(Landroid/content/Context;Landroid/content/pm/ApplicationInfo;)Lxc/m$a;

    move-result-object v0

    sget-object v5, Lxc/m$a;->a:Lxc/m$a;

    if-ne v0, v5, :cond_7

    iget-object v0, p0, Lcom/miui/permcenter/permissions/PermissionAppsModifyFragment;->c:Ljava/util/ArrayList;

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    const/4 v0, 0x4

    goto :goto_1

    :cond_6
    const/4 v0, 0x3

    goto :goto_1

    :cond_7
    :goto_3
    const-string v0, "app_management_for_independent_storage"

    invoke-virtual {p0, v0}, Landroidx/preference/PreferenceFragmentCompat;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v0

    check-cast v0, Lmiuix/preference/CheckBoxPreference;

    if-eqz v0, :cond_9

    invoke-virtual {v0, p0}, Landroidx/preference/Preference;->setOnPreferenceChangeListener(Landroidx/preference/Preference$c;)V

    iget-object v1, p0, Lcom/miui/permcenter/permissions/PermissionAppsModifyFragment;->n:Landroid/app/AppOpsManager;

    const/16 v3, 0x273f

    iget-object v4, p0, Lcom/miui/permcenter/permissions/PermissionAppsModifyFragment;->f:Landroid/content/pm/PackageInfo;

    invoke-static {v4}, Lbk/m;->b(Ljava/lang/Object;)V

    iget-object v4, v4, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v4, v4, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-virtual {p0}, Lcom/miui/permcenter/permissions/PermissionAppsModifyFragment;->K0()Ljava/lang/String;

    move-result-object v5

    invoke-static {v1, v3, v4, v5}, Landroid/app/AppOpsManagerCompat;->checkOpNoThrow(Landroid/app/AppOpsManager;IILjava/lang/String;)I

    move-result v1

    if-ne v1, v2, :cond_8

    goto :goto_4

    :cond_8
    const/4 v2, 0x0

    :goto_4
    invoke-virtual {v0, v2}, Landroidx/preference/TwoStatePreference;->setChecked(Z)V

    move-object v1, v0

    :cond_9
    iput-object v1, p0, Lcom/miui/permcenter/permissions/PermissionAppsModifyFragment;->k:Lmiuix/preference/CheckBoxPreference;

    return-void
.end method

.method private final Q0(I)Z
    .locals 4

    const/4 v0, 0x1

    const/4 v1, 0x0

    const/4 v2, 0x3

    if-eq p1, v2, :cond_0

    iget-object p1, p0, Lcom/miui/permcenter/permissions/PermissionAppsModifyFragment;->f:Landroid/content/pm/PackageInfo;

    invoke-static {p1}, Lbk/m;->b(Ljava/lang/Object;)V

    iget-object p1, p1, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget p1, p1, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    const/16 v2, 0x17

    if-ge p1, v2, :cond_0

    move p1, v0

    goto :goto_0

    :cond_0
    move p1, v1

    :goto_0
    if-eqz p1, :cond_2

    iget-object p1, p0, Lcom/miui/permcenter/permissions/PermissionAppsModifyFragment;->c:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Long;

    const-string v3, "permissionId"

    invoke-static {v2, v3}, Lbk/m;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-static {v2, v3}, Lcom/miui/permcenter/n;->q(J)Z

    move-result v2

    if-eqz v2, :cond_1

    return v0

    :cond_2
    return v1
.end method

.method private final R0()Z
    .locals 9

    iget-object v0, p0, Lcom/miui/permcenter/permissions/PermissionAppsModifyFragment;->f:Landroid/content/pm/PackageInfo;

    invoke-static {v0}, Lbk/m;->b(Ljava/lang/Object;)V

    iget-object v0, v0, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    const/4 v1, 0x0

    const/16 v2, 0x17

    if-ge v0, v2, :cond_0

    return v1

    :cond_0
    iget-object v0, p0, Lcom/miui/permcenter/permissions/PermissionAppsModifyFragment;->c:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    const-wide/16 v2, -0x3

    const/4 v4, 0x1

    if-nez v0, :cond_1

    goto :goto_0

    :cond_1
    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v5

    cmp-long v0, v5, v2

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/miui/permcenter/permissions/PermissionAppsModifyFragment;->f:Landroid/content/pm/PackageInfo;

    invoke-static {v0}, Lbk/m;->b(Ljava/lang/Object;)V

    iget-object v0, v0, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    const/16 v2, 0x21

    if-lt v0, v2, :cond_2

    invoke-static {}, Lcom/miui/permission/support/util/SdkLevel;->isAtLeastU()Z

    move-result v0

    if-eqz v0, :cond_2

    return v4

    :cond_2
    :goto_0
    iget-object v0, p0, Lcom/miui/permcenter/permissions/PermissionAppsModifyFragment;->c:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    const-string v2, "permissionIds[0]"

    invoke-static {v0, v2}, Lbk/m;->d(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Ljava/lang/Number;

    invoke-virtual {v0}, Ljava/lang/Number;->longValue()J

    move-result-wide v5

    invoke-static {v5, v6}, Lxc/m;->d(J)Z

    move-result v0

    if-eqz v0, :cond_3

    const-wide v2, 0x200000000000L

    goto :goto_1

    :cond_3
    iget-object v0, p0, Lcom/miui/permcenter/permissions/PermissionAppsModifyFragment;->c:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0, v2}, Lbk/m;->d(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Ljava/lang/Number;

    invoke-virtual {v0}, Ljava/lang/Number;->longValue()J

    move-result-wide v2

    :goto_1
    sget-object v0, Lcom/miui/permission/RequiredPermissionsUtil;->RUNTIME_PERMISSIONS:Ljava/util/Map;

    const-string v5, "RUNTIME_PERMISSIONS"

    invoke-static {v0, v5}, Lbk/m;->d(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v5, Ljava/util/LinkedHashMap;

    invoke-direct {v5}, Ljava/util/LinkedHashMap;-><init>()V

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_4
    :goto_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_7

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/Map$Entry;

    invoke-interface {v6}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Long;

    if-nez v7, :cond_5

    goto :goto_3

    :cond_5
    invoke-virtual {v7}, Ljava/lang/Long;->longValue()J

    move-result-wide v7

    cmp-long v7, v7, v2

    if-nez v7, :cond_6

    move v7, v4

    goto :goto_4

    :cond_6
    :goto_3
    move v7, v1

    :goto_4
    if-eqz v7, :cond_4

    invoke-interface {v6}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v7

    invoke-interface {v6}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {v5, v7, v6}, Ljava/util/AbstractMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2

    :cond_7
    sget-object v0, Lxc/u;->a:Lxc/u;

    invoke-virtual {v0}, Lxc/u;->i()Ljava/util/List;

    move-result-object v0

    invoke-interface {v5}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-static {v1}, Lqj/l;->y(Ljava/lang/Iterable;)Ljava/lang/Object;

    move-result-object v1

    invoke-static {v0, v1}, Lqj/l;->w(Ljava/lang/Iterable;Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method private final S0(I)V
    .locals 9

    new-instance v3, Landroid/util/ArrayMap;

    invoke-direct {v3}, Landroid/util/ArrayMap;-><init>()V

    iget-object v0, p0, Lcom/miui/permcenter/permissions/PermissionAppsModifyFragment;->c:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    move v5, v2

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Long;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-interface {v3, v4, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v6, p0, Lcom/miui/permcenter/permissions/PermissionAppsModifyFragment;->f:Landroid/content/pm/PackageInfo;

    invoke-static {v6}, Lbk/m;->b(Ljava/lang/Object;)V

    iget-object v6, v6, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v6, v6, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    const/16 v7, 0x21

    if-ge v6, v7, :cond_0

    const-string v6, "permissionId"

    invoke-static {v4, v6}, Lbk/m;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    invoke-static {v6, v7}, Lxc/m;->d(J)Z

    move-result v6

    if-nez v6, :cond_1

    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    invoke-static {v6, v7}, Lxc/m;->e(J)Z

    move-result v4

    if-eqz v4, :cond_0

    :cond_1
    move v5, v1

    goto :goto_0

    :cond_2
    sget-object p1, Lcom/miui/permcenter/permissions/e;->l:Lcom/miui/permcenter/permissions/e$a;

    invoke-virtual {p1}, Lcom/miui/permcenter/permissions/e$a;->a()Lcom/miui/permcenter/permissions/e;

    move-result-object v0

    iget-object p1, p0, Lcom/miui/permcenter/permissions/PermissionAppsModifyFragment;->q:Lcom/miui/permcenter/AppPermissionInfo;

    const-string v4, "appPermissionInfo"

    const/4 v6, 0x0

    if-nez p1, :cond_3

    invoke-static {v4}, Lbk/m;->r(Ljava/lang/String;)V

    move-object p1, v6

    :cond_3
    invoke-virtual {p1}, Lcom/miui/permcenter/AppPermissionInfo;->getPackageName()Ljava/lang/String;

    move-result-object p1

    const-string v7, "appPermissionInfo.packageName"

    invoke-static {p1, v7}, Lbk/m;->d(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v7, p0, Lcom/miui/permcenter/permissions/PermissionAppsModifyFragment;->q:Lcom/miui/permcenter/AppPermissionInfo;

    if-nez v7, :cond_4

    invoke-static {v4}, Lbk/m;->r(Ljava/lang/String;)V

    move-object v7, v6

    :cond_4
    invoke-virtual {v7}, Lcom/miui/permcenter/AppPermissionInfo;->getUid()I

    move-result v4

    invoke-static {v4}, Lx4/z1;->m(I)I

    move-result v4

    iget v7, p0, Lcom/miui/permcenter/permissions/PermissionAppsModifyFragment;->l:I

    const/4 v8, 0x2

    if-ne v7, v8, :cond_6

    iget-object v7, p0, Lcom/miui/permcenter/permissions/PermissionAppsModifyFragment;->j:Lmiuix/preference/CheckBoxPreference;

    if-nez v7, :cond_5

    const-string v7, "checkBoxPreference"

    invoke-static {v7}, Lbk/m;->r(Ljava/lang/String;)V

    goto :goto_1

    :cond_5
    move-object v6, v7

    :goto_1
    invoke-virtual {v6}, Landroidx/preference/TwoStatePreference;->isChecked()Z

    move-result v6

    if-eqz v6, :cond_6

    move v6, v1

    goto :goto_2

    :cond_6
    move v6, v2

    :goto_2
    move-object v1, p1

    move v2, v4

    move v4, v6

    invoke-virtual/range {v0 .. v5}, Lcom/miui/permcenter/permissions/e;->s(Ljava/lang/String;ILandroid/util/ArrayMap;ZZ)V

    return-void
.end method

.method private final T0(I)V
    .locals 1

    iput p1, p0, Lcom/miui/permcenter/permissions/PermissionAppsModifyFragment;->h:I

    invoke-direct {p0}, Lcom/miui/permcenter/permissions/PermissionAppsModifyFragment;->p1()V

    iget-object p1, p0, Lcom/miui/permcenter/permissions/PermissionAppsModifyFragment;->b:Lcom/miui/permcenter/permissions/RadioButtonPreference;

    if-eqz p1, :cond_0

    iget v0, p0, Lcom/miui/permcenter/permissions/PermissionAppsModifyFragment;->h:I

    invoke-direct {p0, p1, v0}, Lcom/miui/permcenter/permissions/PermissionAppsModifyFragment;->b1(Lcom/miui/permcenter/permissions/RadioButtonPreference;I)V

    :cond_0
    iget p1, p0, Lcom/miui/permcenter/permissions/PermissionAppsModifyFragment;->h:I

    invoke-direct {p0, p1}, Lcom/miui/permcenter/permissions/PermissionAppsModifyFragment;->S0(I)V

    return-void
.end method

.method private final U0(Lak/a;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lak/a<",
            "Loj/t;",
            ">;)V"
        }
    .end annotation

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    new-instance v1, Lcc/y;

    invoke-direct {v1, p1}, Lcc/y;-><init>(Lak/a;)V

    const-wide/16 v2, 0x14

    invoke-virtual {v0, v1, v2, v3}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_0
    return-void
.end method

.method private static final V0(Lak/a;)V
    .locals 1

    const-string v0, "$tmp0"

    invoke-static {p0, v0}, Lbk/m;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {p0}, Lak/a;->invoke()Ljava/lang/Object;

    return-void
.end method

.method private final W0(Z)V
    .locals 8

    iget-object v0, p0, Lcom/miui/permcenter/permissions/PermissionAppsModifyFragment;->m:Landroid/app/ActivityManager;

    invoke-virtual {p0}, Lcom/miui/permcenter/permissions/PermissionAppsModifyFragment;->K0()Ljava/lang/String;

    move-result-object v1

    iget v2, p0, Lcom/miui/permcenter/permissions/PermissionAppsModifyFragment;->e:I

    invoke-static {v0, v1, v2}, Lcom/miui/appmanager/AppManageUtils;->m(Landroid/app/ActivityManager;Ljava/lang/String;I)V

    new-instance v0, Lmiuix/appcompat/app/ProgressDialog;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    invoke-direct {v0, v1}, Lmiuix/appcompat/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    if-eqz p1, :cond_0

    const v1, 0x7f120177

    goto :goto_0

    :cond_0
    const v1, 0x7f120176

    :goto_0
    invoke-virtual {p0, v1}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lmiuix/appcompat/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    const/16 v1, 0x64

    invoke-virtual {v0, v1}, Lmiuix/appcompat/app/ProgressDialog;->setMax(I)V

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lmiuix/appcompat/app/ProgressDialog;->setProgressStyle(I)V

    invoke-virtual {v0}, Lmiuix/appcompat/app/AlertDialog;->show()V

    const/16 v1, 0xa

    invoke-virtual {v0, v1}, Lmiuix/appcompat/app/ProgressDialog;->setProgress(I)V

    invoke-static {p0}, Landroidx/lifecycle/w;->a(Landroidx/lifecycle/v;)Landroidx/lifecycle/o;

    move-result-object v2

    invoke-static {}, Llk/w0;->b()Llk/d0;

    move-result-object v3

    const/4 v4, 0x0

    new-instance v5, Lcom/miui/permcenter/permissions/PermissionAppsModifyFragment$f;

    const/4 v1, 0x0

    invoke-direct {v5, p1, p0, v0, v1}, Lcom/miui/permcenter/permissions/PermissionAppsModifyFragment$f;-><init>(ZLcom/miui/permcenter/permissions/PermissionAppsModifyFragment;Lmiuix/appcompat/app/ProgressDialog;Ltj/d;)V

    const/4 v6, 0x2

    const/4 v7, 0x0

    invoke-static/range {v2 .. v7}, Llk/g;->b(Llk/i0;Ltj/g;Llk/k0;Lak/p;ILjava/lang/Object;)Llk/s1;

    return-void
.end method

.method private final X0(I)V
    .locals 5

    new-instance v0, Lmiuix/appcompat/app/AlertDialog$Builder;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lmiuix/appcompat/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    iget-object v1, p0, Lcom/miui/permcenter/permissions/PermissionAppsModifyFragment;->o:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lmiuix/appcompat/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Lmiuix/appcompat/app/AlertDialog$Builder;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/permcenter/permissions/PermissionAppsModifyFragment;->p:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lmiuix/appcompat/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Lmiuix/appcompat/app/AlertDialog$Builder;

    move-result-object v0

    new-instance v1, Lcc/z;

    invoke-direct {v1, p0}, Lcc/z;-><init>(Lcom/miui/permcenter/permissions/PermissionAppsModifyFragment;)V

    const v2, 0x7f1211ca

    invoke-virtual {v0, v2, v1}, Lmiuix/appcompat/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Lmiuix/appcompat/app/AlertDialog$Builder;

    move-result-object v0

    new-instance v1, Lcc/a0;

    invoke-direct {v1, p0}, Lcc/a0;-><init>(Lcom/miui/permcenter/permissions/PermissionAppsModifyFragment;)V

    invoke-virtual {v0, v1}, Lmiuix/appcompat/app/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Lmiuix/appcompat/app/AlertDialog$Builder;

    move-result-object v0

    new-instance v1, Lcc/q;

    invoke-direct {v1, p0, p1}, Lcc/q;-><init>(Lcom/miui/permcenter/permissions/PermissionAppsModifyFragment;I)V

    const p1, 0x7f1211cb

    invoke-virtual {v0, p1, v1}, Lmiuix/appcompat/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Lmiuix/appcompat/app/AlertDialog$Builder;

    move-result-object p1

    iget-object v0, p0, Lcom/miui/permcenter/permissions/PermissionAppsModifyFragment;->c:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Long;

    sget-object v2, Lcom/miui/permission/PermissionManager;->virtualMap:Ljava/util/Map;

    invoke-interface {v2, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {p0}, Lcom/miui/permcenter/permissions/PermissionAppsModifyFragment;->K0()Ljava/lang/String;

    move-result-object v2

    const-string v3, "permissionId"

    invoke-static {v1, v3}, Lbk/m;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    invoke-direct {p0, v2, v3, v4}, Lcom/miui/permcenter/permissions/PermissionAppsModifyFragment;->M0(Ljava/lang/String;J)Z

    move-result v1

    if-nez v1, :cond_0

    const v0, 0x7f1211cc

    invoke-virtual {p1, v0}, Lmiuix/appcompat/app/AlertDialog$Builder;->setComment(I)Lmiuix/appcompat/app/AlertDialog$Builder;

    :cond_1
    invoke-virtual {p1}, Lmiuix/appcompat/app/AlertDialog$Builder;->create()Lmiuix/appcompat/app/AlertDialog;

    move-result-object p1

    invoke-virtual {p1}, Lmiuix/appcompat/app/AlertDialog;->show()V

    return-void
.end method

.method private static final Y0(Lcom/miui/permcenter/permissions/PermissionAppsModifyFragment;Landroid/content/DialogInterface;I)V
    .locals 0

    const-string p1, "this$0"

    invoke-static {p0, p1}, Lbk/m;->e(Ljava/lang/Object;Ljava/lang/String;)V

    iget p1, p0, Lcom/miui/permcenter/permissions/PermissionAppsModifyFragment;->h:I

    invoke-direct {p0, p1}, Lcom/miui/permcenter/permissions/PermissionAppsModifyFragment;->T0(I)V

    return-void
.end method

.method private static final Z0(Lcom/miui/permcenter/permissions/PermissionAppsModifyFragment;Landroid/content/DialogInterface;)V
    .locals 0

    const-string p1, "this$0"

    invoke-static {p0, p1}, Lbk/m;->e(Ljava/lang/Object;Ljava/lang/String;)V

    iget p1, p0, Lcom/miui/permcenter/permissions/PermissionAppsModifyFragment;->h:I

    invoke-direct {p0, p1}, Lcom/miui/permcenter/permissions/PermissionAppsModifyFragment;->T0(I)V

    return-void
.end method

.method public static synthetic a0(Lcom/miui/permcenter/permissions/PermissionAppsModifyFragment;Landroid/content/DialogInterface;I)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/miui/permcenter/permissions/PermissionAppsModifyFragment;->k1(Lcom/miui/permcenter/permissions/PermissionAppsModifyFragment;Landroid/content/DialogInterface;I)V

    return-void
.end method

.method private static final a1(Lcom/miui/permcenter/permissions/PermissionAppsModifyFragment;ILandroid/content/DialogInterface;I)V
    .locals 11

    const-string p2, "this$0"

    invoke-static {p0, p2}, Lbk/m;->e(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p2, p0, Lcom/miui/permcenter/permissions/PermissionAppsModifyFragment;->c:Ljava/util/ArrayList;

    invoke-virtual {p2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :cond_0
    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result p3

    if-eqz p3, :cond_7

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ljava/lang/Long;

    const-string v0, "permissionId"

    invoke-static {p3, v0}, Lbk/m;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p3}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    invoke-static {v0, v1}, Lxc/m;->d(J)Z

    move-result v0

    const-string v1, "appPermissionInfo"

    const-string v2, "requireContext()"

    const/4 v3, 0x0

    if-nez v0, :cond_5

    invoke-virtual {p3}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    invoke-static {v4, v5}, Lxc/m;->e(J)Z

    move-result v0

    if-eqz v0, :cond_1

    goto/16 :goto_3

    :cond_1
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {v4, v2}, Lbk/m;->d(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/miui/permcenter/permissions/PermissionAppsModifyFragment;->q:Lcom/miui/permcenter/AppPermissionInfo;

    if-nez v0, :cond_2

    invoke-static {v1}, Lbk/m;->r(Ljava/lang/String;)V

    move-object v0, v3

    :cond_2
    invoke-virtual {v0}, Lcom/miui/permcenter/AppPermissionInfo;->getPackageName()Ljava/lang/String;

    move-result-object v5

    const-string v0, "appPermissionInfo.packageName"

    invoke-static {v5, v0}, Lbk/m;->d(Ljava/lang/Object;Ljava/lang/String;)V

    iget v6, p0, Lcom/miui/permcenter/permissions/PermissionAppsModifyFragment;->e:I

    invoke-virtual {p3}, Ljava/lang/Long;->longValue()J

    move-result-wide v7

    move v9, p1

    invoke-static/range {v4 .. v9}, Lxc/u;->B(Landroid/content/Context;Ljava/lang/String;IJI)V

    sget-object v0, Lcom/miui/permission/PermissionManager;->virtualMap:Ljava/util/Map;

    invoke-interface {v0, p3}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_4

    invoke-virtual {p0}, Lcom/miui/permcenter/permissions/PermissionAppsModifyFragment;->K0()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    invoke-direct {p0, v0, v4, v5}, Lcom/miui/permcenter/permissions/PermissionAppsModifyFragment;->M0(Ljava/lang/String;J)Z

    move-result v0

    if-nez v0, :cond_4

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/miui/permission/PermissionManager;->getInstance(Landroid/content/Context;)Lcom/miui/permission/PermissionManager;

    move-result-object v4

    iget v5, p0, Lcom/miui/permcenter/permissions/PermissionAppsModifyFragment;->e:I

    invoke-virtual {p3}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    const/4 v8, 0x7

    const/4 v9, 0x2

    new-array v10, v2, [Ljava/lang/String;

    invoke-virtual {p0}, Lcom/miui/permcenter/permissions/PermissionAppsModifyFragment;->K0()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v10, v1

    invoke-static/range {v4 .. v10}, Lcom/miui/permcenter/compact/PermissionManagerCompat;->setApplicationPermissionWithVirtual(Lcom/miui/permission/PermissionManager;IJII[Ljava/lang/String;)V

    iget-object v0, p0, Lcom/miui/permcenter/permissions/PermissionAppsModifyFragment;->j:Lmiuix/preference/CheckBoxPreference;

    if-nez v0, :cond_3

    const-string v0, "checkBoxPreference"

    invoke-static {v0}, Lbk/m;->r(Ljava/lang/String;)V

    goto :goto_1

    :cond_3
    move-object v3, v0

    :goto_1
    invoke-virtual {v3, v2}, Landroidx/preference/TwoStatePreference;->setChecked(Z)V

    goto :goto_2

    :cond_4
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/miui/permission/PermissionManager;->getInstance(Landroid/content/Context;)Lcom/miui/permission/PermissionManager;

    move-result-object v3

    iget v4, p0, Lcom/miui/permcenter/permissions/PermissionAppsModifyFragment;->e:I

    invoke-virtual {p3}, Ljava/lang/Long;->longValue()J

    move-result-wide v5

    const/4 v8, 0x2

    new-array v9, v2, [Ljava/lang/String;

    invoke-virtual {p0}, Lcom/miui/permcenter/permissions/PermissionAppsModifyFragment;->K0()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v9, v1

    move v7, p1

    invoke-static/range {v3 .. v9}, Lcom/miui/permcenter/compact/PermissionManagerCompat;->setApplicationPermissionWithVirtual(Lcom/miui/permission/PermissionManager;IJII[Ljava/lang/String;)V

    :goto_2
    iget-object v0, p0, Lcom/miui/permcenter/permissions/PermissionAppsModifyFragment;->c:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    sub-int/2addr v1, v2

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0, p3}, Lbk/m;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p3

    if-eqz p3, :cond_0

    invoke-direct {p0, p1}, Lcom/miui/permcenter/permissions/PermissionAppsModifyFragment;->T0(I)V

    goto/16 :goto_0

    :cond_5
    :goto_3
    sget-object v0, Lxc/u;->a:Lxc/u;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    move-result-object p2

    invoke-static {p2, v2}, Lbk/m;->d(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v2, p0, Lcom/miui/permcenter/permissions/PermissionAppsModifyFragment;->q:Lcom/miui/permcenter/AppPermissionInfo;

    if-nez v2, :cond_6

    invoke-static {v1}, Lbk/m;->r(Ljava/lang/String;)V

    move-object v2, v3

    :cond_6
    iget-object v3, p0, Lcom/miui/permcenter/permissions/PermissionAppsModifyFragment;->f:Landroid/content/pm/PackageInfo;

    invoke-static {v3}, Lbk/m;->b(Ljava/lang/Object;)V

    iget v4, p0, Lcom/miui/permcenter/permissions/PermissionAppsModifyFragment;->e:I

    invoke-virtual {p3}, Ljava/lang/Long;->longValue()J

    move-result-wide v5

    new-instance v8, Lcom/miui/permcenter/permissions/PermissionAppsModifyFragment$g;

    invoke-direct {v8, p0, p1}, Lcom/miui/permcenter/permissions/PermissionAppsModifyFragment$g;-><init>(Lcom/miui/permcenter/permissions/PermissionAppsModifyFragment;I)V

    move-object v1, p2

    move v7, p1

    invoke-virtual/range {v0 .. v8}, Lxc/u;->u(Landroid/content/Context;Lcom/miui/permcenter/AppPermissionInfo;Landroid/content/pm/PackageInfo;IJILxc/b;)V

    :cond_7
    return-void
.end method

.method public static synthetic b0(Lcom/miui/permcenter/permissions/PermissionAppsModifyFragment;ILandroid/content/DialogInterface;I)V
    .locals 0

    invoke-static {p0, p1, p2, p3}, Lcom/miui/permcenter/permissions/PermissionAppsModifyFragment;->a1(Lcom/miui/permcenter/permissions/PermissionAppsModifyFragment;ILandroid/content/DialogInterface;I)V

    return-void
.end method

.method private final b1(Lcom/miui/permcenter/permissions/RadioButtonPreference;I)V
    .locals 2

    const/4 v0, 0x1

    if-eq p2, v0, :cond_3

    const/4 v1, 0x2

    if-eq p2, v1, :cond_2

    const/4 v1, 0x3

    if-eq p2, v1, :cond_1

    const/4 v1, 0x6

    if-eq p2, v1, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p1, v0}, Lcom/miui/permcenter/permissions/RadioButtonPreference;->h(Z)V

    goto :goto_0

    :cond_1
    invoke-virtual {p1, v0}, Lcom/miui/permcenter/permissions/RadioButtonPreference;->d(Z)V

    goto :goto_0

    :cond_2
    invoke-virtual {p1, v0}, Lcom/miui/permcenter/permissions/RadioButtonPreference;->k(Z)V

    goto :goto_0

    :cond_3
    invoke-virtual {p1, v0}, Lcom/miui/permcenter/permissions/RadioButtonPreference;->f(Z)V

    :goto_0
    return-void
.end method

.method public static synthetic c0(Lcom/miui/permcenter/permissions/PermissionAppsModifyFragment;ILandroid/content/DialogInterface;I)V
    .locals 0

    invoke-static {p0, p1, p2, p3}, Lcom/miui/permcenter/permissions/PermissionAppsModifyFragment;->h1(Lcom/miui/permcenter/permissions/PermissionAppsModifyFragment;ILandroid/content/DialogInterface;I)V

    return-void
.end method

.method private final c1(Lcom/miui/permcenter/permissions/PermTipsPreference;Ltj/d;)Ljava/lang/Object;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/miui/permcenter/permissions/PermTipsPreference;",
            "Ltj/d<",
            "-",
            "Loj/t;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    instance-of v0, p2, Lcom/miui/permcenter/permissions/PermissionAppsModifyFragment$h;

    if-eqz v0, :cond_0

    move-object v0, p2

    check-cast v0, Lcom/miui/permcenter/permissions/PermissionAppsModifyFragment$h;

    iget v1, v0, Lcom/miui/permcenter/permissions/PermissionAppsModifyFragment$h;->e:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_0

    sub-int/2addr v1, v2

    iput v1, v0, Lcom/miui/permcenter/permissions/PermissionAppsModifyFragment$h;->e:I

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/miui/permcenter/permissions/PermissionAppsModifyFragment$h;

    invoke-direct {v0, p0, p2}, Lcom/miui/permcenter/permissions/PermissionAppsModifyFragment$h;-><init>(Lcom/miui/permcenter/permissions/PermissionAppsModifyFragment;Ltj/d;)V

    :goto_0
    iget-object p2, v0, Lcom/miui/permcenter/permissions/PermissionAppsModifyFragment$h;->c:Ljava/lang/Object;

    invoke-static {}, Luj/b;->c()Ljava/lang/Object;

    move-result-object v1

    iget v2, v0, Lcom/miui/permcenter/permissions/PermissionAppsModifyFragment$h;->e:I

    const/4 v3, 0x1

    if-eqz v2, :cond_2

    if-ne v2, v3, :cond_1

    iget-object p1, v0, Lcom/miui/permcenter/permissions/PermissionAppsModifyFragment$h;->b:Ljava/lang/Object;

    check-cast p1, Lcom/miui/permcenter/permissions/PermTipsPreference;

    iget-object v0, v0, Lcom/miui/permcenter/permissions/PermissionAppsModifyFragment$h;->a:Ljava/lang/Object;

    check-cast v0, Lcom/miui/permcenter/permissions/PermissionAppsModifyFragment;

    invoke-static {p2}, Loj/n;->b(Ljava/lang/Object;)V

    goto :goto_1

    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_2
    invoke-static {p2}, Loj/n;->b(Ljava/lang/Object;)V

    invoke-virtual {p0}, Lcom/miui/permcenter/permissions/PermissionAppsModifyFragment;->K0()Ljava/lang/String;

    move-result-object p2

    iput-object p0, v0, Lcom/miui/permcenter/permissions/PermissionAppsModifyFragment$h;->a:Ljava/lang/Object;

    iput-object p1, v0, Lcom/miui/permcenter/permissions/PermissionAppsModifyFragment$h;->b:Ljava/lang/Object;

    iput v3, v0, Lcom/miui/permcenter/permissions/PermissionAppsModifyFragment$h;->e:I

    invoke-direct {p0, p2, v0}, Lcom/miui/permcenter/permissions/PermissionAppsModifyFragment;->H0(Ljava/lang/String;Ltj/d;)Ljava/lang/Object;

    move-result-object p2

    if-ne p2, v1, :cond_3

    return-object v1

    :cond_3
    move-object v0, p0

    :goto_1
    check-cast p2, Ljava/util/HashMap;

    iget-object v1, v0, Lcom/miui/permcenter/permissions/PermissionAppsModifyFragment;->c:Ljava/util/ArrayList;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/String;

    const-string v1, ""

    if-eqz p2, :cond_4

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_4

    invoke-static {p2}, Ljk/f;->t0(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_4

    goto :goto_2

    :cond_4
    move-object p2, v1

    :goto_2
    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-direct {v0, v4}, Lcom/miui/permcenter/permissions/PermissionAppsModifyFragment;->L0(Landroid/content/Context;)Ljava/util/ArrayList;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_3
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_5

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1, v5}, Lx4/f1;->O(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_3

    :cond_5
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_7

    sget-object v4, Lbk/b0;->a:Lbk/b0;

    const v4, 0x7f12163e

    invoke-virtual {v0, v4}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v4

    const-string v5, "getString(R.string.share_uid_sec)"

    invoke-static {v4, v5}, Lbk/m;->d(Ljava/lang/Object;Ljava/lang/String;)V

    new-array v5, v3, [Ljava/lang/Object;

    aput-object v1, v5, v2

    invoke-static {v5, v3}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v1

    invoke-static {v4, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    const-string v4, "format(format, *args)"

    invoke-static {v1, v4}, Lbk/m;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_6

    const v5, 0x7f12064a

    invoke-virtual {v0, v5}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    const-string v5, "getString(R.string.desc_share_uid_sec)"

    invoke-static {v0, v5}, Lbk/m;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v5, 0x2

    new-array v6, v5, [Ljava/lang/Object;

    aput-object p2, v6, v2

    aput-object v1, v6, v3

    invoke-static {v6, v5}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object p2

    invoke-static {v0, p2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-static {p2, v4}, Lbk/m;->d(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_4

    :cond_6
    move-object p2, v1

    :cond_7
    :goto_4
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_8

    invoke-virtual {p1, p2}, Landroidx/preference/Preference;->setTitle(Ljava/lang/CharSequence;)V

    invoke-virtual {p1, v3}, Landroidx/preference/Preference;->setVisible(Z)V

    goto :goto_5

    :cond_8
    invoke-virtual {p1, v2}, Landroidx/preference/Preference;->setVisible(Z)V

    :goto_5
    sget-object p1, Loj/t;->a:Loj/t;

    return-object p1
.end method

.method public static synthetic d0(Lcom/miui/permcenter/permissions/PermissionAppsModifyFragment;Landroid/content/DialogInterface;I)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/miui/permcenter/permissions/PermissionAppsModifyFragment;->g1(Lcom/miui/permcenter/permissions/PermissionAppsModifyFragment;Landroid/content/DialogInterface;I)V

    return-void
.end method

.method public static synthetic e0(ZLbk/y;J)Z
    .locals 0

    invoke-static {p0, p1, p2, p3}, Lcom/miui/permcenter/permissions/PermissionAppsModifyFragment;->G0(ZLbk/y;J)Z

    move-result p0

    return p0
.end method

.method public static synthetic f0(Lmiuix/preference/CheckBoxPreference;Lcom/miui/permcenter/permissions/PermissionAppsModifyFragment;Landroidx/preference/Preference;Ljava/lang/Object;)Z
    .locals 0

    invoke-static {p0, p1, p2, p3}, Lcom/miui/permcenter/permissions/PermissionAppsModifyFragment;->o1(Lmiuix/preference/CheckBoxPreference;Lcom/miui/permcenter/permissions/PermissionAppsModifyFragment;Landroidx/preference/Preference;Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method private final f1(I)V
    .locals 3

    new-instance v0, Lmiuix/appcompat/app/AlertDialog$Builder;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lmiuix/appcompat/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v1, 0x7f120f4a

    invoke-virtual {v0, v1}, Lmiuix/appcompat/app/AlertDialog$Builder;->setMessage(I)Lmiuix/appcompat/app/AlertDialog$Builder;

    move-result-object v0

    new-instance v1, Lcc/u;

    invoke-direct {v1, p0}, Lcc/u;-><init>(Lcom/miui/permcenter/permissions/PermissionAppsModifyFragment;)V

    const v2, 0x7f120499

    invoke-virtual {v0, v2, v1}, Lmiuix/appcompat/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Lmiuix/appcompat/app/AlertDialog$Builder;

    move-result-object v0

    new-instance v1, Lcc/v;

    invoke-direct {v1, p0, p1}, Lcc/v;-><init>(Lcom/miui/permcenter/permissions/PermissionAppsModifyFragment;I)V

    const p1, 0x7f120f48

    invoke-virtual {v0, p1, v1}, Lmiuix/appcompat/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Lmiuix/appcompat/app/AlertDialog$Builder;

    move-result-object p1

    new-instance v0, Lcc/w;

    invoke-direct {v0, p0}, Lcc/w;-><init>(Lcom/miui/permcenter/permissions/PermissionAppsModifyFragment;)V

    invoke-virtual {p1, v0}, Lmiuix/appcompat/app/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Lmiuix/appcompat/app/AlertDialog$Builder;

    move-result-object p1

    invoke-virtual {p1}, Lmiuix/appcompat/app/AlertDialog$Builder;->show()Lmiuix/appcompat/app/AlertDialog;

    return-void
.end method

.method public static synthetic g0(Lcom/miui/permcenter/permissions/PermissionAppsModifyFragment;Landroid/content/DialogInterface;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/miui/permcenter/permissions/PermissionAppsModifyFragment;->i1(Lcom/miui/permcenter/permissions/PermissionAppsModifyFragment;Landroid/content/DialogInterface;)V

    return-void
.end method

.method private static final g1(Lcom/miui/permcenter/permissions/PermissionAppsModifyFragment;Landroid/content/DialogInterface;I)V
    .locals 0

    const-string p1, "this$0"

    invoke-static {p0, p1}, Lbk/m;->e(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/miui/permcenter/permissions/PermissionAppsModifyFragment;->b:Lcom/miui/permcenter/permissions/RadioButtonPreference;

    if-eqz p1, :cond_0

    iget p2, p0, Lcom/miui/permcenter/permissions/PermissionAppsModifyFragment;->h:I

    invoke-direct {p0, p1, p2}, Lcom/miui/permcenter/permissions/PermissionAppsModifyFragment;->b1(Lcom/miui/permcenter/permissions/RadioButtonPreference;I)V

    :cond_0
    return-void
.end method

.method public static synthetic h0(Lcom/miui/permcenter/permissions/PermissionAppsModifyFragment;Landroid/content/DialogInterface;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/miui/permcenter/permissions/PermissionAppsModifyFragment;->Z0(Lcom/miui/permcenter/permissions/PermissionAppsModifyFragment;Landroid/content/DialogInterface;)V

    return-void
.end method

.method private static final h1(Lcom/miui/permcenter/permissions/PermissionAppsModifyFragment;ILandroid/content/DialogInterface;I)V
    .locals 6

    const-string p2, "this$0"

    invoke-static {p0, p2}, Lbk/m;->e(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p2, p0, Lcom/miui/permcenter/permissions/PermissionAppsModifyFragment;->c:Ljava/util/ArrayList;

    invoke-virtual {p2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :cond_0
    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result p3

    if-eqz p3, :cond_2

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ljava/lang/Long;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "requireContext()"

    invoke-static {v0, v1}, Lbk/m;->d(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/miui/permcenter/permissions/PermissionAppsModifyFragment;->q:Lcom/miui/permcenter/AppPermissionInfo;

    if-nez v1, :cond_1

    const-string v1, "appPermissionInfo"

    invoke-static {v1}, Lbk/m;->r(Ljava/lang/String;)V

    const/4 v1, 0x0

    :cond_1
    invoke-virtual {v1}, Lcom/miui/permcenter/AppPermissionInfo;->getPackageName()Ljava/lang/String;

    move-result-object v1

    const-string v2, "appPermissionInfo.packageName"

    invoke-static {v1, v2}, Lbk/m;->d(Ljava/lang/Object;Ljava/lang/String;)V

    iget v2, p0, Lcom/miui/permcenter/permissions/PermissionAppsModifyFragment;->e:I

    const-string v3, "permissionId"

    invoke-static {p3, v3}, Lbk/m;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p3}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    move v5, p1

    invoke-static/range {v0 .. v5}, Lxc/u;->B(Landroid/content/Context;Ljava/lang/String;IJI)V

    invoke-virtual {p3}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    const/4 v2, 0x1

    invoke-direct {p0, v0, v1, p1, v2}, Lcom/miui/permcenter/permissions/PermissionAppsModifyFragment;->q1(JIZ)V

    iget-object v0, p0, Lcom/miui/permcenter/permissions/PermissionAppsModifyFragment;->c:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    sub-int/2addr v1, v2

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0, p3}, Lbk/m;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p3

    if-eqz p3, :cond_0

    invoke-direct {p0, p1}, Lcom/miui/permcenter/permissions/PermissionAppsModifyFragment;->T0(I)V

    goto :goto_0

    :cond_2
    return-void
.end method

.method public static synthetic i0(Lak/a;)V
    .locals 0

    invoke-static {p0}, Lcom/miui/permcenter/permissions/PermissionAppsModifyFragment;->V0(Lak/a;)V

    return-void
.end method

.method private static final i1(Lcom/miui/permcenter/permissions/PermissionAppsModifyFragment;Landroid/content/DialogInterface;)V
    .locals 1

    const-string p1, "this$0"

    invoke-static {p0, p1}, Lbk/m;->e(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/miui/permcenter/permissions/PermissionAppsModifyFragment;->b:Lcom/miui/permcenter/permissions/RadioButtonPreference;

    if-eqz p1, :cond_0

    iget v0, p0, Lcom/miui/permcenter/permissions/PermissionAppsModifyFragment;->h:I

    invoke-direct {p0, p1, v0}, Lcom/miui/permcenter/permissions/PermissionAppsModifyFragment;->b1(Lcom/miui/permcenter/permissions/RadioButtonPreference;I)V

    :cond_0
    return-void
.end method

.method public static synthetic j0(Lcom/miui/permcenter/permissions/PermissionAppsModifyFragment;Landroid/content/DialogInterface;I)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/miui/permcenter/permissions/PermissionAppsModifyFragment;->Y0(Lcom/miui/permcenter/permissions/PermissionAppsModifyFragment;Landroid/content/DialogInterface;I)V

    return-void
.end method

.method private final j1(Z)V
    .locals 2

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lcom/miui/permcenter/permissions/PermissionAppsModifyFragment;->W0(Z)V

    goto :goto_0

    :cond_0
    new-instance p1, Lmiuix/appcompat/app/AlertDialog$Builder;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    const v1, 0x7f130024

    invoke-direct {p1, v0, v1}, Lmiuix/appcompat/app/AlertDialog$Builder;-><init>(Landroid/content/Context;I)V

    const v0, 0x7f1219ef

    invoke-virtual {p1, v0}, Lmiuix/appcompat/app/AlertDialog$Builder;->setTitle(I)Lmiuix/appcompat/app/AlertDialog$Builder;

    move-result-object p1

    const v0, 0x7f120175

    invoke-virtual {p1, v0}, Lmiuix/appcompat/app/AlertDialog$Builder;->setMessage(I)Lmiuix/appcompat/app/AlertDialog$Builder;

    move-result-object p1

    const v0, 0x7f120156

    new-instance v1, Lcc/p;

    invoke-direct {v1, p0}, Lcc/p;-><init>(Lcom/miui/permcenter/permissions/PermissionAppsModifyFragment;)V

    invoke-virtual {p1, v0, v1}, Lmiuix/appcompat/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Lmiuix/appcompat/app/AlertDialog$Builder;

    move-result-object p1

    const v0, 0x7f120157

    new-instance v1, Lcc/s;

    invoke-direct {v1, p0}, Lcc/s;-><init>(Lcom/miui/permcenter/permissions/PermissionAppsModifyFragment;)V

    invoke-virtual {p1, v0, v1}, Lmiuix/appcompat/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Lmiuix/appcompat/app/AlertDialog$Builder;

    move-result-object p1

    new-instance v0, Lcc/t;

    invoke-direct {v0, p0}, Lcc/t;-><init>(Lcom/miui/permcenter/permissions/PermissionAppsModifyFragment;)V

    invoke-virtual {p1, v0}, Lmiuix/appcompat/app/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Lmiuix/appcompat/app/AlertDialog$Builder;

    move-result-object p1

    invoke-virtual {p1}, Lmiuix/appcompat/app/AlertDialog$Builder;->show()Lmiuix/appcompat/app/AlertDialog;

    :goto_0
    return-void
.end method

.method public static synthetic k0(Lcom/miui/permcenter/permissions/PermissionAppsModifyFragment;Landroid/content/DialogInterface;I)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/miui/permcenter/permissions/PermissionAppsModifyFragment;->l1(Lcom/miui/permcenter/permissions/PermissionAppsModifyFragment;Landroid/content/DialogInterface;I)V

    return-void
.end method

.method private static final k1(Lcom/miui/permcenter/permissions/PermissionAppsModifyFragment;Landroid/content/DialogInterface;I)V
    .locals 0

    const-string p1, "this$0"

    invoke-static {p0, p1}, Lbk/m;->e(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/miui/permcenter/permissions/PermissionAppsModifyFragment;->k:Lmiuix/preference/CheckBoxPreference;

    if-nez p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Landroidx/preference/TwoStatePreference;->setChecked(Z)V

    :goto_0
    return-void
.end method

.method public static synthetic l0(Lcom/miui/permcenter/permissions/PermissionAppsModifyFragment;Landroid/content/DialogInterface;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/miui/permcenter/permissions/PermissionAppsModifyFragment;->m1(Lcom/miui/permcenter/permissions/PermissionAppsModifyFragment;Landroid/content/DialogInterface;)V

    return-void
.end method

.method private static final l1(Lcom/miui/permcenter/permissions/PermissionAppsModifyFragment;Landroid/content/DialogInterface;I)V
    .locals 0

    const-string p1, "this$0"

    invoke-static {p0, p1}, Lbk/m;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lcom/miui/permcenter/permissions/PermissionAppsModifyFragment;->W0(Z)V

    return-void
.end method

.method public static final synthetic m0(Lcom/miui/permcenter/permissions/PermissionAppsModifyFragment;)Lcom/miui/permcenter/AppPermissionInfo;
    .locals 0

    iget-object p0, p0, Lcom/miui/permcenter/permissions/PermissionAppsModifyFragment;->q:Lcom/miui/permcenter/AppPermissionInfo;

    return-object p0
.end method

.method private static final m1(Lcom/miui/permcenter/permissions/PermissionAppsModifyFragment;Landroid/content/DialogInterface;)V
    .locals 0

    const-string p1, "this$0"

    invoke-static {p0, p1}, Lbk/m;->e(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/miui/permcenter/permissions/PermissionAppsModifyFragment;->k:Lmiuix/preference/CheckBoxPreference;

    if-nez p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Landroidx/preference/TwoStatePreference;->setChecked(Z)V

    :goto_0
    return-void
.end method

.method public static final synthetic n0(Lcom/miui/permcenter/permissions/PermissionAppsModifyFragment;)Lmiuix/preference/CheckBoxPreference;
    .locals 0

    iget-object p0, p0, Lcom/miui/permcenter/permissions/PermissionAppsModifyFragment;->j:Lmiuix/preference/CheckBoxPreference;

    return-object p0
.end method

.method private final n1(Ltj/d;)Ljava/lang/Object;
    .locals 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ltj/d<",
            "-",
            "Loj/t;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    instance-of v0, p1, Lcom/miui/permcenter/permissions/PermissionAppsModifyFragment$i;

    if-eqz v0, :cond_0

    move-object v0, p1

    check-cast v0, Lcom/miui/permcenter/permissions/PermissionAppsModifyFragment$i;

    iget v1, v0, Lcom/miui/permcenter/permissions/PermissionAppsModifyFragment$i;->g:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_0

    sub-int/2addr v1, v2

    iput v1, v0, Lcom/miui/permcenter/permissions/PermissionAppsModifyFragment$i;->g:I

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/miui/permcenter/permissions/PermissionAppsModifyFragment$i;

    invoke-direct {v0, p0, p1}, Lcom/miui/permcenter/permissions/PermissionAppsModifyFragment$i;-><init>(Lcom/miui/permcenter/permissions/PermissionAppsModifyFragment;Ltj/d;)V

    :goto_0
    iget-object p1, v0, Lcom/miui/permcenter/permissions/PermissionAppsModifyFragment$i;->e:Ljava/lang/Object;

    invoke-static {}, Luj/b;->c()Ljava/lang/Object;

    move-result-object v1

    iget v2, v0, Lcom/miui/permcenter/permissions/PermissionAppsModifyFragment$i;->g:I

    const-wide v3, 0x1000000000L

    const v5, 0x7f120001

    const/high16 v6, 0x7f120000

    const/4 v7, 0x3

    const/4 v8, 0x2

    const/4 v9, 0x1

    const/4 v10, 0x0

    if-eqz v2, :cond_4

    if-eq v2, v9, :cond_3

    if-eq v2, v8, :cond_2

    if-ne v2, v7, :cond_1

    goto :goto_1

    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_2
    iget-object v2, v0, Lcom/miui/permcenter/permissions/PermissionAppsModifyFragment$i;->d:Ljava/lang/Object;

    check-cast v2, Lmiuix/preference/CheckBoxPreference;

    iget-object v8, v0, Lcom/miui/permcenter/permissions/PermissionAppsModifyFragment$i;->c:Ljava/lang/Object;

    check-cast v8, Lmiuix/preference/CheckBoxPreference;

    iget-object v9, v0, Lcom/miui/permcenter/permissions/PermissionAppsModifyFragment$i;->b:Ljava/lang/Object;

    check-cast v9, Lmiuix/preference/CheckBoxPreference;

    iget-object v11, v0, Lcom/miui/permcenter/permissions/PermissionAppsModifyFragment$i;->a:Ljava/lang/Object;

    check-cast v11, Lcom/miui/permcenter/permissions/PermissionAppsModifyFragment;

    invoke-static {p1}, Loj/n;->b(Ljava/lang/Object;)V

    goto/16 :goto_6

    :cond_3
    :goto_1
    iget-object v1, v0, Lcom/miui/permcenter/permissions/PermissionAppsModifyFragment$i;->b:Ljava/lang/Object;

    check-cast v1, Lmiuix/preference/CheckBoxPreference;

    iget-object v0, v0, Lcom/miui/permcenter/permissions/PermissionAppsModifyFragment$i;->a:Ljava/lang/Object;

    check-cast v0, Lmiuix/preference/CheckBoxPreference;

    invoke-static {p1}, Loj/n;->b(Ljava/lang/Object;)V

    goto/16 :goto_9

    :cond_4
    invoke-static {p1}, Loj/n;->b(Ljava/lang/Object;)V

    iget p1, p0, Lcom/miui/permcenter/permissions/PermissionAppsModifyFragment;->l:I

    if-gtz p1, :cond_5

    sget-object p1, Loj/t;->a:Loj/t;

    return-object p1

    :cond_5
    iget-object p1, p0, Lcom/miui/permcenter/permissions/PermissionAppsModifyFragment;->j:Lmiuix/preference/CheckBoxPreference;

    if-nez p1, :cond_6

    const-string p1, "checkBoxPreference"

    invoke-static {p1}, Lbk/m;->r(Ljava/lang/String;)V

    move-object v2, v10

    goto :goto_2

    :cond_6
    move-object v2, p1

    :goto_2
    invoke-virtual {v2, p0}, Landroidx/preference/Preference;->setOnPreferenceChangeListener(Landroidx/preference/Preference$c;)V

    iget p1, p0, Lcom/miui/permcenter/permissions/PermissionAppsModifyFragment;->l:I

    const/4 v11, 0x0

    if-eq p1, v9, :cond_15

    if-eq p1, v8, :cond_13

    if-eq p1, v7, :cond_11

    const/4 v12, 0x4

    if-eq p1, v12, :cond_b

    const/4 v0, 0x5

    if-eq p1, v0, :cond_7

    goto/16 :goto_c

    :cond_7
    const p1, 0x7f120544

    invoke-virtual {p0, p1}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1}, Landroidx/preference/Preference;->setTitle(Ljava/lang/CharSequence;)V

    const p1, 0x7f120545

    invoke-virtual {p0, p1}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1}, Landroidx/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    iget-object p1, p0, Lcom/miui/permcenter/permissions/PermissionAppsModifyFragment;->q:Lcom/miui/permcenter/AppPermissionInfo;

    if-nez p1, :cond_8

    const-string p1, "appPermissionInfo"

    invoke-static {p1}, Lbk/m;->r(Ljava/lang/String;)V

    goto :goto_3

    :cond_8
    move-object v10, p1

    :goto_3
    invoke-virtual {v10}, Lcom/miui/permcenter/AppPermissionInfo;->getPermissionToAction()Ljava/util/HashMap;

    move-result-object p1

    const-wide v0, 0x4000000000L

    invoke-static {v0, v1}, Lkotlin/coroutines/jvm/internal/b;->c(J)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    if-nez p1, :cond_9

    goto :goto_4

    :cond_9
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    if-ne p1, v8, :cond_a

    invoke-static {}, Lxc/k;->a()Z

    move-result p1

    if-eqz p1, :cond_a

    goto :goto_5

    :cond_a
    :goto_4
    move v9, v11

    :goto_5
    invoke-virtual {v2, v9}, Landroidx/preference/TwoStatePreference;->setChecked(Z)V

    goto/16 :goto_c

    :cond_b
    const p1, 0x7f120021

    invoke-virtual {p0, p1}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1}, Landroidx/preference/Preference;->setTitle(Ljava/lang/CharSequence;)V

    const p1, 0x7f120022

    invoke-virtual {p0, p1}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1}, Landroidx/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    invoke-virtual {p0}, Lcom/miui/permcenter/permissions/PermissionAppsModifyFragment;->K0()Ljava/lang/String;

    move-result-object p1

    const-string v12, "com.tencent.mm"

    invoke-static {v12, p1}, Lbk/m;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_e

    invoke-virtual {p0}, Lcom/miui/permcenter/permissions/PermissionAppsModifyFragment;->K0()Ljava/lang/String;

    move-result-object p1

    const-string v12, "com.tencent.mobileqq"

    invoke-static {v12, p1}, Lbk/m;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_c

    goto :goto_7

    :cond_c
    sget-object p1, Lxc/u;->a:Lxc/u;

    iget-object v9, p0, Lcom/miui/permcenter/permissions/PermissionAppsModifyFragment;->f:Landroid/content/pm/PackageInfo;

    invoke-static {v9}, Lbk/m;->b(Ljava/lang/Object;)V

    const-wide v11, 0x800000000L

    iput-object p0, v0, Lcom/miui/permcenter/permissions/PermissionAppsModifyFragment$i;->a:Ljava/lang/Object;

    iput-object v2, v0, Lcom/miui/permcenter/permissions/PermissionAppsModifyFragment$i;->b:Ljava/lang/Object;

    iput-object v2, v0, Lcom/miui/permcenter/permissions/PermissionAppsModifyFragment$i;->c:Ljava/lang/Object;

    iput-object v2, v0, Lcom/miui/permcenter/permissions/PermissionAppsModifyFragment$i;->d:Ljava/lang/Object;

    iput v8, v0, Lcom/miui/permcenter/permissions/PermissionAppsModifyFragment$i;->g:I

    invoke-virtual {p1, v9, v11, v12, v0}, Lxc/u;->g(Landroid/content/pm/PackageInfo;JLtj/d;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v1, :cond_d

    return-object v1

    :cond_d
    move-object v11, p0

    move-object v8, v2

    move-object v9, v8

    :goto_6
    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    invoke-virtual {v2, p1}, Landroidx/preference/TwoStatePreference;->setChecked(Z)V

    move-object v2, v8

    goto :goto_8

    :cond_e
    :goto_7
    invoke-virtual {v2, v9}, Landroidx/preference/TwoStatePreference;->setChecked(Z)V

    invoke-virtual {v2, v11}, Landroidx/preference/Preference;->setEnabled(Z)V

    move-object v11, p0

    move-object v9, v2

    :goto_8
    invoke-static {}, Lcom/miui/permission/support/util/SdkLevel;->isAtLeastT()Z

    move-result p1

    if-nez p1, :cond_18

    new-instance p1, Lmiuix/preference/CheckBoxPreference;

    invoke-virtual {v2}, Landroidx/preference/Preference;->getPreferenceManager()Landroidx/preference/f;

    move-result-object v2

    invoke-virtual {v2}, Landroidx/preference/f;->b()Landroid/content/Context;

    move-result-object v2

    invoke-direct {p1, v2}, Lmiuix/preference/CheckBoxPreference;-><init>(Landroid/content/Context;)V

    const-string v2, "less_t_compact_gallery_box"

    invoke-virtual {p1, v2}, Landroidx/preference/Preference;->setKey(Ljava/lang/String;)V

    invoke-virtual {v11, v6}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Landroidx/preference/Preference;->setTitle(Ljava/lang/CharSequence;)V

    invoke-virtual {v11, v5}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Landroidx/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    new-instance v2, Lcc/r;

    invoke-direct {v2, p1, v11}, Lcc/r;-><init>(Lmiuix/preference/CheckBoxPreference;Lcom/miui/permcenter/permissions/PermissionAppsModifyFragment;)V

    invoke-virtual {p1, v2}, Landroidx/preference/Preference;->setOnPreferenceChangeListener(Landroidx/preference/Preference$c;)V

    iget-object v2, v11, Lcom/miui/permcenter/permissions/PermissionAppsModifyFragment;->i:Landroidx/preference/PreferenceCategory;

    if-nez v2, :cond_f

    const-string v2, "checkBoxCategory"

    invoke-static {v2}, Lbk/m;->r(Ljava/lang/String;)V

    move-object v2, v10

    :cond_f
    invoke-virtual {v2, p1}, Landroidx/preference/PreferenceGroup;->addPreference(Landroidx/preference/Preference;)Z

    sget-object v2, Lxc/u;->a:Lxc/u;

    iget-object v5, v11, Lcom/miui/permcenter/permissions/PermissionAppsModifyFragment;->f:Landroid/content/pm/PackageInfo;

    invoke-static {v5}, Lbk/m;->b(Ljava/lang/Object;)V

    iput-object v9, v0, Lcom/miui/permcenter/permissions/PermissionAppsModifyFragment$i;->a:Ljava/lang/Object;

    iput-object p1, v0, Lcom/miui/permcenter/permissions/PermissionAppsModifyFragment$i;->b:Ljava/lang/Object;

    iput-object v10, v0, Lcom/miui/permcenter/permissions/PermissionAppsModifyFragment$i;->c:Ljava/lang/Object;

    iput-object v10, v0, Lcom/miui/permcenter/permissions/PermissionAppsModifyFragment$i;->d:Ljava/lang/Object;

    iput v7, v0, Lcom/miui/permcenter/permissions/PermissionAppsModifyFragment$i;->g:I

    invoke-virtual {v2, v5, v3, v4, v0}, Lxc/u;->g(Landroid/content/pm/PackageInfo;JLtj/d;)Ljava/lang/Object;

    move-result-object v0

    if-ne v0, v1, :cond_10

    return-object v1

    :cond_10
    move-object v1, p1

    move-object p1, v0

    goto :goto_9

    :cond_11
    invoke-virtual {p0, v6}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1}, Landroidx/preference/Preference;->setTitle(Ljava/lang/CharSequence;)V

    invoke-virtual {p0, v5}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1}, Landroidx/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    sget-object p1, Lxc/u;->a:Lxc/u;

    iget-object v5, p0, Lcom/miui/permcenter/permissions/PermissionAppsModifyFragment;->f:Landroid/content/pm/PackageInfo;

    invoke-static {v5}, Lbk/m;->b(Ljava/lang/Object;)V

    iput-object v2, v0, Lcom/miui/permcenter/permissions/PermissionAppsModifyFragment$i;->a:Ljava/lang/Object;

    iput-object v2, v0, Lcom/miui/permcenter/permissions/PermissionAppsModifyFragment$i;->b:Ljava/lang/Object;

    iput v9, v0, Lcom/miui/permcenter/permissions/PermissionAppsModifyFragment$i;->g:I

    invoke-virtual {p1, v5, v3, v4, v0}, Lxc/u;->g(Landroid/content/pm/PackageInfo;JLtj/d;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v1, :cond_12

    return-object v1

    :cond_12
    move-object v1, v2

    :goto_9
    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    invoke-virtual {v1, p1}, Landroidx/preference/TwoStatePreference;->setChecked(Z)V

    goto/16 :goto_c

    :cond_13
    const p1, 0x7f121111

    invoke-virtual {p0, p1}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1}, Landroidx/preference/Preference;->setTitle(Ljava/lang/CharSequence;)V

    iget-object p1, p0, Lcom/miui/permcenter/permissions/PermissionAppsModifyFragment;->c:Ljava/util/ArrayList;

    const-wide/16 v0, 0x40

    invoke-static {v0, v1}, Lkotlin/coroutines/jvm/internal/b;->c(J)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_14

    const p1, 0x7f121113

    goto :goto_a

    :cond_14
    const p1, 0x7f121112

    :goto_a
    invoke-virtual {p0, p1}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1}, Landroidx/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    sget-object p1, Lxc/u;->a:Lxc/u;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "requireContext()"

    invoke-static {v0, v1}, Lbk/m;->d(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/miui/permcenter/permissions/PermissionAppsModifyFragment;->f:Landroid/content/pm/PackageInfo;

    invoke-static {v1}, Lbk/m;->b(Ljava/lang/Object;)V

    iget-object v1, v1, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v1, v1, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    const-string v3, "mPackageInfo!!.applicationInfo.packageName"

    invoke-static {v1, v3}, Lbk/m;->d(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v3, p0, Lcom/miui/permcenter/permissions/PermissionAppsModifyFragment;->f:Landroid/content/pm/PackageInfo;

    invoke-static {v3}, Lbk/m;->b(Ljava/lang/Object;)V

    iget-object v3, v3, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v3, v3, Landroid/content/pm/ApplicationInfo;->uid:I

    iget-object v4, p0, Lcom/miui/permcenter/permissions/PermissionAppsModifyFragment;->c:Ljava/util/ArrayList;

    invoke-virtual {p1, v0, v1, v3, v4}, Lxc/u;->p(Landroid/content/Context;Ljava/lang/String;ILjava/util/ArrayList;)Z

    move-result p1

    :goto_b
    invoke-virtual {v2, p1}, Landroidx/preference/TwoStatePreference;->setChecked(Z)V

    goto :goto_c

    :cond_15
    const p1, 0x7f121170

    invoke-virtual {p0, p1}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1}, Landroidx/preference/Preference;->setTitle(Ljava/lang/CharSequence;)V

    const p1, 0x7f121171

    invoke-virtual {p0, p1}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1}, Landroidx/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    iget-object p1, p0, Lcom/miui/permcenter/permissions/PermissionAppsModifyFragment;->f:Landroid/content/pm/PackageInfo;

    if-eqz p1, :cond_16

    iget-object v10, p1, Landroid/content/pm/PackageInfo;->requestedPermissions:[Ljava/lang/String;

    :cond_16
    const-string p1, "android.permission.ACCESS_FINE_LOCATION"

    invoke-static {v10, p1}, Lcom/miui/permission/PermissionManager$ArrayUtils;->contains([Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_17

    sget-object p1, Lxc/u;->a:Lxc/u;

    invoke-virtual {v2}, Landroidx/preference/Preference;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "context"

    invoke-static {v0, v1}, Lbk/m;->d(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/miui/permcenter/permissions/PermissionAppsModifyFragment;->f:Landroid/content/pm/PackageInfo;

    invoke-static {v1}, Lbk/m;->b(Ljava/lang/Object;)V

    invoke-virtual {p1, v0, v1}, Lxc/u;->m(Landroid/content/Context;Landroid/content/pm/PackageInfo;)Z

    move-result p1

    goto :goto_b

    :cond_17
    invoke-virtual {v2, v11}, Landroidx/preference/Preference;->setEnabled(Z)V

    invoke-virtual {v2, v11}, Landroidx/preference/TwoStatePreference;->setChecked(Z)V

    :cond_18
    :goto_c
    sget-object p1, Loj/t;->a:Loj/t;

    return-object p1
.end method

.method public static final synthetic o0(Lcom/miui/permcenter/permissions/PermissionAppsModifyFragment;)Lcom/miui/permcenter/permissions/RadioButtonPreference;
    .locals 0

    iget-object p0, p0, Lcom/miui/permcenter/permissions/PermissionAppsModifyFragment;->b:Lcom/miui/permcenter/permissions/RadioButtonPreference;

    return-object p0
.end method

.method private static final o1(Lmiuix/preference/CheckBoxPreference;Lcom/miui/permcenter/permissions/PermissionAppsModifyFragment;Landroidx/preference/Preference;Ljava/lang/Object;)Z
    .locals 6

    const-string v0, "$this_apply"

    invoke-static {p0, v0}, Lbk/m;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "this$0"

    invoke-static {p1, v0}, Lbk/m;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "<anonymous parameter 0>"

    invoke-static {p2, v0}, Lbk/m;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Landroidx/preference/Preference;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-static {p0}, Lcom/miui/permission/PermissionManager;->getInstance(Landroid/content/Context;)Lcom/miui/permission/PermissionManager;

    move-result-object v0

    const-string p0, "null cannot be cast to non-null type kotlin.Boolean"

    invoke-static {p3, p0}, Lbk/m;->c(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p3, Ljava/lang/Boolean;

    invoke-virtual {p3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x3

    goto :goto_0

    :cond_0
    const/4 p0, 0x2

    :goto_0
    move v3, p0

    iget v4, p1, Lcom/miui/permcenter/permissions/PermissionAppsModifyFragment;->e:I

    const/4 p0, 0x1

    new-array v5, p0, [Ljava/lang/String;

    const/4 p2, 0x0

    invoke-virtual {p1}, Lcom/miui/permcenter/permissions/PermissionAppsModifyFragment;->K0()Ljava/lang/String;

    move-result-object p1

    aput-object p1, v5, p2

    const-wide v1, 0x1000000000L

    invoke-virtual/range {v0 .. v5}, Lcom/miui/permission/PermissionManager;->setApplicationPermission(JII[Ljava/lang/String;)V

    return p0
.end method

.method public static final synthetic p0(Lcom/miui/permcenter/permissions/PermissionAppsModifyFragment;)Landroid/app/AppOpsManager;
    .locals 0

    iget-object p0, p0, Lcom/miui/permcenter/permissions/PermissionAppsModifyFragment;->n:Landroid/app/AppOpsManager;

    return-object p0
.end method

.method private final p1()V
    .locals 9

    iget v0, p0, Lcom/miui/permcenter/permissions/PermissionAppsModifyFragment;->l:I

    const/4 v1, 0x2

    const-string v2, "checkBoxPreference"

    const/4 v3, 0x0

    const-string v4, "checkBoxCategory"

    const/4 v5, 0x0

    const/4 v6, 0x1

    if-eq v0, v6, :cond_10

    if-eq v0, v1, :cond_b

    const/4 v7, 0x3

    if-eq v0, v7, :cond_7

    const/4 v7, 0x4

    if-eq v0, v7, :cond_4

    const/4 v7, 0x5

    if-eq v0, v7, :cond_0

    goto/16 :goto_9

    :cond_0
    invoke-static {}, Lxc/k;->a()Z

    move-result v0

    if-eqz v0, :cond_1

    iget v0, p0, Lcom/miui/permcenter/permissions/PermissionAppsModifyFragment;->h:I

    if-eq v0, v6, :cond_1

    move v0, v6

    goto :goto_0

    :cond_1
    move v0, v3

    :goto_0
    iget-object v7, p0, Lcom/miui/permcenter/permissions/PermissionAppsModifyFragment;->i:Landroidx/preference/PreferenceCategory;

    if-nez v7, :cond_2

    invoke-static {v4}, Lbk/m;->r(Ljava/lang/String;)V

    move-object v7, v5

    :cond_2
    invoke-virtual {v7, v0}, Landroidx/preference/Preference;->setVisible(Z)V

    iget-object v7, p0, Lcom/miui/permcenter/permissions/PermissionAppsModifyFragment;->j:Lmiuix/preference/CheckBoxPreference;

    if-nez v7, :cond_3

    invoke-static {v2}, Lbk/m;->r(Ljava/lang/String;)V

    move-object v7, v5

    :cond_3
    invoke-virtual {v7, v0}, Landroidx/preference/Preference;->setVisible(Z)V

    iget v0, p0, Lcom/miui/permcenter/permissions/PermissionAppsModifyFragment;->h:I

    if-ne v0, v6, :cond_17

    new-instance v0, Lcom/miui/permcenter/permissions/PermissionAppsModifyFragment$j;

    invoke-direct {v0, p0}, Lcom/miui/permcenter/permissions/PermissionAppsModifyFragment$j;-><init>(Lcom/miui/permcenter/permissions/PermissionAppsModifyFragment;)V

    goto/16 :goto_5

    :cond_4
    iget v0, p0, Lcom/miui/permcenter/permissions/PermissionAppsModifyFragment;->h:I

    if-eq v0, v6, :cond_5

    move v0, v6

    goto :goto_1

    :cond_5
    move v0, v3

    :goto_1
    iget-object v7, p0, Lcom/miui/permcenter/permissions/PermissionAppsModifyFragment;->i:Landroidx/preference/PreferenceCategory;

    if-nez v7, :cond_6

    invoke-static {v4}, Lbk/m;->r(Ljava/lang/String;)V

    move-object v7, v5

    :cond_6
    invoke-virtual {v7, v0}, Landroidx/preference/Preference;->setVisible(Z)V

    iget-object v7, p0, Lcom/miui/permcenter/permissions/PermissionAppsModifyFragment;->j:Lmiuix/preference/CheckBoxPreference;

    if-nez v7, :cond_a

    goto :goto_3

    :cond_7
    iget v0, p0, Lcom/miui/permcenter/permissions/PermissionAppsModifyFragment;->h:I

    if-eq v0, v6, :cond_8

    move v0, v6

    goto :goto_2

    :cond_8
    move v0, v3

    :goto_2
    iget-object v7, p0, Lcom/miui/permcenter/permissions/PermissionAppsModifyFragment;->i:Landroidx/preference/PreferenceCategory;

    if-nez v7, :cond_9

    invoke-static {v4}, Lbk/m;->r(Ljava/lang/String;)V

    move-object v7, v5

    :cond_9
    invoke-virtual {v7, v0}, Landroidx/preference/Preference;->setVisible(Z)V

    iget-object v7, p0, Lcom/miui/permcenter/permissions/PermissionAppsModifyFragment;->j:Lmiuix/preference/CheckBoxPreference;

    if-nez v7, :cond_a

    :goto_3
    invoke-static {v2}, Lbk/m;->r(Ljava/lang/String;)V

    move-object v7, v5

    :cond_a
    invoke-virtual {v7, v0}, Landroidx/preference/Preference;->setVisible(Z)V

    goto/16 :goto_9

    :cond_b
    iget v0, p0, Lcom/miui/permcenter/permissions/PermissionAppsModifyFragment;->h:I

    if-eq v0, v6, :cond_e

    if-ne v0, v1, :cond_c

    goto :goto_4

    :cond_c
    iget-object v0, p0, Lcom/miui/permcenter/permissions/PermissionAppsModifyFragment;->i:Landroidx/preference/PreferenceCategory;

    if-nez v0, :cond_d

    invoke-static {v4}, Lbk/m;->r(Ljava/lang/String;)V

    move-object v0, v5

    :cond_d
    invoke-virtual {v0, v6}, Landroidx/preference/Preference;->setVisible(Z)V

    iget-object v0, p0, Lcom/miui/permcenter/permissions/PermissionAppsModifyFragment;->j:Lmiuix/preference/CheckBoxPreference;

    if-nez v0, :cond_13

    goto :goto_6

    :cond_e
    :goto_4
    iget-object v0, p0, Lcom/miui/permcenter/permissions/PermissionAppsModifyFragment;->i:Landroidx/preference/PreferenceCategory;

    if-nez v0, :cond_f

    invoke-static {v4}, Lbk/m;->r(Ljava/lang/String;)V

    move-object v0, v5

    :cond_f
    invoke-virtual {v0, v3}, Landroidx/preference/Preference;->setVisible(Z)V

    new-instance v0, Lcom/miui/permcenter/permissions/PermissionAppsModifyFragment$l;

    invoke-direct {v0, p0}, Lcom/miui/permcenter/permissions/PermissionAppsModifyFragment$l;-><init>(Lcom/miui/permcenter/permissions/PermissionAppsModifyFragment;)V

    :goto_5
    invoke-direct {p0, v0}, Lcom/miui/permcenter/permissions/PermissionAppsModifyFragment;->U0(Lak/a;)V

    goto :goto_9

    :cond_10
    iget v0, p0, Lcom/miui/permcenter/permissions/PermissionAppsModifyFragment;->h:I

    if-eq v0, v6, :cond_14

    if-ne v0, v1, :cond_11

    goto :goto_7

    :cond_11
    iget-object v0, p0, Lcom/miui/permcenter/permissions/PermissionAppsModifyFragment;->i:Landroidx/preference/PreferenceCategory;

    if-nez v0, :cond_12

    invoke-static {v4}, Lbk/m;->r(Ljava/lang/String;)V

    move-object v0, v5

    :cond_12
    invoke-virtual {v0, v6}, Landroidx/preference/Preference;->setVisible(Z)V

    iget-object v0, p0, Lcom/miui/permcenter/permissions/PermissionAppsModifyFragment;->j:Lmiuix/preference/CheckBoxPreference;

    if-nez v0, :cond_13

    :goto_6
    invoke-static {v2}, Lbk/m;->r(Ljava/lang/String;)V

    move-object v0, v5

    :cond_13
    invoke-virtual {v0, v6}, Landroidx/preference/Preference;->setVisible(Z)V

    goto :goto_9

    :cond_14
    :goto_7
    iget-object v0, p0, Lcom/miui/permcenter/permissions/PermissionAppsModifyFragment;->i:Landroidx/preference/PreferenceCategory;

    if-nez v0, :cond_15

    invoke-static {v4}, Lbk/m;->r(Ljava/lang/String;)V

    move-object v0, v5

    :cond_15
    invoke-virtual {v0, v3}, Landroidx/preference/Preference;->setVisible(Z)V

    iget-object v0, p0, Lcom/miui/permcenter/permissions/PermissionAppsModifyFragment;->f:Landroid/content/pm/PackageInfo;

    if-eqz v0, :cond_16

    iget-object v0, v0, Landroid/content/pm/PackageInfo;->requestedPermissions:[Ljava/lang/String;

    goto :goto_8

    :cond_16
    move-object v0, v5

    :goto_8
    const-string v2, "android.permission.ACCESS_FINE_LOCATION"

    invoke-static {v0, v2}, Lcom/miui/permission/PermissionManager$ArrayUtils;->contains([Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_17

    new-instance v0, Lcom/miui/permcenter/permissions/PermissionAppsModifyFragment$k;

    invoke-direct {v0, p0}, Lcom/miui/permcenter/permissions/PermissionAppsModifyFragment$k;-><init>(Lcom/miui/permcenter/permissions/PermissionAppsModifyFragment;)V

    goto :goto_5

    :cond_17
    :goto_9
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    move-result-object v0

    iget-object v2, p0, Lcom/miui/permcenter/permissions/PermissionAppsModifyFragment;->f:Landroid/content/pm/PackageInfo;

    invoke-static {v0, v2}, Lcom/miui/permcenter/q;->z(Landroid/content/Context;Landroid/content/pm/PackageInfo;)Z

    move-result v0

    if-eqz v0, :cond_18

    iget-object v0, p0, Lcom/miui/permcenter/permissions/PermissionAppsModifyFragment;->c:Ljava/util/ArrayList;

    const-wide v7, 0x200000000000L

    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_18

    iget v0, p0, Lcom/miui/permcenter/permissions/PermissionAppsModifyFragment;->h:I

    if-eq v0, v6, :cond_18

    if-eq v0, v1, :cond_18

    move v0, v6

    goto :goto_a

    :cond_18
    move v0, v3

    :goto_a
    iget-object v1, p0, Lcom/miui/permcenter/permissions/PermissionAppsModifyFragment;->i:Landroidx/preference/PreferenceCategory;

    if-nez v1, :cond_19

    invoke-static {v4}, Lbk/m;->r(Ljava/lang/String;)V

    move-object v1, v5

    :cond_19
    iget-object v2, p0, Lcom/miui/permcenter/permissions/PermissionAppsModifyFragment;->i:Landroidx/preference/PreferenceCategory;

    if-nez v2, :cond_1a

    invoke-static {v4}, Lbk/m;->r(Ljava/lang/String;)V

    goto :goto_b

    :cond_1a
    move-object v5, v2

    :goto_b
    invoke-virtual {v5}, Landroidx/preference/Preference;->isVisible()Z

    move-result v2

    if-nez v2, :cond_1b

    if-eqz v0, :cond_1c

    :cond_1b
    move v3, v6

    :cond_1c
    invoke-virtual {v1, v3}, Landroidx/preference/Preference;->setVisible(Z)V

    iget-object v1, p0, Lcom/miui/permcenter/permissions/PermissionAppsModifyFragment;->k:Lmiuix/preference/CheckBoxPreference;

    if-nez v1, :cond_1d

    goto :goto_c

    :cond_1d
    invoke-virtual {v1, v0}, Landroidx/preference/Preference;->setVisible(Z)V

    :goto_c
    return-void
.end method

.method public static final synthetic q0(Lcom/miui/permcenter/permissions/PermissionAppsModifyFragment;)Landroid/content/pm/PackageInfo;
    .locals 0

    iget-object p0, p0, Lcom/miui/permcenter/permissions/PermissionAppsModifyFragment;->f:Landroid/content/pm/PackageInfo;

    return-object p0
.end method

.method private final q1(JIZ)V
    .locals 10

    iget v0, p0, Lcom/miui/permcenter/permissions/PermissionAppsModifyFragment;->l:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_2

    const/4 v0, 0x1

    if-eq p3, v0, :cond_0

    if-ne p3, v1, :cond_2

    :cond_0
    iget-object v0, p0, Lcom/miui/permcenter/permissions/PermissionAppsModifyFragment;->j:Lmiuix/preference/CheckBoxPreference;

    if-nez v0, :cond_1

    const-string v0, "checkBoxPreference"

    invoke-static {v0}, Lbk/m;->r(Ljava/lang/String;)V

    const/4 v0, 0x0

    :cond_1
    invoke-virtual {v0}, Landroidx/preference/TwoStatePreference;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_2

    sget-object v1, Lxc/u;->a:Lxc/u;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    move-result-object v2

    const-string v0, "requireContext()"

    invoke-static {v2, v0}, Lbk/m;->d(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v3, p0, Lcom/miui/permcenter/permissions/PermissionAppsModifyFragment;->f:Landroid/content/pm/PackageInfo;

    invoke-static {v3}, Lbk/m;->b(Ljava/lang/Object;)V

    const/4 v6, 0x0

    move-wide v4, p1

    move v7, p3

    invoke-virtual/range {v1 .. v7}, Lxc/u;->A(Landroid/content/Context;Landroid/content/pm/PackageInfo;JZI)Z

    move-result v0

    if-nez v0, :cond_3

    :cond_2
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    invoke-virtual {p0}, Lcom/miui/permcenter/permissions/PermissionAppsModifyFragment;->K0()Ljava/lang/String;

    move-result-object v2

    iget v3, p0, Lcom/miui/permcenter/permissions/PermissionAppsModifyFragment;->e:I

    const/4 v6, 0x0

    invoke-direct {p0}, Lcom/miui/permcenter/permissions/PermissionAppsModifyFragment;->F0()Lxc/f;

    move-result-object v8

    move-wide v4, p1

    move v7, p3

    move v9, p4

    invoke-static/range {v1 .. v9}, Lcom/miui/permcenter/l;->q(Landroid/content/Context;Ljava/lang/String;IJZILxc/f;Z)V

    :cond_3
    return-void
.end method

.method public static final synthetic r0(Lcom/miui/permcenter/permissions/PermissionAppsModifyFragment;Ljava/lang/String;Ltj/d;)Ljava/lang/Object;
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/miui/permcenter/permissions/PermissionAppsModifyFragment;->H0(Ljava/lang/String;Ltj/d;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic s0(Lcom/miui/permcenter/permissions/PermissionAppsModifyFragment;)Lcom/miui/permcenter/permissions/PermTipsPreference;
    .locals 0

    iget-object p0, p0, Lcom/miui/permcenter/permissions/PermissionAppsModifyFragment;->a:Lcom/miui/permcenter/permissions/PermTipsPreference;

    return-object p0
.end method

.method public static final synthetic t0(Lcom/miui/permcenter/permissions/PermissionAppsModifyFragment;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/miui/permcenter/permissions/PermissionAppsModifyFragment;->p:Ljava/lang/String;

    return-object p0
.end method

.method public static final synthetic u0(Lcom/miui/permcenter/permissions/PermissionAppsModifyFragment;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/miui/permcenter/permissions/PermissionAppsModifyFragment;->o:Ljava/lang/String;

    return-object p0
.end method

.method public static final synthetic v0(Lcom/miui/permcenter/permissions/PermissionAppsModifyFragment;)I
    .locals 0

    iget p0, p0, Lcom/miui/permcenter/permissions/PermissionAppsModifyFragment;->e:I

    return p0
.end method

.method public static final synthetic w0(Lcom/miui/permcenter/permissions/PermissionAppsModifyFragment;I)Z
    .locals 0

    invoke-direct {p0, p1}, Lcom/miui/permcenter/permissions/PermissionAppsModifyFragment;->Q0(I)Z

    move-result p0

    return p0
.end method

.method public static final synthetic x0(Lcom/miui/permcenter/permissions/PermissionAppsModifyFragment;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/miui/permcenter/permissions/PermissionAppsModifyFragment;->T0(I)V

    return-void
.end method

.method public static final synthetic y0(Lcom/miui/permcenter/permissions/PermissionAppsModifyFragment;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/miui/permcenter/permissions/PermissionAppsModifyFragment;->X0(I)V

    return-void
.end method

.method public static final synthetic z0(Lcom/miui/permcenter/permissions/PermissionAppsModifyFragment;Lcom/miui/permcenter/permissions/RadioButtonPreference;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/miui/permcenter/permissions/PermissionAppsModifyFragment;->b1(Lcom/miui/permcenter/permissions/RadioButtonPreference;I)V

    return-void
.end method


# virtual methods
.method public final I0()I
    .locals 1

    iget v0, p0, Lcom/miui/permcenter/permissions/PermissionAppsModifyFragment;->h:I

    return v0
.end method

.method public final J0()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object v0, p0, Lcom/miui/permcenter/permissions/PermissionAppsModifyFragment;->c:Ljava/util/ArrayList;

    return-object v0
.end method

.method public final K0()Ljava/lang/String;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object v0, p0, Lcom/miui/permcenter/permissions/PermissionAppsModifyFragment;->d:Ljava/lang/String;

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    const-string v0, "pkgName"

    invoke-static {v0}, Lbk/m;->r(Ljava/lang/String;)V

    const/4 v0, 0x0

    return-object v0
.end method

.method public final d1(Ljava/lang/String;)V
    .locals 1
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lbk/m;->e(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/miui/permcenter/permissions/PermissionAppsModifyFragment;->d:Ljava/lang/String;

    return-void
.end method

.method public final e1(Landroid/view/View;)V
    .locals 1
    .param p1    # Landroid/view/View;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "needPaddingView"

    invoke-static {p1, v0}, Lbk/m;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {}, Lx4/t;->p()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lx4/t;->s(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_1

    :cond_0
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0}, Lx4/g;->f(Landroid/app/Activity;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x2

    :goto_0
    invoke-direct {p0, p1, v0}, Lcom/miui/permcenter/permissions/PermissionAppsModifyFragment;->E0(Landroid/view/View;I)V

    :cond_2
    :goto_1
    return-void
.end method

.method public onCreatePreferences(Landroid/os/Bundle;Ljava/lang/String;)V
    .locals 7
    .param p1    # Landroid/os/Bundle;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    const v0, 0x7f150055

    invoke-virtual {p0, v0, p2}, Landroidx/preference/PreferenceFragmentCompat;->setPreferencesFromResource(ILjava/lang/String;)V

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p2

    const/4 v0, 0x0

    if-eqz p2, :cond_8

    invoke-virtual {p2}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object p2

    if-eqz p2, :cond_8

    const-string v1, "extra_permission_info"

    invoke-virtual {p2, v1}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v1

    const-string v2, "null cannot be cast to non-null type com.miui.permcenter.AppPermissionInfo"

    invoke-static {v1, v2}, Lbk/m;->c(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v1, Lcom/miui/permcenter/AppPermissionInfo;

    iput-object v1, p0, Lcom/miui/permcenter/permissions/PermissionAppsModifyFragment;->q:Lcom/miui/permcenter/AppPermissionInfo;

    const-string v2, "appPermissionInfo"

    if-nez v1, :cond_0

    invoke-static {v2}, Lbk/m;->r(Ljava/lang/String;)V

    move-object v1, v0

    :cond_0
    invoke-virtual {v1}, Lcom/miui/permcenter/AppPermissionInfo;->getPackageName()Ljava/lang/String;

    move-result-object v1

    const-string v3, "appPermissionInfo.packageName"

    invoke-static {v1, v3}, Lbk/m;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0, v1}, Lcom/miui/permcenter/permissions/PermissionAppsModifyFragment;->d1(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/miui/permcenter/permissions/PermissionAppsModifyFragment;->q:Lcom/miui/permcenter/AppPermissionInfo;

    if-nez v1, :cond_1

    invoke-static {v2}, Lbk/m;->r(Ljava/lang/String;)V

    move-object v1, v0

    :cond_1
    invoke-virtual {v1}, Lcom/miui/permcenter/AppPermissionInfo;->getUserId()I

    move-result v1

    iput v1, p0, Lcom/miui/permcenter/permissions/PermissionAppsModifyFragment;->e:I

    const-string v1, "permission_id"

    invoke-virtual {p2, v1}, Landroid/content/Intent;->getSerializableExtra(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v1

    const-string v3, "null cannot be cast to non-null type java.util.ArrayList<kotlin.Long>{ kotlin.collections.TypeAliasesKt.ArrayList<kotlin.Long> }"

    invoke-static {v1, v3}, Lbk/m;->c(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v1, Ljava/util/ArrayList;

    iput-object v1, p0, Lcom/miui/permcenter/permissions/PermissionAppsModifyFragment;->c:Ljava/util/ArrayList;

    const-string v1, "extra_permission_flags"

    const/4 v3, -0x1

    invoke-virtual {p2, v1, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iput-object v1, p0, Lcom/miui/permcenter/permissions/PermissionAppsModifyFragment;->g:Ljava/lang/Integer;

    if-eqz p1, :cond_2

    const-string p2, "save_permission_action"

    invoke-virtual {p1, p2}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;)I

    move-result p1

    goto :goto_0

    :cond_2
    const-string p1, "permission_action"

    invoke-virtual {p2, p1, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p1

    :goto_0
    iput p1, p0, Lcom/miui/permcenter/permissions/PermissionAppsModifyFragment;->h:I

    if-ne p1, v3, :cond_4

    iget-object p1, p0, Lcom/miui/permcenter/permissions/PermissionAppsModifyFragment;->c:Ljava/util/ArrayList;

    iget-object p2, p0, Lcom/miui/permcenter/permissions/PermissionAppsModifyFragment;->q:Lcom/miui/permcenter/AppPermissionInfo;

    if-nez p2, :cond_3

    invoke-static {v2}, Lbk/m;->r(Ljava/lang/String;)V

    move-object p2, v0

    :cond_3
    invoke-virtual {p2}, Lcom/miui/permcenter/AppPermissionInfo;->getPermissionToAction()Ljava/util/HashMap;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/miui/permcenter/l;->b(Ljava/util/ArrayList;Ljava/util/HashMap;)I

    move-result p1

    iput p1, p0, Lcom/miui/permcenter/permissions/PermissionAppsModifyFragment;->h:I

    :cond_4
    iget-object p1, p0, Lcom/miui/permcenter/permissions/PermissionAppsModifyFragment;->c:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p1

    if-eqz p1, :cond_6

    invoke-virtual {p0}, Lcom/miui/permcenter/permissions/PermissionAppsModifyFragment;->K0()Ljava/lang/String;

    move-result-object p1

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result p1

    if-nez p1, :cond_5

    const/4 p1, 0x1

    goto :goto_1

    :cond_5
    const/4 p1, 0x0

    :goto_1
    if-eqz p1, :cond_8

    :cond_6
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    if-eqz p1, :cond_7

    invoke-virtual {p1}, Landroid/app/Activity;->finish()V

    :cond_7
    return-void

    :cond_8
    invoke-virtual {p0}, Lcom/miui/permcenter/permissions/PermissionAppsModifyFragment;->K0()Ljava/lang/String;

    move-result-object p1

    const/16 p2, 0x1000

    iget v1, p0, Lcom/miui/permcenter/permissions/PermissionAppsModifyFragment;->e:I

    invoke-static {p1, p2, v1}, Ltg/a;->d(Ljava/lang/String;II)Landroid/content/pm/PackageInfo;

    move-result-object p1

    iput-object p1, p0, Lcom/miui/permcenter/permissions/PermissionAppsModifyFragment;->f:Landroid/content/pm/PackageInfo;

    if-nez p1, :cond_a

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    if-eqz p1, :cond_9

    invoke-virtual {p1}, Landroid/app/Activity;->finish()V

    :cond_9
    return-void

    :cond_a
    invoke-static {}, Lcom/miui/securitycenter/Application;->A()Lcom/miui/securitycenter/Application;

    move-result-object p1

    const-string p2, "activity"

    invoke-virtual {p1, p2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    const-string p2, "null cannot be cast to non-null type android.app.ActivityManager"

    invoke-static {p1, p2}, Lbk/m;->c(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Landroid/app/ActivityManager;

    iput-object p1, p0, Lcom/miui/permcenter/permissions/PermissionAppsModifyFragment;->m:Landroid/app/ActivityManager;

    invoke-static {}, Lcom/miui/securitycenter/Application;->A()Lcom/miui/securitycenter/Application;

    move-result-object p1

    const-string p2, "appops"

    invoke-virtual {p1, p2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    const-string p2, "null cannot be cast to non-null type android.app.AppOpsManager"

    invoke-static {p1, p2}, Lbk/m;->c(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Landroid/app/AppOpsManager;

    iput-object p1, p0, Lcom/miui/permcenter/permissions/PermissionAppsModifyFragment;->n:Landroid/app/AppOpsManager;

    const-string p1, "permission_desc"

    invoke-virtual {p0, p1}, Landroidx/preference/PreferenceFragmentCompat;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p1

    check-cast p1, Lcom/miui/permcenter/permissions/PermTipsPreference;

    iput-object p1, p0, Lcom/miui/permcenter/permissions/PermissionAppsModifyFragment;->a:Lcom/miui/permcenter/permissions/PermTipsPreference;

    const-string p1, "permission_change_radio_group"

    invoke-virtual {p0, p1}, Landroidx/preference/PreferenceFragmentCompat;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p1

    check-cast p1, Lcom/miui/permcenter/permissions/RadioButtonPreference;

    if-eqz p1, :cond_b

    invoke-direct {p0}, Lcom/miui/permcenter/permissions/PermissionAppsModifyFragment;->O0()Z

    move-result p2

    invoke-virtual {p1, p2}, Lcom/miui/permcenter/permissions/RadioButtonPreference;->i(Z)V

    invoke-direct {p0}, Lcom/miui/permcenter/permissions/PermissionAppsModifyFragment;->N0()Z

    move-result p2

    invoke-virtual {p1, p2}, Lcom/miui/permcenter/permissions/RadioButtonPreference;->e(Z)V

    invoke-direct {p0}, Lcom/miui/permcenter/permissions/PermissionAppsModifyFragment;->R0()Z

    move-result p2

    invoke-virtual {p1, p2}, Lcom/miui/permcenter/permissions/RadioButtonPreference;->l(Z)V

    iget-object p2, p0, Lcom/miui/permcenter/permissions/PermissionAppsModifyFragment;->r:Lcom/miui/permcenter/permissions/PermissionAppsModifyFragment$e;

    invoke-virtual {p1, p2}, Lcom/miui/permcenter/permissions/RadioButtonPreference;->j(Landroid/view/View$OnClickListener;)V

    invoke-virtual {p1, p0}, Lcom/miui/permcenter/permissions/RadioButtonPreference;->g(Lwb/b;)V

    iget p2, p0, Lcom/miui/permcenter/permissions/PermissionAppsModifyFragment;->h:I

    invoke-direct {p0, p1, p2}, Lcom/miui/permcenter/permissions/PermissionAppsModifyFragment;->b1(Lcom/miui/permcenter/permissions/RadioButtonPreference;I)V

    goto :goto_2

    :cond_b
    move-object p1, v0

    :goto_2
    iput-object p1, p0, Lcom/miui/permcenter/permissions/PermissionAppsModifyFragment;->b:Lcom/miui/permcenter/permissions/RadioButtonPreference;

    invoke-direct {p0}, Lcom/miui/permcenter/permissions/PermissionAppsModifyFragment;->P0()V

    invoke-static {p0}, Landroidx/lifecycle/w;->a(Landroidx/lifecycle/v;)Landroidx/lifecycle/o;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    new-instance v4, Lcom/miui/permcenter/permissions/PermissionAppsModifyFragment$d;

    invoke-direct {v4, p0, v0}, Lcom/miui/permcenter/permissions/PermissionAppsModifyFragment$d;-><init>(Lcom/miui/permcenter/permissions/PermissionAppsModifyFragment;Ltj/d;)V

    const/4 v5, 0x3

    const/4 v6, 0x0

    invoke-static/range {v1 .. v6}, Llk/g;->b(Llk/i0;Ltj/g;Llk/k0;Lak/p;ILjava/lang/Object;)Llk/s1;

    return-void
.end method

.method public onPreferenceChange(Landroidx/preference/Preference;Ljava/lang/Object;)Z
    .locals 21
    .param p1    # Landroidx/preference/Preference;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/Object;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    const-string v2, "preference"

    move-object/from16 v3, p1

    invoke-static {v3, v2}, Lbk/m;->e(Ljava/lang/Object;Ljava/lang/String;)V

    iget v2, v0, Lcom/miui/permcenter/permissions/PermissionAppsModifyFragment;->l:I

    const-string v4, "requireContext()"

    const/4 v5, 0x1

    const-string v6, "null cannot be cast to non-null type kotlin.Boolean"

    if-eq v2, v5, :cond_8

    const/4 v7, 0x2

    if-eq v2, v7, :cond_7

    const/4 v4, 0x0

    const/4 v8, 0x3

    if-eq v2, v8, :cond_5

    const/4 v9, 0x4

    if-eq v2, v9, :cond_3

    const/4 v8, 0x5

    if-eq v2, v8, :cond_0

    goto/16 :goto_3

    :cond_0
    invoke-static {v1, v6}, Lbk/m;->c(Ljava/lang/Object;Ljava/lang/String;)V

    move-object v2, v1

    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_1

    goto :goto_0

    :cond_1
    const/4 v7, 0x6

    :goto_0
    invoke-virtual/range {p0 .. p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/miui/permission/PermissionManager;->getInstance(Landroid/content/Context;)Lcom/miui/permission/PermissionManager;

    move-result-object v8

    const-wide v9, 0x4000000000L

    iget-object v2, v0, Lcom/miui/permcenter/permissions/PermissionAppsModifyFragment;->q:Lcom/miui/permcenter/AppPermissionInfo;

    if-nez v2, :cond_2

    const-string v2, "appPermissionInfo"

    invoke-static {v2}, Lbk/m;->r(Ljava/lang/String;)V

    const/4 v2, 0x0

    :cond_2
    invoke-virtual {v2}, Lcom/miui/permcenter/AppPermissionInfo;->getUid()I

    move-result v2

    invoke-static {v2}, Lx4/z1;->m(I)I

    move-result v12

    new-array v13, v5, [Ljava/lang/String;

    invoke-virtual/range {p0 .. p0}, Lcom/miui/permcenter/permissions/PermissionAppsModifyFragment;->K0()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v13, v4

    move v11, v7

    invoke-virtual/range {v8 .. v13}, Lcom/miui/permission/PermissionManager;->setApplicationPermission(JII[Ljava/lang/String;)V

    invoke-direct {v0, v7}, Lcom/miui/permcenter/permissions/PermissionAppsModifyFragment;->S0(I)V

    goto/16 :goto_3

    :cond_3
    invoke-virtual/range {p0 .. p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/miui/permission/PermissionManager;->getInstance(Landroid/content/Context;)Lcom/miui/permission/PermissionManager;

    move-result-object v9

    const-wide v10, 0x800000000L

    invoke-static {v1, v6}, Lbk/m;->c(Ljava/lang/Object;Ljava/lang/String;)V

    move-object v2, v1

    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_4

    move v12, v8

    goto :goto_1

    :cond_4
    move v12, v7

    :goto_1
    iget v13, v0, Lcom/miui/permcenter/permissions/PermissionAppsModifyFragment;->e:I

    new-array v14, v5, [Ljava/lang/String;

    invoke-virtual/range {p0 .. p0}, Lcom/miui/permcenter/permissions/PermissionAppsModifyFragment;->K0()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v14, v4

    invoke-virtual/range {v9 .. v14}, Lcom/miui/permission/PermissionManager;->setApplicationPermission(JII[Ljava/lang/String;)V

    goto/16 :goto_3

    :cond_5
    invoke-virtual/range {p0 .. p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/miui/permission/PermissionManager;->getInstance(Landroid/content/Context;)Lcom/miui/permission/PermissionManager;

    move-result-object v9

    const-wide v10, 0x1000000000L

    invoke-static {v1, v6}, Lbk/m;->c(Ljava/lang/Object;Ljava/lang/String;)V

    move-object v2, v1

    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_6

    move v12, v8

    goto :goto_2

    :cond_6
    move v12, v7

    :goto_2
    iget v13, v0, Lcom/miui/permcenter/permissions/PermissionAppsModifyFragment;->e:I

    new-array v14, v5, [Ljava/lang/String;

    invoke-virtual/range {p0 .. p0}, Lcom/miui/permcenter/permissions/PermissionAppsModifyFragment;->K0()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v14, v4

    invoke-virtual/range {v9 .. v14}, Lcom/miui/permission/PermissionManager;->setApplicationPermission(JII[Ljava/lang/String;)V

    goto :goto_3

    :cond_7
    sget-object v15, Lxc/u;->a:Lxc/u;

    invoke-virtual/range {p0 .. p0}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2, v4}, Lbk/m;->d(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v4, v0, Lcom/miui/permcenter/permissions/PermissionAppsModifyFragment;->f:Landroid/content/pm/PackageInfo;

    invoke-static {v4}, Lbk/m;->b(Ljava/lang/Object;)V

    iget-object v7, v0, Lcom/miui/permcenter/permissions/PermissionAppsModifyFragment;->c:Ljava/util/ArrayList;

    invoke-static {v1, v6}, Lbk/m;->c(Ljava/lang/Object;Ljava/lang/String;)V

    move-object v8, v1

    check-cast v8, Ljava/lang/Boolean;

    invoke-virtual {v8}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v19

    iget v8, v0, Lcom/miui/permcenter/permissions/PermissionAppsModifyFragment;->h:I

    move-object/from16 v16, v2

    move-object/from16 v17, v4

    move-object/from16 v18, v7

    move/from16 v20, v8

    invoke-virtual/range {v15 .. v20}, Lxc/u;->z(Landroid/content/Context;Landroid/content/pm/PackageInfo;Ljava/util/ArrayList;ZI)V

    goto :goto_3

    :cond_8
    sget-object v2, Lxc/u;->a:Lxc/u;

    invoke-virtual/range {p0 .. p0}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    move-result-object v7

    invoke-static {v7, v4}, Lbk/m;->d(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v4, v0, Lcom/miui/permcenter/permissions/PermissionAppsModifyFragment;->f:Landroid/content/pm/PackageInfo;

    invoke-static {v4}, Lbk/m;->b(Ljava/lang/Object;)V

    invoke-static {v1, v6}, Lbk/m;->c(Ljava/lang/Object;Ljava/lang/String;)V

    move-object v8, v1

    check-cast v8, Ljava/lang/Boolean;

    invoke-virtual {v8}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v8

    iget v9, v0, Lcom/miui/permcenter/permissions/PermissionAppsModifyFragment;->h:I

    invoke-virtual {v2, v7, v4, v8, v9}, Lxc/u;->C(Landroid/content/Context;Landroid/content/pm/PackageInfo;ZI)V

    :goto_3
    invoke-virtual/range {p1 .. p1}, Landroidx/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v2

    const-string v3, "app_management_for_independent_storage"

    invoke-static {v2, v3}, Lbk/m;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_9

    invoke-static {v1, v6}, Lbk/m;->c(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    invoke-direct {v0, v1}, Lcom/miui/permcenter/permissions/PermissionAppsModifyFragment;->j1(Z)V

    :cond_9
    return v5
.end method

.method public onResume()V
    .locals 0

    invoke-super {p0}, Landroidx/fragment/app/Fragment;->onResume()V

    invoke-direct {p0}, Lcom/miui/permcenter/permissions/PermissionAppsModifyFragment;->p1()V

    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2
    .param p1    # Landroid/os/Bundle;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "outState"

    invoke-static {p1, v0}, Lbk/m;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-super {p0, p1}, Landroidx/preference/PreferenceFragmentCompat;->onSaveInstanceState(Landroid/os/Bundle;)V

    iget v0, p0, Lcom/miui/permcenter/permissions/PermissionAppsModifyFragment;->h:I

    const-string v1, "save_permission_action"

    invoke-virtual {p1, v1, v0}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    return-void
.end method

.method public setHorizontalPadding(Landroid/view/View;)V
    .locals 0
    .param p1    # Landroid/view/View;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    invoke-static {p1}, Lbk/m;->b(Ljava/lang/Object;)V

    invoke-virtual {p0, p1}, Lcom/miui/permcenter/permissions/PermissionAppsModifyFragment;->e1(Landroid/view/View;)V

    return-void
.end method
