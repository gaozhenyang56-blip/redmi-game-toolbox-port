.class Lkg/a$d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lkg/a;->t()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lkg/a;


# direct methods
.method constructor <init>(Lkg/a;)V
    .locals 0

    iput-object p1, p0, Lkg/a$d;->a:Lkg/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 0

    iget-object p1, p0, Lkg/a$d;->a:Lkg/a;

    invoke-static {p1}, Lkg/a;->f(Lkg/a;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result p1

    if-nez p1, :cond_0

    iget-object p1, p0, Lkg/a$d;->a:Lkg/a;

    invoke-static {p1}, Lkg/a;->b(Lkg/a;)Landroid/os/Handler;

    move-result-object p1

    invoke-virtual {p1}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object p1

    invoke-static {p2}, Lcom/miui/gamebooster/service/ISecurityCenterNotificationListener$Stub;->asInterface(Landroid/os/IBinder;)Lcom/miui/gamebooster/service/ISecurityCenterNotificationListener;

    move-result-object p2

    iput-object p2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    const/4 p2, 0x6

    iput p2, p1, Landroid/os/Message;->what:I

    iget-object p2, p0, Lkg/a$d;->a:Lkg/a;

    invoke-static {p2}, Lkg/a;->b(Lkg/a;)Landroid/os/Handler;

    move-result-object p2

    invoke-virtual {p2, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lkg/a$d;->a:Lkg/a;

    invoke-static {p1}, Lkg/a;->a(Lkg/a;)Landroid/content/Context;

    move-result-object p1

    iget-object p2, p0, Lkg/a$d;->a:Lkg/a;

    invoke-static {p2}, Lkg/a;->g(Lkg/a;)Landroid/content/ServiceConnection;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    :goto_0
    return-void
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 1

    iget-object p1, p0, Lkg/a$d;->a:Lkg/a;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lkg/a;->i(Lkg/a;Lcom/miui/gamebooster/service/ISecurityCenterNotificationListener;)Lcom/miui/gamebooster/service/ISecurityCenterNotificationListener;

    return-void
.end method
