.class public Lcom/xiaomi/push/service/XMPushService;
.super Landroid/app/Service;
.source "SourceFile"

# interfaces
.implements Lzi/f6;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/xiaomi/push/service/XMPushService$a;,
        Lcom/xiaomi/push/service/XMPushService$n;,
        Lcom/xiaomi/push/service/XMPushService$r;,
        Lcom/xiaomi/push/service/XMPushService$k;,
        Lcom/xiaomi/push/service/XMPushService$t;,
        Lcom/xiaomi/push/service/XMPushService$f;,
        Lcom/xiaomi/push/service/XMPushService$o;,
        Lcom/xiaomi/push/service/XMPushService$q;,
        Lcom/xiaomi/push/service/XMPushService$g;,
        Lcom/xiaomi/push/service/XMPushService$e;,
        Lcom/xiaomi/push/service/XMPushService$s;,
        Lcom/xiaomi/push/service/XMPushService$p;,
        Lcom/xiaomi/push/service/XMPushService$c;,
        Lcom/xiaomi/push/service/XMPushService$b;,
        Lcom/xiaomi/push/service/XMPushService$d;,
        Lcom/xiaomi/push/service/XMPushService$i;,
        Lcom/xiaomi/push/service/XMPushService$m;,
        Lcom/xiaomi/push/service/XMPushService$j;,
        Lcom/xiaomi/push/service/XMPushService$l;,
        Lcom/xiaomi/push/service/XMPushService$h;
    }
.end annotation


# static fields
.field private static b:Z


# instance fields
.field private a:I

.field private a:J

.field private a:Landroid/database/ContentObserver;

.field a:Landroid/os/Messenger;

.field private a:Lcom/xiaomi/push/service/XMPushService$a;

.field private a:Lcom/xiaomi/push/service/XMPushService$f;

.field private a:Lcom/xiaomi/push/service/XMPushService$k;

.field private a:Lcom/xiaomi/push/service/XMPushService$r;

.field private a:Lcom/xiaomi/push/service/XMPushService$t;

.field private a:Lcom/xiaomi/push/service/i0;

.field private a:Lcom/xiaomi/push/service/l2;

.field private a:Lcom/xiaomi/push/service/r2;

.field private a:Lcom/xiaomi/push/service/t0;

.field protected a:Ljava/lang/Class;

.field private a:Ljava/lang/Object;

.field private a:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/xiaomi/push/service/XMPushService$n;",
            ">;"
        }
    .end annotation
.end field

.field private a:Ljava/util/Collection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Collection<",
            "Lcom/xiaomi/push/service/t;",
            ">;"
        }
    .end annotation
.end field

.field private a:Lzi/c6;

.field private a:Lzi/d6;

.field private a:Lzi/h6;

.field private a:Lzi/y5;

.field private a:Z

.field private b:I

.field private c:I


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/xiaomi/push/service/XMPushService;->a:Z

    iput v0, p0, Lcom/xiaomi/push/service/XMPushService;->a:I

    iput v0, p0, Lcom/xiaomi/push/service/XMPushService;->b:I

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/xiaomi/push/service/XMPushService;->a:J

    const-class v0, Lcom/xiaomi/push/service/XMJobService;

    iput-object v0, p0, Lcom/xiaomi/push/service/XMPushService;->a:Ljava/lang/Class;

    const/4 v0, -0x1

    iput v0, p0, Lcom/xiaomi/push/service/XMPushService;->c:I

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/xiaomi/push/service/XMPushService;->a:Lcom/xiaomi/push/service/i0;

    iput-object v0, p0, Lcom/xiaomi/push/service/XMPushService;->a:Lcom/xiaomi/push/service/r2;

    iput-object v0, p0, Lcom/xiaomi/push/service/XMPushService;->a:Landroid/os/Messenger;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-static {v0}, Ljava/util/Collections;->synchronizedCollection(Ljava/util/Collection;)Ljava/util/Collection;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaomi/push/service/XMPushService;->a:Ljava/util/Collection;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/xiaomi/push/service/XMPushService;->a:Ljava/util/ArrayList;

    new-instance v0, Lcom/xiaomi/push/service/p1;

    invoke-direct {v0, p0}, Lcom/xiaomi/push/service/p1;-><init>(Lcom/xiaomi/push/service/XMPushService;)V

    iput-object v0, p0, Lcom/xiaomi/push/service/XMPushService;->a:Lzi/h6;

    return-void
.end method

.method static synthetic a(Lcom/xiaomi/push/service/XMPushService;)Lcom/xiaomi/push/service/i0;
    .locals 0

    iget-object p0, p0, Lcom/xiaomi/push/service/XMPushService;->a:Lcom/xiaomi/push/service/i0;

    return-object p0
.end method

