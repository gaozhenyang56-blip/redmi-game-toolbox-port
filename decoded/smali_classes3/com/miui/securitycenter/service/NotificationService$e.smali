.class Lcom/miui/securitycenter/service/NotificationService$e;
.super Landroid/os/Handler;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/securitycenter/service/NotificationService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "e"
.end annotation


# instance fields
.field private a:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Lcom/miui/securitycenter/service/NotificationService;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/miui/securitycenter/service/NotificationService;Landroid/os/Looper;)V
    .locals 0

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-instance p2, Ljava/lang/ref/WeakReference;

    invoke-direct {p2, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object p2, p0, Lcom/miui/securitycenter/service/NotificationService$e;->a:Ljava/lang/ref/WeakReference;

    return-void
.end method

.method static synthetic a(Lcom/miui/securitycenter/service/NotificationService$e;)V
    .locals 0

    invoke-direct {p0}, Lcom/miui/securitycenter/service/NotificationService$e;->c()V

    return-void
.end method

.method static synthetic b(Lcom/miui/securitycenter/service/NotificationService$e;)V
    .locals 0

    invoke-direct {p0}, Lcom/miui/securitycenter/service/NotificationService$e;->d()V

    return-void
.end method

.method private c()V
    .locals 2

    const-string v0, "startCycle"

    invoke-static {v0}, Lx4/q0;->a(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/miui/securitycenter/service/NotificationService$e;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/securitycenter/service/NotificationService;

    if-eqz v0, :cond_0

    new-instance v1, Lcom/miui/securitycenter/service/NotificationService$e$a;

    invoke-direct {v1, p0, v0}, Lcom/miui/securitycenter/service/NotificationService$e$a;-><init>(Lcom/miui/securitycenter/service/NotificationService$e;Lcom/miui/securitycenter/service/NotificationService;)V

    invoke-virtual {p0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_0
    return-void
.end method

.method private d()V
    .locals 1

    const-string v0, "stopCycle"

    invoke-static {v0}, Lx4/q0;->a(Ljava/lang/String;)V

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    invoke-virtual {p0}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Looper;->quit()V

    return-void
.end method
