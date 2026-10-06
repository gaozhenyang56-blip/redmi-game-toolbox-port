.class Lcom/xiaomi/micloudsdk/stat/NetFailedStatParam$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaomi/micloudsdk/stat/NetFailedStatParam;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "Lcom/xiaomi/micloudsdk/stat/NetFailedStatParam;",
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
.method public a(Landroid/os/Parcel;)Lcom/xiaomi/micloudsdk/stat/NetFailedStatParam;
    .locals 1

    new-instance v0, Lcom/xiaomi/micloudsdk/stat/NetFailedStatParam;

    invoke-direct {v0, p1}, Lcom/xiaomi/micloudsdk/stat/NetFailedStatParam;-><init>(Landroid/os/Parcel;)V

    return-object v0
.end method

.method public b(I)[Lcom/xiaomi/micloudsdk/stat/NetFailedStatParam;
    .locals 0

    new-array p1, p1, [Lcom/xiaomi/micloudsdk/stat/NetFailedStatParam;

    return-object p1
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 0

    invoke-virtual {p0, p1}, Lcom/xiaomi/micloudsdk/stat/NetFailedStatParam$a;->a(Landroid/os/Parcel;)Lcom/xiaomi/micloudsdk/stat/NetFailedStatParam;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 0

    invoke-virtual {p0, p1}, Lcom/xiaomi/micloudsdk/stat/NetFailedStatParam$a;->b(I)[Lcom/xiaomi/micloudsdk/stat/NetFailedStatParam;

    move-result-object p1

    return-object p1
.end method
