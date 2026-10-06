.class public final Lcom/miui/permcenter/settings/OtherPermissionsFragment;
.super Lmiuix/preference/PreferenceFragment;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/permcenter/settings/OtherPermissionsFragment$a;
    }
.end annotation

.annotation build Lkotlin/jvm/internal/SourceDebugExtension;
    value = {
        "SMAP\nOtherPermissionsActivity.kt\nKotlin\n*S Kotlin\n*F\n+ 1 OtherPermissionsActivity.kt\ncom/miui/permcenter/settings/OtherPermissionsFragment\n+ 2 FragmentViewModelLazy.kt\nandroidx/fragment/app/FragmentViewModelLazyKt\n+ 3 fake.kt\nkotlin/jvm/internal/FakeKt\n+ 4 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,448:1\n56#2,10:449\n1#3:459\n766#4:460\n857#4,2:461\n1179#4,2:463\n1253#4,4:465\n*S KotlinDebug\n*F\n+ 1 OtherPermissionsActivity.kt\ncom/miui/permcenter/settings/OtherPermissionsFragment\n*L\n84#1:449,10\n112#1:460\n112#1:461,2\n303#1:463,2\n303#1:465,4\n*E\n"
    }
.end annotation


# static fields
.field public static final n:Lcom/miui/permcenter/settings/OtherPermissionsFragment$a;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# instance fields
.field private a:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/miui/permission/PermissionGroupInfo;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private b:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/Long;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private c:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private d:Landroid/content/pm/PackageInfo;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private e:I

.field private f:Z

.field private g:Z

.field private h:Z

.field private i:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private j:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final k:Loj/f;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private l:Lcom/miui/permcenter/permissions/c;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private m:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/Long;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/miui/permcenter/settings/OtherPermissionsFragment$a;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/miui/permcenter/settings/OtherPermissionsFragment$a;-><init>(Lbk/g;)V

    sput-object v0, Lcom/miui/permcenter/settings/OtherPermissionsFragment;->n:Lcom/miui/permcenter/settings/OtherPermissionsFragment$a;

    return-void
.end method

