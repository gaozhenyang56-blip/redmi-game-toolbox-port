.class public interface abstract Lvendor/xiaomi/hardware/aidl/mtdservice/IMTService;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lvendor/xiaomi/hardware/aidl/mtdservice/IMTService$Default;,
        Lvendor/xiaomi/hardware/aidl/mtdservice/IMTService$Stub;
    }
.end annotation


# static fields
.field public static final d:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const-string v0, "vendor$xiaomi$hardware$aidl$mtdservice$IMTService"

    const/16 v1, 0x24

    const/16 v2, 0x2e

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lvendor/xiaomi/hardware/aidl/mtdservice/IMTService;->d:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public abstract A2()Ljava/lang/String;
.end method

.method public abstract C5()I
.end method

.method public abstract G7()Ljava/lang/String;
.end method

.method public abstract I3(ILjava/lang/String;)Lvendor/xiaomi/hardware/aidl/mtdservice/MTServiceResult;
.end method

.method public abstract K4()Ljava/lang/String;
.end method

.method public abstract L()I
.end method

.method public abstract L1()I
.end method

.method public abstract S0(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method public abstract S2()Ljava/lang/String;
.end method

.method public abstract U6()Ljava/lang/String;
.end method

.method public abstract V()I
.end method

.method public abstract V1()Ljava/lang/String;
.end method

.method public abstract X(ILjava/lang/String;)I
.end method

.method public abstract Y1(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method public abstract d1(I)Ljava/lang/String;
.end method

.method public abstract d2()Ljava/lang/String;
.end method

.method public abstract d5(I)V
.end method

.method public abstract e()Ljava/lang/String;
.end method

.method public abstract e1(Ljava/lang/String;I)Ljava/lang/String;
.end method

.method public abstract f()I
.end method

.method public abstract i1(I)Z
.end method

.method public abstract k0()[I
.end method

.method public abstract l4(ILjava/lang/String;Ljava/lang/String;)I
.end method

.method public abstract m8(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method public abstract p0()I
.end method

.method public abstract q0(I)Ljava/lang/String;
.end method

.method public abstract q6()I
.end method

.method public abstract t4()Ljava/lang/String;
.end method

.method public abstract u4(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method public abstract u5(ILjava/lang/String;)Ljava/lang/String;
.end method

.method public abstract w5(ILjava/lang/String;[BI)I
.end method

.method public abstract z1(I)I
.end method
