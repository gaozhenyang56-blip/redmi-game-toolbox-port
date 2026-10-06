.class public Lcom/miui/gamebooster/service/GameBoosterService;
.super Lcom/miui/gamebooster/service/u;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/gamebooster/service/GameBoosterService$GameBoosterBinder;
    }
.end annotation


# static fields
.field private static final G:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final A:Ljava/lang/Object;

.field private final B:Landroid/database/ContentObserver;

.field private final C:Landroid/database/ContentObserver;

.field private D:Landroid/content/BroadcastReceiver;

.field private E:Lcom/miui/gamebooster/mutiwindow/b$b;

.field private final F:Landroid/content/BroadcastReceiver;

.field private j:J

.field private k:J

.field private l:J

.field private m:I

.field private n:I

.field private o:Landroid/os/Handler;

.field private p:Landroid/os/Handler;

.field private q:Landroid/os/HandlerThread;

.field private r:Lcom/miui/gamebooster/service/GameBoosterService$GameBoosterBinder;

.field private s:Lmiui/security/SecurityManager;

.field private t:Landroid/content/Context;

.field private final u:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private v:Ljava/lang/Boolean;

.field private w:J

.field private x:Ljava/lang/Boolean;

.field private y:Ljava/lang/Boolean;

.field private z:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/miui/gamebooster/service/GameBoosterService;->G:Ljava/util/ArrayList;

    const-string v1, "com.miui.screenrecorder"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string v1, "com.lbe.security.miui"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string v1, "com.milink.service"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string v1, "com.miui.vpnsdkmanager"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string v1, "com.xiaomi.miplay_client"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string v1, "com.xiaomi.migameservice"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string v1, "com.xiaomi.misubscreenui"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string v1, "com.xiaomi.gamecenter.sdk.service"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string v1, "com.google.android.permissioncontroller"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string v1, "com.android.intentresolver"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-boolean v1, Ln6/a;->a:Z

    if-eqz v1, :cond_0

    const-string v1, "com.xiaomi.mipicks"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string v1, "android"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method