.method private a(Ljava/lang/String;Landroid/content/Intent;)Lcom/xiaomi/push/service/k0$b;
    .locals 2

    sget-object v0, Lcom/xiaomi/push/service/o0;->p:Ljava/lang/String;

    invoke-virtual {p2, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {}, Lcom/xiaomi/push/service/k0;->c()Lcom/xiaomi/push/service/k0;

    move-result-object v1

    invoke-virtual {v1, p1, v0}, Lcom/xiaomi/push/service/k0;->b(Ljava/lang/String;Ljava/lang/String;)Lcom/xiaomi/push/service/k0$b;

    move-result-object p1

    if-nez p1, :cond_0

    new-instance p1, Lcom/xiaomi/push/service/k0$b;

    invoke-direct {p1, p0}, Lcom/xiaomi/push/service/k0$b;-><init>(Lcom/xiaomi/push/service/XMPushService;)V

    :cond_0
    sget-object v0, Lcom/xiaomi/push/service/o0;->s:Ljava/lang/String;

    invoke-virtual {p2, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p1, Lcom/xiaomi/push/service/k0$b;->h:Ljava/lang/String;

    sget-object v0, Lcom/xiaomi/push/service/o0;->p:Ljava/lang/String;

    invoke-virtual {p2, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p1, Lcom/xiaomi/push/service/k0$b;->b:Ljava/lang/String;

    sget-object v0, Lcom/xiaomi/push/service/o0;->v:Ljava/lang/String;

    invoke-virtual {p2, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p1, Lcom/xiaomi/push/service/k0$b;->c:Ljava/lang/String;

    sget-object v0, Lcom/xiaomi/push/service/o0;->B:Ljava/lang/String;

    invoke-virtual {p2, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p1, Lcom/xiaomi/push/service/k0$b;->a:Ljava/lang/String;

    sget-object v0, Lcom/xiaomi/push/service/o0;->z:Ljava/lang/String;

    invoke-virtual {p2, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p1, Lcom/xiaomi/push/service/k0$b;->f:Ljava/lang/String;

    sget-object v0, Lcom/xiaomi/push/service/o0;->A:Ljava/lang/String;

    invoke-virtual {p2, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p1, Lcom/xiaomi/push/service/k0$b;->g:Ljava/lang/String;

    sget-object v0, Lcom/xiaomi/push/service/o0;->y:Ljava/lang/String;

    const/4 v1, 0x0

    invoke-virtual {p2, v0, v1}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p1, Lcom/xiaomi/push/service/k0$b;->e:Z

    sget-object v0, Lcom/xiaomi/push/service/o0;->x:Ljava/lang/String;

    invoke-virtual {p2, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p1, Lcom/xiaomi/push/service/k0$b;->i:Ljava/lang/String;

    sget-object v0, Lcom/xiaomi/push/service/o0;->F:Ljava/lang/String;

    invoke-virtual {p2, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p1, Lcom/xiaomi/push/service/k0$b;->j:Ljava/lang/String;

    sget-object v0, Lcom/xiaomi/push/service/o0;->w:Ljava/lang/String;

    invoke-virtual {p2, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p1, Lcom/xiaomi/push/service/k0$b;->d:Ljava/lang/String;

    iget-object v0, p0, Lcom/xiaomi/push/service/XMPushService;->a:Lcom/xiaomi/push/service/l2;

    iput-object v0, p1, Lcom/xiaomi/push/service/k0$b;->k:Lcom/xiaomi/push/service/l2;

    sget-object v0, Lcom/xiaomi/push/service/o0;->J:Ljava/lang/String;

    invoke-virtual {p2, v0}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object p2

    check-cast p2, Landroid/os/Messenger;

    invoke-virtual {p1, p2}, Lcom/xiaomi/push/service/k0$b;->h(Landroid/os/Messenger;)V

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p2

    iput-object p2, p1, Lcom/xiaomi/push/service/k0$b;->l:Landroid/content/Context;

    invoke-static {}, Lcom/xiaomi/push/service/k0;->c()Lcom/xiaomi/push/service/k0;

    move-result-object p2

    invoke-virtual {p2, p1}, Lcom/xiaomi/push/service/k0;->l(Lcom/xiaomi/push/service/k0$b;)V

    return-object p1
.end method

.method static synthetic a(Lcom/xiaomi/push/service/XMPushService;)Lcom/xiaomi/push/service/r2;
    .locals 0

    iget-object p0, p0, Lcom/xiaomi/push/service/XMPushService;->a:Lcom/xiaomi/push/service/r2;

    return-object p0
.end method

.method private a()Ljava/lang/String;
    .locals 2

    const-string v0, "ro.miui.region"

    invoke-static {v0}, Lzi/p8;->f(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v0, "ro.product.locale.region"

    invoke-static {v0}, Lzi/p8;->f(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method static synthetic a(Lcom/xiaomi/push/service/XMPushService;)Lzi/c6;
    .locals 0

    iget-object p0, p0, Lcom/xiaomi/push/service/XMPushService;->a:Lzi/c6;

    return-object p0
.end method

.method static synthetic a(Lcom/xiaomi/push/service/XMPushService;Lzi/c6;)Lzi/c6;
    .locals 0

    iput-object p1, p0, Lcom/xiaomi/push/service/XMPushService;->a:Lzi/c6;

    return-object p1
.end method

.method static synthetic a(Lcom/xiaomi/push/service/XMPushService;)Lzi/d6;
    .locals 0

    iget-object p0, p0, Lcom/xiaomi/push/service/XMPushService;->a:Lzi/d6;

    return-object p0
.end method

.method private a(Lzi/u6;Ljava/lang/String;Ljava/lang/String;)Lzi/u6;
    .locals 3

    invoke-static {}, Lcom/xiaomi/push/service/k0;->c()Lcom/xiaomi/push/service/k0;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/xiaomi/push/service/k0;->g(Ljava/lang/String;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_0

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "open channel should be called first before sending a packet, pkg="

    :goto_0
    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_1
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lpi/c;->n(Ljava/lang/String;)V

    goto :goto_3

    :cond_0
    invoke-virtual {p1, p2}, Lzi/u6;->v(Ljava/lang/String;)V

    invoke-virtual {p1}, Lzi/u6;->m()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    const/4 p2, 0x0

    invoke-interface {v1, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/String;

    invoke-virtual {p1, p2}, Lzi/u6;->p(Ljava/lang/String;)V

    :cond_1
    invoke-virtual {p1}, Lzi/u6;->q()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, p2, v1}, Lcom/xiaomi/push/service/k0;->b(Ljava/lang/String;Ljava/lang/String;)Lcom/xiaomi/push/service/k0$b;

    move-result-object v0

    invoke-virtual {p0}, Lcom/xiaomi/push/service/XMPushService;->c()Z

    move-result v1

    if-nez v1, :cond_2

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "drop a packet as the channel is not connected, chid="

    goto :goto_0

    :cond_2
    if-eqz v0, :cond_5

    iget-object v1, v0, Lcom/xiaomi/push/service/k0$b;->m:Lcom/xiaomi/push/service/k0$c;

    sget-object v2, Lcom/xiaomi/push/service/k0$c;->c:Lcom/xiaomi/push/service/k0$c;

    if-eq v1, v2, :cond_3

    goto :goto_2

    :cond_3
    iget-object p2, v0, Lcom/xiaomi/push/service/k0$b;->j:Ljava/lang/String;

    invoke-static {p3, p2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p2

    if-nez p2, :cond_4

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "invalid session. "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    :cond_4
    return-object p1

    :cond_5
    :goto_2
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "drop a packet as the channel is not opened, chid="

    goto :goto_0

    :goto_3
    const/4 p1, 0x0

    return-object p1
.end method

.method private a(Landroid/content/BroadcastReceiver;)V
    .locals 0

    if-eqz p1, :cond_0

    :try_start_0
    invoke-virtual {p0, p1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    invoke-static {p1}, Lpi/c;->r(Ljava/lang/Throwable;)V

    :cond_0
    :goto_0
    return-void
.end method

.method private a(Landroid/content/Intent;)V
    .locals 1

    if-nez p1, :cond_0

    return-void

    :cond_0
    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object p1

    if-eqz p1, :cond_1

    const-string v0, "digest"

    invoke-virtual {p1, v0}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/xiaomi/push/service/q2;->c(Landroid/content/Context;)Lcom/xiaomi/push/service/q2;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/xiaomi/push/service/q2;->f(Ljava/lang/String;)V

    invoke-static {p0, p1}, Lzi/n2;->d(Landroid/content/Context;Ljava/lang/String;)V

    :cond_1
    return-void
.end method

.method static synthetic a(Lcom/xiaomi/push/service/XMPushService;)V
    .locals 0

    invoke-direct {p0}, Lcom/xiaomi/push/service/XMPushService;->e()V

    return-void
.end method

.method static synthetic a(Lcom/xiaomi/push/service/XMPushService;Landroid/content/Intent;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/xiaomi/push/service/XMPushService;->d(Landroid/content/Intent;)V

    return-void
.end method

.method private static a(Ljava/lang/String;)V
    .locals 1

    sget-object v0, Lzi/ba;->a:Lzi/ba;

    invoke-virtual {v0}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    const-string p0, "cn.app.chat.xiaomi.net"

    invoke-static {p0, p0}, Lzi/e2;->l(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "111.13.141.211:443"

    invoke-static {p0, v0}, Lzi/e2;->l(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "39.156.81.172:443"

    invoke-static {p0, v0}, Lzi/e2;->l(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "111.202.1.250:443"

    invoke-static {p0, v0}, Lzi/e2;->l(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "123.125.102.213:443"

    invoke-static {p0, v0}, Lzi/e2;->l(Ljava/lang/String;Ljava/lang/String;)V

    const-string p0, "resolver.msg.xiaomi.net"

    const-string v0, "111.13.142.153:443"

    invoke-static {p0, v0}, Lzi/e2;->l(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "111.202.1.252:443"

    invoke-static {p0, v0}, Lzi/e2;->l(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method private a(Ljava/lang/String;I)V
    .locals 8

    invoke-static {}, Lcom/xiaomi/push/service/k0;->c()Lcom/xiaomi/push/service/k0;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/xiaomi/push/service/k0;->f(Ljava/lang/String;)Ljava/util/Collection;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    move-object v4, v1

    check-cast v4, Lcom/xiaomi/push/service/k0$b;

    if-eqz v4, :cond_0

    new-instance v1, Lcom/xiaomi/push/service/XMPushService$s;

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v2, v1

    move-object v3, p0

    move v5, p2

    invoke-direct/range {v2 .. v7}, Lcom/xiaomi/push/service/XMPushService$s;-><init>(Lcom/xiaomi/push/service/XMPushService;Lcom/xiaomi/push/service/k0$b;ILjava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0, v1}, Lcom/xiaomi/push/service/XMPushService;->a(Lcom/xiaomi/push/service/XMPushService$j;)V

    goto :goto_0

    :cond_1
    invoke-static {}, Lcom/xiaomi/push/service/k0;->c()Lcom/xiaomi/push/service/k0;

    move-result-object p2

    invoke-virtual {p2, p1}, Lcom/xiaomi/push/service/k0;->m(Ljava/lang/String;)V

    return-void
.end method

.method private a(Landroid/content/Context;)Z
    .locals 5

    const/4 v0, 0x1

    :try_start_0
    invoke-static {}, Lzi/n;->a()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    const/4 v1, 0x0

    const/16 v2, 0x64

    :goto_0
    if-lez v2, :cond_1

    invoke-static {p1}, Lzi/h0;->w(Landroid/content/Context;)Z

    move-result v3

    if-eqz v3, :cond_0

    const-string p1, "network connectivity ok."

    invoke-static {p1}, Lpi/c;->n(Ljava/lang/String;)V

    goto :goto_1

    :cond_0
    const-wide/16 v3, 0x64

    :try_start_1
    invoke-static {v3, v4}, Ljava/lang/Thread;->sleep(J)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    :catch_0
    add-int/lit8 v2, v2, -0x1

    goto :goto_0

    :cond_1
    move v0, v1

    :catch_1
    :goto_1
    return v0
.end method

.method static synthetic a(Lcom/xiaomi/push/service/XMPushService;)Z
    .locals 0

    invoke-direct {p0}, Lcom/xiaomi/push/service/XMPushService;->g()Z

    move-result p0

    return p0
.end method

.method static synthetic a(Lcom/xiaomi/push/service/XMPushService;Landroid/content/Context;)Z
    .locals 0

    invoke-direct {p0, p1}, Lcom/xiaomi/push/service/XMPushService;->a(Landroid/content/Context;)Z

    move-result p0

    return p0
.end method

.method static synthetic a(Lcom/xiaomi/push/service/XMPushService;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/xiaomi/push/service/XMPushService;->a:Z

    return p1
.end method

.method private a(Ljava/lang/String;Landroid/content/Intent;)Z
    .locals 5

    sget-object v0, Lcom/xiaomi/push/service/o0;->p:Ljava/lang/String;

    invoke-virtual {p2, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {}, Lcom/xiaomi/push/service/k0;->c()Lcom/xiaomi/push/service/k0;

    move-result-object v1

    invoke-virtual {v1, p1, v0}, Lcom/xiaomi/push/service/k0;->b(Ljava/lang/String;Ljava/lang/String;)Lcom/xiaomi/push/service/k0$b;

    move-result-object v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_1

    if-eqz p1, :cond_1

    sget-object v3, Lcom/xiaomi/push/service/o0;->F:Ljava/lang/String;

    invoke-virtual {p2, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    sget-object v4, Lcom/xiaomi/push/service/o0;->x:Ljava/lang/String;

    invoke-virtual {p2, v4}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    iget-object v4, v0, Lcom/xiaomi/push/service/k0$b;->j:Ljava/lang/String;

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_0

    iget-object v4, v0, Lcom/xiaomi/push/service/k0$b;->j:Ljava/lang/String;

    invoke-static {v3, v4}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "session changed. old session="

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, v0, Lcom/xiaomi/push/service/k0$b;->j:Ljava/lang/String;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ", new session="

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " chid = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lpi/c;->n(Ljava/lang/String;)V

    move v2, v1

    :cond_0
    iget-object v0, v0, Lcom/xiaomi/push/service/k0$b;->i:Ljava/lang/String;

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "security changed. chid = "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " sechash = "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p2}, Lzi/p0;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lpi/c;->n(Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    move v1, v2

    :goto_0
    return v1
.end method

.method private a()[I
    .locals 5

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/xiaomi/push/service/e0;->d(Landroid/content/Context;)Lcom/xiaomi/push/service/e0;

    move-result-object v0

    sget-object v1, Lzi/v7;->T0:Lzi/v7;

    invoke-virtual {v1}, Lzi/v7;->a()I

    move-result v1

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Lcom/xiaomi/push/service/e0;->f(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_0

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    array-length v1, v0

    const/4 v3, 0x2

    if-lt v1, v3, :cond_0

    new-array v1, v3, [I

    const/4 v3, 0x0

    :try_start_0
    aget-object v4, v0, v3

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    aput v4, v1, v3

    const/4 v4, 0x1

    aget-object v0, v0, v4

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    aput v0, v1, v4

    aget v3, v1, v3
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    if-ltz v3, :cond_0

    const/16 v4, 0x17

    if-gt v3, v4, :cond_0

    if-ltz v0, :cond_0

    if-gt v0, v4, :cond_0

    if-eq v3, v0, :cond_0

    return-object v1

    :catch_0
    move-exception v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "parse falldown time range failure: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lpi/c;->D(Ljava/lang/String;)V

    :cond_0
    return-object v2
.end method

.method private b()Ljava/lang/String;
    .locals 8

    invoke-static {}, Lzi/n;->a()V

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    new-instance v2, Ljava/lang/Object;

    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    const-string v3, "com.xiaomi.xmsf"

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    const/4 v4, 0x0

    if-eqz v3, :cond_4

    invoke-static {p0}, Lcom/xiaomi/push/service/q0;->c(Landroid/content/Context;)Lcom/xiaomi/push/service/q0;

    move-result-object v3

    const/4 v5, 0x0

    :goto_0
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_1

    invoke-virtual {v3}, Lcom/xiaomi/push/service/q0;->a()I

    move-result v6

    if-nez v6, :cond_0

    goto :goto_1

    :cond_0
    invoke-direct {p0}, Lcom/xiaomi/push/service/XMPushService;->a()Ljava/lang/String;

    move-result-object v2

    goto :goto_4

    :cond_1
    :goto_1
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_2

    invoke-direct {p0}, Lcom/xiaomi/push/service/XMPushService;->a()Ljava/lang/String;

    move-result-object v5

    :cond_2
    :try_start_0
    monitor-enter v2
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    const/16 v6, 0x1e

    if-ge v4, v6, :cond_3

    const-wide/16 v6, 0x3e8

    :try_start_1
    invoke-virtual {v2, v6, v7}, Ljava/lang/Object;->wait(J)V

    goto :goto_2

    :cond_3
    const-wide/16 v6, 0x7530

    invoke-virtual {v2, v6, v7}, Ljava/lang/Object;->wait(J)V

    :goto_2
    monitor-exit v2

    goto :goto_3

    :catchall_0
    move-exception v6

    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    throw v6
    :try_end_2
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_0

    :catch_0
    :goto_3
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_4
    const-string v2, "CN"

    :goto_4
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v5

    sub-long/2addr v5, v0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "wait coutrycode :"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " cost = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, " , count = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lpi/c;->n(Ljava/lang/String;)V

    return-object v2
.end method

.method private b(Landroid/content/Intent;)V
    .locals 10

    sget-object v0, Lcom/xiaomi/push/service/o0;->B:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/xiaomi/push/service/o0;->F:Ljava/lang/String;

    invoke-virtual {p1, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "ext_packet"

    invoke-virtual {p1, v2}, Landroid/content/Intent;->getBundleExtra(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v2

    invoke-static {}, Lcom/xiaomi/push/service/k0;->c()Lcom/xiaomi/push/service/k0;

    move-result-object v3

    const/4 v4, 0x0

    if-eqz v2, :cond_1

    new-instance p1, Lzi/t6;

    invoke-direct {p1, v2}, Lzi/t6;-><init>(Landroid/os/Bundle;)V

    invoke-direct {p0, p1, v0, v1}, Lcom/xiaomi/push/service/XMPushService;->a(Lzi/u6;Ljava/lang/String;Ljava/lang/String;)Lzi/u6;

    move-result-object p1

    check-cast p1, Lzi/t6;

    if-nez p1, :cond_0

    return-void

    :cond_0
    invoke-virtual {p1}, Lzi/u6;->m()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lzi/u6;->q()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v0, v1}, Lcom/xiaomi/push/service/k0;->b(Ljava/lang/String;Ljava/lang/String;)Lcom/xiaomi/push/service/k0$b;

    move-result-object v0

    iget-object v0, v0, Lcom/xiaomi/push/service/k0$b;->i:Ljava/lang/String;

    invoke-static {p1, v0}, Lzi/r5;->f(Lzi/u6;Ljava/lang/String;)Lzi/r5;

    move-result-object v4

    goto/16 :goto_1

    :cond_1
    const-string v0, "ext_raw_packet"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getByteArrayExtra(Ljava/lang/String;)[B

    move-result-object v0

    if-eqz v0, :cond_3

    :try_start_0
    sget-object v1, Lcom/xiaomi/push/service/o0;->p:Ljava/lang/String;

    invoke-virtual {p1, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v1
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const-wide/16 v1, 0x0

    :goto_0
    sget-object v5, Lcom/xiaomi/push/service/o0;->q:Ljava/lang/String;

    invoke-virtual {p1, v5}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    sget-object v6, Lcom/xiaomi/push/service/o0;->r:Ljava/lang/String;

    invoke-virtual {p1, v6}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    const-string v7, "ext_chid"

    invoke-virtual {p1, v7}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-static {v1, v2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v3, v7, v8}, Lcom/xiaomi/push/service/k0;->b(Ljava/lang/String;Ljava/lang/String;)Lcom/xiaomi/push/service/k0$b;

    move-result-object v3

    if-eqz v3, :cond_3

    new-instance v8, Lzi/r5;

    invoke-direct {v8}, Lzi/r5;-><init>()V

    :try_start_1
    invoke-static {v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v9

    invoke-virtual {v8, v9}, Lzi/r5;->h(I)V
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_1

    :catch_1
    const-string v9, "SECMSG"

    invoke-virtual {v8, v9, v4}, Lzi/r5;->l(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_2

    const-string v5, "xiaomi.com"

    :cond_2
    invoke-virtual {v8, v1, v2, v5, v6}, Lzi/r5;->j(JLjava/lang/String;Ljava/lang/String;)V

    const-string v1, "ext_pkt_id"

    invoke-virtual {p1, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v8, v2}, Lzi/r5;->k(Ljava/lang/String;)V

    iget-object v2, v3, Lcom/xiaomi/push/service/k0$b;->i:Ljava/lang/String;

    invoke-virtual {v8, v0, v2}, Lzi/r5;->n([BLjava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "send a message: chid="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", packetId="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lpi/c;->n(Ljava/lang/String;)V

    move-object v4, v8

    :cond_3
    :goto_1
    if-eqz v4, :cond_4

    new-instance p1, Lcom/xiaomi/push/service/y0;

    invoke-direct {p1, p0, v4}, Lcom/xiaomi/push/service/y0;-><init>(Lcom/xiaomi/push/service/XMPushService;Lzi/r5;)V

    invoke-direct {p0, p1}, Lcom/xiaomi/push/service/XMPushService;->c(Lcom/xiaomi/push/service/XMPushService$j;)V

    :cond_4
    return-void
.end method

.method static synthetic b(Lcom/xiaomi/push/service/XMPushService;)V
    .locals 0

    invoke-direct {p0}, Lcom/xiaomi/push/service/XMPushService;->c()V

    return-void
.end method

.method private b(Z)V
    .locals 3

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/xiaomi/push/service/XMPushService;->a:J

    invoke-virtual {p0}, Lcom/xiaomi/push/service/XMPushService;->c()Z

    move-result v0

    const/4 v1, 0x1

    if-nez v0, :cond_0

    :goto_0
    invoke-virtual {p0, v1}, Lcom/xiaomi/push/service/XMPushService;->a(Z)V

    goto :goto_1

    :cond_0
    invoke-static {p0}, Lzi/h0;->v(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1

    new-instance v0, Lcom/xiaomi/push/service/XMPushService$o;

    invoke-direct {v0, p0, p1}, Lcom/xiaomi/push/service/XMPushService$o;-><init>(Lcom/xiaomi/push/service/XMPushService;Z)V

    invoke-direct {p0, v0}, Lcom/xiaomi/push/service/XMPushService;->c(Lcom/xiaomi/push/service/XMPushService$j;)V

    goto :goto_1

    :cond_1
    new-instance p1, Lcom/xiaomi/push/service/XMPushService$g;

    const/16 v0, 0x11

    const/4 v2, 0x0

    invoke-direct {p1, p0, v0, v2}, Lcom/xiaomi/push/service/XMPushService$g;-><init>(Lcom/xiaomi/push/service/XMPushService;ILjava/lang/Exception;)V

    invoke-direct {p0, p1}, Lcom/xiaomi/push/service/XMPushService;->c(Lcom/xiaomi/push/service/XMPushService$j;)V

    goto :goto_0

    :goto_1
    return-void
.end method

.method static synthetic b(Lcom/xiaomi/push/service/XMPushService;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/xiaomi/push/service/XMPushService;->a:Z

    return p0
.end method

.method private c()V
    .locals 10

    invoke-static {}, Lzi/e2;->h()Lzi/e2;

    move-result-object v0

    invoke-virtual {v0}, Lzi/e2;->z()V

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/xiaomi/push/service/q2;->c(Landroid/content/Context;)Lcom/xiaomi/push/service/q2;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xiaomi/push/service/q2;->d()V

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/xiaomi/push/service/e1;->a(Landroid/content/Context;)Lcom/xiaomi/push/service/e1;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xiaomi/push/service/e1;->b()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "region of cache is "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "XMPushService"

    invoke-static {v3, v2}, Lpi/c;->o(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    const-string v4, ""

    if-eqz v2, :cond_0

    invoke-direct {p0}, Lcom/xiaomi/push/service/XMPushService;->b()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lzi/p8;->g(Ljava/lang/String;)Lzi/ba;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v2

    move-object v9, v2

    move-object v2, v1

    move-object v1, v9

    goto :goto_0

    :cond_0
    move-object v2, v4

    :goto_0
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    const-string v6, "CN"

    const-string v7, "com.xiaomi.xmsf"

    const/4 v8, 0x1

    if-nez v5, :cond_1

    sget-object v5, Lzi/ba;->a:Lzi/ba;

    invoke-virtual {v5}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-virtual {v0, v1, v8}, Lcom/xiaomi/push/service/e1;->e(Ljava/lang/String;Z)V

    invoke-virtual {v0, v6, v8}, Lcom/xiaomi/push/service/e1;->g(Ljava/lang/String;Z)V

    :goto_1
    move-object v2, v6

    goto :goto_3

    :cond_1
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_3

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v7, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    move-object v6, v4

    goto :goto_2

    :cond_2
    sget-object v1, Lzi/ba;->a:Lzi/ba;

    invoke-virtual {v1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v4

    :goto_2
    invoke-virtual {v0, v4, v8}, Lcom/xiaomi/push/service/e1;->e(Ljava/lang/String;Z)V

    invoke-virtual {v0, v6, v8}, Lcom/xiaomi/push/service/e1;->g(Ljava/lang/String;Z)V

    move-object v1, v4

    goto :goto_1

    :cond_3
    sget-object v0, Lzi/ba;->a:Lzi/ba;

    invoke-virtual {v0}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v1

    :goto_3
    const/4 v0, 0x4

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v4, 0x0

    const-string v5, "after check, appRegion is "

    aput-object v5, v0, v4

    aput-object v1, v0, v8

    const/4 v4, 0x2

    const-string v5, ", countryCode="

    aput-object v5, v0, v4

    const/4 v4, 0x3

    aput-object v2, v0, v4

    invoke-static {v3, v0}, Lpi/c;->q(Ljava/lang/String;[Ljava/lang/Object;)V

    sget-object v0, Lzi/ba;->a:Lzi/ba;

    invoke-virtual {v0}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    const-string v0, "cn.app.chat.xiaomi.net"

    invoke-static {v0}, Lzi/d6;->c(Ljava/lang/String;)V

    :cond_4
    invoke-static {v1}, Lcom/xiaomi/push/service/XMPushService;->a(Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/xiaomi/push/service/XMPushService;->h()Z

    move-result v0

    if-eqz v0, :cond_5

    const-string v0, "-->postOnCreate(): try trigger connect now"

    invoke-static {v3, v0}, Lpi/c;->o(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Lcom/xiaomi/push/service/b2;

    const/16 v1, 0xb

    invoke-direct {v0, p0, v1}, Lcom/xiaomi/push/service/b2;-><init>(Lcom/xiaomi/push/service/XMPushService;I)V

    invoke-virtual {p0, v0}, Lcom/xiaomi/push/service/XMPushService;->a(Lcom/xiaomi/push/service/XMPushService$j;)V

    new-instance v1, Lcom/xiaomi/push/service/c2;

    invoke-direct {v1, p0, v0}, Lcom/xiaomi/push/service/c2;-><init>(Lcom/xiaomi/push/service/XMPushService;Lcom/xiaomi/push/service/XMPushService$j;)V

    invoke-static {v1}, Lcom/xiaomi/push/service/w2;->j(Lcom/xiaomi/push/service/w2$a;)V

    :cond_5
    :try_start_0
    invoke-static {}, Lzi/ga;->f()Z

    move-result v0

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/xiaomi/push/service/XMPushService;->a:Lcom/xiaomi/push/service/l2;

    invoke-virtual {v0, p0}, Lcom/xiaomi/push/service/l2;->d(Landroid/content/Context;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_4

    :catch_0
    move-exception v0

    invoke-static {v0}, Lpi/c;->r(Ljava/lang/Throwable;)V

    :cond_6
    :goto_4
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v7, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    invoke-static {p0, v0, v8}, Lzi/m5;->j(Landroid/content/Context;Landroid/content/pm/ApplicationInfo;Z)V

    :cond_7
    return-void
.end method

.method private c(Landroid/content/Intent;)V
    .locals 8

    sget-object v0, Lcom/xiaomi/push/service/o0;->B:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/xiaomi/push/service/o0;->F:Ljava/lang/String;

    invoke-virtual {p1, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "ext_packets"

    invoke-virtual {p1, v2}, Landroid/content/Intent;->getParcelableArrayExtra(Ljava/lang/String;)[Landroid/os/Parcelable;

    move-result-object v2

    array-length v3, v2

    new-array v4, v3, [Lzi/t6;

    const-string v5, "ext_encrypt"

    const/4 v6, 0x1

    invoke-virtual {p1, v5, v6}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    const/4 p1, 0x0

    move v5, p1

    :goto_0
    array-length v6, v2

    if-ge v5, v6, :cond_1

    new-instance v6, Lzi/t6;

    aget-object v7, v2, v5

    check-cast v7, Landroid/os/Bundle;

    invoke-direct {v6, v7}, Lzi/t6;-><init>(Landroid/os/Bundle;)V

    aput-object v6, v4, v5

    invoke-direct {p0, v6, v0, v1}, Lcom/xiaomi/push/service/XMPushService;->a(Lzi/u6;Ljava/lang/String;Ljava/lang/String;)Lzi/u6;

    move-result-object v6

    check-cast v6, Lzi/t6;

    aput-object v6, v4, v5

    if-nez v6, :cond_0

    return-void

    :cond_0
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    :cond_1
    invoke-static {}, Lcom/xiaomi/push/service/k0;->c()Lcom/xiaomi/push/service/k0;

    move-result-object v0

    new-array v1, v3, [Lzi/r5;

    :goto_1
    if-ge p1, v3, :cond_2

    aget-object v2, v4, p1

    invoke-virtual {v2}, Lzi/u6;->m()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2}, Lzi/u6;->q()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v5, v6}, Lcom/xiaomi/push/service/k0;->b(Ljava/lang/String;Ljava/lang/String;)Lcom/xiaomi/push/service/k0$b;

    move-result-object v5

    iget-object v5, v5, Lcom/xiaomi/push/service/k0$b;->i:Ljava/lang/String;

    invoke-static {v2, v5}, Lzi/r5;->f(Lzi/u6;Ljava/lang/String;)Lzi/r5;

    move-result-object v2

    aput-object v2, v1, p1

    add-int/lit8 p1, p1, 0x1

    goto :goto_1

    :cond_2
    new-instance p1, Lcom/xiaomi/push/service/d2;

    invoke-direct {p1, p0, v1}, Lcom/xiaomi/push/service/d2;-><init>(Lcom/xiaomi/push/service/XMPushService;[Lzi/r5;)V

    invoke-direct {p0, p1}, Lcom/xiaomi/push/service/XMPushService;->c(Lcom/xiaomi/push/service/XMPushService$j;)V

    return-void
.end method

.method private c(Lcom/xiaomi/push/service/XMPushService$j;)V
    .locals 1

    iget-object v0, p0, Lcom/xiaomi/push/service/XMPushService;->a:Lcom/xiaomi/push/service/r2;

    invoke-virtual {v0, p1}, Lcom/xiaomi/push/service/r2;->e(Lcom/xiaomi/push/service/r2$b;)V

    return-void
.end method

.method static synthetic c(Lcom/xiaomi/push/service/XMPushService;)V
    .locals 0

    invoke-direct {p0}, Lcom/xiaomi/push/service/XMPushService;->f()V

    return-void
.end method

.method private c(Z)V
    .locals 3

    :try_start_0
    invoke-static {}, Lzi/ga;->f()Z

    move-result v0

    if-eqz v0, :cond_2

    const/high16 v0, 0x40000000    # 2.0f

    if-eqz p1, :cond_1

    invoke-static {p0}, Lzi/p8;->j(Landroid/content/Context;)Z

    move-result p1

    if-eqz p1, :cond_0

    new-instance p1, Landroid/content/Intent;

    const-string v1, "miui.intent.action.NETWORK_CONNECTED"

    invoke-direct {p1, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v0}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    invoke-virtual {p0, p1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    :cond_0
    iget-object p1, p0, Lcom/xiaomi/push/service/XMPushService;->a:Ljava/util/Collection;

    const/4 v0, 0x0

    new-array v1, v0, [Lcom/xiaomi/push/service/t;

    invoke-interface {p1, v1}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Lcom/xiaomi/push/service/t;

    array-length v1, p1

    :goto_0
    if-ge v0, v1, :cond_2

    aget-object v2, p1, v0

    invoke-interface {v2}, Lcom/xiaomi/push/service/t;->a()V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    invoke-static {p0}, Lzi/p8;->j(Landroid/content/Context;)Z

    move-result p1

    if-eqz p1, :cond_2

    new-instance p1, Landroid/content/Intent;

    const-string v1, "miui.intent.action.NETWORK_BLOCKED"

    invoke-direct {p1, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v0}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    invoke-virtual {p0, p1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p1

    invoke-static {p1}, Lpi/c;->r(Ljava/lang/Throwable;)V

    :cond_2
    :goto_1
    return-void
.end method

.method private d()V
    .locals 5

    invoke-static {}, Lzi/h0;->p()Lzi/k0;

    move-result-object v0

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/xiaomi/push/service/q2;->c(Landroid/content/Context;)Lcom/xiaomi/push/service/q2;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/xiaomi/push/service/q2;->h(Lzi/k0;)V

    const-string v1, "XMPushService"

    if-eqz v0, :cond_1

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "["

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v4, "type: "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lzi/k0;->e()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lzi/k0;->h()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "], state: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lzi/k0;->c()Landroid/net/NetworkInfo$State;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, "/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lzi/k0;->b()Landroid/net/NetworkInfo$DetailedState;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "network changed,"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lpi/c;->o(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0}, Lzi/k0;->c()Landroid/net/NetworkInfo$State;

    move-result-object v0

    sget-object v1, Landroid/net/NetworkInfo$State;->SUSPENDED:Landroid/net/NetworkInfo$State;

    if-eq v0, v1, :cond_0

    sget-object v1, Landroid/net/NetworkInfo$State;->UNKNOWN:Landroid/net/NetworkInfo$State;

    if-ne v0, v1, :cond_2

    :cond_0
    return-void

    :cond_1
    const-string v0, "network changed, no active network"

    invoke-static {v1, v0}, Lpi/c;->o(Ljava/lang/String;Ljava/lang/String;)V

    :cond_2
    invoke-static {}, Lzi/n5;->e()Lzi/l5;

    move-result-object v0

    if-eqz v0, :cond_3

    invoke-static {}, Lzi/n5;->e()Lzi/l5;

    move-result-object v0

    invoke-virtual {v0}, Lzi/l5;->b()V

    :cond_3
    invoke-static {p0}, Lzi/i7;->h(Landroid/content/Context;)V

    iget-object v0, p0, Lcom/xiaomi/push/service/XMPushService;->a:Lzi/y5;

    invoke-virtual {v0}, Lzi/c6;->E()V

    invoke-static {p0}, Lzi/h0;->v(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-virtual {p0}, Lcom/xiaomi/push/service/XMPushService;->c()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-direct {p0}, Lcom/xiaomi/push/service/XMPushService;->f()Z

    move-result v0

    if-eqz v0, :cond_4

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/xiaomi/push/service/XMPushService;->b(Z)V

    :cond_4
    invoke-virtual {p0}, Lcom/xiaomi/push/service/XMPushService;->c()Z

    move-result v0

    if-nez v0, :cond_5

    invoke-virtual {p0}, Lcom/xiaomi/push/service/XMPushService;->d()Z

    move-result v0

    if-nez v0, :cond_5

    iget-object v0, p0, Lcom/xiaomi/push/service/XMPushService;->a:Lcom/xiaomi/push/service/r2;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/xiaomi/push/service/r2;->c(I)V

    new-instance v0, Lcom/xiaomi/push/service/XMPushService$e;

    invoke-direct {v0, p0}, Lcom/xiaomi/push/service/XMPushService$e;-><init>(Lcom/xiaomi/push/service/XMPushService;)V

    invoke-virtual {p0, v0}, Lcom/xiaomi/push/service/XMPushService;->a(Lcom/xiaomi/push/service/XMPushService$j;)V

    :cond_5
    invoke-static {p0}, Lzi/j3;->c(Landroid/content/Context;)Lzi/j3;

    move-result-object v0

    invoke-virtual {v0}, Lzi/j3;->d()V

    goto :goto_0

    :cond_6
    new-instance v0, Lcom/xiaomi/push/service/XMPushService$g;

    const/4 v1, 0x2

    const/4 v2, 0x0

    invoke-direct {v0, p0, v1, v2}, Lcom/xiaomi/push/service/XMPushService$g;-><init>(Lcom/xiaomi/push/service/XMPushService;ILjava/lang/Exception;)V

    invoke-virtual {p0, v0}, Lcom/xiaomi/push/service/XMPushService;->a(Lcom/xiaomi/push/service/XMPushService$j;)V

    :goto_0
    invoke-direct {p0}, Lcom/xiaomi/push/service/XMPushService;->e()V

    return-void
.end method

.method private d(Landroid/content/Intent;)V
    .locals 15

    move-object v7, p0

    move-object/from16 v0, p1

    invoke-static {}, Lcom/xiaomi/push/service/k0;->c()Lcom/xiaomi/push/service/k0;

    move-result-object v1

    sget-object v2, Lcom/xiaomi/push/service/o0;->d:Ljava/lang/String;

    invoke-virtual/range {p1 .. p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    const/4 v3, 0x2

    const/4 v4, 0x1

    const/4 v5, 0x0

    if-nez v2, :cond_41

    sget-object v2, Lcom/xiaomi/push/service/o0;->j:Ljava/lang/String;

    invoke-virtual/range {p1 .. p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    goto/16 :goto_11

    :cond_0
    sget-object v2, Lcom/xiaomi/push/service/o0;->i:Ljava/lang/String;

    invoke-virtual/range {p1 .. p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3

    sget-object v2, Lcom/xiaomi/push/service/o0;->B:Ljava/lang/String;

    invoke-virtual {v0, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    sget-object v4, Lcom/xiaomi/push/service/o0;->s:Ljava/lang/String;

    invoke-virtual {v0, v4}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    sget-object v5, Lcom/xiaomi/push/service/o0;->p:Ljava/lang/String;

    invoke-virtual {v0, v5}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Service called close channel chid = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, " res = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v0}, Lcom/xiaomi/push/service/k0$b;->e(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lpi/c;->n(Ljava/lang/String;)V

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-virtual {v1, v2}, Lcom/xiaomi/push/service/k0;->g(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_48

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-direct {p0, v1, v3}, Lcom/xiaomi/push/service/XMPushService;->a(Ljava/lang/String;I)V

    goto :goto_0

    :cond_1
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-direct {p0, v4, v3}, Lcom/xiaomi/push/service/XMPushService;->a(Ljava/lang/String;I)V

    goto/16 :goto_13

    :cond_2
    const/4 v5, 0x2

    const/4 v6, 0x0

    const/4 v8, 0x0

    move-object v1, p0

    move-object v2, v4

    move-object v3, v0

    move v4, v5

    move-object v5, v6

    move-object v6, v8

    invoke-virtual/range {v1 .. v6}, Lcom/xiaomi/push/service/XMPushService;->a(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_13

    :cond_3
    sget-object v2, Lcom/xiaomi/push/service/o0;->e:Ljava/lang/String;

    invoke-virtual/range {p1 .. p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-direct/range {p0 .. p1}, Lcom/xiaomi/push/service/XMPushService;->b(Landroid/content/Intent;)V

    goto/16 :goto_13

    :cond_4
    sget-object v2, Lcom/xiaomi/push/service/o0;->g:Ljava/lang/String;

    invoke-virtual/range {p1 .. p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_5

    invoke-direct/range {p0 .. p1}, Lcom/xiaomi/push/service/XMPushService;->c(Landroid/content/Intent;)V

    goto/16 :goto_13

    :cond_5
    sget-object v2, Lcom/xiaomi/push/service/o0;->f:Ljava/lang/String;

    invoke-virtual/range {p1 .. p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    const-string v3, "ext_packet"

    if-eqz v2, :cond_6

    sget-object v2, Lcom/xiaomi/push/service/o0;->B:Ljava/lang/String;

    invoke-virtual {v0, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    sget-object v4, Lcom/xiaomi/push/service/o0;->F:Ljava/lang/String;

    invoke-virtual {v0, v4}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v3}, Landroid/content/Intent;->getBundleExtra(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v0

    new-instance v3, Lzi/s6;

    invoke-direct {v3, v0}, Lzi/s6;-><init>(Landroid/os/Bundle;)V

    invoke-direct {p0, v3, v2, v4}, Lcom/xiaomi/push/service/XMPushService;->a(Lzi/u6;Ljava/lang/String;Ljava/lang/String;)Lzi/u6;

    move-result-object v0

    if-eqz v0, :cond_48

    invoke-virtual {v0}, Lzi/u6;->m()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0}, Lzi/u6;->q()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/xiaomi/push/service/k0;->b(Ljava/lang/String;Ljava/lang/String;)Lcom/xiaomi/push/service/k0$b;

    move-result-object v1

    iget-object v1, v1, Lcom/xiaomi/push/service/k0$b;->i:Ljava/lang/String;

    invoke-static {v0, v1}, Lzi/r5;->f(Lzi/u6;Ljava/lang/String;)Lzi/r5;

    move-result-object v0

    new-instance v1, Lcom/xiaomi/push/service/y0;

    invoke-direct {v1, p0, v0}, Lcom/xiaomi/push/service/y0;-><init>(Lcom/xiaomi/push/service/XMPushService;Lzi/r5;)V

    :goto_1
    invoke-direct {p0, v1}, Lcom/xiaomi/push/service/XMPushService;->c(Lcom/xiaomi/push/service/XMPushService$j;)V

    goto/16 :goto_13

    :cond_6
    sget-object v2, Lcom/xiaomi/push/service/o0;->h:Ljava/lang/String;

    invoke-virtual/range {p1 .. p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_7

    sget-object v2, Lcom/xiaomi/push/service/o0;->B:Ljava/lang/String;

    invoke-virtual {v0, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    sget-object v4, Lcom/xiaomi/push/service/o0;->F:Ljava/lang/String;

    invoke-virtual {v0, v4}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v3}, Landroid/content/Intent;->getBundleExtra(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v0

    new-instance v3, Lzi/w6;

    invoke-direct {v3, v0}, Lzi/w6;-><init>(Landroid/os/Bundle;)V

    invoke-direct {p0, v3, v2, v4}, Lcom/xiaomi/push/service/XMPushService;->a(Lzi/u6;Ljava/lang/String;Ljava/lang/String;)Lzi/u6;

    move-result-object v0

    if-eqz v0, :cond_48

    invoke-virtual {v0}, Lzi/u6;->m()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0}, Lzi/u6;->q()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/xiaomi/push/service/k0;->b(Ljava/lang/String;Ljava/lang/String;)Lcom/xiaomi/push/service/k0$b;

    move-result-object v1

    iget-object v1, v1, Lcom/xiaomi/push/service/k0$b;->i:Ljava/lang/String;

    invoke-static {v0, v1}, Lzi/r5;->f(Lzi/u6;Ljava/lang/String;)Lzi/r5;

    move-result-object v0

    new-instance v1, Lcom/xiaomi/push/service/y0;

    invoke-direct {v1, p0, v0}, Lcom/xiaomi/push/service/y0;-><init>(Lcom/xiaomi/push/service/XMPushService;Lzi/r5;)V

    goto :goto_1

    :cond_7
    sget-object v2, Lcom/xiaomi/push/service/o0;->k:Ljava/lang/String;

    invoke-virtual/range {p1 .. p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_9

    sget-object v1, Lcom/xiaomi/push/service/o0;->s:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lcom/xiaomi/push/service/o0;->p:Ljava/lang/String;

    invoke-virtual {v0, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-eqz v1, :cond_48

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "request reset connection from chid = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lpi/c;->n(Ljava/lang/String;)V

    invoke-static {}, Lcom/xiaomi/push/service/k0;->c()Lcom/xiaomi/push/service/k0;

    move-result-object v3

    invoke-virtual {v3, v1, v2}, Lcom/xiaomi/push/service/k0;->b(Ljava/lang/String;Ljava/lang/String;)Lcom/xiaomi/push/service/k0$b;

    move-result-object v1

    if-eqz v1, :cond_48

    iget-object v2, v1, Lcom/xiaomi/push/service/k0$b;->i:Ljava/lang/String;

    sget-object v3, Lcom/xiaomi/push/service/o0;->x:Ljava/lang/String;

    invoke-virtual {v0, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_48

    iget-object v0, v1, Lcom/xiaomi/push/service/k0$b;->m:Lcom/xiaomi/push/service/k0$c;

    sget-object v1, Lcom/xiaomi/push/service/k0$c;->c:Lcom/xiaomi/push/service/k0$c;

    if-ne v0, v1, :cond_48

    invoke-virtual {p0}, Lcom/xiaomi/push/service/XMPushService;->a()Lzi/c6;

    move-result-object v0

    if-eqz v0, :cond_8

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v1

    const-wide/16 v3, 0x3a98

    sub-long/2addr v1, v3

    invoke-virtual {v0, v1, v2}, Lzi/c6;->r(J)Z

    move-result v0

    if-nez v0, :cond_48

    :cond_8
    new-instance v0, Lcom/xiaomi/push/service/XMPushService$q;

    invoke-direct {v0, p0}, Lcom/xiaomi/push/service/XMPushService$q;-><init>(Lcom/xiaomi/push/service/XMPushService;)V

    :goto_2
    invoke-direct {p0, v0}, Lcom/xiaomi/push/service/XMPushService;->c(Lcom/xiaomi/push/service/XMPushService$j;)V

    goto/16 :goto_13

    :cond_9
    sget-object v2, Lcom/xiaomi/push/service/o0;->l:Ljava/lang/String;

    invoke-virtual/range {p1 .. p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    const/4 v8, 0x0

    if-eqz v2, :cond_f

    sget-object v2, Lcom/xiaomi/push/service/o0;->B:Ljava/lang/String;

    invoke-virtual {v0, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/xiaomi/push/service/k0;->g(Ljava/lang/String;)Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_a

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "open channel should be called first before update info, pkg="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_3
    invoke-static {v0}, Lpi/c;->n(Ljava/lang/String;)V

    return-void

    :cond_a
    sget-object v2, Lcom/xiaomi/push/service/o0;->s:Ljava/lang/String;

    invoke-virtual {v0, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    sget-object v4, Lcom/xiaomi/push/service/o0;->p:Ljava/lang/String;

    invoke-virtual {v0, v4}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_b

    invoke-interface {v3, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    :cond_b
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_c

    invoke-virtual {v1, v2}, Lcom/xiaomi/push/service/k0;->f(Ljava/lang/String;)Ljava/util/Collection;

    move-result-object v1

    if-eqz v1, :cond_d

    invoke-interface {v1}, Ljava/util/Collection;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_d

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    move-object v8, v1

    check-cast v8, Lcom/xiaomi/push/service/k0$b;

    goto :goto_4

    :cond_c
    invoke-virtual {v1, v2, v4}, Lcom/xiaomi/push/service/k0;->b(Ljava/lang/String;Ljava/lang/String;)Lcom/xiaomi/push/service/k0$b;

    move-result-object v8

    :cond_d
    :goto_4
    if-eqz v8, :cond_48

    sget-object v1, Lcom/xiaomi/push/service/o0;->z:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_e

    sget-object v1, Lcom/xiaomi/push/service/o0;->z:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v8, Lcom/xiaomi/push/service/k0$b;->f:Ljava/lang/String;

    :cond_e
    sget-object v1, Lcom/xiaomi/push/service/o0;->A:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_48

    sget-object v1, Lcom/xiaomi/push/service/o0;->A:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v8, Lcom/xiaomi/push/service/k0$b;->g:Ljava/lang/String;

    goto/16 :goto_13

    :cond_f
    invoke-virtual/range {p1 .. p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    const-string v2, "android.intent.action.SCREEN_ON"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const-string v3, "android.intent.action.SCREEN_OFF"

    if-nez v1, :cond_3e

    invoke-virtual/range {p1 .. p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_10

    goto/16 :goto_10

    :cond_10
    invoke-virtual/range {p1 .. p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    const-string v2, "com.xiaomi.mipush.REGISTER_APP"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const-string v2, "com.xiaomi.xmsf"

    const-string v3, "mipush_payload"

    const-string v6, "mipush_app_package"

    if-eqz v1, :cond_13

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/xiaomi/push/service/q0;->c(Landroid/content/Context;)Lcom/xiaomi/push/service/q0;

    move-result-object v1

    invoke-virtual {v1}, Lcom/xiaomi/push/service/q0;->d()Z

    move-result v1

    if-eqz v1, :cond_11

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/xiaomi/push/service/q0;->c(Landroid/content/Context;)Lcom/xiaomi/push/service/q0;

    move-result-object v1

    invoke-virtual {v1}, Lcom/xiaomi/push/service/q0;->a()I

    move-result v1

    if-nez v1, :cond_11

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "register without being provisioned. "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v6}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_3

    :cond_11
    invoke-virtual {v0, v3}, Landroid/content/Intent;->getByteArrayExtra(Ljava/lang/String;)[B

    move-result-object v8

    invoke-virtual {v0, v6}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    const-string v1, "mipush_env_chanage"

    invoke-virtual {v0, v1, v5}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    const-string v3, "mipush_env_type"

    invoke-virtual {v0, v3, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v4

    invoke-static {p0}, Lcom/xiaomi/push/service/x2;->a(Landroid/content/Context;)Lcom/xiaomi/push/service/x2;

    move-result-object v0

    invoke-virtual {v0, v6}, Lcom/xiaomi/push/service/x2;->h(Ljava/lang/String;)V

    if-eqz v1, :cond_12

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_12

    new-instance v0, Lcom/xiaomi/push/service/q1;

    const/16 v3, 0xe

    move-object v1, v0

    move-object v2, p0

    move-object v5, v6

    move-object v6, v8

    invoke-direct/range {v1 .. v6}, Lcom/xiaomi/push/service/q1;-><init>(Lcom/xiaomi/push/service/XMPushService;IILjava/lang/String;[B)V

    goto/16 :goto_2

    :cond_12
    invoke-virtual {p0, v8, v6}, Lcom/xiaomi/push/service/XMPushService;->a([BLjava/lang/String;)V

    goto/16 :goto_13

    :cond_13
    invoke-virtual/range {p1 .. p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    const-string v9, "com.xiaomi.mipush.SEND_MESSAGE"

    invoke-virtual {v9, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const-string v9, "com.xiaomi.mipush.UNREGISTER_APP"

    if-nez v1, :cond_3b

    invoke-virtual/range {p1 .. p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v9, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_14

    goto/16 :goto_e

    :cond_14
    sget-object v1, Lcom/xiaomi/push/service/r0;->a:Ljava/lang/String;

    invoke-virtual/range {p1 .. p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v1, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const-string v9, "pref_registered_pkg_names"

    if-eqz v1, :cond_1a

    const-string v1, "uninstall_pkg_name"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_19

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_15

    goto/16 :goto_6

    :cond_15
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    invoke-virtual {v1, v0, v5}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v1

    if-eqz v1, :cond_16

    iget-object v2, v1, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    if-eqz v2, :cond_16

    iget-object v1, v1, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-static {p0, v1}, Lzi/o7;->l(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_16

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "dual space\'s app uninstalled "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lpi/c;->n(Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_5

    :cond_16
    move v4, v5

    :catch_0
    :goto_5
    const-string v1, "com.xiaomi.channel"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_17

    invoke-static {}, Lcom/xiaomi/push/service/k0;->c()Lcom/xiaomi/push/service/k0;

    move-result-object v1

    const-string v2, "1"

    invoke-virtual {v1, v2}, Lcom/xiaomi/push/service/k0;->f(Ljava/lang/String;)Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_17

    if-eqz v4, :cond_17

    invoke-direct {p0, v2, v5}, Lcom/xiaomi/push/service/XMPushService;->a(Ljava/lang/String;I)V

    const-string v0, "close the miliao channel as the app is uninstalled."

    goto/16 :goto_3

    :cond_17
    invoke-virtual {p0, v9, v5}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    invoke-interface {v1, v0, v8}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_48

    if-eqz v4, :cond_48

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    invoke-interface {v1, v0}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    invoke-static {p0, v0}, Lcom/xiaomi/push/service/o;->T(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_18

    invoke-static {p0, v0}, Lcom/xiaomi/push/service/o;->X(Landroid/content/Context;Ljava/lang/String;)V

    :cond_18
    invoke-static {p0, v0}, Lcom/xiaomi/push/service/o;->x(Landroid/content/Context;Ljava/lang/String;)V

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1, v0}, Lcom/xiaomi/push/service/u;->f(Landroid/content/Context;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/xiaomi/push/service/XMPushService;->c()Z

    move-result v1

    if-eqz v1, :cond_48

    if-eqz v2, :cond_48

    :try_start_1
    invoke-static {v0, v2}, Lcom/xiaomi/push/service/l;->e(Ljava/lang/String;Ljava/lang/String;)Lzi/m8;

    move-result-object v1

    invoke-static {p0, v1}, Lcom/xiaomi/push/service/l;->l(Lcom/xiaomi/push/service/XMPushService;Lzi/m8;)V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "uninstall "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " msg sent"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lpi/c;->n(Ljava/lang/String;)V
    :try_end_1
    .catch Lzi/o6; {:try_start_1 .. :try_end_1} :catch_1

    goto/16 :goto_13

    :catch_1
    move-exception v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Fail to send Message: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lzi/o6;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lpi/c;->D(Ljava/lang/String;)V

    const/16 v1, 0xa

    invoke-virtual {p0, v1, v0}, Lcom/xiaomi/push/service/XMPushService;->a(ILjava/lang/Exception;)V

    goto/16 :goto_13

    :cond_19
    :goto_6
    return-void

    :cond_1a
    sget-object v1, Lcom/xiaomi/push/service/r0;->b:Ljava/lang/String;

    invoke-virtual/range {p1 .. p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v1, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1f

    const-string v1, "data_cleared_pkg_name"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1b

    return-void

    :cond_1b
    :try_start_2
    invoke-virtual {p0, v9, v5}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    if-eqz v2, :cond_1c

    :try_start_3
    invoke-interface {v2, v1, v8}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    move-object v8, v0

    goto :goto_8

    :catchall_0
    move-exception v0

    goto :goto_7

    :catchall_1
    move-exception v0

    move-object v2, v8

    :goto_7
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Fail to get sp or appId : "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lpi/c;->n(Ljava/lang/String;)V

    :cond_1c
    :goto_8
    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1e

    invoke-interface {v2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0, v1}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    invoke-static {p0, v1}, Lcom/xiaomi/push/service/o;->T(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1d

    invoke-static {p0, v1}, Lcom/xiaomi/push/service/o;->X(Landroid/content/Context;Ljava/lang/String;)V

    :cond_1d
    invoke-static {p0, v1}, Lcom/xiaomi/push/service/o;->x(Landroid/content/Context;Ljava/lang/String;)V

    invoke-static {v1, v8}, Lcom/xiaomi/push/service/l;->m(Ljava/lang/String;Ljava/lang/String;)Lzi/m8;

    move-result-object v0

    invoke-static {v0}, Lzi/b9;->e(Lzi/c9;)[B

    move-result-object v0

    invoke-virtual {p0, v1, v0, v4}, Lcom/xiaomi/push/service/XMPushService;->a(Ljava/lang/String;[BZ)V

    :cond_1e
    invoke-static {p0, v1}, Lcom/xiaomi/push/service/u;->f(Landroid/content/Context;Ljava/lang/String;)V

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lzi/p8;->j(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_48

    invoke-static {v1}, Lcom/xiaomi/push/service/k;->d(Ljava/lang/String;)V

    goto/16 :goto_13

    :cond_1f
    invoke-virtual/range {p1 .. p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    const-string v9, "com.xiaomi.mipush.CLEAR_NOTIFICATION"

    invoke-virtual {v9, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_21

    sget-object v1, Lcom/xiaomi/push/service/o0;->B:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lcom/xiaomi/push/service/o0;->C:Ljava/lang/String;

    const/4 v3, -0x2

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_48

    const/4 v3, -0x1

    if-lt v2, v3, :cond_20

    sget-object v4, Lcom/xiaomi/push/service/o0;->D:Ljava/lang/String;

    invoke-virtual {v0, v4, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    invoke-static {p0, v1, v2, v0}, Lcom/xiaomi/push/service/o;->z(Landroid/content/Context;Ljava/lang/String;II)V

    goto/16 :goto_13

    :cond_20
    sget-object v2, Lcom/xiaomi/push/service/o0;->H:Ljava/lang/String;

    invoke-virtual {v0, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    sget-object v3, Lcom/xiaomi/push/service/o0;->I:Ljava/lang/String;

    invoke-virtual {v0, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v1, v2, v0}, Lcom/xiaomi/push/service/o;->A(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_13

    :cond_21
    invoke-virtual/range {p1 .. p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    const-string v9, "com.xiaomi.mipush.CLEAR_HEADSUPNOTIFICATION"

    invoke-virtual {v9, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_22

    sget-object v1, Lcom/xiaomi/push/service/o0;->B:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_48

    invoke-static {p0, v0}, Lcom/xiaomi/push/service/o;->Q(Landroid/content/Context;Ljava/lang/String;)V

    goto/16 :goto_13

    :cond_22
    invoke-virtual/range {p1 .. p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    const-string v9, "com.xiaomi.mipush.SET_NOTIFICATION_TYPE"

    invoke-virtual {v9, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_27

    sget-object v1, Lcom/xiaomi/push/service/o0;->B:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lcom/xiaomi/push/service/o0;->G:Ljava/lang/String;

    invoke-virtual {v0, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    sget-object v3, Lcom/xiaomi/push/service/o0;->E:Ljava/lang/String;

    invoke-virtual {v0, v3}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_23

    sget-object v3, Lcom/xiaomi/push/service/o0;->E:Ljava/lang/String;

    invoke-virtual {v0, v3, v5}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lzi/p0;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    move v4, v5

    move v5, v0

    goto :goto_9

    :cond_23
    invoke-static {v1}, Lzi/p0;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    :goto_9
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_26

    invoke-static {v2, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_24

    goto :goto_a

    :cond_24
    if-eqz v4, :cond_25

    invoke-static {p0, v1}, Lcom/xiaomi/push/service/o;->X(Landroid/content/Context;Ljava/lang/String;)V

    goto/16 :goto_13

    :cond_25
    invoke-static {p0, v1, v5}, Lcom/xiaomi/push/service/o;->R(Landroid/content/Context;Ljava/lang/String;I)V

    goto/16 :goto_13

    :cond_26
    :goto_a
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "invalid notification for "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_b
    invoke-static {v0}, Lpi/c;->D(Ljava/lang/String;)V

    goto/16 :goto_13

    :cond_27
    invoke-virtual/range {p1 .. p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    const-string v9, "com.xiaomi.mipush.DISABLE_PUSH"

    invoke-virtual {v9, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_29

    invoke-virtual {v0, v6}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_28

    invoke-static {p0}, Lcom/xiaomi/push/service/x2;->a(Landroid/content/Context;)Lcom/xiaomi/push/service/x2;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/xiaomi/push/service/x2;->d(Ljava/lang/String;)V

    :cond_28
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_48

    const/16 v0, 0x13

    invoke-virtual {p0, v0, v8}, Lcom/xiaomi/push/service/XMPushService;->a(ILjava/lang/Exception;)V

    invoke-direct {p0}, Lcom/xiaomi/push/service/XMPushService;->e()V

    invoke-virtual {p0}, Landroid/app/Service;->stopSelf()V

    goto/16 :goto_13

    :cond_29
    invoke-virtual/range {p1 .. p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    const-string v9, "com.xiaomi.mipush.DISABLE_PUSH_MESSAGE"

    invoke-virtual {v9, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const-string v10, "android.net.conn.CONNECTIVITY_CHANGE"

    const-string v11, "com.xiaomi.mipush.ENABLE_PUSH_MESSAGE"

    if-nez v1, :cond_36

    invoke-virtual/range {p1 .. p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v11, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2a

    goto/16 :goto_d

    :cond_2a
    invoke-virtual/range {p1 .. p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    const-string v8, "com.xiaomi.mipush.SEND_TINYDATA"

    invoke-virtual {v8, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2b

    invoke-virtual {v0, v6}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v3}, Landroid/content/Intent;->getByteArrayExtra(Ljava/lang/String;)[B

    move-result-object v0

    new-instance v2, Lzi/u7;

    invoke-direct {v2}, Lzi/u7;-><init>()V

    :try_start_4
    invoke-static {v2, v0}, Lzi/b9;->d(Lzi/c9;[B)V

    invoke-static {p0}, Lzi/n7;->b(Landroid/content/Context;)Lzi/n7;

    move-result-object v0

    invoke-virtual {v0, v2, v1}, Lzi/n7;->e(Lzi/u7;Ljava/lang/String;)Z
    :try_end_4
    .catch Lzi/h9; {:try_start_4 .. :try_end_4} :catch_2

    goto/16 :goto_13

    :catch_2
    move-exception v0

    invoke-static {v0}, Lpi/c;->r(Ljava/lang/Throwable;)V

    goto/16 :goto_13

    :cond_2b
    invoke-virtual/range {p1 .. p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    const-string v3, "com.xiaomi.push.timer"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2e

    const-string v0, "[Alarm] Service called on timer"

    invoke-static {v0}, Lpi/c;->n(Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/xiaomi/push/service/XMPushService;->i()Z

    move-result v0

    if-eqz v0, :cond_2c

    invoke-static {}, Lzi/v4;->e()Z

    move-result v0

    if-eqz v0, :cond_2d

    const-string v0, "enter falldown mode, stop alarm"

    invoke-static {v0}, Lpi/c;->n(Ljava/lang/String;)V

    invoke-static {}, Lzi/v4;->a()V

    goto :goto_c

    :cond_2c
    invoke-static {v5}, Lzi/v4;->d(Z)V

    invoke-direct {p0}, Lcom/xiaomi/push/service/XMPushService;->f()Z

    move-result v0

    if-eqz v0, :cond_2d

    invoke-direct {p0, v5}, Lcom/xiaomi/push/service/XMPushService;->b(Z)V

    :cond_2d
    :goto_c
    iget-object v0, v7, Lcom/xiaomi/push/service/XMPushService;->a:Lcom/xiaomi/push/service/XMPushService$a;

    if-eqz v0, :cond_48

    invoke-static {v0}, Lcom/xiaomi/push/service/XMPushService$a;->c(Lcom/xiaomi/push/service/XMPushService$a;)V

    goto/16 :goto_13

    :cond_2e
    invoke-virtual/range {p1 .. p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    const-string v3, "com.xiaomi.push.check_alive"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2f

    const-string v0, "Service called on check alive."

    invoke-static {v0}, Lpi/c;->n(Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/xiaomi/push/service/XMPushService;->f()Z

    move-result v0

    if-eqz v0, :cond_48

    invoke-direct {p0, v5}, Lcom/xiaomi/push/service/XMPushService;->b(Z)V

    goto/16 :goto_13

    :cond_2f
    invoke-virtual/range {p1 .. p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    const-string v3, "com.xiaomi.mipush.thirdparty"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_30

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "on thirdpart push :"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "com.xiaomi.mipush.thirdparty_DESC"

    invoke-virtual {v0, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lpi/c;->n(Ljava/lang/String;)V

    const-string v1, "com.xiaomi.mipush.thirdparty_LEVEL"

    invoke-virtual {v0, v1, v5}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    invoke-static {p0, v0}, Lzi/v4;->c(Landroid/content/Context;I)V

    goto/16 :goto_13

    :cond_30
    invoke-virtual/range {p1 .. p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v10, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_31

    invoke-direct {p0}, Lcom/xiaomi/push/service/XMPushService;->d()V

    goto/16 :goto_13

    :cond_31
    invoke-virtual/range {p1 .. p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    const-string v3, "miui.net.wifi.DIGEST_INFORMATION_CHANGED"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_32

    invoke-direct/range {p0 .. p1}, Lcom/xiaomi/push/service/XMPushService;->a(Landroid/content/Intent;)V

    goto/16 :goto_13

    :cond_32
    invoke-virtual/range {p1 .. p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    const-string v3, "com.xiaomi.xmsf.USE_INTELLIGENT_HB"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_33

    invoke-virtual/range {p1 .. p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v1

    if-eqz v1, :cond_48

    invoke-virtual/range {p1 .. p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "effectivePeriod"

    invoke-virtual {v0, v1, v5}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    if-lez v0, :cond_48

    const v1, 0x93a80

    if-gt v0, v1, :cond_48

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/xiaomi/push/service/q2;->c(Landroid/content/Context;)Lcom/xiaomi/push/service/q2;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/xiaomi/push/service/q2;->e(I)V

    goto/16 :goto_13

    :cond_33
    invoke-virtual/range {p1 .. p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    const-string v3, "action_cr_config"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const-wide/16 v8, 0x0

    if-eqz v1, :cond_34

    const-string v1, "action_cr_event_switch"

    invoke-virtual {v0, v1, v5}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    const-string v3, "action_cr_event_frequency"

    const-wide/32 v10, 0x15180

    invoke-virtual {v0, v3, v10, v11}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v12

    const-string v3, "action_cr_perf_switch"

    invoke-virtual {v0, v3, v5}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v3

    const-string v5, "action_cr_perf_frequency"

    invoke-virtual {v0, v5, v10, v11}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v5

    const-string v10, "action_cr_event_en"

    invoke-virtual {v0, v10, v4}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v4

    const-wide/32 v10, 0x100000

    const-string v14, "action_cr_max_file_size"

    invoke-virtual {v0, v14, v10, v11}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v10

    invoke-static {}, Lqi/a;->b()Lqi/a$a;

    move-result-object v0

    invoke-virtual {v0, v1}, Lqi/a$a;->l(Z)Lqi/a$a;

    move-result-object v0

    invoke-virtual {v0, v12, v13}, Lqi/a$a;->k(J)Lqi/a$a;

    move-result-object v0

    invoke-virtual {v0, v3}, Lqi/a$a;->o(Z)Lqi/a$a;

    move-result-object v0

    invoke-virtual {v0, v5, v6}, Lqi/a$a;->n(J)Lqi/a$a;

    move-result-object v0

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lzi/d1;->b(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lqi/a$a;->i(Ljava/lang/String;)Lqi/a$a;

    move-result-object v0

    invoke-virtual {v0, v4}, Lqi/a$a;->j(Z)Lqi/a$a;

    move-result-object v0

    invoke-virtual {v0, v10, v11}, Lqi/a$a;->m(J)Lqi/a$a;

    move-result-object v0

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1}, Lqi/a$a;->h(Landroid/content/Context;)Lqi/a;

    move-result-object v0

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_48

    cmp-long v1, v12, v8

    if-lez v1, :cond_48

    cmp-long v1, v5, v8

    if-lez v1, :cond_48

    cmp-long v1, v10, v8

    if-lez v1, :cond_48

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1, v0}, Lzi/p4;->m(Landroid/content/Context;Lqi/a;)V

    goto/16 :goto_13

    :cond_34
    sget-object v1, Lcom/xiaomi/push/service/o0;->m:Ljava/lang/String;

    invoke-virtual/range {p1 .. p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_35

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1, v0}, Lcom/xiaomi/push/service/p2;->b(Landroid/content/Context;Landroid/content/Intent;)V

    goto/16 :goto_13

    :cond_35
    sget-object v1, Lcom/xiaomi/push/service/o0;->n:Ljava/lang/String;

    invoke-virtual/range {p1 .. p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_48

    const-string v1, "ext_downward_pkt_id"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_48

    invoke-static {}, Lcom/xiaomi/push/service/u0;->a()Lcom/xiaomi/push/service/u0;

    move-result-object v2

    const-string v3, "ext_app_receive_time"

    invoke-virtual {v0, v3, v8, v9}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v3

    invoke-virtual {v2, v1, v3, v4}, Lcom/xiaomi/push/service/u0;->f(Ljava/lang/String;J)V

    goto/16 :goto_13

    :cond_36
    :goto_d
    invoke-virtual {v0, v6}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v3}, Landroid/content/Intent;->getByteArrayExtra(Ljava/lang/String;)[B

    move-result-object v6

    const-string v1, "mipush_app_id"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const-string v1, "mipush_app_token"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    invoke-virtual/range {p1 .. p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v9, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_37

    invoke-static {p0}, Lcom/xiaomi/push/service/x2;->a(Landroid/content/Context;)Lcom/xiaomi/push/service/x2;

    move-result-object v1

    invoke-virtual {v1, v4}, Lcom/xiaomi/push/service/x2;->f(Ljava/lang/String;)V

    :cond_37
    invoke-virtual/range {p1 .. p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v11, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_38

    invoke-static {p0}, Lcom/xiaomi/push/service/x2;->a(Landroid/content/Context;)Lcom/xiaomi/push/service/x2;

    move-result-object v1

    invoke-virtual {v1, v4}, Lcom/xiaomi/push/service/x2;->i(Ljava/lang/String;)V

    invoke-static {p0}, Lcom/xiaomi/push/service/x2;->a(Landroid/content/Context;)Lcom/xiaomi/push/service/x2;

    move-result-object v1

    invoke-virtual {v1, v4}, Lcom/xiaomi/push/service/x2;->j(Ljava/lang/String;)V

    :cond_38
    if-nez v6, :cond_39

    const v0, 0x42c1d83

    const-string v1, "null payload"

    invoke-static {p0, v4, v6, v0, v1}, Lcom/xiaomi/push/service/z2;->b(Landroid/content/Context;Ljava/lang/String;[BILjava/lang/String;)V

    goto/16 :goto_13

    :cond_39
    invoke-static {v4, v6}, Lcom/xiaomi/push/service/z2;->f(Ljava/lang/String;[B)V

    new-instance v9, Lcom/xiaomi/push/service/y2;

    move-object v1, v9

    move-object v2, p0

    move-object v3, v4

    move-object v4, v5

    move-object v5, v12

    invoke-direct/range {v1 .. v6}, Lcom/xiaomi/push/service/y2;-><init>(Lcom/xiaomi/push/service/XMPushService;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[B)V

    invoke-virtual {p0, v9}, Lcom/xiaomi/push/service/XMPushService;->a(Lcom/xiaomi/push/service/XMPushService$j;)V

    invoke-virtual/range {p1 .. p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v11, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_48

    iget-object v0, v7, Lcom/xiaomi/push/service/XMPushService;->a:Lcom/xiaomi/push/service/XMPushService$f;

    if-nez v0, :cond_3a

    new-instance v0, Lcom/xiaomi/push/service/XMPushService$f;

    invoke-direct {v0, p0}, Lcom/xiaomi/push/service/XMPushService$f;-><init>(Lcom/xiaomi/push/service/XMPushService;)V

    iput-object v0, v7, Lcom/xiaomi/push/service/XMPushService;->a:Lcom/xiaomi/push/service/XMPushService$f;

    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0, v10}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    iget-object v1, v7, Lcom/xiaomi/push/service/XMPushService;->a:Lcom/xiaomi/push/service/XMPushService$f;

    invoke-static {p0, v1, v0, v8, v8}, Lzi/aa;->c(Landroid/content/Context;Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    :cond_3a
    iget-object v0, v7, Lcom/xiaomi/push/service/XMPushService;->a:Ljava/lang/Object;

    if-nez v0, :cond_48

    invoke-static {p0}, Lzi/h0;->d(Landroid/content/Context;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, v7, Lcom/xiaomi/push/service/XMPushService;->a:Ljava/lang/Object;

    goto/16 :goto_13

    :cond_3b
    :goto_e
    invoke-virtual {v0, v6}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v3}, Landroid/content/Intent;->getByteArrayExtra(Ljava/lang/String;)[B

    move-result-object v2

    const-string v3, "com.xiaomi.mipush.MESSAGE_CACHE"

    invoke-virtual {v0, v3, v4}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v3

    invoke-static {v2, v1}, Lcom/xiaomi/push/service/o2;->b([BLjava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_3c

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "duplicate msg from: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_f
    invoke-static {v0}, Lpi/c;->n(Ljava/lang/String;)V

    goto/16 :goto_13

    :cond_3c
    invoke-virtual/range {p1 .. p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v9, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3d

    invoke-static {p0}, Lcom/xiaomi/push/service/x2;->a(Landroid/content/Context;)Lcom/xiaomi/push/service/x2;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/xiaomi/push/service/x2;->b(Ljava/lang/String;)V

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lzi/p8;->j(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_3d

    invoke-static {v1}, Lcom/xiaomi/push/service/k;->d(Ljava/lang/String;)V

    :cond_3d
    invoke-virtual {p0, v1, v2, v3}, Lcom/xiaomi/push/service/XMPushService;->a(Ljava/lang/String;[BZ)V

    goto/16 :goto_13

    :cond_3e
    :goto_10
    invoke-virtual/range {p1 .. p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_40

    invoke-direct {p0}, Lcom/xiaomi/push/service/XMPushService;->i()Z

    move-result v0

    if-nez v0, :cond_48

    const-string v0, "exit falldown mode, activate alarm."

    invoke-static {v0}, Lpi/c;->n(Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/xiaomi/push/service/XMPushService;->e()V

    invoke-virtual {p0}, Lcom/xiaomi/push/service/XMPushService;->c()Z

    move-result v0

    if-nez v0, :cond_48

    invoke-virtual {p0}, Lcom/xiaomi/push/service/XMPushService;->d()Z

    move-result v0

    if-nez v0, :cond_48

    :cond_3f
    invoke-virtual {p0, v4}, Lcom/xiaomi/push/service/XMPushService;->a(Z)V

    goto/16 :goto_13

    :cond_40
    invoke-virtual/range {p1 .. p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_48

    invoke-direct {p0}, Lcom/xiaomi/push/service/XMPushService;->i()Z

    move-result v0

    if-eqz v0, :cond_48

    invoke-static {}, Lzi/v4;->e()Z

    move-result v0

    if-eqz v0, :cond_48

    const-string v0, "enter falldown mode, stop alarm."

    invoke-static {v0}, Lpi/c;->n(Ljava/lang/String;)V

    invoke-static {}, Lzi/v4;->a()V

    goto/16 :goto_13

    :cond_41
    :goto_11
    sget-object v1, Lcom/xiaomi/push/service/o0;->s:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lcom/xiaomi/push/service/o0;->x:Ljava/lang/String;

    invoke-virtual {v0, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_42

    const-string v0, "security is empty. ignore."

    goto/16 :goto_f

    :cond_42
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_47

    invoke-direct {p0, v1, v0}, Lcom/xiaomi/push/service/XMPushService;->a(Ljava/lang/String;Landroid/content/Intent;)Z

    move-result v2

    invoke-direct {p0, v1, v0}, Lcom/xiaomi/push/service/XMPushService;->a(Ljava/lang/String;Landroid/content/Intent;)Lcom/xiaomi/push/service/k0$b;

    move-result-object v0

    invoke-static {p0}, Lzi/h0;->w(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_43

    iget-object v1, v7, Lcom/xiaomi/push/service/XMPushService;->a:Lcom/xiaomi/push/service/l2;

    const/4 v4, 0x0

    const/4 v5, 0x2

    :goto_12
    const/4 v6, 0x0

    move-object v2, p0

    move-object v3, v0

    invoke-virtual/range {v1 .. v6}, Lcom/xiaomi/push/service/l2;->h(Landroid/content/Context;Lcom/xiaomi/push/service/k0$b;ZILjava/lang/String;)V

    goto :goto_13

    :cond_43
    invoke-virtual {p0}, Lcom/xiaomi/push/service/XMPushService;->c()Z

    move-result v1

    if-eqz v1, :cond_3f

    iget-object v1, v0, Lcom/xiaomi/push/service/k0$b;->m:Lcom/xiaomi/push/service/k0$c;

    sget-object v6, Lcom/xiaomi/push/service/k0$c;->a:Lcom/xiaomi/push/service/k0$c;

    if-ne v1, v6, :cond_44

    new-instance v1, Lcom/xiaomi/push/service/XMPushService$b;

    invoke-direct {v1, p0, v0}, Lcom/xiaomi/push/service/XMPushService$b;-><init>(Lcom/xiaomi/push/service/XMPushService;Lcom/xiaomi/push/service/k0$b;)V

    goto/16 :goto_1

    :cond_44
    if-eqz v2, :cond_45

    new-instance v1, Lcom/xiaomi/push/service/XMPushService$p;

    invoke-direct {v1, p0, v0}, Lcom/xiaomi/push/service/XMPushService$p;-><init>(Lcom/xiaomi/push/service/XMPushService;Lcom/xiaomi/push/service/k0$b;)V

    goto/16 :goto_1

    :cond_45
    sget-object v2, Lcom/xiaomi/push/service/k0$c;->b:Lcom/xiaomi/push/service/k0$c;

    if-ne v1, v2, :cond_46

    new-array v1, v3, [Ljava/lang/Object;

    iget-object v2, v0, Lcom/xiaomi/push/service/k0$b;->h:Ljava/lang/String;

    aput-object v2, v1, v5

    iget-object v0, v0, Lcom/xiaomi/push/service/k0$b;->b:Ljava/lang/String;

    invoke-static {v0}, Lcom/xiaomi/push/service/k0$b;->e(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v1, v4

    const-string v0, "the client is binding. %1$s %2$s."

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_f

    :cond_46
    sget-object v2, Lcom/xiaomi/push/service/k0$c;->c:Lcom/xiaomi/push/service/k0$c;

    if-ne v1, v2, :cond_48

    iget-object v1, v7, Lcom/xiaomi/push/service/XMPushService;->a:Lcom/xiaomi/push/service/l2;

    const/4 v4, 0x1

    const/4 v5, 0x0

    goto :goto_12

    :cond_47
    const-string v0, "channel id is empty, do nothing!"

    goto/16 :goto_b

    :cond_48
    :goto_13
    return-void
.end method

.method private e()V
    .locals 1

    invoke-virtual {p0}, Lcom/xiaomi/push/service/XMPushService;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lzi/v4;->e()Z

    move-result v0

    if-nez v0, :cond_1

    const/4 v0, 0x1

    invoke-static {v0}, Lzi/v4;->d(Z)V

    goto :goto_0

    :cond_0
    invoke-static {}, Lzi/v4;->a()V

    :cond_1
    :goto_0
    return-void
.end method

.method public static e()Z
    .locals 1

    sget-boolean v0, Lcom/xiaomi/push/service/XMPushService;->b:Z

    return v0
.end method

.method private f()V
    .locals 2

    iget-object v0, p0, Lcom/xiaomi/push/service/XMPushService;->a:Lzi/c6;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lzi/c6;->B()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "try to connect while connecting."

    :goto_0
    invoke-static {v0}, Lpi/c;->D(Ljava/lang/String;)V

    return-void

    :cond_0
    iget-object v0, p0, Lcom/xiaomi/push/service/XMPushService;->a:Lzi/c6;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lzi/c6;->D()Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "try to connect while is connected."

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/xiaomi/push/service/XMPushService;->a:Lzi/d6;

    invoke-static {p0}, Lzi/h0;->e(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lzi/d6;->i(Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/xiaomi/push/service/XMPushService;->g()V

    iget-object v0, p0, Lcom/xiaomi/push/service/XMPushService;->a:Lzi/c6;

    if-nez v0, :cond_2

    invoke-static {}, Lcom/xiaomi/push/service/k0;->c()Lcom/xiaomi/push/service/k0;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/xiaomi/push/service/k0;->i(Landroid/content/Context;)V

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/xiaomi/push/service/XMPushService;->c(Z)V

    :cond_2
    return-void
.end method

.method private f()Z
    .locals 4

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/xiaomi/push/service/XMPushService;->a:J

    sub-long/2addr v0, v2

    const-wide/16 v2, 0x7530

    cmp-long v0, v0, v2

    if-gez v0, :cond_0

    const/4 v0, 0x0

    return v0

    :cond_0
    invoke-static {p0}, Lzi/h0;->x(Landroid/content/Context;)Z

    move-result v0

    return v0
.end method

.method private g()V
    .locals 3

    :try_start_0
    iget-object v0, p0, Lcom/xiaomi/push/service/XMPushService;->a:Lzi/y5;

    iget-object v1, p0, Lcom/xiaomi/push/service/XMPushService;->a:Lzi/h6;

    new-instance v2, Lcom/xiaomi/push/service/t1;

    invoke-direct {v2, p0}, Lcom/xiaomi/push/service/t1;-><init>(Lcom/xiaomi/push/service/XMPushService;)V

    invoke-virtual {v0, v1, v2}, Lzi/c6;->n(Lzi/h6;Lzi/q6;)V

    iget-object v0, p0, Lcom/xiaomi/push/service/XMPushService;->a:Lzi/y5;

    invoke-virtual {v0}, Lzi/j6;->R()V

    iget-object v0, p0, Lcom/xiaomi/push/service/XMPushService;->a:Lzi/y5;

    iput-object v0, p0, Lcom/xiaomi/push/service/XMPushService;->a:Lzi/c6;
    :try_end_0
    .catch Lzi/o6; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "fail to create Slim connection"

    invoke-static {v1, v0}, Lpi/c;->p(Ljava/lang/String;Ljava/lang/Throwable;)V

    iget-object v1, p0, Lcom/xiaomi/push/service/XMPushService;->a:Lzi/y5;

    const/4 v2, 0x3

    invoke-virtual {v1, v2, v0}, Lzi/j6;->v(ILjava/lang/Exception;)V

    :goto_0
    return-void
.end method

.method private g()Z
    .locals 3

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "com.xiaomi.xmsf"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v2, "power_supersave_mode_open"

    invoke-static {v0, v2, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_0

    move v1, v2

    :cond_0
    return v1
.end method

.method private h()V
    .locals 0

    return-void
.end method

.method private h()Z
    .locals 6

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "com.xiaomi.xmsf"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_0

    const-string v1, "current sdk expect region is cn"

    invoke-static {v1}, Lpi/c;->n(Ljava/lang/String;)V

    sget-object v1, Lzi/ba;->a:Lzi/ba;

    invoke-virtual {v1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Lcom/xiaomi/push/service/e1;->a(Landroid/content/Context;)Lcom/xiaomi/push/service/e1;

    move-result-object v3

    invoke-virtual {v3}, Lcom/xiaomi/push/service/e1;->b()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    goto :goto_0

    :cond_0
    invoke-static {p0}, Lcom/xiaomi/push/service/x2;->a(Landroid/content/Context;)Lcom/xiaomi/push/service/x2;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/xiaomi/push/service/x2;->e(Ljava/lang/String;)Z

    move-result v1

    xor-int/2addr v1, v2

    :goto_0
    if-nez v1, :cond_1

    const/4 v3, 0x6

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    const-string v5, "-->isPushEnabled(): isEnabled="

    aput-object v5, v3, v4

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    aput-object v4, v3, v2

    const/4 v2, 0x2

    const-string v4, ", package="

    aput-object v4, v3, v2

    const/4 v2, 0x3

    aput-object v0, v3, v2

    const/4 v0, 0x4

    const-string v2, ", region="

    aput-object v2, v3, v0

    const/4 v0, 0x5

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/xiaomi/push/service/e1;->a(Landroid/content/Context;)Lcom/xiaomi/push/service/e1;

    move-result-object v2

    invoke-virtual {v2}, Lcom/xiaomi/push/service/e1;->b()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v3, v0

    const-string v0, "XMPushService"

    invoke-static {v0, v3}, Lpi/c;->q(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_1
    return v1
.end method

.method private i()V
    .locals 2

    iget-object v0, p0, Lcom/xiaomi/push/service/XMPushService;->a:Ljava/util/ArrayList;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/xiaomi/push/service/XMPushService;->a:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private i()Z
    .locals 2

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "com.xiaomi.xmsf"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/xiaomi/push/service/XMPushService;->j()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {p0}, Lzi/o7;->q(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lzi/o7;->k(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private j()Z
    .locals 5

    new-instance v0, Ljava/util/Date;

    invoke-direct {v0}, Ljava/util/Date;-><init>()V

    const/4 v1, 0x1

    new-array v2, v1, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object v0, v2, v3

    const-string v0, "%tH"

    invoke-static {v0, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iget v2, p0, Lcom/xiaomi/push/service/XMPushService;->a:I

    iget v4, p0, Lcom/xiaomi/push/service/XMPushService;->b:I

    if-le v2, v4, :cond_0

    if-ge v0, v2, :cond_2

    if-ge v0, v4, :cond_1

    goto :goto_0

    :cond_0
    if-ge v2, v4, :cond_1

    if-lt v0, v2, :cond_1

    if-ge v0, v4, :cond_1

    goto :goto_0

    :cond_1
    move v1, v3

    :cond_2
    :goto_0
    return v1
.end method

.method private k()Z
    .locals 3

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "com.xiaomi.xmsf"

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return v1

    :cond_0
    invoke-static {p0}, Lcom/xiaomi/push/service/e0;->d(Landroid/content/Context;)Lcom/xiaomi/push/service/e0;

    move-result-object v0

    sget-object v2, Lzi/v7;->I:Lzi/v7;

    invoke-virtual {v2}, Lzi/v7;->a()I

    move-result v2

    invoke-virtual {v0, v2, v1}, Lcom/xiaomi/push/service/e0;->m(IZ)Z

    move-result v0

    return v0
.end method


# virtual methods
.method public a()I
    .locals 1

    iget v0, p0, Lcom/xiaomi/push/service/XMPushService;->c:I

    if-gez v0, :cond_0

    const-string v0, "com.xiaomi.xmsf"

    invoke-static {p0, v0}, Lzi/m5;->b(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/xiaomi/push/service/XMPushService;->c:I

    :cond_0
    iget v0, p0, Lcom/xiaomi/push/service/XMPushService;->c:I

    return v0
.end method

.method public a()Lcom/xiaomi/push/service/l2;
    .locals 1

    new-instance v0, Lcom/xiaomi/push/service/l2;

    invoke-direct {v0}, Lcom/xiaomi/push/service/l2;-><init>()V

    return-object v0
.end method

.method public a()Lzi/c6;
    .locals 1

    iget-object v0, p0, Lcom/xiaomi/push/service/XMPushService;->a:Lzi/c6;

    return-object v0
.end method

.method a()V
    .locals 4

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/xiaomi/push/service/XMPushService;->a:J

    sub-long/2addr v0, v2

    invoke-static {}, Lzi/i6;->a()I

    move-result v2

    int-to-long v2, v2

    cmp-long v0, v0, v2

    if-gez v0, :cond_0

    return-void

    :cond_0
    invoke-static {p0}, Lzi/h0;->x(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/xiaomi/push/service/XMPushService;->b(Z)V

    :cond_1
    return-void
.end method

.method public a(I)V
    .locals 1

    iget-object v0, p0, Lcom/xiaomi/push/service/XMPushService;->a:Lcom/xiaomi/push/service/r2;

    invoke-virtual {v0, p1}, Lcom/xiaomi/push/service/r2;->c(I)V

    return-void
.end method

.method public a(ILjava/lang/Exception;)V
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "disconnect "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/xiaomi/push/service/XMPushService;->a:Lzi/c6;

    const/4 v2, 0x0

    if-nez v1, :cond_0

    move-object v1, v2

    goto :goto_0

    :cond_0
    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    :goto_0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lpi/c;->n(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/xiaomi/push/service/XMPushService;->a:Lzi/c6;

    if-eqz v0, :cond_1

    invoke-virtual {v0, p1, p2}, Lzi/c6;->v(ILjava/lang/Exception;)V

    iput-object v2, p0, Lcom/xiaomi/push/service/XMPushService;->a:Lzi/c6;

    :cond_1
    const/4 p2, 0x7

    invoke-virtual {p0, p2}, Lcom/xiaomi/push/service/XMPushService;->a(I)V

    const/4 p2, 0x4

    invoke-virtual {p0, p2}, Lcom/xiaomi/push/service/XMPushService;->a(I)V

    invoke-static {}, Lcom/xiaomi/push/service/k0;->c()Lcom/xiaomi/push/service/k0;

    move-result-object p2

    invoke-virtual {p2, p0, p1}, Lcom/xiaomi/push/service/k0;->j(Landroid/content/Context;I)V

    return-void
.end method

.method public a(Lcom/xiaomi/push/service/XMPushService$j;)V
    .locals 2

    const-wide/16 v0, 0x0

    invoke-virtual {p0, p1, v0, v1}, Lcom/xiaomi/push/service/XMPushService;->a(Lcom/xiaomi/push/service/XMPushService$j;J)V

    return-void
.end method

.method public a(Lcom/xiaomi/push/service/XMPushService$j;J)V
    .locals 1

    :try_start_0
    iget-object v0, p0, Lcom/xiaomi/push/service/XMPushService;->a:Lcom/xiaomi/push/service/r2;

    invoke-virtual {v0, p1, p2, p3}, Lcom/xiaomi/push/service/r2;->f(Lcom/xiaomi/push/service/r2$b;J)V
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "can\'t execute job err = "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lpi/c;->n(Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method public a(Lcom/xiaomi/push/service/XMPushService$n;)V
    .locals 2

    iget-object v0, p0, Lcom/xiaomi/push/service/XMPushService;->a:Ljava/util/ArrayList;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/xiaomi/push/service/XMPushService;->a:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public a(Lcom/xiaomi/push/service/k0$b;)V
    .locals 5

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/xiaomi/push/service/k0$b;->a()J

    move-result-wide v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "schedule rebind job in "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-wide/16 v3, 0x3e8

    div-long v3, v0, v3

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lpi/c;->n(Ljava/lang/String;)V

    new-instance v2, Lcom/xiaomi/push/service/XMPushService$b;

    invoke-direct {v2, p0, p1}, Lcom/xiaomi/push/service/XMPushService$b;-><init>(Lcom/xiaomi/push/service/XMPushService;Lcom/xiaomi/push/service/k0$b;)V

    invoke-virtual {p0, v2, v0, v1}, Lcom/xiaomi/push/service/XMPushService;->a(Lcom/xiaomi/push/service/XMPushService$j;J)V

    :cond_0
    return-void
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V
    .locals 7

    invoke-static {}, Lcom/xiaomi/push/service/k0;->c()Lcom/xiaomi/push/service/k0;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/xiaomi/push/service/k0;->b(Ljava/lang/String;Ljava/lang/String;)Lcom/xiaomi/push/service/k0$b;

    move-result-object v3

    if-eqz v3, :cond_0

    new-instance v0, Lcom/xiaomi/push/service/XMPushService$s;

    move-object v1, v0

    move-object v2, p0

    move v4, p3

    move-object v5, p5

    move-object v6, p4

    invoke-direct/range {v1 .. v6}, Lcom/xiaomi/push/service/XMPushService$s;-><init>(Lcom/xiaomi/push/service/XMPushService;Lcom/xiaomi/push/service/k0$b;ILjava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/xiaomi/push/service/XMPushService;->a(Lcom/xiaomi/push/service/XMPushService$j;)V

    :cond_0
    invoke-static {}, Lcom/xiaomi/push/service/k0;->c()Lcom/xiaomi/push/service/k0;

    move-result-object p3

    invoke-virtual {p3, p1, p2}, Lcom/xiaomi/push/service/k0;->n(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method a(Ljava/lang/String;[BZ)V
    .locals 2

    invoke-static {}, Lcom/xiaomi/push/service/k0;->c()Lcom/xiaomi/push/service/k0;

    move-result-object v0

    const-string v1, "5"

    invoke-virtual {v0, v1}, Lcom/xiaomi/push/service/k0;->f(Ljava/lang/String;)Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    if-eqz p3, :cond_2

    :goto_0
    invoke-static {p1, p2}, Lcom/xiaomi/push/service/z2;->f(Ljava/lang/String;[B)V

    goto :goto_1

    :cond_0
    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/xiaomi/push/service/k0$b;

    iget-object v0, v0, Lcom/xiaomi/push/service/k0$b;->m:Lcom/xiaomi/push/service/k0$c;

    sget-object v1, Lcom/xiaomi/push/service/k0$c;->c:Lcom/xiaomi/push/service/k0$c;

    if-eq v0, v1, :cond_1

    if-eqz p3, :cond_2

    goto :goto_0

    :cond_1
    new-instance p3, Lcom/xiaomi/push/service/r1;

    const/4 v0, 0x4

    invoke-direct {p3, p0, v0, p1, p2}, Lcom/xiaomi/push/service/r1;-><init>(Lcom/xiaomi/push/service/XMPushService;ILjava/lang/String;[B)V

    invoke-virtual {p0, p3}, Lcom/xiaomi/push/service/XMPushService;->a(Lcom/xiaomi/push/service/XMPushService$j;)V

    :cond_2
    :goto_1
    return-void
.end method

.method public a(Lzi/c6;)V
    .locals 1

    const-string v0, "begin to connect..."

    invoke-static {v0}, Lpi/c;->B(Ljava/lang/String;)V

    invoke-static {}, Lzi/n5;->e()Lzi/l5;

    move-result-object v0

    invoke-virtual {v0, p1}, Lzi/l5;->a(Lzi/c6;)V

    return-void
.end method

.method public a(Lzi/c6;ILjava/lang/Exception;)V
    .locals 1

    invoke-static {}, Lzi/n5;->e()Lzi/l5;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3}, Lzi/l5;->a(Lzi/c6;ILjava/lang/Exception;)V

    invoke-direct {p0}, Lcom/xiaomi/push/service/XMPushService;->i()Z

    move-result p1

    if-nez p1, :cond_0

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Lcom/xiaomi/push/service/XMPushService;->a(Z)V

    :cond_0
    return-void
.end method

.method public a(Lzi/c6;Ljava/lang/Exception;)V
    .locals 1

    invoke-static {}, Lzi/n5;->e()Lzi/l5;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lzi/l5;->a(Lzi/c6;Ljava/lang/Exception;)V

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lcom/xiaomi/push/service/XMPushService;->c(Z)V

    invoke-direct {p0}, Lcom/xiaomi/push/service/XMPushService;->i()Z

    move-result p2

    if-nez p2, :cond_0

    invoke-virtual {p0, p1}, Lcom/xiaomi/push/service/XMPushService;->a(Z)V

    :cond_0
    return-void
.end method

.method public a(Lzi/r5;)V
    .locals 1

    iget-object v0, p0, Lcom/xiaomi/push/service/XMPushService;->a:Lzi/c6;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lzi/c6;->w(Lzi/r5;)V

    return-void

    :cond_0
    new-instance p1, Lzi/o6;

    const-string v0, "try send msg while connection is null."

    invoke-direct {p1, v0}, Lzi/o6;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public a(Z)V
    .locals 1

    iget-object v0, p0, Lcom/xiaomi/push/service/XMPushService;->a:Lcom/xiaomi/push/service/t0;

    invoke-virtual {v0, p1}, Lcom/xiaomi/push/service/t0;->c(Z)V

    return-void
.end method

.method public a([BLjava/lang/String;)V
    .locals 10

    const v0, 0x42c1d83

    if-nez p1, :cond_0

    const-string v1, "null payload"

    invoke-static {p0, p2, p1, v0, v1}, Lcom/xiaomi/push/service/z2;->b(Landroid/content/Context;Ljava/lang/String;[BILjava/lang/String;)V

    const-string p1, "register request without payload"

    invoke-static {p1}, Lpi/c;->n(Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_0
    new-instance v1, Lzi/m8;

    invoke-direct {v1}, Lzi/m8;-><init>()V

    :try_start_0
    invoke-static {v1, p1}, Lzi/b9;->d(Lzi/c9;[B)V

    iget-object v2, v1, Lzi/m8;->a:Lzi/q7;

    sget-object v3, Lzi/q7;->b:Lzi/q7;

    if-ne v2, v3, :cond_1

    new-instance v2, Lzi/r8;

    invoke-direct {v2}, Lzi/r8;-><init>()V
    :try_end_0
    .catch Lzi/h9; {:try_start_0 .. :try_end_0} :catch_1

    :try_start_1
    invoke-virtual {v1}, Lzi/m8;->o()[B

    move-result-object v3

    invoke-static {v2, v3}, Lzi/b9;->d(Lzi/c9;[B)V

    new-instance v3, Lcom/xiaomi/push/service/y2;

    invoke-virtual {v1}, Lzi/m8;->q()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2}, Lzi/r8;->m()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v2}, Lzi/r8;->s()Ljava/lang/String;

    move-result-object v8

    move-object v4, v3

    move-object v5, p0

    move-object v9, p1

    invoke-direct/range {v4 .. v9}, Lcom/xiaomi/push/service/y2;-><init>(Lcom/xiaomi/push/service/XMPushService;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[B)V

    invoke-virtual {p0, v3}, Lcom/xiaomi/push/service/XMPushService;->a(Lcom/xiaomi/push/service/XMPushService$j;)V

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Lzi/q4;->a(Landroid/content/Context;)Lzi/q4;

    move-result-object v4

    invoke-virtual {v1}, Lzi/m8;->q()Ljava/lang/String;

    move-result-object v5

    const-string v6, "E100003"

    invoke-virtual {v2}, Lzi/r8;->e()Ljava/lang/String;

    move-result-object v7

    const/16 v8, 0x1772

    const/4 v9, 0x0

    invoke-virtual/range {v4 .. v9}, Lzi/q4;->f(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)V
    :try_end_1
    .catch Lzi/h9; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    :try_start_2
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "app register error. "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lpi/c;->D(Ljava/lang/String;)V

    const-string v1, " data action error."

    invoke-static {p0, p2, p1, v0, v1}, Lcom/xiaomi/push/service/z2;->b(Landroid/content/Context;Ljava/lang/String;[BILjava/lang/String;)V

    goto :goto_0

    :cond_1
    const-string v1, " registration action required."

    invoke-static {p0, p2, p1, v0, v1}, Lcom/xiaomi/push/service/z2;->b(Landroid/content/Context;Ljava/lang/String;[BILjava/lang/String;)V

    const-string v1, "register request with invalid payload"

    invoke-static {v1}, Lpi/c;->n(Ljava/lang/String;)V
    :try_end_2
    .catch Lzi/h9; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_0

    :catch_1
    move-exception v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "app register fail. "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lpi/c;->D(Ljava/lang/String;)V

    const-string v1, " data container error."

    invoke-static {p0, p2, p1, v0, v1}, Lcom/xiaomi/push/service/z2;->b(Landroid/content/Context;Ljava/lang/String;[BILjava/lang/String;)V

    :goto_0
    return-void
.end method

.method public a([Lzi/r5;)V
    .locals 1

    iget-object v0, p0, Lcom/xiaomi/push/service/XMPushService;->a:Lzi/c6;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lzi/c6;->p([Lzi/r5;)V

    return-void

    :cond_0
    new-instance p1, Lzi/o6;

    const-string v0, "try send msg while connection is null."

    invoke-direct {p1, v0}, Lzi/o6;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public a()Z
    .locals 9

    invoke-static {p0}, Lzi/h0;->v(Landroid/content/Context;)Z

    move-result v0

    invoke-static {}, Lcom/xiaomi/push/service/k0;->c()Lcom/xiaomi/push/service/k0;

    move-result-object v1

    invoke-virtual {v1}, Lcom/xiaomi/push/service/k0;->a()I

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-lez v1, :cond_0

    move v1, v3

    goto :goto_0

    :cond_0
    move v1, v2

    :goto_0
    invoke-virtual {p0}, Lcom/xiaomi/push/service/XMPushService;->b()Z

    move-result v4

    xor-int/2addr v4, v3

    invoke-direct {p0}, Lcom/xiaomi/push/service/XMPushService;->h()Z

    move-result v5

    invoke-direct {p0}, Lcom/xiaomi/push/service/XMPushService;->g()Z

    move-result v6

    xor-int/2addr v6, v3

    if-eqz v0, :cond_1

    if-eqz v1, :cond_1

    if-eqz v4, :cond_1

    if-eqz v5, :cond_1

    if-eqz v6, :cond_1

    move v7, v3

    goto :goto_1

    :cond_1
    move v7, v2

    :goto_1
    if-nez v7, :cond_2

    const/4 v8, 0x5

    new-array v8, v8, [Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    aput-object v0, v8, v2

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    aput-object v0, v8, v3

    const/4 v0, 0x2

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    aput-object v1, v8, v0

    const/4 v0, 0x3

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    aput-object v1, v8, v0

    const/4 v0, 0x4

    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    aput-object v1, v8, v0

    const-string v0, "not conn, net=%s;cnt=%s;!dis=%s;enb=%s;!spm=%s;"

    invoke-static {v0, v8}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lpi/c;->E(Ljava/lang/String;)V

    :cond_2
    return v7
.end method

.method public a(I)Z
    .locals 1

    iget-object v0, p0, Lcom/xiaomi/push/service/XMPushService;->a:Lcom/xiaomi/push/service/r2;

    invoke-virtual {v0, p1}, Lcom/xiaomi/push/service/r2;->h(I)Z

    move-result p1

    return p1
.end method

.method public b()Lcom/xiaomi/push/service/l2;
    .locals 1

    iget-object v0, p0, Lcom/xiaomi/push/service/XMPushService;->a:Lcom/xiaomi/push/service/l2;

    return-object v0
.end method

.method b()V
    .locals 2

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/xiaomi/push/service/q2;->c(Landroid/content/Context;)Lcom/xiaomi/push/service/q2;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xiaomi/push/service/q2;->u()V

    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/xiaomi/push/service/XMPushService;->a:Ljava/util/ArrayList;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/xiaomi/push/service/XMPushService$n;

    invoke-interface {v1}, Lcom/xiaomi/push/service/XMPushService$n;->a()V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public b(Lcom/xiaomi/push/service/XMPushService$j;)V
    .locals 2

    iget-object v0, p0, Lcom/xiaomi/push/service/XMPushService;->a:Lcom/xiaomi/push/service/r2;

    iget v1, p1, Lcom/xiaomi/push/service/r2$b;->a:I

    invoke-virtual {v0, v1, p1}, Lcom/xiaomi/push/service/r2;->d(ILcom/xiaomi/push/service/r2$b;)V

    return-void
.end method

.method public b(Lzi/c6;)V
    .locals 2

    invoke-static {}, Lzi/n5;->e()Lzi/l5;

    move-result-object v0

    invoke-virtual {v0, p1}, Lzi/l5;->b(Lzi/c6;)V

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lcom/xiaomi/push/service/XMPushService;->c(Z)V

    iget-object v0, p0, Lcom/xiaomi/push/service/XMPushService;->a:Lcom/xiaomi/push/service/t0;

    invoke-virtual {v0}, Lcom/xiaomi/push/service/t0;->b()V

    invoke-static {}, Lzi/v4;->e()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/xiaomi/push/service/XMPushService;->i()Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "reconnection successful, reactivate alarm."

    invoke-static {v0}, Lpi/c;->n(Ljava/lang/String;)V

    invoke-static {p1}, Lzi/v4;->d(Z)V

    :cond_0
    invoke-static {}, Lcom/xiaomi/push/service/k0;->c()Lcom/xiaomi/push/service/k0;

    move-result-object p1

    invoke-virtual {p1}, Lcom/xiaomi/push/service/k0;->e()Ljava/util/ArrayList;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/xiaomi/push/service/k0$b;

    new-instance v1, Lcom/xiaomi/push/service/XMPushService$b;

    invoke-direct {v1, p0, v0}, Lcom/xiaomi/push/service/XMPushService$b;-><init>(Lcom/xiaomi/push/service/XMPushService;Lcom/xiaomi/push/service/k0$b;)V

    invoke-virtual {p0, v1}, Lcom/xiaomi/push/service/XMPushService;->a(Lcom/xiaomi/push/service/XMPushService$j;)V

    goto :goto_0

    :cond_1
    iget-boolean p1, p0, Lcom/xiaomi/push/service/XMPushService;->a:Z

    if-nez p1, :cond_2

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lzi/p8;->j(Landroid/content/Context;)Z

    move-result p1

    if-eqz p1, :cond_2

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lzi/h;->f(Landroid/content/Context;)Lzi/h;

    move-result-object p1

    new-instance v0, Lcom/xiaomi/push/service/u1;

    invoke-direct {v0, p0}, Lcom/xiaomi/push/service/u1;-><init>(Lcom/xiaomi/push/service/XMPushService;)V

    invoke-virtual {p1, v0}, Lzi/h;->g(Ljava/lang/Runnable;)V

    :cond_2
    return-void
.end method

.method public b()Z
    .locals 5

    const/4 v0, 0x0

    :try_start_0
    const-string v1, "miui.os.Build"

    invoke-static {p0, v1}, Lzi/ga;->c(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    const-string v2, "IS_CM_CUSTOMIZATION_TEST"

    invoke-virtual {v1, v2}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v2

    const-string v3, "IS_CU_CUSTOMIZATION_TEST"

    invoke-virtual {v1, v3}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v3

    const-string v4, "IS_CT_CUSTOMIZATION_TEST"

    invoke-virtual {v1, v4}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v1

    const/4 v4, 0x0

    invoke-virtual {v2, v4}, Ljava/lang/reflect/Field;->getBoolean(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    invoke-virtual {v3, v4}, Ljava/lang/reflect/Field;->getBoolean(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    invoke-virtual {v1, v4}, Ljava/lang/reflect/Field;->getBoolean(Ljava/lang/Object;)Z

    move-result v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v1, :cond_1

    :cond_0
    const/4 v0, 0x1

    :catchall_0
    :cond_1
    return v0
.end method

.method public c()Z
    .locals 1

    iget-object v0, p0, Lcom/xiaomi/push/service/XMPushService;->a:Lzi/c6;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lzi/c6;->D()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public d()Z
    .locals 1

    iget-object v0, p0, Lcom/xiaomi/push/service/XMPushService;->a:Lzi/c6;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lzi/c6;->B()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 0

    iget-object p1, p0, Lcom/xiaomi/push/service/XMPushService;->a:Landroid/os/Messenger;

    invoke-virtual {p1}, Landroid/os/Messenger;->getBinder()Landroid/os/IBinder;

    move-result-object p1

    return-object p1
.end method

.method public onCreate()V
    .locals 11

    invoke-super {p0}, Landroid/app/Service;->onCreate()V

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lpi/c;->l(Landroid/content/Context;)V

    invoke-static {p0}, Lzi/ga;->e(Landroid/content/Context;)V

    invoke-static {p0}, Lcom/xiaomi/push/service/w2;->b(Landroid/content/Context;)Lcom/xiaomi/push/service/v2;

    move-result-object v7

    if-eqz v7, :cond_0

    iget v0, v7, Lcom/xiaomi/push/service/v2;->g:I

    invoke-static {v0}, Lzi/oa;->b(I)V

    :cond_0
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lzi/p8;->j(Landroid/content/Context;)Z

    move-result v0

    const/4 v8, 0x1

    const/4 v9, 0x0

    if-eqz v0, :cond_1

    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "hb-alarm"

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    new-instance v10, Landroid/os/Handler;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {v10, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-instance v0, Lcom/xiaomi/push/service/XMPushService$a;

    invoke-direct {v0, p0, v9}, Lcom/xiaomi/push/service/XMPushService$a;-><init>(Lcom/xiaomi/push/service/XMPushService;Lcom/xiaomi/push/service/p1;)V

    iput-object v0, p0, Lcom/xiaomi/push/service/XMPushService;->a:Lcom/xiaomi/push/service/XMPushService$a;

    new-instance v3, Landroid/content/IntentFilter;

    sget-object v0, Lcom/xiaomi/push/service/o0;->o:Ljava/lang/String;

    invoke-direct {v3, v0}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/xiaomi/push/service/XMPushService;->a:Lcom/xiaomi/push/service/XMPushService$a;

    const/4 v6, 0x4

    const-string v4, "com.xiaomi.xmsf.permission.MIPUSH_RECEIVE"

    move-object v1, p0

    move-object v5, v10

    invoke-static/range {v1 .. v6}, Lzi/aa;->d(Landroid/content/Context;Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;I)Landroid/content/Intent;

    sput-boolean v8, Lcom/xiaomi/push/service/XMPushService;->b:Z

    new-instance v0, Lcom/xiaomi/push/service/v1;

    invoke-direct {v0, p0}, Lcom/xiaomi/push/service/v1;-><init>(Lcom/xiaomi/push/service/XMPushService;)V

    invoke-virtual {v10, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_1
    new-instance v0, Landroid/os/Messenger;

    new-instance v1, Lcom/xiaomi/push/service/w1;

    invoke-direct {v1, p0}, Lcom/xiaomi/push/service/w1;-><init>(Lcom/xiaomi/push/service/XMPushService;)V

    invoke-direct {v0, v1}, Landroid/os/Messenger;-><init>(Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/xiaomi/push/service/XMPushService;->a:Landroid/os/Messenger;

    invoke-static {p0}, Lcom/xiaomi/push/service/p0;->d(Lcom/xiaomi/push/service/XMPushService;)V

    new-instance v0, Lcom/xiaomi/push/service/x1;

    const/4 v3, 0x0

    const/16 v4, 0x1466

    const/4 v6, 0x0

    const-string v5, "xiaomi.com"

    move-object v1, v0

    move-object v2, p0

    invoke-direct/range {v1 .. v6}, Lcom/xiaomi/push/service/x1;-><init>(Lcom/xiaomi/push/service/XMPushService;Ljava/util/Map;ILjava/lang/String;Lzi/g6;)V

    iput-object v0, p0, Lcom/xiaomi/push/service/XMPushService;->a:Lzi/d6;

    invoke-virtual {v0, v8}, Lzi/d6;->e(Z)V

    new-instance v0, Lzi/y5;

    iget-object v1, p0, Lcom/xiaomi/push/service/XMPushService;->a:Lzi/d6;

    invoke-direct {v0, p0, v1}, Lzi/y5;-><init>(Lcom/xiaomi/push/service/XMPushService;Lzi/d6;)V

    iput-object v0, p0, Lcom/xiaomi/push/service/XMPushService;->a:Lzi/y5;

    invoke-virtual {p0}, Lcom/xiaomi/push/service/XMPushService;->a()Lcom/xiaomi/push/service/l2;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaomi/push/service/XMPushService;->a:Lcom/xiaomi/push/service/l2;

    invoke-static {p0}, Lzi/v4;->b(Landroid/content/Context;)V

    iget-object v0, p0, Lcom/xiaomi/push/service/XMPushService;->a:Lzi/y5;

    invoke-virtual {v0, p0}, Lzi/c6;->l(Lzi/f6;)V

    new-instance v0, Lcom/xiaomi/push/service/i0;

    invoke-direct {v0, p0}, Lcom/xiaomi/push/service/i0;-><init>(Lcom/xiaomi/push/service/XMPushService;)V

    iput-object v0, p0, Lcom/xiaomi/push/service/XMPushService;->a:Lcom/xiaomi/push/service/i0;

    new-instance v0, Lcom/xiaomi/push/service/t0;

    invoke-direct {v0, p0}, Lcom/xiaomi/push/service/t0;-><init>(Lcom/xiaomi/push/service/XMPushService;)V

    iput-object v0, p0, Lcom/xiaomi/push/service/XMPushService;->a:Lcom/xiaomi/push/service/t0;

    new-instance v0, Lcom/xiaomi/push/service/m2;

    invoke-direct {v0}, Lcom/xiaomi/push/service/m2;-><init>()V

    invoke-virtual {v0}, Lcom/xiaomi/push/service/m2;->b()V

    invoke-static {}, Lzi/n5;->f()Lzi/n5;

    move-result-object v0

    invoke-virtual {v0, p0}, Lzi/n5;->i(Lcom/xiaomi/push/service/XMPushService;)V

    new-instance v0, Lcom/xiaomi/push/service/r2;

    const-string v1, "Connection Controller Thread"

    invoke-direct {v0, v1}, Lcom/xiaomi/push/service/r2;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/xiaomi/push/service/XMPushService;->a:Lcom/xiaomi/push/service/r2;

    invoke-static {}, Lcom/xiaomi/push/service/k0;->c()Lcom/xiaomi/push/service/k0;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xiaomi/push/service/k0;->o()V

    new-instance v1, Lcom/xiaomi/push/service/y1;

    invoke-direct {v1, p0}, Lcom/xiaomi/push/service/y1;-><init>(Lcom/xiaomi/push/service/XMPushService;)V

    invoke-virtual {v0, v1}, Lcom/xiaomi/push/service/k0;->k(Lcom/xiaomi/push/service/k0$a;)V

    invoke-direct {p0}, Lcom/xiaomi/push/service/XMPushService;->k()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-direct {p0}, Lcom/xiaomi/push/service/XMPushService;->h()V

    :cond_2
    invoke-static {p0}, Lzi/n7;->b(Landroid/content/Context;)Lzi/n7;

    move-result-object v0

    new-instance v1, Lcom/xiaomi/push/service/t2;

    invoke-direct {v1, p0}, Lcom/xiaomi/push/service/t2;-><init>(Lcom/xiaomi/push/service/XMPushService;)V

    const-string v2, "UPLOADER_PUSH_CHANNEL"

    invoke-virtual {v0, v1, v2}, Lzi/n7;->d(Lzi/p7;Ljava/lang/String;)V

    new-instance v0, Lzi/k7;

    invoke-direct {v0, p0}, Lzi/k7;-><init>(Landroid/content/Context;)V

    invoke-virtual {p0, v0}, Lcom/xiaomi/push/service/XMPushService;->a(Lcom/xiaomi/push/service/XMPushService$n;)V

    new-instance v0, Lcom/xiaomi/push/service/n1;

    invoke-direct {v0, p0}, Lcom/xiaomi/push/service/n1;-><init>(Landroid/content/Context;)V

    invoke-virtual {p0, v0}, Lcom/xiaomi/push/service/XMPushService;->a(Lcom/xiaomi/push/service/XMPushService$n;)V

    invoke-static {p0}, Lzi/p8;->j(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_3

    new-instance v0, Lcom/xiaomi/push/service/j0;

    invoke-direct {v0}, Lcom/xiaomi/push/service/j0;-><init>()V

    invoke-virtual {p0, v0}, Lcom/xiaomi/push/service/XMPushService;->a(Lcom/xiaomi/push/service/XMPushService$n;)V

    invoke-static {}, Lzi/o7;->j()Z

    move-result v0

    if-eqz v0, :cond_3

    new-instance v0, Lcom/xiaomi/push/service/z1;

    invoke-direct {v0, p0}, Lcom/xiaomi/push/service/z1;-><init>(Lcom/xiaomi/push/service/XMPushService;)V

    invoke-virtual {p0, v0}, Lcom/xiaomi/push/service/XMPushService;->a(Lcom/xiaomi/push/service/XMPushService$n;)V

    :cond_3
    new-instance v0, Lcom/xiaomi/push/service/XMPushService$h;

    invoke-direct {v0, p0}, Lcom/xiaomi/push/service/XMPushService$h;-><init>(Lcom/xiaomi/push/service/XMPushService;)V

    invoke-virtual {p0, v0}, Lcom/xiaomi/push/service/XMPushService;->a(Lcom/xiaomi/push/service/XMPushService$j;)V

    iget-object v0, p0, Lcom/xiaomi/push/service/XMPushService;->a:Ljava/util/Collection;

    invoke-static {p0}, Lcom/xiaomi/push/service/c1;->c(Landroid/content/Context;)Lcom/xiaomi/push/service/c1;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    invoke-direct {p0}, Lcom/xiaomi/push/service/XMPushService;->h()Z

    move-result v0

    if-eqz v0, :cond_4

    new-instance v0, Lcom/xiaomi/push/service/XMPushService$f;

    invoke-direct {v0, p0}, Lcom/xiaomi/push/service/XMPushService$f;-><init>(Lcom/xiaomi/push/service/XMPushService;)V

    iput-object v0, p0, Lcom/xiaomi/push/service/XMPushService;->a:Lcom/xiaomi/push/service/XMPushService$f;

    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "android.net.conn.CONNECTIVITY_CHANGE"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/xiaomi/push/service/XMPushService;->a:Lcom/xiaomi/push/service/XMPushService$f;

    invoke-static {p0, v1, v0, v9, v9}, Lzi/aa;->c(Landroid/content/Context;Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    invoke-static {p0}, Lzi/h0;->d(Landroid/content/Context;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaomi/push/service/XMPushService;->a:Ljava/lang/Object;

    :cond_4
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lzi/p8;->j(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_5

    new-instance v0, Lcom/xiaomi/push/service/XMPushService$t;

    invoke-direct {v0, p0}, Lcom/xiaomi/push/service/XMPushService$t;-><init>(Lcom/xiaomi/push/service/XMPushService;)V

    iput-object v0, p0, Lcom/xiaomi/push/service/XMPushService;->a:Lcom/xiaomi/push/service/XMPushService$t;

    new-instance v3, Landroid/content/IntentFilter;

    const-string v0, "miui.net.wifi.DIGEST_INFORMATION_CHANGED"

    invoke-direct {v3, v0}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/xiaomi/push/service/XMPushService;->a:Lcom/xiaomi/push/service/XMPushService$t;

    const/4 v5, 0x0

    const/4 v6, 0x2

    const-string v4, "miui.net.wifi.permission.ACCESS_WIFI_DIGEST_INFO"

    move-object v1, p0

    invoke-static/range {v1 .. v6}, Lzi/aa;->d(Landroid/content/Context;Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;I)Landroid/content/Intent;

    new-instance v2, Lcom/xiaomi/push/service/XMPushService$k;

    invoke-direct {v2, p0}, Lcom/xiaomi/push/service/XMPushService$k;-><init>(Lcom/xiaomi/push/service/XMPushService;)V

    iput-object v2, p0, Lcom/xiaomi/push/service/XMPushService;->a:Lcom/xiaomi/push/service/XMPushService$k;

    new-instance v3, Landroid/content/IntentFilter;

    const-string v0, "com.xiaomi.xmsf.USE_INTELLIGENT_HB"

    invoke-direct {v3, v0}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    const-string v4, "com.xiaomi.xmsf.permission.INTELLIGENT_HB"

    invoke-static/range {v1 .. v6}, Lzi/aa;->d(Landroid/content/Context;Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;I)Landroid/content/Intent;

    :cond_5
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "com.xiaomi.xmsf"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_7

    const-string v0, "power_supersave_mode_open"

    invoke-static {v0}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    if-eqz v0, :cond_6

    new-instance v2, Lcom/xiaomi/push/service/a2;

    new-instance v3, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v4

    invoke-direct {v3, v4}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    invoke-direct {v2, p0, v3}, Lcom/xiaomi/push/service/a2;-><init>(Lcom/xiaomi/push/service/XMPushService;Landroid/os/Handler;)V

    iput-object v2, p0, Lcom/xiaomi/push/service/XMPushService;->a:Landroid/database/ContentObserver;

    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    iget-object v3, p0, Lcom/xiaomi/push/service/XMPushService;->a:Landroid/database/ContentObserver;

    invoke-virtual {v2, v0, v1, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "register super-power-mode observer err:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lpi/c;->D(Ljava/lang/String;)V

    :cond_6
    :goto_0
    invoke-direct {p0}, Lcom/xiaomi/push/service/XMPushService;->a()[I

    move-result-object v0

    if-eqz v0, :cond_7

    new-instance v2, Lcom/xiaomi/push/service/XMPushService$r;

    invoke-direct {v2, p0}, Lcom/xiaomi/push/service/XMPushService$r;-><init>(Lcom/xiaomi/push/service/XMPushService;)V

    iput-object v2, p0, Lcom/xiaomi/push/service/XMPushService;->a:Lcom/xiaomi/push/service/XMPushService$r;

    new-instance v2, Landroid/content/IntentFilter;

    invoke-direct {v2}, Landroid/content/IntentFilter;-><init>()V

    const-string v3, "android.intent.action.SCREEN_ON"

    invoke-virtual {v2, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v3, "android.intent.action.SCREEN_OFF"

    invoke-virtual {v2, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/xiaomi/push/service/XMPushService;->a:Lcom/xiaomi/push/service/XMPushService$r;

    invoke-static {p0, v3, v2, v9, v9}, Lzi/aa;->c(Landroid/content/Context;Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    aget v2, v0, v1

    iput v2, p0, Lcom/xiaomi/push/service/XMPushService;->a:I

    aget v0, v0, v8

    iput v0, p0, Lcom/xiaomi/push/service/XMPushService;->b:I

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "falldown initialized: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/xiaomi/push/service/XMPushService;->a:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ","

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/xiaomi/push/service/XMPushService;->b:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lpi/c;->n(Ljava/lang/String;)V

    :cond_7
    iget-object v0, p0, Lcom/xiaomi/push/service/XMPushService;->a:Lzi/y5;

    invoke-static {p0, v0}, Lzi/n2;->f(Landroid/content/Context;Lzi/c6;)V

    iget-object v0, p0, Lcom/xiaomi/push/service/XMPushService;->a:Lzi/y5;

    invoke-static {p0, v0}, Lzi/w2;->b(Landroid/content/Context;Lzi/c6;)V

    const-string v0, ""

    if-eqz v7, :cond_8

    :try_start_1
    iget-object v2, v7, Lcom/xiaomi/push/service/v2;->a:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_8

    iget-object v2, v7, Lcom/xiaomi/push/service/v2;->a:Ljava/lang/String;

    const-string v3, "@"

    invoke-virtual {v2, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_8

    array-length v3, v2

    if-lez v3, :cond_8

    aget-object v0, v2, v1
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    :catch_0
    :cond_8
    invoke-static {p0}, Lzi/f3;->a(Landroid/content/Context;)V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "XMPushService created. pid="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", uid="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", vc="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lzi/m5;->b(Landroid/content/Context;Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", uuid="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lpi/c;->E(Ljava/lang/String;)V

    return-void
.end method

.method public onDestroy()V
    .locals 3

    iget-object v0, p0, Lcom/xiaomi/push/service/XMPushService;->a:Lcom/xiaomi/push/service/XMPushService$f;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-direct {p0, v0}, Lcom/xiaomi/push/service/XMPushService;->a(Landroid/content/BroadcastReceiver;)V

    iput-object v1, p0, Lcom/xiaomi/push/service/XMPushService;->a:Lcom/xiaomi/push/service/XMPushService$f;

    :cond_0
    iget-object v0, p0, Lcom/xiaomi/push/service/XMPushService;->a:Ljava/lang/Object;

    if-eqz v0, :cond_1

    invoke-static {p0, v0}, Lzi/h0;->s(Landroid/content/Context;Ljava/lang/Object;)V

    iput-object v1, p0, Lcom/xiaomi/push/service/XMPushService;->a:Ljava/lang/Object;

    :cond_1
    iget-object v0, p0, Lcom/xiaomi/push/service/XMPushService;->a:Lcom/xiaomi/push/service/XMPushService$t;

    if-eqz v0, :cond_2

    invoke-direct {p0, v0}, Lcom/xiaomi/push/service/XMPushService;->a(Landroid/content/BroadcastReceiver;)V

    iput-object v1, p0, Lcom/xiaomi/push/service/XMPushService;->a:Lcom/xiaomi/push/service/XMPushService$t;

    :cond_2
    iget-object v0, p0, Lcom/xiaomi/push/service/XMPushService;->a:Lcom/xiaomi/push/service/XMPushService$k;

    if-eqz v0, :cond_3

    invoke-direct {p0, v0}, Lcom/xiaomi/push/service/XMPushService;->a(Landroid/content/BroadcastReceiver;)V

    iput-object v1, p0, Lcom/xiaomi/push/service/XMPushService;->a:Lcom/xiaomi/push/service/XMPushService$k;

    :cond_3
    iget-object v0, p0, Lcom/xiaomi/push/service/XMPushService;->a:Lcom/xiaomi/push/service/XMPushService$r;

    if-eqz v0, :cond_4

    invoke-direct {p0, v0}, Lcom/xiaomi/push/service/XMPushService;->a(Landroid/content/BroadcastReceiver;)V

    iput-object v1, p0, Lcom/xiaomi/push/service/XMPushService;->a:Lcom/xiaomi/push/service/XMPushService$r;

    :cond_4
    iget-object v0, p0, Lcom/xiaomi/push/service/XMPushService;->a:Lcom/xiaomi/push/service/XMPushService$a;

    if-eqz v0, :cond_5

    invoke-direct {p0, v0}, Lcom/xiaomi/push/service/XMPushService;->a(Landroid/content/BroadcastReceiver;)V

    iput-object v1, p0, Lcom/xiaomi/push/service/XMPushService;->a:Lcom/xiaomi/push/service/XMPushService$a;

    :cond_5
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "com.xiaomi.xmsf"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/xiaomi/push/service/XMPushService;->a:Landroid/database/ContentObserver;

    if-eqz v0, :cond_6

    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/xiaomi/push/service/XMPushService;->a:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "unregister super-power-mode err:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lpi/c;->D(Ljava/lang/String;)V

    :cond_6
    :goto_0
    iget-object v0, p0, Lcom/xiaomi/push/service/XMPushService;->a:Ljava/util/Collection;

    invoke-interface {v0}, Ljava/util/Collection;->clear()V

    iget-object v0, p0, Lcom/xiaomi/push/service/XMPushService;->a:Lcom/xiaomi/push/service/r2;

    invoke-virtual {v0}, Lcom/xiaomi/push/service/r2;->i()V

    new-instance v0, Lcom/xiaomi/push/service/s1;

    const/4 v1, 0x2

    invoke-direct {v0, p0, v1}, Lcom/xiaomi/push/service/s1;-><init>(Lcom/xiaomi/push/service/XMPushService;I)V

    invoke-virtual {p0, v0}, Lcom/xiaomi/push/service/XMPushService;->a(Lcom/xiaomi/push/service/XMPushService$j;)V

    new-instance v0, Lcom/xiaomi/push/service/XMPushService$l;

    invoke-direct {v0, p0}, Lcom/xiaomi/push/service/XMPushService$l;-><init>(Lcom/xiaomi/push/service/XMPushService;)V

    invoke-virtual {p0, v0}, Lcom/xiaomi/push/service/XMPushService;->a(Lcom/xiaomi/push/service/XMPushService$j;)V

    invoke-static {}, Lcom/xiaomi/push/service/k0;->c()Lcom/xiaomi/push/service/k0;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xiaomi/push/service/k0;->o()V

    invoke-static {}, Lcom/xiaomi/push/service/k0;->c()Lcom/xiaomi/push/service/k0;

    move-result-object v0

    const/16 v1, 0xf

    invoke-virtual {v0, p0, v1}, Lcom/xiaomi/push/service/k0;->j(Landroid/content/Context;I)V

    invoke-static {}, Lcom/xiaomi/push/service/k0;->c()Lcom/xiaomi/push/service/k0;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xiaomi/push/service/k0;->h()V

    iget-object v0, p0, Lcom/xiaomi/push/service/XMPushService;->a:Lzi/y5;

    invoke-virtual {v0, p0}, Lzi/c6;->x(Lzi/f6;)V

    invoke-static {}, Lcom/xiaomi/push/service/a1;->b()Lcom/xiaomi/push/service/a1;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xiaomi/push/service/a1;->i()V

    invoke-static {}, Lzi/v4;->a()V

    invoke-direct {p0}, Lcom/xiaomi/push/service/XMPushService;->i()V

    iget-object v0, p0, Lcom/xiaomi/push/service/XMPushService;->a:Lzi/y5;

    invoke-static {p0, v0}, Lzi/n2;->i(Landroid/content/Context;Lzi/c6;)V

    iget-object v0, p0, Lcom/xiaomi/push/service/XMPushService;->a:Lzi/y5;

    invoke-static {p0, v0}, Lzi/w2;->f(Landroid/content/Context;Lzi/c6;)V

    invoke-super {p0}, Landroid/app/Service;->onDestroy()V

    const-string v0, "Service destroyed"

    invoke-static {v0}, Lpi/c;->n(Ljava/lang/String;)V

    return-void
.end method

.method public onStart(Landroid/content/Intent;I)V
    .locals 13

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    if-nez p1, :cond_0

    const-string p2, "onStart() with intent NULL"

    invoke-static {p2}, Lpi/c;->D(Ljava/lang/String;)V

    goto :goto_2

    :cond_0
    :try_start_0
    sget-object p2, Lcom/xiaomi/push/service/o0;->s:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    sget-object v2, Lcom/xiaomi/push/service/o0;->B:Ljava/lang/String;

    invoke-virtual {p1, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "mipush_app_package"

    invoke-virtual {p1, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "android.net.conn.CONNECTIVITY_CHANGE"

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v5, 0x3

    const/4 v6, 0x4

    const/4 v7, 0x2

    const/4 v8, 0x1

    const/4 v9, 0x0

    const-string v10, "XMPushService"

    if-nez v4, :cond_2

    :try_start_1
    const-string v4, "miui.net.wifi.DIGEST_INFORMATION_CHANGED"

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v4, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    goto :goto_1

    :cond_1
    const-string v4, "onStart() with intent.Action = %s, chid = %s, pkg = %s|%s"

    new-array v6, v6, [Ljava/lang/Object;

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v11

    aput-object v11, v6, v9

    aput-object p2, v6, v8

    aput-object v2, v6, v7

    aput-object v3, v6, v5

    invoke-static {v4, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    :goto_0
    invoke-static {v10, p2}, Lpi/c;->o(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    :cond_2
    :goto_1
    const-string v4, "onStart() with intent.Action = %s, chid = %s, pkg = %s|%s, intent = %s"

    const/4 v11, 0x5

    new-array v11, v11, [Ljava/lang/Object;

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v12

    aput-object v12, v11, v9

    aput-object p2, v11, v8

    aput-object v2, v11, v7

    aput-object v3, v11, v5

    invoke-static {p1}, Lzi/p8;->d(Landroid/content/Intent;)Ljava/lang/String;

    move-result-object p2

    aput-object p2, v11, v6

    invoke-static {v4, v11}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :goto_2
    if-eqz p1, :cond_7

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p2

    if-eqz p2, :cond_7

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p2

    const-string v2, "com.xiaomi.push.timer"

    invoke-virtual {v2, p2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p2

    if-nez p2, :cond_5

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p2

    const-string v2, "com.xiaomi.push.check_alive"

    invoke-virtual {v2, p2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p2

    if-eqz p2, :cond_3

    goto :goto_3

    :cond_3
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p2

    const-string v2, "com.xiaomi.push.network_status_changed"

    invoke-virtual {v2, p2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p2

    if-eqz p2, :cond_4

    goto :goto_5

    :cond_4
    new-instance p2, Lcom/xiaomi/push/service/XMPushService$i;

    invoke-direct {p2, p0, p1}, Lcom/xiaomi/push/service/XMPushService$i;-><init>(Lcom/xiaomi/push/service/XMPushService;Landroid/content/Intent;)V

    goto :goto_4

    :cond_5
    :goto_3
    iget-object p2, p0, Lcom/xiaomi/push/service/XMPushService;->a:Lcom/xiaomi/push/service/r2;

    invoke-virtual {p2}, Lcom/xiaomi/push/service/r2;->g()Z

    move-result p2

    if-eqz p2, :cond_6

    const-string p1, "ERROR, the job controller is blocked."

    invoke-static {p1}, Lpi/c;->D(Ljava/lang/String;)V

    invoke-static {}, Lcom/xiaomi/push/service/k0;->c()Lcom/xiaomi/push/service/k0;

    move-result-object p1

    const/16 p2, 0xe

    invoke-virtual {p1, p0, p2}, Lcom/xiaomi/push/service/k0;->j(Landroid/content/Context;I)V

    invoke-virtual {p0}, Landroid/app/Service;->stopSelf()V

    goto :goto_5

    :cond_6
    new-instance p2, Lcom/xiaomi/push/service/XMPushService$i;

    invoke-direct {p2, p0, p1}, Lcom/xiaomi/push/service/XMPushService$i;-><init>(Lcom/xiaomi/push/service/XMPushService;Landroid/content/Intent;)V

    :goto_4
    invoke-virtual {p0, p2}, Lcom/xiaomi/push/service/XMPushService;->a(Lcom/xiaomi/push/service/XMPushService$j;)V

    :cond_7
    :goto_5
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide p1

    sub-long/2addr p1, v0

    const-wide/16 v0, 0x32

    cmp-long v0, p1, v0

    if-lez v0, :cond_8

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[Prefs] spend "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string p1, " ms, too more times."

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lpi/c;->B(Ljava/lang/String;)V

    :cond_8
    return-void

    :catchall_0
    move-exception p1

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "onStart() cause error: "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lpi/c;->D(Ljava/lang/String;)V

    return-void
.end method

.method public onStartCommand(Landroid/content/Intent;II)I
    .locals 0

    invoke-virtual {p0, p1, p3}, Lcom/xiaomi/push/service/XMPushService;->onStart(Landroid/content/Intent;I)V

    const/4 p1, 0x1

    return p1
.end method
