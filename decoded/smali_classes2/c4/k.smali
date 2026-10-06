.class public Lc4/k;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static b:Lc4/k;


# instance fields
.field private a:Z


# direct methods
.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a()Lc4/k;
    .locals 1

    sget-object v0, Lc4/k;->b:Lc4/k;

    if-nez v0, :cond_0

    new-instance v0, Lc4/k;

    invoke-direct {v0}, Lc4/k;-><init>()V

    sput-object v0, Lc4/k;->b:Lc4/k;

    :cond_0
    sget-object v0, Lc4/k;->b:Lc4/k;

    return-object v0
.end method

.method public static d(Landroid/content/Context;Ljava/lang/String;Z)V
    .locals 4

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "key_clean_alert_switch_state"

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    :try_start_0
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    invoke-static {p0}, Lc4/j;->c(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    const/4 v3, 0x0

    if-eqz p2, :cond_1

    const-string p2, "com.miui.cleaner.GARBAGE_PKG_REMOVED"

    invoke-virtual {v0, p2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    invoke-static {p0, v0}, Leg/i;->d(Landroid/content/Context;Landroid/content/Intent;)Z

    move-result p2

    if-nez p2, :cond_2

    const-string p2, "com.miui.cleanmaster.GARBAGE_PKG_REMOVED"

    goto :goto_0

    :cond_1
    const-string p2, "com.miui.cleaner.GARBAGE_PKG_ADD"

    invoke-virtual {v0, p2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    invoke-static {p0, v0}, Leg/i;->d(Landroid/content/Context;Landroid/content/Intent;)Z

    move-result p2

    if-nez p2, :cond_2

    const-string p2, "com.miui.cleanmaster.GARBAGE_PKG_ADD"

    :goto_0
    invoke-virtual {v0, p2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    move v2, v3

    :cond_2
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    const-string p2, "pkg"

    invoke-virtual {v0, p2, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 p2, 0x1a

    if-lt p1, p2, :cond_3

    if-eqz v2, :cond_3

    invoke-static {p0, v0}, Landroidx/core/content/g;->a(Landroid/content/Context;Landroid/content/Intent;)Landroid/content/ComponentName;

    goto :goto_1

    :cond_3
    invoke-virtual {p0, v0}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p0

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "notifyCleanerPkgChanged: "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "CmNotificationManager"

    invoke-static {p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_1
    return-void
.end method


# virtual methods
.method public b(Landroid/content/Context;)V
    .locals 3

    invoke-static {p1}, Lc4/j;->e(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const-string v1, "android.intent.action.USER_PRESENT"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    new-instance v1, Lc4/b;

    invoke-direct {v1}, Lc4/b;-><init>()V

    const/4 v2, 0x4

    invoke-static {p1, v1, v0, v2}, Lx4/v;->m(Landroid/content/Context;Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;I)Landroid/content/Intent;

    invoke-static {}, Lc4/a;->d()Lc4/a;

    move-result-object v0

    invoke-virtual {v0, p1}, Lc4/a;->f(Landroid/content/Context;)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lc4/k;->a:Z

    :cond_0
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1a

    if-lt v0, v1, :cond_2

    const-string v0, "notification"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/app/NotificationManager;

    const-string v0, "com.miui.cleanmaster.high"

    invoke-static {p1, v0}, Landroidx/core/app/q0;->a(Landroid/app/NotificationManager;Ljava/lang/String;)Landroid/app/NotificationChannel;

    move-result-object v1

    const-string v2, "CmNotificationManager"

    if-eqz v1, :cond_1

    const-string v1, "find old channel."

    invoke-static {v2, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {p1, v0}, Landroidx/core/app/m0;->a(Landroid/app/NotificationManager;Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    const-string p1, "no old channel."

    invoke-static {v2, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    :goto_0
    return-void
.end method

.method public c()Z
    .locals 1

    iget-boolean v0, p0, Lc4/k;->a:Z

    return v0
.end method
