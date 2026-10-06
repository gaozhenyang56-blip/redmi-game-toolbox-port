.class Lcom/miui/tvm/aidl/ITvmManagerImpl$a;
.super Lvendor/xiaomi/hardware/mitrustedui/IMiTrustedUICallback$Stub;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/tvm/aidl/ITvmManagerImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/miui/tvm/aidl/ITvmManagerImpl;


# direct methods
.method constructor <init>(Lcom/miui/tvm/aidl/ITvmManagerImpl;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/tvm/aidl/ITvmManagerImpl$a;->a:Lcom/miui/tvm/aidl/ITvmManagerImpl;

    invoke-direct {p0}, Lvendor/xiaomi/hardware/mitrustedui/IMiTrustedUICallback$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public e()Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public f()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public r(II)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onMiTrustedUINotify, i: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "--error: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Tvm.ITvmManagerImpl"

    invoke-static {v1, v0}, Lx4/q0;->g(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/miui/tvm/aidl/ITvmManagerImpl$a;->a:Lcom/miui/tvm/aidl/ITvmManagerImpl;

    invoke-static {v0}, Lcom/miui/tvm/aidl/ITvmManagerImpl;->v1(Lcom/miui/tvm/aidl/ITvmManagerImpl;)Landroid/os/RemoteCallbackList;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/RemoteCallbackList;->beginBroadcast()I

    :try_start_0
    iget-object v0, p0, Lcom/miui/tvm/aidl/ITvmManagerImpl$a;->a:Lcom/miui/tvm/aidl/ITvmManagerImpl;

    invoke-static {v0}, Lcom/miui/tvm/aidl/ITvmManagerImpl;->v1(Lcom/miui/tvm/aidl/ITvmManagerImpl;)Landroid/os/RemoteCallbackList;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/RemoteCallbackList;->getBroadcastItem(I)Landroid/os/IInterface;

    move-result-object v0

    check-cast v0, Lcom/miui/tvm/aidl/IMiTrustUICallback;

    invoke-interface {v0, p1, p2}, Lcom/miui/tvm/aidl/IMiTrustUICallback;->r(II)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    :goto_0
    iget-object p1, p0, Lcom/miui/tvm/aidl/ITvmManagerImpl$a;->a:Lcom/miui/tvm/aidl/ITvmManagerImpl;

    invoke-static {p1}, Lcom/miui/tvm/aidl/ITvmManagerImpl;->v1(Lcom/miui/tvm/aidl/ITvmManagerImpl;)Landroid/os/RemoteCallbackList;

    move-result-object p1

    invoke-virtual {p1}, Landroid/os/RemoteCallbackList;->finishBroadcast()V

    return-void
.end method
