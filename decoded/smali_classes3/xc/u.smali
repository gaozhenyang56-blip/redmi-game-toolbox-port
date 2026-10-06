.class public final Lxc/u;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation build Lkotlin/jvm/internal/SourceDebugExtension;
    value = {
        "SMAP\nSelfPermissionManager.kt\nKotlin\n*S Kotlin\n*F\n+ 1 SelfPermissionManager.kt\ncom/miui/permcenter/utils/SelfPermissionManager\n+ 2 ArrayIntrinsics.kt\nkotlin/ArrayIntrinsicsKt\n+ 3 _Maps.kt\nkotlin/collections/MapsKt___MapsKt\n+ 4 _Arrays.kt\nkotlin/collections/ArraysKt___ArraysKt\n+ 5 Maps.kt\nkotlin/collections/MapsKt__MapsKt\n*L\n1#1,789:1\n26#2:790\n167#3,3:791\n215#3,2:796\n215#3,2:805\n13579#4,2:794\n483#5,7:798\n*S KotlinDebug\n*F\n+ 1 SelfPermissionManager.kt\ncom/miui/permcenter/utils/SelfPermissionManager\n*L\n594#1:790\n613#1:791,3\n678#1:796,2\n765#1:805,2\n664#1:794,2\n762#1:798,7\n*E\n"
    }
.end annotation


# static fields
.field public static final a:Lxc/u;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private static final b:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private static final c:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Long;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private static final d:Ljava/util/List;
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


