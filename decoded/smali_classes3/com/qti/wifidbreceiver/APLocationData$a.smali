.class Lcom/qti/wifidbreceiver/APLocationData$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/qti/wifidbreceiver/APLocationData;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "Lcom/qti/wifidbreceiver/APLocationData;",
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
.method public a(Landroid/os/Parcel;)Lcom/qti/wifidbreceiver/APLocationData;
    .locals 2

    new-instance v0, Lcom/qti/wifidbreceiver/APLocationData;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Lcom/qti/wifidbreceiver/APLocationData;-><init>(Landroid/os/Parcel;Lcom/qti/wifidbreceiver/APLocationData$a;)V

    return-object v0
.end method

.method public b(I)[Lcom/qti/wifidbreceiver/APLocationData;
    .locals 0

    new-array p1, p1, [Lcom/qti/wifidbreceiver/APLocationData;

    return-object p1
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 0

    invoke-virtual {p0, p1}, Lcom/qti/wifidbreceiver/APLocationData$a;->a(Landroid/os/Parcel;)Lcom/qti/wifidbreceiver/APLocationData;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 0

    invoke-virtual {p0, p1}, Lcom/qti/wifidbreceiver/APLocationData$a;->b(I)[Lcom/qti/wifidbreceiver/APLocationData;

    move-result-object p1

    return-object p1
.end method
