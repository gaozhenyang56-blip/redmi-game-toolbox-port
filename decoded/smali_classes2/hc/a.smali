.class public final Lhc/a;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:Lhc/a;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private static b:Landroid/content/Context;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Lhc/a;

    invoke-direct {v0}, Lhc/a;-><init>()V

    sput-object v0, Lhc/a;->a:Lhc/a;

    invoke-static {}, Lcom/miui/securitycenter/Application;->A()Lcom/miui/securitycenter/Application;

    move-result-object v0

    const-string v1, "com.lbe.security.miui"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->createPackageContext(Ljava/lang/String;I)Landroid/content/Context;

    move-result-object v0

    sput-object v0, Lhc/a;->b:Landroid/content/Context;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private final varargs a(Landroid/content/Context;IIIIZZ[J)Lcom/miui/permission/PermissionGroupInfo;
    .locals 10

    move-object/from16 v0, p8

    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget-wide v3, v0, v2

    move-object v8, p0

    move-object v5, p1

    invoke-direct {p0, p1, v3, v4}, Lhc/a;->e(Landroid/content/Context;J)Z

    move-result v6

    if-eqz v6, :cond_0

    goto :goto_1

    :cond_0
    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v7, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    move-object v8, p0

    new-instance v9, Lcom/miui/permission/PermissionGroupInfo;

    move-object v0, v9

    move v1, p2

    move v2, p3

    move v3, p5

    move v4, p4

    move/from16 v5, p6

    move/from16 v6, p7

    invoke-direct/range {v0 .. v7}, Lcom/miui/permission/PermissionGroupInfo;-><init>(IIIIZZLjava/util/ArrayList;)V

    return-object v9
.end method

.method public static final b()Landroid/content/Context;
    .locals 2
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    sget-boolean v0, Lcom/miui/permcenter/o;->x:Z

    if-eqz v0, :cond_0

    sget-object v0, Lhc/a;->b:Landroid/content/Context;

    const-string v1, "{\n            lbeContext\n        }"

    goto :goto_0

    :cond_0
    invoke-static {}, Lcom/miui/securitycenter/Application;->A()Lcom/miui/securitycenter/Application;

    move-result-object v0

    const-string v1, "{\n            Application.getInstance()\n        }"

    :goto_0
    invoke-static {v0, v1}, Lbk/m;->d(Ljava/lang/Object;Ljava/lang/String;)V

    return-object v0
.end method

.method public static final c()Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/miui/permission/PermissionGroupInfo;",
            ">;"
        }
    .end annotation

    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    sget-boolean v0, Lcom/miui/permcenter/o;->x:Z

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/miui/securitycenter/Application;->A()Lcom/miui/securitycenter/Application;

    move-result-object v0

    invoke-static {v0}, Lcom/miui/permission/PermissionManager;->getInstance(Landroid/content/Context;)Lcom/miui/permission/PermissionManager;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/miui/permission/PermissionManager;->getAllPermissionGroups(I)Ljava/util/List;

    move-result-object v0

    const-string v1, "{\n            Permission\u2026issionGroups(0)\n        }"

    invoke-static {v0, v1}, Lbk/m;->d(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    sget-object v0, Lhc/a;->a:Lhc/a;

    invoke-static {}, Lcom/miui/securitycenter/Application;->A()Lcom/miui/securitycenter/Application;

    move-result-object v1

    const-string v2, "getInstance()"

    invoke-static {v1, v2}, Lbk/m;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {v0, v1}, Lhc/a;->d(Landroid/content/Context;)Ljava/util/List;

    move-result-object v0

    :goto_0
    return-object v0
.end method

.method private final d(Landroid/content/Context;)Ljava/util/List;
    .locals 21
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/List<",
            "Lcom/miui/permission/PermissionGroupInfo;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const/4 v1, 0x1

    new-array v10, v1, [J

    const-wide/16 v2, 0x20

    const/4 v11, 0x0

    aput-wide v2, v10, v11

    const/4 v4, 0x1

    const/16 v5, 0x200

    const v6, 0x7f120b84

    const v7, 0x7f080e47

    const/4 v8, 0x1

    const/4 v9, 0x0

    move-object/from16 v2, p0

    move-object/from16 v3, p1

    invoke-direct/range {v2 .. v10}, Lhc/a;->a(Landroid/content/Context;IIIIZZ[J)Lcom/miui/permission/PermissionGroupInfo;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-array v2, v1, [J

    const-wide/16 v3, 0x1000

    aput-wide v3, v2, v11

    const/4 v14, 0x1

    const/16 v15, 0x400

    const v16, 0x7f120014

    const v17, 0x7f080e42

    const/16 v18, 0x1

    const/16 v19, 0x0

    move-object/from16 v12, p0

    move-object/from16 v13, p1

    move-object/from16 v20, v2

    invoke-direct/range {v12 .. v20}, Lhc/a;->a(Landroid/content/Context;IIIIZZ[J)Lcom/miui/permission/PermissionGroupInfo;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-array v2, v1, [J

    const-wide/32 v3, 0x20000

    aput-wide v3, v2, v11

    const/16 v15, 0x800

    const v16, 0x7f120b85

    const v17, 0x7f080e3e

    move-object/from16 v20, v2

    invoke-direct/range {v12 .. v20}, Lhc/a;->a(Landroid/content/Context;IIIIZZ[J)Lcom/miui/permission/PermissionGroupInfo;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-static {}, Lcom/miui/permission/support/util/SdkLevel;->isAtLeastT()Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v14, 0x2

    const/16 v15, 0x1000

    const v16, 0x7f120b83

    const v17, 0x7f080e46

    const/16 v18, 0x1

    const/16 v19, 0x0

    new-array v2, v1, [J

    const-wide/16 v3, -0x3

    aput-wide v3, v2, v11

    move-object/from16 v12, p0

    move-object/from16 v13, p1

    move-object/from16 v20, v2

    invoke-direct/range {v12 .. v20}, Lhc/a;->a(Landroid/content/Context;IIIIZZ[J)Lcom/miui/permission/PermissionGroupInfo;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/16 v15, 0x2000

    const v16, 0x7f120b76

    const v17, 0x7f080e48

    new-array v2, v1, [J

    const-wide/16 v3, -0x2

    aput-wide v3, v2, v11

    move-object/from16 v20, v2

    invoke-direct/range {v12 .. v20}, Lhc/a;->a(Landroid/content/Context;IIIIZZ[J)Lcom/miui/permission/PermissionGroupInfo;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_0
    const/4 v14, 0x2

    const/16 v15, 0x4000

    invoke-static {}, Lcom/miui/permission/support/util/SdkLevel;->isAtLeastT()Z

    move-result v2

    if-eqz v2, :cond_1

    const v2, 0x7f120b79

    goto :goto_0

    :cond_1
    const v2, 0x7f120b7a

    :goto_0
    move/from16 v16, v2

    const v17, 0x7f080e45

    const/16 v18, 0x1

    const/16 v19, 0x0

    new-array v2, v1, [J

    const-wide v3, 0x200000000000L

    aput-wide v3, v2, v11

    move-object/from16 v12, p0

    move-object/from16 v13, p1

    move-object/from16 v20, v2

    invoke-direct/range {v12 .. v20}, Lhc/a;->a(Landroid/content/Context;IIIIZZ[J)Lcom/miui/permission/PermissionGroupInfo;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/4 v14, 0x3

    const/4 v15, 0x2

    const v16, 0x7f120b89

    const v17, 0x7f080e4c

    const/16 v19, 0x1

    const/4 v2, 0x5

    new-array v2, v2, [J

    fill-array-data v2, :array_0

    move-object/from16 v20, v2

    invoke-direct/range {v12 .. v20}, Lhc/a;->a(Landroid/content/Context;IIIIZZ[J)Lcom/miui/permission/PermissionGroupInfo;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/4 v15, 0x4

    const v16, 0x7f120020

    const v17, 0x7f080e4b

    const/4 v2, 0x3

    new-array v3, v2, [J

    fill-array-data v3, :array_1

    move-object/from16 v20, v3

    invoke-direct/range {v12 .. v20}, Lhc/a;->a(Landroid/content/Context;IIIIZZ[J)Lcom/miui/permission/PermissionGroupInfo;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/16 v15, 0x8

    const v16, 0x7f120015

    const v17, 0x7f080e44

    new-array v2, v2, [J

    fill-array-data v2, :array_2

    move-object/from16 v20, v2

    invoke-direct/range {v12 .. v20}, Lhc/a;->a(Landroid/content/Context;IIIIZZ[J)Lcom/miui/permission/PermissionGroupInfo;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/16 v15, 0x10

    const v16, 0x7f120013

    const v17, 0x7f080e41

    const/4 v2, 0x2

    new-array v3, v2, [J

    fill-array-data v3, :array_3

    move-object/from16 v20, v3

    invoke-direct/range {v12 .. v20}, Lhc/a;->a(Landroid/content/Context;IIIIZZ[J)Lcom/miui/permission/PermissionGroupInfo;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/4 v14, 0x4

    const/16 v15, 0x20

    const v16, 0x7f120012

    const v17, 0x7f080e40

    new-array v3, v2, [J

    fill-array-data v3, :array_4

    move-object/from16 v20, v3

    invoke-direct/range {v12 .. v20}, Lhc/a;->a(Landroid/content/Context;IIIIZZ[J)Lcom/miui/permission/PermissionGroupInfo;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const v15, 0x8000

    const v16, 0x7f120b8a

    const v17, 0x7f080e3f

    const/16 v19, 0x0

    new-array v3, v1, [J

    const-wide v4, 0x2000000000L

    aput-wide v4, v3, v11

    move-object/from16 v20, v3

    invoke-direct/range {v12 .. v20}, Lhc/a;->a(Landroid/content/Context;IIIIZZ[J)Lcom/miui/permission/PermissionGroupInfo;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/16 v15, 0x100

    const v16, 0x7f120b86

    const v17, 0x7f080e49

    new-array v1, v1, [J

    const-wide v3, 0x100000000L

    aput-wide v3, v1, v11

    move-object/from16 v20, v1

    invoke-direct/range {v12 .. v20}, Lhc/a;->a(Landroid/content/Context;IIIIZZ[J)Lcom/miui/permission/PermissionGroupInfo;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-static {}, Lcom/miui/permcenter/o;->w()Z

    move-result v1

    if-eqz v1, :cond_2

    const/4 v14, 0x4

    const/16 v15, 0x40

    const v16, 0x7f120b78

    const v17, 0x7f080e43

    const/16 v18, 0x1

    const/16 v19, 0x0

    new-array v1, v11, [J

    move-object/from16 v12, p0

    move-object/from16 v13, p1

    move-object/from16 v20, v1

    invoke-direct/range {v12 .. v20}, Lhc/a;->a(Landroid/content/Context;IIIIZZ[J)Lcom/miui/permission/PermissionGroupInfo;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_2
    const/4 v14, 0x4

    const/high16 v15, 0x10000

    const v16, 0x7f120b87

    const v17, 0x7f080e4a

    const/16 v18, 0x1

    const/16 v19, 0x0

    new-array v1, v11, [J

    move-object/from16 v12, p0

    move-object/from16 v13, p1

    move-object/from16 v20, v1

    invoke-direct/range {v12 .. v20}, Lhc/a;->a(Landroid/content/Context;IIIIZZ[J)Lcom/miui/permission/PermissionGroupInfo;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-boolean v1, Lmiui/os/Build;->IS_INTERNATIONAL_BUILD:Z

    if-nez v1, :cond_3

    const/4 v5, 0x5

    const/high16 v6, 0x20000

    const v7, 0x7f120b77

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x1

    new-array v11, v2, [J

    fill-array-data v11, :array_5

    move-object/from16 v3, p0

    move-object/from16 v4, p1

    invoke-direct/range {v3 .. v11}, Lhc/a;->a(Landroid/content/Context;IIIIZZ[J)Lcom/miui/permission/PermissionGroupInfo;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_3
    const/4 v4, 0x6

    const/high16 v5, 0x40000

    const v6, 0x7f120b88

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x1

    const/16 v1, 0x11

    new-array v10, v1, [J

    fill-array-data v10, :array_6

    move-object/from16 v2, p0

    move-object/from16 v3, p1

    invoke-direct/range {v2 .. v10}, Lhc/a;->a(Landroid/content/Context;IIIIZZ[J)Lcom/miui/permission/PermissionGroupInfo;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-object v0

    :array_0
    .array-data 8
        0x1
        0x80000
        0x10000000
        0x20000000
        0x80
    .end array-data

    :array_1
    .array-data 8
        0x2
        0x4000000000000L
        0x40
    .end array-data

    :array_2
    .array-data 8
        0x8
        0x80000000L
        0x800000000000L
    .end array-data

    :array_3
    .array-data 8
        0x40000000
        0x10
    .end array-data

    :array_4
    .array-data 8
        0x1000000
        0x800000
    .end array-data

    :array_5
    .array-data 8
        0x4000000000L
        0x4000000000000000L    # 2.0
    .end array-data

    :array_6
    .array-data 8
        0x800000000000000L
        0x200000000000000L
        0x200000
        0x400000
        0x8000000000L
        0x10000000000000L
        0x400000000L
        0x20000000000000L
        0x80000000000000L
        0x100000000000000L
        0x2000000
        0x400000000000L
        0x4000000
        0x1000000000000L
        0x2000000000000L
        0x4000
        0x1000000000000000L
    .end array-data
.end method

.method private final e(Landroid/content/Context;J)Z
    .locals 5

    const-wide v0, 0x400000000L

    cmp-long v0, p2, v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-nez v0, :cond_0

    sget-boolean p1, Lcom/miui/permcenter/o;->l:Z

    if-nez p1, :cond_c

    :goto_0
    move v1, v2

    goto/16 :goto_9

    :cond_0
    const-wide/32 v3, 0x800000

    cmp-long v0, p2, v3

    if-nez v0, :cond_1

    :goto_1
    move v0, v2

    goto :goto_2

    :cond_1
    const-wide/16 v3, 0x80

    cmp-long v0, p2, v3

    if-nez v0, :cond_2

    goto :goto_1

    :cond_2
    move v0, v1

    :goto_2
    if-eqz v0, :cond_3

    sget-boolean p1, Lcom/miui/permcenter/o;->x:Z

    if-nez p1, :cond_c

    goto :goto_0

    :cond_3
    const-wide v3, 0x8000000000L

    cmp-long v0, p2, v3

    if-nez v0, :cond_4

    :goto_3
    move v0, v2

    goto :goto_4

    :cond_4
    const-wide/high16 v3, 0x800000000000000L

    cmp-long v0, p2, v3

    if-nez v0, :cond_5

    goto :goto_3

    :cond_5
    move v0, v1

    :goto_4
    if-eqz v0, :cond_6

    :goto_5
    move v0, v2

    goto :goto_6

    :cond_6
    const-wide/32 v3, 0x4000000

    cmp-long v0, p2, v3

    if-nez v0, :cond_7

    goto :goto_5

    :cond_7
    move v0, v1

    :goto_6
    if-eqz v0, :cond_8

    :goto_7
    move v0, v2

    goto :goto_8

    :cond_8
    const-wide/high16 v3, 0x200000000000000L

    cmp-long v0, p2, v3

    if-nez v0, :cond_9

    goto :goto_7

    :cond_9
    move v0, v1

    :goto_8
    if-eqz v0, :cond_a

    sget-boolean v1, Lmiui/os/Build;->IS_INTERNATIONAL_BUILD:Z

    goto :goto_9

    :cond_a
    const-wide/32 v3, 0x20000000

    cmp-long v0, p2, v3

    if-nez v0, :cond_b

    goto :goto_0

    :cond_b
    const-wide/high16 v2, 0x1000000000000000L

    cmp-long p2, p2, v2

    if-nez p2, :cond_c

    invoke-direct {p0, p1}, Lhc/a;->f(Landroid/content/Context;)Z

    move-result v1

    :cond_c
    :goto_9
    return v1
.end method

.method private final f(Landroid/content/Context;)Z
    .locals 3

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    :cond_0
    :try_start_0
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p1

    const-string v1, "com.android.systemui"

    const/16 v2, 0x80

    invoke-virtual {p1, v1, v2}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object p1

    iget-object p1, p1, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object p1, p1, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    if-nez p1, :cond_1

    goto :goto_0

    :cond_1
    const-string v1, "miui.addOngoingNotifPermissionToMiui"

    invoke-virtual {p1, v1, v0}, Landroid/os/BaseBundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return v0

    :catch_0
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    return v0
.end method
