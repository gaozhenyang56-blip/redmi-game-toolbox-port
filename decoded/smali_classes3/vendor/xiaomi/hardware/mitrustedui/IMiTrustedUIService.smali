.class public interface abstract Lvendor/xiaomi/hardware/mitrustedui/IMiTrustedUIService;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lvendor/xiaomi/hardware/mitrustedui/IMiTrustedUIService$Stub;,
        Lvendor/xiaomi/hardware/mitrustedui/IMiTrustedUIService$Default;
    }
.end annotation


# static fields
.field public static final j:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const-string v0, "vendor$xiaomi$hardware$mitrustedui$IMiTrustedUIService"

    const/16 v1, 0x24

    const/16 v2, 0x2e

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lvendor/xiaomi/hardware/mitrustedui/IMiTrustedUIService;->j:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public abstract G5(Lvendor/xiaomi/hardware/mitrustedui/MiTrustedUISessionMessage;Landroid/hardware/common/NativeHandle;Lvendor/xiaomi/hardware/mitrustedui/IMiTrustedUICallback;)I
.end method

.method public abstract H7()I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end method

.method public abstract Q1(Lvendor/xiaomi/hardware/mitrustedui/MiTrustedUISessionMessage;)I
.end method

.method public abstract X6(Lvendor/xiaomi/hardware/mitrustedui/MiTrustedUISessionMessage;)I
.end method

.method public abstract e()Ljava/lang/String;
.end method

.method public abstract f()I
.end method

.method public abstract f8(Lvendor/xiaomi/hardware/mitrustedui/TVMPlatformInfo;)I
.end method

.method public abstract i5()I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end method

.method public abstract v7(Lvendor/xiaomi/hardware/mitrustedui/MiTrustedUIRequestMessage;Lvendor/xiaomi/hardware/mitrustedui/MiTrustedUIResponseMessage;)I
.end method
