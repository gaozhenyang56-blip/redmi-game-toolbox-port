.class Lcom/miui/securityscan/model/manualitem/FindDeviceModel$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/concurrent/Callable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/securityscan/model/manualitem/FindDeviceModel;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/concurrent/Callable<",
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation


# instance fields
.field a:Landroid/content/Context;

.field final synthetic b:Lcom/miui/securityscan/model/manualitem/FindDeviceModel;


# direct methods
.method public constructor <init>(Lcom/miui/securityscan/model/manualitem/FindDeviceModel;Landroid/content/Context;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/securityscan/model/manualitem/FindDeviceModel$a;->b:Lcom/miui/securityscan/model/manualitem/FindDeviceModel;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/miui/securityscan/model/manualitem/FindDeviceModel$a;->a:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public a()Ljava/lang/Boolean;
    .locals 5

    const-string v0, "FindDeviceModel"

    sget-boolean v1, Lmiui/os/Build;->IS_INTERNATIONAL_BUILD:Z

    const/4 v2, 0x1

    if-nez v1, :cond_2

    invoke-static {}, Lx4/z1;->v()Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_2

    :cond_0
    const/4 v1, 0x0

    :try_start_0
    iget-object v3, p0, Lcom/miui/securityscan/model/manualitem/FindDeviceModel$a;->a:Landroid/content/Context;

    invoke-static {v3}, Lmiui/cloud/finddevice/FindDeviceStatusManager;->obtain(Landroid/content/Context;)Lmiui/cloud/finddevice/FindDeviceStatusManager;

    move-result-object v1

    invoke-virtual {v1}, Lmiui/cloud/finddevice/FindDeviceStatusManager;->isOpen()Z

    move-result v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "LoadDataTask isOpen = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_0
    invoke-virtual {v1}, Lmiui/cloud/finddevice/FindDeviceStatusManager;->release()V

    goto :goto_3

    :catchall_0
    move-exception v0

    goto :goto_1

    :catch_0
    move-exception v3

    :try_start_1
    const-string v4, "LoadDataTask FindDeviceStatusManager "

    invoke-static {v0, v4, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v1, :cond_3

    goto :goto_0

    :goto_1
    if-eqz v1, :cond_1

    invoke-virtual {v1}, Lmiui/cloud/finddevice/FindDeviceStatusManager;->release()V

    :cond_1
    throw v0

    :cond_2
    :goto_2
    iget-object v0, p0, Lcom/miui/securityscan/model/manualitem/FindDeviceModel$a;->b:Lcom/miui/securityscan/model/manualitem/FindDeviceModel;

    sget-object v1, Lcom/miui/securityscan/model/AbsModel$State;->SAFE:Lcom/miui/securityscan/model/AbsModel$State;

    invoke-virtual {v0, v1}, Lcom/miui/securityscan/model/AbsModel;->setSafe(Lcom/miui/securityscan/model/AbsModel$State;)V

    :cond_3
    :goto_3
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic call()Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0}, Lcom/miui/securityscan/model/manualitem/FindDeviceModel$a;->a()Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method
