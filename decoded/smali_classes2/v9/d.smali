.class public final Lv9/d;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:Lv9/d;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private static b:Z

.field private static c:Z


# direct methods
.method static constructor <clinit>()V
    .locals 7

    new-instance v0, Lv9/d;

    invoke-direct {v0}, Lv9/d;-><init>()V

    sput-object v0, Lv9/d;->a:Lv9/d;

    invoke-static {}, Lcom/miui/securitycenter/Application;->A()Lcom/miui/securitycenter/Application;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "device_id_antitrack2_switch"

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    move v1, v2

    goto :goto_0

    :cond_0
    move v1, v3

    :goto_0
    sput-boolean v1, Lv9/d;->c:Z

    sget-object v1, Lmiui/os/Build;->DEVICE:Ljava/lang/String;

    const-string v4, "malachite"

    invoke-static {v4, v1}, Lbk/m;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    sget-boolean v1, Lmiui/os/Build;->IS_DEBUGGABLE:Z

    if-eqz v1, :cond_2

    sget-boolean v1, Lv9/d;->c:Z

    if-eqz v1, :cond_2

    :try_start_0
    sget-object v1, Loj/m;->b:Loj/m$a;

    const-string v1, "com.android.id.IdentifierManager"

    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    const-string v4, "checkOAIDPermission"

    new-array v5, v2, [Ljava/lang/Class;

    const-class v6, Landroid/content/Context;

    aput-object v6, v5, v3

    invoke-virtual {v1, v4, v5}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    sput-boolean v2, Lv9/d;->b:Z

    invoke-static {}, Lcom/miui/common/e;->e()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-direct {v0}, Lv9/d;->c()V

    :cond_1
    sget-object v0, Loj/t;->a:Loj/t;

    invoke-static {v0}, Loj/m;->b(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception v0

    sget-object v1, Loj/m;->b:Loj/m$a;

    invoke-static {v0}, Loj/n;->a(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Loj/m;->b(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    :goto_1
    invoke-static {v0}, Loj/m;->f(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    sput-boolean v3, Lv9/d;->b:Z

    invoke-static {v0}, Loj/m;->d(Ljava/lang/Object;)Ljava/lang/Throwable;

    move-result-object v0

    const-string v1, "OAIDPermissionUtils"

    const-string v2, "not support"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_2
    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static synthetic a()V
    .locals 0

    invoke-static {}, Lv9/d;->d()V

    return-void
.end method

.method private final c()V
    .locals 1

    sget-boolean v0, Lv9/d;->b:Z

    if-nez v0, :cond_0

    return-void

    :cond_0
    new-instance v0, Lv9/c;

    invoke-direct {v0}, Lv9/c;-><init>()V

    invoke-static {v0}, Lcom/miui/common/base/asyn/a;->a(Ljava/lang/Runnable;)V

    return-void
.end method

.method private static final d()V
    .locals 8

    invoke-static {}, Lcom/miui/securitycenter/Application;->A()Lcom/miui/securitycenter/Application;

    move-result-object v0

    invoke-static {v0}, Landroidx/preference/f;->c(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "switch_oaid_op_mode"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const-string v0, "OAIDPermissionUtils"

    const-string v2, "changeOAIDAppOpsMode"

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lcom/miui/securitycenter/Application;->A()Lcom/miui/securitycenter/Application;

    move-result-object v0

    const-class v2, Landroid/app/AppOpsManager;

    invoke-virtual {v0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AppOpsManager;

    invoke-static {}, Lcom/miui/securitycenter/Application;->A()Lcom/miui/securitycenter/Application;

    move-result-object v2

    invoke-static {v2}, Li4/a;->k(Landroid/content/Context;)Li4/a;

    move-result-object v2

    invoke-virtual {v2}, Li4/a;->j()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_1
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    const/4 v4, 0x1

    if-eqz v3, :cond_5

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/pm/PackageInfo;

    iget-object v5, v3, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v6, v5, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/lit8 v7, v6, 0x4

    if-nez v7, :cond_2

    goto :goto_0

    :cond_2
    and-int/lit8 v6, v6, 0x1

    if-nez v6, :cond_1

    iget v5, v5, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-static {v5}, Lx4/z1;->b(I)I

    move-result v5

    const/16 v6, 0x2710

    if-ge v5, v6, :cond_3

    goto :goto_0

    :cond_3
    iget-object v5, v3, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    iget-object v6, v3, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v6, v6, Landroid/content/pm/ApplicationInfo;->uid:I

    const/16 v7, 0x2735

    invoke-static {v0, v5, v6, v7}, Lcom/miui/permcenter/compact/AppOpsUtilsCompat;->checkOpNoThrow(Landroid/app/AppOpsManager;Ljava/lang/String;II)I

    move-result v5

    if-ne v5, v4, :cond_4

    goto :goto_0

    :cond_4
    iget-object v5, v3, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    iget-object v6, v3, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v6, v6, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-static {v0, v5, v6, v7, v4}, Lcom/miui/permcenter/compact/AppOpsUtilsCompat;->setMode(Landroid/app/AppOpsManager;Ljava/lang/String;III)V

    iget-object v4, v3, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    iget-object v3, v3, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v3, v3, Landroid/content/pm/ApplicationInfo;->uid:I

    const/16 v5, 0x2736

    const/4 v6, 0x5

    invoke-static {v0, v4, v3, v5, v6}, Lcom/miui/permcenter/compact/AppOpsUtilsCompat;->setMode(Landroid/app/AppOpsManager;Ljava/lang/String;III)V

    goto :goto_0

    :cond_5
    invoke-static {}, Lcom/miui/securitycenter/Application;->A()Lcom/miui/securitycenter/Application;

    move-result-object v0

    invoke-static {v0}, Landroidx/preference/f;->c(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0, v1, v4}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method public static final e(Ljava/lang/String;I)V
    .locals 3
    .param p0    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    const-string v0, "packageName"

    invoke-static {p0, v0}, Lbk/m;->e(Ljava/lang/Object;Ljava/lang/String;)V

    sget-boolean v0, Lv9/d;->b:Z

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-static {}, Lcom/miui/securitycenter/Application;->A()Lcom/miui/securitycenter/Application;

    move-result-object v0

    invoke-static {v0, p0}, Lx4/f1;->K(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    return-void

    :cond_1
    invoke-static {}, Lcom/miui/securitycenter/Application;->A()Lcom/miui/securitycenter/Application;

    move-result-object v0

    const-class v1, Landroid/app/AppOpsManager;

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AppOpsManager;

    const/16 v1, 0x2735

    const/4 v2, 0x1

    invoke-static {v0, p0, p1, v1, v2}, Lcom/miui/permcenter/compact/AppOpsUtilsCompat;->setMode(Landroid/app/AppOpsManager;Ljava/lang/String;III)V

    const/16 v1, 0x2736

    const/4 v2, 0x5

    invoke-static {v0, p0, p1, v1, v2}, Lcom/miui/permcenter/compact/AppOpsUtilsCompat;->setMode(Landroid/app/AppOpsManager;Ljava/lang/String;III)V

    return-void
.end method

.method public static final g()Z
    .locals 1
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    sget-boolean v0, Lv9/d;->b:Z

    return v0
.end method


# virtual methods
.method public final b(Landroid/content/Context;)Z
    .locals 2
    .param p1    # Landroid/content/Context;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "context"

    invoke-static {p1, v0}, Lbk/m;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    const-string v0, "allow_app_track"

    const/4 v1, 0x1

    invoke-static {p1, v0, v1}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p1

    if-ne p1, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method public final f(Landroid/content/Context;Z)Z
    .locals 1
    .param p1    # Landroid/content/Context;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "context"

    invoke-static {p1, v0}, Lbk/m;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    const-string v0, "allow_app_track"

    invoke-static {p1, v0, p2}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    move-result p1

    return p1
.end method
