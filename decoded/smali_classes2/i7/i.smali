.class public Li7/i;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Li7/i$f;
    }
.end annotation


# static fields
.field private static i:Li7/i;


# instance fields
.field private final a:Landroid/os/Handler;

.field private final b:Landroid/content/pm/PackageManager;

.field private c:Z

.field private d:Z

.field private e:Lmiuix/appcompat/app/AlertDialog;

.field private f:Ljava/util/concurrent/CopyOnWriteArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/CopyOnWriteArrayList<",
            "Li7/i$f;",
            ">;"
        }
    .end annotation
.end field

.field private final g:Landroid/content/BroadcastReceiver;

.field private final h:Landroid/database/ContentObserver;


# direct methods
.method private constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Li7/i;->a:Landroid/os/Handler;

    new-instance v1, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v1}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v1, p0, Li7/i;->f:Ljava/util/concurrent/CopyOnWriteArrayList;

    new-instance v1, Li7/i$a;

    invoke-direct {v1, p0}, Li7/i$a;-><init>(Li7/i;)V

    iput-object v1, p0, Li7/i;->g:Landroid/content/BroadcastReceiver;

    new-instance v1, Li7/i$b;

    invoke-direct {v1, p0, v0}, Li7/i$b;-><init>(Li7/i;Landroid/os/Handler;)V

    iput-object v1, p0, Li7/i;->h:Landroid/database/ContentObserver;

    invoke-static {}, Lcom/miui/securitycenter/Application;->A()Lcom/miui/securitycenter/Application;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    iput-object v0, p0, Li7/i;->b:Landroid/content/pm/PackageManager;

    return-void
.end method

.method private C()V
    .locals 2

    const-string v0, "key_game_award_notify"

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lr4/a;->n(Ljava/lang/String;Z)V

    return-void
.end method

