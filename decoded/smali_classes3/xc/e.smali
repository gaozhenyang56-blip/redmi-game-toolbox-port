.class public final Lxc/e;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation build Lkotlin/jvm/internal/SourceDebugExtension;
    value = {
        "SMAP\nCtaUtils.kt\nKotlin\n*S Kotlin\n*F\n+ 1 CtaUtils.kt\ncom/miui/permcenter/utils/CtaUtils\n+ 2 _Maps.kt\nkotlin/collections/MapsKt___MapsKt\n+ 3 _Arrays.kt\nkotlin/collections/ArraysKt___ArraysKt\n*L\n1#1,107:1\n215#2,2:108\n13644#3,3:110\n*S KotlinDebug\n*F\n+ 1 CtaUtils.kt\ncom/miui/permcenter/utils/CtaUtils\n*L\n59#1:108,2\n100#1:110,3\n*E\n"
    }
.end annotation


# static fields
.field public static final a:Lxc/e;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private static final b:Loj/f;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private static final c:Loj/f;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lxc/e;

    invoke-direct {v0}, Lxc/e;-><init>()V

    sput-object v0, Lxc/e;->a:Lxc/e;

    sget-object v0, Lxc/e$b;->a:Lxc/e$b;

    invoke-static {v0}, Loj/g;->a(Lak/a;)Loj/f;

    move-result-object v0

    sput-object v0, Lxc/e;->b:Loj/f;

    sget-object v0, Lxc/e$a;->a:Lxc/e$a;

    invoke-static {v0}, Loj/g;->a(Lak/a;)Loj/f;

    move-result-object v0

    sput-object v0, Lxc/e;->c:Loj/f;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private final a()Landroid/content/Context;
    .locals 2

    sget-object v0, Lxc/e;->c:Loj/f;

    invoke-interface {v0}, Loj/f;->getValue()Ljava/lang/Object;

    move-result-object v0

    const-string v1, "<get-context>(...)"

    invoke-static {v0, v1}, Lbk/m;->d(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Landroid/content/Context;

    return-object v0
.end method


# virtual methods
.method public final b(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .param p1    # Landroid/content/Context;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "DiscouragedApi"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    const-string v0, "context"

    invoke-static {p1, v0}, Lbk/m;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    if-nez p2, :cond_0

    return-object v0

    :cond_0
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    const-string v3, "string"

    invoke-virtual {v1, p2, v3, v2}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    if-gtz v1, :cond_1

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "string "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, " not found"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "ProvisionExtra"

    invoke-static {p2, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-object v0

    :cond_1
    invoke-virtual {p1, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public final c(Ljava/lang/String;Ljava/util/Map;)V
    .locals 22
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Ljava/util/Map;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    move-object/from16 v0, p1

    const-string v1, "packageName"

    invoke-static {v0, v1}, Lbk/m;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "grantPermissions"

    move-object/from16 v2, p2

    invoke-static {v2, v1}, Lbk/m;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface/range {p2 .. p2}, Ljava/util/Map;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    return-void

    :cond_0
    :try_start_0
    sget-object v1, Loj/m;->b:Loj/m$a;

    invoke-direct/range {p0 .. p0}, Lxc/e;->a()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    const/4 v3, 0x0

    invoke-virtual {v1, v0, v3}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v0

    invoke-interface/range {p2 .. p2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    const/4 v2, 0x3

    move v10, v2

    move v4, v3

    move v12, v4

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const-string v13, "packageInfo"

    if-eqz v5, :cond_9

    :try_start_1
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/Map$Entry;

    invoke-interface {v5}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v6

    move-object v7, v6

    check-cast v7, Ljava/lang/String;

    sget-object v6, Lcom/miui/permission/RequiredPermissionsUtil;->RUNTIME_PERMISSIONS:Ljava/util/Map;

    invoke-interface {v6, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Long;

    if-eqz v6, :cond_1

    invoke-virtual {v6}, Ljava/lang/Long;->longValue()J

    move-result-wide v8

    goto :goto_1

    :cond_1
    const-wide/16 v8, -0x1

    :goto_1
    iget-object v6, v0, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v6, v6, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    const/16 v11, 0x21

    const-wide/16 v14, -0x2

    const-wide/16 v16, -0x3

    const/16 v18, 0x1

    if-lt v6, v11, :cond_7

    invoke-static {}, Lcom/miui/permission/support/util/SdkLevel;->isAtLeastT()Z

    move-result v6

    if-eqz v6, :cond_7

    invoke-virtual {v7}, Ljava/lang/String;->hashCode()I

    move-result v6

    const v11, 0xa7a881c

    if-eq v6, v11, :cond_4

    const v11, 0x2a564637

    if-eq v6, v11, :cond_3

    const v11, 0x7e09eacb

    if-eq v6, v11, :cond_2

    goto :goto_2

    :cond_2
    const-string v6, "android.permission.ACCESS_MEDIA_LOCATION"

    invoke-virtual {v7, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_5

    goto :goto_2

    :cond_3
    const-string v6, "android.permission.READ_MEDIA_VIDEO"

    invoke-virtual {v7, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_5

    goto :goto_2

    :cond_4
    const-string v6, "android.permission.READ_MEDIA_IMAGES"

    invoke-virtual {v7, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_6

    :cond_5
    invoke-interface {v5}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Number;

    invoke-virtual {v2}, Ljava/lang/Number;->intValue()I

    move-result v2

    move-wide/from16 v8, v16

    move/from16 v12, v18

    :cond_6
    :goto_2
    const-string v6, "android.permission.READ_MEDIA_AUDIO"

    invoke-static {v7, v6}, Lbk/m;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_7

    invoke-interface {v5}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Number;

    invoke-virtual {v4}, Ljava/lang/Number;->intValue()I

    move-result v10

    move/from16 v20, v10

    move/from16 v21, v12

    move-wide v8, v14

    move/from16 v19, v18

    goto :goto_3

    :cond_7
    move/from16 v19, v4

    move/from16 v20, v10

    move/from16 v21, v12

    :goto_3
    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Long;

    invoke-static/range {v16 .. v17}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    aput-object v6, v4, v3

    invoke-static {v14, v15}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    aput-object v6, v4, v18

    invoke-static {v4}, Lqj/l;->j([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v4

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-interface {v4, v6}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_8

    sget-object v4, Lg4/b;->a:Lg4/b;

    invoke-direct/range {p0 .. p0}, Lxc/e;->a()Landroid/content/Context;

    move-result-object v6

    invoke-static {v0, v13}, Lbk/m;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {}, Lx4/z1;->y()I

    move-result v10

    invoke-interface {v5}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Number;

    invoke-virtual {v5}, Ljava/lang/Number;->intValue()I

    move-result v11

    const/4 v12, 0x1

    move-object v5, v6

    move-object v6, v0

    invoke-virtual/range {v4 .. v12}, Lg4/b;->m(Landroid/content/Context;Landroid/content/pm/PackageInfo;Ljava/lang/String;JIIZ)V

    :cond_8
    move/from16 v4, v19

    move/from16 v10, v20

    move/from16 v12, v21

    goto/16 :goto_0

    :cond_9
    if-eqz v4, :cond_a

    sget-object v4, Lg4/b;->a:Lg4/b;

    invoke-direct/range {p0 .. p0}, Lxc/e;->a()Landroid/content/Context;

    move-result-object v5

    invoke-static {v0, v13}, Lbk/m;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const-wide/16 v7, -0x2

    invoke-static {}, Lx4/z1;->y()I

    move-result v9

    const/4 v11, 0x1

    move-object v6, v0

    invoke-virtual/range {v4 .. v11}, Lg4/b;->l(Landroid/content/Context;Landroid/content/pm/PackageInfo;JIIZ)V

    :cond_a
    if-eqz v12, :cond_b

    sget-object v4, Lg4/b;->a:Lg4/b;

    invoke-direct/range {p0 .. p0}, Lxc/e;->a()Landroid/content/Context;

    move-result-object v5

    invoke-static {v0, v13}, Lbk/m;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const-wide/16 v7, -0x3

    invoke-static {}, Lx4/z1;->y()I

    move-result v9

    const/4 v11, 0x1

    move-object v6, v0

    move v10, v2

    invoke-virtual/range {v4 .. v11}, Lg4/b;->l(Landroid/content/Context;Landroid/content/pm/PackageInfo;JIIZ)V

    :cond_b
    sget-object v0, Loj/t;->a:Loj/t;

    invoke-static {v0}, Loj/m;->b(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_4

    :catchall_0
    move-exception v0

    sget-object v1, Loj/m;->b:Loj/m$a;

    invoke-static {v0}, Loj/n;->a(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Loj/m;->b(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    :goto_4
    invoke-static {v0}, Loj/m;->f(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_c

    invoke-static {v0}, Loj/m;->d(Ljava/lang/Object;)Ljava/lang/Throwable;

    move-result-object v0

    const-string v1, "ProvisionExtra"

    const-string v2, "grantPermission: "

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_c
    return-void
.end method

.method public final d(Landroid/content/Intent;Ljava/util/Map;)V
    .locals 7
    .param p1    # Landroid/content/Intent;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Ljava/util/Map;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Intent;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    const-string v0, "intent"

    invoke-static {p1, v0}, Lbk/m;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "permissionMap"

    invoke-static {p2, v0}, Lbk/m;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "miui.intent.extra.REQUEST_PERMISSIONS_NAMES"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringArrayExtra(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    const-string v1, "miui.intent.extra.REQUEST_PERMISSIONS_RESULTS"

    invoke-virtual {p1, v1}, Landroid/content/Intent;->getIntArrayExtra(Ljava/lang/String;)[I

    move-result-object p1

    if-eqz v0, :cond_1

    array-length v1, v0

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v4, v0, v2

    add-int/lit8 v5, v3, 0x1

    if-eqz p1, :cond_0

    aget v3, p1, v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const-string v6, "permission"

    invoke-static {v4, v6}, Lbk/m;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {p2, v4, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    add-int/lit8 v2, v2, 0x1

    move v3, v5

    goto :goto_0

    :cond_1
    return-void
.end method
