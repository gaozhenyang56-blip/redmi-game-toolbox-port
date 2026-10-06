.class Lcom/miui/superpower/statusbar/Clock$b;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/superpower/statusbar/Clock;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "b"
.end annotation


# instance fields
.field private a:Lcom/miui/superpower/statusbar/Clock;

.field private b:Z

.field private final c:Landroid/content/BroadcastReceiver;


# direct methods
.method private constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/miui/superpower/statusbar/Clock$b$a;

    invoke-direct {v0, p0}, Lcom/miui/superpower/statusbar/Clock$b$a;-><init>(Lcom/miui/superpower/statusbar/Clock$b;)V

    iput-object v0, p0, Lcom/miui/superpower/statusbar/Clock$b;->c:Landroid/content/BroadcastReceiver;

    return-void
.end method

.method synthetic constructor <init>(Lcom/miui/superpower/statusbar/Clock$a;)V
    .locals 0

    invoke-direct {p0}, Lcom/miui/superpower/statusbar/Clock$b;-><init>()V

    return-void
.end method

.method static synthetic a(Lcom/miui/superpower/statusbar/Clock$b;Z)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/miui/superpower/statusbar/Clock$b;->k(Z)V

    return-void
.end method

.method static synthetic b(Lcom/miui/superpower/statusbar/Clock$b;Lcom/miui/superpower/statusbar/Clock;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/miui/superpower/statusbar/Clock$b;->g(Lcom/miui/superpower/statusbar/Clock;)V

    return-void
.end method

.method static synthetic c(Lcom/miui/superpower/statusbar/Clock$b;Lcom/miui/superpower/statusbar/Clock;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/miui/superpower/statusbar/Clock$b;->j(Lcom/miui/superpower/statusbar/Clock;)V

    return-void
.end method

.method static synthetic d(Lcom/miui/superpower/statusbar/Clock$b;)Z
    .locals 0

    invoke-direct {p0}, Lcom/miui/superpower/statusbar/Clock$b;->h()Z

    move-result p0

    return p0
.end method

.method static synthetic e(Lcom/miui/superpower/statusbar/Clock$b;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/miui/superpower/statusbar/Clock$b;->b:Z

    return p1
.end method

.method static synthetic f(Lcom/miui/superpower/statusbar/Clock$b;)Lcom/miui/superpower/statusbar/Clock;
    .locals 0

    iget-object p0, p0, Lcom/miui/superpower/statusbar/Clock$b;->a:Lcom/miui/superpower/statusbar/Clock;

    return-object p0
.end method

.method private g(Lcom/miui/superpower/statusbar/Clock;)V
    .locals 1

    iget-object v0, p0, Lcom/miui/superpower/statusbar/Clock$b;->a:Lcom/miui/superpower/statusbar/Clock;

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iput-object p1, p0, Lcom/miui/superpower/statusbar/Clock$b;->a:Lcom/miui/superpower/statusbar/Clock;

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/miui/superpower/statusbar/Clock$b;->i(Landroid/content/Context;)V

    :cond_1
    invoke-virtual {p1}, Lcom/miui/superpower/statusbar/Clock;->a()V

    return-void
.end method

.method private h()Z
    .locals 1

    iget-boolean v0, p0, Lcom/miui/superpower/statusbar/Clock$b;->b:Z

    return v0
.end method

.method private i(Landroid/content/Context;)V
    .locals 6

    new-instance v2, Landroid/content/IntentFilter;

    invoke-direct {v2}, Landroid/content/IntentFilter;-><init>()V

    const-string v0, "android.intent.action.TIME_TICK"

    invoke-virtual {v2, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v0, "android.intent.action.TIME_SET"

    invoke-virtual {v2, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v0, "android.intent.action.TIMEZONE_CHANGED"

    invoke-virtual {v2, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v0, "android.intent.action.CONFIGURATION_CHANGED"

    invoke-virtual {v2, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/miui/superpower/statusbar/Clock$b;->c:Landroid/content/BroadcastReceiver;

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x2

    move-object v0, p1

    invoke-static/range {v0 .. v5}, Lx4/v;->n(Landroid/content/Context;Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;I)Landroid/content/Intent;

    return-void
.end method

.method private j(Lcom/miui/superpower/statusbar/Clock;)V
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/miui/superpower/statusbar/Clock$b;->a:Lcom/miui/superpower/statusbar/Clock;

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/miui/superpower/statusbar/Clock$b;->l(Landroid/content/Context;)V

    return-void
.end method

.method private k(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/miui/superpower/statusbar/Clock$b;->b:Z

    return-void
.end method

.method private l(Landroid/content/Context;)V
    .locals 1

    iget-object v0, p0, Lcom/miui/superpower/statusbar/Clock$b;->c:Landroid/content/BroadcastReceiver;

    invoke-virtual {p1, v0}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    return-void
.end method
