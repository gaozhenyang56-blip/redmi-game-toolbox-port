.class public Lcom/miui/tvm/service/TvmManagerService;
.super Landroid/app/Service;
.source "SourceFile"


# instance fields
.field private a:Lcom/miui/tvm/aidl/ITvmManagerImpl;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    return-void
.end method


# virtual methods
.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 0
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    iget-object p1, p0, Lcom/miui/tvm/service/TvmManagerService;->a:Lcom/miui/tvm/aidl/ITvmManagerImpl;

    invoke-virtual {p1}, Lcom/miui/tvm/aidl/ITvmManager$Stub;->asBinder()Landroid/os/IBinder;

    move-result-object p1

    return-object p1
.end method

.method public onCreate()V
    .locals 2
    .annotation build Landroidx/annotation/RequiresApi;
        api = 0x1a
    .end annotation

    invoke-super {p0}, Landroid/app/Service;->onCreate()V

    const-string v0, "Tvm.TvmManagerService"

    const-string v1, "onCreate"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Lcom/miui/tvm/aidl/ITvmManagerImpl;

    invoke-direct {v0, p0}, Lcom/miui/tvm/aidl/ITvmManagerImpl;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/miui/tvm/service/TvmManagerService;->a:Lcom/miui/tvm/aidl/ITvmManagerImpl;

    invoke-static {}, Lcom/miui/tvm/TvmManager;->f()Lcom/miui/tvm/TvmManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/tvm/TvmManager;->p()V

    return-void
.end method

.method public onDestroy()V
    .locals 2

    invoke-super {p0}, Landroid/app/Service;->onDestroy()V

    const-string v0, "Tvm.TvmManagerService"

    const-string v1, "onDestroy"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lcom/miui/tvm/TvmManager;->f()Lcom/miui/tvm/TvmManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/tvm/TvmManager;->w()V

    return-void
.end method
