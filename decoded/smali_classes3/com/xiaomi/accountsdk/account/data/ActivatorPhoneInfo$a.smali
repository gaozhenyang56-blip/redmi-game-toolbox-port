.class final Lcom/xiaomi/accountsdk/account/data/ActivatorPhoneInfo$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaomi/accountsdk/account/data/ActivatorPhoneInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "Lcom/xiaomi/accountsdk/account/data/ActivatorPhoneInfo;",
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
.method public a(Landroid/os/Parcel;)Lcom/xiaomi/accountsdk/account/data/ActivatorPhoneInfo;
    .locals 2

    invoke-virtual {p1}, Landroid/os/Parcel;->readBundle()Landroid/os/Bundle;

    move-result-object p1

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return-object p1

    :cond_0
    new-instance v0, Lcom/xiaomi/accountsdk/account/data/ActivatorPhoneInfo$b;

    invoke-direct {v0}, Lcom/xiaomi/accountsdk/account/data/ActivatorPhoneInfo$b;-><init>()V

    const-string v1, "phone"

    invoke-virtual {p1, v1}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/xiaomi/accountsdk/account/data/ActivatorPhoneInfo$b;->k(Ljava/lang/String;)Lcom/xiaomi/accountsdk/account/data/ActivatorPhoneInfo$b;

    move-result-object v0

    const-string v1, "phone_hash"

    invoke-virtual {p1, v1}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/xiaomi/accountsdk/account/data/ActivatorPhoneInfo$b;->l(Ljava/lang/String;)Lcom/xiaomi/accountsdk/account/data/ActivatorPhoneInfo$b;

    move-result-object v0

    const-string v1, "activator_token"

    invoke-virtual {p1, v1}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/xiaomi/accountsdk/account/data/ActivatorPhoneInfo$b;->g(Ljava/lang/String;)Lcom/xiaomi/accountsdk/account/data/ActivatorPhoneInfo$b;

    move-result-object v0

    const-string v1, "slot_id"

    invoke-virtual {p1, v1}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/xiaomi/accountsdk/account/data/ActivatorPhoneInfo$b;->m(I)Lcom/xiaomi/accountsdk/account/data/ActivatorPhoneInfo$b;

    move-result-object v0

    const-string v1, "copy_writer"

    invoke-virtual {p1, v1}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/xiaomi/accountsdk/account/data/ActivatorPhoneInfo$b;->i(Ljava/lang/String;)Lcom/xiaomi/accountsdk/account/data/ActivatorPhoneInfo$b;

    move-result-object v0

    const-string v1, "operator_link"

    invoke-virtual {p1, v1}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/xiaomi/accountsdk/account/data/ActivatorPhoneInfo$b;->j(Ljava/lang/String;)Lcom/xiaomi/accountsdk/account/data/ActivatorPhoneInfo$b;

    move-result-object p1

    invoke-virtual {p1}, Lcom/xiaomi/accountsdk/account/data/ActivatorPhoneInfo$b;->h()Lcom/xiaomi/accountsdk/account/data/ActivatorPhoneInfo;

    move-result-object p1

    return-object p1
.end method

.method public b(I)[Lcom/xiaomi/accountsdk/account/data/ActivatorPhoneInfo;
    .locals 0

    new-array p1, p1, [Lcom/xiaomi/accountsdk/account/data/ActivatorPhoneInfo;

    return-object p1
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 0

    invoke-virtual {p0, p1}, Lcom/xiaomi/accountsdk/account/data/ActivatorPhoneInfo$a;->a(Landroid/os/Parcel;)Lcom/xiaomi/accountsdk/account/data/ActivatorPhoneInfo;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 0

    invoke-virtual {p0, p1}, Lcom/xiaomi/accountsdk/account/data/ActivatorPhoneInfo$a;->b(I)[Lcom/xiaomi/accountsdk/account/data/ActivatorPhoneInfo;

    move-result-object p1

    return-object p1
.end method
