.class final Lcom/xiaomi/accountsdk/account/data/AccountInfo$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaomi/accountsdk/account/data/AccountInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "Lcom/xiaomi/accountsdk/account/data/AccountInfo;",
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
.method public a(Landroid/os/Parcel;)Lcom/xiaomi/accountsdk/account/data/AccountInfo;
    .locals 2

    new-instance v0, Lcom/xiaomi/accountsdk/account/data/AccountInfo;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Lcom/xiaomi/accountsdk/account/data/AccountInfo;-><init>(Landroid/os/Parcel;Lcom/xiaomi/accountsdk/account/data/AccountInfo$a;)V

    return-object v0
.end method

.method public b(I)[Lcom/xiaomi/accountsdk/account/data/AccountInfo;
    .locals 0

    new-array p1, p1, [Lcom/xiaomi/accountsdk/account/data/AccountInfo;

    return-object p1
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 0

    invoke-virtual {p0, p1}, Lcom/xiaomi/accountsdk/account/data/AccountInfo$a;->a(Landroid/os/Parcel;)Lcom/xiaomi/accountsdk/account/data/AccountInfo;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 0

    invoke-virtual {p0, p1}, Lcom/xiaomi/accountsdk/account/data/AccountInfo$a;->b(I)[Lcom/xiaomi/accountsdk/account/data/AccountInfo;

    move-result-object p1

    return-object p1
.end method
