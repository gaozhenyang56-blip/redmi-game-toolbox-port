.class Lcom/miui/tvm/aidl/TvmStatusModel$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/tvm/aidl/TvmStatusModel;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "Lcom/miui/tvm/aidl/TvmStatusModel;",
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
.method public a(Landroid/os/Parcel;)Lcom/miui/tvm/aidl/TvmStatusModel;
    .locals 1

    new-instance v0, Lcom/miui/tvm/aidl/TvmStatusModel;

    invoke-direct {v0}, Lcom/miui/tvm/aidl/TvmStatusModel;-><init>()V

    invoke-virtual {v0, p1}, Lcom/miui/tvm/aidl/TvmStatusModel;->readFromParcel(Landroid/os/Parcel;)V

    return-object v0
.end method

.method public b(I)[Lcom/miui/tvm/aidl/TvmStatusModel;
    .locals 0

    new-array p1, p1, [Lcom/miui/tvm/aidl/TvmStatusModel;

    return-object p1
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 0

    invoke-virtual {p0, p1}, Lcom/miui/tvm/aidl/TvmStatusModel$a;->a(Landroid/os/Parcel;)Lcom/miui/tvm/aidl/TvmStatusModel;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 0

    invoke-virtual {p0, p1}, Lcom/miui/tvm/aidl/TvmStatusModel$a;->b(I)[Lcom/miui/tvm/aidl/TvmStatusModel;

    move-result-object p1

    return-object p1
.end method
