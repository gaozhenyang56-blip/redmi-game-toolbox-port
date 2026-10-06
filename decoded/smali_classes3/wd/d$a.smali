.class Lwd/d$a;
.super Landroid/database/ContentObserver;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lwd/d;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lwd/d;


# direct methods
.method constructor <init>(Lwd/d;Landroid/os/Handler;)V
    .locals 0

    iput-object p1, p0, Lwd/d$a;->a:Lwd/d;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method

.method public static synthetic a()V
    .locals 0

    invoke-static {}, Lwd/d$a;->b()V

    return-void
.end method

.method private static synthetic b()V
    .locals 0

    invoke-static {}, Lme/w;->E()V

    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 3

    const-string p1, "PowerInit"

    const-string v0, "device_provisioned value is changed"

    invoke-static {p1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    new-instance p1, Landroid/os/Handler;

    invoke-direct {p1}, Landroid/os/Handler;-><init>()V

    new-instance v0, Lwd/c;

    invoke-direct {v0}, Lwd/c;-><init>()V

    const-wide/16 v1, 0x1388

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    iget-object p1, p0, Lwd/d$a;->a:Lwd/d;

    invoke-static {p1}, Lwd/d;->a(Lwd/d;)Landroid/content/ContentResolver;

    move-result-object p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lwd/d$a;->a:Lwd/d;

    invoke-static {p1}, Lwd/d;->b(Lwd/d;)Ljava/lang/ref/WeakReference;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lwd/d$a;->a:Lwd/d;

    invoke-static {p1}, Lwd/d;->b(Lwd/d;)Ljava/lang/ref/WeakReference;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    iget-object v0, p0, Lwd/d$a;->a:Lwd/d;

    invoke-static {v0}, Lwd/d;->c(Lwd/d;)Landroid/database/ContentObserver;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    iget-object p1, p0, Lwd/d$a;->a:Lwd/d;

    const/4 v0, 0x1

    invoke-static {p1, v0}, Lwd/d;->d(Lwd/d;Z)Z

    :cond_0
    return-void
.end method
