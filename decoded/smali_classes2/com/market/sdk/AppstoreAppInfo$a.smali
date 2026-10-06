.class Lcom/market/sdk/AppstoreAppInfo$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/market/sdk/AppstoreAppInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "Lcom/market/sdk/AppstoreAppInfo;",
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
.method public a(Landroid/os/Parcel;)Lcom/market/sdk/AppstoreAppInfo;
    .locals 1

    new-instance v0, Lcom/market/sdk/AppstoreAppInfo;

    invoke-direct {v0, p1}, Lcom/market/sdk/AppstoreAppInfo;-><init>(Landroid/os/Parcel;)V

    return-object v0
.end method

.method public b(I)[Lcom/market/sdk/AppstoreAppInfo;
    .locals 0

    new-array p1, p1, [Lcom/market/sdk/AppstoreAppInfo;

    return-object p1
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 0

    invoke-virtual {p0, p1}, Lcom/market/sdk/AppstoreAppInfo$a;->a(Landroid/os/Parcel;)Lcom/market/sdk/AppstoreAppInfo;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 0

    invoke-virtual {p0, p1}, Lcom/market/sdk/AppstoreAppInfo$a;->b(I)[Lcom/market/sdk/AppstoreAppInfo;

    move-result-object p1

    return-object p1
.end method
