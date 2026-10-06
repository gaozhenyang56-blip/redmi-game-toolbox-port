.class Lcom/miui/powercenter/abnormalscan/AbScanModel$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/powercenter/abnormalscan/AbScanModel;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "Lcom/miui/powercenter/abnormalscan/AbScanModel;",
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
.method public a(Landroid/os/Parcel;)Lcom/miui/powercenter/abnormalscan/AbScanModel;
    .locals 3

    new-instance v0, Lcom/miui/powercenter/abnormalscan/AbScanModel;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    const-class v2, Lcom/miui/powercenter/abnormalscan/AbScanModel;

    invoke-virtual {v2}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v2

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->readArrayList(Ljava/lang/ClassLoader;)Ljava/util/ArrayList;

    move-result-object p1

    invoke-direct {v0, v1, p1}, Lcom/miui/powercenter/abnormalscan/AbScanModel;-><init>(Ljava/lang/String;Ljava/util/ArrayList;)V

    return-object v0
.end method

.method public b(I)[Lcom/miui/powercenter/abnormalscan/AbScanModel;
    .locals 0

    new-array p1, p1, [Lcom/miui/powercenter/abnormalscan/AbScanModel;

    return-object p1
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 0

    invoke-virtual {p0, p1}, Lcom/miui/powercenter/abnormalscan/AbScanModel$a;->a(Landroid/os/Parcel;)Lcom/miui/powercenter/abnormalscan/AbScanModel;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 0

    invoke-virtual {p0, p1}, Lcom/miui/powercenter/abnormalscan/AbScanModel$a;->b(I)[Lcom/miui/powercenter/abnormalscan/AbScanModel;

    move-result-object p1

    return-object p1
.end method
