.class public Lcom/xiaomi/accountsdk/account/data/Step2LoginParams;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/xiaomi/accountsdk/account/data/Step2LoginParams$b;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/xiaomi/accountsdk/account/data/Step2LoginParams;",
            ">;"
        }
    .end annotation
.end field

.field private static final DEVICE_ID:Ljava/lang/String; = "deviceId"

.field private static final RETURN_STS_URL:Ljava/lang/String; = "returnStsUrl"


# instance fields
.field public deviceId:Ljava/lang/String;

.field public final metaLoginData:Lcom/xiaomi/accountsdk/account/data/MetaLoginData;

.field public returnStsUrl:Z

.field public final serviceId:Ljava/lang/String;

.field public final step1Token:Ljava/lang/String;

.field public final step2code:Ljava/lang/String;

.field public final trust:Z

.field public final userId:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/xiaomi/accountsdk/account/data/Step2LoginParams$a;

    invoke-direct {v0}, Lcom/xiaomi/accountsdk/account/data/Step2LoginParams$a;-><init>()V

    sput-object v0, Lcom/xiaomi/accountsdk/account/data/Step2LoginParams;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaomi/accountsdk/account/data/Step2LoginParams;->userId:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaomi/accountsdk/account/data/Step2LoginParams;->serviceId:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaomi/accountsdk/account/data/Step2LoginParams;->step1Token:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaomi/accountsdk/account/data/Step2LoginParams;->step2code:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    move v0, v1

    :goto_0
    iput-boolean v0, p0, Lcom/xiaomi/accountsdk/account/data/Step2LoginParams;->trust:Z

    const-class v0, Lcom/xiaomi/accountsdk/account/data/MetaLoginData;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/xiaomi/accountsdk/account/data/MetaLoginData;

    iput-object v0, p0, Lcom/xiaomi/accountsdk/account/data/Step2LoginParams;->metaLoginData:Lcom/xiaomi/accountsdk/account/data/MetaLoginData;

    invoke-virtual {p1}, Landroid/os/Parcel;->readBundle()Landroid/os/Bundle;

    move-result-object p1

    if-eqz p1, :cond_1

    const-string v0, "returnStsUrl"

    invoke-virtual {p1, v0, v1}, Landroid/os/BaseBundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/xiaomi/accountsdk/account/data/Step2LoginParams;->returnStsUrl:Z

    const-string v0, "deviceId"

    invoke-virtual {p1, v0}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/xiaomi/accountsdk/account/data/Step2LoginParams;->deviceId:Ljava/lang/String;

    :cond_1
    return-void
.end method

.method private constructor <init>(Lcom/xiaomi/accountsdk/account/data/Step2LoginParams$b;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p1}, Lcom/xiaomi/accountsdk/account/data/Step2LoginParams$b;->a(Lcom/xiaomi/accountsdk/account/data/Step2LoginParams$b;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaomi/accountsdk/account/data/Step2LoginParams;->userId:Ljava/lang/String;

    invoke-static {p1}, Lcom/xiaomi/accountsdk/account/data/Step2LoginParams$b;->b(Lcom/xiaomi/accountsdk/account/data/Step2LoginParams$b;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaomi/accountsdk/account/data/Step2LoginParams;->serviceId:Ljava/lang/String;

    invoke-static {p1}, Lcom/xiaomi/accountsdk/account/data/Step2LoginParams$b;->c(Lcom/xiaomi/accountsdk/account/data/Step2LoginParams$b;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaomi/accountsdk/account/data/Step2LoginParams;->step1Token:Ljava/lang/String;

    invoke-static {p1}, Lcom/xiaomi/accountsdk/account/data/Step2LoginParams$b;->d(Lcom/xiaomi/accountsdk/account/data/Step2LoginParams$b;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaomi/accountsdk/account/data/Step2LoginParams;->step2code:Ljava/lang/String;

    invoke-static {p1}, Lcom/xiaomi/accountsdk/account/data/Step2LoginParams$b;->e(Lcom/xiaomi/accountsdk/account/data/Step2LoginParams$b;)Lcom/xiaomi/accountsdk/account/data/MetaLoginData;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaomi/accountsdk/account/data/Step2LoginParams;->metaLoginData:Lcom/xiaomi/accountsdk/account/data/MetaLoginData;

    invoke-static {p1}, Lcom/xiaomi/accountsdk/account/data/Step2LoginParams$b;->f(Lcom/xiaomi/accountsdk/account/data/Step2LoginParams$b;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/xiaomi/accountsdk/account/data/Step2LoginParams;->trust:Z

    invoke-static {p1}, Lcom/xiaomi/accountsdk/account/data/Step2LoginParams$b;->g(Lcom/xiaomi/accountsdk/account/data/Step2LoginParams$b;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/xiaomi/accountsdk/account/data/Step2LoginParams;->returnStsUrl:Z

    invoke-static {p1}, Lcom/xiaomi/accountsdk/account/data/Step2LoginParams$b;->h(Lcom/xiaomi/accountsdk/account/data/Step2LoginParams$b;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/xiaomi/accountsdk/account/data/Step2LoginParams;->deviceId:Ljava/lang/String;

    return-void
.end method

.method synthetic constructor <init>(Lcom/xiaomi/accountsdk/account/data/Step2LoginParams$b;Lcom/xiaomi/accountsdk/account/data/Step2LoginParams$a;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/xiaomi/accountsdk/account/data/Step2LoginParams;-><init>(Lcom/xiaomi/accountsdk/account/data/Step2LoginParams$b;)V

    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 2

    iget-object v0, p0, Lcom/xiaomi/accountsdk/account/data/Step2LoginParams;->userId:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/xiaomi/accountsdk/account/data/Step2LoginParams;->serviceId:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/xiaomi/accountsdk/account/data/Step2LoginParams;->step1Token:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/xiaomi/accountsdk/account/data/Step2LoginParams;->step2code:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/xiaomi/accountsdk/account/data/Step2LoginParams;->trust:Z

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget-object v0, p0, Lcom/xiaomi/accountsdk/account/data/Step2LoginParams;->metaLoginData:Lcom/xiaomi/accountsdk/account/data/MetaLoginData;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    new-instance p2, Landroid/os/Bundle;

    invoke-direct {p2}, Landroid/os/Bundle;-><init>()V

    iget-boolean v0, p0, Lcom/xiaomi/accountsdk/account/data/Step2LoginParams;->returnStsUrl:Z

    const-string v1, "returnStsUrl"

    invoke-virtual {p2, v1, v0}, Landroid/os/BaseBundle;->putBoolean(Ljava/lang/String;Z)V

    iget-object v0, p0, Lcom/xiaomi/accountsdk/account/data/Step2LoginParams;->deviceId:Ljava/lang/String;

    const-string v1, "deviceId"

    invoke-virtual {p2, v1, v0}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeBundle(Landroid/os/Bundle;)V

    return-void
.end method
