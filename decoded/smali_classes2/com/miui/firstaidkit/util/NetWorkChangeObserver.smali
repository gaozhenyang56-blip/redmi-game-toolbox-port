.class public Lcom/miui/firstaidkit/util/NetWorkChangeObserver;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/firstaidkit/util/NetWorkChangeObserver$a;,
        Lcom/miui/firstaidkit/util/NetWorkChangeObserver$b;
    }
.end annotation


# static fields
.field private static final a:Lcom/miui/firstaidkit/util/NetWorkChangeObserver$b;

.field private static b:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/miui/firstaidkit/util/NetWorkChangeObserver$b;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/miui/firstaidkit/util/NetWorkChangeObserver$b;-><init>(Lcom/miui/firstaidkit/util/NetWorkChangeObserver$1;)V

    sput-object v0, Lcom/miui/firstaidkit/util/NetWorkChangeObserver;->a:Lcom/miui/firstaidkit/util/NetWorkChangeObserver$b;

    const/4 v0, 0x0

    sput-boolean v0, Lcom/miui/firstaidkit/util/NetWorkChangeObserver;->b:Z

    return-void
.end method

.method static synthetic a(Lcom/miui/firstaidkit/util/NetWorkChangeObserver$a;)V
    .locals 0

    invoke-static {p0}, Lcom/miui/firstaidkit/util/NetWorkChangeObserver;->f(Lcom/miui/firstaidkit/util/NetWorkChangeObserver$a;)V

    return-void
.end method

.method static synthetic b(Z)Z
    .locals 0

    sput-boolean p0, Lcom/miui/firstaidkit/util/NetWorkChangeObserver;->b:Z

    return p0
.end method

.method static synthetic c()V
    .locals 0

    invoke-static {}, Lcom/miui/firstaidkit/util/NetWorkChangeObserver;->g()V

    return-void
.end method

.method public static d()Z
    .locals 1

    sget-boolean v0, Lcom/miui/firstaidkit/util/NetWorkChangeObserver;->b:Z

    return v0
.end method

.method public static e(Landroidx/lifecycle/v;Lcom/miui/firstaidkit/util/NetWorkChangeObserver$a;)V
    .locals 1

    invoke-interface {p0}, Landroidx/lifecycle/v;->getLifecycle()Landroidx/lifecycle/l;

    move-result-object p0

    new-instance v0, Lcom/miui/firstaidkit/util/NetWorkChangeObserver$1;

    invoke-direct {v0, p1}, Lcom/miui/firstaidkit/util/NetWorkChangeObserver$1;-><init>(Lcom/miui/firstaidkit/util/NetWorkChangeObserver$a;)V

    invoke-virtual {p0, v0}, Landroidx/lifecycle/l;->a(Landroidx/lifecycle/u;)V

    return-void
.end method

.method private static f(Lcom/miui/firstaidkit/util/NetWorkChangeObserver$a;)V
    .locals 3

    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "android.net.conn.CONNECTIVITY_CHANGE"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    sget-object v1, Lcom/miui/firstaidkit/util/NetWorkChangeObserver;->a:Lcom/miui/firstaidkit/util/NetWorkChangeObserver$b;

    invoke-virtual {v1, p0}, Lcom/miui/firstaidkit/util/NetWorkChangeObserver$b;->a(Lcom/miui/firstaidkit/util/NetWorkChangeObserver$a;)V

    invoke-static {}, Lcom/miui/securitycenter/Application;->A()Lcom/miui/securitycenter/Application;

    move-result-object p0

    const/4 v2, 0x4

    invoke-static {p0, v1, v0, v2}, Lx4/v;->m(Landroid/content/Context;Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;I)Landroid/content/Intent;

    return-void
.end method

.method private static g()V
    .locals 2

    sget-boolean v0, Lcom/miui/firstaidkit/util/NetWorkChangeObserver;->b:Z

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-static {}, Lcom/miui/securitycenter/Application;->A()Lcom/miui/securitycenter/Application;

    move-result-object v0

    sget-object v1, Lcom/miui/firstaidkit/util/NetWorkChangeObserver;->a:Lcom/miui/firstaidkit/util/NetWorkChangeObserver$b;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    const/4 v0, 0x0

    sput-boolean v0, Lcom/miui/firstaidkit/util/NetWorkChangeObserver;->b:Z

    return-void
.end method
