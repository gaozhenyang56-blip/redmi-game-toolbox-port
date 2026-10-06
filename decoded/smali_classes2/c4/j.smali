.class public Lc4/j;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lc4/j$b;
    }
.end annotation


# static fields
.field public static final a:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public static final b:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 5

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lc4/j;->a:Ljava/util/HashMap;

    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    sput-object v1, Lc4/j;->b:Ljava/util/HashMap;

    const-string v2, "com.miui.cleanmaster"

    const-string v3, "com.miui.cleanmaster.action.START_LOW_MEMORY_CLEAN"

    invoke-virtual {v0, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v3, "com.miui.cleaner"

    const-string v4, "com.miui.cleaner.action.START_LOW_MEMORY_CLEAN"

    invoke-virtual {v0, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "com.miui.cleanmaster.action.CHECK_GARBAGE_CHECK"

    invoke-virtual {v1, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "com.miui.cleaner.action.CHECK_GARBAGE_CHECK"

    invoke-virtual {v1, v3, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public static a()I
    .locals 1

    sget-boolean v0, Lsl/a;->a:Z

    if-eqz v0, :cond_0

    const v0, 0x7f08098d

    goto :goto_0

    :cond_0
    const v0, 0x7f080876

    :goto_0
    return v0
.end method

.method public static b()I
    .locals 1

    const v0, 0x7f080876

    return v0
.end method

.method public static c(Landroid/content/Context;)Ljava/lang/String;
    .locals 2

    sget-boolean v0, Lmiui/os/Build;->IS_INTERNATIONAL_BUILD:Z

    const-string v1, "com.miui.cleanmaster"

    if-eqz v0, :cond_0

    const-string v0, "com.miui.cleaner"

    invoke-static {p0, v0}, Lx4/g1;->a(Landroid/content/Context;Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_0

    return-object v0

    :cond_0
    return-object v1
.end method

.method public static d(Landroid/content/Context;Ljava/lang/String;)V
    .locals 2

    sget-boolean v0, Lmiui/os/Build;->IS_INTERNATIONAL_BUILD:Z

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    const-string v0, "com.miui.cleaner"

    invoke-static {p0, v0}, Lx4/f1;->K(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    return-void

    :cond_1
    invoke-static {}, Lef/z;->d()Lef/z;

    move-result-object v0

    new-instance v1, Lc4/j$b;

    invoke-direct {v1, p0, p1}, Lc4/j$b;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lef/z;->b(Ljava/lang/Runnable;)V

    return-void
.end method

.method public static e(Landroid/content/Context;)Z
    .locals 5

    sget-boolean v0, Lmiui/os/Build;->IS_INTERNATIONAL_BUILD:Z

    const/4 v1, 0x0

    const-string v2, "com.miui.cleanmaster"

    const/4 v3, 0x1

    if-eqz v0, :cond_2

    invoke-static {p0}, Lc4/j;->c(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    const-string v4, "com.miui.cleaner"

    invoke-static {v0, v4}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    return v3

    :cond_0
    invoke-static {p0, v2}, Lx4/f1;->r(Landroid/content/Context;Ljava/lang/String;)I

    move-result p0

    const/16 v0, 0x155

    if-lt p0, v0, :cond_1

    move v1, v3

    :cond_1
    return v1

    :cond_2
    invoke-static {p0, v2}, Lx4/f1;->r(Landroid/content/Context;Ljava/lang/String;)I

    move-result p0

    const v0, 0x187f5

    if-lt p0, v0, :cond_3

    move v1, v3

    :cond_3
    return v1
.end method

.method public static f(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;ZZ)V
    .locals 1

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0, p1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    if-eqz p3, :cond_0

    const/high16 p1, 0x10000000

    invoke-virtual {v0, p1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    :cond_0
    const-string p1, "enter_homepage_way"

    invoke-virtual {v0, p1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    sget-boolean p1, Lmiui/os/Build;->IS_INTERNATIONAL_BUILD:Z

    if-eqz p1, :cond_1

    invoke-static {p0}, Lc4/j;->c(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_1
    const-string p1, "com.miui.cleanmaster"

    :goto_0
    invoke-virtual {v0, p1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    invoke-static {p0, v0, p4}, Lc4/f;->h(Landroid/content/Context;Landroid/content/Intent;Z)V

    return-void
.end method

.method public static g(Landroid/content/Context;)V
    .locals 13

    const-string v0, "CleanerUtils"

    const-string v1, "com.miui.cleanmaster"

    const-string v2, "com.miui.cleaner"

    invoke-static {p0, v2}, Lx4/f1;->K(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    return-void

    :cond_0
    :try_start_0
    const-string v2, "android.app.AppGlobals"

    invoke-static {v2}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2

    const-string v3, "getPackageManager"

    const/4 v4, 0x0

    new-array v5, v4, [Ljava/lang/Class;

    new-array v6, v4, [Ljava/lang/Object;

    invoke-static {v0, v2, v3, v5, v6}, Lbh/e;->f(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    invoke-static {v7, v1}, Ltg/a;->g(Ljava/lang/Object;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-static {p0, v1}, Lx4/f1;->r(Landroid/content/Context;Ljava/lang/String;)I

    move-result v9

    const-string v8, "com.miui.cleanmaster"

    const/4 v10, 0x0

    const/16 v11, 0x3e7

    const/4 v12, 0x0

    invoke-static/range {v7 .. v12}, Ltg/a;->b(Ljava/lang/Object;Ljava/lang/String;ILandroid/content/pm/IPackageDeleteObserver;II)V

    :cond_1
    invoke-static {p0, v1}, Lcom/miui/luckymoney/utils/PackageUtil;->isInstalledPackage(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p0

    new-instance v2, Lc4/j$a;

    invoke-direct {v2}, Lc4/j$a;-><init>()V

    invoke-static {p0, v1, v2, v4}, Ltg/a;->a(Landroid/content/pm/PackageManager;Ljava/lang/String;Landroid/content/pm/IPackageDeleteObserver;I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    const-string v1, "uninstallOldCleanerApp exception!"

    invoke-static {v0, v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_2
    :goto_0
    return-void
.end method
