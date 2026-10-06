.class public Lmd/o;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lmd/o$c;,
        Lmd/o$b;,
        Lmd/o$d;
    }
.end annotation


# static fields
.field public static h:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private static i:Ljava/util/concurrent/atomic/AtomicBoolean;


# instance fields
.field private a:I

.field private b:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lnd/d;",
            ">;"
        }
    .end annotation
.end field

.field private c:Lnd/d;

.field private d:Lmd/o$b;

.field private e:Lmd/p;

.field private f:Landroid/content/Context;

.field private g:Landroid/database/ContentObserver;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    sput-object v0, Lmd/o;->h:Ljava/util/concurrent/atomic/AtomicBoolean;

    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    sput-object v0, Lmd/o;->i:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-void
.end method

.method private constructor <init>()V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    iput v0, p0, Lmd/o;->a:I

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lmd/o;->b:Ljava/util/List;

    new-instance v0, Lmd/o$a;

    new-instance v1, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    invoke-direct {v0, p0, v1}, Lmd/o$a;-><init>(Lmd/o;Landroid/os/Handler;)V

    iput-object v0, p0, Lmd/o;->g:Landroid/database/ContentObserver;

    return-void
.end method

.method synthetic constructor <init>(Lmd/o$a;)V
    .locals 0

    invoke-direct {p0}, Lmd/o;-><init>()V

    return-void
.end method

.method public static synthetic a(Lnd/d;Lnd/d;)I
    .locals 0

    invoke-static {p0, p1}, Lmd/o;->u(Lnd/d;Lnd/d;)I

    move-result p0

    return p0
.end method

.method static synthetic b(Lmd/o;)V
    .locals 0

    invoke-direct {p0}, Lmd/o;->o()V

    return-void
.end method

.method static synthetic c(Lmd/o;)V
    .locals 0

    invoke-direct {p0}, Lmd/o;->f()V

    return-void
.end method

.method static synthetic d(Lmd/o;)V
    .locals 0

    invoke-direct {p0}, Lmd/o;->g()V

    return-void
.end method

.method private e(Lnd/d;)V
    .locals 1

    if-eqz p1, :cond_0

    iget-object v0, p0, Lmd/o;->f:Landroid/content/Context;

    invoke-interface {p1}, Lnd/d;->b()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lgd/b;->a(Landroid/content/Context;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method private f()V
    .locals 3

    iget-object v0, p0, Lmd/o;->b:Ljava/util/List;

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lmd/o;->i()Lnd/d;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lnd/d;->d()I

    move-result v1

    iget-object v2, p0, Lmd/o;->c:Lnd/d;

    invoke-interface {v2}, Lnd/d;->d()I

    move-result v2

    if-eq v1, v2, :cond_0

    iget-object v1, p0, Lmd/o;->c:Lnd/d;

    invoke-interface {v1}, Lnd/d;->f()V

    invoke-interface {v0}, Lnd/d;->e()V

    invoke-direct {p0, v0}, Lmd/o;->e(Lnd/d;)V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "checkProtectModeChange:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lmd/o;->c:Lnd/d;

    invoke-interface {v2}, Lnd/d;->b()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " close,"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v0}, Lnd/d;->b()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " open"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "SmartChargeProtectManager"

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iput-object v0, p0, Lmd/o;->c:Lnd/d;

    :cond_0
    return-void
.end method

.method private g()V
    .locals 3

    iget-object v0, p0, Lmd/o;->f:Landroid/content/Context;

    invoke-static {v0}, Lmd/c;->f(Landroid/content/Context;)I

    move-result v0

    iput v0, p0, Lmd/o;->a:I

    iget-object v0, p0, Lmd/o;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lnd/d;

    iget v2, p0, Lmd/o;->a:I

    invoke-interface {v1, v2}, Lnd/d;->a(I)V

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "checkModeProtect:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lmd/o;->a:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "SmartChargeProtectManager"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public static h()Lmd/o;
    .locals 1

    invoke-static {}, Lmd/o$d;->a()Lmd/o;

    move-result-object v0

    return-object v0
.end method

.method private i()Lnd/d;
    .locals 5

    iget-object v0, p0, Lmd/o;->b:Ljava/util/List;

    if-eqz v0, :cond_2

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lnd/d;

    iget-object v2, p0, Lmd/o;->b:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lnd/d;

    invoke-interface {v3}, Lnd/d;->c()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v3}, Lnd/d;->d()I

    move-result v4

    if-le v4, v1, :cond_0

    invoke-interface {v3}, Lnd/d;->d()I

    move-result v0

    move v1, v0

    move-object v0, v3

    goto :goto_0

    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getMaxShouldWorkName:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v0}, Lnd/d;->b()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "SmartChargeProtectManager"

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-object v0

    :cond_2
    const/4 v0, 0x0

    return-object v0