# direct methods
.method static constructor <clinit>()V
    .locals 5

    new-instance v0, Lxc/u;

    invoke-direct {v0}, Lxc/u;-><init>()V

    sput-object v0, Lxc/u;->a:Lxc/u;

    new-instance v0, Ljava/util/LinkedHashSet;

    invoke-direct {v0}, Ljava/util/LinkedHashSet;-><init>()V

    sput-object v0, Lxc/u;->b:Ljava/util/Set;

    new-instance v1, Ljava/util/LinkedHashMap;

    invoke-direct {v1}, Ljava/util/LinkedHashMap;-><init>()V

    sput-object v1, Lxc/u;->c:Ljava/util/Map;

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    sput-object v2, Lxc/u;->d:Ljava/util/List;

    const/16 v3, 0x1000

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    const/16 v3, 0x2000

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    const-wide/32 v3, 0x10000000

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    const/16 v3, 0x272c

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v1, v0, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-wide v3, 0x80000000L

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    const/16 v3, 0x272d

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v1, v0, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-wide/32 v3, 0x1000000

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    const/16 v3, 0x272e

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v1, v0, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-wide/32 v3, 0x40000000

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    const/16 v3, 0x272f

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v1, v0, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-wide/16 v3, 0x40

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    const/16 v3, 0x2730

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v1, v0, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {}, Lcom/miui/permission/support/util/SdkLevel;->isAtLeastR()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "android.permission.ACCESS_FINE_LOCATION"

    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v0, "android.permission.ACCESS_COARSE_LOCATION"

    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v0, "android.permission.CAMERA"

    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v0, "android.permission.RECORD_AUDIO"

    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v0, "android.permission.READ_CONTACTS"

    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v0, "android.permission.WRITE_CONTACTS"

    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v0, "android.permission.GET_ACCOUNTS"

    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v0, "android.permission.WRITE_CALL_LOG"

    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v0, "android.permission.READ_CALL_LOG"

    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final B(Landroid/content/Context;Ljava/lang/String;IJI)V
    .locals 10
    .param p0    # Landroid/content/Context;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    const-string v0, "context"

    invoke-static {p0, v0}, Lbk/m;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "packageName"

    invoke-static {p1, v0}, Lbk/m;->e(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v0, Lcom/miui/permission/RequiredPermissionsUtil;->RUNTIME_PERMISSIONS:Ljava/util/Map;

    const-string v1, "RUNTIME_PERMISSIONS"

    invoke-static {v0, v1}, Lbk/m;->d(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v1, Ljava/util/LinkedHashMap;

    invoke-direct {v1}, Ljava/util/LinkedHashMap;-><init>()V

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    const/4 v3, 0x0

    if-eqz v2, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Long;

    if-nez v4, :cond_1

    goto :goto_1

    :cond_1
    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    cmp-long v4, v4, p3

    if-nez v4, :cond_2

    const/4 v3, 0x1

    :cond_2
    :goto_1
    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v1, v3, v2}, Ljava/util/AbstractMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_3
    invoke-interface {v1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p3

    invoke-interface {p3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p3

    :cond_4
    :goto_2
    invoke-interface {p3}, Ljava/util/Iterator;->hasNext()Z

    move-result p4

    if-eqz p4, :cond_6

    invoke-interface {p3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p4

    check-cast p4, Ljava/util/Map$Entry;

    sget-object v0, Lxc/u;->d:Ljava/util/List;

    invoke-interface {p4}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    const/4 v0, 0x2

    if-ne p5, v0, :cond_5

    const/high16 v0, 0x10000

    move v8, v0

    goto :goto_3

    :cond_5
    move v8, v3

    :goto_3
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v4

    invoke-interface {p4}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object p4

    move-object v5, p4

    check-cast v5, Ljava/lang/String;

    const/high16 v7, 0x10000

    invoke-static {p2}, Lx4/z1;->z(I)Landroid/os/UserHandle;

    move-result-object v9

    move-object v6, p1

    invoke-static/range {v4 .. v9}, Ltg/a;->j(Landroid/content/pm/PackageManager;Ljava/lang/String;Ljava/lang/String;IILandroid/os/UserHandle;)V

    goto :goto_2

    :cond_6
    return-void
.end method

.method public static synthetic a(Lxc/b;Landroid/content/DialogInterface;)V
    .locals 0

    invoke-static {p0, p1}, Lxc/u;->w(Lxc/b;Landroid/content/DialogInterface;)V

    return-void
.end method

.method public static synthetic b(Lcom/miui/permcenter/AppPermissionInfo;Landroid/content/Context;IILjava/lang/String;Lxc/b;Landroid/content/DialogInterface;I)V
    .locals 0

    invoke-static/range {p0 .. p7}, Lxc/u;->y(Lcom/miui/permcenter/AppPermissionInfo;Landroid/content/Context;IILjava/lang/String;Lxc/b;Landroid/content/DialogInterface;I)V

    return-void
.end method

.method public static synthetic c(Lxc/b;Landroid/content/DialogInterface;I)V
    .locals 0

    invoke-static {p0, p1, p2}, Lxc/u;->x(Lxc/b;Landroid/content/DialogInterface;I)V

    return-void
.end method

.method public static final d(Landroid/content/pm/PackageInfo;Ljava/util/Map;)V
    .locals 9
    .param p0    # Landroid/content/pm/PackageInfo;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p1    # Ljava/util/Map;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/pm/PackageInfo;",
            "Ljava/util/Map<",
            "Ljava/lang/Long;",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    const-string v0, "packageInfo"

    invoke-static {p0, v0}, Lbk/m;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "permissionToAction"

    invoke-static {p1, v0}, Lbk/m;->e(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iget-object v1, p0, Landroid/content/pm/PackageInfo;->requestedPermissions:[Ljava/lang/String;

    if-eqz v1, :cond_1

    iget-object v2, p0, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v2, v2, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-static {v2}, Lx4/z1;->l(I)Landroid/os/UserHandle;

    move-result-object v2

    invoke-static {}, Lcom/miui/securitycenter/Application;->A()Lcom/miui/securitycenter/Application;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    const/4 v4, 0x0

    array-length v5, v1

    :goto_0
    if-ge v4, v5, :cond_1

    aget-object v6, v1, v4

    sget-object v7, Lxc/u;->d:Ljava/util/List;

    invoke-interface {v7, v6}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_0

    const-string v7, "android.permission.ACCESS_FINE_LOCATION"

    invoke-static {v6, v7}, Lbk/m;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_0

    iget-object v7, p0, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-static {v3, v6, v7, v2}, Ltg/a;->e(Landroid/content/pm/PackageManager;Ljava/lang/String;Ljava/lang/String;Landroid/os/UserHandle;)I

    move-result v7

    const/high16 v8, 0x10000

    and-int/2addr v7, v8

    if-eqz v7, :cond_0

    sget-object v7, Lcom/miui/permission/RequiredPermissionsUtil;->RUNTIME_PERMISSIONS:Ljava/util/Map;

    invoke-interface {v7, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    invoke-interface {v0, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_1
    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_2
    :goto_1
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Number;

    invoke-virtual {v2}, Ljava/lang/Number;->intValue()I

    move-result v2

    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Number;

    invoke-virtual {v1}, Ljava/lang/Number;->longValue()J

    move-result-wide v3

    const/4 v1, 0x2

    if-ne v2, v1, :cond_3

    const-wide/16 v5, 0x0

    cmp-long v2, v3, v5

    if-lez v2, :cond_3

    sget-object v2, Lxc/u;->a:Lxc/u;

    invoke-direct {v2, v3, v4}, Lxc/u;->k(J)Z

    move-result v2

    if-nez v2, :cond_3

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    const/4 v5, 0x1

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {p1, v2, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_3
    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {p1, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    :cond_4
    return-void
.end method

.method public static final e(Landroid/content/Context;Landroid/content/pm/PackageInfo;JIZZZLjava/util/List;)Z
    .locals 16
    .param p0    # Landroid/content/Context;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p1    # Landroid/content/pm/PackageInfo;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p8    # Ljava/util/List;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Landroid/content/pm/PackageInfo;",
            "JIZZZ",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)Z"
        }
    .end annotation

    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-wide/from16 v2, p2

    move/from16 v4, p4

    move-object/from16 v5, p8

    const-string v6, "context"

    invoke-static {v0, v6}, Lbk/m;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v6, "packageInfo"

    invoke-static {v1, v6}, Lbk/m;->e(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v6, v1, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v7, v6, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    iget v6, v6, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-static {v6}, Lx4/z1;->m(I)I

    move-result v6

    invoke-static {v2, v3, v7}, Lcom/miui/appmanager/AppManageUtils;->p0(JLjava/lang/String;)Z

    move-result v8

    const/4 v10, 0x1

    if-nez v8, :cond_1

    invoke-static {v0, v7}, Lcom/miui/permcenter/compact/EnterpriseCompat;->shouldGrantPermission(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_0

    goto :goto_0

    :cond_0
    const/4 v8, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    move v8, v10

    :goto_1
    if-eqz v8, :cond_2

    return v10

    :cond_2
    if-nez p5, :cond_3

    if-eqz p6, :cond_d

    :cond_3
    if-nez p7, :cond_d

    if-eqz v5, :cond_d

    invoke-interface/range {p8 .. p8}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v11

    :cond_4
    :goto_2
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    if-eqz v12, :cond_d

    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/String;

    sget-object v13, Lcom/miui/permission/RequiredPermissionsUtil;->RUNTIME_PERMISSIONS:Ljava/util/Map;

    invoke-interface {v13, v12}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v14

    const/4 v15, 0x6

    const/4 v9, 0x3

    if-eqz v14, :cond_c

    invoke-interface {v13, v12}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/lang/Long;

    if-nez v13, :cond_5

    goto :goto_3

    :cond_5
    invoke-virtual {v13}, Ljava/lang/Long;->longValue()J

    move-result-wide v13

    cmp-long v13, v13, v2

    if-eqz v13, :cond_6

    :goto_3
    invoke-static/range {p2 .. p3}, Lxc/m;->d(J)Z

    move-result v13

    if-eqz v13, :cond_4

    iget-object v13, v1, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v13, v13, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    const/16 v14, 0x21

    if-ge v13, v14, :cond_4

    const-string v13, "android.permission.READ_EXTERNAL_STORAGE"

    invoke-static {v13, v12}, Lbk/m;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v13

    if-nez v13, :cond_6

    const-string v13, "android.permission.WRITE_EXTERNAL_STORAGE"

    invoke-static {v13, v12}, Lbk/m;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_4

    :cond_6
    if-eq v4, v9, :cond_8

    if-ne v4, v15, :cond_7

    invoke-static {v2, v3, v0, v7}, Lcom/miui/permcenter/l;->r(JLandroid/content/Context;Ljava/lang/String;)Z

    move-result v8

    if-nez v8, :cond_7

    goto :goto_4

    :cond_7
    const/4 v8, 0x0

    goto :goto_5

    :cond_8
    :goto_4
    move v8, v10

    :goto_5
    const-wide/16 v12, 0x20

    cmp-long v12, v2, v12

    if-nez v12, :cond_4

    sget v12, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v13, 0x1d

    if-lt v12, v13, :cond_4

    const-string v8, "android.permission.ACCESS_BACKGROUND_LOCATION"

    invoke-interface {v5, v8}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_a

    if-ne v4, v9, :cond_9

    invoke-static {v0, v8, v7, v6}, Lcom/miui/permcenter/l;->e(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;I)I

    move-result v8

    if-nez v8, :cond_9

    goto :goto_6

    :cond_9
    const/4 v8, 0x0

    goto :goto_2

    :cond_a
    if-eq v4, v9, :cond_b

    if-ne v4, v15, :cond_9

    :cond_b
    :goto_6
    move v8, v10

    goto :goto_2

    :cond_c
    invoke-static/range {p2 .. p3}, Lxc/m;->d(J)Z

    move-result v13

    if-eqz v13, :cond_4

    invoke-static/range {p2 .. p3}, Lxc/m;->c(J)Ljava/util/List;

    move-result-object v13

    invoke-interface {v13, v12}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_4

    if-eq v4, v9, :cond_b

    if-ne v4, v15, :cond_9

    goto :goto_6

    :cond_d
    return v8
.end method

.method public static final f(Landroid/content/Context;Ljava/lang/String;J)Z
    .locals 1
    .param p0    # Landroid/content/Context;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    const-string v0, "context"

    invoke-static {p0, v0}, Lbk/m;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "pkgName"

    invoke-static {p1, v0}, Lbk/m;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p2, p3}, Lx4/k1;->k(J)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {p0, p1}, Lx4/k1;->j(Landroid/content/Context;Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_1

    :cond_0
    invoke-static {p2, p3}, Lcom/miui/permcenter/o$a;->c(J)Z

    move-result p1

    if-eqz p1, :cond_2

    invoke-static {p0}, Lcom/miui/permcenter/o$a;->b(Landroid/content/Context;)Z

    move-result p0

    if-eqz p0, :cond_2

    :cond_1
    const/4 p0, 0x1

    goto :goto_0

    :cond_2
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private final k(J)Z
    .locals 2

    const-wide v0, 0x4000000000L

    cmp-long p1, p1, v0

    if-nez p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method private final l(Landroid/content/pm/PackageInfo;)Z
    .locals 3

    iget-object v0, p1, Landroid/content/pm/PackageInfo;->requestedPermissions:[Ljava/lang/String;

    const-string v1, "packageInfo.requestedPermissions"

    invoke-static {v0, v1}, Lbk/m;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v0}, Lqj/f;->y([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    iget-object p1, p1, Landroid/content/pm/PackageInfo;->requestedPermissionsFlags:[I

    const-string v1, "packageInfo.requestedPermissionsFlags"

    invoke-static {p1, v1}, Lbk/m;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p1}, Lqj/f;->x([I)Ljava/util/List;

    move-result-object p1

    invoke-static {v0, p1}, Lqj/l;->V(Ljava/lang/Iterable;Ljava/lang/Iterable;)Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Loj/l;

    invoke-virtual {v0}, Loj/l;->a()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v0}, Loj/l;->b()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Number;

    invoke-virtual {v0}, Ljava/lang/Number;->intValue()I

    move-result v0

    const-string v2, "android.permission.READ_MEDIA_VISUAL_USER_SELECTED"

    invoke-static {v1, v2}, Lbk/m;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    and-int/lit8 v0, v0, 0x4

    if-eqz v0, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public static final q(J)Ljava/util/ArrayList;
    .locals 16
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J)",
            "Ljava/util/ArrayList<",
            "Lcom/miui/permcenter/AppPermissionInfo;",
            ">;"
        }
    .end annotation

    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sget-object v1, Lxc/m;->a:Ljava/util/Map;

    invoke-static/range {p0 .. p1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    sget-object v2, Lxc/m$b;->b:Landroid/util/ArrayMap;

    invoke-virtual {v2, v1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/List;

    const/4 v4, 0x0

    if-eqz v2, :cond_1

    invoke-interface {v2}, Ljava/util/Collection;->isEmpty()Z

    move-result v5

    if-eqz v5, :cond_0

    goto :goto_0

    :cond_0
    move v5, v4

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v5, 0x1

    :goto_1
    if-eqz v5, :cond_2

    return-object v0

    :cond_2
    invoke-static {}, Lcom/miui/securitycenter/Application;->A()Lcom/miui/securitycenter/Application;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v6

    const/16 v7, 0x10c0

    invoke-virtual {v6, v7}, Landroid/content/pm/PackageManager;->getInstalledPackages(I)Ljava/util/List;

    move-result-object v8

    const-string v9, "packageManager.getInstal\u2026pact.FLAG_REQUIRED_VALUE)"

    invoke-static {v8, v9}, Lbk/m;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {}, Lx4/z1;->r()Z

    move-result v9

    if-eqz v9, :cond_3

    sget-boolean v9, Lcom/miui/permcenter/o;->w:Z

    if-eqz v9, :cond_3

    const/16 v9, 0x3e7

    invoke-static {v6, v7, v9}, Loc/g$c;->a(Landroid/content/pm/PackageManager;II)Ljava/util/List;

    move-result-object v6

    const-string v7, "getInstalledPackagesAsUs\u2026_XSPACE\n                )"

    invoke-static {v6, v7}, Lbk/m;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v8, v6}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    :cond_3
    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v6

    if-lez v6, :cond_10

    const-wide v6, 0x200000000000L

    invoke-static {v5, v6, v7}, Lcom/miui/permcenter/n;->w(Landroid/content/Context;J)Ljava/util/ArrayList;

    move-result-object v9

    const-string v10, "loadAllAppAndPermission(\u2026STORAGE\n                )"

    invoke-static {v9, v10}, Lbk/m;->d(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v10, Ljava/util/HashMap;

    invoke-direct {v10}, Ljava/util/HashMap;-><init>()V

    invoke-interface {v9}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :cond_4
    :goto_2
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    const/16 v12, 0x40

    const/16 v13, 0x21

    if-eqz v11, :cond_5

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/miui/permcenter/AppPermissionInfo;

    invoke-virtual {v11}, Lcom/miui/permcenter/AppPermissionInfo;->getTargetSdkVersion()I

    move-result v14

    if-ge v14, v13, :cond_4

    invoke-virtual {v11}, Lcom/miui/permcenter/AppPermissionInfo;->getPermissionToAction()Ljava/util/HashMap;

    move-result-object v13

    const-string v14, "info.permissionToAction"

    invoke-static {v13, v14}, Lbk/m;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static/range {p0 .. p1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v14

    invoke-virtual {v11}, Lcom/miui/permcenter/AppPermissionInfo;->getPermissionToAction()Ljava/util/HashMap;

    move-result-object v15

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v15, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    invoke-interface {v13, v14, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v11}, Lcom/miui/permcenter/AppPermissionInfo;->getPackageName()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v3, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v12}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Lcom/miui/permcenter/AppPermissionInfo;->getUid()I

    move-result v12

    invoke-virtual {v3, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v10, v3, v11}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2

    :cond_5
    invoke-interface {v8}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_3
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_10

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/content/pm/PackageInfo;

    iget-object v9, v8, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v9, v9, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    if-lt v9, v13, :cond_6

    const/4 v9, 0x1

    goto :goto_4

    :cond_6
    move v9, v4

    :goto_4
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v14, v8, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v14, v14, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v11, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    iget-object v14, v8, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v14, v14, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-virtual {v11, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v5, v8, v4}, Lcom/miui/permcenter/l;->n(Landroid/content/Context;Landroid/content/pm/PackageInfo;Z)Z

    move-result v14

    if-nez v14, :cond_f

    iget-object v14, v8, Landroid/content/pm/PackageInfo;->requestedPermissions:[Ljava/lang/String;

    if-eqz v14, :cond_9

    array-length v15, v14

    if-nez v15, :cond_7

    const/4 v15, 0x1

    goto :goto_5

    :cond_7
    move v15, v4

    :goto_5
    if-eqz v15, :cond_8

    goto :goto_6

    :cond_8
    move v15, v4

    goto :goto_7

    :cond_9
    :goto_6
    const/4 v15, 0x1

    :goto_7
    if-eqz v15, :cond_a

    goto/16 :goto_a

    :cond_a
    const-string v15, "packageInfo.requestedPermissions"

    invoke-static {v14, v15}, Lbk/m;->d(Ljava/lang/Object;Ljava/lang/String;)V

    array-length v15, v14

    move v12, v4

    :goto_8
    if-ge v12, v15, :cond_e

    aget-object v13, v14, v12

    invoke-interface {v2, v13}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_d

    if-nez v9, :cond_b

    invoke-interface {v10, v11}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_b

    invoke-interface {v10, v11}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    invoke-static {v8}, Lbk/m;->b(Ljava/lang/Object;)V

    check-cast v8, Lcom/miui/permcenter/AppPermissionInfo;

    invoke-virtual {v8}, Lcom/miui/permcenter/AppPermissionInfo;->getPermissionToAction()Ljava/util/HashMap;

    move-result-object v9

    const-string v11, "externalAppPermissionInfo.permissionToAction"

    invoke-static {v9, v11}, Lbk/m;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static/range {p0 .. p1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v11

    invoke-virtual {v8}, Lcom/miui/permcenter/AppPermissionInfo;->getPermissionToAction()Ljava/util/HashMap;

    move-result-object v12

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v12

    invoke-interface {v9, v11, v12}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v0, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_a

    :cond_b
    new-instance v11, Lcom/miui/permcenter/AppPermissionInfo;

    invoke-direct {v11}, Lcom/miui/permcenter/AppPermissionInfo;-><init>()V

    iget-object v12, v8, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v11, v12}, Lcom/miui/permcenter/AppPermissionInfo;->setPackageName(Ljava/lang/String;)V

    invoke-virtual {v11, v4}, Lcom/miui/permcenter/AppPermissionInfo;->setSystem(Z)V

    iget-object v12, v8, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v12, v12, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-virtual {v11, v12}, Lcom/miui/permcenter/AppPermissionInfo;->setUid(I)V

    iget-object v12, v8, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    invoke-static {v5, v12}, Lx4/f1;->P(Landroid/content/Context;Landroid/content/pm/ApplicationInfo;)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Lcom/miui/permcenter/AppPermissionInfo;->setLabel(Ljava/lang/String;)V

    new-instance v12, Ljava/util/HashMap;

    invoke-direct {v12}, Ljava/util/HashMap;-><init>()V

    if-eqz v9, :cond_c

    invoke-static {}, Lcom/miui/permission/support/util/SdkLevel;->isAtLeastU()Z

    move-result v9

    if-eqz v9, :cond_c

    const-wide/16 v13, -0x3

    cmp-long v9, p0, v13

    if-nez v9, :cond_c

    sget-object v9, Lxc/u;->a:Lxc/u;

    const-string v13, "context"

    invoke-static {v5, v13}, Lbk/m;->d(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v13, v8, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v13, v13, Landroid/content/pm/ApplicationInfo;->uid:I

    iget-object v14, v8, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    const-string v15, "packageInfo.packageName"

    invoke-static {v14, v15}, Lbk/m;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v9, v5, v13, v14}, Lxc/u;->h(Landroid/content/Context;ILjava/lang/String;)I

    move-result v9

    goto :goto_9

    :cond_c
    iget-object v9, v8, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v9, v9, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-static {v9}, Lx4/z1;->m(I)I

    move-result v9

    iget-object v13, v8, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-static {v5, v9, v13, v1}, Lxc/m;->a(Landroid/content/Context;ILjava/lang/String;Ljava/lang/String;)I

    move-result v9

    :goto_9
    invoke-static/range {p0 .. p1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v13

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-interface {v12, v13, v9}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v11, v12}, Lcom/miui/permcenter/AppPermissionInfo;->setPermissionToAction(Ljava/util/HashMap;)V

    iget-object v9, v8, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v9, v9, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    invoke-virtual {v11, v9}, Lcom/miui/permcenter/AppPermissionInfo;->setTargetSdkVersion(I)V

    iget-object v8, v8, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v8, v8, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-virtual {v11, v8}, Lcom/miui/permcenter/AppPermissionInfo;->setUid(I)V

    invoke-virtual {v0, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_a

    :cond_d
    add-int/lit8 v12, v12, 0x1

    const/16 v13, 0x21

    goto/16 :goto_8

    :cond_e
    const/16 v12, 0x40

    goto/16 :goto_3

    :cond_f
    :goto_a
    const/16 v12, 0x40

    const/16 v13, 0x21

    goto/16 :goto_3

    :cond_10
    new-instance v1, Lcom/miui/permcenter/b;

    invoke-direct {v1}, Lcom/miui/permcenter/b;-><init>()V

    invoke-static {v0, v1}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    return-object v0
.end method

.method public static final v(Landroid/content/Context;ZLandroid/content/pm/PackageInfo;IJI)V
    .locals 17
    .param p0    # Landroid/content/Context;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Landroid/content/pm/PackageInfo;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move/from16 v2, p3

    move/from16 v4, p6

    const-string v3, "context"

    invoke-static {v0, v3}, Lbk/m;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v3, "packageInfo"

    invoke-static {v1, v3}, Lbk/m;->e(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v3, v1, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v10, v3, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    iget v3, v3, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    const-string v5, "android.permission-group.READ_MEDIA_VISUAL"

    const/4 v6, 0x0

    const/4 v11, 0x1

    const/16 v7, 0x21

    if-ge v3, v7, :cond_1

    if-eqz p1, :cond_0

    invoke-static/range {p0 .. p0}, Lcom/miui/permission/PermissionManager;->getInstance(Landroid/content/Context;)Lcom/miui/permission/PermissionManager;

    move-result-object v0

    const/4 v1, 0x0

    const-wide v2, 0x200000000000L

    const/4 v5, 0x2

    new-array v7, v11, [Ljava/lang/String;

    aput-object v10, v7, v6

    move/from16 v4, p6

    move-object v6, v7

    invoke-static/range {v0 .. v6}, Lcom/miui/permcenter/compact/PermissionManagerCompat;->setApplicationPermissionWithVirtual(Lcom/miui/permission/PermissionManager;IJII[Ljava/lang/String;)V

    goto/16 :goto_3

    :cond_0
    invoke-static {v0, v2, v10, v5, v4}, Lxc/m;->f(Landroid/content/Context;ILjava/lang/String;Ljava/lang/String;I)V

    const-string v1, "android.permission-group.READ_MEDIA_AURAL"

    goto/16 :goto_2

    :cond_1
    invoke-static {}, Lcom/miui/permission/support/util/SdkLevel;->isAtLeastU()Z

    move-result v3

    if-eqz v3, :cond_5

    const-wide/16 v7, -0x3

    cmp-long v3, p4, v7

    if-nez v3, :cond_5

    sget-object v3, Lxc/m$b;->b:Landroid/util/ArrayMap;

    invoke-virtual {v3, v5}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    invoke-static {v3}, Lbk/m;->b(Ljava/lang/Object;)V

    check-cast v3, Ljava/util/List;

    const-string v5, "appops"

    invoke-virtual {v0, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    const-string v7, "null cannot be cast to non-null type android.app.AppOpsManager"

    invoke-static {v5, v7}, Lbk/m;->c(Ljava/lang/Object;Ljava/lang/String;)V

    move-object v12, v5

    check-cast v12, Landroid/app/AppOpsManager;

    const/4 v5, 0x2

    const/4 v7, 0x3

    if-ne v4, v5, :cond_3

    const-string v13, "android.permission.READ_MEDIA_VISUAL_USER_SELECTED"

    invoke-static {v0, v2, v10, v13, v7}, Lxc/m;->h(Landroid/content/Context;ILjava/lang/String;Ljava/lang/String;I)V

    const/4 v14, 0x3

    const/4 v15, 0x2

    invoke-static {}, Lx4/z1;->y()I

    move-result v4

    invoke-static {v4}, Lx4/z1;->z(I)Landroid/os/UserHandle;

    move-result-object v16

    invoke-static {v13}, Landroid/app/AppOpsManagerCompat;->permissionToOpCode(Ljava/lang/String;)I

    move-result v4

    iget-object v5, v1, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v5, v5, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-static {v12, v4, v5, v6}, Landroid/app/AppOpsManagerCompat;->setUidMode(Landroid/app/AppOpsManager;III)V

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_6

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    move-object v5, v4

    check-cast v5, Ljava/lang/String;

    invoke-static {v5, v13}, Lbk/m;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_2

    invoke-static {v0, v2, v10, v5, v11}, Lxc/m;->h(Landroid/content/Context;ILjava/lang/String;Ljava/lang/String;I)V

    invoke-static {v5}, Landroid/app/AppOpsManagerCompat;->permissionToOpCode(Ljava/lang/String;)I

    move-result v4

    iget-object v6, v1, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v6, v6, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-static {v12, v4, v6, v11}, Landroid/app/AppOpsManagerCompat;->setUidMode(Landroid/app/AppOpsManager;III)V

    :cond_2
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v4

    move-object v6, v10

    move v7, v14

    move v8, v15

    move-object/from16 v9, v16

    invoke-static/range {v4 .. v9}, Ltg/a;->j(Landroid/content/pm/PackageManager;Ljava/lang/String;Ljava/lang/String;IILandroid/os/UserHandle;)V

    goto :goto_0

    :cond_3
    if-ne v4, v7, :cond_4

    move v6, v11

    :cond_4
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_6

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-static {v0, v2, v10, v5, v4}, Lxc/m;->h(Landroid/content/Context;ILjava/lang/String;Ljava/lang/String;I)V

    invoke-static {v5}, Landroid/app/AppOpsManagerCompat;->permissionToOpCode(Ljava/lang/String;)I

    move-result v5

    iget-object v7, v1, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v7, v7, Landroid/content/pm/ApplicationInfo;->uid:I

    xor-int/lit8 v8, v6, 0x1

    invoke-static {v12, v5, v7, v8}, Landroid/app/AppOpsManagerCompat;->setUidMode(Landroid/app/AppOpsManager;III)V

    goto :goto_1

    :cond_5
    sget-object v1, Lxc/m;->a:Ljava/util/Map;

    invoke-static/range {p4 .. p5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-interface {v1, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    :goto_2
    invoke-static {v0, v2, v10, v1, v4}, Lxc/m;->f(Landroid/content/Context;ILjava/lang/String;Ljava/lang/String;I)V

    :cond_6
    :goto_3
    return-void
.end method

.method private static final w(Lxc/b;Landroid/content/DialogInterface;)V
    .locals 0

    if-eqz p0, :cond_0

    invoke-interface {p0}, Lxc/b;->b()V

    :cond_0
    return-void
.end method

.method private static final x(Lxc/b;Landroid/content/DialogInterface;I)V
    .locals 0

    if-eqz p0, :cond_0

    invoke-interface {p0}, Lxc/b;->b()V

    :cond_0
    return-void
.end method

.method private static final y(Lcom/miui/permcenter/AppPermissionInfo;Landroid/content/Context;IILjava/lang/String;Lxc/b;Landroid/content/DialogInterface;I)V
    .locals 7

    const-string p6, "$appPermissionInfo"

    invoke-static {p0, p6}, Lbk/m;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p6, "$context"

    invoke-static {p1, p6}, Lbk/m;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/miui/permcenter/AppPermissionInfo;->getPermissionToAction()Ljava/util/HashMap;

    move-result-object p0

    const-wide p6, 0x200000000000L

    invoke-static {p6, p7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p6

    invoke-virtual {p0, p6}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    invoke-static {p1}, Lcom/miui/permission/PermissionManager;->getInstance(Landroid/content/Context;)Lcom/miui/permission/PermissionManager;

    move-result-object v0

    const-wide v2, 0x200000000000L

    const/4 v5, 0x2

    const/4 p0, 0x1

    new-array v6, p0, [Ljava/lang/String;

    const/4 p0, 0x0

    aput-object p4, v6, p0

    move v1, p2

    move v4, p3

    invoke-static/range {v0 .. v6}, Lcom/miui/permcenter/compact/PermissionManagerCompat;->setApplicationPermissionWithVirtual(Lcom/miui/permission/PermissionManager;IJII[Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    const-string p0, "android.permission-group.READ_MEDIA_VISUAL"

    invoke-static {p1, p2, p4, p0, p3}, Lxc/m;->f(Landroid/content/Context;ILjava/lang/String;Ljava/lang/String;I)V

    const-string p0, "android.permission-group.READ_MEDIA_AURAL"

    invoke-static {p1, p2, p4, p0, p3}, Lxc/m;->f(Landroid/content/Context;ILjava/lang/String;Ljava/lang/String;I)V

    :goto_0
    if-eqz p5, :cond_1

    invoke-interface {p5}, Lxc/b;->a()V

    :cond_1
    return-void
.end method


# virtual methods
.method public final A(Landroid/content/Context;Landroid/content/pm/PackageInfo;JZI)Z
    .locals 17
    .param p1    # Landroid/content/Context;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Landroid/content/pm/PackageInfo;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    move-object/from16 v0, p2

    const-string v1, "context"

    move-object/from16 v2, p1

    invoke-static {v2, v1}, Lbk/m;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "packageInfo"

    invoke-static {v0, v1}, Lbk/m;->e(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v1, Lcom/miui/permission/PermissionManager;->virtualMap:Ljava/util/Map;

    invoke-static/range {p3 .. p4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-interface {v1, v3}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    const/4 v3, 0x0

    if-nez v1, :cond_0

    return v3

    :cond_0
    invoke-static/range {p1 .. p1}, Lcom/miui/permission/PermissionManager;->getInstance(Landroid/content/Context;)Lcom/miui/permission/PermissionManager;

    move-result-object v4

    sget-object v1, Lcom/miui/permission/PermissionManager;->virtualMap:Ljava/util/Map;

    invoke-static/range {p3 .. p4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-interface {v1, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-static {v1}, Lbk/m;->b(Ljava/lang/Object;)V

    check-cast v1, Ljava/lang/Number;

    invoke-virtual {v1}, Ljava/lang/Number;->longValue()J

    move-result-wide v5

    const/4 v1, 0x1

    if-eqz p5, :cond_1

    move v7, v1

    goto :goto_0

    :cond_1
    const/4 v7, 0x3

    :goto_0
    iget-object v8, v0, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v8, v8, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-static {v8}, Lx4/z1;->m(I)I

    move-result v8

    new-array v9, v1, [Ljava/lang/String;

    iget-object v10, v0, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v10, v10, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    aput-object v10, v9, v3

    invoke-virtual/range {v4 .. v9}, Lcom/miui/permission/PermissionManager;->setApplicationPermission(JII[Ljava/lang/String;)V

    invoke-static/range {p1 .. p1}, Lcom/miui/permission/PermissionManager;->getInstance(Landroid/content/Context;)Lcom/miui/permission/PermissionManager;

    move-result-object v11

    iget-object v2, v0, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v2, v2, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-static {v2}, Lx4/z1;->m(I)I

    move-result v15

    new-array v2, v1, [Ljava/lang/String;

    iget-object v0, v0, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v0, v0, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    aput-object v0, v2, v3

    move-wide/from16 v12, p3

    move/from16 v14, p6

    move-object/from16 v16, v2

    invoke-virtual/range {v11 .. v16}, Lcom/miui/permission/PermissionManager;->setApplicationPermission(JII[Ljava/lang/String;)V

    return v1
.end method

.method public final C(Landroid/content/Context;Landroid/content/pm/PackageInfo;ZI)V
    .locals 8
    .param p1    # Landroid/content/Context;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Landroid/content/pm/PackageInfo;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "context"

    invoke-static {p1, v0}, Lbk/m;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "packageInfo"

    invoke-static {p2, v0}, Lbk/m;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "appops"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lbk/m;->b(Ljava/lang/Object;)V

    check-cast v0, Landroid/app/AppOpsManager;

    invoke-virtual {p0, v0, p2}, Lxc/u;->t(Landroid/app/AppOpsManager;Landroid/content/pm/PackageInfo;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v1, 0x273b

    goto :goto_0

    :cond_0
    const/16 v1, 0x2734

    :goto_0
    move v3, v1

    invoke-static {p1}, Lcom/miui/permission/PermissionManager;->getInstance(Landroid/content/Context;)Lcom/miui/permission/PermissionManager;

    move-result-object v2

    iget-object v1, p2, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v4, v1, Landroid/content/pm/ApplicationInfo;->uid:I

    iget-object v5, v1, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    xor-int/lit8 v6, p3, 0x1

    const/4 v7, 0x0

    invoke-virtual/range {v2 .. v7}, Lcom/miui/permission/PermissionManager;->setMode(IILjava/lang/String;IZ)V

    if-nez p3, :cond_1

    iget-object p3, p2, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object p3, p3, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-static {p1, p3}, Lx4/f1;->g(Landroid/content/Context;Ljava/lang/String;)V

    :cond_1
    if-eqz v0, :cond_2

    invoke-static {p1}, Lcom/miui/permission/PermissionManager;->getInstance(Landroid/content/Context;)Lcom/miui/permission/PermissionManager;

    move-result-object v1

    iget-object p1, p2, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget p1, p1, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-static {p1}, Lx4/z1;->m(I)I

    move-result v2

    const-wide/16 v3, 0x20

    const/4 v6, 0x2

    const/4 p1, 0x1

    new-array v7, p1, [Ljava/lang/String;

    const/4 p1, 0x0

    iget-object p2, p2, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object p2, p2, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    aput-object p2, v7, p1

    move v5, p4

    invoke-static/range {v1 .. v7}, Lcom/miui/permcenter/compact/PermissionManagerCompat;->setApplicationPermissionWithVirtual(Lcom/miui/permission/PermissionManager;IJII[Ljava/lang/String;)V

    :cond_2
    return-void
.end method

.method public final g(Landroid/content/pm/PackageInfo;JLtj/d;)Ljava/lang/Object;
    .locals 3
    .param p1    # Landroid/content/pm/PackageInfo;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p4    # Ltj/d;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/pm/PackageInfo;",
            "J",
            "Ltj/d<",
            "-",
            "Ljava/lang/Boolean;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    invoke-static {}, Llk/w0;->b()Llk/d0;

    move-result-object v0

    new-instance v1, Lxc/u$a;

    const/4 v2, 0x0

    invoke-direct {v1, p1, p2, p3, v2}, Lxc/u$a;-><init>(Landroid/content/pm/PackageInfo;JLtj/d;)V

    invoke-static {v0, v1, p4}, Llk/g;->c(Ltj/g;Lak/p;Ltj/d;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final h(Landroid/content/Context;ILjava/lang/String;)I
    .locals 10
    .param p1    # Landroid/content/Context;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p3    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/RequiresApi;
        api = 0x1d
    .end annotation

    const-string v0, "context"

    invoke-static {p1, v0}, Lbk/m;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "packageName"

    invoke-static {p3, v0}, Lbk/m;->e(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v0, Lxc/m$b;->b:Landroid/util/ArrayMap;

    const-string v1, "android.permission-group.READ_MEDIA_VISUAL"

    invoke-virtual {v0, v1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_1

    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_0

    goto :goto_0

    :cond_0
    move v3, v2

    goto :goto_1

    :cond_1
    :goto_0
    move v3, v1

    :goto_1
    if-eqz v3, :cond_2

    return v2

    :cond_2
    const/16 v3, 0x1000

    invoke-static {p1, p3, v3}, Lx4/f1;->o(Landroid/content/Context;Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v3

    if-nez v3, :cond_3

    return v2

    :cond_3
    iget-object v4, v3, Landroid/content/pm/PackageInfo;->requestedPermissions:[Ljava/lang/String;

    if-nez v4, :cond_4

    new-array v4, v2, [Ljava/lang/String;

    :cond_4
    invoke-static {v4}, Lqj/f;->B([Ljava/lang/Object;)Ljava/util/Set;

    move-result-object v4

    invoke-static {v0, v4}, Lqj/l;->A(Ljava/lang/Iterable;Ljava/lang/Iterable;)Ljava/util/Set;

    move-result-object v0

    const-string v4, "appops"

    invoke-virtual {p1, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    const-string v4, "null cannot be cast to non-null type android.app.AppOpsManager"

    invoke-static {p1, v4}, Lbk/m;->c(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Landroid/app/AppOpsManager;

    new-instance v4, Ljava/util/HashMap;

    invoke-direct {v4}, Ljava/util/HashMap;-><init>()V

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    move v5, v2

    :cond_5
    :goto_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_7

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    invoke-static {v6}, Landroid/app/AppOpsManagerCompat;->permissionToOpCode(Ljava/lang/String;)I

    move-result v7

    invoke-static {p1, p3, p2, v7}, Lcom/miui/permcenter/compact/AppOpsUtilsCompat;->checkOpNoThrow(Landroid/app/AppOpsManager;Ljava/lang/String;II)I

    move-result v7

    if-nez v7, :cond_6

    move v7, v1

    goto :goto_3

    :cond_6
    move v7, v2

    :goto_3
    invoke-static {v7}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v8

    const-string v9, "permission"

    invoke-static {v6, v9}, Lbk/m;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v4, v6, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    if-eqz v7, :cond_5

    move v5, v1

    goto :goto_2

    :cond_7
    if-nez v5, :cond_8

    return v1

    :cond_8
    invoke-virtual {p0, v3}, Lxc/u;->j(Landroid/content/pm/PackageInfo;)Ljava/util/Set;

    move-result-object p1

    invoke-interface {v4}, Ljava/util/Map;->isEmpty()Z

    move-result p2

    if-eqz p2, :cond_9

    goto :goto_6

    :cond_9
    invoke-interface {v4}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p2

    invoke-interface {p2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :cond_a
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result p3

    if-eqz p3, :cond_d

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ljava/util/Map$Entry;

    invoke-interface {p3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_c

    invoke-interface {p3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_b

    invoke-interface {p3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ljava/lang/Boolean;

    invoke-virtual {p3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p3

    if-nez p3, :cond_b

    goto :goto_4

    :cond_b
    move p3, v2

    goto :goto_5

    :cond_c
    :goto_4
    move p3, v1

    :goto_5
    if-nez p3, :cond_a

    move v1, v2

    :cond_d
    :goto_6
    if-eqz v1, :cond_e

    const/4 p1, 0x2

    return p1

    :cond_e
    const/4 p1, 0x3

    return p1
.end method

.method public final i()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    sget-object v0, Lxc/u;->d:Ljava/util/List;

    return-object v0
.end method

.method public final j(Landroid/content/pm/PackageInfo;)Ljava/util/Set;
    .locals 2
    .param p1    # Landroid/content/pm/PackageInfo;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/RequiresApi;
        value = 0x1d
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/pm/PackageInfo;",
            ")",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string v0, "packageInfo"

    invoke-static {p1, v0}, Lbk/m;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, p1}, Lxc/u;->l(Landroid/content/pm/PackageInfo;)Z

    move-result p1

    xor-int/lit8 p1, p1, 0x1

    new-instance v0, Ljava/util/LinkedHashSet;

    invoke-direct {v0}, Ljava/util/LinkedHashSet;-><init>()V

    const-string v1, "android.permission.READ_MEDIA_VISUAL_USER_SELECTED"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    if-eqz p1, :cond_0

    const-string p1, "android.permission.ACCESS_MEDIA_LOCATION"

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    :cond_0
    return-object v0
.end method

.method public final m(Landroid/content/Context;Landroid/content/pm/PackageInfo;)Z
    .locals 5
    .param p1    # Landroid/content/Context;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Landroid/content/pm/PackageInfo;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "context"

    invoke-static {p1, v0}, Lbk/m;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "packageInfo"

    invoke-static {p2, v0}, Lbk/m;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "appops"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lbk/m;->b(Ljava/lang/Object;)V

    check-cast v0, Landroid/app/AppOpsManager;

    invoke-virtual {p0, v0, p2}, Lxc/u;->t(Landroid/app/AppOpsManager;Landroid/content/pm/PackageInfo;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/16 v2, 0x273b

    goto :goto_0

    :cond_0
    const/16 v2, 0x2734

    :goto_0
    iget-object v3, p2, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v4, v3, Landroid/content/pm/ApplicationInfo;->uid:I

    iget-object v3, v3, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-static {v0, v2, v4, v3}, Landroid/app/AppOpsManagerCompat;->checkOpNoThrow(Landroid/app/AppOpsManager;IILjava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_2

    if-eqz v1, :cond_1

    iget-object p2, p2, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v0, p2, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    iget p2, p2, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-static {p2}, Lx4/z1;->m(I)I

    move-result p2

    const-string v1, "android.permission.ACCESS_FINE_LOCATION"

    invoke-static {p1, v1, v0, p2}, Lcom/miui/permcenter/l;->e(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;I)I

    move-result p1

    if-nez p1, :cond_1

    goto :goto_1

    :cond_1
    const/4 p1, 0x0

    goto :goto_2

    :cond_2
    :goto_1
    const/4 p1, 0x1

    :goto_2
    return p1
.end method

.method public final n(I)Z
    .locals 1

    invoke-static {}, Lcom/miui/permission/support/util/SdkLevel;->isAtLeastT()Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lxc/u;->b:Ljava/util/Set;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public final o(I)Z
    .locals 1

    invoke-static {}, Lcom/miui/permission/support/util/SdkLevel;->isAtLeastT()Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x4000

    if-ne p1, v0, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public final p(Landroid/content/Context;Ljava/lang/String;ILjava/util/ArrayList;)Z
    .locals 3
    .param p1    # Landroid/content/Context;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p4    # Ljava/util/ArrayList;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            "I",
            "Ljava/util/ArrayList<",
            "Ljava/lang/Long;",
            ">;)Z"
        }
    .end annotation

    const-string v0, "context"

    invoke-static {p1, v0}, Lbk/m;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "pkgName"

    invoke-static {p2, v0}, Lbk/m;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "requestedRelatedIds"

    invoke-static {p4, v0}, Lbk/m;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "appops"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    const-string v0, "null cannot be cast to non-null type android.app.AppOpsManager"

    invoke-static {p1, v0}, Lbk/m;->c(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Landroid/app/AppOpsManager;

    invoke-virtual {p4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p4

    :cond_0
    invoke-interface {p4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    sget-object v1, Lxc/u;->c:Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lbk/m;->b(Ljava/lang/Object;)V

    check-cast v0, Ljava/lang/Number;

    invoke-virtual {v0}, Ljava/lang/Number;->intValue()I

    move-result v0

    invoke-static {p1, v0, p3, p2}, Landroid/app/AppOpsManagerCompat;->checkOpNoThrow(Landroid/app/AppOpsManager;IILjava/lang/String;)I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    return v1

    :cond_1
    const/4 p1, 0x0

    return p1
.end method

.method public final r(JLtj/d;)Ljava/lang/Object;
    .locals 3
    .param p3    # Ltj/d;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ltj/d<",
            "-",
            "Ljava/util/ArrayList<",
            "Lcom/miui/permcenter/AppPermissionInfo;",
            ">;>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    invoke-static {}, Llk/w0;->b()Llk/d0;

    move-result-object v0

    new-instance v1, Lxc/u$b;

    const/4 v2, 0x0

    invoke-direct {v1, p1, p2, v2}, Lxc/u$b;-><init>(JLtj/d;)V

    invoke-static {v0, v1, p3}, Llk/g;->c(Ltj/g;Lak/p;Ltj/d;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final s(Landroid/content/Context;Ljava/util/HashMap;Landroid/content/pm/PackageInfo;)V
    .locals 9
    .param p1    # Landroid/content/Context;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Ljava/util/HashMap;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p3    # Landroid/content/pm/PackageInfo;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/HashMap<",
            "Ljava/lang/Long;",
            "Ljava/lang/Integer;",
            ">;",
            "Landroid/content/pm/PackageInfo;",
            ")V"
        }
    .end annotation

    const-string v0, "context"

    invoke-static {p1, v0}, Lbk/m;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "permissionToAction"

    invoke-static {p2, v0}, Lbk/m;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "packageInfo"

    invoke-static {p3, v0}, Lbk/m;->e(Ljava/lang/Object;Ljava/lang/String;)V

    sget-boolean v0, Lmiui/os/Build;->IS_INTERNATIONAL_BUILD:Z

    if-nez v0, :cond_8

    invoke-static {}, Lcom/miui/permission/support/util/SdkLevel;->isAtLeastT()Z

    move-result v0

    if-eqz v0, :cond_8

    iget-object v0, p3, Landroid/content/pm/PackageInfo;->requestedPermissions:[Ljava/lang/String;

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_1

    array-length v3, v0

    if-nez v3, :cond_0

    move v3, v2

    goto :goto_0

    :cond_0
    move v3, v1

    :goto_0
    if-eqz v3, :cond_2

    :cond_1
    move v1, v2

    :cond_2
    if-eqz v1, :cond_3

    goto/16 :goto_2

    :cond_3
    const-string v1, "packageInfo.requestedPermissions"

    invoke-static {v0, v1}, Lbk/m;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v0}, Lqj/f;->y([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    iget-object v1, p3, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v1, v1, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    const-wide/16 v2, -0x3

    const-wide/16 v4, -0x2

    const/16 v6, 0x21

    if-ge v1, v6, :cond_4

    const-wide v7, 0x200000000000L

    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    invoke-static {p1}, Lbk/m;->b(Ljava/lang/Object;)V

    check-cast p1, Ljava/lang/Number;

    invoke-virtual {p1}, Ljava/lang/Number;->intValue()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-interface {p2, v0, p3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p3

    invoke-interface {p2, p3, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void

    :cond_4
    const-string v1, "android.permission.READ_MEDIA_IMAGES"

    invoke-interface {v0, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_5

    const-string v1, "android.permission.READ_MEDIA_VIDEO"

    invoke-interface {v0, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_5

    const-string v1, "android.permission.ACCESS_MEDIA_LOCATION"

    invoke-interface {v0, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_7

    :cond_5
    invoke-static {}, Lcom/miui/permission/support/util/SdkLevel;->isAtLeastU()Z

    move-result v1

    if-eqz v1, :cond_6

    iget-object v1, p3, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v7, v1, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    if-lt v7, v6, :cond_6

    iget v1, v1, Landroid/content/pm/ApplicationInfo;->uid:I

    iget-object v6, p3, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    const-string v7, "packageInfo.packageName"

    invoke-static {v6, v7}, Lbk/m;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0, p1, v1, v6}, Lxc/u;->h(Landroid/content/Context;ILjava/lang/String;)I

    move-result v1

    goto :goto_1

    :cond_6
    iget-object v1, p3, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v1, v1, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-static {v1}, Lx4/z1;->m(I)I

    move-result v1

    iget-object v6, p3, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    const-string v7, "android.permission-group.READ_MEDIA_VISUAL"

    invoke-static {p1, v1, v6, v7}, Lxc/m;->a(Landroid/content/Context;ILjava/lang/String;Ljava/lang/String;)I

    move-result v1

    :goto_1
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-interface {p2, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_7
    const-string v1, "android.permission.READ_MEDIA_AUDIO"

    invoke-interface {v0, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    iget-object v1, p3, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v1, v1, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-static {v1}, Lx4/z1;->m(I)I

    move-result v1

    iget-object p3, p3, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    const-string v2, "android.permission-group.READ_MEDIA_AURAL"

    invoke-static {p1, v1, p3, v2}, Lxc/m;->a(Landroid/content/Context;ILjava/lang/String;Ljava/lang/String;)I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {p2, v0, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_8
    :goto_2
    return-void
.end method

.method public final t(Landroid/app/AppOpsManager;Landroid/content/pm/PackageInfo;)Z
    .locals 3
    .param p1    # Landroid/app/AppOpsManager;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Landroid/content/pm/PackageInfo;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "appOps"

    invoke-static {p1, v0}, Lbk/m;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "packageInfo"

    invoke-static {p2, v0}, Lbk/m;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p2}, Lcom/miui/permcenter/o;->N(Landroid/content/pm/PackageInfo;)Z

    move-result v0

    iget-object p2, p2, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v1, p2, Landroid/content/pm/ApplicationInfo;->uid:I

    const/4 v2, 0x1

    if-nez v0, :cond_1

    const/16 v0, 0x273b

    iget-object p2, p2, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-static {p1, v0, v1, p2}, Landroid/app/AppOpsManagerCompat;->checkOpNoThrow(Landroid/app/AppOpsManager;IILjava/lang/String;)I

    move-result p1

    if-ne p1, v2, :cond_0

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :cond_1
    :goto_0
    return v2
.end method

.method public final u(Landroid/content/Context;Lcom/miui/permcenter/AppPermissionInfo;Landroid/content/pm/PackageInfo;IJILxc/b;)V
    .locals 18
    .param p1    # Landroid/content/Context;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lcom/miui/permcenter/AppPermissionInfo;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p3    # Landroid/content/pm/PackageInfo;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p8    # Lxc/b;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    move-object/from16 v2, p1

    move-object/from16 v0, p3

    move/from16 v3, p4

    move/from16 v4, p7

    move-object/from16 v6, p8

    const-string v1, "context"

    invoke-static {v2, v1}, Lbk/m;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "appPermissionInfo"

    move-object/from16 v5, p2

    invoke-static {v5, v1}, Lbk/m;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "packageInfo"

    invoke-static {v0, v1}, Lbk/m;->e(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v1, v0, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v13, v1, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    iget v7, v1, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    const/4 v8, 0x2

    const/4 v9, 0x3

    const/4 v10, 0x0

    const/4 v14, 0x1

    const/16 v11, 0x21

    if-ge v7, v11, :cond_1

    invoke-static {v2, v1}, Lxc/m;->b(Landroid/content/Context;Landroid/content/pm/ApplicationInfo;)Lxc/m$a;

    move-result-object v0

    sget-object v1, Lxc/m$a;->a:Lxc/m$a;

    if-ne v0, v1, :cond_0

    move v8, v9

    :cond_0
    new-instance v0, Lmiuix/appcompat/app/AlertDialog$Builder;

    const v1, 0x7f130023

    invoke-direct {v0, v2, v1}, Lmiuix/appcompat/app/AlertDialog$Builder;-><init>(Landroid/content/Context;I)V

    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v7, 0x7f100133

    new-array v9, v14, [Ljava/lang/Object;

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    aput-object v11, v9, v10

    invoke-virtual {v1, v7, v8, v9}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lmiuix/appcompat/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Lmiuix/appcompat/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f12185f

    invoke-virtual {v0, v1}, Lmiuix/appcompat/app/AlertDialog$Builder;->setMessage(I)Lmiuix/appcompat/app/AlertDialog$Builder;

    move-result-object v0

    new-instance v1, Lxc/r;

    invoke-direct {v1, v6}, Lxc/r;-><init>(Lxc/b;)V

    invoke-virtual {v0, v1}, Lmiuix/appcompat/app/AlertDialog$Builder;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)Lmiuix/appcompat/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f120499

    new-instance v7, Lxc/s;

    invoke-direct {v7, v6}, Lxc/s;-><init>(Lxc/b;)V

    invoke-virtual {v0, v1, v7}, Lmiuix/appcompat/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Lmiuix/appcompat/app/AlertDialog$Builder;

    move-result-object v7

    const v8, 0x7f120f48

    new-instance v9, Lxc/t;

    move-object v0, v9

    move-object/from16 v1, p2

    move-object/from16 v2, p1

    move/from16 v3, p4

    move/from16 v4, p7

    move-object v5, v13

    move-object/from16 v6, p8

    invoke-direct/range {v0 .. v6}, Lxc/t;-><init>(Lcom/miui/permcenter/AppPermissionInfo;Landroid/content/Context;IILjava/lang/String;Lxc/b;)V

    invoke-virtual {v7, v8, v9}, Lmiuix/appcompat/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Lmiuix/appcompat/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lmiuix/appcompat/app/AlertDialog$Builder;->show()Lmiuix/appcompat/app/AlertDialog;

    goto/16 :goto_5

    :cond_1
    invoke-static {}, Lcom/miui/permission/support/util/SdkLevel;->isAtLeastU()Z

    move-result v1

    if-eqz v1, :cond_b

    const-wide/16 v11, -0x3

    cmp-long v1, p5, v11

    if-nez v1, :cond_b

    sget-object v1, Lxc/m$b;->b:Landroid/util/ArrayMap;

    const-string v5, "android.permission-group.READ_MEDIA_VISUAL"

    invoke-virtual {v1, v5}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    if-eqz v1, :cond_3

    invoke-interface {v1}, Ljava/util/Collection;->isEmpty()Z

    move-result v5

    if-eqz v5, :cond_2

    goto :goto_0

    :cond_2
    move v5, v10

    goto :goto_1

    :cond_3
    :goto_0
    move v5, v14

    :goto_1
    if-eqz v5, :cond_5

    if-eqz v6, :cond_4

    invoke-interface/range {p8 .. p8}, Lxc/b;->b()V

    :cond_4
    return-void

    :cond_5
    const-string v5, "appops"

    invoke-virtual {v2, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    const-string v7, "null cannot be cast to non-null type android.app.AppOpsManager"

    invoke-static {v5, v7}, Lbk/m;->c(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v5, Landroid/app/AppOpsManager;

    if-ne v4, v8, :cond_8

    const-string v4, "android.permission.READ_MEDIA_VISUAL_USER_SELECTED"

    invoke-static {v2, v3, v13, v4, v9}, Lxc/m;->h(Landroid/content/Context;ILjava/lang/String;Ljava/lang/String;I)V

    const/4 v15, 0x3

    const/16 v16, 0x2

    invoke-static {}, Lx4/z1;->y()I

    move-result v7

    invoke-static {v7}, Lx4/z1;->z(I)Landroid/os/UserHandle;

    move-result-object v17

    invoke-static {v4}, Landroid/app/AppOpsManagerCompat;->permissionToOpCode(Ljava/lang/String;)I

    move-result v7

    iget-object v8, v0, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v8, v8, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-static {v5, v7, v8, v10}, Landroid/app/AppOpsManagerCompat;->setUidMode(Landroid/app/AppOpsManager;III)V

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_7

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    move-object v8, v7

    check-cast v8, Ljava/lang/String;

    invoke-static {v8, v4}, Lbk/m;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_6

    invoke-static {v2, v3, v13, v8, v14}, Lxc/m;->h(Landroid/content/Context;ILjava/lang/String;Ljava/lang/String;I)V

    invoke-static {v8}, Landroid/app/AppOpsManagerCompat;->permissionToOpCode(Ljava/lang/String;)I

    move-result v7

    iget-object v9, v0, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v9, v9, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-static {v5, v7, v9, v14}, Landroid/app/AppOpsManagerCompat;->setUidMode(Landroid/app/AppOpsManager;III)V

    :cond_6
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v7

    move-object v9, v13

    move v10, v15

    move/from16 v11, v16

    move-object/from16 v12, v17

    invoke-static/range {v7 .. v12}, Ltg/a;->j(Landroid/content/pm/PackageManager;Ljava/lang/String;Ljava/lang/String;IILandroid/os/UserHandle;)V

    goto :goto_2

    :cond_7
    if-eqz v6, :cond_c

    goto :goto_4

    :cond_8
    if-ne v4, v9, :cond_9

    move v10, v14

    :cond_9
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_3
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_a

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    invoke-static {v2, v3, v13, v7, v4}, Lxc/m;->h(Landroid/content/Context;ILjava/lang/String;Ljava/lang/String;I)V

    invoke-static {v7}, Landroid/app/AppOpsManagerCompat;->permissionToOpCode(Ljava/lang/String;)I

    move-result v7

    iget-object v8, v0, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v8, v8, Landroid/content/pm/ApplicationInfo;->uid:I

    xor-int/lit8 v9, v10, 0x1

    invoke-static {v5, v7, v8, v9}, Landroid/app/AppOpsManagerCompat;->setUidMode(Landroid/app/AppOpsManager;III)V

    goto :goto_3

    :cond_a
    if-eqz v6, :cond_c

    goto :goto_4

    :cond_b
    sget-object v0, Lxc/m;->a:Ljava/util/Map;

    invoke-static/range {p5 .. p6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v2, v3, v13, v0, v4}, Lxc/m;->f(Landroid/content/Context;ILjava/lang/String;Ljava/lang/String;I)V

    if-eqz v6, :cond_c

    :goto_4
    invoke-interface/range {p8 .. p8}, Lxc/b;->a()V

    :cond_c
    :goto_5
    return-void
.end method

.method public final z(Landroid/content/Context;Landroid/content/pm/PackageInfo;Ljava/util/ArrayList;ZI)V
    .locals 9
    .param p1    # Landroid/content/Context;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Landroid/content/pm/PackageInfo;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p3    # Ljava/util/ArrayList;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Landroid/content/pm/PackageInfo;",
            "Ljava/util/ArrayList<",
            "Ljava/lang/Long;",
            ">;ZI)V"
        }
    .end annotation

    const-string v0, "context"

    invoke-static {p1, v0}, Lbk/m;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "packageInfo"

    invoke-static {p2, v0}, Lbk/m;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "requestedRelatedIds"

    invoke-static {p3, v0}, Lbk/m;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p3

    :goto_0
    invoke-interface {p3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    const-string v1, "permissionId"

    invoke-static {v0, v1}, Lbk/m;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v5

    move-object v2, p0

    move-object v3, p1

    move-object v4, p2

    move v7, p4

    move v8, p5

    invoke-virtual/range {v2 .. v8}, Lxc/u;->A(Landroid/content/Context;Landroid/content/pm/PackageInfo;JZI)Z

    goto :goto_0

    :cond_0
    return-void
.end method
