.class Lvendor/xiaomi/hardware/mitrustedui/MiTrustedUIDisplayInfo$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lvendor/xiaomi/hardware/mitrustedui/MiTrustedUIDisplayInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "Lvendor/xiaomi/hardware/mitrustedui/MiTrustedUIDisplayInfo;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/os/Parcel;)Lvendor/xiaomi/hardware/mitrustedui/MiTrustedUIDisplayInfo;
    .locals 1

    new-instance v0, Lvendor/xiaomi/hardware/mitrustedui/MiTrustedUIDisplayInfo;

    invoke-direct {v0}, Lvendor/xiaomi/hardware/mitrustedui/MiTrustedUIDisplayInfo;-><init>()V

    invoke-virtual {v0, p1}, Lvendor/xiaomi/hardware/mitrustedui/MiTrustedUIDisplayInfo;->readFromParcel(Landroid/os/Parcel;)V

    return-object v0
.end method

.method public b(I)[Lvendor/xiaomi/hardware/mitrustedui/MiTrustedUIDisplayInfo;
    .locals 0

    new-array p1, p1, [Lvendor/xiaomi/hardware/mitrustedui/MiTrustedUIDisplayInfo;

    return-object p1
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 0

    invoke-virtual {p0, p1}, Lvendor/xiaomi/hardware/mitrustedui/MiTrustedUIDisplayInfo$a;->a(Landroid/os/Parcel;)Lvendor/xiaomi/hardware/mitrustedui/MiTrustedUIDisplayInfo;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 0

    invoke-virtual {p0, p1}, Lvendor/xiaomi/hardware/mitrustedui/MiTrustedUIDisplayInfo$a;->b(I)[Lvendor/xiaomi/hardware/mitrustedui/MiTrustedUIDisplayInfo;

    move-result-object p1

    return-object p1
.end method
