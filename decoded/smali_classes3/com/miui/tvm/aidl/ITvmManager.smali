.class public interface abstract Lcom/miui/tvm/aidl/ITvmManager;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/tvm/aidl/ITvmManager$Stub;,
        Lcom/miui/tvm/aidl/ITvmManager$Default;
    }
.end annotation


# virtual methods
.method public abstract A3(Lcom/miui/tvm/aidl/ITvmManagerCallback;)V
.end method

.method public abstract E5(Lcom/miui/tvm/aidl/SessionModel;)I
.end method

.method public abstract P0(Lcom/miui/tvm/aidl/SessionModel;Landroid/os/SharedMemory;Lcom/miui/tvm/aidl/IMiTrustUICallback;)I
.end method

.method public abstract T2(Lcom/miui/tvm/aidl/SessionModel;)I
.end method

.method public abstract V2()I
.end method

.method public abstract h4(Lcom/miui/tvm/aidl/TvmStatusModel;)I
.end method

.method public abstract r6(Lcom/miui/tvm/aidl/RequestModel;Lcom/miui/tvm/aidl/ResponseModel;)I
.end method
