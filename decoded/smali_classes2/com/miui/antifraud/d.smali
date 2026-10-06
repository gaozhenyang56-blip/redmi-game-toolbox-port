.class public Lcom/miui/antifraud/d;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/antifraud/d$c;,
        Lcom/miui/antifraud/d$d;
    }
.end annotation


# static fields
.field private static j:Ljava/lang/String; = "AntiFraudManager"

.field private static final k:Ljava/util/concurrent/atomic/AtomicBoolean;


# instance fields
.field private final a:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private final b:Landroid/telephony/PhoneStateListener;

.field private final c:Ljava/util/concurrent/atomic/AtomicReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicReference<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final d:Ljava/util/concurrent/atomic/AtomicReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicReference<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private e:J

.field private f:Z

.field private g:Lcom/miui/antifraud/a;

.field private h:Landroid/os/Handler;

.field private i:Landroid/database/ContentObserver;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    sput-object v0, Lcom/miui/antifraud/d;->k:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-void
.end method

.method private constructor <init>()V
    .locals 5

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lcom/miui/antifraud/d;->a:Ljava/util/concurrent/atomic/AtomicBoolean;

    new-instance v0, Lcom/miui/antifraud/d$c;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/miui/antifraud/d$c;-><init>(Lcom/miui/antifraud/d;Lcom/miui/antifraud/d$a;)V

    iput-object v0, p0, Lcom/miui/antifraud/d;->b:Landroid/telephony/PhoneStateListener;

    new-instance v0, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    iput-object v0, p0, Lcom/miui/antifraud/d;->c:Ljava/util/concurrent/atomic/AtomicReference;

    new-instance v0, Ljava/util/concurrent/atomic/AtomicReference;

    const-string v1, ""

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/miui/antifraud/d;->d:Ljava/util/concurrent/atomic/AtomicReference;

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/miui/antifraud/d;->e:J

    new-instance v2, Lcom/miui/antifraud/d$a;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v3

    invoke-direct {v2, p0, v3}, Lcom/miui/antifraud/d$a;-><init>(Lcom/miui/antifraud/d;Landroid/os/Looper;)V

    iput-object v2, p0, Lcom/miui/antifraud/d;->h:Landroid/os/Handler;

    new-instance v2, Lcom/miui/antifraud/d$b;

    new-instance v3, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v4

    invoke-direct {v3, v4}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    invoke-direct {v2, p0, v3}, Lcom/miui/antifraud/d$b;-><init>(Lcom/miui/antifraud/d;Landroid/os/Handler;)V

    iput-object v2, p0, Lcom/miui/antifraud/d;->i:Landroid/database/ContentObserver;

    invoke-static {}, Lcom/miui/securitycenter/Application;->A()Lcom/miui/securitycenter/Application;

    move-result-object v2

    invoke-static {v2}, Landroidx/preference/f;->c(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v2

    const-string v3, "pay_warning_fraud_timestamp"

    invoke-interface {v2, v3, v0, v1}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/miui/antifraud/d;->e:J

    return-void
.end method

.method synthetic constructor <init>(Lcom/miui/antifraud/d$a;)V
    .locals 0

    invoke-direct {p0}, Lcom/miui/antifraud/d;-><init>()V

    return-void
.end method

.method public static synthetic a(Lcom/miui/antifraud/d;Landroid/content/Intent;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/miui/antifraud/d;->m(Landroid/content/Intent;)V

    return-void
.end method

.method public static synthetic b(Lcom/miui/antifraud/d;Landroid/content/DialogInterface;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/miui/antifraud/d;->n(Landroid/content/DialogInterface;I)V

    return-void
.end method

.method static synthetic c(Lcom/miui/antifraud/d;)V
    .locals 0

    invoke-direct {p0}, Lcom/miui/antifraud/d;->u()V

    return-void
.end method

.method static synthetic d(Lcom/miui/antifraud/d;)Lcom/miui/antifraud/a;
    .locals 0

    iget-object p0, p0, Lcom/miui/antifraud/d;->g:Lcom/miui/antifraud/a;

    return-object p0
.end method

.method static synthetic e(Lcom/miui/antifraud/d;Lcom/miui/antifraud/a;)Lcom/miui/antifraud/a;
    .locals 0

    iput-object p1, p0, Lcom/miui/antifraud/d;->g:Lcom/miui/antifraud/a;

    return-object p1
.end method

.method static synthetic f(Lcom/miui/antifraud/d;Landroid/content/Context;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/miui/antifraud/d;->s(Landroid/content/Context;I)V

    return-void
.end method

.method static synthetic g(Lcom/miui/antifraud/d;)Landroid/os/Handler;
    .locals 0

    iget-object p0, p0, Lcom/miui/antifraud/d;->h:Landroid/os/Handler;

    return-object p0
.end method

.method static synthetic h(Lcom/miui/antifraud/d;)Ljava/util/concurrent/atomic/AtomicBoolean;
    .locals 0

    iget-object p0, p0, Lcom/miui/antifraud/d;->a:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-object p0
.end method

.method static synthetic i(Lcom/miui/antifraud/d;JZ)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/miui/antifraud/d;->w(JZ)V

    return-void
.end method

.method public static k()Lcom/miui/antifraud/d;
    .locals 1

    invoke-static {}, Lcom/miui/antifraud/d$d;->a()Lcom/miui/antifraud/d;

    move-result-object v0

    return-object v0
.end method

.method private l(Ljava/lang/String;)Z
    .locals 6
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    invoke-static {}, Lcom/miui/securitycenter/Application;->A()Lcom/miui/securitycenter/Application;

    move-result-object v0

    invoke-static {v0, p1}, Lm2/f;->x(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    invoke-static {}, Lcom/miui/securitycenter/Application;->A()Lcom/miui/securitycenter/Application;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v1, p1, v2}, Lmiui/yellowpage/YellowPageUtils;->getPhoneInfo(Landroid/content/Context;Ljava/lang/String;Z)Lmiui/yellowpage/YellowPagePhone;

    move-result-object p1

    const/4 v1, 0x1

    if-eqz p1, :cond_0

    move v3, v1

    goto :goto_0

    :cond_0
    move v3, v2

    :goto_0
    if-eqz p1, :cond_2

    invoke-virtual {p1}, Lmiui/yellowpage/YellowPagePhone;->getCid()I

    move-result v4

    if-eq v4, v1, :cond_1

    invoke-virtual {p1}, Lmiui/yellowpage/YellowPagePhone;->getCid()I

    move-result v4

    const/4 v5, 0x3

    if-eq v4, v5, :cond_1

    invoke-virtual {p1}, Lmiui/yellowpage/YellowPagePhone;->getCid()I

    move-result v4

    const/16 v5, 0x8

    if-eq v4, v5, :cond_1

    invoke-virtual {p1}, Lmiui/yellowpage/YellowPagePhone;->getCid()I

    move-result p1

    const/16 v4, 0xa

    if-ne p1, v4, :cond_2

    :cond_1
    move p1, v1

    goto :goto_1

    :cond_2
    move p1, v2

    :goto_1
    if-nez v0, :cond_4

    if-eqz v3, :cond_3

    if-eqz p1, :cond_4

    :cond_3
    move v2, v1

    :cond_4
    return v2
.end method

.method private synthetic m(Landroid/content/Intent;)V
    .locals 3

    invoke-static {}, Lcom/miui/securitycenter/Application;->A()Lcom/miui/securitycenter/Application;

    move-result-object v0

    invoke-static {v0}, Lmiui/yellowpage/YellowPageUtils;->isYellowPageEnable(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    sget-object p1, Lcom/miui/antifraud/d;->j:Ljava/lang/String;

    const-string v0, "Yellow page not enable"

    invoke-static {p1, v0}, Lx4/q0;->g(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_0
    const-string v0, "state"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "incoming_number"

    invoke-virtual {p1, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iget-object v1, p0, Lcom/miui/antifraud/d;->d:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    return-void

    :cond_1
    iget-object v1, p0, Lcom/miui/antifraud/d;->d:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v1, v0}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    sget-object v1, Landroid/telephony/TelephonyManager;->EXTRA_STATE_RINGING:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_4

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    return-void

    :cond_2
    iget-object v0, p0, Lcom/miui/antifraud/d;->c:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    invoke-static {}, Lcom/miui/securitycenter/Application;->A()Lcom/miui/securitycenter/Application;

    move-result-object v0

    invoke-static {v0, p1, v2}, Lmiui/yellowpage/YellowPageUtils;->getPhoneInfo(Landroid/content/Context;Ljava/lang/String;Z)Lmiui/yellowpage/YellowPagePhone;

    move-result-object p1

    const/4 v0, 0x0

    if-eqz p1, :cond_3

    invoke-virtual {p1}, Lmiui/yellowpage/YellowPagePhone;->getCid()I

    move-result p1

    if-ne p1, v2, :cond_3

    move p1, v2

    goto :goto_0

    :cond_3
    move p1, v0

    :goto_0
    if-eqz p1, :cond_6

    iget-object p1, p0, Lcom/miui/antifraud/d;->a:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {p1, v0, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result p1

    if-eqz p1, :cond_6

    invoke-static {}, Lcom/miui/securitycenter/Application;->A()Lcom/miui/securitycenter/Application;

    move-result-object p1

    const-string v0, "phone"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/telephony/TelephonyManager;

    iget-object v0, p0, Lcom/miui/antifraud/d;->b:Landroid/telephony/PhoneStateListener;

    const/16 v1, 0x20

    invoke-virtual {p1, v0, v1}, Landroid/telephony/TelephonyManager;->listen(Landroid/telephony/PhoneStateListener;I)V

    goto :goto_1

    :cond_4
    sget-object p1, Landroid/telephony/TelephonyManager;->EXTRA_STATE_OFFHOOK:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_5

    iget-object p1, p0, Lcom/miui/antifraud/d;->c:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {p1}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_6

    invoke-direct {p0}, Lcom/miui/antifraud/d;->t()V

    invoke-direct {p0, p1}, Lcom/miui/antifraud/d;->l(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_6

    invoke-static {v2}, Lcom/miui/antifraud/AntiFraudAnalyticsUtils;->d(I)V

    goto :goto_1

    :cond_5
    sget-object p1, Landroid/telephony/TelephonyManager;->EXTRA_STATE_IDLE:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_6

    iget-object p1, p0, Lcom/miui/antifraud/d;->c:Ljava/util/concurrent/atomic/AtomicReference;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Ljava/util/concurrent/atomic/AtomicReference;->getAndSet(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/CharSequence;

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_6

    iget-object p1, p0, Lcom/miui/antifraud/d;->h:Landroid/os/Handler;

    invoke-virtual {p1, v2}, Landroid/os/Handler;->hasMessages(I)Z

    move-result p1

    if-nez p1, :cond_6

    invoke-direct {p0}, Lcom/miui/antifraud/d;->u()V

    :cond_6
    :goto_1
    return-void
.end method

.method private synthetic n(Landroid/content/DialogInterface;I)V
    .locals 0

    instance-of p2, p1, Lcom/miui/antifraud/a;

    if-eqz p2, :cond_0

    check-cast p1, Lcom/miui/antifraud/a;

    invoke-virtual {p1}, Lcom/miui/antifraud/a;->dismiss()V

    invoke-static {}, Lcom/miui/securitycenter/Application;->A()Lcom/miui/securitycenter/Application;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    iget-object p2, p0, Lcom/miui/antifraud/d;->i:Landroid/database/ContentObserver;

    invoke-virtual {p1, p2}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    const-wide/16 p1, 0x0

    iput-wide p1, p0, Lcom/miui/antifraud/d;->e:J

    invoke-static {}, Lcom/miui/securitycenter/Application;->A()Lcom/miui/securitycenter/Application;

    move-result-object p1

    invoke-static {p1}, Landroidx/preference/f;->c(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    const-string p2, "pay_warning_fraud_timestamp"

    invoke-interface {p1, p2}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    invoke-direct {p0}, Lcom/miui/antifraud/d;->u()V

    invoke-static {}, Lcom/miui/antifraud/AntiFraudAnalyticsUtils;->a()V

    :cond_0
    const/4 p1, 0x0

    iput-object p1, p0, Lcom/miui/antifraud/d;->g:Lcom/miui/antifraud/a;

    return-void
.end method

.method private s(Landroid/content/Context;I)V
    .locals 3

    iget-boolean v0, p0, Lcom/miui/antifraud/d;->f:Z

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/miui/antifraud/d;->g:Lcom/miui/antifraud/a;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/app/Dialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_1

    return-void

    :cond_1
    new-instance v0, Lcom/miui/antifraud/a;

    invoke-direct {v0, p1}, Lcom/miui/antifraud/a;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/miui/antifraud/d;->g:Lcom/miui/antifraud/a;

    const v1, 0x7f12190a

    invoke-virtual {p1, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    new-instance v1, Lcom/miui/antifraud/c;

    invoke-direct {v1, p0}, Lcom/miui/antifraud/c;-><init>(Lcom/miui/antifraud/d;)V

    invoke-virtual {v0, p1, v1}, Lcom/miui/antifraud/a;->l(Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;)V

    iget-object p1, p0, Lcom/miui/antifraud/d;->g:Lcom/miui/antifraud/a;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lmiuix/appcompat/app/AlertDialog;->setCancelable(Z)V

    :try_start_0
    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1a

    if-lt p1, v1, :cond_2

    const/16 p1, 0x7f6

    goto :goto_0

    :cond_2
    const/16 p1, 0x7d3

    :goto_0
    iget-object v1, p0, Lcom/miui/antifraud/d;->g:Lcom/miui/antifraud/a;

    invoke-virtual {v1}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/view/Window;->setType(I)V

    iget-object p1, p0, Lcom/miui/antifraud/d;->g:Lcom/miui/antifraud/a;

    const/4 v1, -0x2

    invoke-virtual {p1, v1, p2, v0}, Lcom/miui/antifraud/a;->m(IIZ)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p1

    sget-object p2, Lcom/miui/antifraud/d;->j:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "showAntiFraudDialog: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_1
    invoke-static {}, Lcom/miui/securitycenter/Application;->A()Lcom/miui/securitycenter/Application;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    const-string p2, "ui_night_mode"

    invoke-static {p2}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p2

    iget-object v1, p0, Lcom/miui/antifraud/d;->i:Landroid/database/ContentObserver;

    invoke-virtual {p1, p2, v0, v1}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    invoke-static {}, Lcom/miui/antifraud/AntiFraudAnalyticsUtils;->b()V

    sget-object p1, Lcom/miui/antifraud/d;->j:Ljava/lang/String;

    const-string p2, "show antifraud dialog"

    invoke-static {p1, p2}, Lx4/q0;->g(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private t()V
    .locals 4

    sget-object v0, Lcom/miui/antifraud/d;->k:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/miui/securitycenter/Application;->A()Lcom/miui/securitycenter/Application;

    move-result-object v0

    new-instance v1, Landroid/content/Intent;

    invoke-static {}, Lcom/miui/securitycenter/Application;->A()Lcom/miui/securitycenter/Application;

    move-result-object v2

    const-class v3, Lcom/miui/antifraud/PayActivityMonitorService;

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {v0, v1}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    sget-object v0, Lcom/miui/antifraud/d;->j:Ljava/lang/String;

    const-string v1, "pay monitor service started"

    invoke-static {v0, v1}, Lx4/q0;->g(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method private u()V
    .locals 4

    sget-object v0, Lcom/miui/antifraud/d;->k:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/miui/securitycenter/Application;->A()Lcom/miui/securitycenter/Application;

    move-result-object v0

    new-instance v1, Landroid/content/Intent;

    invoke-static {}, Lcom/miui/securitycenter/Application;->A()Lcom/miui/securitycenter/Application;

    move-result-object v2

    const-class v3, Lcom/miui/antifraud/PayActivityMonitorService;

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {v0, v1}, Landroid/content/Context;->stopService(Landroid/content/Intent;)Z

    sget-object v0, Lcom/miui/antifraud/d;->j:Ljava/lang/String;

    const-string v1, "pay monitor service stopped"

    invoke-static {v0, v1}, Lx4/q0;->g(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public static v(Landroid/content/Context;)V
    .locals 4
    .param p0    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/WorkerThread;
    .end annotation

    const/4 v0, 0x0

    :try_start_0
    const-string v1, "anti_fraud"

    const-string v2, "pay_activity"

    const-string v3, ""

    invoke-static {p0, v1, v2, v3}, Lx4/o;->d(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    if-eqz v2, :cond_0

    invoke-static {v0}, Lbl/e;->e(Ljava/io/Writer;)V

    return-void

    :cond_0
    :try_start_1
    const-string v2, "anti_fraud_pay_activity"

    const/4 v3, 0x0

    invoke-virtual {p0, v2, v3}, Landroid/content/Context;->openFileOutput(Ljava/lang/String;I)Ljava/io/FileOutputStream;

    move-result-object p0

    new-instance v2, Ljava/io/PrintWriter;

    invoke-direct {v2, p0}, Ljava/io/PrintWriter;-><init>(Ljava/io/OutputStream;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :try_start_2
    invoke-virtual {v2, v1}, Ljava/io/PrintWriter;->write(Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    invoke-static {v2}, Lbl/e;->e(Ljava/io/Writer;)V

    goto :goto_1

    :catchall_0
    move-exception p0

    move-object v0, v2

    goto :goto_2

    :catch_0
    move-exception p0

    move-object v0, v2

    goto :goto_0

    :catchall_1
    move-exception p0

    goto :goto_2

    :catch_1
    move-exception p0

    :goto_0
    :try_start_3
    sget-object v1, Lcom/miui/antifraud/d;->j:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Sync pay activity failed: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Lx4/q0;->g(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    invoke-static {v0}, Lbl/e;->e(Ljava/io/Writer;)V

    :goto_1
    sget-object p0, Lcom/miui/antifraud/d;->j:Ljava/lang/String;

    const-string v0, "Sync pay activity"

    invoke-static {p0, v0}, Lx4/q0;->g(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :goto_2
    invoke-static {v0}, Lbl/e;->e(Ljava/io/Writer;)V

    throw p0
.end method

.method private w(JZ)V
    .locals 4

    invoke-direct {p0, p1, p2}, Lcom/miui/antifraud/d;->x(J)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/miui/antifraud/d;->h:Landroid/os/Handler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    iget-object v0, p0, Lcom/miui/antifraud/d;->h:Landroid/os/Handler;

    invoke-static {v0, v1}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    sub-long/2addr p1, v2

    invoke-virtual {v0, v1, p1, p2}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    if-eqz p3, :cond_0

    const/4 p1, 0x2

    goto :goto_0

    :cond_0
    const/4 p1, 0x3

    :goto_0
    invoke-static {p1}, Lcom/miui/antifraud/AntiFraudAnalyticsUtils;->d(I)V

    :cond_1
    return-void
.end method

.method private x(J)Z
    .locals 2

    iget-wide v0, p0, Lcom/miui/antifraud/d;->e:J

    cmp-long v0, p1, v0

    if-lez v0, :cond_0

    iput-wide p1, p0, Lcom/miui/antifraud/d;->e:J

    invoke-static {}, Lcom/miui/securitycenter/Application;->A()Lcom/miui/securitycenter/Application;

    move-result-object v0

    invoke-static {v0}, Landroidx/preference/f;->c(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "pay_warning_fraud_timestamp"

    invoke-interface {v0, v1, p1, p2}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method


# virtual methods
.method public j()V
    .locals 1

    iget-object v0, p0, Lcom/miui/antifraud/d;->g:Lcom/miui/antifraud/a;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/app/Dialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/antifraud/d;->g:Lcom/miui/antifraud/a;

    invoke-virtual {v0}, Lcom/miui/antifraud/a;->dismiss()V

    :cond_0
    return-void
.end method

.method public o()V
    .locals 6

    invoke-static {}, Lcom/miui/securitycenter/Application;->A()Lcom/miui/securitycenter/Application;

    move-result-object v0

    const-string v1, "phone"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    sget-object v1, Lcom/miui/antifraud/d;->j:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "launch pay activity call state: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getCallState()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lx4/q0;->g(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getCallState()I

    move-result v0

    const/16 v1, 0xa

    const/4 v2, 0x2

    if-ne v0, v2, :cond_1

    iget-object v0, p0, Lcom/miui/antifraud/d;->c:Ljava/util/concurrent/atomic/AtomicReference;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Ljava/util/concurrent/atomic/AtomicReference;->getAndSet(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    return-void

    :cond_0
    invoke-direct {p0, v0}, Lcom/miui/antifraud/d;->l(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    goto :goto_0

    :cond_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iget-wide v4, p0, Lcom/miui/antifraud/d;->e:J

    cmp-long v0, v2, v4

    if-gtz v0, :cond_2

    :goto_0
    invoke-static {}, Lcom/miui/securitycenter/Application;->A()Lcom/miui/securitycenter/Application;

    move-result-object v0

    invoke-direct {p0, v0, v1}, Lcom/miui/antifraud/d;->s(Landroid/content/Context;I)V

    :cond_2
    return-void
.end method

.method public p(Landroid/content/Intent;)V
    .locals 1

    new-instance v0, Lcom/miui/antifraud/b;

    invoke-direct {v0, p0, p1}, Lcom/miui/antifraud/b;-><init>(Lcom/miui/antifraud/d;Landroid/content/Intent;)V

    invoke-static {v0}, Lcom/miui/common/base/asyn/a;->a(Ljava/lang/Runnable;)V

    return-void
.end method

.method public q()V
    .locals 4

    invoke-direct {p0}, Lcom/miui/antifraud/d;->t()V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    const-wide/32 v2, 0x3a980

    add-long/2addr v0, v2

    const/4 v2, 0x0

    invoke-direct {p0, v0, v1, v2}, Lcom/miui/antifraud/d;->w(JZ)V

    return-void
.end method

.method public r(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/miui/antifraud/d;->f:Z

    return-void
.end method
