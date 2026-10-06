.class public final Lcom/miui/simlock/b;
.super Landroid/content/BroadcastReceiver;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/simlock/b$a;,
        Lcom/miui/simlock/b$b;
    }
.end annotation


# static fields
.field public static final b:Lcom/miui/simlock/b$a;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# instance fields
.field private final a:Lcom/miui/simlock/b$c;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/miui/simlock/b$a;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/miui/simlock/b$a;-><init>(Lbk/g;)V

    sput-object v0, Lcom/miui/simlock/b;->b:Lcom/miui/simlock/b$a;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    invoke-static {}, Lxc/q;->c()Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v0

    new-instance v1, Lcom/miui/simlock/b$c;

    invoke-direct {v1, v0}, Lcom/miui/simlock/b$c;-><init>(Landroid/os/Looper;)V

    iput-object v1, p0, Lcom/miui/simlock/b;->a:Lcom/miui/simlock/b$c;

    return-void
.end method

.method public static synthetic a(I)V
    .locals 0

    invoke-static {p0}, Lcom/miui/simlock/b;->c(I)V

    return-void
.end method

.method public static synthetic b(I)V
    .locals 0

    invoke-static {p0}, Lcom/miui/simlock/b;->d(I)V

    return-void
.end method

.method private static final c(I)V
    .locals 2

    invoke-static {}, Lcom/miui/securitycenter/Application;->A()Lcom/miui/securitycenter/Application;

    move-result-object v0

    invoke-static {v0}, Lcom/miui/simlock/SimLockManager;->p8(Landroid/content/Context;)Lcom/miui/simlock/SimLockManager;

    move-result-object v0

    sget-object v1, Lcom/miui/simlock/b$b;->a:Lcom/miui/simlock/b$b;

    invoke-virtual {v0, p0, v1}, Lcom/miui/simlock/SimLockManager;->t8(ILcom/miui/simlock/b$b;)V

    return-void
.end method

.method private static final d(I)V
    .locals 2

    invoke-static {}, Lcom/miui/securitycenter/Application;->A()Lcom/miui/securitycenter/Application;

    move-result-object v0

    invoke-static {v0}, Lcom/miui/simlock/SimLockManager;->p8(Landroid/content/Context;)Lcom/miui/simlock/SimLockManager;

    move-result-object v0

    sget-object v1, Lcom/miui/simlock/b$b;->c:Lcom/miui/simlock/b$b;

    invoke-virtual {v0, p0, v1}, Lcom/miui/simlock/SimLockManager;->t8(ILcom/miui/simlock/b$b;)V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 3
    .param p1    # Landroid/content/Context;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Landroid/content/Intent;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "context"

    invoke-static {p1, v0}, Lbk/m;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "intent"

    invoke-static {p2, p1}, Lbk/m;->e(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "onReceive: "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "SatelliteStateReceiver"

    invoke-static {v0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string p1, "phone_id"

    const/4 v0, -0x1

    invoke-virtual {p2, p1, v0}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p1

    const-string v0, "is_enable"

    const/4 v1, 0x0

    invoke-virtual {p2, v0, v1}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result p2

    const/4 v0, 0x1

    if-eqz p2, :cond_0

    iget-object p2, p0, Lcom/miui/simlock/b;->a:Lcom/miui/simlock/b$c;

    invoke-virtual {p2, v0}, Landroid/os/Handler;->removeMessages(I)V

    iget-object p2, p0, Lcom/miui/simlock/b;->a:Lcom/miui/simlock/b$c;

    new-instance v0, Lfg/c;

    invoke-direct {v0, p1}, Lfg/c;-><init>(I)V

    invoke-virtual {p2, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0

    :cond_0
    iget-object p2, p0, Lcom/miui/simlock/b;->a:Lcom/miui/simlock/b$c;

    new-instance v2, Lfg/d;

    invoke-direct {v2, p1}, Lfg/d;-><init>(I)V

    invoke-virtual {p2, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    iget-object p2, p0, Lcom/miui/simlock/b;->a:Lcom/miui/simlock/b$c;

    invoke-virtual {p2, v0, p1, v1}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object p1

    const-string p2, "mHandler.obtainMessage(M\u2026STATE_CLOSING, slotId, 0)"

    invoke-static {p1, p2}, Lbk/m;->d(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p2, p0, Lcom/miui/simlock/b;->a:Lcom/miui/simlock/b$c;

    const-wide/32 v0, 0xea60

    invoke-virtual {p2, p1, v0, v1}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    :goto_0
    return-void
.end method
