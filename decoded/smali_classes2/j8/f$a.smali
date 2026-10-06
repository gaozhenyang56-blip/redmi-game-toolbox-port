.class Lj8/f$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lj8/f;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lj8/f;


# direct methods
.method constructor <init>(Lj8/f;)V
    .locals 0

    iput-object p1, p0, Lj8/f$a;->a:Lj8/f;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static synthetic a(Lj8/f$a;)V
    .locals 0

    invoke-direct {p0}, Lj8/f$a;->b()V

    return-void
.end method

.method private synthetic b()V
    .locals 1

    iget-object v0, p0, Lj8/f$a;->a:Lj8/f;

    invoke-static {v0}, Lj8/f;->e(Lj8/f;)V

    return-void
.end method


# virtual methods
.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 0

    iget-object p1, p0, Lj8/f$a;->a:Lj8/f;

    invoke-static {p2}, Lcom/android/bluetooth/ble/app/IMiuiHeadsetService$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/bluetooth/ble/app/IMiuiHeadsetService;

    move-result-object p2

    invoke-static {p1, p2}, Lj8/f;->a(Lj8/f;Lcom/android/bluetooth/ble/app/IMiuiHeadsetService;)Lcom/android/bluetooth/ble/app/IMiuiHeadsetService;

    iget-object p1, p0, Lj8/f$a;->a:Lj8/f;

    invoke-static {p1}, Lj8/f;->b(Lj8/f;)I

    move-result p1

    const/4 p2, 0x1

    if-eq p1, p2, :cond_1

    const/4 p2, 0x2

    if-eq p1, p2, :cond_0

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lj8/f$a;->a:Lj8/f;

    invoke-static {p1}, Lj8/f;->d(Lj8/f;)Z

    move-result p2

    invoke-virtual {p1, p2}, Lj8/f;->v(Z)V

    goto :goto_0

    :cond_1
    iget-object p1, p0, Lj8/f$a;->a:Lj8/f;

    invoke-static {p1}, Lj8/f;->c(Lj8/f;)Landroid/os/Handler;

    move-result-object p1

    if-eqz p1, :cond_2

    iget-object p1, p0, Lj8/f$a;->a:Lj8/f;

    invoke-static {p1}, Lj8/f;->c(Lj8/f;)Landroid/os/Handler;

    move-result-object p1

    new-instance p2, Lj8/e;

    invoke-direct {p2, p0}, Lj8/e;-><init>(Lj8/f$a;)V

    invoke-virtual {p1, p2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_2
    :goto_0
    return-void
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onServiceDisconnected: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "BluetoothManagerVTB"

    invoke-static {v0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p1, p0, Lj8/f$a;->a:Lj8/f;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lj8/f;->a(Lj8/f;Lcom/android/bluetooth/ble/app/IMiuiHeadsetService;)Lcom/android/bluetooth/ble/app/IMiuiHeadsetService;

    return-void
.end method