.method public constructor <init>()V
    .locals 4

    invoke-direct {p0}, Lmiuix/preference/PreferenceFragment;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/miui/permcenter/settings/OtherPermissionsFragment;->a:Ljava/util/ArrayList;

    const-string v0, ""

    iput-object v0, p0, Lcom/miui/permcenter/settings/OtherPermissionsFragment;->c:Ljava/lang/String;

    invoke-static {}, Lx4/z1;->y()I

    move-result v0

    iput v0, p0, Lcom/miui/permcenter/settings/OtherPermissionsFragment;->e:I

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/miui/permcenter/settings/OtherPermissionsFragment;->i:Ljava/util/List;

    const/4 v0, 0x5

    new-array v0, v0, [Ljava/lang/Long;

    const-wide/16 v1, 0x20

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    const-wide v1, 0x80000000L

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    const-wide/32 v1, 0x2000000

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const/4 v2, 0x2

    aput-object v1, v0, v2

    const-wide/32 v1, 0x40000000

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const/4 v2, 0x3

    aput-object v1, v0, v2

    const-wide/16 v1, 0x10

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const/4 v2, 0x4

    aput-object v1, v0, v2

    invoke-static {v0}, Lqj/l;->j([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/permcenter/settings/OtherPermissionsFragment;->j:Ljava/util/List;

    new-instance v0, Lcom/miui/permcenter/settings/OtherPermissionsFragment$i;

    invoke-direct {v0, p0}, Lcom/miui/permcenter/settings/OtherPermissionsFragment$i;-><init>(Landroidx/fragment/app/Fragment;)V

    const-class v1, Lcom/miui/permcenter/permissions/a;

    invoke-static {v1}, Lbk/z;->b(Ljava/lang/Class;)Lhk/b;

    move-result-object v1

    new-instance v2, Lcom/miui/permcenter/settings/OtherPermissionsFragment$j;

    invoke-direct {v2, v0}, Lcom/miui/permcenter/settings/OtherPermissionsFragment$j;-><init>(Lak/a;)V

    new-instance v3, Lcom/miui/permcenter/settings/OtherPermissionsFragment$k;

    invoke-direct {v3, v0, p0}, Lcom/miui/permcenter/settings/OtherPermissionsFragment$k;-><init>(Lak/a;Landroidx/fragment/app/Fragment;)V

    invoke-static {p0, v1, v2, v3}, Landroidx/fragment/app/x;->a(Landroidx/fragment/app/Fragment;Lhk/b;Lak/a;Lak/a;)Loj/f;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/permcenter/settings/OtherPermissionsFragment;->k:Loj/f;

    return-void
.end method

.method public static synthetic a0(Lcom/miui/permcenter/settings/OtherPermissionsFragment;Ljava/util/ArrayList;Ljava/lang/String;Lcom/miui/permcenter/AppPermissionInfo;Landroidx/preference/Preference;)Z
    .locals 0

    invoke-static {p0, p1, p2, p3, p4}, Lcom/miui/permcenter/settings/OtherPermissionsFragment;->m0(Lcom/miui/permcenter/settings/OtherPermissionsFragment;Ljava/util/ArrayList;Ljava/lang/String;Lcom/miui/permcenter/AppPermissionInfo;Landroidx/preference/Preference;)Z

    move-result p0

    return p0
.end method

.method public static final synthetic b0(Lcom/miui/permcenter/settings/OtherPermissionsFragment;)Ljava/util/HashMap;
    .locals 0

    iget-object p0, p0, Lcom/miui/permcenter/settings/OtherPermissionsFragment;->b:Ljava/util/HashMap;

    return-object p0
.end method

.method public static final synthetic c0(Lcom/miui/permcenter/settings/OtherPermissionsFragment;)Ljava/util/ArrayList;
    .locals 0

    iget-object p0, p0, Lcom/miui/permcenter/settings/OtherPermissionsFragment;->a:Ljava/util/ArrayList;

    return-object p0
.end method

.method public static final synthetic d0(Lcom/miui/permcenter/settings/OtherPermissionsFragment;Ltj/d;)Ljava/lang/Object;
    .locals 0

    invoke-direct {p0, p1}, Lcom/miui/permcenter/settings/OtherPermissionsFragment;->k0(Ltj/d;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic e0(Lcom/miui/permcenter/settings/OtherPermissionsFragment;Ljava/util/List;Ljava/util/List;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/miui/permcenter/settings/OtherPermissionsFragment;->l0(Ljava/util/List;Ljava/util/List;)V

    return-void
.end method

.method public static final synthetic f0(Lcom/miui/permcenter/settings/OtherPermissionsFragment;Lcc/g;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/miui/permcenter/settings/OtherPermissionsFragment;->o0(Lcc/g;)V

    return-void
.end method

.method public static final synthetic g0(Lcom/miui/permcenter/settings/OtherPermissionsFragment;Lcom/miui/permcenter/permissions/c;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/miui/permcenter/settings/OtherPermissionsFragment;->p0(Lcom/miui/permcenter/permissions/c;)V

    return-void
.end method

.method private final h0(Landroid/content/Context;Ljava/lang/String;)Ljava/util/HashMap;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/HashMap<",
            "Ljava/lang/Long;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    const-string v0, "com.android.permission.SHAKE"

    const-string v1, "com.android.permission.GET_INSTALLED_APPS"

    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    sget-boolean v3, Lmiui/os/Build;->IS_INTERNATIONAL_BUILD:Z

    if-nez v3, :cond_4

    :try_start_0
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    invoke-static {p2}, Lbk/m;->b(Ljava/lang/Object;)V

    const/16 v4, 0x1000

    invoke-virtual {v3, p2, v4}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object p2

    iget-object v3, p2, Landroid/content/pm/PackageInfo;->requestedPermissions:[Ljava/lang/String;

    if-eqz v3, :cond_3

    const-string v4, "packageInfo.requestedPermissions"

    invoke-static {v3, v4}, Lbk/m;->d(Ljava/lang/Object;Ljava/lang/String;)V

    array-length v3, v3

    const/4 v4, 0x0

    if-nez v3, :cond_0

    const/4 v3, 0x1

    goto :goto_0

    :cond_0
    move v3, v4

    :goto_0
    if-eqz v3, :cond_1

    goto :goto_1

    :cond_1
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    invoke-virtual {v3, v1, v4}, Landroid/content/pm/PackageManager;->getPermissionInfo(Ljava/lang/String;I)Landroid/content/pm/PermissionInfo;

    move-result-object v3
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const-string v5, "com.lbe.security.miui"

    if-eqz v3, :cond_2

    :try_start_1
    iget-object v3, v3, Landroid/content/pm/PermissionInfo;->packageName:Ljava/lang/String;

    invoke-static {v3, v5}, Lbk/m;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    const-wide/high16 v6, 0x200000000000000L

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    iget-object v6, p2, Landroid/content/pm/PackageInfo;->requestedPermissions:[Ljava/lang/String;

    invoke-static {v6, v1}, Lcom/miui/permission/PermissionManager$ArrayUtils;->contains([Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-interface {v2, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_2
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p1

    invoke-virtual {p1, v0, v4}, Landroid/content/pm/PackageManager;->getPermissionInfo(Ljava/lang/String;I)Landroid/content/pm/PermissionInfo;

    move-result-object p1

    if-eqz p1, :cond_4

    iget-object p1, p1, Landroid/content/pm/PermissionInfo;->packageName:Ljava/lang/String;

    invoke-static {p1, v5}, Lbk/m;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_4

    const-wide/high16 v3, 0x800000000000000L

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    iget-object p2, p2, Landroid/content/pm/PackageInfo;->requestedPermissions:[Ljava/lang/String;

    invoke-static {p2, v0}, Lcom/miui/permission/PermissionManager$ArrayUtils;->contains([Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p2

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p2

    invoke-interface {v2, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_2

    :cond_3
    :goto_1
    return-object v2

    :catch_0
    move-exception p1

    const-string p2, "OtherPermissionsFragment"

    const-string v0, "requestedGetInstallAppsPermission error"

    invoke-static {p2, v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_4
    :goto_2
    return-object v2
.end method

.method private final i0(Ljava/util/List;Ljava/util/HashMap;)Ljava/util/List;
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "+",
            "Lcom/miui/permission/PermissionGroupInfo;",
            ">;",
            "Ljava/util/HashMap<",
            "Ljava/lang/Long;",
            "Ljava/lang/Integer;",
            ">;)",
            "Ljava/util/List<",
            "Lcom/miui/permission/PermissionGroupInfo;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    if-ge v3, v1, :cond_3

    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {p1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/miui/permission/PermissionGroupInfo;

    invoke-virtual {v5}, Lcom/miui/permission/PermissionGroupInfo;->getRelativePermissionIds()Ljava/util/ArrayList;

    move-result-object v6

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    move v7, v2

    :goto_1
    if-ge v7, v6, :cond_1

    invoke-virtual {v5}, Lcom/miui/permission/PermissionGroupInfo;->getRelativePermissionIds()Ljava/util/ArrayList;

    move-result-object v8

    invoke-virtual {v8, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/Long;

    const-string v9, "permissionId"

    invoke-static {v8, v9}, Lbk/m;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v8}, Ljava/lang/Long;->longValue()J

    move-result-wide v9

    invoke-direct {p0, v9, v10, p2}, Lcom/miui/permcenter/settings/OtherPermissionsFragment;->n0(JLjava/util/HashMap;)Z

    move-result v9

    if-eqz v9, :cond_0

    invoke-virtual {v4, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_0
    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    :cond_1
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-eqz v6, :cond_2

    invoke-virtual {v5, v4}, Lcom/miui/permission/PermissionGroupInfo;->setRelativePermissionIds(Ljava/util/ArrayList;)V

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_3
    return-object v0
.end method

.method private final j0()Lcom/miui/permcenter/permissions/a;
    .locals 1

    iget-object v0, p0, Lcom/miui/permcenter/settings/OtherPermissionsFragment;->k:Loj/f;

    invoke-interface {v0}, Loj/f;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/permcenter/permissions/a;

    return-object v0
.end method

.method private final k0(Ltj/d;)Ljava/lang/Object;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ltj/d<",
            "-",
            "Ljava/util/List<",
            "+",
            "Lcom/miui/permission/PermissionInfo;",
            ">;>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    instance-of v0, p1, Lcom/miui/permcenter/settings/OtherPermissionsFragment$b;

    if-eqz v0, :cond_0

    move-object v0, p1

    check-cast v0, Lcom/miui/permcenter/settings/OtherPermissionsFragment$b;

    iget v1, v0, Lcom/miui/permcenter/settings/OtherPermissionsFragment$b;->c:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_0

    sub-int/2addr v1, v2

    iput v1, v0, Lcom/miui/permcenter/settings/OtherPermissionsFragment$b;->c:I

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/miui/permcenter/settings/OtherPermissionsFragment$b;

    invoke-direct {v0, p0, p1}, Lcom/miui/permcenter/settings/OtherPermissionsFragment$b;-><init>(Lcom/miui/permcenter/settings/OtherPermissionsFragment;Ltj/d;)V

    :goto_0
    iget-object p1, v0, Lcom/miui/permcenter/settings/OtherPermissionsFragment$b;->a:Ljava/lang/Object;

    invoke-static {}, Luj/b;->c()Ljava/lang/Object;

    move-result-object v1

    iget v2, v0, Lcom/miui/permcenter/settings/OtherPermissionsFragment$b;->c:I

    const/4 v3, 0x1

    if-eqz v2, :cond_2

    if-ne v2, v3, :cond_1

    invoke-static {p1}, Loj/n;->b(Ljava/lang/Object;)V

    goto :goto_1

    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_2
    invoke-static {p1}, Loj/n;->b(Ljava/lang/Object;)V

    invoke-static {}, Llk/w0;->b()Llk/d0;

    move-result-object p1

    new-instance v2, Lcom/miui/permcenter/settings/OtherPermissionsFragment$c;

    const/4 v4, 0x0

    invoke-direct {v2, p0, v4}, Lcom/miui/permcenter/settings/OtherPermissionsFragment$c;-><init>(Lcom/miui/permcenter/settings/OtherPermissionsFragment;Ltj/d;)V

    iput v3, v0, Lcom/miui/permcenter/settings/OtherPermissionsFragment$b;->c:I

    invoke-static {p1, v2, v0}, Llk/g;->c(Ltj/g;Lak/p;Ltj/d;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v1, :cond_3

    return-object v1

    :cond_3
    :goto_1
    const-string v0, "private suspend fun getP\u2026ssions(0)\n        }\n    }"

    invoke-static {p1, v0}, Lbk/m;->d(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p1
.end method

.method private final l0(Ljava/util/List;Ljava/util/List;)V
    .locals 29
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "+",
            "Lcom/miui/permission/PermissionGroupInfo;",
            ">;",
            "Ljava/util/List<",
            "+",
            "Lcom/miui/permission/PermissionInfo;",
            ">;)V"
        }
    .end annotation

    move-object/from16 v0, p0

    invoke-virtual/range {p0 .. p0}, Landroidx/preference/PreferenceFragmentCompat;->getPreferenceScreen()Landroidx/preference/PreferenceScreen;

    move-result-object v1

    invoke-virtual {v1}, Landroidx/preference/PreferenceGroup;->removeAll()V

    const/16 v2, 0xa

    move-object/from16 v3, p2

    invoke-static {v3, v2}, Lqj/l;->o(Ljava/lang/Iterable;I)I

    move-result v2

    invoke-static {v2}, Lqj/d0;->a(I)I

    move-result v2

    const/16 v4, 0x10

    invoke-static {v2, v4}, Lgk/g;->a(II)I

    move-result v2

    new-instance v4, Ljava/util/LinkedHashMap;

    invoke-direct {v4, v2}, Ljava/util/LinkedHashMap;-><init>(I)V

    invoke-interface/range {p2 .. p2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/miui/permission/PermissionInfo;

    new-instance v5, Loj/l;

    invoke-virtual {v3}, Lcom/miui/permission/PermissionInfo;->getId()J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-direct {v5, v6, v3}, Loj/l;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v5}, Loj/l;->c()Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v5}, Loj/l;->d()Ljava/lang/Object;

    move-result-object v5

    invoke-interface {v4, v3, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_0
    invoke-interface/range {p1 .. p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    const/4 v3, 0x0

    move-object v5, v3

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    const-string v7, " is restricted"

    const-string v8, "Permission edit for package "

    const-string v9, "Enterprise"

    const-string v10, "requireContext()"

    if-eqz v6, :cond_9

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/miui/permission/PermissionGroupInfo;

    new-instance v6, Lmiuix/preference/PreferenceCategory;

    invoke-virtual/range {p0 .. p0}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    move-result-object v12

    invoke-direct {v6, v12, v3}, Lmiuix/preference/PreferenceCategory;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    invoke-static {}, Lhc/a;->b()Landroid/content/Context;

    move-result-object v12

    invoke-virtual {v5, v12}, Lcom/miui/permission/PermissionGroupInfo;->getName(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v6, v12}, Landroidx/preference/Preference;->setTitle(Ljava/lang/CharSequence;)V

    invoke-virtual {v1, v6}, Landroidx/preference/PreferenceGroup;->addPreference(Landroidx/preference/Preference;)Z

    invoke-virtual {v5}, Lcom/miui/permission/PermissionGroupInfo;->getRelativePermissionIds()Ljava/util/ArrayList;

    move-result-object v12

    invoke-virtual {v12}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v12

    :goto_2
    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    move-result v13

    if-eqz v13, :cond_8

    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/lang/Long;

    invoke-interface {v4, v13}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v14

    if-nez v14, :cond_1

    goto :goto_2

    :cond_1
    new-instance v14, Ljava/util/ArrayList;

    invoke-direct {v14}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v14, v13}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-interface {v4, v13}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Lcom/miui/permission/PermissionInfo;

    if-nez v15, :cond_2

    goto :goto_2

    :cond_2
    invoke-virtual/range {p0 .. p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3, v15}, Lcom/miui/permcenter/q;->h(Landroid/content/Context;Lcom/miui/permission/PermissionInfo;)Ljava/lang/String;

    move-result-object v3

    iget-object v11, v0, Lcom/miui/permcenter/settings/OtherPermissionsFragment;->b:Ljava/util/HashMap;

    if-nez v11, :cond_3

    new-instance v11, Lmiuix/preference/TextPreference;

    invoke-virtual/range {p0 .. p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v13

    invoke-direct {v11, v13}, Lmiuix/preference/TextPreference;-><init>(Landroid/content/Context;)V

    invoke-virtual {v11, v3}, Landroidx/preference/Preference;->setTitle(Ljava/lang/CharSequence;)V

    new-instance v13, Landroid/content/Intent;

    invoke-virtual/range {p0 .. p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v14

    move-object/from16 v16, v1

    const-class v1, Lcom/miui/permcenter/permissions/PermissionAppsEditorActivity;

    invoke-direct {v13, v14, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-static {}, Lhc/a;->b()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v5, v1}, Lcom/miui/permission/PermissionGroupInfo;->getName(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    const-string v14, ":miui:starting_window_label"

    invoke-virtual {v13, v14, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-object/from16 v17, v2

    invoke-virtual {v15}, Lcom/miui/permission/PermissionInfo;->getId()J

    move-result-wide v1

    const-string v14, "extra_permission_id"

    invoke-virtual {v13, v14, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    invoke-virtual {v5}, Lcom/miui/permission/PermissionGroupInfo;->getId()I

    move-result v1

    const-string v2, "extra_permission_group"

    invoke-virtual {v13, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string v1, "extra_permission_name"

    invoke-virtual {v13, v1, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {v11, v13}, Landroidx/preference/Preference;->setIntent(Landroid/content/Intent;)V

    invoke-virtual/range {p0 .. p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f100059

    invoke-virtual {v15}, Lcom/miui/permission/PermissionInfo;->getAppCount()I

    move-result v3

    const/4 v13, 0x1

    new-array v13, v13, [Ljava/lang/Object;

    invoke-virtual {v15}, Lcom/miui/permission/PermissionInfo;->getAppCount()I

    move-result v14

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    const/4 v15, 0x0

    aput-object v14, v13, v15

    invoke-virtual {v1, v2, v3, v13}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v11, v1}, Lmiuix/preference/TextPreference;->setText(Ljava/lang/String;)V

    move-object/from16 v28, v4

    move-object v15, v5

    goto/16 :goto_5

    :cond_3
    move-object/from16 v16, v1

    move-object/from16 v17, v2

    new-instance v11, Lcom/miui/permcenter/permissions/AppPermissionsEditorPreference;

    invoke-virtual/range {p0 .. p0}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v11, v1}, Lcom/miui/permcenter/permissions/AppPermissionsEditorPreference;-><init>(Landroid/content/Context;)V

    invoke-virtual {v11, v3}, Lcom/miui/permcenter/permissions/AppPermissionsEditorPreference;->i(Ljava/lang/String;)V

    iget-object v1, v0, Lcom/miui/permcenter/settings/OtherPermissionsFragment;->b:Ljava/util/HashMap;

    invoke-static {v1}, Lbk/m;->b(Ljava/lang/Object;)V

    const-string v2, "permissionId"

    invoke-static {v13, v2}, Lbk/m;->d(Ljava/lang/Object;Ljava/lang/String;)V

    move-object v2, v4

    move-object v15, v5

    invoke-virtual {v13}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    invoke-static {v1, v4, v5}, Lcom/miui/permcenter/l;->a(Ljava/util/HashMap;J)I

    move-result v1

    invoke-virtual {v11, v1}, Lcom/miui/permcenter/permissions/AppBasePermsEditorPreference;->e(I)V

    invoke-virtual {v13}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v11, v1}, Landroidx/preference/Preference;->setKey(Ljava/lang/String;)V

    new-instance v1, Lcom/miui/permcenter/AppPermissionInfo;

    invoke-direct {v1}, Lcom/miui/permcenter/AppPermissionInfo;-><init>()V

    iget-object v4, v0, Lcom/miui/permcenter/settings/OtherPermissionsFragment;->c:Ljava/lang/String;

    invoke-virtual {v1, v4}, Lcom/miui/permcenter/AppPermissionInfo;->setPackageName(Ljava/lang/String;)V

    iget-object v4, v0, Lcom/miui/permcenter/settings/OtherPermissionsFragment;->d:Landroid/content/pm/PackageInfo;

    if-eqz v4, :cond_4

    iget-object v4, v4, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    if-eqz v4, :cond_4

    iget v4, v4, Landroid/content/pm/ApplicationInfo;->uid:I

    goto :goto_3

    :cond_4
    const/4 v4, 0x0

    :goto_3
    invoke-virtual {v1, v4}, Lcom/miui/permcenter/AppPermissionInfo;->setUid(I)V

    iget-object v4, v0, Lcom/miui/permcenter/settings/OtherPermissionsFragment;->b:Ljava/util/HashMap;

    invoke-virtual {v1, v4}, Lcom/miui/permcenter/AppPermissionInfo;->setPermissionToAction(Ljava/util/HashMap;)V

    new-instance v4, Ltc/d;

    invoke-direct {v4, v0, v14, v3, v1}, Ltc/d;-><init>(Lcom/miui/permcenter/settings/OtherPermissionsFragment;Ljava/util/ArrayList;Ljava/lang/String;Lcom/miui/permcenter/AppPermissionInfo;)V

    invoke-virtual {v11, v4}, Landroidx/preference/Preference;->setOnPreferenceClickListener(Landroidx/preference/Preference$d;)V

    invoke-virtual {v13}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    iget-object v1, v0, Lcom/miui/permcenter/settings/OtherPermissionsFragment;->c:Ljava/lang/String;

    invoke-static {v3, v4, v1}, Lcom/miui/appmanager/AppManageUtils;->p0(JLjava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_5

    sget-object v1, Lcc/b0;->a:Lcc/b0$a;

    invoke-virtual/range {p0 .. p0}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3, v10}, Lbk/m;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v13}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    iget-object v14, v0, Lcom/miui/permcenter/settings/OtherPermissionsFragment;->c:Ljava/lang/String;

    invoke-static {v14}, Lbk/m;->b(Ljava/lang/Object;)V

    invoke-virtual {v1, v3, v4, v5, v14}, Lcc/b0$a;->b(Landroid/content/Context;JLjava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_5

    invoke-virtual/range {p0 .. p0}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3, v10}, Lbk/m;->d(Ljava/lang/Object;Ljava/lang/String;)V

    iget-boolean v4, v0, Lcom/miui/permcenter/settings/OtherPermissionsFragment;->h:Z

    iget-object v5, v0, Lcom/miui/permcenter/settings/OtherPermissionsFragment;->i:Ljava/util/List;

    iget-object v14, v0, Lcom/miui/permcenter/settings/OtherPermissionsFragment;->d:Landroid/content/pm/PackageInfo;

    invoke-static {v14}, Lbk/m;->b(Ljava/lang/Object;)V

    invoke-virtual {v13}, Ljava/lang/Long;->longValue()J

    move-result-wide v23

    move-object/from16 v28, v2

    iget-object v2, v0, Lcom/miui/permcenter/settings/OtherPermissionsFragment;->b:Ljava/util/HashMap;

    invoke-static {v2}, Lbk/m;->b(Ljava/lang/Object;)V

    invoke-virtual {v2, v13}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    invoke-static {v2}, Lbk/m;->b(Ljava/lang/Object;)V

    check-cast v2, Ljava/lang/Number;

    invoke-virtual {v2}, Ljava/lang/Number;->intValue()I

    move-result v25

    iget v2, v0, Lcom/miui/permcenter/settings/OtherPermissionsFragment;->e:I

    iget-object v13, v0, Lcom/miui/permcenter/settings/OtherPermissionsFragment;->c:Ljava/lang/String;

    invoke-static {v13}, Lbk/m;->b(Ljava/lang/Object;)V

    move-object/from16 v18, v1

    move-object/from16 v19, v3

    move/from16 v20, v4

    move-object/from16 v21, v5

    move-object/from16 v22, v14

    move/from16 v26, v2

    move-object/from16 v27, v13

    invoke-virtual/range {v18 .. v27}, Lcc/b0$a;->a(Landroid/content/Context;ZLjava/util/List;Landroid/content/pm/PackageInfo;JIILjava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_6

    goto :goto_4

    :cond_5
    move-object/from16 v28, v2

    :goto_4
    const/4 v1, 0x0

    invoke-virtual {v11, v1}, Lcom/miui/permcenter/permissions/AppBasePermsEditorPreference;->setEnabled(Z)V

    :cond_6
    :goto_5
    invoke-virtual/range {p0 .. p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, v0, Lcom/miui/permcenter/settings/OtherPermissionsFragment;->c:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/miui/permcenter/compact/EnterpriseCompat;->shouldGrantPermission(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_7

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, v0, Lcom/miui/permcenter/settings/OtherPermissionsFragment;->c:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v9, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, 0x0

    invoke-virtual {v11, v1}, Landroidx/preference/Preference;->setEnabled(Z)V

    :cond_7
    invoke-virtual {v6, v11}, Landroidx/preference/PreferenceGroup;->addPreference(Landroidx/preference/Preference;)Z

    move-object v5, v15

    move-object/from16 v1, v16

    move-object/from16 v2, v17

    move-object/from16 v4, v28

    const/4 v3, 0x0

    goto/16 :goto_2

    :cond_8
    move-object v5, v6

    goto/16 :goto_1

    :cond_9
    iget-object v1, v0, Lcom/miui/permcenter/settings/OtherPermissionsFragment;->b:Ljava/util/HashMap;

    const v2, 0x7f121bd2

    if-nez v1, :cond_c

    new-instance v1, Lmiuix/preference/TextPreference;

    invoke-virtual/range {p0 .. p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v1, v3}, Lmiuix/preference/TextPreference;-><init>(Landroid/content/Context;)V

    const v3, 0x7f121a3b

    invoke-virtual {v0, v3}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroidx/preference/Preference;->setTitle(Ljava/lang/CharSequence;)V

    new-instance v3, Landroid/content/Intent;

    invoke-virtual/range {p0 .. p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v4

    const-class v6, Lcom/miui/permcenter/autostart/AutoStartManagementActivity;

    invoke-direct {v3, v4, v6}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {v1, v3}, Landroidx/preference/Preference;->setIntent(Landroid/content/Intent;)V

    if-eqz v5, :cond_a

    invoke-virtual {v5, v1}, Landroidx/preference/PreferenceGroup;->addPreference(Landroidx/preference/Preference;)Z

    :cond_a
    sget-boolean v1, Lcom/miui/permcenter/o;->y:Z

    if-eqz v1, :cond_b

    new-instance v1, Lmiuix/preference/TextPreference;

    invoke-virtual/range {p0 .. p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v1, v3}, Lmiuix/preference/TextPreference;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, v2}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroidx/preference/Preference;->setTitle(Ljava/lang/CharSequence;)V

    sget-object v2, Lcom/miui/permcenter/wakepath/WakePathManagerActivity;->a:Lcom/miui/permcenter/wakepath/WakePathManagerActivity$a;

    invoke-virtual/range {p0 .. p0}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3, v10}, Lbk/m;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v2, v3}, Lcom/miui/permcenter/wakepath/WakePathManagerActivity$a;->d(Landroid/content/Context;)Landroid/content/Intent;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroidx/preference/Preference;->setIntent(Landroid/content/Intent;)V

    if-eqz v5, :cond_b

    invoke-virtual {v5, v1}, Landroidx/preference/PreferenceGroup;->addPreference(Landroidx/preference/Preference;)Z

    :cond_b
    new-instance v1, Lmiuix/preference/TextPreference;

    invoke-virtual/range {p0 .. p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Lmiuix/preference/TextPreference;-><init>(Landroid/content/Context;)V

    const v2, 0x7f121389

    invoke-virtual {v0, v2}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroidx/preference/Preference;->setTitle(Ljava/lang/CharSequence;)V

    invoke-direct/range {p0 .. p0}, Lcom/miui/permcenter/settings/OtherPermissionsFragment;->r0()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-static {v2, v3}, Landroid/content/Intent;->parseUri(Ljava/lang/String;I)Landroid/content/Intent;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroidx/preference/Preference;->setIntent(Landroid/content/Intent;)V

    if-eqz v5, :cond_e

    goto :goto_6

    :cond_c
    iget-boolean v1, v0, Lcom/miui/permcenter/settings/OtherPermissionsFragment;->f:Z

    if-nez v1, :cond_e

    sget-boolean v1, Lcom/miui/permcenter/o;->y:Z

    if-eqz v1, :cond_e

    new-instance v1, Lmiuix/preference/TextPreference;

    invoke-virtual/range {p0 .. p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v1, v3}, Lmiuix/preference/TextPreference;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, v2}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroidx/preference/Preference;->setTitle(Ljava/lang/CharSequence;)V

    sget-object v2, Lcom/miui/permcenter/wakepath/WakePathManagerActivity;->a:Lcom/miui/permcenter/wakepath/WakePathManagerActivity$a;

    invoke-virtual/range {p0 .. p0}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3, v10}, Lbk/m;->d(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v4, v0, Lcom/miui/permcenter/settings/OtherPermissionsFragment;->c:Ljava/lang/String;

    invoke-virtual {v2, v3, v4}, Lcom/miui/permcenter/wakepath/WakePathManagerActivity$a;->b(Landroid/content/Context;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroidx/preference/Preference;->setIntent(Landroid/content/Intent;)V

    invoke-virtual/range {p0 .. p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v2

    iget-object v3, v0, Lcom/miui/permcenter/settings/OtherPermissionsFragment;->c:Ljava/lang/String;

    invoke-static {v2, v3}, Lcom/miui/permcenter/compact/EnterpriseCompat;->shouldGrantPermission(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_d

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, v0, Lcom/miui/permcenter/settings/OtherPermissionsFragment;->c:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v9, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroidx/preference/Preference;->setEnabled(Z)V

    :cond_d
    if-eqz v5, :cond_e

    :goto_6
    invoke-virtual {v5, v1}, Landroidx/preference/PreferenceGroup;->addPreference(Landroidx/preference/Preference;)Z

    :cond_e
    return-void
.end method

.method private static final m0(Lcom/miui/permcenter/settings/OtherPermissionsFragment;Ljava/util/ArrayList;Ljava/lang/String;Lcom/miui/permcenter/AppPermissionInfo;Landroidx/preference/Preference;)Z
    .locals 3

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lbk/m;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "$permissionIds"

    invoke-static {p1, v0}, Lbk/m;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "$appPermissionInfo"

    invoke-static {p3, v0}, Lbk/m;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "it"

    invoke-static {p4, v0}, Lbk/m;->e(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Landroid/content/Intent;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    const-class v2, Lcom/miui/permcenter/permissions/PermissionAppsModifyActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v1, "permission_id"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    const-string p1, "permission_name"

    invoke-virtual {v0, p1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    check-cast p4, Lcom/miui/permcenter/permissions/AppPermissionsEditorPreference;

    invoke-virtual {p4}, Lcom/miui/permcenter/permissions/AppBasePermsEditorPreference;->d()I

    move-result p1

    const-string p2, "permission_action"

    invoke-virtual {v0, p2, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string p1, "extra_permission_info"

    invoke-virtual {v0, p1, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    const/16 p1, 0x1c8

    invoke-virtual {p0, v0, p1}, Landroidx/fragment/app/Fragment;->startActivityForResult(Landroid/content/Intent;I)V

    const/4 p0, 0x1

    return p0
.end method

.method private final n0(JLjava/util/HashMap;)Z
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava/util/HashMap<",
            "Ljava/lang/Long;",
            "Ljava/lang/Integer;",
            ">;)Z"
        }
    .end annotation

    const-wide v0, 0x1000000000L

    cmp-long v0, p1, v0

    const/4 v1, 0x0

    if-eqz v0, :cond_6

    const-wide v2, 0x800000000L

    cmp-long v0, p1, v2

    if-eqz v0, :cond_6

    const-wide v2, 0x400000000L

    cmp-long v0, p1, v2

    if-nez v0, :cond_0

    invoke-static {}, Lxc/k;->c()Z

    move-result v0

    if-eqz v0, :cond_6

    :cond_0
    const-wide v2, 0x200000000000L

    cmp-long v0, p1, v2

    if-nez v0, :cond_2

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v2, p0, Lcom/miui/permcenter/settings/OtherPermissionsFragment;->d:Landroid/content/pm/PackageInfo;

    if-eqz v2, :cond_1

    iget-object v2, v2, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    goto :goto_0

    :cond_1
    const/4 v2, 0x0

    :goto_0
    invoke-static {v0, v2}, Lxc/m;->b(Landroid/content/Context;Landroid/content/pm/ApplicationInfo;)Lxc/m$a;

    move-result-object v0

    sget-object v2, Lxc/m$a;->a:Lxc/m$a;

    if-eq v0, v2, :cond_2

    goto :goto_1

    :cond_2
    iget-boolean v0, p0, Lcom/miui/permcenter/settings/OtherPermissionsFragment;->f:Z

    if-nez v0, :cond_3

    iget-boolean v0, p0, Lcom/miui/permcenter/settings/OtherPermissionsFragment;->g:Z

    if-eqz v0, :cond_5

    :cond_3
    iget-object v0, p0, Lcom/miui/permcenter/settings/OtherPermissionsFragment;->m:Ljava/util/HashMap;

    invoke-direct {p0, p1, p2, v0}, Lcom/miui/permcenter/settings/OtherPermissionsFragment;->q0(JLjava/util/HashMap;)Z

    move-result v0

    if-eqz v0, :cond_4

    return v1

    :cond_4
    sget-object v0, Lcom/miui/permission/RequiredPermissionsUtil;->RUNTIME_PERMISSIONS:Ljava/util/Map;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/Map;->containsValue(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_5

    invoke-static {p1, p2}, Lxc/m;->d(J)Z

    move-result v0

    if-nez v0, :cond_5

    return v1

    :cond_5
    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    invoke-virtual {p3, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result p1

    return p1

    :cond_6
    :goto_1
    return v1
.end method

.method private final o0(Lcc/g;)V
    .locals 6

    invoke-virtual {p1}, Lcc/g;->e()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    sget-object v0, Lcom/miui/permcenter/permissions/NewPermissionsEditorFragment;->n:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onAppPermissionChange: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p1}, Lcc/g;->a()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-direct {p0}, Lcom/miui/permcenter/settings/OtherPermissionsFragment;->j0()Lcom/miui/permcenter/permissions/a;

    move-result-object p1

    iget-object v0, p0, Lcom/miui/permcenter/settings/OtherPermissionsFragment;->d:Landroid/content/pm/PackageInfo;

    invoke-static {v0}, Lbk/m;->b(Ljava/lang/Object;)V

    invoke-virtual {p1, v0}, Lcom/miui/permcenter/permissions/a;->e(Landroid/content/pm/PackageInfo;)V

    goto/16 :goto_2

    :cond_1
    invoke-virtual {p1}, Lcc/g;->b()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/permcenter/settings/OtherPermissionsFragment;->c:Ljava/lang/String;

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-virtual {p1}, Lcc/g;->d()I

    move-result v0

    iget v1, p0, Lcom/miui/permcenter/settings/OtherPermissionsFragment;->e:I

    if-ne v0, v1, :cond_5

    invoke-virtual {p1}, Lcc/g;->c()Landroid/util/ArrayMap;

    move-result-object v0

    invoke-virtual {v0}, Landroid/util/ArrayMap;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_2
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Long;

    iget-object v3, p0, Lcom/miui/permcenter/settings/OtherPermissionsFragment;->l:Lcom/miui/permcenter/permissions/c;

    invoke-static {v3}, Lbk/m;->b(Ljava/lang/Object;)V

    invoke-virtual {v3}, Lcom/miui/permcenter/permissions/c;->b()Ljava/util/HashMap;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    iget-object v3, p0, Lcom/miui/permcenter/settings/OtherPermissionsFragment;->l:Lcom/miui/permcenter/permissions/c;

    invoke-static {v3}, Lbk/m;->b(Ljava/lang/Object;)V

    invoke-virtual {v3}, Lcom/miui/permcenter/permissions/c;->b()Ljava/util/HashMap;

    move-result-object v3

    const-string v4, "mHolder!!.permissionToAction"

    invoke-static {v3, v4}, Lbk/m;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Lcc/g;->c()Landroid/util/ArrayMap;

    move-result-object v4

    invoke-virtual {v4, v1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    invoke-interface {v3, v1, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_3
    invoke-virtual {p1}, Lcc/g;->c()Landroid/util/ArrayMap;

    move-result-object p1

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {p1}, Landroid/util/ArrayMap;->size()I

    move-result v1

    const/4 v3, 0x0

    move v4, v3

    :goto_1
    if-ge v4, v1, :cond_4

    invoke-virtual {p1, v4}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    :cond_4
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Number;

    invoke-virtual {p1}, Ljava/lang/Number;->longValue()J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroidx/preference/PreferenceFragmentCompat;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p1

    check-cast p1, Lcom/miui/permcenter/permissions/AppPermissionsEditorPreference;

    if-eqz p1, :cond_5

    iget-object v1, p0, Lcom/miui/permcenter/settings/OtherPermissionsFragment;->l:Lcom/miui/permcenter/permissions/c;

    invoke-static {v1}, Lbk/m;->b(Ljava/lang/Object;)V

    invoke-virtual {v1}, Lcom/miui/permcenter/permissions/c;->b()Ljava/util/HashMap;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/miui/permcenter/l;->b(Ljava/util/ArrayList;Ljava/util/HashMap;)I

    move-result v0

    sget-object v1, Lcom/miui/permcenter/permissions/NewPermissionsEditorFragment;->n:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p1, v0}, Lcom/miui/permcenter/permissions/AppBasePermsEditorPreference;->e(I)V

    :cond_5
    :goto_2
    return-void
.end method

.method private final p0(Lcom/miui/permcenter/permissions/c;)V
    .locals 9

    iput-object p1, p0, Lcom/miui/permcenter/settings/OtherPermissionsFragment;->l:Lcom/miui/permcenter/permissions/c;

    invoke-virtual {p1}, Lcom/miui/permcenter/permissions/c;->b()Ljava/util/HashMap;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/permcenter/settings/OtherPermissionsFragment;->b:Ljava/util/HashMap;

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/miui/permcenter/settings/OtherPermissionsFragment;->d:Landroid/content/pm/PackageInfo;

    if-eqz v0, :cond_0

    iget-object v0, v0, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    goto :goto_0

    :cond_0
    move-object v0, v1

    :goto_0
    invoke-static {v0}, Lx4/f1;->L(Landroid/content/pm/ApplicationInfo;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/miui/permcenter/settings/OtherPermissionsFragment;->f:Z

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v2, p0, Lcom/miui/permcenter/settings/OtherPermissionsFragment;->d:Landroid/content/pm/PackageInfo;

    invoke-static {v0, v2}, Lcom/miui/permission/RequiredPermissionsUtil;->isAdaptedRequiredPermissionsOnData(Landroid/content/Context;Landroid/content/pm/PackageInfo;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/miui/permcenter/settings/OtherPermissionsFragment;->g:Z

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v2, p0, Lcom/miui/permcenter/settings/OtherPermissionsFragment;->d:Landroid/content/pm/PackageInfo;

    invoke-static {v0, v2}, Lcom/miui/permission/RequiredPermissionsUtil;->isRequiredModifiableIncludeShared(Landroid/content/Context;Landroid/content/pm/PackageInfo;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/miui/permcenter/settings/OtherPermissionsFragment;->h:Z

    iget-boolean v0, p0, Lcom/miui/permcenter/settings/OtherPermissionsFragment;->f:Z

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lcom/miui/permcenter/settings/OtherPermissionsFragment;->g:Z

    if-eqz v0, :cond_2

    :cond_1
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v2, p0, Lcom/miui/permcenter/settings/OtherPermissionsFragment;->d:Landroid/content/pm/PackageInfo;

    invoke-static {v0, v2}, Lcom/miui/permission/RequiredPermissionsUtil;->retrieveRequiredPermissionsIncludeShared(Landroid/content/Context;Landroid/content/pm/PackageInfo;)Ljava/util/List;

    move-result-object v0

    const-string v2, "retrieveRequiredPermissi\u2026ed(context, mPackageInfo)"

    invoke-static {v0, v2}, Lbk/m;->d(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/miui/permcenter/settings/OtherPermissionsFragment;->i:Ljava/util/List;

    :cond_2
    invoke-virtual {p1}, Lcom/miui/permcenter/permissions/c;->a()Ljava/util/List;

    move-result-object v0

    const-string v2, "data.data1"

    invoke-static {v0, v2}, Lbk/m;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/miui/permcenter/permissions/c;->b()Ljava/util/HashMap;

    move-result-object p1

    const-string v2, "data.permissionToAction"

    invoke-static {p1, v2}, Lbk/m;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, v0, p1}, Lcom/miui/permcenter/settings/OtherPermissionsFragment;->i0(Ljava/util/List;Ljava/util/HashMap;)Ljava/util/List;

    move-result-object p1

    iget-object v0, p0, Lcom/miui/permcenter/settings/OtherPermissionsFragment;->a:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    const/4 v0, 0x0

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    :goto_1
    if-ge v0, v2, :cond_4

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/miui/permission/PermissionGroupInfo;

    invoke-virtual {v3}, Lcom/miui/permission/PermissionGroupInfo;->isShowInSecondPage()Z

    move-result v3

    if-eqz v3, :cond_3

    iget-object v3, p0, Lcom/miui/permcenter/settings/OtherPermissionsFragment;->a:Ljava/util/ArrayList;

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_4
    invoke-static {p0}, Landroidx/lifecycle/w;->a(Landroidx/lifecycle/v;)Landroidx/lifecycle/o;

    move-result-object v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    new-instance v6, Lcom/miui/permcenter/settings/OtherPermissionsFragment$g;

    invoke-direct {v6, p0, v1}, Lcom/miui/permcenter/settings/OtherPermissionsFragment$g;-><init>(Lcom/miui/permcenter/settings/OtherPermissionsFragment;Ltj/d;)V

    const/4 v7, 0x3

    const/4 v8, 0x0

    invoke-static/range {v3 .. v8}, Llk/g;->b(Llk/i0;Ltj/g;Llk/k0;Lak/p;ILjava/lang/Object;)Llk/s1;

    return-void
.end method

.method private final q0(JLjava/util/HashMap;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava/util/HashMap<",
            "Ljava/lang/Long;",
            "Ljava/lang/Boolean;",
            ">;)Z"
        }
    .end annotation

    const-wide/high16 v0, 0x200000000000000L

    cmp-long v0, p1, v0

    if-eqz v0, :cond_0

    const-wide/high16 v0, 0x800000000000000L

    cmp-long v0, p1, v0

    if-nez v0, :cond_2

    :cond_0
    if-eqz p3, :cond_3

    invoke-virtual {p3}, Ljava/util/HashMap;->size()I

    move-result v0

    if-nez v0, :cond_1

    goto :goto_0

    :cond_1
    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {p3, v0}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    invoke-virtual {p3, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    invoke-static {v0, p1}, Lbk/m;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    return p1

    :cond_2
    const/4 p1, 0x0

    return p1

    :cond_3
    :goto_0
    const/4 p1, 0x1

    return p1
.end method

.method private final r0()Ljava/lang/String;
    .locals 2

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1c

    if-gt v0, v1, :cond_0

    const-string v0, "#Intent;component=com.android.settings/.SubSettings;S.:settings:show_fragment=com.android.settings.applications.SpecialAccessSettings;end"

    goto :goto_0

    :cond_0
    const-string v0, "#Intent;component=com.android.settings/.SubSettings;S.:settings:show_fragment=com.android.settings.applications.specialaccess.SpecialAccessSettings;end"

    :goto_0
    return-object v0
.end method


# virtual methods
.method public onCreatePreferences(Landroid/os/Bundle;Ljava/lang/String;)V
    .locals 10
    .param p1    # Landroid/os/Bundle;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    const p1, 0x7f15002f

    invoke-virtual {p0, p1, p2}, Landroidx/preference/PreferenceFragmentCompat;->setPreferencesFromResource(ILjava/lang/String;)V

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    const/4 p2, 0x1

    const-string v0, "extra_pkgname"

    const/4 v1, 0x0

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    if-eqz p1, :cond_0

    invoke-virtual {p1, v0}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result p1

    if-ne p1, p2, :cond_0

    goto :goto_0

    :cond_0
    move p2, v1

    :goto_0
    const/4 p1, 0x0

    if-eqz p2, :cond_7

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p2

    if-eqz p2, :cond_1

    invoke-virtual {p2}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object p2

    if-eqz p2, :cond_1

    invoke-virtual {p2, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    :cond_1
    if-nez p1, :cond_2

    const-string p1, ""

    :cond_2
    iput-object p1, p0, Lcom/miui/permcenter/settings/OtherPermissionsFragment;->c:Ljava/lang/String;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    if-eqz p1, :cond_3

    invoke-virtual {p1}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    if-eqz p1, :cond_3

    invoke-static {}, Lx4/z1;->y()I

    move-result p2

    const-string v0, "userId"

    invoke-virtual {p1, v0, p2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p1

    goto :goto_1

    :cond_3
    invoke-static {}, Lx4/z1;->y()I

    move-result p1

    :goto_1
    iput p1, p0, Lcom/miui/permcenter/settings/OtherPermissionsFragment;->e:I

    iget-object p2, p0, Lcom/miui/permcenter/settings/OtherPermissionsFragment;->c:Ljava/lang/String;

    const/16 v0, 0x10c0

    invoke-static {p2, v0, p1}, Ltg/a;->d(Ljava/lang/String;II)Landroid/content/pm/PackageInfo;

    move-result-object p1

    iput-object p1, p0, Lcom/miui/permcenter/settings/OtherPermissionsFragment;->d:Landroid/content/pm/PackageInfo;

    if-nez p1, :cond_5

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    if-eqz p1, :cond_4

    invoke-virtual {p1}, Landroid/app/Activity;->finishAfterTransition()V

    :cond_4
    return-void

    :cond_5
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    move-result-object p1

    const-string p2, "requireContext()"

    invoke-static {p1, p2}, Lbk/m;->d(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p2, p0, Lcom/miui/permcenter/settings/OtherPermissionsFragment;->c:Ljava/lang/String;

    invoke-direct {p0, p1, p2}, Lcom/miui/permcenter/settings/OtherPermissionsFragment;->h0(Landroid/content/Context;Ljava/lang/String;)Ljava/util/HashMap;

    move-result-object p1

    iput-object p1, p0, Lcom/miui/permcenter/settings/OtherPermissionsFragment;->m:Ljava/util/HashMap;

    invoke-direct {p0}, Lcom/miui/permcenter/settings/OtherPermissionsFragment;->j0()Lcom/miui/permcenter/permissions/a;

    move-result-object p1

    invoke-virtual {p1}, Lcom/miui/permcenter/permissions/a;->c()Landroidx/lifecycle/a0;

    move-result-object p1

    new-instance p2, Lcom/miui/permcenter/settings/OtherPermissionsFragment$d;

    invoke-direct {p2, p0}, Lcom/miui/permcenter/settings/OtherPermissionsFragment$d;-><init>(Lcom/miui/permcenter/settings/OtherPermissionsFragment;)V

    new-instance v0, Lcom/miui/permcenter/settings/OtherPermissionsFragment$h;

    invoke-direct {v0, p2}, Lcom/miui/permcenter/settings/OtherPermissionsFragment$h;-><init>(Lak/l;)V

    invoke-virtual {p1, p0, v0}, Landroidx/lifecycle/LiveData;->i(Landroidx/lifecycle/v;Landroidx/lifecycle/d0;)V

    iget-object p1, p0, Lcom/miui/permcenter/settings/OtherPermissionsFragment;->d:Landroid/content/pm/PackageInfo;

    if-eqz p1, :cond_6

    invoke-direct {p0}, Lcom/miui/permcenter/settings/OtherPermissionsFragment;->j0()Lcom/miui/permcenter/permissions/a;

    move-result-object p2

    invoke-virtual {p2, p1}, Lcom/miui/permcenter/permissions/a;->e(Landroid/content/pm/PackageInfo;)V

    :cond_6
    invoke-direct {p0}, Lcom/miui/permcenter/settings/OtherPermissionsFragment;->j0()Lcom/miui/permcenter/permissions/a;

    move-result-object p1

    invoke-virtual {p1}, Lcom/miui/permcenter/permissions/a;->d()Lcom/miui/permcenter/permissions/e;

    move-result-object p1

    new-instance p2, Lcom/miui/permcenter/settings/OtherPermissionsFragment$e;

    invoke-direct {p2, p0}, Lcom/miui/permcenter/settings/OtherPermissionsFragment$e;-><init>(Lcom/miui/permcenter/settings/OtherPermissionsFragment;)V

    new-instance v0, Lcom/miui/permcenter/settings/OtherPermissionsFragment$h;

    invoke-direct {v0, p2}, Lcom/miui/permcenter/settings/OtherPermissionsFragment$h;-><init>(Lak/l;)V

    invoke-virtual {p1, p0, v0}, Landroidx/lifecycle/LiveData;->i(Landroidx/lifecycle/v;Landroidx/lifecycle/d0;)V

    goto/16 :goto_6

    :cond_7
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p2

    const-string v0, "other_permission"

    if-eqz p2, :cond_8

    invoke-virtual {p2}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object p2

    if-eqz p2, :cond_8

    invoke-virtual {p2, v0}, Landroid/content/Intent;->getSerializableExtra(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object p2

    goto :goto_2

    :cond_8
    move-object p2, p1

    :goto_2
    instance-of p2, p2, Ljava/util/ArrayList;

    if-eqz p2, :cond_a

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p2

    if-eqz p2, :cond_9

    invoke-virtual {p2}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object p2

    if-eqz p2, :cond_9

    invoke-virtual {p2, v0}, Landroid/content/Intent;->getSerializableExtra(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object p2

    goto :goto_3

    :cond_9
    move-object p2, p1

    :goto_3
    const-string v0, "null cannot be cast to non-null type java.util.ArrayList<com.miui.permission.PermissionGroupInfo>{ kotlin.collections.TypeAliasesKt.ArrayList<com.miui.permission.PermissionGroupInfo> }"

    invoke-static {p2, v0}, Lbk/m;->c(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p2, Ljava/util/ArrayList;

    iput-object p2, p0, Lcom/miui/permcenter/settings/OtherPermissionsFragment;->a:Ljava/util/ArrayList;

    goto :goto_5

    :cond_a
    iget-object p2, p0, Lcom/miui/permcenter/settings/OtherPermissionsFragment;->a:Ljava/util/ArrayList;

    invoke-static {}, Lhc/a;->c()Ljava/util/List;

    move-result-object v0

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_b
    :goto_4
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_c

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    move-object v3, v2

    check-cast v3, Lcom/miui/permission/PermissionGroupInfo;

    invoke-virtual {v3}, Lcom/miui/permission/PermissionGroupInfo;->isShowInSecondPage()Z

    move-result v3

    if-eqz v3, :cond_b

    invoke-interface {v1, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_4

    :cond_c
    invoke-virtual {p2, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    :goto_5
    invoke-static {p0}, Landroidx/lifecycle/w;->a(Landroidx/lifecycle/v;)Landroidx/lifecycle/o;

    move-result-object v4

    const/4 v5, 0x0

    const/4 v6, 0x0

    new-instance v7, Lcom/miui/permcenter/settings/OtherPermissionsFragment$f;

    invoke-direct {v7, p0, p1}, Lcom/miui/permcenter/settings/OtherPermissionsFragment$f;-><init>(Lcom/miui/permcenter/settings/OtherPermissionsFragment;Ltj/d;)V

    const/4 v8, 0x3

    const/4 v9, 0x0

    invoke-static/range {v4 .. v9}, Llk/g;->b(Llk/i0;Ltj/g;Llk/k0;Lak/p;ILjava/lang/Object;)Llk/s1;

    :goto_6
    return-void
.end method

.method public onResume()V
    .locals 7

    invoke-super {p0}, Landroidx/fragment/app/Fragment;->onResume()V

    iget-object v0, p0, Lcom/miui/permcenter/settings/OtherPermissionsFragment;->j:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Number;

    invoke-virtual {v1}, Ljava/lang/Number;->longValue()J

    move-result-wide v1

    iget-object v3, p0, Lcom/miui/permcenter/settings/OtherPermissionsFragment;->b:Ljava/util/HashMap;

    if-eqz v3, :cond_0

    invoke-static {v3}, Lbk/m;->b(Ljava/lang/Object;)V

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-virtual {p0}, Landroidx/preference/PreferenceFragmentCompat;->getPreferenceManager()Landroidx/preference/f;

    move-result-object v3

    const-string v4, "2147483648"

    invoke-virtual {v3, v4}, Landroidx/preference/f;->a(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v3

    check-cast v3, Lcom/miui/permcenter/permissions/AppPermissionsEditorPreference;

    if-nez v3, :cond_1

    goto :goto_0

    :cond_1
    sget-object v4, Lcc/b0;->a:Lcc/b0$a;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    move-result-object v5

    const-string v6, "requireContext()"

    invoke-static {v5, v6}, Lbk/m;->d(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v6, p0, Lcom/miui/permcenter/settings/OtherPermissionsFragment;->c:Ljava/lang/String;

    invoke-virtual {v4, v5, v1, v2, v6}, Lcc/b0$a;->b(Landroid/content/Context;JLjava/lang/String;)Z

    move-result v1

    xor-int/lit8 v1, v1, 0x1

    invoke-virtual {v3, v1}, Lcom/miui/permcenter/permissions/AppBasePermsEditorPreference;->setEnabled(Z)V

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/miui/permcenter/settings/OtherPermissionsFragment;->c:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_3

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/permcenter/settings/OtherPermissionsFragment;->c:Ljava/lang/String;

    invoke-static {v0, v1}, Lx4/f1;->O(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/miui/permcenter/compact/MIUIXCompact;->setTitle(Lmiuix/preference/PreferenceFragment;Ljava/lang/CharSequence;)V

    :cond_3
    return-void
.end method
