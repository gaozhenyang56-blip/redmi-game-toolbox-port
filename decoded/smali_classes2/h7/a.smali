.class public abstract Lh7/a;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private volatile a:Z

.field private b:Landroid/content/Context;

.field private final c:Landroid/content/BroadcastReceiver;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lh7/a$a;

    invoke-direct {v0, p0}, Lh7/a$a;-><init>(Lh7/a;)V

    iput-object v0, p0, Lh7/a;->c:Landroid/content/BroadcastReceiver;

    return-void
.end method


# virtual methods
.method public varargs a(Landroid/content/Context;[Ljava/lang/String;)V
    .locals 3

    iget-boolean v0, p0, Lh7/a;->a:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    :try_start_0
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    iput-object p1, p0, Lh7/a;->b:Landroid/content/Context;

    new-instance p1, Landroid/content/IntentFilter;

    invoke-direct {p1}, Landroid/content/IntentFilter;-><init>()V

    array-length v0, p2

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    aget-object v2, p2, v1

    invoke-virtual {p1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    iget-object p2, p0, Lh7/a;->b:Landroid/content/Context;

    iget-object v0, p0, Lh7/a;->c:Landroid/content/BroadcastReceiver;

    const/4 v1, 0x2

    invoke-static {p2, v0, p1, v1}, Lx4/v;->m(Landroid/content/Context;Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;I)Landroid/content/Intent;

    const-string p1, "BMonitor"

    const-string p2, "initialize: success"

    invoke-static {p1, p2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    const/4 p1, 0x1

    iput-boolean p1, p0, Lh7/a;->a:Z

    return-void
.end method

.method public abstract b(Landroid/content/Context;Landroid/content/Intent;)V
.end method

.method public c()V
    .locals 2

    iget-boolean v0, p0, Lh7/a;->a:Z

    if-nez v0, :cond_0

    return-void

    :cond_0
    :try_start_0
    iget-object v0, p0, Lh7/a;->b:Landroid/content/Context;

    iget-object v1, p0, Lh7/a;->c:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    const-string v0, "BMonitor"

    const-string v1, "release: success"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    iput-boolean v0, p0, Lh7/a;->a:Z

    return-void
.end method