.method private D(Landroid/content/Context;Ljava/lang/String;Lmiuix/appcompat/app/AlertDialog;Landroid/text/SpannableStringBuilder;)V
    .locals 4

    new-instance v0, Li7/i$e;

    invoke-direct {v0, p0, p1, p2, p3}, Li7/i$e;-><init>(Li7/i;Landroid/content/Context;Ljava/lang/String;Lmiuix/appcompat/app/AlertDialog;)V

    :try_start_0
    invoke-virtual {p4}, Landroid/text/SpannableStringBuilder;->length()I

    move-result p2

    const-class p3, Landroid/text/style/URLSpan;

    const/4 v1, 0x0

    invoke-virtual {p4, v1, p2, p3}, Landroid/text/SpannableStringBuilder;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object p2

    check-cast p2, [Landroid/text/style/URLSpan;

    aget-object p2, p2, v1

    invoke-virtual {p4, p2}, Landroid/text/SpannableStringBuilder;->getSpanStart(Ljava/lang/Object;)I

    move-result p3

    invoke-virtual {p4, p2}, Landroid/text/SpannableStringBuilder;->getSpanEnd(Ljava/lang/Object;)I

    move-result v1

    invoke-virtual {p4, p2}, Landroid/text/SpannableStringBuilder;->getSpanFlags(Ljava/lang/Object;)I

    move-result v2

    invoke-virtual {p4, v0, p3, v1, v2}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    new-instance v0, Landroid/text/style/ForegroundColorSpan;

    const v3, 0x7f0601c5

    invoke-virtual {p1, v3}, Landroid/content/Context;->getColor(I)I

    move-result p1

    invoke-direct {v0, p1}, Landroid/text/style/ForegroundColorSpan;-><init>(I)V

    invoke-virtual {p4, v0, p3, v1, v2}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    invoke-virtual {p4, p2}, Landroid/text/SpannableStringBuilder;->removeSpan(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    const-string p2, "PreDownloadUtils"

    const-string p3, "setClickSpan error "

    invoke-static {p2, p3, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    return-void
.end method

.method private G(I)V
    .locals 1

    const-string v0, "last_pre_download_game_nums"

    invoke-static {v0, p1}, Lr4/a;->p(Ljava/lang/String;I)V

    return-void
.end method

.method private static H(Z)V
    .locals 1

    const-string v0, "key_predownload_dialog"

    invoke-static {v0, p0}, Lr4/a;->n(Ljava/lang/String;Z)V

    return-void
.end method

.method private K(Landroid/content/Context;Ljava/lang/String;J)V
    .locals 8

    invoke-static {}, Lef/z;->d()Lef/z;

    move-result-object v0

    new-instance v7, Li7/g;

    move-object v1, v7

    move-object v2, p0

    move-object v3, p2

    move-wide v4, p3

    move-object v6, p1

    invoke-direct/range {v1 .. v6}, Li7/g;-><init>(Li7/i;Ljava/lang/String;JLandroid/content/Context;)V

    invoke-virtual {v0, v7}, Lef/z;->b(Ljava/lang/Runnable;)V

    return-void
.end method

.method private L(Ljava/lang/String;JLandroid/content/Context;)V
    .locals 6

    long-to-float v0, p2

    const/high16 v1, 0x44800000    # 1024.0f

    div-float/2addr v0, v1

    div-float/2addr v0, v1

    const/high16 v2, 0x3f800000    # 1.0f

    cmpg-float v2, v0, v2

    const-string v3, "PreDownloadUtils"

    if-gez v2, :cond_0

    :try_start_0
    const-string p1, "increment is too small!"

    invoke-static {v3, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    iget-object v2, p0, Li7/i;->b:Landroid/content/pm/PackageManager;

    const/16 v4, 0x80

    invoke-virtual {v2, p1, v4}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object p1

    iget-object v2, p0, Li7/i;->b:Landroid/content/pm/PackageManager;

    invoke-virtual {p1, v2}, Landroid/content/pm/PackageItemInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    const v2, 0x7f120a95

    cmpl-float v4, v0, v1

    if-ltz v4, :cond_1

    const v2, 0x7f120a94

    div-float/2addr v0, v1

    :cond_1
    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v4, 0x0

    const-string v5, "xliff"

    aput-object v5, v1, v4

    const/4 v4, 0x1

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    aput-object v0, v1, v4

    invoke-virtual {p4, v2, v1}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p4, p1, v0}, La8/l1;->l(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p4, "show free time download push! increment : "

    invoke-virtual {p1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v3, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "showPushIfIncrementLargeEnough fail "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v3, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method

.method public static synthetic a(Landroid/content/DialogInterface;I)V
    .locals 0

    invoke-static {p0, p1}, Li7/i;->v(Landroid/content/DialogInterface;I)V

    return-void
.end method

.method public static synthetic b(Li7/i;Ljava/lang/String;JLandroid/content/Context;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3, p4}, Li7/i;->w(Ljava/lang/String;JLandroid/content/Context;)V

    return-void
.end method

.method public static synthetic c(Li7/i;)V
    .locals 0

    invoke-direct {p0}, Li7/i;->u()V

    return-void
.end method

.method static synthetic d(Li7/i;)Z
    .locals 0

    iget-boolean p0, p0, Li7/i;->c:Z

    return p0
.end method

.method static synthetic e(Li7/i;Landroid/content/Context;Ljava/lang/String;J)V
    .locals 0

    invoke-direct {p0, p1, p2, p3, p4}, Li7/i;->K(Landroid/content/Context;Ljava/lang/String;J)V

    return-void
.end method

.method static synthetic f(Li7/i;)V
    .locals 0

    invoke-direct {p0}, Li7/i;->q()V

    return-void
.end method

.method static synthetic g(Li7/i;)V
    .locals 0

    invoke-direct {p0}, Li7/i;->z()V

    return-void
.end method

.method static synthetic h(Li7/i;)V
    .locals 0

    invoke-direct {p0}, Li7/i;->C()V

    return-void
.end method

.method static synthetic i(Z)V
    .locals 0

    invoke-static {p0}, Li7/i;->H(Z)V

    return-void
.end method

.method static synthetic j(Landroid/content/Context;Ljava/lang/String;)V
    .locals 0

    invoke-static {p0, p1}, Li7/i;->x(Landroid/content/Context;Ljava/lang/String;)V

    return-void
.end method

.method public static declared-synchronized l()Li7/i;
    .locals 2

    const-class v0, Li7/i;

    monitor-enter v0

    :try_start_0
    sget-object v1, Li7/i;->i:Li7/i;

    if-nez v1, :cond_0

    new-instance v1, Li7/i;

    invoke-direct {v1}, Li7/i;-><init>()V

    sput-object v1, Li7/i;->i:Li7/i;

    :cond_0
    sget-object v1, Li7/i;->i:Li7/i;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method private m()I
    .locals 2

    const-string v0, "last_pre_download_game_nums"

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lr4/a;->h(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method private p()Z
    .locals 2

    const-string v0, "key_game_award_notify"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lr4/a;->e(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method private q()V
    .locals 8

    :try_start_0
    iget-boolean v0, p0, Li7/i;->d:Z

    if-eqz v0, :cond_0

    const-string v0, "PreDownloadUtils"

    const-string v1, "It has registed monitor: "

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    invoke-virtual {p0}, Li7/i;->B()V

    new-instance v4, Landroid/content/IntentFilter;

    invoke-direct {v4}, Landroid/content/IntentFilter;-><init>()V

    const-string v0, "android.intent.action.joyose.predownload.COMPLETE"

    invoke-virtual {v4, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v0, "android.intent.action.joyose.predownload.UPDATE"

    invoke-virtual {v4, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    invoke-static {}, Lcom/miui/securitycenter/Application;->A()Lcom/miui/securitycenter/Application;

    move-result-object v2

    iget-object v3, p0, Li7/i;->g:Landroid/content/BroadcastReceiver;

    const-string v5, "com.xiaomi.joyose.permission.predownload"

    const/4 v6, 0x0

    const/4 v7, 0x2

    invoke-static/range {v2 .. v7}, Lx4/v;->n(Landroid/content/Context;Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;I)Landroid/content/Intent;

    const/4 v0, 0x1

    iput-boolean v0, p0, Li7/i;->d:Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void
.end method

.method private static s()Z
    .locals 2

    const-string v0, "key_predownload_dialog"

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lr4/a;->e(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public static final t(Landroid/content/Context;)Z
    .locals 3

    sget-boolean v0, Lmiui/os/Build;->IS_INTERNATIONAL_BUILD:Z

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string v0, "predownload_cloud_enable"

    invoke-static {p0, v0, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p0

    if-ne p0, v1, :cond_0

    goto :goto_0

    :cond_0
    move v1, v2

    :goto_0
    return v1
.end method

.method private synthetic u()V
    .locals 4

    invoke-direct {p0}, Li7/i;->m()I

    move-result v0

    invoke-virtual {p0}, Li7/i;->r()Z

    move-result v1

    invoke-static {}, Li7/i;->l()Li7/i;

    move-result-object v2

    invoke-static {}, Lcom/miui/securitycenter/Application;->A()Lcom/miui/securitycenter/Application;

    move-result-object v3

    invoke-virtual {v2, v3}, Li7/i;->o(Landroid/content/Context;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-le v2, v0, :cond_0

    if-nez v1, :cond_0

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Li7/i;->F(Z)V

    :cond_0
    invoke-direct {p0, v2}, Li7/i;->G(I)V

    return-void
.end method

.method private static synthetic v(Landroid/content/DialogInterface;I)V
    .locals 0

    check-cast p0, Lmiuix/appcompat/app/AlertDialog;

    invoke-virtual {p0}, Lmiuix/appcompat/app/AlertDialog;->isChecked()Z

    move-result p0

    xor-int/lit8 p0, p0, 0x1

    invoke-static {p0}, Li7/i;->H(Z)V

    return-void
.end method

.method private synthetic w(Ljava/lang/String;JLandroid/content/Context;)V
    .locals 1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string p1, "PreDownloadUtils"

    const-string p2, "showNotification: invalid pkg"

    invoke-static {p1, p2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    invoke-direct {p0, p1, p2, p3, p4}, Li7/i;->L(Ljava/lang/String;JLandroid/content/Context;)V

    return-void
.end method

.method private static x(Landroid/content/Context;Ljava/lang/String;)V
    .locals 2
    .param p0    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    const/4 v0, 0x0

    const v1, 0x7f12098d

    invoke-static {p0, p1, v0, v1}, La8/a0;->R(Landroid/content/Context;Landroid/net/Uri;Ljava/lang/String;I)V

    return-void
.end method

.method private z()V
    .locals 2

    :try_start_0
    invoke-static {}, Lcom/miui/securitycenter/Application;->A()Lcom/miui/securitycenter/Application;

    move-result-object v0

    iget-object v1, p0, Li7/i;->g:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Li7/i;->d:Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void
.end method


# virtual methods
.method public A(Li7/i$f;)V
    .locals 1

    iget-object v0, p0, Li7/i;->f:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->remove(Ljava/lang/Object;)Z

    return-void
.end method

.method public B()V
    .locals 2

    invoke-static {}, Lef/z;->d()Lef/z;

    move-result-object v0

    new-instance v1, Li7/f;

    invoke-direct {v1, p0}, Li7/f;-><init>(Li7/i;)V

    invoke-virtual {v0, v1}, Lef/z;->b(Ljava/lang/Runnable;)V

    return-void
.end method

.method public E(Z)V
    .locals 0

    iput-boolean p1, p0, Li7/i;->c:Z

    return-void
.end method

.method public F(Z)V
    .locals 2

    const-string v0, "flag_is_more_pre_download_games"

    invoke-static {v0, p1}, Lr4/a;->n(Ljava/lang/String;Z)V

    iget-object v0, p0, Li7/i;->f:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Li7/i$f;

    invoke-interface {v1, p1}, Li7/i$f;->a(Z)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public I()V
    .locals 4

    invoke-static {}, Lcom/miui/securitycenter/Application;->A()Lcom/miui/securitycenter/Application;

    move-result-object v0

    invoke-static {v0}, Li7/i;->t(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-direct {p0}, Li7/i;->p()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-static {}, Lcom/miui/securitycenter/Application;->A()Lcom/miui/securitycenter/Application;

    move-result-object v0

    const-string v1, "com.tencent.tmgp.pubgmhd"

    invoke-static {v0, v1}, Lx4/g1;->a(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-static {}, Lk7/f;->k()Lk7/f;

    move-result-object v1

    const/4 v2, 0x0

    new-instance v3, Li7/i$c;

    invoke-direct {v3, p0, v0}, Li7/i$c;-><init>(Li7/i;Landroid/content/Context;)V

    invoke-virtual {v1, v2, v3}, Lk7/f;->u(ZLk7/f$b;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public J(Landroid/content/Context;Ljava/lang/String;)V
    .locals 6

    iget-object v0, p0, Li7/i;->e:Lmiuix/appcompat/app/AlertDialog;

    const-string v1, "PreDownloadUtils"

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/app/Dialog;->isShowing()Z

    move-result v0

    if-nez v0, :cond_3

    :cond_0
    invoke-static {}, Li7/i;->s()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    goto/16 :goto_1

    :cond_1
    :try_start_0
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v0

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v2

    const-string v3, "https://sd-gamespace.sec.miui.com"

    const-string v4, "?language="

    invoke-virtual {v3, v4}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v3, "_"

    invoke-virtual {v0, v3}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const v2, 0x7f120a91

    invoke-virtual {p1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object v0, v3, v4

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v2

    new-instance v3, Landroid/text/SpannableStringBuilder;

    invoke-direct {v3, v2}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;)V

    new-instance v2, Lcom/miui/common/ui/d$b;

    const v5, 0x7f130021

    invoke-direct {v2, p1, v5}, Lcom/miui/common/ui/d$b;-><init>(Landroid/content/Context;I)V

    const v5, 0x7f120a92

    invoke-virtual {p1, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Lcom/miui/common/ui/d$b;->k(Ljava/lang/CharSequence;)Lcom/miui/common/ui/d$b;

    move-result-object v2

    invoke-virtual {v2, v3}, Lcom/miui/common/ui/d$b;->f(Ljava/lang/CharSequence;)Lcom/miui/common/ui/d$b;

    move-result-object v2

    const v5, 0x7f120a8f

    invoke-virtual {p1, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v4, v5}, Lcom/miui/common/ui/d$b;->c(ZLjava/lang/String;)Lcom/miui/common/ui/d$b;

    move-result-object v2

    const v4, 0x7f120a8e

    new-instance v5, Li7/h;

    invoke-direct {v5}, Li7/h;-><init>()V

    invoke-virtual {v2, v4, v5}, Lcom/miui/common/ui/d$b;->g(ILandroid/content/DialogInterface$OnClickListener;)Lcom/miui/common/ui/d$b;

    move-result-object v2

    const v4, 0x7f120a90

    new-instance v5, Li7/i$d;

    invoke-direct {v5, p0, p2, p1}, Li7/i$d;-><init>(Li7/i;Ljava/lang/String;Landroid/content/Context;)V

    invoke-virtual {v2, v4, v5}, Lcom/miui/common/ui/d$b;->i(ILandroid/content/DialogInterface$OnClickListener;)Lcom/miui/common/ui/d$b;

    move-result-object v2

    invoke-virtual {v2}, Lcom/miui/common/ui/d$b;->a()Lcom/miui/common/ui/d;

    move-result-object v2

    iput-object v2, p0, Li7/i;->e:Lmiuix/appcompat/app/AlertDialog;

    invoke-virtual {v2}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v2

    const/16 v4, 0x7d3

    invoke-virtual {v2, v4}, Landroid/view/Window;->setType(I)V

    iget-object v2, p0, Li7/i;->e:Lmiuix/appcompat/app/AlertDialog;

    invoke-virtual {v2}, Lmiuix/appcompat/app/AlertDialog;->show()V

    iget-object v2, p0, Li7/i;->e:Lmiuix/appcompat/app/AlertDialog;

    invoke-virtual {v2}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v2

    invoke-static {v2}, Lx4/d1;->a(Landroid/view/Window;)V

    invoke-static {p2}, Li7/k;->b(Ljava/lang/String;)V

    iget-object p2, p0, Li7/i;->e:Lmiuix/appcompat/app/AlertDialog;

    invoke-direct {p0, p1, v0, p2, v3}, Li7/i;->D(Landroid/content/Context;Ljava/lang/String;Lmiuix/appcompat/app/AlertDialog;Landroid/text/SpannableStringBuilder;)V

    iget-object p2, p0, Li7/i;->e:Lmiuix/appcompat/app/AlertDialog;

    const v0, 0x7f0b0778

    invoke-virtual {p2, v0}, Landroidx/appcompat/app/e;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    if-eqz p2, :cond_2

    invoke-virtual {p2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    new-instance v0, Ll7/a;

    invoke-direct {v0}, Ll7/a;-><init>()V

    invoke-virtual {p2, v0}, Landroid/widget/TextView;->setMovementMethod(Landroid/text/method/MovementMethod;)V

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v0, 0x106000d

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getColor(I)I

    move-result p1

    invoke-virtual {p2, p1}, Landroid/widget/TextView;->setHighlightColor(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "showChangeDialog error: "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    :goto_0
    return-void

    :cond_3
    :goto_1
    const-string p1, "showChangeDialog: invalid pkg"

    invoke-static {v1, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public M(Landroid/content/Context;Ljava/lang/String;Z)V
    .locals 6

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    :try_start_0
    invoke-virtual {p0, p1}, Li7/i;->n(Landroid/content/Context;)Ljava/util/List;

    move-result-object v0

    invoke-static {v0}, Lc7/c;->n(Ljava/util/Collection;)Z

    move-result v1

    if-eqz v1, :cond_1

    return-void

    :cond_1
    new-instance v1, Lorg/json/JSONArray;

    invoke-direct {v1}, Lorg/json/JSONArray;-><init>()V

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Li7/a;

    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3}, Lorg/json/JSONObject;-><init>()V

    const-string v4, "pkgName"

    iget-object v5, v2, Li7/a;->a:Ljava/lang/String;

    invoke-virtual {v3, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v4, "predownload"

    iget-boolean v5, v2, Li7/a;->b:Z

    invoke-virtual {v3, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    iget-object v2, v2, Li7/a;->a:Ljava/lang/String;

    invoke-static {v2, p2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_2

    const-string v2, "award"

    invoke-virtual {v3, v2, p3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    :cond_2
    invoke-virtual {v1, v3}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    goto :goto_0

    :cond_3
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    const-string p2, "predownload_ui_enable"

    invoke-virtual {v1}, Lorg/json/JSONArray;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-static {p1, p2, p3}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p1

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "updatePredownload error: "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "PreDownloadUtils"

    invoke-static {p2, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_1
    return-void
.end method

.method public N(Landroid/content/Context;Ljava/util/Map;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lj7/a;",
            ">;)V"
        }
    .end annotation

    invoke-static {}, Lcom/miui/securitycenter/Application;->A()Lcom/miui/securitycenter/Application;

    move-result-object v0

    invoke-virtual {p0, v0}, Li7/i;->n(Landroid/content/Context;)Ljava/util/List;

    move-result-object v0

    invoke-static {v0}, Lc7/c;->n(Ljava/util/Collection;)Z

    move-result v1

    if-eqz v1, :cond_0

    return-void

    :cond_0
    :try_start_0
    new-instance v1, Lorg/json/JSONArray;

    invoke-direct {v1}, Lorg/json/JSONArray;-><init>()V

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Li7/a;

    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3}, Lorg/json/JSONObject;-><init>()V

    const-string v4, "pkgName"

    iget-object v5, v2, Li7/a;->a:Ljava/lang/String;

    invoke-virtual {v3, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v4, "predownload"

    iget-boolean v5, v2, Li7/a;->b:Z

    invoke-virtual {v3, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    const-string v4, "award"

    iget-object v5, v2, Li7/a;->a:Ljava/lang/String;

    invoke-interface {p2, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    if-eqz v5, :cond_1

    iget-object v2, v2, Li7/a;->a:Ljava/lang/String;

    invoke-interface {p2, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lj7/a;

    invoke-virtual {v2}, Lj7/a;->c()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1

    const/4 v2, 0x1

    goto :goto_1

    :cond_1
    const/4 v2, 0x0

    :goto_1
    invoke-virtual {v3, v4, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    invoke-virtual {v1, v3}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    goto :goto_0

    :cond_2
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    const-string p2, "predownload_ui_enable"

    invoke-virtual {v1}, Lorg/json/JSONArray;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, p2, v0}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    move-exception p1

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "updatePredownload error: "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "PreDownloadUtils"

    invoke-static {p2, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_2
    return-void
.end method

.method public O(Landroid/content/Context;Li7/a;)V
    .locals 6

    if-nez p2, :cond_0

    return-void

    :cond_0
    :try_start_0
    invoke-virtual {p0, p1}, Li7/i;->n(Landroid/content/Context;)Ljava/util/List;

    move-result-object v0

    invoke-static {v0}, Lc7/c;->n(Ljava/util/Collection;)Z

    move-result v1

    if-eqz v1, :cond_1

    return-void

    :cond_1
    new-instance v1, Lorg/json/JSONArray;

    invoke-direct {v1}, Lorg/json/JSONArray;-><init>()V

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Li7/a;

    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3}, Lorg/json/JSONObject;-><init>()V

    iget-object v4, v2, Li7/a;->a:Ljava/lang/String;

    iget-object v5, p2, Li7/a;->a:Ljava/lang/String;

    invoke-static {v4, v5}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_2

    iget-boolean v4, p2, Li7/a;->b:Z

    iput-boolean v4, v2, Li7/a;->b:Z

    :cond_2
    const-string v4, "pkgName"

    iget-object v5, v2, Li7/a;->a:Ljava/lang/String;

    invoke-virtual {v3, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v4, "predownload"

    iget-boolean v2, v2, Li7/a;->b:Z

    invoke-virtual {v3, v4, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    invoke-virtual {v1, v3}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    goto :goto_0

    :cond_3
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    const-string p2, "predownload_ui_enable"

    invoke-virtual {v1}, Lorg/json/JSONArray;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, p2, v0}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p1

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "updatePredownload error: "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "PreDownloadUtils"

    invoke-static {p2, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_1
    return-void
.end method

.method public k(Li7/i$f;)V
    .locals 1

    iget-object v0, p0, Li7/i;->f:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Li7/i;->f:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->add(Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method

.method public n(Landroid/content/Context;)Ljava/util/List;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/List<",
            "Li7/a;",
            ">;"
        }
    .end annotation

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    const-string v0, "predownload_ui_enable"

    invoke-static {p1, v0}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    :try_start_0
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    new-instance v0, Lorg/json/JSONArray;

    invoke-direct {v0, p1}, Lorg/json/JSONArray;-><init>(Ljava/lang/String;)V

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    const/4 v1, 0x0

    :goto_0
    invoke-virtual {v0}, Lorg/json/JSONArray;->length()I

    move-result v2

    if-ge v1, v2, :cond_0

    invoke-virtual {v0, v1}, Lorg/json/JSONArray;->optJSONObject(I)Lorg/json/JSONObject;

    move-result-object v2

    const-string v3, "pkgName"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    new-instance v4, Li7/a;

    const-string v5, ""

    const-string v6, "predownload"

    invoke-virtual {v2, v6}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;)Z

    move-result v2

    invoke-direct {v4, v3, v5, v2}, Li7/a;-><init>(Ljava/lang/String;Ljava/lang/String;Z)V

    invoke-interface {p1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-object p1

    :catch_0
    move-exception p1

    const-string v0, "PreDownloadUtils"

    const-string v1, "fetch predownloads error"

    invoke-static {v0, v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_1
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object p1

    return-object p1
.end method

.method public o(Landroid/content/Context;)Ljava/util/List;
    .locals 5
    .annotation build Landroidx/annotation/WorkerThread;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/List<",
            "Li7/a;",
            ">;"
        }
    .end annotation

    invoke-virtual {p0, p1}, Li7/i;->n(Landroid/content/Context;)Ljava/util/List;

    move-result-object v0

    invoke-static {v0}, Lc7/c;->n(Ljava/util/Collection;)Z

    move-result v1

    if-nez v1, :cond_2

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Li7/a;

    iget-object v3, v2, Li7/a;->a:Ljava/lang/String;

    iget-object v4, p0, Li7/i;->b:Landroid/content/pm/PackageManager;

    invoke-static {p1, v3, v4}, Lx4/f1;->e(Landroid/content/Context;Ljava/lang/String;Landroid/content/pm/PackageManager;)Landroid/content/pm/ResolveInfo;

    move-result-object v3

    if-eqz v3, :cond_0

    :try_start_0
    iget-object v4, p0, Li7/i;->b:Landroid/content/pm/PackageManager;

    invoke-virtual {v3, v4}, Landroid/content/pm/ResolveInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    iput-object v3, v2, Li7/a;->c:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    return-object v1

    :cond_2
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object p1

    return-object p1
.end method

.method public r()Z
    .locals 2

    const-string v0, "flag_is_more_pre_download_games"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lr4/a;->e(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public y()V
    .locals 4

    invoke-static {}, Lcom/miui/securitycenter/Application;->A()Lcom/miui/securitycenter/Application;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "predownload_cloud_enable"

    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    iget-object v2, p0, Li7/i;->h:Landroid/database/ContentObserver;

    const/4 v3, 0x1

    invoke-virtual {v0, v1, v3, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    invoke-static {}, Lcom/miui/securitycenter/Application;->A()Lcom/miui/securitycenter/Application;

    move-result-object v0

    invoke-static {v0}, Li7/i;->t(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Li7/i;->q()V

    :cond_0
    return-void
.end method
