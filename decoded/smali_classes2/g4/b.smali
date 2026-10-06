.class public final Lg4/b;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation build Lkotlin/jvm/internal/SourceDebugExtension;
    value = {
        "SMAP\nPermissionUtil.kt\nKotlin\n*S Kotlin\n*F\n+ 1 PermissionUtil.kt\ncom/miui/combinepermission/util/PermissionUtil\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n+ 3 Maps.kt\nkotlin/collections/MapsKt__MapsKt\n+ 4 _Maps.kt\nkotlin/collections/MapsKt___MapsKt\n*L\n1#1,610:1\n1#2:611\n483#3,7:612\n483#3,7:621\n215#4,2:619\n*S KotlinDebug\n*F\n+ 1 PermissionUtil.kt\ncom/miui/combinepermission/util/PermissionUtil\n*L\n130#1:612,7\n284#1:621,7\n133#1:619,2\n*E\n"
    }
.end annotation


# static fields
.field public static final a:Lg4/b;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static b:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .annotation build Lkotlin/jvm/JvmField;
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private static final c:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private static final d:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private static final e:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private static final f:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private static final g:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private static final h:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 6

    new-instance v0, Lg4/b;

    invoke-direct {v0}, Lg4/b;-><init>()V

    sput-object v0, Lg4/b;->a:Lg4/b;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lg4/b;->b:Ljava/util/HashMap;

    const-string v1, "android.permission.READ_MEDIA_IMAGES"

    sput-object v1, Lg4/b;->c:Ljava/lang/String;

    const-string v2, "android.permission.READ_MEDIA_AUDIO"

    sput-object v2, Lg4/b;->d:Ljava/lang/String;

    const-string v3, "android.permission.READ_MEDIA_VIDEO"

    sput-object v3, Lg4/b;->e:Ljava/lang/String;

    const-string v4, "android.permission.ACCESS_MEDIA_LOCATION"

    sput-object v4, Lg4/b;->f:Ljava/lang/String;

    const-string v5, "com.hyperos.permission.READ_NOTE"

    sput-object v5, Lg4/b;->g:Ljava/lang/String;

    const-string v5, "com.hyperos.permission.READ_RECORD"

    sput-object v5, Lg4/b;->h:Ljava/lang/String;

    const v5, 0x7f1210f7

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v0, v1, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lg4/b;->b:Ljava/util/HashMap;

    const v1, 0x7f1210f8

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lg4/b;->b:Ljava/util/HashMap;

    invoke-interface {v0, v3, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lg4/b;->b:Ljava/util/HashMap;

    invoke-interface {v0, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lg4/b;->b:Ljava/util/HashMap;

    const v1, 0x7f1210ea

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "android.permission.ACCESS_FINE_LOCATION"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lg4/b;->b:Ljava/util/HashMap;

    const v1, 0x7f1210e9

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "android.permission.ACCESS_COARSE_LOCATION"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private final d(Ljava/lang/String;)I
    .locals 2

    invoke-static {p1}, Landroid/app/AppOpsManagerCompat;->permissionToOpCode(Ljava/lang/String;)I

    move-result v0

    const-string v1, "android.permission.ACCESS_BACKGROUND_LOCATION"

    invoke-static {v1, p1}, Lbk/m;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    const-string v1, "android.permission.BODY_SENSORS_BACKGROUND"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    const/16 v0, 0x38

    goto :goto_0

    :cond_1
    const-string v1, "com.android.permission.GET_INSTALLED_APPS"

    invoke-static {v1, p1}, Lbk/m;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    const/16 v0, 0x2726

    goto :goto_0

    :cond_2
    const-string v1, "com.android.permission.SHAKE"

    invoke-static {v1, p1}, Lbk/m;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_3

    const/16 v0, 0x273c

    :cond_3
    :goto_0
    return v0
.end method

.method private final o(Landroid/content/Context;Landroid/os/UserHandle;Ljava/lang/String;)V
    .locals 14

    const-class v0, Ljava/lang/String;

    :try_start_0
    const-string v1, "android.provider.DeviceConfig"

    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    const-string v2, "getLong"

    const/4 v3, 0x3

    new-array v4, v3, [Ljava/lang/Class;

    const/4 v5, 0x0

    aput-object v0, v4, v5

    const/4 v6, 0x1

    aput-object v0, v4, v6

    sget-object v7, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    const/4 v8, 0x2

    aput-object v7, v4, v8

    new-array v9, v3, [Ljava/lang/Object;

    const-string v10, "permissions"

    aput-object v10, v9, v5

    const-string v10, "one_time_permissions_timeout_millis"

    aput-object v10, v9, v6

    const-wide/32 v10, 0xea60

    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v10

    aput-object v10, v9, v8

    invoke-static {v1, v2, v4, v9}, Lcom/miui/permission/support/util/ReflectUtil;->callStaticObjectMethod(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    const-string v2, "android.permission.PermissionManager"

    invoke-static {v2}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2

    move-object v4, p1

    invoke-virtual {p1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    const-string v9, "mPermissionManager"

    invoke-static {v2, v9}, Lcom/miui/permission/support/util/ReflectUtil;->getObjectField(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    sget v9, Landroid/os/Build$VERSION;->SDK_INT:I
    :try_end_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_4
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/NoSuchFieldException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    const/16 v10, 0x22

    const/4 v11, -0x1

    const-string v12, "startOneTimePermissionSession"

    const/4 v13, 0x4

    if-lt v9, v10, :cond_0

    const/4 v9, 0x5

    :try_start_1
    new-array v10, v9, [Ljava/lang/Class;

    aput-object v0, v10, v5

    sget-object v0, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v0, v10, v6

    aput-object v0, v10, v8

    aput-object v7, v10, v3

    aput-object v7, v10, v13

    new-array v0, v9, [Ljava/lang/Object;

    aput-object p3, v0, v5

    invoke-virtual {p1}, Landroid/content/Context;->getDeviceId()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v0, v6

    invoke-virtual/range {p2 .. p2}, Ljava/lang/Object;->hashCode()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v0, v8

    aput-object v1, v0, v3

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v0, v13

    invoke-static {v2, v12, v10, v0}, Lcom/miui/permission/support/util/ReflectUtil;->callObjectMethod(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    :cond_0
    new-array v4, v13, [Ljava/lang/Class;

    aput-object v0, v4, v5

    sget-object v0, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v0, v4, v6

    aput-object v7, v4, v8

    aput-object v7, v4, v3

    new-array v0, v13, [Ljava/lang/Object;

    aput-object p3, v0, v5

    invoke-virtual/range {p2 .. p2}, Ljava/lang/Object;->hashCode()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v0, v6

    aput-object v1, v0, v8

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v0, v3

    invoke-static {v2, v12, v4, v0}, Lcom/miui/permission/support/util/ReflectUtil;->callObjectMethod(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catch Ljava/lang/NoSuchMethodException; {:try_start_1 .. :try_end_1} :catch_4
    .catch Ljava/lang/IllegalAccessException; {:try_start_1 .. :try_end_1} :catch_3
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/lang/NoSuchFieldException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/ClassNotFoundException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    goto :goto_0

    :catch_1
    move-exception v0

    goto :goto_0

    :catch_2
    move-exception v0

    goto :goto_0

    :catch_3
    move-exception v0

    goto :goto_0

    :catch_4
    move-exception v0

    :goto_0
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    :goto_1
    return-void
.end method


# virtual methods
.method public final a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;I)I
    .locals 2
    .param p1    # Landroid/content/Context;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p3    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "context"

    invoke-static {p1, v0}, Lbk/m;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "permission"

    invoke-static {p2, v0}, Lbk/m;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "pkgName"

    invoke-static {p3, v0}, Lbk/m;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "com.hyperos.permission.READ_NOTE"

    invoke-static {v0, p2}, Lbk/m;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    const-string v0, "com.miui.notes"

    invoke-virtual {p0, p1, v0}, Lg4/b;->p(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const-string v0, "com.hyperos.permission.READ_RECORD"

    invoke-static {v0, p2}, Lbk/m;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    const-string v0, "com.android.soundrecorder"

    invoke-virtual {p0, p1, v0}, Lg4/b;->p(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2

    :cond_1
    const/4 p3, 0x0

    :try_start_0
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p1

    invoke-virtual {p1, p2, v1}, Landroid/content/pm/PackageManager;->getPermissionInfo(Ljava/lang/String;I)Landroid/content/pm/PermissionInfo;

    move-result-object p3
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    :goto_0
    if-nez p3, :cond_3

    const/4 v1, -0x1

    goto :goto_1

    :cond_2
    invoke-static {p1, p2, p3, p4}, Lcom/miui/permcenter/l;->e(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;I)I

    move-result v1

    :cond_3
    :goto_1
    return v1
.end method

.method public final b(Landroid/content/Context;Landroid/content/pm/PackageInfo;Ljava/lang/String;)Z
    .locals 1
    .param p1    # Landroid/content/Context;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Landroid/content/pm/PackageInfo;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p3    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "context"

    invoke-static {p1, v0}, Lbk/m;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "packageInfo"

    invoke-static {p2, v0}, Lbk/m;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "permissionName"

    invoke-static {p3, v0}, Lbk/m;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v0

    iget-object p2, p2, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget p2, p2, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-virtual {p1, p3, v0, p2}, Landroid/content/Context;->checkPermission(Ljava/lang/String;II)I

    move-result p1

    if-nez p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public final c(Landroid/content/Context;Ljava/lang/String;I)Landroid/content/pm/PackageInfo;
    .locals 7
    .param p1    # Landroid/content/Context;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    const-string v0, "context"

    invoke-static {p1, v0}, Lbk/m;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "packageName"

    invoke-static {p2, v0}, Lbk/m;->e(Ljava/lang/Object;Ljava/lang/String;)V

    :try_start_0
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p1

    const-string v0, "getPackageInfoAsUser"

    const/4 v1, 0x3

    new-array v2, v1, [Ljava/lang/Class;

    const-class v3, Ljava/lang/String;

    const/4 v4, 0x0

    aput-object v3, v2, v4

    sget-object v3, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    const/4 v5, 0x1

    aput-object v3, v2, v5

    const/4 v6, 0x2

    aput-object v3, v2, v6

    new-array v1, v1, [Ljava/lang/Object;

    aput-object p2, v1, v4

    const/16 p2, 0x10c0

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    aput-object p2, v1, v5

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    aput-object p2, v1, v6

    invoke-static {p1, v0, v2, v1}, Lcom/miui/permission/support/util/ReflectUtil;->callObjectMethod(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    const-string p2, "null cannot be cast to non-null type android.content.pm.PackageInfo"

    invoke-static {p1, p2}, Lbk/m;->c(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Landroid/content/pm/PackageInfo;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const/4 p1, 0x0

    :goto_0
    return-object p1
.end method

.method public final e(Landroid/content/Context;Ljava/lang/String;)J
    .locals 2
    .param p1    # Landroid/content/Context;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    if-eqz p2, :cond_4

    invoke-virtual {p2}, Ljava/lang/String;->hashCode()I

    move-result p1

    const v0, 0xa7a881c

    if-eq p1, v0, :cond_2

    const v0, 0x2a564637

    if-eq p1, v0, :cond_1

    const v0, 0x7e09eacb

    if-eq p1, v0, :cond_0

    goto :goto_0

    :cond_0
    const-string p1, "android.permission.ACCESS_MEDIA_LOCATION"

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_3

    goto :goto_0

    :cond_1
    const-string p1, "android.permission.READ_MEDIA_VIDEO"

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_3

    goto :goto_0

    :cond_2
    const-string p1, "android.permission.READ_MEDIA_IMAGES"

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_4

    :cond_3
    const-wide/16 p1, -0x3

    return-wide p1

    :cond_4
    :goto_0
    const-string p1, "android.permission.READ_MEDIA_AUDIO"

    invoke-static {p2, p1}, Lbk/m;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_5

    const-wide/16 p1, -0x2

    return-wide p1

    :cond_5
    sget-object p1, Lcom/miui/permission/RequiredPermissionsUtil;->RUNTIME_PERMISSIONS:Ljava/util/Map;

    invoke-interface {p1, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Long;

    if-eqz p1, :cond_6

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide p1

    goto :goto_1

    :cond_6
    const-wide/16 p1, -0x1

    :goto_1
    const-wide/32 v0, 0x20000000

    cmp-long v0, p1, v0

    if-nez v0, :cond_7

    const-wide/16 p1, 0x80

    :cond_7
    return-wide p1
.end method

.method public final f(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .param p1    # Landroid/content/Context;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    sget-object v0, Lg4/b;->b:Ljava/util/HashMap;

    invoke-interface {v0, p2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    const-string v1, ""

    if-eqz v0, :cond_3

    sget-object v0, Lg4/b;->b:Ljava/util/HashMap;

    invoke-interface {v0, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/Integer;

    if-eqz p2, :cond_2

    invoke-virtual {p2}, Ljava/lang/Number;->intValue()I

    move-result p2

    if-eqz p1, :cond_0

    invoke-virtual {p1, p2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    if-nez p1, :cond_1

    goto :goto_1

    :cond_1
    move-object v1, p1

    :cond_2
    :goto_1
    return-object v1

    :cond_3
    :try_start_0
    invoke-virtual {p0, p1, p2}, Lg4/b;->e(Landroid/content/Context;Ljava/lang/String;)J

    move-result-wide v2

    invoke-static {p1}, Lcom/miui/permission/PermissionManager;->getInstance(Landroid/content/Context;)Lcom/miui/permission/PermissionManager;

    move-result-object p1

    invoke-virtual {p1, v2, v3}, Lcom/miui/permission/PermissionManager;->getPermissionForId(J)Lcom/miui/permission/PermissionInfo;

    move-result-object p1

    invoke-virtual {p1}, Lcom/miui/permission/PermissionInfo;->getName()Ljava/lang/String;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    return-object v1
.end method

.method public final g([Ljava/lang/String;[Ljava/lang/String;[I)Ljava/util/LinkedHashMap;
    .locals 6
    .param p1    # [Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p2    # [Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p3    # [I
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/String;",
            "[I)",
            "Ljava/util/LinkedHashMap<",
            "Ljava/lang/String;",
            "Loj/l<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;>;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    if-nez p1, :cond_0

    return-object v0

    :cond_0
    const/4 v1, 0x0

    array-length v2, p1

    :goto_0
    if-ge v1, v2, :cond_3

    if-eqz p2, :cond_1

    array-length v3, p2

    if-ge v1, v3, :cond_1

    aget-object v3, p2, v1

    goto :goto_1

    :cond_1
    const-string v3, ""

    :goto_1
    const/16 v4, -0x3e8

    if-eqz p3, :cond_2

    array-length v5, p3

    if-ge v1, v5, :cond_2

    aget v4, p3, v1

    const/4 v5, 0x2

    if-ne v4, v5, :cond_2

    const/4 v4, 0x3

    :cond_2
    new-instance v5, Loj/l;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-direct {v5, v3, v4}, Loj/l;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    aget-object v3, p1, v1

    invoke-interface {v0, v3, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_3
    return-object v0
.end method

.method public final h(Landroid/content/Context;)Z
    .locals 3
    .param p1    # Landroid/content/Context;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "context"

    invoke-static {p1, v0}, Lbk/m;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    const-string v0, "combine_permission"

    const-string v1, "defaultDeny"

    const/4 v2, 0x0

    invoke-static {p1, v0, v1, v2}, Lcom/miui/support/provider/MiuiSettingsCompat$SettingsCloudData;->a(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result p1

    return p1
.end method

.method public final i(Landroid/content/Context;Landroid/content/pm/PackageInfo;Ljava/lang/String;)Z
    .locals 4
    .param p1    # Landroid/content/Context;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Landroid/content/pm/PackageInfo;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p3    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "context"

    invoke-static {p1, v0}, Lbk/m;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "packageInfo"

    invoke-static {p2, v0}, Lbk/m;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "permissionName"

    invoke-static {p3, v0}, Lbk/m;->e(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v0, Lcom/miui/permission/RequiredPermissionsUtil;->RUNTIME_PERMISSIONS:Ljava/util/Map;

    invoke-interface {v0, p3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ljava/lang/Long;

    if-eqz p3, :cond_0

    invoke-virtual {p3}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    goto :goto_0

    :cond_0
    const-wide/16 v0, -0x1

    :goto_0
    const-wide v2, 0x4000000000L

    cmp-long p3, v0, v2

    if-nez p3, :cond_1

    const/4 p1, 0x0

    goto :goto_1

    :cond_1
    invoke-static {p1}, Lcom/miui/permission/PermissionManager;->getInstance(Landroid/content/Context;)Lcom/miui/permission/PermissionManager;

    move-result-object p1

    iget-object p2, p2, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-virtual {p1, v0, v1, p2}, Lcom/miui/permission/PermissionManager;->supportAlwaysAllow(JLjava/lang/String;)Z

    move-result p1

    :goto_1
    return p1
.end method

.method public final j(Landroid/content/Context;Landroid/content/pm/PackageInfo;Ljava/lang/String;)Z
    .locals 6
    .param p1    # Landroid/content/Context;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Landroid/content/pm/PackageInfo;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p3    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "context"

    invoke-static {p1, v0}, Lbk/m;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "packageInfo"

    invoke-static {p2, v0}, Lbk/m;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "permissionName"

    invoke-static {p3, v0}, Lbk/m;->e(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v0, Lg4/b;->c:Ljava/lang/String;

    invoke-virtual {v0, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_c

    sget-object v0, Lg4/b;->d:Ljava/lang/String;

    invoke-virtual {v0, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_c

    sget-object v0, Lg4/b;->e:Ljava/lang/String;

    invoke-virtual {v0, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_c

    sget-object v0, Lg4/b;->f:Ljava/lang/String;

    invoke-virtual {v0, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto/16 :goto_7

    :cond_0
    sget-object v0, Lcom/miui/permission/RequiredPermissionsUtil;->RUNTIME_PERMISSIONS:Ljava/util/Map;

    invoke-interface {v0, p3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ljava/lang/Long;

    if-eqz p3, :cond_1

    invoke-virtual {p3}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    goto :goto_0

    :cond_1
    const-wide/16 v2, -0x1

    :goto_0
    const-wide/32 v4, 0x20000000

    cmp-long p3, v2, v4

    if-nez p3, :cond_2

    return v1

    :cond_2
    invoke-static {v2, v3}, Lxc/m;->d(J)Z

    move-result p3

    const/4 v0, 0x1

    if-eqz p3, :cond_a

    iget-object p1, p2, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget p1, p1, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    const/16 p3, 0x21

    if-ge p1, p3, :cond_9

    iget-object p1, p2, Landroid/content/pm/PackageInfo;->requestedPermissions:[Ljava/lang/String;

    if-eqz p1, :cond_5

    array-length p2, p1

    if-nez p2, :cond_3

    move p2, v0

    goto :goto_1

    :cond_3
    move p2, v1

    :goto_1
    if-eqz p2, :cond_4

    goto :goto_2

    :cond_4
    move p2, v1

    goto :goto_3

    :cond_5
    :goto_2
    move p2, v0

    :goto_3
    if-eqz p2, :cond_6

    goto :goto_6

    :cond_6
    const-string p2, "packageInfo!!.requestedPermissions"

    invoke-static {p1, p2}, Lbk/m;->d(Ljava/lang/Object;Ljava/lang/String;)V

    array-length p2, p1

    move p3, v1

    :goto_4
    if-ge p3, p2, :cond_9

    aget-object v2, p1, p3

    const-string v3, "android.permission.READ_EXTERNAL_STORAGE"

    invoke-static {v3, v2}, Lbk/m;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_8

    const-string v3, "android.permission.WRITE_EXTERNAL_STORAGE"

    invoke-static {v3, v2}, Lbk/m;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_7

    goto :goto_5

    :cond_7
    add-int/lit8 p3, p3, 0x1

    goto :goto_4

    :cond_8
    :goto_5
    return v0

    :cond_9
    :goto_6
    return v1

    :cond_a
    :try_start_0
    invoke-static {p1}, Lcom/miui/permission/PermissionManager;->getInstance(Landroid/content/Context;)Lcom/miui/permission/PermissionManager;

    move-result-object p1

    invoke-virtual {p1, v2, v3}, Lcom/miui/permission/PermissionManager;->getPermissionForId(J)Lcom/miui/permission/PermissionInfo;

    move-result-object p1

    invoke-virtual {p1}, Lcom/miui/permission/PermissionInfo;->getFlags()I

    move-result p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    and-int/lit8 p1, p1, 0x40

    if-eqz p1, :cond_b

    move v1, v0

    :cond_b
    return v1

    :catch_0
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_c
    :goto_7
    return v1
.end method

.method public final k(Landroid/content/Context;Landroid/content/pm/PackageInfo;Ljava/lang/String;)Z
    .locals 6
    .param p1    # Landroid/content/Context;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Landroid/content/pm/PackageInfo;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p3    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "context"

    invoke-static {p1, v0}, Lbk/m;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "packageInfo"

    invoke-static {p2, p1}, Lbk/m;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "permissionName"

    invoke-static {p3, p1}, Lbk/m;->e(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object p1, Lg4/b;->c:Ljava/lang/String;

    invoke-virtual {p1, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    const/4 v0, 0x0

    if-nez p1, :cond_a

    sget-object p1, Lg4/b;->d:Ljava/lang/String;

    invoke-virtual {p1, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_a

    sget-object p1, Lg4/b;->e:Ljava/lang/String;

    invoke-virtual {p1, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_a

    sget-object p1, Lg4/b;->f:Ljava/lang/String;

    invoke-virtual {p1, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    goto/16 :goto_4

    :cond_0
    sget-object p1, Lcom/miui/permission/RequiredPermissionsUtil;->RUNTIME_PERMISSIONS:Ljava/util/Map;

    invoke-interface {p1, p3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ljava/lang/Long;

    if-eqz p3, :cond_1

    invoke-virtual {p3}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    goto :goto_0

    :cond_1
    const-wide/16 v1, -0x1

    :goto_0
    const-wide/32 v3, 0x20000000

    cmp-long p3, v1, v3

    if-nez p3, :cond_2

    return v0

    :cond_2
    iget-object p2, p2, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget p2, p2, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    const/16 p3, 0x17

    if-ge p2, p3, :cond_3

    return v0

    :cond_3
    const-wide/16 v3, -0x3

    cmp-long p3, v1, v3

    const/4 v3, 0x1

    if-nez p3, :cond_4

    const/16 p3, 0x21

    if-lt p2, p3, :cond_4

    invoke-static {}, Lcom/miui/permission/support/util/SdkLevel;->isAtLeastU()Z

    move-result p2

    if-eqz p2, :cond_4

    return v3

    :cond_4
    invoke-static {v1, v2}, Lxc/m;->d(J)Z

    move-result p2

    if-eqz p2, :cond_5

    const-wide v1, 0x200000000000L

    :cond_5
    const-string p2, "RUNTIME_PERMISSIONS"

    invoke-static {p1, p2}, Lbk/m;->d(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance p2, Ljava/util/LinkedHashMap;

    invoke-direct {p2}, Ljava/util/LinkedHashMap;-><init>()V

    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_6
    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p3

    if-eqz p3, :cond_9

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ljava/util/Map$Entry;

    invoke-interface {p3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Long;

    if-nez v4, :cond_7

    goto :goto_2

    :cond_7
    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    cmp-long v4, v4, v1

    if-nez v4, :cond_8

    move v4, v3

    goto :goto_3

    :cond_8
    :goto_2
    move v4, v0

    :goto_3
    if-eqz v4, :cond_6

    invoke-interface {p3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    invoke-interface {p3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p3

    invoke-virtual {p2, v4, p3}, Ljava/util/AbstractMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    :cond_9
    sget-object p1, Lxc/u;->a:Lxc/u;

    invoke-virtual {p1}, Lxc/u;->i()Ljava/util/List;

    move-result-object p1

    invoke-interface {p2}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object p2

    invoke-static {p2}, Lqj/l;->y(Ljava/lang/Iterable;)Ljava/lang/Object;

    move-result-object p2

    invoke-static {p1, p2}, Lqj/l;->w(Ljava/lang/Iterable;Ljava/lang/Object;)Z

    move-result p1

    return p1

    :cond_a
    :goto_4
    return v0
.end method

.method public final l(Landroid/content/Context;Landroid/content/pm/PackageInfo;JIIZ)V
    .locals 17
    .param p1    # Landroid/content/Context;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Landroid/content/pm/PackageInfo;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    move-object/from16 v6, p1

    move-object/from16 v7, p2

    const-string v0, "context"

    invoke-static {v6, v0}, Lbk/m;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "packageInfo"

    invoke-static {v7, v0}, Lbk/m;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-wide v0, 0x200000000000L

    cmp-long v0, p3, v0

    const/4 v1, 0x0

    const/4 v8, 0x1

    if-nez v0, :cond_0

    move v0, v8

    goto :goto_0

    :cond_0
    move v0, v1

    :goto_0
    iget-object v2, v7, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v9, v2, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    iget v2, v2, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    const/16 v3, 0x21

    if-ge v2, v3, :cond_2

    if-eqz v0, :cond_1

    invoke-static/range {p1 .. p1}, Lcom/miui/permission/PermissionManager;->getInstance(Landroid/content/Context;)Lcom/miui/permission/PermissionManager;

    move-result-object v10

    const/4 v11, 0x0

    const-wide v12, 0x200000000000L

    const/4 v15, 0x2

    new-array v0, v8, [Ljava/lang/String;

    aput-object v9, v0, v1

    move/from16 v14, p6

    move-object/from16 v16, v0

    invoke-static/range {v10 .. v16}, Lcom/miui/permcenter/compact/PermissionManagerCompat;->setApplicationPermissionWithVirtual(Lcom/miui/permission/PermissionManager;IJII[Ljava/lang/String;)V

    goto/16 :goto_4

    :cond_1
    const-string v3, "android.permission-group.READ_MEDIA_VISUAL"

    move-object/from16 v0, p1

    move/from16 v1, p5

    move-object v2, v9

    move/from16 v4, p6

    move/from16 v5, p7

    invoke-static/range {v0 .. v5}, Lxc/m;->g(Landroid/content/Context;ILjava/lang/String;Ljava/lang/String;IZ)V

    const-string v3, "android.permission-group.READ_MEDIA_AURAL"

    goto/16 :goto_3

    :cond_2
    invoke-static {}, Lcom/miui/permission/support/util/SdkLevel;->isAtLeastU()Z

    move-result v0

    if-eqz v0, :cond_4

    const-wide/16 v2, -0x3

    cmp-long v0, p3, v2

    if-nez v0, :cond_4

    sget-object v0, Lxc/m$b;->b:Landroid/util/ArrayMap;

    const-string v2, "android.permission-group.READ_MEDIA_VISUAL"

    invoke-virtual {v0, v2}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lbk/m;->b(Ljava/lang/Object;)V

    check-cast v0, Ljava/util/List;

    const-string v2, "appops"

    invoke-virtual {v6, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    const-string v3, "null cannot be cast to non-null type android.app.AppOpsManager"

    invoke-static {v2, v3}, Lbk/m;->c(Ljava/lang/Object;Ljava/lang/String;)V

    move-object v10, v2

    check-cast v10, Landroid/app/AppOpsManager;

    const/4 v2, 0x3

    move/from16 v11, p6

    if-ne v11, v2, :cond_3

    move v12, v8

    goto :goto_1

    :cond_3
    move v12, v1

    :goto_1
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v13

    :goto_2
    invoke-interface {v13}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-interface {v13}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    move-object v14, v0

    check-cast v14, Ljava/lang/String;

    move-object/from16 v0, p1

    move/from16 v1, p5

    move-object v2, v9

    move-object v3, v14

    move/from16 v4, p6

    move/from16 v5, p7

    invoke-static/range {v0 .. v5}, Lxc/m;->i(Landroid/content/Context;ILjava/lang/String;Ljava/lang/String;IZ)V

    invoke-static {v14}, Landroid/app/AppOpsManagerCompat;->permissionToOpCode(Ljava/lang/String;)I

    move-result v0

    iget-object v1, v7, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v1, v1, Landroid/content/pm/ApplicationInfo;->uid:I

    xor-int/lit8 v2, v12, 0x1

    invoke-static {v10, v0, v1, v2}, Landroid/app/AppOpsManagerCompat;->setUidMode(Landroid/app/AppOpsManager;III)V

    goto :goto_2

    :cond_4
    move/from16 v11, p6

    sget-object v0, Lxc/m;->a:Ljava/util/Map;

    invoke-static/range {p3 .. p4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    move-object v3, v0

    check-cast v3, Ljava/lang/String;

    move-object/from16 v0, p1

    move/from16 v1, p5

    move-object v2, v9

    move/from16 v4, p6

    move/from16 v5, p7

    :goto_3
    invoke-static/range {v0 .. v5}, Lxc/m;->g(Landroid/content/Context;ILjava/lang/String;Ljava/lang/String;IZ)V

    :cond_5
    :goto_4
    return-void
.end method

.method public final m(Landroid/content/Context;Landroid/content/pm/PackageInfo;Ljava/lang/String;JIIZ)V
    .locals 19
    .param p1    # Landroid/content/Context;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Landroid/content/pm/PackageInfo;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p3    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    move-object/from16 v7, p0

    move-object/from16 v8, p1

    move-object/from16 v9, p2

    move-object/from16 v10, p3

    move/from16 v11, p7

    const-string v0, "context"

    invoke-static {v8, v0}, Lbk/m;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "packageInfo"

    invoke-static {v9, v0}, Lbk/m;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "permissionName"

    invoke-static {v10, v0}, Lbk/m;->e(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v2, v9, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    const-string v12, "packageInfo.packageName"

    invoke-static {v2, v12}, Lbk/m;->d(Ljava/lang/Object;Ljava/lang/String;)V

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v3, p6

    move-wide/from16 v4, p4

    move/from16 v6, p7

    invoke-virtual/range {v0 .. v6}, Lg4/b;->q(Landroid/content/Context;Ljava/lang/String;IJI)V

    invoke-direct {v7, v10}, Lg4/b;->d(Ljava/lang/String;)I

    move-result v14

    invoke-static/range {p6 .. p6}, Lx4/z1;->z(I)Landroid/os/UserHandle;

    move-result-object v5

    const/4 v0, 0x1

    if-eq v11, v0, :cond_3

    const/4 v1, 0x4

    const/4 v2, 0x3

    const/4 v3, 0x0

    if-ne v11, v2, :cond_0

    move/from16 v17, v3

    goto :goto_0

    :cond_0
    move/from16 v17, v1

    :goto_0
    invoke-static/range {p1 .. p1}, Lcom/miui/permission/PermissionManager;->getInstance(Landroid/content/Context;)Lcom/miui/permission/PermissionManager;

    move-result-object v13

    iget-object v1, v9, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v15, v1, Landroid/content/pm/ApplicationInfo;->uid:I

    iget-object v1, v9, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    const/16 v18, 0x1

    move-object/from16 v16, v1

    invoke-virtual/range {v13 .. v18}, Lcom/miui/permission/PermissionManager;->setModeNow(IILjava/lang/String;IZ)V

    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    iget-object v2, v9, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-static/range {p6 .. p6}, Lx4/z1;->z(I)Landroid/os/UserHandle;

    move-result-object v4

    invoke-static {v1, v2, v10, v4}, Ltg/a;->f(Landroid/content/pm/PackageManager;Ljava/lang/String;Ljava/lang/String;Landroid/os/UserHandle;)V

    const-string v1, "android.permission.ACCESS_FINE_LOCATION"

    invoke-virtual {v1, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {v7, v8, v9, v0}, Lg4/b;->r(Landroid/content/Context;Landroid/content/pm/PackageInfo;Z)V

    goto :goto_1

    :cond_1
    const-string v0, "android.permission.ACCESS_COARSE_LOCATION"

    invoke-virtual {v0, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {v7, v8, v9, v3}, Lg4/b;->r(Landroid/content/Context;Landroid/content/pm/PackageInfo;Z)V

    :cond_2
    :goto_1
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    iget-object v2, v9, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    const/4 v3, 0x1

    goto :goto_3

    :cond_3
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    iget-object v2, v9, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-static {v1, v10, v2, v5}, Ltg/a;->e(Landroid/content/pm/PackageManager;Ljava/lang/String;Ljava/lang/String;Landroid/os/UserHandle;)I

    move-result v1

    invoke-static/range {p1 .. p1}, Lcom/miui/permission/PermissionManager;->getInstance(Landroid/content/Context;)Lcom/miui/permission/PermissionManager;

    move-result-object v13

    iget-object v2, v9, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v15, v2, Landroid/content/pm/ApplicationInfo;->uid:I

    iget-object v2, v9, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    const/16 v17, 0x1

    const/16 v18, 0x1

    move-object/from16 v16, v2

    invoke-virtual/range {v13 .. v18}, Lcom/miui/permission/PermissionManager;->setModeNow(IILjava/lang/String;IZ)V

    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    iget-object v3, v9, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-static/range {p6 .. p6}, Lx4/z1;->z(I)Landroid/os/UserHandle;

    move-result-object v4

    invoke-static {v2, v3, v10, v4}, Ltg/a;->i(Landroid/content/pm/PackageManager;Ljava/lang/String;Ljava/lang/String;Landroid/os/UserHandle;)V

    if-eqz p8, :cond_4

    :goto_2
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    iget-object v2, v9, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    const/4 v3, 0x3

    :goto_3
    const/4 v4, 0x1

    :goto_4
    move-object/from16 v1, p3

    invoke-static/range {v0 .. v5}, Ltg/a;->j(Landroid/content/pm/PackageManager;Ljava/lang/String;Ljava/lang/String;IILandroid/os/UserHandle;)V

    goto :goto_5

    :cond_4
    and-int/2addr v0, v1

    if-nez v0, :cond_5

    goto :goto_2

    :cond_5
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    iget-object v2, v9, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    const/4 v3, 0x3

    const/4 v4, 0x2

    goto :goto_4

    :goto_5
    const/4 v0, 0x2

    if-ne v11, v0, :cond_6

    sget-object v0, Lxc/u;->a:Lxc/u;

    invoke-virtual {v0}, Lxc/u;->i()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v10}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-static/range {p6 .. p6}, Lx4/z1;->z(I)Landroid/os/UserHandle;

    move-result-object v0

    const-string v1, "userHandle"

    invoke-static {v0, v1}, Lbk/m;->d(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v1, v9, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-static {v1, v12}, Lbk/m;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {v7, v8, v0, v1}, Lg4/b;->o(Landroid/content/Context;Landroid/os/UserHandle;Ljava/lang/String;)V

    :cond_6
    return-void
.end method

.method public final n(Landroid/content/Context;Landroid/content/pm/PackageInfo;Ljava/lang/String;Z)Z
    .locals 5
    .param p1    # Landroid/content/Context;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Landroid/content/pm/PackageInfo;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p3    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "context"

    invoke-static {p1, v0}, Lbk/m;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "packageInfo"

    invoke-static {p2, v0}, Lbk/m;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "permissionName"

    invoke-static {p3, v0}, Lbk/m;->e(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p2, Landroid/content/pm/PackageInfo;->requestedPermissions:[Ljava/lang/String;

    const/4 v1, 0x0

    if-eqz v0, :cond_9

    invoke-static {v0, p3}, Lqj/f;->l([Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    goto/16 :goto_2

    :cond_0
    const/4 v0, 0x0

    :try_start_0
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    invoke-virtual {v2, p3, v1}, Landroid/content/pm/PackageManager;->getPermissionInfo(Ljava/lang/String;I)Landroid/content/pm/PermissionInfo;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v2

    invoke-virtual {v2}, Ljava/lang/Throwable;->printStackTrace()V

    :goto_0
    if-nez v0, :cond_1

    return v1

    :cond_1
    sget-object v2, Lg4/b;->g:Ljava/lang/String;

    invoke-virtual {v2, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-static {p2}, Lx4/f1;->I(Landroid/content/pm/PackageInfo;)Z

    move-result v2

    if-eqz v2, :cond_2

    const-string v2, "com.miui.notes"

    invoke-virtual {p0, p1, v2}, Lg4/b;->p(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_3

    :cond_2
    return v1

    :cond_3
    sget-object v2, Lg4/b;->h:Ljava/lang/String;

    invoke-virtual {v2, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    invoke-static {p2}, Lx4/f1;->I(Landroid/content/pm/PackageInfo;)Z

    move-result v2

    if-eqz v2, :cond_4

    const-string v2, "com.android.soundrecorder"

    invoke-virtual {p0, p1, v2}, Lg4/b;->p(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_5

    :cond_4
    return v1

    :cond_5
    const/4 v2, 0x1

    if-eqz p4, :cond_6

    return v2

    :cond_6
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p4

    iget-object v3, p2, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v3, v3, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-static {v3}, Lx4/z1;->l(I)Landroid/os/UserHandle;

    move-result-object v3

    iget-object v4, p2, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-static {p4, p3, v4, v3}, Ltg/a;->e(Landroid/content/pm/PackageManager;Ljava/lang/String;Ljava/lang/String;Landroid/os/UserHandle;)I

    move-result p4

    iget v0, v0, Landroid/content/pm/PermissionInfo;->protectionLevel:I

    and-int/lit8 v0, v0, 0xf

    if-eq v0, v2, :cond_7

    return v1

    :cond_7
    and-int/lit8 p4, p4, 0x2

    if-eqz p4, :cond_8

    move p4, v2

    goto :goto_1

    :cond_8
    move p4, v1

    :goto_1
    invoke-virtual {p0, p1, p2, p3}, Lg4/b;->b(Landroid/content/Context;Landroid/content/pm/PackageInfo;Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_9

    if-nez p4, :cond_9

    move v1, v2

    :cond_9
    :goto_2
    return v1
.end method

.method public final p(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 2
    .param p1    # Landroid/content/Context;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    const-string v0, "context"

    invoke-static {p1, v0}, Lbk/m;->e(Ljava/lang/Object;Ljava/lang/String;)V

    :try_start_0
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p1

    invoke-static {p2}, Lbk/m;->b(Ljava/lang/Object;)V

    const/16 v0, 0x80

    invoke-virtual {p1, p2, v0}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object p1
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    const/4 p1, 0x0

    :goto_0
    const/4 p2, 0x0

    if-nez p1, :cond_0

    return p2

    :cond_0
    iget-object v0, p1, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v0, v0, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    const-string v1, "supportRuntimePermission"

    invoke-virtual {v0, v1, p2}, Landroid/os/BaseBundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    invoke-static {p1}, Lx4/f1;->I(Landroid/content/pm/PackageInfo;)Z

    move-result p1

    if-eqz p1, :cond_1

    if-eqz v0, :cond_1

    const/4 p2, 0x1

    :cond_1
    return p2
.end method

.method public final q(Landroid/content/Context;Ljava/lang/String;IJI)V
    .locals 11
    .param p1    # Landroid/content/Context;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "context"

    move-object v1, p1

    invoke-static {p1, v0}, Lbk/m;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "packageName"

    move-object v8, p2

    invoke-static {p2, v0}, Lbk/m;->e(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v0, Lcom/miui/permission/RequiredPermissionsUtil;->RUNTIME_PERMISSIONS:Ljava/util/Map;

    const-string v2, "RUNTIME_PERMISSIONS"

    invoke-static {v0, v2}, Lbk/m;->d(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v2, Ljava/util/LinkedHashMap;

    invoke-direct {v2}, Ljava/util/LinkedHashMap;-><init>()V

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    const/4 v9, 0x0

    if-eqz v3, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map$Entry;

    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Long;

    if-nez v4, :cond_1

    goto :goto_1

    :cond_1
    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    cmp-long v4, v4, p4

    if-nez v4, :cond_2

    const/4 v9, 0x1

    :cond_2
    :goto_1
    if-eqz v9, :cond_0

    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v2, v4, v3}, Ljava/util/AbstractMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_3
    invoke-interface {v2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_6

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    sget-object v3, Lxc/u;->a:Lxc/u;

    invoke-virtual {v3}, Lxc/u;->i()Ljava/util/List;

    move-result-object v3

    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5

    const/4 v3, 0x2

    move/from16 v10, p6

    if-ne v10, v3, :cond_4

    const/high16 v3, 0x10000

    move v6, v3

    goto :goto_3

    :cond_4
    move v6, v9

    :goto_3
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    move-object v4, v2

    check-cast v4, Ljava/lang/String;

    const/high16 v5, 0x10000

    invoke-static {p3}, Lx4/z1;->z(I)Landroid/os/UserHandle;

    move-result-object v7

    move-object v2, v3

    move-object v3, v4

    move-object v4, p2

    invoke-static/range {v2 .. v7}, Ltg/a;->j(Landroid/content/pm/PackageManager;Ljava/lang/String;Ljava/lang/String;IILandroid/os/UserHandle;)V

    goto :goto_2

    :cond_5
    move/from16 v10, p6

    goto :goto_2

    :cond_6
    return-void
.end method

.method public final r(Landroid/content/Context;Landroid/content/pm/PackageInfo;Z)V
    .locals 7
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

    sget-object v1, Lxc/u;->a:Lxc/u;

    invoke-virtual {v1, v0, p2}, Lxc/u;->t(Landroid/app/AppOpsManager;Landroid/content/pm/PackageInfo;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x273b

    goto :goto_0

    :cond_0
    const/16 v0, 0x2734

    :goto_0
    move v2, v0

    invoke-static {p1}, Lcom/miui/permission/PermissionManager;->getInstance(Landroid/content/Context;)Lcom/miui/permission/PermissionManager;

    move-result-object v1

    iget-object p1, p2, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v3, p1, Landroid/content/pm/ApplicationInfo;->uid:I

    iget-object v4, p1, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    xor-int/lit8 v5, p3, 0x1

    const/4 v6, 0x0

    invoke-virtual/range {v1 .. v6}, Lcom/miui/permission/PermissionManager;->setMode(IILjava/lang/String;IZ)V

    return-void
.end method
