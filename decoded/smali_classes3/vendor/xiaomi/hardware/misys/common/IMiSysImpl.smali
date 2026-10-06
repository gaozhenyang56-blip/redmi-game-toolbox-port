.class public interface abstract Lvendor/xiaomi/hardware/misys/common/IMiSysImpl;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lvendor/xiaomi/hardware/misys/common/IMiSysImpl$Stub;,
        Lvendor/xiaomi/hardware/misys/common/IMiSysImpl$Default;
    }
.end annotation


# static fields
.field public static final e:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const-string v0, "vendor$xiaomi$hardware$misys$common$IMiSysImpl"

    const/16 v1, 0x24

    const/16 v2, 0x2e

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lvendor/xiaomi/hardware/misys/common/IMiSysImpl;->e:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public abstract A5(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IB)V
.end method

.method public abstract M5(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
.end method

.method public abstract O0(Ljava/lang/String;Ljava/lang/String;)V
.end method

.method public abstract O5(Ljava/lang/String;Ljava/lang/String;)[B
.end method

.method public abstract P3(Ljava/lang/String;Ljava/lang/String;[BJ)V
.end method

.method public abstract T0(Ljava/lang/String;Ljava/lang/String;)Z
.end method

.method public abstract V6(IID)Z
.end method

.method public abstract Z3(Ljava/lang/String;Ljava/lang/String;)J
.end method

.method public abstract a1(Lvendor/xiaomi/hardware/misys/common/Ashmem;Ljava/lang/String;Ljava/lang/String;J)V
.end method

.method public abstract a8(Ljava/lang/String;Ljava/lang/String;)V
.end method

.method public abstract b(Ljava/lang/String;Ljava/lang/String;)J
.end method

.method public abstract e()Ljava/lang/String;
.end method

.method public abstract e6(Lvendor/xiaomi/hardware/misys/common/Ashmem;Ljava/lang/String;Ljava/lang/String;)V
.end method

.method public abstract f()I
.end method

.method public abstract f4(Ljava/lang/String;)[Lvendor/xiaomi/hardware/misys/common/FileInfo;
.end method

.method public abstract h8(Lvendor/xiaomi/hardware/misys/common/IVCameraCallback;)V
.end method

.method public abstract k8(Ljava/lang/String;Ljava/lang/String;)V
.end method

.method public abstract p1([BI)Z
.end method

.method public abstract q4()Z
.end method

.method public abstract t7()V
.end method

.method public abstract u0()Z
.end method