.method public constructor <init>()V
    .locals 3

    invoke-direct {p0}, Lcom/miui/gamebooster/service/u;-><init>()V

    const-string v0, "gb_notification_business_period"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lr4/a;->h(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/miui/gamebooster/service/GameBoosterService;->m:I

    const-string v0, "xunyou_alert_dialog_overdue_gift_count"

    invoke-static {v0, v1}, Lr4/a;->h(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/miui/gamebooster/service/GameBoosterService;->n:I

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/miui/gamebooster/service/GameBoosterService;->u:Ljava/util/List;

    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    iput-object v0, p0, Lcom/miui/gamebooster/service/GameBoosterService;->v:Ljava/lang/Boolean;

    const-wide/16 v1, 0x0

    iput-wide v1, p0, Lcom/miui/gamebooster/service/GameBoosterService;->w:J

    iput-object v0, p0, Lcom/miui/gamebooster/service/GameBoosterService;->x:Ljava/lang/Boolean;

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/miui/gamebooster/service/GameBoosterService;->A:Ljava/lang/Object;

    new-instance v0, Lcom/miui/gamebooster/service/GameBoosterService$a;

    iget-object v1, p0, Lcom/miui/gamebooster/service/GameBoosterService;->p:Landroid/os/Handler;

    invoke-direct {v0, p0, v1}, Lcom/miui/gamebooster/service/GameBoosterService$a;-><init>(Lcom/miui/gamebooster/service/GameBoosterService;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/miui/gamebooster/service/GameBoosterService;->B:Landroid/database/ContentObserver;

    new-instance v0, Lcom/miui/gamebooster/service/GameBoosterService$b;

    iget-object v1, p0, Lcom/miui/gamebooster/service/GameBoosterService;->p:Landroid/os/Handler;

    invoke-direct {v0, p0, v1}, Lcom/miui/gamebooster/service/GameBoosterService$b;-><init>(Lcom/miui/gamebooster/service/GameBoosterService;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/miui/gamebooster/service/GameBoosterService;->C:Landroid/database/ContentObserver;

    new-instance v0, Lcom/miui/gamebooster/service/GameBoosterService$c;

    invoke-direct {v0, p0}, Lcom/miui/gamebooster/service/GameBoosterService$c;-><init>(Lcom/miui/gamebooster/service/GameBoosterService;)V

    iput-object v0, p0, Lcom/miui/gamebooster/service/GameBoosterService;->D:Landroid/content/BroadcastReceiver;

    new-instance v0, Lcom/miui/gamebooster/service/GameBoosterService$d;

    invoke-direct {v0, p0}, Lcom/miui/gamebooster/service/GameBoosterService$d;-><init>(Lcom/miui/gamebooster/service/GameBoosterService;)V

    iput-object v0, p0, Lcom/miui/gamebooster/service/GameBoosterService;->E:Lcom/miui/gamebooster/mutiwindow/b$b;

    new-instance v0, Lcom/miui/gamebooster/service/GameBoosterService$f;

    invoke-direct {v0, p0}, Lcom/miui/gamebooster/service/GameBoosterService$f;-><init>(Lcom/miui/gamebooster/service/GameBoosterService;)V

    iput-object v0, p0, Lcom/miui/gamebooster/service/GameBoosterService;->F:Landroid/content/BroadcastReceiver;

    return-void
.end method

.method static synthetic A(Lcom/miui/gamebooster/service/GameBoosterService;Z)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/miui/gamebooster/service/GameBoosterService;->v0(Z)V

    return-void
.end method

.method private A0(Landroid/content/Intent;Ljava/lang/String;JI)V
    .locals 1

    iput-wide p3, p0, Lcom/miui/gamebooster/service/GameBoosterService;->l:J

    const-string v0, "gamebooster_xunyou_alert_last_time"

    invoke-static {v0, p3, p4}, Lr4/a;->q(Ljava/lang/String;J)V

    invoke-virtual {p2}, Ljava/lang/String;->hashCode()I

    const-string p3, "xunyou_alert_dialog_overdue_gift"

    invoke-virtual {p2, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p3

    if-nez p3, :cond_1

    const-string p3, "xunyou_alert_dialog_expired"

    invoke-virtual {p2, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p3

    if-nez p3, :cond_0

    goto :goto_0

    :cond_0
    const-string p3, "expired"

    invoke-virtual {p1, p3, p5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    goto :goto_0

    :cond_1
    const/4 p3, 0x0

    const-string p4, "gt_xunyou_net_booster_try_again_dialog_show_again"

    invoke-static {p4, p3}, Lr4/a;->e(Ljava/lang/String;Z)Z

    move-result p3

    if-eqz p3, :cond_2

    return-void

    :cond_2
    :goto_0
    const-string p3, "alertType"

    invoke-virtual {p1, p3, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const/4 p2, 0x0

    const/4 p3, 0x1

    invoke-static {p0, p1, p2, p3}, La8/k0;->w(Landroid/content/Context;Landroid/content/Intent;Ljava/lang/String;Z)V

    return-void
.end method

.method static synthetic B(Lcom/miui/gamebooster/service/GameBoosterService;)Z
    .locals 0

    invoke-direct {p0}, Lcom/miui/gamebooster/service/GameBoosterService;->n0()Z

    move-result p0

    return p0
.end method

.method private B0()V
    .locals 4

    const-string v0, "GameBoosterService"

    const-string v1, "start:startServerControl"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/miui/gamebooster/service/GameBoosterService;->o:Landroid/os/Handler;

    invoke-static {p0, v0}, Lcom/miui/gamebooster/service/w;->B(Landroid/content/Context;Landroid/os/Handler;)Lcom/miui/gamebooster/service/w;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/gamebooster/service/w;->d0()V

    iget-object v0, p0, Lcom/miui/gamebooster/service/GameBoosterService;->v:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/miui/gamebooster/service/GameBoosterService;->o:Landroid/os/Handler;

    invoke-static {p0, v0}, Lcom/miui/gamebooster/service/w;->B(Landroid/content/Context;Landroid/os/Handler;)Lcom/miui/gamebooster/service/w;

    move-result-object v0

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/miui/gamebooster/service/w;->U(J)V

    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-direct {p0, v0}, Lcom/miui/gamebooster/service/GameBoosterService;->Z(Ljava/lang/Boolean;)V

    :cond_0
    iget-wide v0, p0, Lcom/miui/gamebooster/service/GameBoosterService;->w:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_1

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/miui/gamebooster/service/GameBoosterService;->w:J

    sub-long/2addr v0, v2

    const-wide/32 v2, 0xa4cb80

    cmp-long v0, v0, v2

    if-lez v0, :cond_2

    :cond_1
    iget-object v0, p0, Lcom/miui/gamebooster/service/GameBoosterService;->o:Landroid/os/Handler;

    invoke-static {p0, v0}, Lcom/miui/gamebooster/service/w;->B(Landroid/content/Context;Landroid/os/Handler;)Lcom/miui/gamebooster/service/w;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/gamebooster/service/w;->O()V

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/miui/gamebooster/service/GameBoosterService;->w:J

    :cond_2
    return-void
.end method

.method static synthetic C(Lcom/miui/gamebooster/service/GameBoosterService;)V
    .locals 0

    invoke-direct {p0}, Lcom/miui/gamebooster/service/GameBoosterService;->F0()V

    return-void
.end method

.method private C0(ZLjava/lang/String;)Z
    .locals 1

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p1, 0x0

    return p1

    :cond_0
    const-string v0, "com.miui.gamebooster.ui.WindowCallActivity"

    invoke-static {v0, p2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "com.tencent.av.ui.VChatActivity"

    invoke-static {v0, p2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_1
    if-eqz p1, :cond_2

    const/4 p1, 0x1

    return p1

    :cond_2
    const-string p1, "com.miui.gamebooster.ui.GameBoxAlertActivity"

    invoke-static {p1, p2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p1

    return p1
.end method

.method static synthetic D(Lcom/miui/gamebooster/service/GameBoosterService;)Z
    .locals 0

    invoke-direct {p0}, Lcom/miui/gamebooster/service/GameBoosterService;->l0()Z

    move-result p0

    return p0
.end method

.method private D0()V
    .locals 2

    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    iput-object v0, p0, Lcom/miui/gamebooster/service/GameBoosterService;->v:Ljava/lang/Boolean;

    invoke-static {}, Lcom/miui/gamebooster/mutiwindow/b;->d()Lcom/miui/gamebooster/mutiwindow/b;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/gamebooster/service/GameBoosterService;->E:Lcom/miui/gamebooster/mutiwindow/b$b;

    invoke-virtual {v0, v1}, Lcom/miui/gamebooster/mutiwindow/b;->g(Lcom/miui/gamebooster/mutiwindow/b$b;)V

    return-void
.end method

.method static synthetic E(Lcom/miui/gamebooster/service/GameBoosterService;)Z
    .locals 0

    invoke-direct {p0}, Lcom/miui/gamebooster/service/GameBoosterService;->k0()Z

    move-result p0

    return p0
.end method

.method public static E0(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;)V
    .locals 5

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const-string v1, "already_added_game"

    invoke-static {v1, v0}, Lr4/a;->m(Ljava/lang/String;Ljava/util/ArrayList;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-static {p2, v3}, Lx4/g1;->a(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_1

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    return-void

    :cond_2
    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-static {v1, v0}, Lr4/a;->s(Ljava/lang/String;Ljava/util/ArrayList;)V

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    invoke-static {p2, v0, p1, p0}, La8/l1;->h(Landroid/content/Context;ILjava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic F(Lcom/miui/gamebooster/service/GameBoosterService;)Z
    .locals 0

    invoke-direct {p0}, Lcom/miui/gamebooster/service/GameBoosterService;->m0()Z

    move-result p0

    return p0
.end method

.method private F0()V
    .locals 2

    invoke-static {}, Lef/z;->d()Lef/z;

    move-result-object v0

    new-instance v1, Lcom/miui/gamebooster/service/v;

    invoke-direct {v1, p0}, Lcom/miui/gamebooster/service/v;-><init>(Lcom/miui/gamebooster/service/GameBoosterService;)V

    invoke-virtual {v0, v1}, Lef/z;->b(Ljava/lang/Runnable;)V

    return-void
.end method

.method static synthetic G(Lcom/miui/gamebooster/service/GameBoosterService;)Ljava/lang/Boolean;
    .locals 0

    iget-object p0, p0, Lcom/miui/gamebooster/service/GameBoosterService;->x:Ljava/lang/Boolean;

    return-object p0
.end method

.method static synthetic H(Lcom/miui/gamebooster/service/GameBoosterService;Ljava/lang/Boolean;)Ljava/lang/Boolean;
    .locals 0

    iput-object p1, p0, Lcom/miui/gamebooster/service/GameBoosterService;->x:Ljava/lang/Boolean;

    return-object p1
.end method

.method static synthetic I(Lcom/miui/gamebooster/service/GameBoosterService;)Ljava/lang/Boolean;
    .locals 0

    iget-object p0, p0, Lcom/miui/gamebooster/service/GameBoosterService;->v:Ljava/lang/Boolean;

    return-object p0
.end method

.method static synthetic J(Lcom/miui/gamebooster/service/GameBoosterService;Ljava/lang/Boolean;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/miui/gamebooster/service/GameBoosterService;->Z(Ljava/lang/Boolean;)V

    return-void
.end method

.method static synthetic K(Lcom/miui/gamebooster/service/GameBoosterService;)V
    .locals 0

    invoke-direct {p0}, Lcom/miui/gamebooster/service/GameBoosterService;->i0()V

    return-void
.end method

.method static synthetic L(Lcom/miui/gamebooster/service/GameBoosterService;J)J
    .locals 0

    iput-wide p1, p0, Lcom/miui/gamebooster/service/GameBoosterService;->j:J

    return-wide p1
.end method

.method static synthetic M(Lcom/miui/gamebooster/service/GameBoosterService;I)I
    .locals 0

    iput p1, p0, Lcom/miui/gamebooster/service/GameBoosterService;->m:I

    return p1
.end method

.method static synthetic N(Lcom/miui/gamebooster/service/GameBoosterService;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/miui/gamebooster/service/GameBoosterService;->w0(I)V

    return-void
.end method

.method static synthetic O(Lcom/miui/gamebooster/service/GameBoosterService;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/miui/gamebooster/service/GameBoosterService;->z:Z

    return p1
.end method

.method static synthetic P(Lcom/miui/gamebooster/service/GameBoosterService;)Landroid/os/Handler;
    .locals 0

    iget-object p0, p0, Lcom/miui/gamebooster/service/GameBoosterService;->o:Landroid/os/Handler;

    return-object p0
.end method

.method static synthetic Q(Lcom/miui/gamebooster/service/GameBoosterService;)Ljava/util/List;
    .locals 0

    iget-object p0, p0, Lcom/miui/gamebooster/service/GameBoosterService;->u:Ljava/util/List;

    return-object p0
.end method

.method static synthetic R(Lcom/miui/gamebooster/service/GameBoosterService;)V
    .locals 0

    invoke-direct {p0}, Lcom/miui/gamebooster/service/GameBoosterService;->j0()V

    return-void
.end method

.method static synthetic S()Ljava/util/ArrayList;
    .locals 1

    sget-object v0, Lcom/miui/gamebooster/service/GameBoosterService;->G:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic T(Lcom/miui/gamebooster/service/GameBoosterService;)Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Lcom/miui/gamebooster/service/GameBoosterService;->A:Ljava/lang/Object;

    return-object p0
.end method

.method static synthetic U(Lcom/miui/gamebooster/service/GameBoosterService;Ljava/lang/String;)Z
    .locals 0

    invoke-direct {p0, p1}, Lcom/miui/gamebooster/service/GameBoosterService;->V(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method private V(Ljava/lang/String;)Z
    .locals 1

    iget-object v0, p0, Lcom/miui/gamebooster/service/GameBoosterService;->u:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_0

    iget-object v0, p0, Lcom/miui/gamebooster/service/GameBoosterService;->u:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/miui/gamebooster/service/GameBoosterService;->t:Landroid/content/Context;

    invoke-static {p1}, Lme/w;->S(Landroid/content/Context;)Z

    move-result p1

    if-nez p1, :cond_0

    invoke-static {}, La8/s1;->a()Z

    move-result p1

    if-nez p1, :cond_0

    invoke-virtual {p0}, Lcom/miui/gamebooster/service/u;->i()Z

    move-result p1

    if-nez p1, :cond_0

    iget-object p1, p0, Lcom/miui/gamebooster/service/GameBoosterService;->t:Landroid/content/Context;

    invoke-static {p1}, La8/z;->h(Landroid/content/Context;)Z

    move-result p1

    if-nez p1, :cond_0

    invoke-static {}, Lx4/y;->h()Z

    move-result p1

    if-nez p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method private W()V
    .locals 2

    new-instance v0, Landroid/os/Handler;

    invoke-virtual {p0}, Landroid/content/Context;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/miui/gamebooster/service/GameBoosterService;->p:Landroid/os/Handler;

    invoke-static {}, Lcom/miui/gamebooster/service/y;->b()Lcom/miui/gamebooster/service/y;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/gamebooster/service/y;->a()Landroid/os/HandlerThread;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/gamebooster/service/GameBoosterService;->q:Landroid/os/HandlerThread;

    new-instance v0, Lcom/miui/gamebooster/service/GameBoosterService$e;

    iget-object v1, p0, Lcom/miui/gamebooster/service/GameBoosterService;->q:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/miui/gamebooster/service/GameBoosterService$e;-><init>(Lcom/miui/gamebooster/service/GameBoosterService;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/miui/gamebooster/service/GameBoosterService;->o:Landroid/os/Handler;

    return-void
.end method

.method private X(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 0

    const-string p1, "GameBoosterService start"

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "Gtb gamebooster on: "

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p3, p0, Lcom/miui/gamebooster/service/GameBoosterService;->y:Ljava/lang/Boolean;

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "Gtb isOpenGameBooster: "

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p3, p0, Lcom/miui/gamebooster/service/GameBoosterService;->x:Ljava/lang/Boolean;

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "Gtb gamelist: "

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p3, p0, Lcom/miui/gamebooster/service/GameBoosterService;->u:Ljava/util/List;

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "Gtb PCMode on: "

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p3, p0, Lcom/miui/gamebooster/service/GameBoosterService;->t:Landroid/content/Context;

    invoke-static {p3}, La8/z;->h(Landroid/content/Context;)Z

    move-result p3

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "Gtb screenmode: "

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, La8/s1;->a()Z

    move-result p3

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "Gtb folded on: "

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/miui/gamebooster/service/u;->i()Z

    move-result p3

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    invoke-virtual {p2}, Ljava/io/PrintWriter;->println()V

    const-string p1, "GameBoosterService service end"

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return-void
.end method

.method private Y(Ljava/lang/String;)Z
    .locals 5

    const/4 v0, 0x0

    const-string v1, "com.miui.securitycenter"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-nez v1, :cond_1

    const-string v1, "com.tencent.mobileqq"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_5

    :cond_1
    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1f

    const/4 v4, 0x0

    if-le p1, v1, :cond_3

    invoke-static {}, La8/a0;->M()Ljava/lang/Object;

    move-result-object p1

    invoke-static {p1}, La8/a0;->s(Ljava/lang/Object;)Landroid/content/ComponentName;

    move-result-object p1

    if-eqz p1, :cond_2

    invoke-virtual {p1}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v4

    :cond_2
    invoke-direct {p0, v0, v4}, Lcom/miui/gamebooster/service/GameBoosterService;->C0(ZLjava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_5

    return v3

    :cond_3
    const-string p1, "activity"

    invoke-virtual {p0, p1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/app/ActivityManager;

    invoke-virtual {p1, v3}, Landroid/app/ActivityManager;->getRunningTasks(I)Ljava/util/List;

    move-result-object p1

    if-eqz p1, :cond_4

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_4

    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/app/ActivityManager$RunningTaskInfo;

    iget-object p1, p1, Landroid/app/ActivityManager$RunningTaskInfo;->topActivity:Landroid/content/ComponentName;

    invoke-virtual {p1}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v4

    :cond_4
    invoke-direct {p0, v0, v4}, Lcom/miui/gamebooster/service/GameBoosterService;->C0(ZLjava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_5

    return v3

    :cond_5
    const-string p1, "gb_show_window"

    invoke-static {p1, v2}, Lr4/a;->e(Ljava/lang/String;Z)Z

    move-result p1

    if-eqz p1, :cond_6

    const-string p1, "GameBoosterService"

    const-string v0, "filter:GAMEBOOSTER_SHOWWINDOW true"

    invoke-static {p1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return v3

    :cond_6
    return v2
.end method

.method private Z(Ljava/lang/Boolean;)V
    .locals 3

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    const/16 v0, 0x75

    if-eqz p1, :cond_0

    invoke-direct {p0, v0}, Lcom/miui/gamebooster/service/GameBoosterService;->w0(I)V

    return-void

    :cond_0
    const-wide/16 v1, 0x5dc

    invoke-direct {p0, v0, v1, v2}, Lcom/miui/gamebooster/service/GameBoosterService;->x0(IJ)V

    return-void
.end method

.method private a0(Z)V
    .locals 1

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    const/16 v0, 0x76

    invoke-direct {p0, v0, p1}, Lcom/miui/gamebooster/service/GameBoosterService;->y0(ILjava/lang/Object;)V

    return-void
.end method

.method private c0()V
    .locals 3

    invoke-static {}, Lp7/a;->b()Lp7/a;

    move-result-object v0

    invoke-virtual {v0}, Lp7/a;->f()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lp7/a;->b()Lp7/a;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/gamebooster/service/GameBoosterService;->t:Landroid/content/Context;

    invoke-static {}, Lp7/d;->b()Lp7/d;

    move-result-object v2

    invoke-virtual {v2}, Lp7/d;->d()Z

    move-result v2

    invoke-virtual {v0, v1, v2}, Lp7/a;->h(Landroid/content/Context;Z)V

    :cond_0
    return-void
.end method

.method private d0()V
    .locals 3

    :try_start_0
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const-string v1, "gb.action.update_game_list"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "android.net.conn.CONNECTIVITY_CHANGE"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    invoke-static {p0}, Lr0/a;->b(Landroid/content/Context;)Lr0/a;

    move-result-object v1

    iget-object v2, p0, Lcom/miui/gamebooster/service/GameBoosterService;->D:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Lr0/a;->c(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "initLocalBroadcastReceiver: failed="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "GameBoosterService"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method

.method private e0(Ljava/lang/String;)Z
    .locals 3

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/4 v1, 0x0

    const/16 v2, 0x21

    if-le v0, v2, :cond_0

    return v1

    :cond_0
    iget-object v0, p0, Lcom/miui/gamebooster/service/GameBoosterService;->t:Landroid/content/Context;

    invoke-static {p1, v0}, Lf7/b;->j(Ljava/lang/String;Landroid/content/Context;)Z

    move-result p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/miui/gamebooster/service/GameBoosterService;->o:Landroid/os/Handler;

    invoke-static {p0, p1}, Lcom/miui/gamebooster/service/w;->B(Landroid/content/Context;Landroid/os/Handler;)Lcom/miui/gamebooster/service/w;

    move-result-object p1

    invoke-virtual {p1}, Lcom/miui/gamebooster/service/w;->y()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, La8/a0;->w(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_1

    const/4 v1, 0x1

    :cond_1
    return v1
.end method

.method private f0(Lcom/gzy/redmiport/compat/process/ForegroundInfo;)Z
    .locals 4

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/miui/gamebooster/service/GameBoosterService;->k:J

    sub-long/2addr v0, v2

    const-wide/32 v2, 0xa4cb80

    cmp-long v0, v0, v2

    const/4 v1, 0x1

    if-lez v0, :cond_0

    iget-object v0, p0, Lcom/miui/gamebooster/service/GameBoosterService;->u:Ljava/util/List;

    iget-object p1, p1, Lcom/gzy/redmiport/compat/process/ForegroundInfo;->mLastForegroundPackageName:Ljava/lang/String;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    invoke-static {}, Lx4/y;->h()Z

    move-result p1

    if-nez p1, :cond_0

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/miui/gamebooster/service/w;->z(Landroid/content/Context;)I

    move-result p1

    if-ne p1, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method private g0()Z
    .locals 14

    invoke-static {}, Lef/x;->z()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    iget-wide v2, p0, Lcom/miui/gamebooster/service/GameBoosterService;->j:J

    invoke-static {v2, v3}, Lcom/miui/networkassistant/utils/DateUtil;->getFromNowDayInterval(J)I

    move-result v0

    const/4 v2, -0x1

    if-lt v0, v2, :cond_7

    invoke-static {}, Ln6/a;->a()Z

    move-result v3

    if-eqz v3, :cond_7

    invoke-static {p0}, Lc3/w;->c(Landroid/content/Context;)Z

    move-result v3

    if-nez v3, :cond_1

    goto/16 :goto_0

    :cond_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v7

    iget-wide v3, p0, Lcom/miui/gamebooster/service/GameBoosterService;->l:J

    invoke-static {v3, v4}, Lcom/miui/networkassistant/utils/DateUtil;->getFromNowDayInterval(J)I

    move-result v3

    new-instance v5, Landroid/content/Intent;

    const-string v4, "com.miui.gamebooster.action.XUNYOU_ALERT_ACTIVITY"

    invoke-direct {v5, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    iget-wide v9, p0, Lcom/miui/gamebooster/service/GameBoosterService;->j:J

    const-wide/16 v11, -0x1

    cmp-long v4, v9, v11

    const/16 v6, 0x1e

    const-wide/16 v11, 0x0

    const/4 v13, 0x1

    if-eqz v4, :cond_2

    cmp-long v4, v9, v11

    if-nez v4, :cond_4

    :cond_2
    iget-boolean v4, p0, Lcom/miui/gamebooster/service/GameBoosterService;->z:Z

    if-eqz v4, :cond_4

    if-le v3, v6, :cond_4

    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.miui.gamebooster.action.MI_PUSH_GAMEBOOSTER_HOT"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const v1, 0x7f130023

    const-string v2, "gamebooster_xunyou_privacy_aler_theme"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string v1, "show_privacy_net_dialog"

    invoke-virtual {v0, v1, v13}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const/high16 v1, 0x800000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    invoke-static {}, Lw8/g;->c()Z

    move-result v1

    if-eqz v1, :cond_3

    const/4 v1, 0x0

    invoke-static {p0, v0, v1, v13}, La8/k0;->w(Landroid/content/Context;Landroid/content/Intent;Ljava/lang/String;Z)V

    :cond_3
    return v13

    :cond_4
    cmp-long v4, v9, v11

    if-lez v4, :cond_6

    cmp-long v4, v9, v7

    if-gez v4, :cond_6

    const/4 v2, 0x3

    if-lez v0, :cond_5

    const/4 v4, 0x4

    if-ge v0, v4, :cond_5

    if-le v3, v2, :cond_5

    const/4 v9, 0x0

    const-string v6, "xunyou_alert_dialog_overdue"

    move-object v4, p0

    invoke-direct/range {v4 .. v9}, Lcom/miui/gamebooster/service/GameBoosterService;->A0(Landroid/content/Intent;Ljava/lang/String;JI)V

    return v13

    :cond_5
    iget v4, p0, Lcom/miui/gamebooster/service/GameBoosterService;->m:I

    if-lez v4, :cond_7

    if-le v0, v4, :cond_7

    if-le v3, v6, :cond_7

    iget v0, p0, Lcom/miui/gamebooster/service/GameBoosterService;->n:I

    if-ge v0, v2, :cond_7

    const/4 v9, 0x0

    const-string v6, "xunyou_alert_dialog_overdue_gift"

    move-object v4, p0

    invoke-direct/range {v4 .. v9}, Lcom/miui/gamebooster/service/GameBoosterService;->A0(Landroid/content/Intent;Ljava/lang/String;JI)V

    iget v0, p0, Lcom/miui/gamebooster/service/GameBoosterService;->n:I

    add-int/2addr v0, v13

    iput v0, p0, Lcom/miui/gamebooster/service/GameBoosterService;->n:I

    const-string v1, "xunyou_alert_dialog_overdue_gift_count"

    invoke-direct {p0, v1, v0}, Lcom/miui/gamebooster/service/GameBoosterService;->o0(Ljava/lang/String;I)V

    return v13

    :cond_6
    if-ne v0, v2, :cond_7

    if-le v3, v13, :cond_7

    const/4 v9, 0x1

    const-string v6, "xunyou_alert_dialog_expired"

    move-object v4, p0

    invoke-direct/range {v4 .. v9}, Lcom/miui/gamebooster/service/GameBoosterService;->A0(Landroid/content/Intent;Ljava/lang/String;JI)V

    return v13

    :cond_7
    :goto_0
    return v1
.end method

.method private synthetic h0()V
    .locals 4

    iget-object v0, p0, Lcom/miui/gamebooster/service/GameBoosterService;->A:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/miui/gamebooster/service/GameBoosterService;->t:Landroid/content/Context;

    invoke-static {v1}, La8/j0;->g(Landroid/content/Context;)Ljava/util/List;

    move-result-object v1

    invoke-static {v1}, Lc7/c;->n(Ljava/util/Collection;)Z

    move-result v2

    if-nez v2, :cond_0

    iget-object v2, p0, Lcom/miui/gamebooster/service/GameBoosterService;->u:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->clear()V

    iget-object v2, p0, Lcom/miui/gamebooster/service/GameBoosterService;->u:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    :cond_0
    const-string v1, "GameBoosterService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "resetGames: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/miui/gamebooster/service/GameBoosterService;->u:Ljava/util/List;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/miui/gamebooster/service/GameBoosterService;->u:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_1

    iget-object v2, p0, Lcom/miui/gamebooster/service/GameBoosterService;->o:Landroid/os/Handler;

    invoke-static {p0, v2}, Lcom/miui/gamebooster/service/w;->B(Landroid/content/Context;Landroid/os/Handler;)Lcom/miui/gamebooster/service/w;

    move-result-object v2

    iget-object v3, p0, Lcom/miui/gamebooster/service/GameBoosterService;->u:Ljava/util/List;

    new-array v1, v1, [Ljava/lang/String;

    invoke-interface {v3, v1}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Ljava/lang/String;

    invoke-virtual {v2, v1}, Lcom/miui/gamebooster/service/w;->Z([Ljava/lang/String;)V

    :cond_1
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private i0()V
    .locals 1

    const/16 v0, 0x73

    invoke-direct {p0, v0}, Lcom/miui/gamebooster/service/GameBoosterService;->w0(I)V

    return-void
.end method

.method private j0()V
    .locals 1

    const/16 v0, 0x74

    invoke-direct {p0, v0}, Lcom/miui/gamebooster/service/GameBoosterService;->w0(I)V

    return-void
.end method

.method private k0()Z
    .locals 2

    iget-object v0, p0, Lcom/miui/gamebooster/service/GameBoosterService;->o:Landroid/os/Handler;

    invoke-static {p0, v0}, Lcom/miui/gamebooster/service/w;->B(Landroid/content/Context;Landroid/os/Handler;)Lcom/miui/gamebooster/service/w;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/gamebooster/service/w;->y()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/gamebooster/service/GameBoosterService;->t:Landroid/content/Context;

    invoke-static {v1, v0}, Le7/b;->f(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Le7/b;->b()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/gamebooster/service/GameBoosterService;->t:Landroid/content/Context;

    const v1, 0x7f120a46

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, La8/f;->a(Landroid/content/Context;Ljava/lang/String;)V

    invoke-static {}, Le7/b;->j()V

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method private l0()Z
    .locals 1

    invoke-static {}, Lp7/a;->b()Lp7/a;

    move-result-object v0

    invoke-virtual {v0}, Lp7/a;->f()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {}, La8/k2;->A()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/miui/gamebooster/service/GameBoosterService;->t:Landroid/content/Context;

    invoke-static {v0}, La8/k2;->B(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-static {}, Lp7/d;->f()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    return v0

    :cond_1
    :goto_0
    const/4 v0, 0x0

    return v0
.end method

.method private m0()Z
    .locals 6

    iget-object v0, p0, Lcom/miui/gamebooster/service/GameBoosterService;->t:Landroid/content/Context;

    invoke-static {v0}, La8/k2;->B(Landroid/content/Context;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    invoke-static {}, La8/g0;->b0()Z

    move-result v0

    if-eqz v0, :cond_4

    const-string v0, "voice_changer_new_function"

    const/4 v2, 0x1

    invoke-static {v0, v2}, Lr4/a;->e(Ljava/lang/String;Z)Z

    move-result v3

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/miui/gamebooster/service/GameBoosterService;->t:Landroid/content/Context;

    const v4, 0x7f120b0d

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lo8/k;->h0(Landroid/content/Context;Ljava/lang/String;)V

    invoke-static {v0, v1}, Lr4/a;->n(Ljava/lang/String;Z)V

    return v2

    :cond_1
    invoke-static {}, Lr8/b;->b()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_2

    iget-object v1, p0, Lcom/miui/gamebooster/service/GameBoosterService;->t:Landroid/content/Context;

    invoke-static {v1, v0}, Lo8/k;->h0(Landroid/content/Context;Ljava/lang/String;)V

    const-string v0, "voice_changer_tips_info"

    const-string v1, ""

    invoke-static {v0, v1}, Lr4/a;->r(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v1}, Lr8/b;->n(Ljava/lang/String;)V

    return v2

    :cond_2
    invoke-static {}, La8/j2;->e()Ljava/lang/String;

    move-result-object v0

    invoke-static {}, La8/j2;->d()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, La8/j2;->g(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_4

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_4

    invoke-static {}, La8/g0;->b0()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-static {}, La8/o0;->n()Z

    move-result v3

    if-nez v3, :cond_3

    return v2

    :cond_3
    iget-object v3, p0, Lcom/miui/gamebooster/service/GameBoosterService;->t:Landroid/content/Context;

    const v4, 0x7f120b0e

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    new-array v5, v2, [Ljava/lang/Object;

    aput-object v0, v5, v1

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Lo8/k;->h0(Landroid/content/Context;Ljava/lang/String;)V

    return v2

    :cond_4
    return v1
.end method

.method private n0()Z
    .locals 1

    invoke-static {}, Lx4/y;->s()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-static {}, Lc7/c;->q()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/miui/gamebooster/service/GameBoosterService;->t:Landroid/content/Context;

    invoke-static {v0}, Lme/w;->P(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/miui/gamebooster/service/GameBoosterService;->o:Landroid/os/Handler;

    invoke-static {p0, v0}, Lcom/miui/gamebooster/service/w;->B(Landroid/content/Context;Landroid/os/Handler;)Lcom/miui/gamebooster/service/w;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/gamebooster/service/w;->D()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public static synthetic o(Lcom/miui/gamebooster/service/GameBoosterService;)V
    .locals 0

    invoke-direct {p0}, Lcom/miui/gamebooster/service/GameBoosterService;->h0()V

    return-void
.end method

.method private o0(Ljava/lang/String;I)V
    .locals 0

    invoke-static {p1, p2}, Lr4/a;->p(Ljava/lang/String;I)V

    return-void
.end method

.method static synthetic p(Lcom/miui/gamebooster/service/GameBoosterService;)Ljava/lang/Boolean;
    .locals 0

    iget-object p0, p0, Lcom/miui/gamebooster/service/GameBoosterService;->y:Ljava/lang/Boolean;

    return-object p0
.end method

.method private p0()V
    .locals 4

    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "pref_open_game_booster"

    invoke-static {v1}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    iget-object v2, p0, Lcom/miui/gamebooster/service/GameBoosterService;->B:Landroid/database/ContentObserver;

    const/4 v3, 0x1

    invoke-virtual {v0, v1, v3, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lm7/b;->b:Landroid/net/Uri;

    iget-object v2, p0, Lcom/miui/gamebooster/service/GameBoosterService;->C:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1, v3, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "registerContentObserver: failed="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "GameBoosterService"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method

.method static synthetic q(Lcom/miui/gamebooster/service/GameBoosterService;Ljava/lang/Boolean;)Ljava/lang/Boolean;
    .locals 0

    iput-object p1, p0, Lcom/miui/gamebooster/service/GameBoosterService;->y:Ljava/lang/Boolean;

    return-object p1
.end method

.method private q0()V
    .locals 4

    const-string v0, "GameBoosterService"

    :try_start_0
    invoke-static {}, Lcom/miui/gamebooster/mutiwindow/b;->d()Lcom/miui/gamebooster/mutiwindow/b;

    move-result-object v1

    iget-object v2, p0, Lcom/miui/gamebooster/service/GameBoosterService;->E:Lcom/miui/gamebooster/mutiwindow/b$b;

    invoke-virtual {v1, v2}, Lcom/miui/gamebooster/mutiwindow/b;->b(Lcom/miui/gamebooster/mutiwindow/b$b;)V

    const-string v1, "registerWhetStoneSuccess"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    iput-object v1, p0, Lcom/miui/gamebooster/service/GameBoosterService;->v:Ljava/lang/Boolean;

    iget-object v1, p0, Lcom/miui/gamebooster/service/GameBoosterService;->o:Landroid/os/Handler;

    invoke-static {p0, v1}, Lcom/miui/gamebooster/service/w;->B(Landroid/content/Context;Landroid/os/Handler;)Lcom/miui/gamebooster/service/w;

    move-result-object v1

    iget-object v2, p0, Lcom/miui/gamebooster/service/GameBoosterService;->u:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-lez v2, :cond_0

    iget-object v3, p0, Lcom/miui/gamebooster/service/GameBoosterService;->u:Ljava/util/List;

    new-array v2, v2, [Ljava/lang/String;

    invoke-interface {v3, v2}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/miui/gamebooster/service/w;->Z([Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    :goto_0
    return-void
.end method

.method static synthetic r(Lcom/miui/gamebooster/service/GameBoosterService;)Landroid/content/Context;
    .locals 0

    iget-object p0, p0, Lcom/miui/gamebooster/service/GameBoosterService;->t:Landroid/content/Context;

    return-object p0
.end method

.method private r0()V
    .locals 2

    invoke-direct {p0}, Lcom/miui/gamebooster/service/GameBoosterService;->s0()V

    const/4 v0, 0x0

    invoke-static {v0}, Lm6/a;->J(Z)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-static {v0}, Lm6/a;->O(Z)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "key_gamebooster_support_sign_function"

    invoke-static {v1, v0}, Lr4/a;->e(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {p0}, La8/c;->b(Landroid/content/Context;)V

    :cond_0
    return-void
.end method

.method static synthetic s(Lcom/miui/gamebooster/service/GameBoosterService;Z)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/miui/gamebooster/service/GameBoosterService;->a0(Z)V

    return-void
.end method

.method private s0()V
    .locals 4

    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const-string v1, "android.intent.action.SCREEN_OFF"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "android.intent.action.USER_PRESENT"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "android.intent.action.CLOSE_SYSTEM_DIALOGS"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "com.miui.gamebooster.action.SIGN_NOTIFICATION"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "com.miui.gamebooster.service.action.SWITCHANTIMSG"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "com.miui.gamebooster.action.STOP_GAMEMODE"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "com.miui.gamebooster.action.RESET_USERSTATUS"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "android.intent.action.HEADSET_PLUG"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "android.intent.action.LOCALE_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/miui/gamebooster/service/GameBoosterService;->t:Landroid/content/Context;

    iget-object v2, p0, Lcom/miui/gamebooster/service/GameBoosterService;->F:Landroid/content/BroadcastReceiver;

    const/4 v3, 0x2

    invoke-static {v1, v2, v0, v3}, Lx4/v;->m(Landroid/content/Context;Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;I)Landroid/content/Intent;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const-string v1, "already_added_game"

    invoke-static {v1, v0}, Lr4/a;->s(Ljava/lang/String;Ljava/util/ArrayList;)V

    iget-object v0, p0, Lcom/miui/gamebooster/service/GameBoosterService;->t:Landroid/content/Context;

    invoke-static {v0}, Lm6/a;->e(Landroid/content/Context;)Lm6/a;

    move-result-object v0

    invoke-virtual {v0}, Lm6/a;->x()Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-direct {p0, v0}, Lcom/miui/gamebooster/service/GameBoosterService;->Z(Ljava/lang/Boolean;)V

    :cond_0
    return-void
.end method

.method static synthetic t(Lcom/miui/gamebooster/service/GameBoosterService;Ljava/lang/String;)Z
    .locals 0

    invoke-direct {p0, p1}, Lcom/miui/gamebooster/service/GameBoosterService;->Y(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method private t0()V
    .locals 3

    :try_start_0
    iget-object v0, p0, Lcom/miui/gamebooster/service/GameBoosterService;->F:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "releaseBroadcastReceive: failed="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "GameBoosterService"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method

.method static synthetic u(Lcom/miui/gamebooster/service/GameBoosterService;Ljava/lang/String;)Z
    .locals 0

    invoke-direct {p0, p1}, Lcom/miui/gamebooster/service/GameBoosterService;->e0(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method private u0()V
    .locals 3

    :try_start_0
    invoke-static {p0}, Lr0/a;->b(Landroid/content/Context;)Lr0/a;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/gamebooster/service/GameBoosterService;->D:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Lr0/a;->e(Landroid/content/BroadcastReceiver;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "releaseLocalBroadcastReceiver: failed="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "GameBoosterService"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method

.method static synthetic v(Lcom/miui/gamebooster/service/GameBoosterService;Lcom/gzy/redmiport/compat/process/ForegroundInfo;)Z
    .locals 0

    invoke-direct {p0, p1}, Lcom/miui/gamebooster/service/GameBoosterService;->f0(Lcom/gzy/redmiport/compat/process/ForegroundInfo;)Z

    move-result p0

    return p0
.end method

.method private v0(Z)V
    .locals 2

    new-instance v0, Lcom/miui/gamebooster/service/GameBoosterService$g;

    invoke-direct {v0, p0, p1}, Lcom/miui/gamebooster/service/GameBoosterService$g;-><init>(Lcom/miui/gamebooster/service/GameBoosterService;Z)V

    sget-object p1, Landroid/os/AsyncTask;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Void;

    invoke-virtual {v0, p1, v1}, Landroid/os/AsyncTask;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    return-void
.end method

.method static synthetic w(Lcom/miui/gamebooster/service/GameBoosterService;J)J
    .locals 0

    iput-wide p1, p0, Lcom/miui/gamebooster/service/GameBoosterService;->k:J

    return-wide p1
.end method

.method private w0(I)V
    .locals 2

    const-wide/16 v0, 0x0

    invoke-direct {p0, p1, v0, v1}, Lcom/miui/gamebooster/service/GameBoosterService;->x0(IJ)V

    return-void
.end method

.method static synthetic x(Lcom/miui/gamebooster/service/GameBoosterService;)Z
    .locals 0

    invoke-direct {p0}, Lcom/miui/gamebooster/service/GameBoosterService;->g0()Z

    move-result p0

    return p0
.end method

.method private x0(IJ)V
    .locals 3

    iget-object v0, p0, Lcom/miui/gamebooster/service/GameBoosterService;->o:Landroid/os/Handler;

    if-nez v0, :cond_0

    return-void

    :cond_0
    const-wide/16 v1, 0x0

    cmp-long v1, p2, v1

    if-lez v1, :cond_1

    invoke-virtual {v0, p1, p2, p3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_0

    :cond_1
    invoke-virtual {v0, p1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    :goto_0
    return-void
.end method

.method static synthetic y(Lcom/miui/gamebooster/service/GameBoosterService;)V
    .locals 0

    invoke-direct {p0}, Lcom/miui/gamebooster/service/GameBoosterService;->q0()V

    return-void
.end method

.method private y0(ILjava/lang/Object;)V
    .locals 1

    iget-object v0, p0, Lcom/miui/gamebooster/service/GameBoosterService;->o:Landroid/os/Handler;

    if-nez v0, :cond_0

    return-void

    :cond_0
    new-instance v0, Landroid/os/Message;

    invoke-direct {v0}, Landroid/os/Message;-><init>()V

    iput-object p2, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    iput p1, v0, Landroid/os/Message;->what:I

    iget-object p1, p0, Lcom/miui/gamebooster/service/GameBoosterService;->o:Landroid/os/Handler;

    invoke-virtual {p1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method static synthetic z(Lcom/miui/gamebooster/service/GameBoosterService;)V
    .locals 0

    invoke-direct {p0}, Lcom/miui/gamebooster/service/GameBoosterService;->B0()V

    return-void
.end method


# virtual methods
.method public b0()Landroid/os/Handler;
    .locals 1

    iget-object v0, p0, Lcom/miui/gamebooster/service/GameBoosterService;->p:Landroid/os/Handler;

    return-object v0
.end method

.method protected dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 1

    invoke-static {p2, p0}, Lcom/miui/gamebooster/service/x;->a(Ljava/io/PrintWriter;Landroid/content/Context;)V

    const-string v0, "=== GameBoosterService running info ==="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    invoke-direct {p0, p1, p2, p3}, Lcom/miui/gamebooster/service/GameBoosterService;->X(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    invoke-virtual {p2}, Ljava/io/PrintWriter;->println()V

    return-void
.end method

.method protected e()Lcom/miui/gamebooster/mutiwindow/b$b;
    .locals 1

    iget-object v0, p0, Lcom/miui/gamebooster/service/GameBoosterService;->E:Lcom/miui/gamebooster/mutiwindow/b$b;

    return-object v0
.end method

.method protected k()V
    .locals 3

    invoke-static {}, Lcom/miui/gamebooster/service/u;->d()Lcom/gzy/redmiport/compat/process/ForegroundInfo;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onScreenFoldChanged : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "GameBoosterService"

    invoke-static {v2, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/miui/gamebooster/service/GameBoosterService;->E:Lcom/miui/gamebooster/mutiwindow/b$b;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/miui/gamebooster/service/GameBoosterService;->y:Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_0

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/miui/gamebooster/service/GameBoosterService;->E:Lcom/miui/gamebooster/mutiwindow/b$b;

    invoke-interface {v1, v0}, Lcom/miui/gamebooster/mutiwindow/b$b;->onForegroundInfoChanged(Lcom/gzy/redmiport/compat/process/ForegroundInfo;)Z

    :cond_0
    return-void
.end method

.method protected m()Z
    .locals 1

    invoke-static {p0}, Lm6/a;->e(Landroid/content/Context;)Lm6/a;

    move-result-object v0

    invoke-virtual {v0}, Lm6/a;->x()Z

    move-result v0

    return v0
.end method

.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 1

    const-string p1, "GameBoosterService"

    const-string v0, "return onBinder"

    invoke-static {p1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p1, p0, Lcom/miui/gamebooster/service/GameBoosterService;->r:Lcom/miui/gamebooster/service/GameBoosterService$GameBoosterBinder;

    return-object p1
.end method

.method public onCreate()V
    .locals 4

    invoke-super {p0}, Lcom/miui/gamebooster/service/u;->onCreate()V

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, La8/x;->c(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "do not launch gamebooster service in kid space"

    invoke-static {v0}, Lx4/q0;->a(Ljava/lang/String;)V

    return-void

    :cond_0
    iput-object p0, p0, Lcom/miui/gamebooster/service/GameBoosterService;->t:Landroid/content/Context;

    const-string v0, "GameBoosterService"

    const-string v1, "OnCREATE"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v1, Lcom/miui/gamebooster/service/GameBoosterService$GameBoosterBinder;

    invoke-direct {v1, p0}, Lcom/miui/gamebooster/service/GameBoosterService$GameBoosterBinder;-><init>(Lcom/miui/gamebooster/service/GameBoosterService;)V

    iput-object v1, p0, Lcom/miui/gamebooster/service/GameBoosterService;->r:Lcom/miui/gamebooster/service/GameBoosterService$GameBoosterBinder;

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/miui/gamebooster/service/GameBoosterService;->s:Lmiui/security/SecurityManager;

    invoke-direct {p0}, Lcom/miui/gamebooster/service/GameBoosterService;->W()V

    const/16 v1, 0x7d

    invoke-direct {p0, v1}, Lcom/miui/gamebooster/service/GameBoosterService;->w0(I)V

    invoke-direct {p0}, Lcom/miui/gamebooster/service/GameBoosterService;->r0()V

    invoke-static {p0}, Lm6/a;->e(Landroid/content/Context;)Lm6/a;

    move-result-object v1

    invoke-virtual {v1}, Lm6/a;->x()Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    iput-object v1, p0, Lcom/miui/gamebooster/service/GameBoosterService;->y:Ljava/lang/Boolean;

    invoke-static {}, La8/g0;->E()Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/miui/gamebooster/service/GameBoosterService;->y:Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    invoke-static {v1}, La8/g0;->g0(Z)V

    :cond_1
    const-wide/16 v1, -0x1

    invoke-static {v1, v2}, La8/o0;->b(J)J

    move-result-wide v1

    iput-wide v1, p0, Lcom/miui/gamebooster/service/GameBoosterService;->j:J

    const-wide/16 v1, 0x0

    const-string v3, "gamebooster_xunyou_alert_last_time"

    invoke-static {v3, v1, v2}, Lr4/a;->j(Ljava/lang/String;J)J

    move-result-wide v1

    iput-wide v1, p0, Lcom/miui/gamebooster/service/GameBoosterService;->l:J

    const/4 v1, 0x0

    const-string v2, "gamebooster_xunyou_first_user"

    invoke-static {v2, v1}, Lr4/a;->e(Ljava/lang/String;Z)Z

    move-result v1

    iput-boolean v1, p0, Lcom/miui/gamebooster/service/GameBoosterService;->z:Z

    invoke-direct {p0}, Lcom/miui/gamebooster/service/GameBoosterService;->F0()V

    iget-object v1, p0, Lcom/miui/gamebooster/service/GameBoosterService;->t:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    iget-object v2, p0, Lcom/miui/gamebooster/service/GameBoosterService;->t:Landroid/content/Context;

    invoke-static {v2}, Lm6/a;->e(Landroid/content/Context;)Lm6/a;

    move-result-object v2

    invoke-virtual {v2}, Lm6/a;->x()Z

    move-result v2

    const-string v3, "pref_open_game_booster"

    invoke-direct {p0}, Lcom/miui/gamebooster/service/GameBoosterService;->p0()V

    invoke-direct {p0}, Lcom/miui/gamebooster/service/GameBoosterService;->d0()V

    invoke-direct {p0}, Lcom/miui/gamebooster/service/GameBoosterService;->c0()V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "gamebooster switch:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/miui/gamebooster/service/GameBoosterService;->y:Ljava/lang/Boolean;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public onDestroy()V
    .locals 2

    invoke-super {p0}, Lcom/miui/gamebooster/service/u;->onDestroy()V

    invoke-direct {p0}, Lcom/miui/gamebooster/service/GameBoosterService;->j0()V

    invoke-direct {p0}, Lcom/miui/gamebooster/service/GameBoosterService;->D0()V

    invoke-direct {p0}, Lcom/miui/gamebooster/service/GameBoosterService;->t0()V

    iget-object v0, p0, Lcom/miui/gamebooster/service/GameBoosterService;->o:Landroid/os/Handler;

    invoke-static {p0, v0}, Lcom/miui/gamebooster/service/w;->B(Landroid/content/Context;Landroid/os/Handler;)Lcom/miui/gamebooster/service/w;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/gamebooster/service/w;->k0()V

    invoke-direct {p0}, Lcom/miui/gamebooster/service/GameBoosterService;->u0()V

    const-string v0, "GameBoosterService"

    const-string v1, "on Destory..."

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public z0(Z)V
    .locals 0
    return-void
.end method
