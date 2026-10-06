.class public Lc4/a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lc4/a$c;,
        Lc4/a$a;,
        Lc4/a$b;
    }
.end annotation


# static fields
.field private static a:Lc4/a;


# direct methods
.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic a(Landroid/content/Context;Ljava/lang/String;)V
    .locals 0

    invoke-static {p0, p1}, Lc4/a;->j(Landroid/content/Context;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic b(Landroid/content/Context;I)V
    .locals 0

    invoke-static {p0, p1}, Lc4/a;->c(Landroid/content/Context;I)V

    return-void
.end method

.method private static c(Landroid/content/Context;I)V
    .locals 1

    const-string v0, "notification"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/app/NotificationManager;

    invoke-virtual {p0, p1}, Landroid/app/NotificationManager;->cancel(I)V

    return-void
.end method

.method public static d()Lc4/a;
    .locals 1

    sget-object v0, Lc4/a;->a:Lc4/a;

    if-nez v0, :cond_0

    new-instance v0, Lc4/a;

    invoke-direct {v0}, Lc4/a;-><init>()V

    sput-object v0, Lc4/a;->a:Lc4/a;

    :cond_0
    sget-object v0, Lc4/a;->a:Lc4/a;

    return-object v0
.end method

.method private e(Landroid/content/Context;Ljava/lang/String;)Landroid/net/Uri;
    .locals 0

    invoke-static {p1}, La8/x;->b(Landroid/content/Context;)Z

    move-result p1

    if-eqz p1, :cond_0

    invoke-static {p2}, Lam/a;->f(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    goto :goto_0

    :cond_0
    invoke-static {p2}, Lam/b;->d(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    :goto_0
    return-object p1
.end method

.method private g(Landroid/content/Context;)V
    .locals 3

    const-string v0, "key_notificaiton_general_clean_need"

    invoke-direct {p0, p1, v0}, Lc4/a;->e(Landroid/content/Context;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    new-instance v2, Lc4/a$a;

    invoke-direct {v2, p1}, Lc4/a$a;-><init>(Landroid/content/Context;)V

    const/4 p1, 0x1

    invoke-virtual {v1, v0, p1, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    return-void
.end method

.method private h(Landroid/content/Context;)V
    .locals 4

    sget-boolean v0, Lmiui/os/Build;->IS_INTERNATIONAL_BUILD:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const-string v0, "key_notification_wechat_size_need"

    invoke-direct {p0, p1, v0}, Lc4/a;->e(Landroid/content/Context;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const/4 v2, 0x1

    new-instance v3, Lc4/a$b;

    invoke-direct {v3, p1}, Lc4/a$b;-><init>(Landroid/content/Context;)V

    invoke-virtual {v1, v0, v2, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    return-void
.end method

.method private i(Landroid/content/Context;)V
    .locals 4

    sget-boolean v0, Lmiui/os/Build;->IS_INTERNATIONAL_BUILD:Z

    if-nez v0, :cond_0

    return-void

    :cond_0
    const-string v0, "key_notification_whatsapp_clean_need"

    invoke-direct {p0, p1, v0}, Lc4/a;->e(Landroid/content/Context;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const/4 v2, 0x1

    new-instance v3, Lc4/a$c;

    invoke-direct {v3, p1}, Lc4/a$c;-><init>(Landroid/content/Context;)V

    invoke-virtual {v1, v0, v2, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    return-void
.end method

.method private static j(Landroid/content/Context;Ljava/lang/String;)V
    .locals 1

    invoke-static {p0}, Lc4/c;->f(Landroid/content/Context;)Lc4/c;

    move-result-object p0

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lc4/c;->k(Ljava/lang/String;I)V

    return-void
.end method


# virtual methods
.method public f(Landroid/content/Context;)V
    .locals 7

    invoke-direct {p0, p1}, Lc4/a;->i(Landroid/content/Context;)V

    invoke-direct {p0, p1}, Lc4/a;->h(Landroid/content/Context;)V

    invoke-direct {p0, p1}, Lc4/a;->g(Landroid/content/Context;)V

    sget-boolean v0, Lmiui/os/Build;->IS_INTERNATIONAL_BUILD:Z

    if-nez v0, :cond_0

    new-instance v2, Lc4/h;

    invoke-direct {v2}, Lc4/h;-><init>()V

    new-instance v3, Landroid/content/IntentFilter;

    const-string v0, "com.miui.cleaner.action.REMOTE_NOTIFICATION"

    invoke-direct {v3, v0}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    const/4 v5, 0x0

    const/4 v6, 0x2

    const-string v4, "com.miui.cleaner.permission.REMOTE_NOTIFICATION"

    move-object v1, p1

    invoke-static/range {v1 .. v6}, Lx4/v;->n(Landroid/content/Context;Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;I)Landroid/content/Intent;

    :cond_0
    return-void
.end method
