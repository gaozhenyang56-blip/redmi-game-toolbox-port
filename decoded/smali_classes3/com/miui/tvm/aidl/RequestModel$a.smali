.class Lcom/miui/tvm/aidl/RequestModel$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/tvm/aidl/RequestModel;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "Lcom/miui/tvm/aidl/RequestModel;",
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
.method public a(Landroid/os/Parcel;)Lcom/miui/tvm/aidl/RequestModel;
    .locals 1

    new-instance v0, Lcom/miui/tvm/aidl/RequestModel;

    invoke-direct {v0}, Lcom/miui/tvm/aidl/RequestModel;-><init>()V

    invoke-virtual {v0, p1}, Lcom/miui/tvm/aidl/RequestModel;->readFromParcel(Landroid/os/Parcel;)V

    return-object v0
.end method

.method public b(I)[Lcom/miui/tvm/aidl/RequestModel;
    .locals 0

    new-array p1, p1, [Lcom/miui/tvm/aidl/RequestModel;

    return-object p1
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 0

    invoke-virtual {p0, p1}, Lcom/miui/tvm/aidl/RequestModel$a;->a(Landroid/os/Parcel;)Lcom/miui/tvm/aidl/RequestModel;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 0

    invoke-virtual {p0, p1}, Lcom/miui/tvm/aidl/RequestModel$a;->b(I)[Lcom/miui/tvm/aidl/RequestModel;

    move-result-object p1

    return-object p1
.end method