.end method

.method public static k(Landroid/content/Context;)V
    .locals 2

    const-string v0, "notification"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/app/NotificationManager;

    const/4 v0, 0x0

    const v1, 0x7f121246

    invoke-virtual {p0, v0, v1}, Landroid/app/NotificationManager;->cancel(Ljava/lang/String;I)V

    return-void
.end method

.method private m()V
    .locals 3

    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "SmartChargeProtectManager"

    const/16 v2, 0xa

    invoke-direct {v0, v1, v2}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;I)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    new-instance v1, Lmd/o$b;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {v1, p0, v0}, Lmd/o$b;-><init>(Lmd/o;Landroid/os/Looper;)V

    iput-object v1, p0, Lmd/o;->d:Lmd/o$b;

    const/16 v0, 0x3e8

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    return-void
.end method

.method private n()V
    .locals 2

    iget-object v0, p0, Lmd/o;->b:Ljava/util/List;

    new-instance v1, Lmd/m;

    invoke-direct {v1}, Lmd/m;-><init>()V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-static {}, Lme/q;->h()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lmd/o;->b:Ljava/util/List;

    invoke-static {}, Lmd/b;->s()Lmd/b;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    invoke-static {}, Lmd/c;->k()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lmd/o;->b:Ljava/util/List;

    new-instance v1, Lmd/a;

    invoke-direct {v1}, Lmd/a;-><init>()V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lmd/o;->b:Ljava/util/List;

    new-instance v1, Lmd/d;

    invoke-direct {v1}, Lmd/d;-><init>()V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_1
    invoke-static {}, Lmd/c;->g()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lmd/o;->b:Ljava/util/List;

    new-instance v1, Lmd/g;

    invoke-direct {v1}, Lmd/g;-><init>()V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_2
    iget-object v0, p0, Lmd/o;->b:Ljava/util/List;

    invoke-static {}, Lmd/h;->F()Lmd/h;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lmd/o;->b:Ljava/util/List;

    new-instance v1, Lmd/n;

    invoke-direct {v1}, Lmd/n;-><init>()V

    invoke-static {v0, v1}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    return-void
.end method

