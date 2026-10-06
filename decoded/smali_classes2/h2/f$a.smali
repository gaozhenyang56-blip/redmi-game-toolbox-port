.class Lh2/f$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lh2/f;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lh2/f;


# direct methods
.method constructor <init>(Lh2/f;)V
    .locals 0

    iput-object p1, p0, Lh2/f$a;->a:Lh2/f;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 1

    sget-object p1, Lh2/f;->e:Ljava/lang/String;

    const-string v0, "on GPService Connected"

    invoke-static {p1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p1, p0, Lh2/f$a;->a:Lh2/f;

    invoke-static {p2}, Lcom/miui/guardprovider/aidl/IURLScanServer$Stub;->asInterface(Landroid/os/IBinder;)Lcom/miui/guardprovider/aidl/IURLScanServer;

    move-result-object p2

    invoke-static {p1, p2}, Lh2/f;->a(Lh2/f;Lcom/miui/guardprovider/aidl/IURLScanServer;)Lcom/miui/guardprovider/aidl/IURLScanServer;

    iget-object p1, p0, Lh2/f$a;->a:Lh2/f;

    invoke-static {p1}, Lh2/f;->b(Lh2/f;)Ljava/util/concurrent/CountDownLatch;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    return-void
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 1

    sget-object p1, Lh2/f;->e:Ljava/lang/String;

    const-string v0, "on GPService DisConnected"

    invoke-static {p1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p1, p0, Lh2/f$a;->a:Lh2/f;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lh2/f;->a(Lh2/f;Lcom/miui/guardprovider/aidl/IURLScanServer;)Lcom/miui/guardprovider/aidl/IURLScanServer;

    return-void
.end method
