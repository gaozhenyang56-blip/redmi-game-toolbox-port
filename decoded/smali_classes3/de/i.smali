.class public Lde/i;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lde/i$l;,
        Lde/i$n;,
        Lde/i$m;
    }
.end annotation


# static fields
.field private static final G:Ljava/io/File;

.field private static final H:Ljava/io/File;

.field private static final I:Ljava/io/File;


# instance fields
.field private A:Lde/a;

.field private B:Lud/i;

.field private C:Landroid/database/ContentObserver;

.field private D:Ljava/util/concurrent/CopyOnWriteArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/CopyOnWriteArrayList<",
            "Lde/g;",
            ">;"
        }
    .end annotation
.end field

.field private E:I

.field private F:Landroid/hardware/display/DisplayManager$DisplayListener;

.field private a:Landroid/os/Handler;

.field private b:Landroid/content/Context;

.field private c:Landroid/telephony/TelephonyManager;

.field private d:Landroid/content/SharedPreferences;

.field private e:Lde/i$l;

.field private f:Landroid/hardware/display/DisplayManager;

.field private g:Landroid/view/Display;

.field private h:I

.field private i:I

.field private j:I

.field private k:I

.field private l:I

.field private m:[I

.field private n:Lmiuix/appcompat/app/AlertDialog;

.field private o:Lmiuix/appcompat/app/AlertDialog;

.field private p:Lmiuix/appcompat/app/AlertDialog;

.field private q:Lmiuix/appcompat/app/AlertDialog;

.field private r:Z

.field private s:Z

.field private t:Z

.field private u:Lum/b;

.field private v:Z

.field private w:Lmiuix/appcompat/app/AlertDialog;

.field private x:Landroid/os/CountDownTimer;

.field private y:Lmiuix/appcompat/app/ProgressDialog;

.field private z:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Ljava/io/File;

    const-string v1, "/system/media/audio/ui/disconnect.ogg"

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    sput-object v0, Lde/i;->G:Ljava/io/File;

    new-instance v0, Ljava/io/File;

    const-string v1, "/system/media/audio/ui/charge_wireless.ogg"

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    sput-object v0, Lde/i;->H:Ljava/io/File;

    new-instance v0, Ljava/io/File;

    const-string v1, "/system/media/audio/ui/charging.ogg"

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    sput-object v0, Lde/i;->I:Ljava/io/File;

    return-void
.end method

.method private constructor <init>()V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x64

    iput v0, p0, Lde/i;->h:I

    const/4 v0, 0x0

    iput v0, p0, Lde/i;->i:I

    iput v0, p0, Lde/i;->j:I

    const/4 v1, -0x1

    iput v1, p0, Lde/i;->k:I

    const/16 v2, 0x1e

    iput v2, p0, Lde/i;->l:I

    const/4 v2, 0x3

    new-array v2, v2, [I

    iput-object v2, p0, Lde/i;->m:[I

    const/4 v2, 0x1

    iput-boolean v2, p0, Lde/i;->r:Z

    iput-boolean v2, p0, Lde/i;->s:Z

    iput-boolean v0, p0, Lde/i;->t:Z

    iput-boolean v2, p0, Lde/i;->v:Z

    iput v1, p0, Lde/i;->z:I

    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v0, p0, Lde/i;->D:Ljava/util/concurrent/CopyOnWriteArrayList;

    iput v1, p0, Lde/i;->E:I

    new-instance v0, Lde/i$b;

    invoke-direct {v0, p0}, Lde/i$b;-><init>(Lde/i;)V

    iput-object v0, p0, Lde/i;->F:Landroid/hardware/display/DisplayManager$DisplayListener;

    invoke-direct {p0}, Lde/i;->X()V

    return-void
.end method

.method synthetic constructor <init>(Lde/i$c;)V
    .locals 0

    invoke-direct {p0}, Lde/i;-><init>()V

    return-void
.end method

.method static synthetic A(Lde/i;Landroid/net/Uri;)V
    .locals 0

    invoke-direct {p0, p1}, Lde/i;->e0(Landroid/net/Uri;)V

    return-void
.end method

.method private C()Z
    .locals 3

    iget-object v0, p0, Lde/i;->b:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "device_provisioned"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-eqz v0, :cond_0

    const/4 v2, 0x1

    :cond_0
    return v2
.end method

.method private D()V
    .locals 1

    iget-object v0, p0, Lde/i;->q:Lmiuix/appcompat/app/AlertDialog;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lmiuix/appcompat/app/AlertDialog;->dismiss()V

    :cond_0
    return-void
.end method

.method private E()V
    .locals 1

    iget-object v0, p0, Lde/i;->n:Lmiuix/appcompat/app/AlertDialog;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lmiuix/appcompat/app/AlertDialog;->dismiss()V

    const/4 v0, 0x0

    iput-object v0, p0, Lde/i;->n:Lmiuix/appcompat/app/AlertDialog;

    :cond_0
    return-void
.end method

.method private G()V
    .locals 1

    iget-object v0, p0, Lde/i;->p:Lmiuix/appcompat/app/AlertDialog;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lmiuix/appcompat/app/AlertDialog;->dismiss()V

    const/4 v0, 0x0

    iput-object v0, p0, Lde/i;->p:Lmiuix/appcompat/app/AlertDialog;

    :cond_0
    return-void
.end method

.method private H(I)I
    .locals 4

    iget v0, p0, Lde/i;->l:I

    const/4 v1, 0x1

    if-lt p1, v0, :cond_0

    return v1

    :cond_0
    iget-object v0, p0, Lde/i;->m:[I

    const/4 v2, 0x0

    aget v3, v0, v2

    if-lt p1, v3, :cond_1

    return v2

    :cond_1
    array-length v0, v0

    sub-int/2addr v0, v1

    :goto_0
    if-ltz v0, :cond_3

    iget-object v1, p0, Lde/i;->m:[I

    aget v1, v1, v0

    if-ge p1, v1, :cond_2

    if-lez v1, :cond_2

    rsub-int/lit8 p1, v0, -0x1

    return p1

    :cond_2
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_3
    new-instance p1, Ljava/lang/RuntimeException;

    const-string v0, "not possible!"

    invoke-direct {p1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private K(Landroid/content/Context;Landroid/os/Bundle;)Ljava/lang/String;
    .locals 13

    const-string v0, "drainedTime"

    invoke-virtual {p2, v0}, Landroid/os/BaseBundle;->getLong(Ljava/lang/String;)J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long p2, v0, v2

    const-string v4, "-"

    if-gtz p2, :cond_0

    goto/16 :goto_0

    :cond_0
    invoke-static {v0, v1}, Lde/j;->s(J)J

    move-result-wide v5

    invoke-static {v0, v1}, Lde/j;->r(J)J

    move-result-wide v0

    cmp-long p2, v0, v2

    const v7, 0x7f10006a

    const v8, 0x7f100069

    const/4 v9, 0x0

    const/4 v10, 0x1

    if-lez p2, :cond_1

    cmp-long v11, v5, v2

    if-lez v11, :cond_1

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    const v2, 0x7f120c99

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    long-to-int v11, v0

    new-array v12, v10, [Ljava/lang/Object;

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    aput-object v0, v12, v9

    invoke-virtual {v4, v8, v11, v12}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v3, v9

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    long-to-int v0, v5

    new-array v1, v10, [Ljava/lang/Object;

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    aput-object v4, v1, v9

    invoke-virtual {p1, v7, v0, v1}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    aput-object p1, v3, v10

    invoke-virtual {p2, v2, v3}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    goto :goto_0

    :cond_1
    if-lez p2, :cond_2

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    long-to-int p2, v0

    new-array v2, v10, [Ljava/lang/Object;

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    aput-object v0, v2, v9

    invoke-virtual {p1, v8, p2, v2}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    goto :goto_0

    :cond_2
    cmp-long p2, v5, v2

    if-lez p2, :cond_3

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    long-to-int p2, v5

    new-array v0, v10, [Ljava/lang/Object;

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    aput-object v1, v0, v9

    invoke-virtual {p1, v7, p2, v0}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    :cond_3
    :goto_0
    return-object v4
.end method

.method public static declared-synchronized M()Lde/i;
    .locals 2

    const-class v0, Lde/i;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lde/i$m;->a:Lde/i;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method private N()I
    .locals 3

    iget-object v0, p0, Lde/i;->d:Landroid/content/SharedPreferences;

    const-string v1, "level_old"

    const/16 v2, 0x64

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method private P(Ljava/lang/String;Ljava/lang/String;)Landroid/text/SpannableString;
    .locals 4

    invoke-virtual {p1, p2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    new-instance v1, Landroid/text/SpannableString;

    invoke-direct {v1, p1}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    if-lez v0, :cond_0

    new-instance p1, Landroid/text/style/ForegroundColorSpan;

    iget-object v2, p0, Lde/i;->b:Landroid/content/Context;

    const v3, 0x7f0602c3

    invoke-static {v2, v3}, Landroidx/core/content/ContextCompat;->c(Landroid/content/Context;I)I

    move-result v2

    invoke-direct {p1, v2}, Landroid/text/style/ForegroundColorSpan;-><init>(I)V

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result p2

    add-int/2addr p2, v0

    const/16 v2, 0x21

    invoke-virtual {v1, p1, v0, p2, v2}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    :cond_0
    return-object v1
.end method

.method private T()V
    .locals 2

    iget-object v0, p0, Lde/i;->y:Lmiuix/appcompat/app/ProgressDialog;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/app/Dialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lde/i;->y:Lmiuix/appcompat/app/ProgressDialog;

    invoke-virtual {v0}, Lmiuix/appcompat/app/AlertDialog;->dismiss()V

    const-string v0, "PowerNoticeUI"

    const-string v1, "hideLoadingDialog"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void
.end method

.method private U()V
    .locals 1

    iget-object v0, p0, Lde/i;->b:Landroid/content/Context;

    invoke-static {v0}, Lde/j;->x(Landroid/content/Context;)V

    return-void
.end method

.method private V()V
    .locals 4

    invoke-static {}, Lme/q;->w()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lgd/c;->N()Z

    move-result v0

    iput-boolean v0, p0, Lde/i;->v:Z

    invoke-direct {p0}, Lde/i;->W()V

    iget-object v0, p0, Lde/i;->b:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "content://com.miui.securitycenter.remoteprovider"

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    const-string v2, "pc_extreme_state_value"

    invoke-static {v1, v2}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    const/4 v2, 0x0

    iget-object v3, p0, Lde/i;->C:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "initExtremeModeUi:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lde/i;->v:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "PowerNoticeUI"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void
.end method

.method private W()V
    .locals 3

    new-instance v0, Lde/i$c;

    new-instance v1, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    invoke-direct {v0, p0, v1}, Lde/i$c;-><init>(Lde/i;Landroid/os/Handler;)V

    iput-object v0, p0, Lde/i;->C:Landroid/database/ContentObserver;

    return-void
.end method

.method private X()V
    .locals 3

    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "PowerNoticeUI"

    const/16 v2, 0xa

    invoke-direct {v0, v1, v2}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;I)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    new-instance v1, Lde/i$d;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {v1, p0, v0}, Lde/i$d;-><init>(Lde/i;Landroid/os/Looper;)V

    iput-object v1, p0, Lde/i;->a:Landroid/os/Handler;

    return-void
.end method

.method private Y()Z
    .locals 3

    iget-object v0, p0, Lde/i;->b:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "is_first_open_extreme_power_save"

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-ne v0, v2, :cond_0

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    return v2
.end method

.method private Z()Z
    .locals 2

    iget-object v0, p0, Lde/i;->b:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->orientation:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    iget-boolean v0, p0, Lde/i;->s:Z

    if-eqz v0, :cond_0

    invoke-static {}, Lme/e0;->a()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method static synthetic a(Lde/i;)I
    .locals 0

    iget p0, p0, Lde/i;->i:I

    return p0
.end method

.method static synthetic b()Ljava/io/File;
    .locals 1

    sget-object v0, Lde/i;->H:Ljava/io/File;

    return-object v0
.end method

.method private b0()Z
    .locals 2

    const-string v0, "support_extreme_battery_saver"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lmiui/util/FeatureParser;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lde/i;->b:Landroid/content/Context;

    invoke-static {v0}, Lpg/i;->F(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {}, Lx4/z1;->r()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v1, 0x1

    :cond_0
    return v1
.end method

.method static synthetic c()Ljava/io/File;
    .locals 1

    sget-object v0, Lde/i;->I:Ljava/io/File;

    return-object v0
.end method

.method static synthetic d(Lde/i;)V
    .locals 0

    invoke-direct {p0}, Lde/i;->T()V

    return-void
.end method

.method static synthetic e(Lde/i;)I
    .locals 0

    iget p0, p0, Lde/i;->z:I

    return p0
.end method

.method private e0(Landroid/net/Uri;)V
    .locals 3

    const-string v0, "PowerNoticeUI"

    const-string v1, "playBatterySound"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lx4/z1;->r()Z

    move-result v1

    if-nez v1, :cond_0

    const-string p1, "playBatterySound !UserUtil.isOwner() return"

    invoke-static {v0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    iget-object v0, p0, Lde/i;->b:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "power_sounds_enabled"

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-ne v0, v2, :cond_1

    if-eqz p1, :cond_1

    iget-object v0, p0, Lde/i;->b:Landroid/content/Context;

    invoke-static {v0, p1, v2}, Lde/j;->I(Landroid/content/Context;Landroid/net/Uri;I)V

    :cond_1
    return-void
.end method

.method static synthetic f(Lde/i;)Z
    .locals 0

    invoke-direct {p0}, Lde/i;->Y()Z

    move-result p0

    return p0
.end method

.method private f0()V
    .locals 4

    invoke-static {}, Lx4/z1;->r()Z

    move-result v0

    const-string v1, "PowerNoticeUI"

    if-nez v0, :cond_0

    const-string v0, "playLowBatterySound !UserUtil.isOwner() return"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    iget-object v0, p0, Lde/i;->b:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v2, "low_battery_sound"

    invoke-static {v0, v2}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    const-string v2, "playLowBatterySound"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lde/i;->b:Landroid/content/Context;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "file://"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    const/4 v2, 0x1

    invoke-static {v1, v0, v2}, Lde/j;->I(Landroid/content/Context;Landroid/net/Uri;I)V

    :cond_1
    return-void
.end method

.method static synthetic g(Lde/i;Z)V
    .locals 0

    invoke-direct {p0, p1}, Lde/i;->m0(Z)V

    return-void
.end method

.method static synthetic h(Lde/i;Lmiuix/appcompat/app/AlertDialog;)Lmiuix/appcompat/app/AlertDialog;
    .locals 0

    iput-object p1, p0, Lde/i;->p:Lmiuix/appcompat/app/AlertDialog;

    return-object p1
.end method

.method static synthetic i(Lde/i;)Z
    .locals 0

    iget-boolean p0, p0, Lde/i;->v:Z

    return p0
.end method

.method static synthetic j(Lde/i;)I
    .locals 0

    iget p0, p0, Lde/i;->h:I

    return p0
.end method

.method private j0(I)I
    .locals 2

    iget-object v0, p0, Lde/i;->d:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "level_old"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    return p1
.end method

.method static synthetic k(Lde/i;Z)Z
    .locals 0

    iput-boolean p1, p0, Lde/i;->v:Z

    return p1
.end method

.method private k0(Landroid/content/Intent;)V
    .locals 2

    iget-object v0, p0, Lde/i;->a:Landroid/os/Handler;

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-static {}, Lme/e;->m()Z

    move-result v0

    if-nez v0, :cond_1

    return-void

    :cond_1
    iget-object v0, p0, Lde/i;->a:Landroid/os/Handler;

    invoke-virtual {v0}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object v0

    const/16 v1, 0x3ea

    iput v1, v0, Landroid/os/Message;->what:I

    iput-object p1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    iget-object p1, p0, Lde/i;->a:Landroid/os/Handler;

    invoke-virtual {p1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method static synthetic l(Lde/i;Landroid/content/Context;Landroid/os/Bundle;)Ljava/lang/String;
    .locals 0

    invoke-direct {p0, p1, p2}, Lde/i;->K(Landroid/content/Context;Landroid/os/Bundle;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static synthetic m(Lde/i;Ljava/lang/String;Ljava/lang/String;)Landroid/text/SpannableString;
    .locals 0

    invoke-direct {p0, p1, p2}, Lde/i;->P(Ljava/lang/String;Ljava/lang/String;)Landroid/text/SpannableString;

    move-result-object p0

    return-object p0
.end method

.method private m0(Z)V
    .locals 2

    iget-object v0, p0, Lde/i;->b:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "is_first_open_extreme_power_save"

    invoke-static {v0, v1, p1}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    return-void
.end method

.method static synthetic n(Lde/i;)V
    .locals 0

    invoke-direct {p0}, Lde/i;->D()V

    return-void
.end method

.method private n0()V
    .locals 10

    iget-object v0, p0, Lde/i;->b:Landroid/content/Context;

    const v1, 0x7f0e012d

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    const v1, 0x7f0b0c56

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    invoke-static {}, Lce/g;->m()Z

    move-result v3

    if-eqz v3, :cond_0

    const v3, 0x7f100095

    goto :goto_0

    :cond_0
    const v3, 0x7f100094

    :goto_0
    iget-object v4, p0, Lde/i;->b:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const/4 v5, 0x1

    new-array v6, v5, [Ljava/lang/Object;

    const/4 v7, 0x0

    const/16 v8, 0x1e

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v6, v7

    invoke-virtual {v4, v3, v8, v6}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    new-instance v1, Lmiuix/appcompat/app/AlertDialog$Builder;

    iget-object v3, p0, Lde/i;->b:Landroid/content/Context;

    const v4, 0x7f130455

    invoke-direct {v1, v3, v4}, Lmiuix/appcompat/app/AlertDialog$Builder;-><init>(Landroid/content/Context;I)V

    invoke-virtual {v1, v5}, Lmiuix/appcompat/app/AlertDialog$Builder;->setCancelable(Z)Lmiuix/appcompat/app/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1, v0}, Lmiuix/appcompat/app/AlertDialog$Builder;->setView(Landroid/view/View;)Lmiuix/appcompat/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f1218e4

    invoke-virtual {v0, v1, v2}, Lmiuix/appcompat/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Lmiuix/appcompat/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f120452

    new-instance v2, Lde/i$e;

    invoke-direct {v2, p0}, Lde/i$e;-><init>(Lde/i;)V

    invoke-virtual {v0, v1, v2}, Lmiuix/appcompat/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Lmiuix/appcompat/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lmiuix/appcompat/app/AlertDialog$Builder;->create()Lmiuix/appcompat/app/AlertDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v1

    const/16 v2, 0x7d3

    invoke-virtual {v1, v2}, Landroid/view/Window;->setType(I)V

    invoke-virtual {v0}, Lmiuix/appcompat/app/AlertDialog;->show()V

    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x1c

    if-lt v1, v2, :cond_1

    invoke-virtual {v0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v1

    if-eqz v1, :cond_1

    iput v5, v1, Landroid/view/WindowManager$LayoutParams;->layoutInDisplayCutoutMode:I

    invoke-virtual {v0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    :cond_1
    new-instance v1, Lde/i$f;

    invoke-direct {v1, p0}, Lde/i$f;-><init>(Lde/i;)V

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    iput-object v0, p0, Lde/i;->w:Lmiuix/appcompat/app/AlertDialog;

    return-void
.end method

.method static synthetic o(Lde/i;Lmiuix/appcompat/app/AlertDialog;)Lmiuix/appcompat/app/AlertDialog;
    .locals 0

    iput-object p1, p0, Lde/i;->q:Lmiuix/appcompat/app/AlertDialog;

    return-object p1
.end method

.method private o0()V
    .locals 3

    const-string v0, "PowerNoticeUI"

    const-string v1, "showing invalid charger dialog"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lde/i;->F()V

    invoke-direct {p0}, Lde/i;->D()V

    new-instance v0, Lmiuix/appcompat/app/AlertDialog$Builder;

    iget-object v1, p0, Lde/i;->b:Landroid/content/Context;

    const v2, 0x7f130455

    invoke-direct {v0, v1, v2}, Lmiuix/appcompat/app/AlertDialog$Builder;-><init>(Landroid/content/Context;I)V

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lmiuix/appcompat/app/AlertDialog$Builder;->setCancelable(Z)Lmiuix/appcompat/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f120c82

    invoke-virtual {v0, v1}, Lmiuix/appcompat/app/AlertDialog$Builder;->setMessage(I)Lmiuix/appcompat/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x1010355

    invoke-virtual {v0, v1}, Lmiuix/appcompat/app/AlertDialog$Builder;->setIconAttribute(I)Lmiuix/appcompat/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x104000a

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lmiuix/appcompat/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Lmiuix/appcompat/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lmiuix/appcompat/app/AlertDialog$Builder;->create()Lmiuix/appcompat/app/AlertDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v1

    const/16 v2, 0x7d3

    invoke-virtual {v1, v2}, Landroid/view/Window;->setType(I)V

    invoke-virtual {v0}, Lmiuix/appcompat/app/AlertDialog;->show()V

    iput-object v0, p0, Lde/i;->n:Lmiuix/appcompat/app/AlertDialog;

    return-void
.end method

.method static synthetic p(Lde/i;)V
    .locals 0

    invoke-direct {p0}, Lde/i;->E()V

    return-void
.end method

.method private p0(Ljava/lang/String;)V
    .locals 3

    iget-object v0, p0, Lde/i;->b:Landroid/content/Context;

    const v1, 0x7f1304f3

    invoke-virtual {v0, v1}, Landroid/content/Context;->setTheme(I)V

    new-instance v0, Lmiuix/appcompat/app/ProgressDialog;

    iget-object v1, p0, Lde/i;->b:Landroid/content/Context;

    invoke-direct {v0, v1}, Lmiuix/appcompat/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lde/i;->y:Lmiuix/appcompat/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/16 v1, 0x7d3

    invoke-virtual {v0, v1}, Landroid/view/Window;->setType(I)V

    iget-object v0, p0, Lde/i;->y:Lmiuix/appcompat/app/ProgressDialog;

    invoke-virtual {v0, p1}, Lmiuix/appcompat/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    iget-object p1, p0, Lde/i;->y:Lmiuix/appcompat/app/ProgressDialog;

    invoke-virtual {p1}, Lmiuix/appcompat/app/AlertDialog;->show()V

    iget-object p1, p0, Lde/i;->a:Landroid/os/Handler;

    const/16 v0, 0x3e8

    const-wide/16 v1, 0x7d0

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    const-string p1, "PowerNoticeUI"

    const-string v0, "showLoadingDialog"

    invoke-static {p1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method static synthetic q(Lde/i;)V
    .locals 0

    invoke-direct {p0}, Lde/i;->G()V

    return-void
.end method

.method private q0()V
    .locals 2

    iget-object v0, p0, Lde/i;->b:Landroid/content/Context;

    invoke-static {v0}, Lme/w;->S(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget-boolean v0, p0, Lde/i;->s:Z

    if-eqz v0, :cond_1

    invoke-direct {p0}, Lde/i;->Z()Z

    move-result v0

    if-nez v0, :cond_2

    :cond_1
    iget-object v0, p0, Lde/i;->b:Landroid/content/Context;

    iget v1, p0, Lde/i;->h:I

    invoke-static {v0, v1}, Lde/j;->a0(Landroid/content/Context;I)V

    :cond_2
    invoke-static {}, Lcom/miui/powercenter/continuity/PowerContinuityNoticeUtils;->c()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-virtual {p0}, Lde/i;->J()Landroid/os/Handler;

    move-result-object v0

    if-eqz v0, :cond_3

    invoke-virtual {p0}, Lde/i;->J()Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lde/i$a;

    invoke-direct {v1, p0}, Lde/i$a;-><init>(Lde/i;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_3
    return-void
.end method

.method static synthetic r(Lde/i;)Landroid/view/Display;
    .locals 0

    iget-object p0, p0, Lde/i;->g:Landroid/view/Display;

    return-object p0
.end method

.method private r0()V
    .locals 17

    move-object/from16 v0, p0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, v0, Lde/i;->o:Lmiuix/appcompat/app/AlertDialog;

    if-nez v2, :cond_0

    const-string v2, "showing"

    goto :goto_0

    :cond_0
    const-string v2, "updating"

    :goto_0
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " low battery warning: level="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, v0, Lde/i;->h:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " ["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, v0, Lde/i;->h:I

    invoke-direct {v0, v2}, Lde/i;->H(I)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "PowerNoticeUI"

    invoke-static {v2, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct/range {p0 .. p0}, Lde/i;->Z()Z

    move-result v1

    if-nez v1, :cond_1

    const-string v1, "low battery dialog not shown"

    invoke-static {v2, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_1
    iget-object v1, v0, Lde/i;->b:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "low_battery_dialog_disabled"

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_2

    return-void

    :cond_2
    iget-object v1, v0, Lde/i;->b:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v4, "vr_mode"

    invoke-static {v1, v4, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-ne v2, v1, :cond_3

    return-void

    :cond_3
    iget-object v1, v0, Lde/i;->c:Landroid/telephony/TelephonyManager;

    invoke-virtual {v1}, Landroid/telephony/TelephonyManager;->getCallState()I

    move-result v1

    if-eq v1, v2, :cond_d

    invoke-direct/range {p0 .. p0}, Lde/i;->C()Z

    move-result v1

    if-nez v1, :cond_4

    goto/16 :goto_5

    :cond_4
    iget-object v1, v0, Lde/i;->b:Landroid/content/Context;

    invoke-static {v1}, Lme/w;->S(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_5

    return-void

    :cond_5
    iget v1, v0, Lde/i;->h:I

    invoke-static {v1}, Lde/j;->J(I)I

    move-result v1

    iget-object v4, v0, Lde/i;->b:Landroid/content/Context;

    const v5, 0x7f120399

    invoke-virtual {v4, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    iget-object v5, v0, Lde/i;->b:Landroid/content/Context;

    const v6, 0x7f0e00af

    const/4 v7, 0x0

    invoke-static {v5, v6, v7}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v5

    const v6, 0x7f0b06b6

    invoke-virtual {v5, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/TextView;

    const v9, 0x7f0b0bc9

    invoke-virtual {v5, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Landroid/widget/TextView;

    invoke-virtual {v8, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v4, v0, Lde/i;->b:Landroid/content/Context;

    const v10, 0x7f120f09

    invoke-virtual {v4, v10}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    new-array v10, v2, [Ljava/lang/Object;

    invoke-static {}, Ljava/text/NumberFormat;->getPercentInstance()Ljava/text/NumberFormat;

    move-result-object v11

    int-to-float v1, v1

    const/high16 v12, 0x42c80000    # 100.0f

    div-float/2addr v1, v12

    float-to-double v12, v1

    invoke-virtual {v11, v12, v13}, Ljava/text/NumberFormat;->format(D)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v10, v3

    invoke-static {v4, v10}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v9, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    new-instance v1, Lcom/miui/common/ui/d$b;

    iget-object v4, v0, Lde/i;->b:Landroid/content/Context;

    invoke-static {v4}, Lcom/miui/common/ui/d;->g(Landroid/content/Context;)Landroid/content/Context;

    move-result-object v4

    const v9, 0x7f130455

    invoke-direct {v1, v4, v9}, Lcom/miui/common/ui/d$b;-><init>(Landroid/content/Context;I)V

    invoke-virtual {v1, v2}, Lcom/miui/common/ui/d$b;->b(Z)Lcom/miui/common/ui/d$b;

    move-result-object v1

    invoke-virtual {v1, v5}, Lcom/miui/common/ui/d$b;->l(Landroid/view/View;)Lcom/miui/common/ui/d$b;

    move-result-object v1

    const v4, 0x7f1215ce

    invoke-virtual {v1, v4, v7}, Lcom/miui/common/ui/d$b;->g(ILandroid/content/DialogInterface$OnClickListener;)Lcom/miui/common/ui/d$b;

    move-result-object v1

    invoke-static {}, Lx4/t;->E()Z

    move-result v4

    const/4 v5, 0x2

    if-nez v4, :cond_a

    invoke-direct/range {p0 .. p0}, Lde/i;->b0()Z

    move-result v4

    const v9, 0x7f121076

    if-eqz v4, :cond_6

    iget v4, v0, Lde/i;->h:I

    const/4 v10, 0x5

    if-gt v4, v10, :cond_6

    iget-object v4, v0, Lde/i;->b:Landroid/content/Context;

    invoke-static {v4}, Lde/j;->E(Landroid/content/Context;)Z

    move-result v4

    if-nez v4, :cond_6

    const v2, 0x7f120728

    new-instance v3, Lde/i$h;

    invoke-direct {v3, v0}, Lde/i$h;-><init>(Lde/i;)V

    invoke-virtual {v1, v2, v3}, Lcom/miui/common/ui/d$b;->i(ILandroid/content/DialogInterface$OnClickListener;)Lcom/miui/common/ui/d$b;

    invoke-virtual {v1, v9, v7}, Lcom/miui/common/ui/d$b;->g(ILandroid/content/DialogInterface$OnClickListener;)Lcom/miui/common/ui/d$b;

    goto/16 :goto_3

    :cond_6
    iget-object v4, v0, Lde/i;->b:Landroid/content/Context;

    invoke-static {v4}, Lde/j;->E(Landroid/content/Context;)Z

    move-result v4

    if-nez v4, :cond_a

    iget-object v4, v0, Lde/i;->b:Landroid/content/Context;

    invoke-static {v4}, Lde/j;->F(Landroid/content/Context;)Z

    move-result v4

    if-nez v4, :cond_a

    iget-object v4, v0, Lde/i;->b:Landroid/content/Context;

    invoke-static {v4}, Lme/w;->g(Landroid/content/Context;)I

    move-result v4

    iget-object v10, v0, Lde/i;->b:Landroid/content/Context;

    iget v11, v0, Lde/i;->h:I

    invoke-static {v10, v4, v11, v2}, Lme/b0;->o(Landroid/content/Context;III)I

    move-result v4

    div-int/lit8 v10, v4, 0x3c

    rem-int/lit8 v4, v4, 0x3c

    iget-object v11, v0, Lde/i;->b:Landroid/content/Context;

    const v12, 0x7f120c99

    new-array v13, v5, [Ljava/lang/Object;

    invoke-virtual {v11}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v14

    const v15, 0x7f100069

    new-array v5, v2, [Ljava/lang/Object;

    invoke-static {v10}, Lme/b0;->i(I)Ljava/lang/String;

    move-result-object v16

    aput-object v16, v5, v3

    invoke-virtual {v14, v15, v10, v5}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v13, v3

    iget-object v5, v0, Lde/i;->b:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v10, 0x7f10006a

    new-array v14, v2, [Ljava/lang/Object;

    invoke-static {v4}, Lme/b0;->i(I)Ljava/lang/String;

    move-result-object v15

    aput-object v15, v14, v3

    invoke-virtual {v5, v10, v4, v14}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v13, v2

    invoke-virtual {v11, v12, v13}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    iget-object v5, v0, Lde/i;->b:Landroid/content/Context;

    const v10, 0x7f12039b

    new-array v2, v2, [Ljava/lang/Object;

    aput-object v4, v2, v3

    invoke-virtual {v5, v10, v2}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    iget-object v3, v0, Lde/i;->b:Landroid/content/Context;

    invoke-static {v3}, Lde/j;->G(Landroid/content/Context;)Z

    move-result v3

    if-eqz v3, :cond_9

    iget-object v3, v0, Lde/i;->b:Landroid/content/Context;

    invoke-static {v3}, Lde/j;->M(Landroid/content/Context;)V

    const v3, 0x7f12125e

    invoke-virtual {v1, v3}, Lcom/miui/common/ui/d$b;->j(I)Lcom/miui/common/ui/d$b;

    iget-object v3, v0, Lde/i;->b:Landroid/content/Context;

    const v4, 0x7f0e0442

    invoke-static {v3, v4, v7}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v3

    const v4, 0x7f0b0889

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    iget-object v5, v0, Lde/i;->b:Landroid/content/Context;

    invoke-static {v5}, Lme/w;->y(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-eqz v8, :cond_7

    const v4, 0x7f0b0888

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/view/ViewGroup;

    if-eqz v4, :cond_8

    const/16 v5, 0x8

    invoke-virtual {v4, v5}, Landroid/view/View;->setVisibility(I)V

    goto :goto_1

    :cond_7
    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_8
    :goto_1
    invoke-virtual {v3, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    invoke-static {v2}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v2

    invoke-virtual {v4, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {v1, v3}, Lcom/miui/common/ui/d$b;->l(Landroid/view/View;)Lcom/miui/common/ui/d$b;

    goto :goto_2

    :cond_9
    invoke-static {v2}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v2

    invoke-virtual {v8, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :goto_2
    invoke-virtual {v1, v9, v7}, Lcom/miui/common/ui/d$b;->g(ILandroid/content/DialogInterface$OnClickListener;)Lcom/miui/common/ui/d$b;

    move-result-object v2

    const v3, 0x7f12039d

    new-instance v4, Lde/i$i;

    invoke-direct {v4, v0}, Lde/i$i;-><init>(Lde/i;)V

    invoke-virtual {v2, v3, v4}, Lcom/miui/common/ui/d$b;->i(ILandroid/content/DialogInterface$OnClickListener;)Lcom/miui/common/ui/d$b;

    :cond_a
    :goto_3
    invoke-virtual {v1}, Lcom/miui/common/ui/d$b;->a()Lcom/miui/common/ui/d;

    move-result-object v1

    new-instance v2, Lde/i$j;

    invoke-direct {v2, v0}, Lde/i$j;-><init>(Lde/i;)V

    invoke-virtual {v1, v2}, Landroid/app/Dialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    invoke-virtual {v1}, Lcom/miui/common/ui/d;->j()V

    invoke-virtual {v1}, Lmiuix/appcompat/app/AlertDialog;->show()V

    iput-object v1, v0, Lde/i;->o:Lmiuix/appcompat/app/AlertDialog;

    iget-object v1, v0, Lde/i;->u:Lum/b;

    invoke-virtual {v1}, Lum/b;->l()Z

    move-result v1

    if-eqz v1, :cond_c

    const-string v1, "2.0"

    invoke-static {v1}, Lmiuix/view/HapticCompat;->c(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_b

    iget-object v1, v0, Lde/i;->u:Lum/b;

    sget v2, Lmiuix/view/i;->E:I

    invoke-virtual {v1, v2}, Lum/b;->f(I)Z

    goto :goto_4

    :cond_b
    iget-object v1, v0, Lde/i;->u:Lum/b;

    sget v2, Lmiuix/view/i;->n:I

    const/4 v3, 0x2

    invoke-virtual {v1, v2, v3}, Lum/b;->g(II)Z

    :cond_c
    :goto_4
    iget-object v1, v0, Lde/i;->b:Landroid/content/Context;

    invoke-static {v1}, Lde/j;->n0(Landroid/content/Context;)V

    :cond_d
    :goto_5
    return-void
.end method

.method static synthetic s(Lde/i;)Lmiuix/appcompat/app/AlertDialog;
    .locals 0

    iget-object p0, p0, Lde/i;->o:Lmiuix/appcompat/app/AlertDialog;

    return-object p0
.end method

.method private s0()V
    .locals 3

    const-string v0, "PowerNoticeUI"

    const-string v1, "showing low temperature dialog"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lde/i;->F()V

    invoke-direct {p0}, Lde/i;->E()V

    invoke-direct {p0}, Lde/i;->D()V

    new-instance v0, Lcom/miui/common/ui/d$b;

    iget-object v1, p0, Lde/i;->b:Landroid/content/Context;

    const v2, 0x7f130455

    invoke-direct {v0, v1, v2}, Lcom/miui/common/ui/d$b;-><init>(Landroid/content/Context;I)V

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/miui/common/ui/d$b;->b(Z)Lcom/miui/common/ui/d$b;

    move-result-object v0

    const v1, 0x7f120ce1

    invoke-virtual {v0, v1}, Lcom/miui/common/ui/d$b;->j(I)Lcom/miui/common/ui/d$b;

    move-result-object v0

    const v1, 0x7f120ce0

    invoke-virtual {v0, v1}, Lcom/miui/common/ui/d$b;->e(I)Lcom/miui/common/ui/d$b;

    move-result-object v0

    const v1, 0x1010355

    invoke-virtual {v0, v1}, Lcom/miui/common/ui/d$b;->d(I)Lcom/miui/common/ui/d$b;

    move-result-object v0

    const v1, 0x7f120cdf

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/miui/common/ui/d$b;->i(ILandroid/content/DialogInterface$OnClickListener;)Lcom/miui/common/ui/d$b;

    move-result-object v0

    new-instance v1, Lde/i$k;

    invoke-direct {v1, p0}, Lde/i$k;-><init>(Lde/i;)V

    invoke-virtual {v0, v1}, Lcom/miui/common/ui/d$b;->h(Landroid/content/DialogInterface$OnDismissListener;)Lcom/miui/common/ui/d$b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/common/ui/d$b;->a()Lcom/miui/common/ui/d;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v1

    const/16 v2, 0x7da

    invoke-virtual {v1, v2}, Landroid/view/Window;->setType(I)V

    invoke-virtual {v0}, Lmiuix/appcompat/app/AlertDialog;->show()V

    iput-object v0, p0, Lde/i;->p:Lmiuix/appcompat/app/AlertDialog;

    return-void
.end method

.method static synthetic t(Lde/i;)Landroid/os/CountDownTimer;
    .locals 0

    iget-object p0, p0, Lde/i;->x:Landroid/os/CountDownTimer;

    return-object p0
.end method

.method static synthetic u(Lde/i;)Lmiuix/appcompat/app/AlertDialog;
    .locals 0

    iget-object p0, p0, Lde/i;->w:Lmiuix/appcompat/app/AlertDialog;

    return-object p0
.end method

.method private u0()V
    .locals 7

    new-instance v6, Lde/i$g;

    const-wide/16 v2, 0x7530

    const-wide/16 v4, 0x3e8

    move-object v0, v6

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lde/i$g;-><init>(Lde/i;JJ)V

    invoke-virtual {v6}, Landroid/os/CountDownTimer;->start()Landroid/os/CountDownTimer;

    move-result-object v0

    iput-object v0, p0, Lde/i;->x:Landroid/os/CountDownTimer;

    return-void
.end method

.method static synthetic v(Lde/i;Lmiuix/appcompat/app/AlertDialog;)Lmiuix/appcompat/app/AlertDialog;
    .locals 0

    iput-object p1, p0, Lde/i;->w:Lmiuix/appcompat/app/AlertDialog;

    return-object p1
.end method

.method static synthetic w(Lde/i;)Landroid/content/Context;
    .locals 0

    iget-object p0, p0, Lde/i;->b:Landroid/content/Context;

    return-object p0
.end method

.method static synthetic x(Lde/i;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Lde/i;->p0(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic y(Lde/i;)V
    .locals 0

    invoke-direct {p0}, Lde/i;->f0()V

    return-void
.end method

.method static synthetic z()Ljava/io/File;
    .locals 1

    sget-object v0, Lde/i;->G:Ljava/io/File;

    return-object v0
.end method


# virtual methods
.method public B(Lde/g;)V
    .locals 1

    iget-object v0, p0, Lde/i;->D:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lde/i;->D:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->add(Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method

.method public declared-synchronized F()V
    .locals 3

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lde/i;->o:Lmiuix/appcompat/app/AlertDialog;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/app/Dialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "PowerNoticeUI"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "closing low battery warning: level="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lde/i;->h:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lde/i;->o:Lmiuix/appcompat/app/AlertDialog;

    invoke-virtual {v0}, Lmiuix/appcompat/app/AlertDialog;->dismiss()V

    const/4 v0, 0x0

    iput-object v0, p0, Lde/i;->o:Lmiuix/appcompat/app/AlertDialog;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public I()I
    .locals 1

    iget v0, p0, Lde/i;->h:I

    return v0
.end method

.method public J()Landroid/os/Handler;
    .locals 1

    iget-object v0, p0, Lde/i;->a:Landroid/os/Handler;

    return-object v0
.end method

.method public L()Landroid/database/ContentObserver;
    .locals 1

    iget-object v0, p0, Lde/i;->C:Landroid/database/ContentObserver;

    return-object v0
.end method

.method public O()I
    .locals 1

    iget v0, p0, Lde/i;->i:I

    return v0
.end method

.method public Q(Landroid/content/Intent;)V
    .locals 13

    iget-boolean v0, p0, Lde/i;->t:Z

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-direct {p0}, Lde/i;->N()I

    move-result v0

    const/16 v1, 0x64

    const-string v2, "level"

    invoke-virtual {p1, v2, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    invoke-direct {p0, v1}, Lde/i;->j0(I)I

    move-result v1

    iput v1, p0, Lde/i;->h:I

    const-string v1, "status"

    const/4 v2, 0x1

    invoke-virtual {p1, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    iget v3, p0, Lde/i;->i:I

    const-string v4, "plugged"

    invoke-virtual {p1, v4, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v4

    iput v4, p0, Lde/i;->i:I

    iget v4, p0, Lde/i;->j:I

    const-string v5, "invalid_charger"

    const/4 v6, 0x0

    invoke-virtual {p1, v5, v6}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v5

    iput v5, p0, Lde/i;->j:I

    iget v5, p0, Lde/i;->i:I

    if-eqz v5, :cond_1

    move v5, v2

    goto :goto_0

    :cond_1
    move v5, v6

    :goto_0
    if-eqz v3, :cond_2

    move v7, v2

    goto :goto_1

    :cond_2
    move v7, v6

    :goto_1
    invoke-direct {p0, v0}, Lde/i;->H(I)I

    move-result v8

    iget v9, p0, Lde/i;->h:I

    invoke-direct {p0, v9}, Lde/i;->H(I)I

    move-result v9

    const-string v10, "temperature"

    invoke-virtual {p1, v10, v6}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v10

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "handleBatteryChanged oldPlugType "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " mPlugType "

    invoke-virtual {v11, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lde/i;->i:I

    invoke-virtual {v11, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " oldBatteryLevel "

    invoke-virtual {v11, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " mBatteryLevel "

    invoke-virtual {v11, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lde/i;->h:I

    invoke-virtual {v11, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " temperature "

    invoke-virtual {v11, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v11, "PowerNoticeUI"

    invoke-static {v11, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget v3, p0, Lde/i;->h:I

    if-ne v3, v0, :cond_3

    iget v3, p0, Lde/i;->k:I

    if-eq v3, v1, :cond_4

    :cond_3
    invoke-virtual {p0, p1}, Lde/i;->l0(Landroid/content/Intent;)V

    :cond_4
    iget-object v3, p0, Lde/i;->A:Lde/a;

    if-eqz v3, :cond_5

    invoke-virtual {v3, p1}, Lde/a;->a(Landroid/content/Intent;)V

    :cond_5
    iget-object v3, p0, Lde/i;->B:Lud/i;

    if-eqz v3, :cond_6

    invoke-virtual {v3, p1}, Lud/i;->a(Landroid/content/Intent;)V

    :cond_6
    iget-object v3, p0, Lde/i;->D:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v3}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_2
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    if-eqz v12, :cond_7

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lde/g;

    invoke-interface {v12, p1}, Lde/g;->a(Landroid/content/Intent;)V

    goto :goto_2

    :cond_7
    invoke-direct {p0, p1}, Lde/i;->k0(Landroid/content/Intent;)V

    iget-object p1, p0, Lde/i;->b:Landroid/content/Context;

    iget v3, p0, Lde/i;->h:I

    invoke-static {p1, v0, v3}, Lme/w;->k0(Landroid/content/Context;II)V

    iput v1, p0, Lde/i;->k:I

    iget-boolean p1, p0, Lde/i;->r:Z

    if-eqz p1, :cond_8

    iget-object p1, p0, Lde/i;->p:Lmiuix/appcompat/app/AlertDialog;

    if-nez p1, :cond_8

    const/16 p1, -0x50

    if-gt v10, p1, :cond_8

    iget p1, p0, Lde/i;->h:I

    const/16 v0, 0x32

    if-gt p1, v0, :cond_8

    invoke-direct {p0}, Lde/i;->s0()V

    iput-boolean v6, p0, Lde/i;->r:Z

    return-void

    :cond_8
    if-ltz v10, :cond_9

    iput-boolean v2, p0, Lde/i;->r:Z

    invoke-direct {p0}, Lde/i;->G()V

    goto :goto_3

    :cond_9
    iget-object p1, p0, Lde/i;->p:Lmiuix/appcompat/app/AlertDialog;

    if-eqz p1, :cond_a

    return-void

    :cond_a
    :goto_3
    if-nez v4, :cond_b

    iget p1, p0, Lde/i;->j:I

    if-eqz p1, :cond_b

    const-string p1, "showing invalid charger warning"

    invoke-static {v11, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0}, Lde/i;->o0()V

    return-void

    :cond_b
    if-eqz v4, :cond_c

    iget p1, p0, Lde/i;->j:I

    if-nez p1, :cond_c

    invoke-direct {p0}, Lde/i;->E()V

    goto :goto_4

    :cond_c
    iget-object p1, p0, Lde/i;->n:Lmiuix/appcompat/app/AlertDialog;

    if-eqz p1, :cond_d

    return-void

    :cond_d
    :goto_4
    if-nez v5, :cond_12

    if-lt v9, v8, :cond_e

    if-eqz v7, :cond_12

    :cond_e
    if-eq v1, v2, :cond_12

    if-gez v9, :cond_12

    iget p1, p0, Lde/i;->h:I

    invoke-static {p1}, Lde/j;->J(I)I

    move-result p1

    iget-object v0, p0, Lde/i;->b:Landroid/content/Context;

    invoke-static {v0}, Lme/w;->Q(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_f

    sget-object v0, Lde/j;->a:[I

    aget v0, v0, v6

    if-eq p1, v0, :cond_14

    :cond_f
    iget-boolean p1, p0, Lde/i;->v:Z

    if-eqz p1, :cond_10

    iget p1, p0, Lde/i;->h:I

    if-le p1, v2, :cond_14

    :cond_10
    invoke-virtual {p0}, Lde/i;->F()V

    invoke-direct {p0}, Lde/i;->r0()V

    invoke-direct {p0}, Lde/i;->q0()V

    iget-object p1, p0, Lde/i;->a:Landroid/os/Handler;

    invoke-virtual {p1, v2}, Landroid/os/Handler;->removeMessages(I)V

    iget-boolean p1, p0, Lde/i;->s:Z

    if-eqz p1, :cond_11

    iget-object p1, p0, Lde/i;->b:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object p1

    iget p1, p1, Landroid/content/res/Configuration;->orientation:I

    if-ne p1, v2, :cond_11

    iget-object p1, p0, Lde/i;->b:Landroid/content/Context;

    invoke-static {p1}, Lme/w;->S(Landroid/content/Context;)Z

    move-result p1

    if-nez p1, :cond_11

    iget-object p1, p0, Lde/i;->a:Landroid/os/Handler;

    invoke-virtual {p1, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V

    :cond_11
    move v2, v6

    goto :goto_5

    :cond_12
    if-nez v5, :cond_13

    if-le v9, v8, :cond_14

    if-lez v9, :cond_14

    :cond_13
    invoke-virtual {p0}, Lde/i;->F()V

    invoke-direct {p0}, Lde/i;->D()V

    invoke-direct {p0}, Lde/i;->U()V

    :cond_14
    :goto_5
    iget-boolean p1, p0, Lde/i;->v:Z

    if-eqz p1, :cond_15

    iget p1, p0, Lde/i;->h:I

    if-nez p1, :cond_15

    if-nez v5, :cond_15

    invoke-virtual {p0}, Lde/i;->F()V

    invoke-direct {p0}, Lde/i;->D()V

    invoke-direct {p0}, Lde/i;->U()V

    :cond_15
    if-eqz v5, :cond_16

    if-nez v7, :cond_16

    invoke-static {}, Lmd/o;->q()Z

    move-result p1

    if-nez p1, :cond_16

    iget-object p1, p0, Lde/i;->a:Landroid/os/Handler;

    const/4 v0, 0x3

    :goto_6
    invoke-virtual {p1, v0}, Landroid/os/Handler;->removeMessages(I)V

    iget-object p1, p0, Lde/i;->a:Landroid/os/Handler;

    invoke-virtual {p1, v0}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V

    goto :goto_7

    :cond_16
    if-eqz v2, :cond_17

    if-nez v5, :cond_17

    if-eqz v7, :cond_17

    iget-object p1, p0, Lde/i;->a:Landroid/os/Handler;

    const/4 v0, 0x2

    goto :goto_6

    :cond_17
    :goto_7
    return-void
.end method

.method public R(Landroid/content/Intent;)V
    .locals 7

    const-string v0, "level"

    const/16 v1, 0x64

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    const-string v1, "status"

    const/4 v2, -0x1

    invoke-virtual {p1, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p1

    iget v1, p0, Lde/i;->z:I

    const/4 v2, 0x0

    const/4 v3, 0x2

    const/4 v4, 0x1

    if-ne v1, v3, :cond_0

    move v5, v4

    goto :goto_0

    :cond_0
    move v5, v2

    :goto_0
    iget v6, p0, Lde/i;->E:I

    if-ne v6, v3, :cond_1

    if-gt v1, v3, :cond_1

    move v1, v4

    goto :goto_1

    :cond_1
    move v1, v2

    :goto_1
    const-string v6, "PowerNoticeUI"

    if-nez v5, :cond_2

    if-eqz v1, :cond_7

    :cond_2
    const/4 v1, 0x3

    if-ne p1, v1, :cond_7

    if-ne v0, v4, :cond_7

    iget-object v1, p0, Lde/i;->b:Landroid/content/Context;

    invoke-static {v1}, Lme/w;->q(Landroid/content/Context;)I

    move-result v1

    if-nez v1, :cond_7

    iget-boolean v1, p0, Lde/i;->v:Z

    if-eqz v1, :cond_7

    iget-object v1, p0, Lde/i;->b:Landroid/content/Context;

    invoke-static {v1}, Lme/w;->l0(Landroid/content/Context;)V

    invoke-static {}, Lx4/z1;->r()Z

    move-result v1

    if-eqz v1, :cond_6

    invoke-static {}, Lx4/z1;->e()I

    move-result v1

    if-nez v1, :cond_6

    iget-object v1, p0, Lde/i;->b:Landroid/content/Context;

    const-string v2, "keyguard"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/KeyguardManager;

    invoke-virtual {v1}, Landroid/app/KeyguardManager;->isKeyguardLocked()Z

    move-result v1

    if-nez v1, :cond_5

    iget-object v1, p0, Lde/i;->b:Landroid/content/Context;

    invoke-static {v1}, La8/l0;->g(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_5

    iget-object v1, p0, Lde/i;->b:Landroid/content/Context;

    invoke-static {v1}, Ls5/a;->g(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_3

    goto :goto_2

    :cond_3
    iget-object v1, p0, Lde/i;->b:Landroid/content/Context;

    invoke-static {v1}, Lme/w;->S(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_4

    iget-object v1, p0, Lde/i;->w:Lmiuix/appcompat/app/AlertDialog;

    if-nez v1, :cond_9

    invoke-direct {p0}, Lde/i;->n0()V

    invoke-direct {p0}, Lde/i;->u0()V

    const-string v1, "showEnterExtremeDialog"

    goto/16 :goto_3

    :cond_4
    iget-object v1, p0, Lde/i;->b:Landroid/content/Context;

    invoke-static {v1, v4}, Lme/w;->x0(Landroid/content/Context;I)V

    iget-object v1, p0, Lde/i;->b:Landroid/content/Context;

    invoke-static {v1, v4}, Lme/w;->s0(Landroid/content/Context;I)V

    iget-object v1, p0, Lde/i;->b:Landroid/content/Context;

    invoke-static {v1}, Lme/w;->c(Landroid/content/Context;)V

    iget-object v1, p0, Lde/i;->b:Landroid/content/Context;

    const v2, 0x7f121032

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lde/i;->p0(Ljava/lang/String;)V

    const-string v1, "in_superpower_come_extreme"

    goto :goto_3

    :cond_5
    :goto_2
    iget-object v1, p0, Lde/i;->b:Landroid/content/Context;

    invoke-static {v1}, Lde/j;->U(Landroid/content/Context;)V

    invoke-direct {p0}, Lde/i;->u0()V

    const-string v1, "showExtremeNotification"

    goto :goto_3

    :cond_6
    invoke-static {}, Lx4/z1;->r()Z

    move-result v1

    if-nez v1, :cond_9

    invoke-static {}, Lx4/z1;->e()I

    move-result v1

    if-eqz v1, :cond_9

    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    const-string v2, "com.miui.securitycenter"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    const-string v2, "com.miui.securitycenter.extreme.endurance.shutdown"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    iget-object v2, p0, Lde/i;->b:Landroid/content/Context;

    invoke-virtual {v2, v1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    const-string v1, "ACTION_EXTREME_ENDURANCE_SHUTDOWN"

    goto :goto_3

    :cond_7
    iget v1, p0, Lde/i;->z:I

    if-eq v1, v0, :cond_9

    if-le v0, v4, :cond_9

    iget-object v1, p0, Lde/i;->b:Landroid/content/Context;

    invoke-static {v1}, Lme/w;->q(Landroid/content/Context;)I

    move-result v1

    if-ne v1, v4, :cond_9

    iget-object v1, p0, Lde/i;->b:Landroid/content/Context;

    const v5, 0x7f121035

    invoke-virtual {v1, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lde/i;->p0(Ljava/lang/String;)V

    iget-object v1, p0, Lde/i;->b:Landroid/content/Context;

    invoke-static {v1}, Lme/w;->G(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_8

    iget-object v1, p0, Lde/i;->b:Landroid/content/Context;

    invoke-static {v1, v2, v4}, Lme/w;->w0(Landroid/content/Context;ZZ)V

    :cond_8
    iget-object v1, p0, Lde/i;->b:Landroid/content/Context;

    invoke-static {v1}, Lme/w;->b(Landroid/content/Context;)V

    const-string v1, "quit extreme"

    :goto_3
    invoke-static {v6, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_9
    if-ge v0, v3, :cond_a

    if-ne p1, v3, :cond_e

    :cond_a
    iget-object v1, p0, Lde/i;->x:Landroid/os/CountDownTimer;

    if-eqz v1, :cond_b

    invoke-virtual {v1}, Landroid/os/CountDownTimer;->cancel()V

    :cond_b
    iget-object v1, p0, Lde/i;->w:Lmiuix/appcompat/app/AlertDialog;

    if-eqz v1, :cond_c

    invoke-virtual {v1}, Landroid/app/Dialog;->isShowing()Z

    move-result v1

    if-eqz v1, :cond_c

    iget-object v1, p0, Lde/i;->w:Lmiuix/appcompat/app/AlertDialog;

    invoke-virtual {v1}, Lmiuix/appcompat/app/AlertDialog;->dismiss()V

    :cond_c
    iget-object v1, p0, Lde/i;->b:Landroid/content/Context;

    invoke-static {v1}, Lde/j;->f(Landroid/content/Context;)V

    if-lt v0, v3, :cond_d

    iget-object v1, p0, Lde/i;->b:Landroid/content/Context;

    invoke-static {v1}, Lme/w;->I(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_d

    iget-object v1, p0, Lde/i;->b:Landroid/content/Context;

    invoke-static {v1}, Lme/w;->c(Landroid/content/Context;)V

    :cond_d
    const-string v1, "extreme_cancel"

    invoke-static {v6, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_e
    iget v1, p0, Lde/i;->z:I

    if-eq v1, v0, :cond_f

    iput v0, p0, Lde/i;->z:I

    :cond_f
    iget v0, p0, Lde/i;->E:I

    if-eq v0, p1, :cond_10

    iput p1, p0, Lde/i;->E:I

    :cond_10
    return-void
.end method

.method public S(Landroid/content/Context;)V
    .locals 2

    invoke-static {}, Lme/w;->O()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    invoke-static {}, Lx4/z1;->e()I

    move-result v0

    invoke-static {}, Lx4/z1;->y()I

    move-result v1

    if-eq v0, v1, :cond_1

    return-void

    :cond_1
    invoke-static {p1}, La8/t1;->c(Landroid/content/Context;)Z

    move-result v0

    const-string v1, "PowerNoticeUI"

    if-eqz v0, :cond_2

    invoke-static {p1}, Lde/j;->V(Landroid/content/Context;)V

    const-string p1, "show fold wireless notifi"

    goto :goto_0

    :cond_2
    const-string v0, "OUT_OF_POSITION"

    invoke-static {p1, v0}, Lde/j;->m0(Landroid/content/Context;Ljava/lang/String;)V

    const-string p1, "show fold wireless dialog"

    :goto_0
    invoke-static {v1, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public a0()Z
    .locals 1

    iget-boolean v0, p0, Lde/i;->s:Z

    return v0
.end method

.method public final c0()V
    .locals 2

    const-string v0, "PowerNoticeUI"

    const-string v1, "ScreenOffEvent"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    iput-boolean v0, p0, Lde/i;->s:Z

    return-void
.end method

.method public final d0()V
    .locals 2

    const-string v0, "PowerNoticeUI"

    const-string v1, "ScreenOnEvent"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x1

    iput-boolean v0, p0, Lde/i;->s:Z

    return-void
.end method

.method public g0(Ljava/lang/Runnable;)V
    .locals 1

    invoke-virtual {p0}, Lde/i;->J()Landroid/os/Handler;

    move-result-object v0

    if-eqz v0, :cond_1

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lde/i;->J()Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_1
    :goto_0
    return-void
.end method

.method public h0(Ljava/lang/Runnable;J)V
    .locals 2

    invoke-virtual {p0}, Lde/i;->J()Landroid/os/Handler;

    move-result-object v0

    if-eqz v0, :cond_1

    if-eqz p1, :cond_1

    const-wide/16 v0, 0x0

    cmp-long v0, p2, v0

    if-gez v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lde/i;->J()Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_1
    :goto_0
    return-void
.end method

.method public i0(Landroid/media/Ringtone;)V
    .locals 3

    iget-object v0, p0, Lde/i;->a:Landroid/os/Handler;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object v0

    iput-object p1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    const/4 p1, 0x4

    iput p1, v0, Landroid/os/Message;->what:I

    iget-object p1, p0, Lde/i;->a:Landroid/os/Handler;

    const-wide/16 v1, 0x7d0

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    :cond_0
    return-void
.end method

.method public l0(Landroid/content/Intent;)V
    .locals 1

    invoke-static {}, Lme/w;->T()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lde/i;->a:Landroid/os/Handler;

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p0, p1}, Lde/i;->R(Landroid/content/Intent;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public t0(Landroid/content/Context;)V
    .locals 4

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lde/i;->b:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "sysui_powerui_enabled"

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-ne v0, v2, :cond_0

    return-void

    :cond_0
    iput-boolean v2, p0, Lde/i;->t:Z

    invoke-direct {p0}, Lde/i;->V()V

    iget-object v0, p0, Lde/i;->b:Landroid/content/Context;

    invoke-static {v0}, Lde/j;->p(Landroid/content/Context;)V

    new-instance v0, Lde/i$l;

    iget-object v1, p0, Lde/i;->b:Landroid/content/Context;

    invoke-direct {v0, p0, v1}, Lde/i$l;-><init>(Lde/i;Landroid/content/Context;)V

    iput-object v0, p0, Lde/i;->e:Lde/i$l;

    invoke-static {v0}, Lde/i$l;->a(Lde/i$l;)V

    new-instance v0, Lum/b;

    iget-object v1, p0, Lde/i;->b:Landroid/content/Context;

    invoke-direct {v0, v1}, Lum/b;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lde/i;->u:Lum/b;

    iget-object v0, p0, Lde/i;->b:Landroid/content/Context;

    const-string v1, "power_battery_level"

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    iput-object v0, p0, Lde/i;->d:Landroid/content/SharedPreferences;

    const-string v0, "window"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    iput-object v0, p0, Lde/i;->g:Landroid/view/Display;

    const-string v0, "display"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/display/DisplayManager;

    iput-object v0, p0, Lde/i;->f:Landroid/hardware/display/DisplayManager;

    const-string v0, "phone"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/telephony/TelephonyManager;

    iput-object p1, p0, Lde/i;->c:Landroid/telephony/TelephonyManager;

    new-instance p1, Lde/a;

    iget-object v0, p0, Lde/i;->b:Landroid/content/Context;

    invoke-direct {p1, v0}, Lde/a;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, Lde/i;->A:Lde/a;

    invoke-static {}, Lme/b;->L()Z

    move-result p1

    if-eqz p1, :cond_1

    invoke-static {}, Lud/i;->g()Lud/i;

    move-result-object p1

    iput-object p1, p0, Lde/i;->B:Lud/i;

    :cond_1
    const/16 p1, 0x1e

    iput p1, p0, Lde/i;->l:I

    iget-object p1, p0, Lde/i;->m:[I

    sget-object v0, Lde/j;->a:[I

    aget v1, v0, v3

    aput v1, p1, v3

    aget v1, v0, v2

    aput v1, p1, v2

    const/4 v1, 0x2

    aget v0, v0, v1

    aput v0, p1, v1

    invoke-direct {p0}, Lde/i;->b0()Z

    move-result p1

    if-eqz p1, :cond_2

    iget-object p1, p0, Lde/i;->m:[I

    const/4 v0, 0x5

    aput v0, p1, v1

    :cond_2
    iget-object p1, p0, Lde/i;->f:Landroid/hardware/display/DisplayManager;

    iget-object v0, p0, Lde/i;->F:Landroid/hardware/display/DisplayManager$DisplayListener;

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/hardware/display/DisplayManager;->registerDisplayListener(Landroid/hardware/display/DisplayManager$DisplayListener;Landroid/os/Handler;)V

    return-void
.end method

.method public v0()V
    .locals 2

    iget-object v0, p0, Lde/i;->e:Lde/i$l;

    if-eqz v0, :cond_0

    invoke-static {v0}, Lde/i$l;->b(Lde/i$l;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lde/i;->e:Lde/i$l;

    :cond_0
    iget-object v0, p0, Lde/i;->u:Lum/b;

    invoke-virtual {v0}, Lum/b;->k()V

    iget-object v0, p0, Lde/i;->f:Landroid/hardware/display/DisplayManager;

    iget-object v1, p0, Lde/i;->F:Landroid/hardware/display/DisplayManager$DisplayListener;

    invoke-virtual {v0, v1}, Landroid/hardware/display/DisplayManager;->unregisterDisplayListener(Landroid/hardware/display/DisplayManager$DisplayListener;)V

    invoke-virtual {p0}, Lde/i;->L()Landroid/database/ContentObserver;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lde/i;->b:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-virtual {p0}, Lde/i;->L()Landroid/database/ContentObserver;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    :cond_1
    const/4 v0, 0x0

    iput-boolean v0, p0, Lde/i;->t:Z

    return-void
.end method
