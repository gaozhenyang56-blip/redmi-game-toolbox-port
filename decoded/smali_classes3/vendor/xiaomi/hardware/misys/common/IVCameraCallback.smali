.class public interface abstract Lvendor/xiaomi/hardware/misys/common/IVCameraCallback;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lvendor/xiaomi/hardware/misys/common/IVCameraCallback$Stub;,
        Lvendor/xiaomi/hardware/misys/common/IVCameraCallback$Default;
    }
.end annotation


# static fields
.field public static final f:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const-string v0, "vendor$xiaomi$hardware$misys$common$IVCameraCallback"

    const/16 v1, 0x24

    const/16 v2, 0x2e

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lvendor/xiaomi/hardware/misys/common/IVCameraCallback;->f:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public abstract M0(I)V
.end method

.method public abstract e()Ljava/lang/String;
.end method

.method public abstract f()I
.end method
