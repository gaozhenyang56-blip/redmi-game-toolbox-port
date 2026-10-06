.class Lcom/miui/guardprovider/aidl/VirusInfo$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/guardprovider/aidl/VirusInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "Lcom/miui/guardprovider/aidl/VirusInfo;",
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
.method public a(Landroid/os/Parcel;)Lcom/miui/guardprovider/aidl/VirusInfo;
    .locals 1

    new-instance v0, Lcom/miui/guardprovider/aidl/VirusInfo;

    invoke-direct {v0, p1}, Lcom/miui/guardprovider/aidl/VirusInfo;-><init>(Landroid/os/Parcel;)V

    return-object v0
.end method

.method public b(I)[Lcom/miui/guardprovider/aidl/VirusInfo;
    .locals 0

    new-array p1, p1, [Lcom/miui/guardprovider/aidl/VirusInfo;

    return-object p1
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 0

    invoke-virtual {p0, p1}, Lcom/miui/guardprovider/aidl/VirusInfo$a;->a(Landroid/os/Parcel;)Lcom/miui/guardprovider/aidl/VirusInfo;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 0

    invoke-virtual {p0, p1}, Lcom/miui/guardprovider/aidl/VirusInfo$a;->b(I)[Lcom/miui/guardprovider/aidl/VirusInfo;

    move-result-object p1

    return-object p1
.end method
