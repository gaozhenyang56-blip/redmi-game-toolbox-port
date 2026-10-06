.class public Lx4/k1;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final a:Ljava/lang/String; = "k1"

.field private static b:Ljava/lang/String; = ";"

.field private static c:Ljava/lang/String; = "privacy_input_"

.field private static d:[J

.field private static e:Lmiui/security/SecurityManager;

.field private static final f:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    const/4 v0, 0x5

    new-array v0, v0, [J

    fill-array-data v0, :array_0

    sput-object v0, Lx4/k1;->d:[J

    const-string v0, "com.miui.notes"

    const-string v1, "com.xiaomi.aiasst.service"

    const-string v2, "com.miui.handwriting"

    const-string v3, "com.xiaomi.aiasst.vision"

    const-string v4, "com.miui.phrase"

    filled-new-array {v0, v1, v2, v3, v4}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lx4/k1;->f:[Ljava/lang/String;

    return-void

    nop

    :array_0
    .array-data 8
        0x20
        0x80000000L
        0x2000000
        0x40000000
        0x10
    .end array-data
.end method

.method static synthetic a()Ljava/lang/String;
    .locals 1

    sget-object v0, Lx4/k1;->a:Ljava/lang/String;

    return-object v0
.end method

.method private static b(Landroid/content/Context;Z)V
    .locals 1

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string v0, "miui_privacy_input_enabled"

    invoke-static {p0, v0, p1}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    return-void
.end method

.method public static c(Landroid/content/Context;)Ljava/lang/String;
    .locals 2

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string v0, "default_input_method"

    invoke-static {p0, v0}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    const/16 v1, 0x2f

    invoke-virtual {p0, v1}, Ljava/lang/String;->indexOf(I)I

    move-result v1

    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    :cond_0
    const-string p0, ""

    :goto_0
    return-object p0
.end method

.method public static d(Landroid/content/Context;IIIII)I
    .locals 0

    invoke-static {p0}, Lx4/t;->s(Landroid/content/Context;)Z

    move-result p1

    if-eqz p1, :cond_0

    return p3

    :cond_0
    invoke-static {p0}, Lx4/t;->t(Landroid/content/Context;)Z

    move-result p1

    if-eqz p1, :cond_2

    check-cast p0, Lcom/miui/common/base/BaseActivity;

    invoke-static {p0}, Lx4/t;->F(Landroid/app/Activity;)Z

    move-result p0

    if-eqz p0, :cond_1

    return p3

    :cond_1
    return p2

    :cond_2
    invoke-static {}, Lx4/t;->E()Z

    move-result p1

    if-eqz p1, :cond_5

    move-object p1, p0

    check-cast p1, Lcom/miui/common/base/BaseActivity;

    invoke-static {p1}, Lx4/t;->F(Landroid/app/Activity;)Z

    move-result p1

    if-eqz p1, :cond_4

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object p0

    iget p0, p0, Landroid/content/res/Configuration;->orientation:I

    const/4 p1, 0x2

    if-ne p0, p1, :cond_3

    return p5

    :cond_3
    return p3

    :cond_4
    return p4

    :cond_5
    return p3
.end method

.method public static e(Landroid/content/Context;)Ljava/lang/String;
    .locals 2

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string v0, "miui_privacy_input_pkg_name"

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Lx4/z1;->h(Landroid/content/ContentResolver;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static f(Landroid/content/Context;I)V
    .locals 1

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string v0, "miui_privacy_input_supported"

    invoke-static {p0, v0, p1}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    return-void
.end method

.method public static g(Landroid/content/Context;)Z
    .locals 2

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string v0, "miui_privacy_input_enabled"

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p0

    const/4 v0, 0x1

    if-ne p0, v0, :cond_0

    move v1, v0

    :cond_0
    return v1
.end method

.method public static h(Landroid/content/Context;I)Z
    .locals 2

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string v0, "miui_privacy_input_enabled"

    const/4 v1, 0x0

    invoke-static {p0, v0, v1, p1}, Lx4/z1;->f(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result p0

    const/4 p1, 0x1

    if-ne p0, p1, :cond_0

    move v1, p1

    :cond_0
    return v1
.end method

.method public static i(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 1

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    const v0, 0x7f030031

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p0

    invoke-interface {p0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public static j(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 1

    sget-boolean v0, Lmiui/os/Build;->IS_INTERNATIONAL_BUILD:Z

    if-nez v0, :cond_0

    invoke-static {p0}, Lx4/k1;->e(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static k(J)Z
    .locals 2

    const-wide/16 v0, 0x20

    cmp-long v0, p0, v0

    if-eqz v0, :cond_1

    const-wide v0, 0x80000000L

    cmp-long v0, p0, v0

    if-eqz v0, :cond_1

    const-wide/32 v0, 0x2000000

    cmp-long v0, p0, v0

    if-eqz v0, :cond_1

    const-wide/32 v0, 0x40000000

    cmp-long v0, p0, v0

    if-eqz v0, :cond_1

    const-wide/16 v0, 0x10

    cmp-long p0, p0, v0

    if-nez p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method

.method public static l(Landroid/content/Context;)Z
    .locals 4

    const/4 v0, 0x0

    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    invoke-static {p0}, Lx4/k1;->c(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    const/16 v3, 0x80

    invoke-virtual {v1, v2, v3}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v1

    iget-object v1, v1, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    const-string v2, "miui_privacy_input_supported"

    invoke-virtual {v1, v2}, Landroid/os/BaseBundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    const-string v1, "privacy input"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {p0}, Lx4/k1;->c(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "supported"

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    :goto_0
    return v0
.end method

.method public static m(Landroid/content/Context;Landroid/os/Handler;)V
    .locals 3

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "miui_privacy_input_enabled"

    invoke-static {v1}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    new-instance v2, Lx4/k1$b;

    invoke-direct {v2, p1, p0}, Lx4/k1$b;-><init>(Landroid/os/Handler;Landroid/content/Context;)V

    const/4 p0, 0x0

    invoke-virtual {v0, v1, p0, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    return-void
.end method

.method public static n(Landroid/content/Context;Landroid/os/Handler;)V
    .locals 3

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "default_input_method"

    invoke-static {v1}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    new-instance v2, Lx4/k1$a;

    invoke-direct {v2, p1, p0}, Lx4/k1$a;-><init>(Landroid/os/Handler;Landroid/content/Context;)V

    const/4 p0, 0x0

    invoke-virtual {v0, v1, p0, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    return-void
.end method

.method private static o(Landroid/content/Context;Ljava/lang/String;)V
    .locals 11

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Lx4/k1;->c:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    sget-object v1, Lx4/k1;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    sget-object v3, Lx4/k1;->d:[J

    array-length v3, v3

    if-ge v2, v3, :cond_0

    invoke-static {p0}, Lcom/miui/permission/PermissionManager;->getInstance(Landroid/content/Context;)Lcom/miui/permission/PermissionManager;

    move-result-object v4

    invoke-static {}, Lx4/z1;->y()I

    move-result v5

    sget-object v3, Lx4/k1;->d:[J

    aget-wide v6, v3, v2

    aget-object v3, v0, v2

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v8

    const/4 v9, 0x2

    const/4 v3, 0x1

    new-array v10, v3, [Ljava/lang/String;

    aput-object p1, v10, v1

    invoke-static/range {v4 .. v10}, Lcom/miui/permcenter/compact/PermissionManagerCompat;->setApplicationPermissionWithVirtual(Lcom/miui/permission/PermissionManager;IJII[Ljava/lang/String;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public static p(Landroid/content/Context;Z)V
    .locals 12

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x18

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    if-ge v0, v1, :cond_0

    return-void

    :cond_0
    const-class v1, Landroid/app/AppOpsManager;

    invoke-virtual {p0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/app/AppOpsManager;

    const/16 v1, 0x1f

    const-string v3, "setUserRestriction"

    const/4 v4, 0x3

    const/4 v5, 0x2

    const/4 v6, 0x4

    const/4 v7, 0x1

    const/4 v8, 0x0

    if-lt v0, v1, :cond_2

    :try_start_0
    new-instance v0, Landroid/os/PackageTagsList$Builder;

    invoke-direct {v0}, Landroid/os/PackageTagsList$Builder;-><init>()V

    sget-object v1, Lx4/k1;->f:[Ljava/lang/String;

    array-length v9, v1

    move v10, v8

    :goto_0
    if-ge v10, v9, :cond_1

    aget-object v11, v1, v10

    invoke-virtual {v0, v11}, Landroid/os/PackageTagsList$Builder;->add(Ljava/lang/String;)Landroid/os/PackageTagsList$Builder;

    add-int/lit8 v10, v10, 0x1

    goto :goto_0

    :cond_1
    invoke-virtual {v0}, Landroid/os/PackageTagsList$Builder;->build()Landroid/os/PackageTagsList;

    move-result-object v0

    sget-object v1, Lx4/k1;->a:Ljava/lang/String;

    new-array v9, v6, [Ljava/lang/Class;

    sget-object v10, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v10, v9, v8

    sget-object v10, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    aput-object v10, v9, v7

    const-class v10, Landroid/os/IBinder;

    aput-object v10, v9, v5

    const-class v10, Landroid/os/PackageTagsList;

    aput-object v10, v9, v4

    new-array v6, v6, [Ljava/lang/Object;

    aput-object v2, v6, v8

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    aput-object p1, v6, v7

    invoke-static {}, Lcom/miui/permcenter/i;->l()Landroid/os/Binder;

    move-result-object p1

    aput-object p1, v6, v5

    aput-object v0, v6, v4

    invoke-static {v1, p0, v3, v9, v6}, Lbh/e;->b(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    :cond_2
    sget-object v0, Lx4/k1;->a:Ljava/lang/String;

    new-array v1, v6, [Ljava/lang/Class;

    sget-object v9, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v9, v1, v8

    sget-object v9, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    aput-object v9, v1, v7

    const-class v9, Landroid/os/IBinder;

    aput-object v9, v1, v5

    const-class v9, [Ljava/lang/String;

    aput-object v9, v1, v4

    new-array v6, v6, [Ljava/lang/Object;

    aput-object v2, v6, v8

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    aput-object p1, v6, v7

    invoke-static {}, Lcom/miui/permcenter/i;->l()Landroid/os/Binder;

    move-result-object p1

    aput-object p1, v6, v5

    sget-object p1, Lx4/k1;->f:[Ljava/lang/String;

    aput-object p1, v6, v4

    invoke-static {v0, p0, v3, v1, v6}, Lbh/e;->b(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p0

    sget-object p1, Lx4/k1;->a:Ljava/lang/String;

    const-string v0, "restrictOpsWindow error"

    invoke-static {p1, v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_1
    return-void
.end method

.method public static q(Landroid/content/Context;ZLjava/lang/String;)V
    .locals 10

    if-eqz p1, :cond_0

    invoke-static {p0, p2}, Lx4/k1;->u(Landroid/content/Context;Ljava/lang/String;)V

    sget-object p1, Lx4/k1;->d:[J

    array-length v0, p1

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-ge v2, v0, :cond_1

    aget-wide v5, p1, v2

    invoke-static {p0}, Lcom/miui/permission/PermissionManager;->getInstance(Landroid/content/Context;)Lcom/miui/permission/PermissionManager;

    move-result-object v3

    invoke-static {}, Lx4/z1;->y()I

    move-result v4

    const/4 v7, 0x1

    const/4 v8, 0x2

    const/4 v9, 0x1

    new-array v9, v9, [Ljava/lang/String;

    aput-object p2, v9, v1

    invoke-static/range {v3 .. v9}, Lcom/miui/permcenter/compact/PermissionManagerCompat;->setApplicationPermissionWithVirtual(Lcom/miui/permission/PermissionManager;IJII[Ljava/lang/String;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    invoke-static {p0, p2}, Lx4/k1;->o(Landroid/content/Context;Ljava/lang/String;)V

    :cond_1
    return-void
.end method

.method public static r(Landroid/content/Context;ZLjava/lang/String;)V
    .locals 0
    return-void
.end method

.method private static s(Landroid/content/Context;Z)V
    .locals 1

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    if-eqz p1, :cond_0

    invoke-static {p0}, Lx4/k1;->c(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    const-string p1, "miui_privacy_input_pkg_name"

    invoke-static {v0, p1, p0}, Landroid/provider/Settings$Secure;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    return-void
.end method

.method public static t(ZLandroid/content/Context;Ljava/lang/String;)V
    .locals 1

    invoke-static {p1, p0}, Lx4/k1;->b(Landroid/content/Context;Z)V

    invoke-static {p1, p0}, Lx4/k1;->s(Landroid/content/Context;Z)V

    xor-int/lit8 v0, p0, 0x1

    invoke-static {p1, p2, v0}, Lrg/a;->a(Landroid/content/Context;Ljava/lang/String;Z)V

    invoke-static {p1, p0, p2}, Lx4/k1;->r(Landroid/content/Context;ZLjava/lang/String;)V

    invoke-static {p1, p0, p2}, Lx4/k1;->q(Landroid/content/Context;ZLjava/lang/String;)V

    return-void
.end method

.method private static u(Landroid/content/Context;Ljava/lang/String;)V
    .locals 6

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lx4/z1;->y()I

    move-result v1

    invoke-static {p0, v1, p1}, Lcom/miui/permcenter/n;->f(Landroid/content/Context;ILjava/lang/String;)Ljava/util/HashMap;

    move-result-object v1

    const-wide/16 v2, 0x20

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    const/4 v3, 0x0

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {v1, v2, v3}, Lx4/j1;->a(Ljava/util/HashMap;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    sget-object v2, Lx4/k1;->b:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-wide v4, 0x80000000L

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-static {v1, v2, v3}, Lx4/j1;->a(Ljava/util/HashMap;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    sget-object v2, Lx4/k1;->b:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-wide/32 v4, 0x2000000

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-static {v1, v2, v3}, Lx4/j1;->a(Ljava/util/HashMap;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    sget-object v2, Lx4/k1;->b:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-wide/32 v4, 0x40000000

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-static {v1, v2, v3}, Lx4/j1;->a(Ljava/util/HashMap;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    sget-object v2, Lx4/k1;->b:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-wide/16 v4, 0x10

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-static {v1, v2, v3}, Lx4/j1;->a(Ljava/util/HashMap;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Lx4/k1;->c:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, p1, v0}, Landroid/provider/Settings$Secure;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    return-void
.end method
