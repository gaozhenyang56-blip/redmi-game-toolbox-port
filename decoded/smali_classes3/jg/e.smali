.class public Ljg/e;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final v:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static volatile w:Ljg/e;


# instance fields
.field private final a:I

.field private final b:I

.field private c:Landroid/content/Context;

.field private d:Landroid/os/HandlerThread;

.field private e:Landroid/os/Handler;

.field private f:Landroid/content/IntentFilter;

.field private g:Landroid/content/Intent;

.field private h:Landroid/content/pm/ResolveInfo;

.field private i:I

.field private volatile j:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private k:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Llg/d;",
            ">;"
        }
    .end annotation
.end field

.field private l:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private m:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private n:Z

.field private o:Z

.field private p:Landroid/app/NotificationManager;

.field private q:Lmiui/security/SecurityManager;

.field private r:Landroid/content/SharedPreferences;

.field private s:Landroid/database/ContentObserver;

.field private t:Landroid/database/ContentObserver;

.field private u:Ljava/lang/Runnable;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x4

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    sput-object v0, Ljg/e;->v:Ljava/util/List;

    const-string v1, "com.tencent.mobileqq"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v1, "com.tencent.mm"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v1, "com.tencent.tim"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v1, "com.alibaba.android.rimet"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 6

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x6

    iput v0, p0, Ljg/e;->a:I

    const/16 v0, 0x64

    iput v0, p0, Ljg/e;->b:I

    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Ljg/e;->j:Ljava/util/concurrent/atomic/AtomicBoolean;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Ljg/e;->k:Ljava/util/List;

    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Ljg/e;->l:Ljava/util/concurrent/atomic/AtomicBoolean;

    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Ljg/e;->m:Ljava/util/concurrent/atomic/AtomicBoolean;

    new-instance v0, Ljg/e$a;

    new-instance v2, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    invoke-direct {v0, p0, v2}, Ljg/e$a;-><init>(Ljg/e;Landroid/os/Handler;)V

    iput-object v0, p0, Ljg/e;->s:Landroid/database/ContentObserver;

    new-instance v0, Ljg/e$f;

    new-instance v2, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    invoke-direct {v0, p0, v2}, Ljg/e$f;-><init>(Ljg/e;Landroid/os/Handler;)V

    iput-object v0, p0, Ljg/e;->t:Landroid/database/ContentObserver;

    new-instance v0, Ljg/e$e;

    invoke-direct {v0, p0}, Ljg/e$e;-><init>(Ljg/e;)V

    iput-object v0, p0, Ljg/e;->u:Ljava/lang/Runnable;

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Ljg/e;->c:Landroid/content/Context;

    const-string v2, "notification"

    invoke-virtual {v0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationManager;

    iput-object v0, p0, Ljg/e;->p:Landroid/app/NotificationManager;

    const-string v0, "security"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lmiui/security/SecurityManager;

    iput-object p1, p0, Ljg/e;->q:Lmiui/security/SecurityManager;

    new-instance p1, Landroid/os/HandlerThread;

    const-string v0, "SuperPowerLauncherActivity"

    invoke-direct {p1, v0}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object p1, p0, Ljg/e;->d:Landroid/os/HandlerThread;

    invoke-virtual {p1}, Ljava/lang/Thread;->start()V

    new-instance p1, Landroid/os/Handler;

    iget-object v0, p0, Ljg/e;->d:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {p1, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object p1, p0, Ljg/e;->e:Landroid/os/Handler;

    invoke-static {}, Lpg/b;->a()Ljava/lang/Float;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    const v0, 0x402c44d0    # 2.6917f

    div-float/2addr p1, v0

    const-string v2, "PREF_KEY_STANDBY_4G"

    invoke-static {v2, p1}, Lr4/a;->o(Ljava/lang/String;F)V

    invoke-static {}, Lpg/b;->a()Ljava/lang/Float;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    div-float/2addr p1, v0

    const-string v0, "PREF_KEY_STANDBY_WIFI"

    invoke-static {v0, p1}, Lr4/a;->o(Ljava/lang/String;F)V

    new-instance p1, Landroid/content/IntentFilter;

    invoke-direct {p1}, Landroid/content/IntentFilter;-><init>()V

    iput-object p1, p0, Ljg/e;->f:Landroid/content/IntentFilter;

    const-string v0, "android.intent.action.MAIN"

    invoke-virtual {p1, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    iget-object p1, p0, Ljg/e;->f:Landroid/content/IntentFilter;

    const-string v2, "android.intent.category.HOME"

    invoke-virtual {p1, v2}, Landroid/content/IntentFilter;->addCategory(Ljava/lang/String;)V

    new-instance p1, Landroid/content/Intent;

    invoke-direct {p1, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    iput-object p1, p0, Ljg/e;->g:Landroid/content/Intent;

    invoke-virtual {p1, v2}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    iget-object p1, p0, Ljg/e;->c:Landroid/content/Context;

    const-string v0, "sp_superpower"

    invoke-virtual {p1, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p1

    iput-object p1, p0, Ljg/e;->r:Landroid/content/SharedPreferences;

    iget-object p1, p0, Ljg/e;->c:Landroid/content/Context;

    invoke-static {p1}, Lme/w;->S(Landroid/content/Context;)Z

    move-result p1

    const/4 v0, 0x1

    if-eqz p1, :cond_0

    iget-object p1, p0, Ljg/e;->j:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {p1, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    iget-object p1, p0, Ljg/e;->r:Landroid/content/SharedPreferences;

    const-string v2, "pref_key_superpower_origin_home_pkg"

    const-string v3, ""

    invoke-interface {p1, v2, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_0

    new-instance p1, Landroid/content/pm/ResolveInfo;

    invoke-direct {p1}, Landroid/content/pm/ResolveInfo;-><init>()V

    iput-object p1, p0, Ljg/e;->h:Landroid/content/pm/ResolveInfo;

    new-instance v4, Landroid/content/pm/ActivityInfo;

    invoke-direct {v4}, Landroid/content/pm/ActivityInfo;-><init>()V

    iput-object v4, p1, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object p1, p0, Ljg/e;->h:Landroid/content/pm/ResolveInfo;

    iget-object p1, p1, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v4, p0, Ljg/e;->r:Landroid/content/SharedPreferences;

    invoke-interface {v4, v2, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p1, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    iget-object p1, p0, Ljg/e;->h:Landroid/content/pm/ResolveInfo;

    iget-object p1, p1, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v2, p0, Ljg/e;->r:Landroid/content/SharedPreferences;

    const-string v4, "pref_key_superpower_origin_home_act"

    invoke-interface {v2, v4, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p1, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    :cond_0
    iget-object p1, p0, Ljg/e;->k:Ljava/util/List;

    new-instance v2, Llg/e;

    iget-object v3, p0, Ljg/e;->c:Landroid/content/Context;

    iget-object v4, p0, Ljg/e;->r:Landroid/content/SharedPreferences;

    invoke-direct {v2, v3, v4}, Llg/e;-><init>(Landroid/content/Context;Landroid/content/SharedPreferences;)V

    invoke-interface {p1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object p1, p0, Ljg/e;->k:Ljava/util/List;

    new-instance v2, Llg/j;

    iget-object v3, p0, Ljg/e;->c:Landroid/content/Context;

    iget-object v4, p0, Ljg/e;->r:Landroid/content/SharedPreferences;

    iget-object v5, p0, Ljg/e;->e:Landroid/os/Handler;

    invoke-direct {v2, v3, v4, v5}, Llg/j;-><init>(Landroid/content/Context;Landroid/content/SharedPreferences;Landroid/os/Handler;)V

    invoke-interface {p1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object p1, p0, Ljg/e;->k:Ljava/util/List;

    new-instance v2, Llg/h;

    iget-object v3, p0, Ljg/e;->c:Landroid/content/Context;

    iget-object v4, p0, Ljg/e;->r:Landroid/content/SharedPreferences;

    invoke-direct {v2, v3, v4}, Llg/h;-><init>(Landroid/content/Context;Landroid/content/SharedPreferences;)V

    invoke-interface {p1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object p1, p0, Ljg/e;->c:Landroid/content/Context;

    invoke-static {p1}, Lpg/i;->e(Landroid/content/Context;)Z

    move-result p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Ljg/e;->k:Ljava/util/List;

    new-instance v2, Llg/g;

    iget-object v3, p0, Ljg/e;->c:Landroid/content/Context;

    iget-object v4, p0, Ljg/e;->r:Landroid/content/SharedPreferences;

    invoke-direct {v2, v3, v4}, Llg/g;-><init>(Landroid/content/Context;Landroid/content/SharedPreferences;)V

    goto :goto_0

    :cond_1
    iget-object p1, p0, Ljg/e;->k:Ljava/util/List;

    new-instance v2, Llg/f;

    iget-object v3, p0, Ljg/e;->c:Landroid/content/Context;

    iget-object v4, p0, Ljg/e;->r:Landroid/content/SharedPreferences;

    invoke-direct {v2, v3, v4}, Llg/f;-><init>(Landroid/content/Context;Landroid/content/SharedPreferences;)V

    :goto_0
    invoke-interface {p1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object p1, p0, Ljg/e;->k:Ljava/util/List;

    new-instance v2, Llg/a;

    iget-object v3, p0, Ljg/e;->c:Landroid/content/Context;

    iget-object v4, p0, Ljg/e;->r:Landroid/content/SharedPreferences;

    invoke-direct {v2, v3, v4}, Llg/a;-><init>(Landroid/content/Context;Landroid/content/SharedPreferences;)V

    invoke-interface {p1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object p1, p0, Ljg/e;->k:Ljava/util/List;

    new-instance v2, Llg/c;

    iget-object v3, p0, Ljg/e;->c:Landroid/content/Context;

    iget-object v4, p0, Ljg/e;->r:Landroid/content/SharedPreferences;

    invoke-direct {v2, v3, v4}, Llg/c;-><init>(Landroid/content/Context;Landroid/content/SharedPreferences;)V

    invoke-interface {p1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x1f

    if-gt p1, v2, :cond_2

    iget-object p1, p0, Ljg/e;->k:Ljava/util/List;

    new-instance v2, Llg/b;

    iget-object v3, p0, Ljg/e;->c:Landroid/content/Context;

    iget-object v4, p0, Ljg/e;->r:Landroid/content/SharedPreferences;

    invoke-direct {v2, v3, v4}, Llg/b;-><init>(Landroid/content/Context;Landroid/content/SharedPreferences;)V

    invoke-interface {p1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_2
    iget-object p1, p0, Ljg/e;->k:Ljava/util/List;

    new-instance v2, Llg/l;

    iget-object v3, p0, Ljg/e;->c:Landroid/content/Context;

    iget-object v4, p0, Ljg/e;->r:Landroid/content/SharedPreferences;

    invoke-direct {v2, v3, v4}, Llg/l;-><init>(Landroid/content/Context;Landroid/content/SharedPreferences;)V

    invoke-interface {p1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object p1, p0, Ljg/e;->c:Landroid/content/Context;

    iget-object v2, p0, Ljg/e;->r:Landroid/content/SharedPreferences;

    iget-object v3, p0, Ljg/e;->k:Ljava/util/List;

    invoke-static {p1, v2, v3}, Ljg/a;->t(Landroid/content/Context;Landroid/content/SharedPreferences;Ljava/util/List;)V

    iget-object p1, p0, Ljg/e;->c:Landroid/content/Context;

    invoke-static {p1}, Lme/w;->j(Landroid/content/Context;)I

    move-result p1

    iput p1, p0, Ljg/e;->i:I

    iget-object p1, p0, Ljg/e;->l:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-static {}, Lpg/d;->a()Z

    move-result v2

    invoke-virtual {p1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    iget-object p1, p0, Ljg/e;->m:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-static {}, Lpg/d;->b()Z

    move-result v2

    invoke-virtual {p1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    iget-object p1, p0, Ljg/e;->r:Landroid/content/SharedPreferences;

    const-string v2, "pref_key_superpower_user_entersuperpower"

    invoke-interface {p1, v2, v1}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result p1

    iput-boolean p1, p0, Ljg/e;->n:Z

    iget-object p1, p0, Ljg/e;->r:Landroid/content/SharedPreferences;

    const-string v2, "pref_key_superpower_user_leavesuperpower"

    invoke-interface {p1, v2, v1}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result p1

    iput-boolean p1, p0, Ljg/e;->o:Z

    iget-object p1, p0, Ljg/e;->c:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    const-string v2, "content://com.miui.securitycenter.remoteprovider"

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    const-string v4, "key_superpower_autoenter"

    invoke-static {v3, v4}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    iget-object v4, p0, Ljg/e;->s:Landroid/database/ContentObserver;

    invoke-virtual {p1, v3, v1, v4}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    iget-object p1, p0, Ljg/e;->c:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    const-string v3, "key_superpower_autoleave"

    invoke-static {v2, v3}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    iget-object v3, p0, Ljg/e;->t:Landroid/database/ContentObserver;

    invoke-virtual {p1, v2, v1, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    iget-object p1, p0, Ljg/e;->j:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {p1}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result p1

    const-string v2, "SuperPowerSaveManager"

    if-eqz p1, :cond_5

    iget-object p1, p0, Ljg/e;->c:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p1

    iget-object v3, p0, Ljg/e;->g:Landroid/content/Intent;

    invoke-virtual {p1, v3, v1}, Landroid/content/pm/PackageManager;->resolveActivity(Landroid/content/Intent;I)Landroid/content/pm/ResolveInfo;

    move-result-object p1

    iget-object v3, p0, Ljg/e;->c:Landroid/content/Context;

    invoke-static {v3}, Lme/w;->G(Landroid/content/Context;)Z

    move-result v3

    iget-object v4, p0, Ljg/e;->c:Landroid/content/Context;

    invoke-static {v4}, Lme/w;->j(Landroid/content/Context;)I

    move-result v4

    iget-object v5, p0, Ljg/e;->c:Landroid/content/Context;

    invoke-static {v5}, Lme/w;->q(Landroid/content/Context;)I

    move-result v5

    if-ne v5, v0, :cond_3

    if-lez v4, :cond_3

    if-nez v3, :cond_3

    invoke-virtual {p0, v1, v0}, Ljg/e;->U(ZZ)V

    goto :goto_1

    :cond_3
    iget-object p1, p1, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object p1, p1, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    const-string v5, "com.miui.securityadd"

    invoke-virtual {v5, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_4

    const-string p1, "superpower mode but launcher error"

    invoke-static {v2, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0, v1, v0}, Ljg/e;->W(ZZ)V

    iget-object p1, p0, Ljg/e;->c:Landroid/content/Context;

    invoke-static {p1}, Lme/w;->b(Landroid/content/Context;)V

    iget-object p1, p0, Ljg/e;->c:Landroid/content/Context;

    invoke-static {p1}, Lpg/i;->N(Landroid/content/Context;)V

    goto :goto_1

    :cond_4
    const-string p1, "constructor repower"

    invoke-static {v2, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0}, Ljg/e;->I()V

    if-lez v4, :cond_6

    if-eqz v3, :cond_6

    iget-object p1, p0, Ljg/e;->c:Landroid/content/Context;

    invoke-static {p1}, Lme/w;->b(Landroid/content/Context;)V

    goto :goto_1

    :cond_5
    const-string p1, "constructor restore"

    invoke-static {v2, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p1, p0, Ljg/e;->e:Landroid/os/Handler;

    new-instance v0, Ljg/e$g;

    invoke-direct {v0, p0}, Ljg/e$g;-><init>(Ljg/e;)V

    invoke-virtual {p1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_6
    :goto_1
    return-void
.end method

.method private A()Z
    .locals 10

    iget-object v0, p0, Ljg/e;->c:Landroid/content/Context;

    const-string v1, "activity"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    invoke-virtual {v0}, Landroid/app/ActivityManager;->getRunningAppProcesses()Ljava/util/List;

    move-result-object v0

    iget-object v1, p0, Ljg/e;->c:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    invoke-static {}, Lx4/z1;->y()I

    move-result v2

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Lpg/i;->i(Landroid/content/pm/PackageManager;ILjava/util/HashSet;)Ljava/util/List;

    move-result-object v1

    iget-object v2, p0, Ljg/e;->c:Landroid/content/Context;

    invoke-static {v2}, Lpg/i;->h(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    const/4 v4, 0x0

    if-eqz v0, :cond_7

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v5

    if-nez v5, :cond_0

    goto/16 :goto_2

    :cond_0
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_7

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/app/ActivityManager$RunningAppProcessInfo;

    iget-object v6, v5, Landroid/app/ActivityManager$RunningAppProcessInfo;->pkgList:[Ljava/lang/String;

    if-eqz v6, :cond_2

    aget-object v6, v6, v4

    goto :goto_1

    :cond_2
    move-object v6, v3

    :goto_1
    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_3

    goto :goto_0

    :cond_3
    const/4 v7, 0x1

    :try_start_0
    iget-object v8, p0, Ljg/e;->c:Landroid/content/Context;

    invoke-virtual {v8}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v8

    invoke-virtual {v8, v6, v4}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v8

    iget v8, v8, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/2addr v8, v7

    if-eqz v8, :cond_4

    invoke-interface {v1, v6}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v8
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    if-nez v8, :cond_4

    goto :goto_0

    :catch_0
    move-exception v8

    invoke-virtual {v8}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_4
    iget-object v8, p0, Ljg/e;->c:Landroid/content/Context;

    invoke-virtual {v8}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    const/16 v9, 0x64

    if-eqz v8, :cond_5

    iget v8, v5, Landroid/app/ActivityManager$RunningAppProcessInfo;->importance:I

    if-eq v8, v9, :cond_5

    goto :goto_0

    :cond_5
    invoke-virtual {v6, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_6

    iget v8, v5, Landroid/app/ActivityManager$RunningAppProcessInfo;->importance:I

    if-eq v8, v9, :cond_6

    goto :goto_0

    :cond_6
    iget v5, v5, Landroid/app/ActivityManager$RunningAppProcessInfo;->importance:I

    const/16 v8, 0x7d

    if-gt v5, v8, :cond_1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "has foreground app : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "SuperPowerSaveManager"

    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return v7

    :cond_7
    :goto_2
    return v4
.end method

.method private B()Z
    .locals 2

    iget-object v0, p0, Ljg/e;->c:Landroid/content/Context;

    const-string v1, "phone"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getCallState()I

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private C(ZII)Z
    .locals 0

    iget-object p1, p0, Ljg/e;->j:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {p1}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result p1

    if-nez p1, :cond_0

    const/4 p1, 0x5

    if-gt p2, p1, :cond_0

    if-ge p2, p3, :cond_0

    iget-boolean p1, p0, Ljg/e;->o:Z

    if-nez p1, :cond_0

    iget-object p1, p0, Ljg/e;->l:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {p1}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result p1

    if-eqz p1, :cond_0

    invoke-direct {p0}, Ljg/e;->B()Z

    move-result p1

    if-nez p1, :cond_0

    invoke-direct {p0}, Ljg/e;->A()Z

    move-result p1

    if-nez p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method private D(ZII)Z
    .locals 1

    iget-object v0, p0, Ljg/e;->j:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-eqz v0, :cond_0

    if-eqz p1, :cond_0

    if-le p2, p3, :cond_0

    const/16 p1, 0x32

    if-lt p2, p1, :cond_0

    iget-boolean p1, p0, Ljg/e;->n:Z

    if-nez p1, :cond_0

    iget-object p1, p0, Ljg/e;->m:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {p1}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method private E()V
    .locals 10

    const-string v0, "miui.process.ProcessConfig"

    :try_start_0
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iget-object v2, p0, Ljg/e;->h:Landroid/content/pm/ResolveInfo;

    iget-object v2, v2, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v2, v2, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2

    const-string v3, "KILL_LEVEL_KILL"

    sget-object v4, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    invoke-static {v2, v3, v4}, Lbh/f;->n(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    new-instance v3, Landroid/util/ArrayMap;

    invoke-direct {v3}, Landroid/util/ArrayMap;-><init>()V

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v3, v2, v1}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    const-string v2, "POLICY_LOCK_SCREEN_CLEAN"

    invoke-static {v1, v2, v4}, Lbh/f;->n(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2

    const/4 v5, 0x3

    new-array v6, v5, [Ljava/lang/Class;

    const/4 v7, 0x0

    aput-object v4, v6, v7

    const/4 v8, 0x1

    aput-object v4, v6, v8

    const-class v4, Landroid/util/ArrayMap;

    const/4 v9, 0x2

    aput-object v4, v6, v9

    new-array v4, v5, [Ljava/lang/Object;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v4, v7

    invoke-static {}, Lx4/z1;->e()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v4, v8

    aput-object v3, v4, v9

    invoke-static {v2, v6, v4}, Lbh/d;->h(Ljava/lang/Class;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    const-string v2, "miui.process.ProcessManager"

    invoke-static {v2}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2

    const-string v3, "kill"

    new-array v4, v8, [Ljava/lang/Class;

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    aput-object v0, v4, v7

    new-array v0, v8, [Ljava/lang/Object;

    aput-object v1, v0, v7

    invoke-static {v2, v3, v4, v0}, Lbh/f;->h(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "kill home exception : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "SuperPowerSaveManager"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method

.method private synthetic F(ZZ)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Ljg/e;->T(ZZZ)V

    return-void
.end method

.method public static G(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x2

    invoke-static {v0, p0}, Llg/j;->P(ILandroid/content/Context;)V

    return-void
.end method

.method private I()V
    .locals 2

    iget-object v0, p0, Ljg/e;->e:Landroid/os/Handler;

    new-instance v1, Ljg/e$d;

    invoke-direct {v1, p0}, Ljg/e$d;-><init>(Ljg/e;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method private J()V
    .locals 4

    iget-object v0, p0, Ljg/e;->h:Landroid/content/pm/ResolveInfo;

    if-eqz v0, :cond_0

    iget-object v0, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    if-eqz v0, :cond_0

    iget-object v0, v0, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Ljg/e;->h:Landroid/content/pm/ResolveInfo;

    iget-object v0, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v0, v0, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Ljg/e;->h:Landroid/content/pm/ResolveInfo;

    iget-object v0, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v0, v0, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    const-string v1, "com.miui.superpower.SuperPowerLauncherActivity"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_0
    const-string v0, "SuperPowerSaveManager"

    const-string v1, "default home invalid"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Ljg/e;->c:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    iget-object v1, p0, Ljg/e;->g:Landroid/content/Intent;

    const/high16 v2, 0x20000

    invoke-virtual {v0, v1, v2}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_2

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/pm/ResolveInfo;

    iget-object v2, v1, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    if-eqz v2, :cond_1

    iget-object v2, v2, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    const-string v3, "com.miui.home"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    iput-object v1, p0, Ljg/e;->h:Landroid/content/pm/ResolveInfo;

    :cond_2
    iget-object v0, p0, Ljg/e;->h:Landroid/content/pm/ResolveInfo;

    invoke-direct {p0, v0}, Ljg/e;->M(Landroid/content/pm/ResolveInfo;)V

    iget-object v0, p0, Ljg/e;->r:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "pref_key_superpower_origin_home_pkg"

    const-string v2, ""

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    const-string v1, "pref_key_superpower_origin_home_act"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    return-void
.end method

.method private K()V
    .locals 6

    :try_start_0
    iget-object v0, p0, Ljg/e;->j:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Ljg/e;->r:Landroid/content/SharedPreferences;

    const-string v1, "pref_key_restart_apps"

    new-instance v2, Ljava/util/HashSet;

    invoke-direct {v2}, Ljava/util/HashSet;-><init>()V

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getStringSet(Ljava/lang/String;Ljava/util/Set;)Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->size()I

    move-result v1

    if-lez v1, :cond_4

    iget-object v1, p0, Ljg/e;->c:Landroid/content/Context;

    const-string v2, "activity"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/ActivityManager;

    invoke-virtual {v1}, Landroid/app/ActivityManager;->getRunningAppProcesses()Ljava/util/List;

    move-result-object v1

    if-eqz v1, :cond_4

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    if-lez v2, :cond_4

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/ActivityManager$RunningAppProcessInfo;

    iget v3, v2, Landroid/app/ActivityManager$RunningAppProcessInfo;->uid:I

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    const-string v4, "999"

    invoke-virtual {v3, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_1

    iget-object v3, v2, Landroid/app/ActivityManager$RunningAppProcessInfo;->pkgList:[Ljava/lang/String;

    if-eqz v3, :cond_1

    const/4 v3, 0x0

    :goto_0
    iget-object v4, v2, Landroid/app/ActivityManager$RunningAppProcessInfo;->pkgList:[Ljava/lang/String;

    array-length v5, v4

    if-ge v3, v5, :cond_3

    aget-object v4, v4, v3

    invoke-interface {v0, v4}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    iget-object v4, v2, Landroid/app/ActivityManager$RunningAppProcessInfo;->pkgList:[Ljava/lang/String;

    aget-object v4, v4, v3

    invoke-interface {v0, v4}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    :cond_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_3
    invoke-interface {v0}, Ljava/util/Set;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_1

    :cond_4
    const-string v1, "SuperPowerSaveManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "restart apps restore : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    invoke-interface {v0}, Ljava/util/Set;->size()I

    move-result v1

    if-lez v1, :cond_5

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1, v0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-static {}, Lx4/z1;->y()I

    move-result v2

    invoke-static {v1, v2}, Lpg/i;->M(Ljava/util/List;I)V

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_5

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    invoke-virtual {v2, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "android.net.conn.CONNECTIVITY_CHANGE"

    invoke-virtual {v2, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    const/high16 v1, 0x1000000

    invoke-virtual {v2, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    iget-object v1, p0, Ljg/e;->c:Landroid/content/Context;

    invoke-virtual {v1, v2}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    goto :goto_1

    :cond_5
    iget-object v0, p0, Ljg/e;->c:Landroid/content/Context;

    invoke-static {v0}, Lme/w;->p0(Landroid/content/Context;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    :goto_2
    return-void
.end method

.method private M(Landroid/content/pm/ResolveInfo;)V
    .locals 12

    const-string v0, "SuperPowerSaveManager"

    :try_start_0
    iget-object v1, p0, Ljg/e;->c:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    iget-object v2, p0, Ljg/e;->g:Landroid/content/Intent;

    const/high16 v3, 0x20000

    invoke-virtual {v1, v2, v3}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v3

    new-array v4, v3, [Landroid/content/ComponentName;

    const/4 v5, 0x0

    move v6, v5

    move v7, v6

    :goto_0
    if-ge v6, v3, :cond_1

    invoke-interface {v2, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/content/pm/ResolveInfo;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "home component("

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v10, v8, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v10, v10, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v10, ")-"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v10, v8, Landroid/content/pm/ResolveInfo;->match:I

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v0, v9}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v9, Landroid/content/ComponentName;

    iget-object v10, v8, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v11, v10, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    iget-object v10, v10, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-direct {v9, v11, v10}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v9, v4, v6

    iget v8, v8, Landroid/content/pm/ResolveInfo;->match:I

    if-le v8, v7, :cond_0

    move v7, v8

    :cond_0
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    :cond_1
    new-instance v2, Landroid/content/IntentFilter;

    iget-object v3, p0, Ljg/e;->f:Landroid/content/IntentFilter;

    invoke-direct {v2, v3}, Landroid/content/IntentFilter;-><init>(Landroid/content/IntentFilter;)V

    const-string v3, "android.intent.category.DEFAULT"

    invoke-virtual {v2, v3}, Landroid/content/IntentFilter;->addCategory(Ljava/lang/String;)V

    const-string v3, "android.intent.category.BROWSABLE"

    invoke-virtual {v2, v3}, Landroid/content/IntentFilter;->addCategory(Ljava/lang/String;)V

    const/4 v3, 0x4

    new-array v6, v3, [Ljava/lang/Class;

    const-class v8, Landroid/content/IntentFilter;

    aput-object v8, v6, v5

    sget-object v8, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    const/4 v9, 0x1

    aput-object v8, v6, v9

    const-class v8, [Landroid/content/ComponentName;

    const/4 v10, 0x2

    aput-object v8, v6, v10

    const-class v8, Landroid/content/ComponentName;

    const/4 v11, 0x3

    aput-object v8, v6, v11

    const-string v8, "replacePreferredActivity"

    new-array v3, v3, [Ljava/lang/Object;

    aput-object v2, v3, v5

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v3, v9

    aput-object v4, v3, v10

    new-instance v2, Landroid/content/ComponentName;

    iget-object p1, p1, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v4, p1, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    iget-object p1, p1, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-direct {v2, v4, p1}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v2, v3, v11

    invoke-static {v1, v8, v6, v3}, Lbh/f;->d(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p1

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "sethometosystem exception : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    :goto_1
    return-void
.end method

.method private N()V
    .locals 3

    iget-object v0, p0, Ljg/e;->h:Landroid/content/pm/ResolveInfo;

    if-nez v0, :cond_0

    iget-object v0, p0, Ljg/e;->c:Landroid/content/Context;

    invoke-static {v0}, Ljg/a;->b(Landroid/content/Context;)Landroid/content/pm/ResolveInfo;

    move-result-object v0

    iput-object v0, p0, Ljg/e;->h:Landroid/content/pm/ResolveInfo;

    :cond_0
    new-instance v0, Landroid/content/pm/ResolveInfo;

    invoke-direct {v0}, Landroid/content/pm/ResolveInfo;-><init>()V

    new-instance v1, Landroid/content/pm/ActivityInfo;

    invoke-direct {v1}, Landroid/content/pm/ActivityInfo;-><init>()V

    iput-object v1, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    const-string v2, "com.miui.securityadd"

    iput-object v2, v1, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    const-string v2, "com.miui.superpower.SuperPowerLauncherActivity"

    iput-object v2, v1, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-direct {p0, v0}, Ljg/e;->M(Landroid/content/pm/ResolveInfo;)V

    iget-object v0, p0, Ljg/e;->r:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    iget-object v1, p0, Ljg/e;->h:Landroid/content/pm/ResolveInfo;

    iget-object v1, v1, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v1, v1, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    const-string v2, "pref_key_superpower_origin_home_pkg"

    invoke-interface {v0, v2, v1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    iget-object v1, p0, Ljg/e;->h:Landroid/content/pm/ResolveInfo;

    iget-object v1, v1, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v1, v1, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    const-string v2, "pref_key_superpower_origin_home_act"

    invoke-interface {v0, v2, v1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    invoke-direct {p0}, Ljg/e;->E()V

    return-void
.end method

.method private O(I)V
    .locals 3

    iget-object v0, p0, Ljg/e;->c:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "power_supersave_mode_open"

    invoke-static {v0, v1, p1}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    invoke-static {}, Lpg/i;->C()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Ljg/e;->c:Landroid/content/Context;

    invoke-static {v0}, Lpg/i;->v(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setSuperSaveState xspace : "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "SuperPowerSaveManager"

    invoke-static {v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Ljg/e;->c:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const/16 v2, 0x3e7

    invoke-static {v0, v1, p1, v2}, Lah/f;->b(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    :cond_0
    return-void
.end method

.method private P(Z)V
    .locals 3

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1e

    if-ge v0, v1, :cond_0

    const-string p1, "SuperPowerSaveManager"

    const-string v0, "setWifiPowerSaveStatus: don\'t support below SDK API 30 "

    invoke-static {p1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    if-eqz p1, :cond_1

    iget-object p1, p0, Ljg/e;->e:Landroid/os/Handler;

    iget-object v0, p0, Ljg/e;->u:Ljava/lang/Runnable;

    const-wide/16 v1, 0x3e8

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0

    :cond_1
    iget-object p1, p0, Ljg/e;->u:Ljava/lang/Runnable;

    if-eqz p1, :cond_2

    iget-object v0, p0, Ljg/e;->e:Landroid/os/Handler;

    invoke-virtual {v0, p1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    :cond_2
    const/4 p1, 0x0

    invoke-direct {p0, p1}, Ljg/e;->c(Z)V

    :goto_0
    return-void
.end method

.method private Q()V
    .locals 7

    iget-object v0, p0, Ljg/e;->c:Landroid/content/Context;

    const v1, 0x7f1218e8

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Landroid/content/Intent;

    iget-object v2, p0, Ljg/e;->c:Landroid/content/Context;

    const-class v3, Lcom/miui/powercenter/PowerSettings;

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v2, "super_power_setting_enterway"

    const-string v3, "enter_superpower_notification"

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v2, "extra_settings_title_res"

    const v3, 0x7f121088

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const/high16 v2, 0x10000000

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    iget-object v2, p0, Ljg/e;->c:Landroid/content/Context;

    const/4 v3, 0x0

    const/high16 v4, 0x4000000

    invoke-static {v2, v3, v1, v4}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v1

    new-instance v2, Landroid/content/Intent;

    iget-object v5, p0, Ljg/e;->c:Landroid/content/Context;

    const-class v6, Lcom/miui/powercenter/provider/PowerSaveService;

    invoke-direct {v2, v5, v6}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v5, "com.miui.powercenter.action.ENTERSUPERPOWER_FROMNOTIFICATION"

    invoke-virtual {v2, v5}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    iget-object v5, p0, Ljg/e;->c:Landroid/content/Context;

    invoke-static {v5, v3, v2, v4}, Landroid/app/PendingIntent;->getService(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v2

    new-instance v3, Lw4/b$b;

    iget-object v4, p0, Ljg/e;->c:Landroid/content/Context;

    invoke-direct {v3, v4}, Lw4/b$b;-><init>(Landroid/content/Context;)V

    const v4, 0x7f120eed

    invoke-virtual {v3, v4}, Lw4/b$b;->r(I)Lw4/b$b;

    move-result-object v4

    iget-object v5, p0, Ljg/e;->c:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f120ee9

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    const-string v6, "batteryNoticeNew"

    invoke-virtual {v4, v6, v5}, Lw4/b$b;->e(Ljava/lang/String;Ljava/lang/String;)Lw4/b$b;

    move-result-object v4

    iget-object v5, p0, Ljg/e;->c:Landroid/content/Context;

    const v6, 0x7f1218e7

    invoke-virtual {v5, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lw4/b$b;->c(Ljava/lang/String;)Lw4/b$b;

    move-result-object v4

    invoke-virtual {v4, v2}, Lw4/b$b;->b(Landroid/app/PendingIntent;)Lw4/b$b;

    move-result-object v2

    const v4, 0x7f08089d

    invoke-virtual {v2, v4}, Lw4/b$b;->q(I)Lw4/b$b;

    move-result-object v2

    sget-boolean v5, Lmiui/os/Build;->IS_INTERNATIONAL_BUILD:Z

    if-eqz v5, :cond_0

    const v4, 0x7f08089e

    :cond_0
    invoke-virtual {v2, v4}, Lw4/b$b;->v(I)Lw4/b$b;

    move-result-object v2

    iget-object v4, p0, Ljg/e;->c:Landroid/content/Context;

    const v5, 0x7f1218e9

    invoke-virtual {v4, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Lw4/b$b;->h(Ljava/lang/CharSequence;)Lw4/b$b;

    move-result-object v2

    invoke-virtual {v2, v0}, Lw4/b$b;->g(Ljava/lang/CharSequence;)Lw4/b$b;

    move-result-object v0

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Lw4/b$b;->d(Z)Lw4/b$b;

    move-result-object v0

    invoke-virtual {v0, v1}, Lw4/b$b;->f(Landroid/app/PendingIntent;)Lw4/b$b;

    move-result-object v0

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lw4/b$b;->l(I)Lw4/b$b;

    move-result-object v0

    invoke-virtual {v0, v2}, Lw4/b$b;->j(Z)Lw4/b$b;

    move-result-object v0

    invoke-virtual {v0, v2}, Lw4/b$b;->i(Z)Lw4/b$b;

    invoke-virtual {v3}, Lw4/b$b;->a()Lw4/b;

    move-result-object v0

    invoke-virtual {v0}, Lw4/b;->I()V

    invoke-static {}, Lhd/a;->j0()V

    return-void
.end method

.method private R()V
    .locals 11

    iget-object v0, p0, Ljg/e;->c:Landroid/content/Context;

    const v1, 0x7f1218eb

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Landroid/content/Intent;

    iget-object v2, p0, Ljg/e;->c:Landroid/content/Context;

    invoke-static {}, Ldb/c;->b()Z

    move-result v3

    if-eqz v3, :cond_0

    const-class v3, Lcom/miui/powercenter/savemode/PowerSaveActivity;

    goto :goto_0

    :cond_0
    const-class v3, Lcom/miui/superpower/SuperPowerSettings;

    :goto_0
    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v2, "super_power_setting_enterway"

    const-string v3, "enter_superpower_notification"

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const/high16 v2, 0x10000000

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    iget-object v2, p0, Ljg/e;->c:Landroid/content/Context;

    const/4 v3, 0x0

    const/high16 v4, 0x4000000

    invoke-static {v2, v3, v1, v4}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v1

    new-instance v2, Landroid/content/Intent;

    iget-object v5, p0, Ljg/e;->c:Landroid/content/Context;

    const-class v6, Lcom/miui/powercenter/provider/PowerSaveService;

    invoke-direct {v2, v5, v6}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v5, "com.miui.powercenter.action.ENTERSUPERPOWER_FROMNOTIFICATION"

    invoke-virtual {v2, v5}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    iget-object v5, p0, Ljg/e;->c:Landroid/content/Context;

    invoke-static {v5, v3, v2, v4}, Landroid/app/PendingIntent;->getService(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v2

    new-instance v4, Lw4/b$b;

    iget-object v5, p0, Ljg/e;->c:Landroid/content/Context;

    invoke-direct {v4, v5}, Lw4/b$b;-><init>(Landroid/content/Context;)V

    const v5, 0x7f120eed

    invoke-virtual {v4, v5}, Lw4/b$b;->r(I)Lw4/b$b;

    move-result-object v5

    iget-object v6, p0, Ljg/e;->c:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f120ee9

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    const-string v7, "batteryNoticeNew"

    invoke-virtual {v5, v7, v6}, Lw4/b$b;->e(Ljava/lang/String;Ljava/lang/String;)Lw4/b$b;

    move-result-object v5

    iget-object v6, p0, Ljg/e;->c:Landroid/content/Context;

    const v7, 0x7f1218fc

    invoke-virtual {v6, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lw4/b$b;->c(Ljava/lang/String;)Lw4/b$b;

    move-result-object v5

    invoke-virtual {v5, v2}, Lw4/b$b;->b(Landroid/app/PendingIntent;)Lw4/b$b;

    move-result-object v2

    const v5, 0x7f08089f

    invoke-virtual {v2, v5}, Lw4/b$b;->q(I)Lw4/b$b;

    move-result-object v2

    sget-boolean v6, Lmiui/os/Build;->IS_INTERNATIONAL_BUILD:Z

    if-eqz v6, :cond_1

    const v5, 0x7f0808a0

    :cond_1
    invoke-virtual {v2, v5}, Lw4/b$b;->v(I)Lw4/b$b;

    move-result-object v2

    iget-object v5, p0, Ljg/e;->c:Landroid/content/Context;

    const v6, 0x7f1218ea

    const/4 v7, 0x1

    new-array v8, v7, [Ljava/lang/Object;

    const-wide/16 v9, 0x5

    invoke-static {v9, v10}, Lx4/i1;->a(J)Ljava/lang/String;

    move-result-object v9

    aput-object v9, v8, v3

    invoke-virtual {v5, v6, v8}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lw4/b$b;->h(Ljava/lang/CharSequence;)Lw4/b$b;

    move-result-object v2

    invoke-virtual {v2, v0}, Lw4/b$b;->g(Ljava/lang/CharSequence;)Lw4/b$b;

    move-result-object v0

    invoke-virtual {v0, v1}, Lw4/b$b;->f(Landroid/app/PendingIntent;)Lw4/b$b;

    move-result-object v0

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lw4/b$b;->l(I)Lw4/b$b;

    move-result-object v0

    invoke-virtual {v0, v7}, Lw4/b$b;->j(Z)Lw4/b$b;

    move-result-object v0

    invoke-virtual {v0, v7}, Lw4/b$b;->i(Z)Lw4/b$b;

    invoke-virtual {v4}, Lw4/b$b;->a()Lw4/b;

    move-result-object v0

    invoke-virtual {v0}, Lw4/b;->I()V

    invoke-static {}, Lhd/a;->j0()V

    return-void
.end method

.method private S()V
    .locals 7

    :try_start_0
    new-instance v0, Ljava/util/HashSet;

    const/4 v1, 0x4

    invoke-direct {v0, v1}, Ljava/util/HashSet;-><init>(I)V

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iget-object v1, p0, Ljg/e;->c:Landroid/content/Context;

    invoke-static {v1}, Lfe/a;->c(Landroid/content/Context;)Ljava/util/List;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    if-lez v2, :cond_1

    sget-object v2, Ljg/e;->v:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-interface {v1, v3}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v0, v3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    invoke-interface {v0}, Ljava/util/Set;->size()I

    move-result v1

    if-lez v1, :cond_6

    iget-object v1, p0, Ljg/e;->c:Landroid/content/Context;

    const-string v2, "activity"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/ActivityManager;

    invoke-virtual {v1}, Landroid/app/ActivityManager;->getRunningAppProcesses()Ljava/util/List;

    move-result-object v1

    if-eqz v1, :cond_5

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    if-lez v2, :cond_5

    new-instance v2, Ljava/util/HashSet;

    invoke-direct {v2, v0}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    invoke-interface {v0}, Ljava/util/Set;->clear()V

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_6

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/app/ActivityManager$RunningAppProcessInfo;

    iget v4, v3, Landroid/app/ActivityManager$RunningAppProcessInfo;->uid:I

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    const-string v5, "999"

    invoke-virtual {v4, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_2

    iget-object v4, v3, Landroid/app/ActivityManager$RunningAppProcessInfo;->pkgList:[Ljava/lang/String;

    if-eqz v4, :cond_2

    const/4 v4, 0x0

    :goto_1
    iget-object v5, v3, Landroid/app/ActivityManager$RunningAppProcessInfo;->pkgList:[Ljava/lang/String;

    array-length v6, v5

    if-ge v4, v6, :cond_4

    aget-object v5, v5, v4

    invoke-interface {v2, v5}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    iget-object v5, v3, Landroid/app/ActivityManager$RunningAppProcessInfo;->pkgList:[Ljava/lang/String;

    aget-object v5, v5, v4

    invoke-interface {v0, v5}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    iget-object v5, v3, Landroid/app/ActivityManager$RunningAppProcessInfo;->pkgList:[Ljava/lang/String;

    aget-object v5, v5, v4

    invoke-interface {v2, v5}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    :cond_3
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    :cond_4
    invoke-interface {v2}, Ljava/util/Set;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_2

    goto :goto_2

    :cond_5
    invoke-interface {v0}, Ljava/util/Set;->clear()V

    :cond_6
    :goto_2
    const-string v1, "SuperPowerSaveManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "restart apps store : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Ljg/e;->r:Landroid/content/SharedPreferences;

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    const-string v2, "pref_key_restart_apps"

    invoke-interface {v1, v2, v0}, Landroid/content/SharedPreferences$Editor;->putStringSet(Ljava/lang/String;Ljava/util/Set;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_3

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    :goto_3
    return-void
.end method

.method private T(ZZZ)V
    .locals 17

    move-object/from16 v1, p0

    move/from16 v0, p1

    move/from16 v2, p2

    move/from16 v3, p3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "bSuperPower("

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v5, ")"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, "-fromuser("

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, "-powerpercent("

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v6, v1, Ljg/e;->i:I

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, "-userenterstate("

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v6, v1, Ljg/e;->n:Z

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, "-userleavestate("

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v6, v1, Ljg/e;->o:Z

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, "leave "

    const-string v9, "pref_key_superpower_user_leavesuperpower"

    const-string v10, "pref_key_superpower_user_entersuperpower"

    const-string v11, "enter "

    const-string v12, "com.miui.superpower.SuperPowerLauncherActivity"

    const-string v13, "com.miui.securityadd"

    const/4 v14, 0x0

    const-string v15, "SuperPowerSaveManager"

    const/4 v6, 0x1

    if-eqz v0, :cond_6

    iget-object v7, v1, Ljg/e;->j:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v7}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v7

    if-nez v7, :cond_6

    invoke-static {}, Lx4/p0;->d()Lx4/p0;

    move-result-object v0

    iget-object v5, v1, Ljg/e;->c:Landroid/content/Context;

    invoke-virtual {v0, v5}, Lx4/p0;->j(Landroid/content/Context;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "switchSuperPower enter super power : "

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v15, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lde/i;->M()Lde/i;

    move-result-object v0

    invoke-virtual {v0}, Lde/i;->F()V

    iget-object v0, v1, Ljg/e;->c:Landroid/content/Context;

    if-eqz v3, :cond_0

    invoke-static {v0}, Lme/w;->f(Landroid/content/Context;)V

    goto :goto_0

    :cond_0
    invoke-static {v0, v6}, Lme/w;->v0(Landroid/content/Context;I)V

    :goto_0
    invoke-direct {v1, v6}, Ljg/e;->V(Z)V

    iget-object v0, v1, Ljg/e;->c:Landroid/content/Context;

    invoke-static {v0}, Ljg/a;->b(Landroid/content/Context;)Landroid/content/pm/ResolveInfo;

    move-result-object v0

    iput-object v0, v1, Ljg/e;->h:Landroid/content/pm/ResolveInfo;

    invoke-static {}, Lpg/a;->b()Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "split screen mode exit"

    invoke-static {v15, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lpg/a;->a()V

    :cond_1
    const-wide/16 v4, 0x7d0

    if-nez v3, :cond_2

    iget-object v0, v1, Ljg/e;->c:Landroid/content/Context;

    invoke-static {v0}, Lce/g;->F(Landroid/content/Context;)Z

    move-result v7

    invoke-static {v0, v7}, Lcom/miui/superpower/SuperPowerProgressActivity;->o0(Landroid/content/Context;Z)V

    iget-object v0, v1, Ljg/e;->c:Landroid/content/Context;

    new-array v7, v6, [I

    const v16, 0x7f120eed

    aput v16, v7, v14

    invoke-static {v0, v7}, Lde/j;->m(Landroid/content/Context;[I)V

    invoke-static {}, Lme/q;->k()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, v1, Ljg/e;->c:Landroid/content/Context;

    invoke-static {v0, v14}, Lpg/i;->L(Landroid/content/Context;I)V

    iget-object v0, v1, Ljg/e;->e:Landroid/os/Handler;

    new-instance v7, Ljg/e$i;

    invoke-direct {v7, v1}, Ljg/e$i;-><init>(Ljg/e;)V

    invoke-virtual {v0, v7, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_2
    iget-object v0, v1, Ljg/e;->c:Landroid/content/Context;

    invoke-static {v0, v3}, Lme/w;->u0(Landroid/content/Context;I)V

    invoke-direct/range {p0 .. p0}, Ljg/e;->S()V

    new-instance v0, Ljava/util/ArrayList;

    iget-object v7, v1, Ljg/e;->q:Lmiui/security/SecurityManager;

    invoke-virtual {v7, v14}, Lmiui/security/SecurityManager;->getAllPrivacyApps(I)Ljava/util/List;

    move-result-object v7

    invoke-direct {v0, v7}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    const-string v7, "pref_key_applock_hidden_list_owner"

    invoke-static {v7, v0}, Lr4/a;->s(Ljava/lang/String;Ljava/util/ArrayList;)V

    new-instance v0, Ljava/util/ArrayList;

    iget-object v7, v1, Ljg/e;->q:Lmiui/security/SecurityManager;

    const/16 v14, 0x3e7

    invoke-virtual {v7, v14}, Lmiui/security/SecurityManager;->getAllPrivacyApps(I)Ljava/util/List;

    move-result-object v7

    invoke-direct {v0, v7}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    const-string v7, "pref_key_applock_hidden_list_xspace"

    invoke-static {v7, v0}, Lr4/a;->s(Ljava/lang/String;Ljava/util/ArrayList;)V

    iget-object v0, v1, Ljg/e;->k:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :goto_1
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    move-object v14, v0

    check-cast v14, Llg/d;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v14}, Llg/d;->name()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v15, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :try_start_0
    instance-of v0, v14, Llg/l;

    if-nez v0, :cond_3

    invoke-interface {v14, v2}, Llg/d;->b(Z)V

    move-object/from16 p1, v7

    goto :goto_3

    :cond_3
    iget-object v0, v1, Ljg/e;->e:Landroid/os/Handler;

    new-instance v4, Ljg/e$j;

    invoke-direct {v4, v1, v14, v2}, Ljg/e$j;-><init>(Ljg/e;Llg/d;Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    move-object/from16 p1, v7

    const-wide/16 v6, 0x1f4

    :try_start_1
    invoke-virtual {v0, v4, v6, v7}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_3

    :catch_0
    move-exception v0

    goto :goto_2

    :catch_1
    move-exception v0

    move-object/from16 p1, v7

    :goto_2
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "enter superpower excepiton : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v15, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_3
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v14}, Llg/d;->name()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v15, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v7, p1

    const-wide/16 v4, 0x7d0

    const/4 v6, 0x1

    goto :goto_1

    :cond_4
    :try_start_2
    new-instance v0, Landroid/content/ComponentName;

    invoke-direct {v0, v13, v12}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v4, v1, Ljg/e;->c:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v4

    const/4 v5, 0x1

    invoke-virtual {v4, v0, v5, v5}, Landroid/content/pm/PackageManager;->setComponentEnabledSetting(Landroid/content/ComponentName;II)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_4

    :catch_2
    move-exception v0

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "enter setaddhomeenable exception : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v15, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_4
    invoke-direct/range {p0 .. p0}, Ljg/e;->N()V

    const/4 v4, 0x1

    invoke-direct {v1, v4}, Ljg/e;->P(Z)V

    invoke-direct {v1, v4}, Ljg/e;->d(Z)V

    if-eqz v2, :cond_5

    iget v0, v1, Ljg/e;->i:I

    const/16 v2, 0x32

    if-lt v0, v2, :cond_5

    iput-boolean v4, v1, Ljg/e;->n:Z

    iput-boolean v4, v1, Ljg/e;->o:Z

    iget-object v0, v1, Ljg/e;->r:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0, v10, v4}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0, v9, v4}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    :cond_5
    iget-object v0, v1, Ljg/e;->j:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0, v4}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    iget-object v0, v1, Ljg/e;->e:Landroid/os/Handler;

    new-instance v2, Ljg/e$k;

    invoke-direct {v2, v1, v3}, Ljg/e$k;-><init>(Ljg/e;Z)V

    const-wide/16 v3, 0x7d0

    invoke-virtual {v0, v2, v3, v4}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Ljg/e;->L(Z)V

    iget-object v0, v1, Ljg/e;->c:Landroid/content/Context;

    invoke-static {v0}, Lme/w;->j(Landroid/content/Context;)I

    move-result v0

    invoke-static {v0}, Lpg/e;->g(I)V

    iget-object v0, v1, Ljg/e;->c:Landroid/content/Context;

    invoke-static {v0}, Lpg/c;->p(Landroid/content/Context;)Lpg/c;

    move-result-object v0

    invoke-virtual {v0}, Lpg/c;->t()V

    goto/16 :goto_9

    :cond_6
    if-nez v0, :cond_b

    iget-object v0, v1, Ljg/e;->j:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-eqz v0, :cond_b

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "switchSuperPower leave super power : "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v15, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v3, 0x0

    invoke-direct {v1, v3}, Ljg/e;->P(Z)V

    invoke-direct {v1, v3}, Ljg/e;->d(Z)V

    invoke-direct/range {p0 .. p0}, Ljg/e;->J()V

    iget-object v0, v1, Ljg/e;->r:Landroid/content/SharedPreferences;

    const-string v4, "SP_NIGHT_MODE_ENABLED"

    const/4 v5, 0x1

    invoke-interface {v0, v4, v5}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    iget-object v4, v1, Ljg/e;->c:Landroid/content/Context;

    invoke-static {v0, v4}, Llg/j;->P(ILandroid/content/Context;)V

    iget-object v0, v1, Ljg/e;->c:Landroid/content/Context;

    invoke-static {v0, v3}, Lme/w;->v0(Landroid/content/Context;I)V

    invoke-direct {v1, v3}, Ljg/e;->O(I)V

    iget-object v0, v1, Ljg/e;->c:Landroid/content/Context;

    invoke-static {v0}, Lme/w;->q(Landroid/content/Context;)I

    move-result v0

    if-ne v0, v5, :cond_7

    iget-object v0, v1, Ljg/e;->c:Landroid/content/Context;

    invoke-static {v0}, Lme/w;->b(Landroid/content/Context;)V

    :cond_7
    :try_start_3
    new-instance v0, Landroid/content/ComponentName;

    invoke-direct {v0, v13, v12}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v3, v1, Ljg/e;->c:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    const/4 v4, 0x2

    const/4 v5, 0x1

    invoke-virtual {v3, v0, v4, v5}, Landroid/content/pm/PackageManager;->setComponentEnabledSetting(Landroid/content/ComponentName;II)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_3

    goto :goto_5

    :catch_3
    move-exception v0

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "enter setaddhomedisable exception : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v15, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_5
    iget-object v0, v1, Ljg/e;->k:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_6
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_9

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    move-object v4, v0

    check-cast v4, Llg/d;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v4}, Llg/d;->name()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v15, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :try_start_4
    instance-of v0, v4, Llg/j;

    if-eqz v0, :cond_8

    iget-object v0, v1, Ljg/e;->e:Landroid/os/Handler;

    if-eqz v0, :cond_8

    new-instance v5, Ljg/e$l;

    invoke-direct {v5, v1, v4}, Ljg/e$l;-><init>(Ljg/e;Llg/d;)V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_5

    const-wide/16 v6, 0x1f4

    :try_start_5
    invoke-virtual {v0, v5, v6, v7}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_8

    :cond_8
    const-wide/16 v6, 0x1f4

    invoke-interface {v4}, Llg/d;->e()V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_4

    goto :goto_8

    :catch_4
    move-exception v0

    goto :goto_7

    :catch_5
    move-exception v0

    const-wide/16 v6, 0x1f4

    :goto_7
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "leave superpower excepiton : "

    invoke-virtual {v5, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v15, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_8
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v4}, Llg/d;->name()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v15, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_6

    :cond_9
    iget-object v0, v1, Ljg/e;->e:Landroid/os/Handler;

    new-instance v3, Ljg/e$m;

    invoke-direct {v3, v1}, Ljg/e$m;-><init>(Ljg/e;)V

    const-wide/16 v4, 0x3e8

    invoke-virtual {v0, v3, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    if-eqz v2, :cond_a

    iget v0, v1, Ljg/e;->i:I

    const/4 v2, 0x5

    if-gt v0, v2, :cond_a

    const/4 v2, 0x1

    iput-boolean v2, v1, Ljg/e;->n:Z

    iput-boolean v2, v1, Ljg/e;->o:Z

    iget-object v0, v1, Ljg/e;->r:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0, v10, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0, v9, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    :cond_a
    iget-object v0, v1, Ljg/e;->j:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    iget-object v0, v1, Ljg/e;->c:Landroid/content/Context;

    invoke-static {v0}, Lme/w;->j(Landroid/content/Context;)I

    move-result v0

    invoke-static {v0}, Lpg/e;->f(I)V

    iget-object v0, v1, Ljg/e;->c:Landroid/content/Context;

    invoke-static {v0}, Lpg/c;->p(Landroid/content/Context;)Lpg/c;

    move-result-object v0

    invoke-virtual {v0}, Lpg/c;->t()V

    invoke-direct {v1, v2}, Ljg/e;->V(Z)V

    invoke-static {}, Lgd/c;->F0()Z

    move-result v0

    if-eqz v0, :cond_c

    iget-object v0, v1, Ljg/e;->c:Landroid/content/Context;

    invoke-static {v0}, Lie/a;->f(Landroid/content/Context;)V

    goto :goto_9

    :cond_b
    const-string v0, "-mIsSuperSaveMode("

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, v1, Ljg/e;->j:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "switchSuperPower state error : "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v15, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_c
    :goto_9
    return-void
.end method

.method private V(Z)V
    .locals 4

    iget-object v0, p0, Ljg/e;->r:Landroid/content/SharedPreferences;

    if-eqz v0, :cond_3

    invoke-static {}, Lx4/y;->f()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const-string v0, "pref_key_hide_gesture_line"

    const-string v1, "hide_gesture_line"

    const/4 v2, 0x0

    if-eqz p1, :cond_2

    iget-object p1, p0, Ljg/e;->c:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    invoke-static {p1, v1, v2}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p1

    const/4 v3, 0x1

    if-nez p1, :cond_1

    move v2, v3

    :cond_1
    iget-object p1, p0, Ljg/e;->r:Landroid/content/SharedPreferences;

    invoke-interface {p1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    invoke-interface {p1, v0, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    if-eqz v2, :cond_3

    iget-object p1, p0, Ljg/e;->c:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    invoke-static {p1, v1, v3}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_0

    :cond_2
    iget-object p1, p0, Ljg/e;->r:Landroid/content/SharedPreferences;

    invoke-interface {p1, v0, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result p1

    if-eqz p1, :cond_3

    iget-object p1, p0, Ljg/e;->c:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    invoke-static {p1, v1, v2}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    :cond_3
    :goto_0
    return-void
.end method

.method public static synthetic a(Ljg/e;)V
    .locals 0

    invoke-direct {p0}, Ljg/e;->z()V

    return-void
.end method

.method public static synthetic b(Ljg/e;ZZ)V
    .locals 0

    invoke-direct {p0, p1, p2}, Ljg/e;->F(ZZ)V

    return-void
.end method

.method private c(Z)V
    .locals 8

    const-string v0, "SuperPowerSaveManager"

    :try_start_0
    iget-object v1, p0, Ljg/e;->c:Landroid/content/Context;

    const-string v2, "MiuiWifiService"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    const-string v2, "android.net.wifi.MiuiWifiManager"

    invoke-static {v2}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2

    const-string v3, "setAntHalf"

    const/4 v4, 0x1

    new-array v5, v4, [Ljava/lang/Class;

    sget-object v6, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    const/4 v7, 0x0

    aput-object v6, v5, v7

    invoke-virtual {v2, v3, v5}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    new-array v3, v4, [Ljava/lang/Object;

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    move v4, v7

    :goto_0
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v7

    invoke-virtual {v2, v1, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setWifiPowerSaveStatus: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p1

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setWifiPowerSaveStatus exception : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_1
    return-void
.end method

.method private d(Z)V
    .locals 8

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const-string v1, "SuperPowerSaveManager"

    const/16 v2, 0x1e

    if-ge v0, v2, :cond_0

    const-string p1, "setWifiSarStatus: don\'t support below SDK API 30 "

    invoke-static {v1, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    sget-boolean v0, Lmiui/os/Build;->IS_INTERNATIONAL_BUILD:Z

    if-eqz v0, :cond_1

    return-void

    :cond_1
    :try_start_0
    iget-object v0, p0, Ljg/e;->c:Landroid/content/Context;

    const-string v2, "MiuiWifiService"

    invoke-virtual {v0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    const-string v2, "android.net.wifi.MiuiWifiManager"

    invoke-static {v2}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2

    const-string v3, "setSARLimit"

    const/4 v4, 0x1

    new-array v5, v4, [Ljava/lang/Class;

    sget-object v6, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    const/4 v7, 0x0

    aput-object v6, v5, v7

    invoke-virtual {v2, v3, v5}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    new-array v3, v4, [Ljava/lang/Object;

    if-eqz p1, :cond_2

    const/4 v4, 0x6

    goto :goto_0

    :cond_2
    const/16 v4, 0x64

    :goto_0
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v7

    invoke-virtual {v2, v0, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setWifiSarStatus: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setWifiSarStatus exception: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_1
    return-void
.end method

.method static synthetic e(Ljg/e;)Ljava/util/concurrent/atomic/AtomicBoolean;
    .locals 0

    iget-object p0, p0, Ljg/e;->l:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-object p0
.end method

.method static synthetic f(Ljg/e;)Ljava/util/List;
    .locals 0

    iget-object p0, p0, Ljg/e;->k:Ljava/util/List;

    return-object p0
.end method

.method static synthetic g(Ljg/e;Z)Z
    .locals 0

    iput-boolean p1, p0, Ljg/e;->o:Z

    return p1
.end method

.method static synthetic h(Ljg/e;ZZZ)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Ljg/e;->T(ZZZ)V

    return-void
.end method

.method static synthetic i(Ljg/e;I)V
    .locals 0

    invoke-direct {p0, p1}, Ljg/e;->O(I)V

    return-void
.end method

.method static synthetic j(Ljg/e;)V
    .locals 0

    invoke-direct {p0}, Ljg/e;->K()V

    return-void
.end method

.method static synthetic k(Ljg/e;ZII)Z
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Ljg/e;->D(ZII)Z

    move-result p0

    return p0
.end method

.method static synthetic l(Ljg/e;ZII)Z
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Ljg/e;->C(ZII)Z

    move-result p0

    return p0
.end method

.method static synthetic m(Ljg/e;Z)V
    .locals 0

    invoke-direct {p0, p1}, Ljg/e;->c(Z)V

    return-void
.end method

.method static synthetic n(Ljg/e;)Landroid/content/SharedPreferences;
    .locals 0

    iget-object p0, p0, Ljg/e;->r:Landroid/content/SharedPreferences;

    return-object p0
.end method

.method static synthetic o(Ljg/e;)I
    .locals 0

    iget p0, p0, Ljg/e;->i:I

    return p0
.end method

.method static synthetic p(Ljg/e;)Ljava/util/concurrent/atomic/AtomicBoolean;
    .locals 0

    iget-object p0, p0, Ljg/e;->j:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-object p0
.end method

.method static synthetic q(Ljg/e;)Landroid/os/Handler;
    .locals 0

    iget-object p0, p0, Ljg/e;->e:Landroid/os/Handler;

    return-object p0
.end method

.method static synthetic r(Ljg/e;)Ljava/util/concurrent/atomic/AtomicBoolean;
    .locals 0

    iget-object p0, p0, Ljg/e;->m:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-object p0
.end method

.method static synthetic s(Ljg/e;Z)Z
    .locals 0

    iput-boolean p1, p0, Ljg/e;->n:Z

    return p1
.end method

.method static synthetic t(Ljg/e;)V
    .locals 0

    invoke-direct {p0}, Ljg/e;->v()V

    return-void
.end method

.method static synthetic u(Ljg/e;)Landroid/content/Context;
    .locals 0

    iget-object p0, p0, Ljg/e;->c:Landroid/content/Context;

    return-object p0
.end method

.method private v()V
    .locals 5

    const-string v0, "com.miui.securityadd"

    const-string v1, "SuperPowerSaveManager"

    :try_start_0
    iget-object v2, p0, Ljg/e;->c:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    iget-object v3, p0, Ljg/e;->g:Landroid/content/Intent;

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/content/pm/PackageManager;->resolveActivity(Landroid/content/Intent;I)Landroid/content/pm/ResolveInfo;

    move-result-object v2

    iget-object v2, v2, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v2, v2, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const-string v2, "not superpower mode but home not restore"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0}, Ljg/e;->J()V

    invoke-direct {p0, v4}, Ljg/e;->O(I)V

    :cond_0
    new-instance v2, Landroid/content/ComponentName;

    const-string v3, "com.miui.superpower.SuperPowerLauncherActivity"

    invoke-direct {v2, v0, v3}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Ljg/e;->c:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const/4 v3, 0x2

    const/4 v4, 0x1

    invoke-virtual {v0, v2, v3, v4}, Landroid/content/pm/PackageManager;->setComponentEnabledSetting(Landroid/content/ComponentName;II)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "checkoutRestoreHome exception : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method

.method public static y(Landroid/content/Context;)Ljg/e;
    .locals 2

    sget-object v0, Ljg/e;->w:Ljg/e;

    if-nez v0, :cond_1

    const-class v0, Ljg/e;

    monitor-enter v0

    :try_start_0
    sget-object v1, Ljg/e;->w:Ljg/e;

    if-nez v1, :cond_0

    new-instance v1, Ljg/e;

    invoke-direct {v1, p0}, Ljg/e;-><init>(Landroid/content/Context;)V

    sput-object v1, Ljg/e;->w:Ljg/e;

    :cond_0
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0

    :cond_1
    :goto_0
    sget-object p0, Ljg/e;->w:Ljg/e;

    return-object p0
.end method

.method private z()V
    .locals 2

    const-string v0, "SuperPowerSaveManager"

    const-string v1, "handleLowBatterySuperPowerPolicy"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lx4/m1;->b()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Ljg/e;->c:Landroid/content/Context;

    invoke-static {v0}, Lx4/m1;->a(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-virtual {p0, v1, v0}, Ljg/e;->W(ZZ)V

    invoke-static {v1}, Lpg/d;->d(Z)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Ljg/e;->c:Landroid/content/Context;

    invoke-static {v0}, Lce/g;->F(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-direct {p0}, Ljg/e;->Q()V

    goto :goto_0

    :cond_1
    invoke-direct {p0}, Ljg/e;->R()V

    :goto_0
    return-void
.end method


# virtual methods
.method public H(ZII)Z
    .locals 4

    iput p2, p0, Ljg/e;->i:I

    iget-object v0, p0, Ljg/e;->j:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    const-string v1, "SuperPowerSaveManager"

    if-eqz v0, :cond_0

    if-eq p2, p3, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "powerStateChanged : "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    invoke-direct {p0, p1, p2, p3}, Ljg/e;->D(ZII)Z

    move-result v0

    const/4 v2, 0x0

    if-eqz v0, :cond_1

    const-string v0, "powerStateChanged power more than 50 autoleave sp"

    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Ljg/e;->e:Landroid/os/Handler;

    new-instance v1, Ljg/e$b;

    invoke-direct {v1, p0, p1, p2, p3}, Ljg/e$b;-><init>(Ljg/e;ZII)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_1

    :cond_1
    invoke-direct {p0, p1, p2, p3}, Ljg/e;->C(ZII)Z

    move-result v0

    const/4 v3, 0x1

    if-eqz v0, :cond_2

    const-string v0, "powerStateChanged power less than 10 autoenter sp"

    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Ljg/e;->e:Landroid/os/Handler;

    new-instance v1, Ljg/e$c;

    invoke-direct {v1, p0, p1, p2, p3}, Ljg/e$c;-><init>(Ljg/e;ZII)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return v3

    :cond_2
    const/4 v0, 0x5

    if-nez p1, :cond_3

    if-gt p2, v0, :cond_3

    if-le p3, v0, :cond_3

    iget-object p1, p0, Ljg/e;->j:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {p1}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result p1

    if-nez p1, :cond_3

    const-string p1, "powerStateChanged show notification"

    invoke-static {v1, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p1, p0, Ljg/e;->e:Landroid/os/Handler;

    new-instance p2, Ljg/c;

    invoke-direct {p2, p0}, Ljg/c;-><init>(Ljg/e;)V

    invoke-virtual {p1, p2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return v3

    :cond_3
    iget-boolean p1, p0, Ljg/e;->o:Z

    if-eqz p1, :cond_4

    if-le p2, v0, :cond_4

    iput-boolean v2, p0, Ljg/e;->o:Z

    const-string p1, "powerStateChanged reset user leave"

    :goto_0
    invoke-static {v1, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :cond_4
    iget-boolean p1, p0, Ljg/e;->n:Z

    const/16 v3, 0x32

    if-eqz p1, :cond_5

    if-ge p2, v3, :cond_5

    iput-boolean v2, p0, Ljg/e;->n:Z

    const-string p1, "powerStateChanged reset user enter"

    goto :goto_0

    :cond_5
    if-le p2, v0, :cond_6

    if-gt p3, v3, :cond_6

    iget-object p1, p0, Ljg/e;->p:Landroid/app/NotificationManager;

    const p2, 0x7f120eed

    invoke-virtual {p1, p2}, Landroid/app/NotificationManager;->cancel(I)V

    :cond_6
    :goto_1
    return v2
.end method

.method public L(Z)V
    .locals 2

    invoke-static {}, Lx4/y;->f()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Ljg/e;->r:Landroid/content/SharedPreferences;

    if-eqz v0, :cond_1

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "PREF_KEY_EXTREME_SHUTDOWN_STATE"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    :cond_1
    return-void
.end method

.method public U(ZZ)V
    .locals 2

    iget-object v0, p0, Ljg/e;->e:Landroid/os/Handler;

    new-instance v1, Ljg/e$h;

    invoke-direct {v1, p0, p1, p2}, Ljg/e$h;-><init>(Ljg/e;ZZ)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public W(ZZ)V
    .locals 2

    iget-object v0, p0, Ljg/e;->e:Landroid/os/Handler;

    new-instance v1, Ljg/d;

    invoke-direct {v1, p0, p1, p2}, Ljg/d;-><init>(Ljg/e;ZZ)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public w()Z
    .locals 3

    invoke-static {}, Lx4/y;->f()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    iget-object v0, p0, Ljg/e;->r:Landroid/content/SharedPreferences;

    if-eqz v0, :cond_1

    const-string v2, "PREF_KEY_EXTREME_SHUTDOWN_STATE"

    invoke-interface {v0, v2, v1}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v1, 0x1

    :cond_1
    return v1
.end method

.method public x()Landroid/os/Handler;
    .locals 1

    iget-object v0, p0, Ljg/e;->e:Landroid/os/Handler;

    return-object v0
.end method