.method private o()V
    .locals 6

    const-string v0, "SmartChargeProtectManager"

    :try_start_0
    invoke-direct {p0}, Lmd/o;->n()V

    new-instance v1, Lmd/p;

    iget-object v2, p0, Lmd/o;->f:Landroid/content/Context;

    invoke-direct {v1, v2}, Lmd/p;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lmd/o;->e:Lmd/p;

    iget-object v1, p0, Lmd/o;->b:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lnd/d;

    iget-object v3, p0, Lmd/o;->f:Landroid/content/Context;

    iget-object v4, p0, Lmd/o;->d:Lmd/o$b;

    iget-object v5, p0, Lmd/o;->e:Lmd/p;

    invoke-interface {v2, v3, v4, v5}, Lnd/d;->g(Landroid/content/Context;Lmd/o$b;Lmd/p;)V

    invoke-interface {v2}, Lnd/d;->f()V

    goto :goto_0

    :cond_0
    invoke-direct {p0}, Lmd/o;->g()V

    invoke-direct {p0}, Lmd/o;->i()Lnd/d;

    move-result-object v1

    iput-object v1, p0, Lmd/o;->c:Lnd/d;

    if-eqz v1, :cond_1

    invoke-interface {v1}, Lnd/d;->e()V

    iget-object v1, p0, Lmd/o;->c:Lnd/d;

    invoke-direct {p0, v1}, Lmd/o;->e(Lnd/d;)V

    :cond_1
    invoke-direct {p0}, Lmd/o;->v()V

    iget-object v1, p0, Lmd/o;->c:Lnd/d;

    if-eqz v1, :cond_2

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "initProtectMode getMaxShouldWorkName:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lmd/o;->c:Lnd/d;

    invoke-interface {v2}, Lnd/d;->b()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ",mCurrentProtectUiMode:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lmd/o;->a:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v1

    const-string v2, "initProtectMode: "

    invoke-static {v0, v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_2
    :goto_1
    return-void
.end method

.method public static q()Z
    .locals 2

    invoke-static {}, Lmd/c;->e()Ljava/lang/String;

    move-result-object v0

    const-string v1, "1"

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    return v0
.end method

.method public static r()Z
    .locals 1

    sget-boolean v0, Lmiui/os/Build;->IS_INTERNATIONAL_BUILD:Z

    if-eqz v0, :cond_0

    invoke-static {}, Lmd/o;->t()Z

    move-result v0

    return v0

    :cond_0
    invoke-static {}, Lmd/o;->s()Z

    move-result v0

    return v0
.end method

.method public static s()Z
    .locals 2

    sget-boolean v0, Lmiui/os/Build;->IS_INTERNATIONAL_BUILD:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    sget-object v0, Lmd/o;->i:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-eqz v0, :cond_0

    return v1

    :cond_0
    invoke-static {}, Lgd/c;->U()Z

    move-result v0

    if-eqz v0, :cond_1

    return v1

    :cond_1
    const-string v0, "persist.vendor.night.charge"

    invoke-static {v0, v1}, Lmiuix/core/util/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method private static t()Z
    .locals 6

    const-string v0, "SmartChargeProtectManager"

    const/4 v1, 0x0

    :try_start_0
    invoke-static {}, Lcom/miui/securitycenter/Application;->A()Lcom/miui/securitycenter/Application;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "content://com.miui.powercenter.provider"

    invoke-static {v3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    const-string v4, "support_night_charge"

    const/4 v5, 0x0

    invoke-virtual {v2, v3, v4, v5, v5}, Landroid/content/ContentResolver;->call(Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v2

    const-string v3, "key_support_night_charge"

    invoke-virtual {v2, v3, v1}, Landroid/os/BaseBundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "isSupportNightChargeProtection isSupport:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return v2

    :catch_0
    move-exception v2

    const-string v3, "isSupportNightChargeProtection error:"

    invoke-static {v0, v3, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return v1
.end method

.method private static synthetic u(Lnd/d;Lnd/d;)I
    .locals 0

    invoke-interface {p0}, Lnd/d;->d()I

    move-result p0

    invoke-interface {p1}, Lnd/d;->d()I

    move-result p1

    invoke-static {p0, p1}, Ljava/lang/Integer;->compare(II)I

    move-result p0

    return p0
.end method

.method private v()V
    .locals 9

    :try_start_0
    iget-object v0, p0, Lmd/o;->f:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "registerContentObserver"

    const/4 v2, 0x4

    new-array v3, v2, [Ljava/lang/Class;

    const-class v4, Landroid/net/Uri;

    const/4 v5, 0x0

    aput-object v4, v3, v5

    sget-object v4, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    const/4 v6, 0x1

    aput-object v4, v3, v6

    const-class v4, Landroid/database/ContentObserver;

    const/4 v7, 0x2

    aput-object v4, v3, v7

    sget-object v4, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    const/4 v8, 0x3

    aput-object v4, v3, v8

    new-array v2, v2, [Ljava/lang/Object;

    const-string v4, "security_pc_secure_protect_mode_key"

    invoke-static {v4}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    aput-object v4, v2, v5

    sget-object v4, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    aput-object v4, v2, v6

    iget-object v4, p0, Lmd/o;->g:Landroid/database/ContentObserver;

    aput-object v4, v2, v7

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v8

    invoke-static {v0, v1, v3, v2}, Lbh/f;->f(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "SmartChargeProtectManager"

    const-string v2, "registerProtectModeObserver error:"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    return-void
.end method


# virtual methods
.method public j()I
    .locals 1

    iget-object v0, p0, Lmd/o;->e:Lmd/p;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lmd/p;->b()I

    move-result v0

    return v0

    :cond_0
    const/4 v0, -0x1

    return v0
.end method

.method public l(Landroid/content/Context;)V
    .locals 0

    iput-object p1, p0, Lmd/o;->f:Landroid/content/Context;

    invoke-direct {p0}, Lmd/o;->m()V

    return-void
.end method

.method public p()Z
    .locals 2

    iget v0, p0, Lmd/o;->a:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public w()V
    .locals 2

    iget-object v0, p0, Lmd/o;->f:Landroid/content/Context;

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v1, p0, Lmd/o;->g:Landroid/database/ContentObserver;

    if-eqz v1, :cond_1

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lmd/o;->g:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    :cond_1
    return-void
.end method

.method public x()V
    .locals 1

    iget-object v0, p0, Lmd/o;->e:Lmd/p;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lmd/p;->e()V

    :cond_0
    return-void
.end method

.method public y()V
    .locals 1

    iget-object v0, p0, Lmd/o;->c:Lnd/d;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lnd/d;->f()V

    :cond_0
    iget-object v0, p0, Lmd/o;->e:Lmd/p;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lmd/p;->f()V

    :cond_1
    return-void
.end method
