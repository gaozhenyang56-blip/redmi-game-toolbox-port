.class final Lcom/xiaomi/accountsdk/account/data/PhoneTokenRegisterParams$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaomi/accountsdk/account/data/PhoneTokenRegisterParams;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "Lcom/xiaomi/accountsdk/account/data/PhoneTokenRegisterParams;",
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
.method public a(Landroid/os/Parcel;)Lcom/xiaomi/accountsdk/account/data/PhoneTokenRegisterParams;
    .locals 6

    invoke-virtual {p1}, Landroid/os/Parcel;->readBundle()Landroid/os/Bundle;

    move-result-object p1

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return-object p1

    :cond_0
    const-string v0, "phone"

    invoke-virtual {p1, v0}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "password"

    invoke-virtual {p1, v1}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "ticket_token"

    invoke-virtual {p1, v2}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "activator_phone_info"

    invoke-virtual {p1, v3}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v3

    check-cast v3, Lcom/xiaomi/accountsdk/account/data/ActivatorPhoneInfo;

    const-string v4, "region"

    invoke-virtual {p1, v4}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string v5, "service_id"

    invoke-virtual {p1, v5}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    new-instance v5, Lcom/xiaomi/accountsdk/account/data/PhoneTokenRegisterParams$b;

    invoke-direct {v5}, Lcom/xiaomi/accountsdk/account/data/PhoneTokenRegisterParams$b;-><init>()V

    invoke-virtual {v5, v0, v2}, Lcom/xiaomi/accountsdk/account/data/PhoneTokenRegisterParams$b;->k(Ljava/lang/String;Ljava/lang/String;)Lcom/xiaomi/accountsdk/account/data/PhoneTokenRegisterParams$b;

    move-result-object v0

    invoke-virtual {v0, v3}, Lcom/xiaomi/accountsdk/account/data/PhoneTokenRegisterParams$b;->j(Lcom/xiaomi/accountsdk/account/data/ActivatorPhoneInfo;)Lcom/xiaomi/accountsdk/account/data/PhoneTokenRegisterParams$b;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/xiaomi/accountsdk/account/data/PhoneTokenRegisterParams$b;->i(Ljava/lang/String;)Lcom/xiaomi/accountsdk/account/data/PhoneTokenRegisterParams$b;

    move-result-object v0

    invoke-virtual {v0, v4}, Lcom/xiaomi/accountsdk/account/data/PhoneTokenRegisterParams$b;->l(Ljava/lang/String;)Lcom/xiaomi/accountsdk/account/data/PhoneTokenRegisterParams$b;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/xiaomi/accountsdk/account/data/PhoneTokenRegisterParams$b;->m(Ljava/lang/String;)Lcom/xiaomi/accountsdk/account/data/PhoneTokenRegisterParams$b;

    move-result-object p1

    invoke-virtual {p1}, Lcom/xiaomi/accountsdk/account/data/PhoneTokenRegisterParams$b;->h()Lcom/xiaomi/accountsdk/account/data/PhoneTokenRegisterParams;

    move-result-object p1

    return-object p1
.end method

.method public b(I)[Lcom/xiaomi/accountsdk/account/data/PhoneTokenRegisterParams;
    .locals 0

    const/4 p1, 0x0

    new-array p1, p1, [Lcom/xiaomi/accountsdk/account/data/PhoneTokenRegisterParams;

    return-object p1
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 0

    invoke-virtual {p0, p1}, Lcom/xiaomi/accountsdk/account/data/PhoneTokenRegisterParams$a;->a(Landroid/os/Parcel;)Lcom/xiaomi/accountsdk/account/data/PhoneTokenRegisterParams;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 0

    invoke-virtual {p0, p1}, Lcom/xiaomi/accountsdk/account/data/PhoneTokenRegisterParams$a;->b(I)[Lcom/xiaomi/accountsdk/account/data/PhoneTokenRegisterParams;

    move-result-object p1

    return-object p1
.end method
