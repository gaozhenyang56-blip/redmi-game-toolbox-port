.class public Lcom/xiaomi/accountsdk/account/data/PhoneTokenRegisterParams;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/xiaomi/accountsdk/account/data/PhoneTokenRegisterParams$b;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/xiaomi/accountsdk/account/data/PhoneTokenRegisterParams;",
            ">;"
        }
    .end annotation
.end field

.field private static final KEY_ACTIVATOR_PHONE_INFO:Ljava/lang/String; = "activator_phone_info"

.field private static final KEY_IS_NO_PASSWORD:Ljava/lang/String; = "is_no_password"

.field private static final KEY_PASSWORD:Ljava/lang/String; = "password"

.field private static final KEY_PHONE:Ljava/lang/String; = "phone"

.field private static final KEY_REGION:Ljava/lang/String; = "region"

.field private static final KEY_SERVICE_ID:Ljava/lang/String; = "service_id"

.field private static final KEY_TICKET_TOKEN:Ljava/lang/String; = "ticket_token"


# instance fields
.field public final activatorPhoneInfo:Lcom/xiaomi/accountsdk/account/data/ActivatorPhoneInfo;

.field public final activatorToken:Ljava/lang/String;

.field public final noPwd:Z

.field public final password:Ljava/lang/String;

.field public final phone:Ljava/lang/String;

.field public final phoneHash:Ljava/lang/String;

.field public final region:Ljava/lang/String;

.field public final serviceId:Ljava/lang/String;

.field public final ticketToken:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/xiaomi/accountsdk/account/data/PhoneTokenRegisterParams$a;

    invoke-direct {v0}, Lcom/xiaomi/accountsdk/account/data/PhoneTokenRegisterParams$a;-><init>()V

    sput-object v0, Lcom/xiaomi/accountsdk/account/data/PhoneTokenRegisterParams;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor <init>(Lcom/xiaomi/accountsdk/account/data/PhoneTokenRegisterParams$b;)V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p1}, Lcom/xiaomi/accountsdk/account/data/PhoneTokenRegisterParams$b;->a(Lcom/xiaomi/accountsdk/account/data/PhoneTokenRegisterParams$b;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaomi/accountsdk/account/data/PhoneTokenRegisterParams;->phone:Ljava/lang/String;

    invoke-static {p1}, Lcom/xiaomi/accountsdk/account/data/PhoneTokenRegisterParams$b;->b(Lcom/xiaomi/accountsdk/account/data/PhoneTokenRegisterParams$b;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaomi/accountsdk/account/data/PhoneTokenRegisterParams;->ticketToken:Ljava/lang/String;

    invoke-static {p1}, Lcom/xiaomi/accountsdk/account/data/PhoneTokenRegisterParams$b;->c(Lcom/xiaomi/accountsdk/account/data/PhoneTokenRegisterParams$b;)Lcom/xiaomi/accountsdk/account/data/ActivatorPhoneInfo;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaomi/accountsdk/account/data/PhoneTokenRegisterParams;->activatorPhoneInfo:Lcom/xiaomi/accountsdk/account/data/ActivatorPhoneInfo;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    iget-object v2, v0, Lcom/xiaomi/accountsdk/account/data/ActivatorPhoneInfo;->phoneHash:Ljava/lang/String;

    goto :goto_0

    :cond_0
    move-object v2, v1

    :goto_0
    iput-object v2, p0, Lcom/xiaomi/accountsdk/account/data/PhoneTokenRegisterParams;->phoneHash:Ljava/lang/String;

    if-eqz v0, :cond_1

    iget-object v1, v0, Lcom/xiaomi/accountsdk/account/data/ActivatorPhoneInfo;->activatorToken:Ljava/lang/String;

    :cond_1
    iput-object v1, p0, Lcom/xiaomi/accountsdk/account/data/PhoneTokenRegisterParams;->activatorToken:Ljava/lang/String;

    invoke-static {p1}, Lcom/xiaomi/accountsdk/account/data/PhoneTokenRegisterParams$b;->d(Lcom/xiaomi/accountsdk/account/data/PhoneTokenRegisterParams$b;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaomi/accountsdk/account/data/PhoneTokenRegisterParams;->password:Ljava/lang/String;

    invoke-static {p1}, Lcom/xiaomi/accountsdk/account/data/PhoneTokenRegisterParams$b;->e(Lcom/xiaomi/accountsdk/account/data/PhoneTokenRegisterParams$b;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/xiaomi/accountsdk/account/data/PhoneTokenRegisterParams;->noPwd:Z

    invoke-static {p1}, Lcom/xiaomi/accountsdk/account/data/PhoneTokenRegisterParams$b;->f(Lcom/xiaomi/accountsdk/account/data/PhoneTokenRegisterParams$b;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaomi/accountsdk/account/data/PhoneTokenRegisterParams;->region:Ljava/lang/String;

    invoke-static {p1}, Lcom/xiaomi/accountsdk/account/data/PhoneTokenRegisterParams$b;->g(Lcom/xiaomi/accountsdk/account/data/PhoneTokenRegisterParams$b;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/xiaomi/accountsdk/account/data/PhoneTokenRegisterParams;->serviceId:Ljava/lang/String;

    return-void
.end method

.method synthetic constructor <init>(Lcom/xiaomi/accountsdk/account/data/PhoneTokenRegisterParams$b;Lcom/xiaomi/accountsdk/account/data/PhoneTokenRegisterParams$a;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/xiaomi/accountsdk/account/data/PhoneTokenRegisterParams;-><init>(Lcom/xiaomi/accountsdk/account/data/PhoneTokenRegisterParams$b;)V

    return-void
.end method

.method public static copyFrom(Lcom/xiaomi/accountsdk/account/data/PhoneTokenRegisterParams;)Lcom/xiaomi/accountsdk/account/data/PhoneTokenRegisterParams$b;
    .locals 3

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    new-instance v0, Lcom/xiaomi/accountsdk/account/data/PhoneTokenRegisterParams$b;

    invoke-direct {v0}, Lcom/xiaomi/accountsdk/account/data/PhoneTokenRegisterParams$b;-><init>()V

    iget-object v1, p0, Lcom/xiaomi/accountsdk/account/data/PhoneTokenRegisterParams;->phone:Ljava/lang/String;

    iget-object v2, p0, Lcom/xiaomi/accountsdk/account/data/PhoneTokenRegisterParams;->ticketToken:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/xiaomi/accountsdk/account/data/PhoneTokenRegisterParams$b;->k(Ljava/lang/String;Ljava/lang/String;)Lcom/xiaomi/accountsdk/account/data/PhoneTokenRegisterParams$b;

    move-result-object v0

    iget-object v1, p0, Lcom/xiaomi/accountsdk/account/data/PhoneTokenRegisterParams;->activatorPhoneInfo:Lcom/xiaomi/accountsdk/account/data/ActivatorPhoneInfo;

    invoke-virtual {v0, v1}, Lcom/xiaomi/accountsdk/account/data/PhoneTokenRegisterParams$b;->j(Lcom/xiaomi/accountsdk/account/data/ActivatorPhoneInfo;)Lcom/xiaomi/accountsdk/account/data/PhoneTokenRegisterParams$b;

    move-result-object v0

    iget-object v1, p0, Lcom/xiaomi/accountsdk/account/data/PhoneTokenRegisterParams;->password:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/xiaomi/accountsdk/account/data/PhoneTokenRegisterParams$b;->i(Ljava/lang/String;)Lcom/xiaomi/accountsdk/account/data/PhoneTokenRegisterParams$b;

    move-result-object v0

    iget-object v1, p0, Lcom/xiaomi/accountsdk/account/data/PhoneTokenRegisterParams;->region:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/xiaomi/accountsdk/account/data/PhoneTokenRegisterParams$b;->l(Ljava/lang/String;)Lcom/xiaomi/accountsdk/account/data/PhoneTokenRegisterParams$b;

    move-result-object v0

    iget-object p0, p0, Lcom/xiaomi/accountsdk/account/data/PhoneTokenRegisterParams;->serviceId:Ljava/lang/String;

    invoke-virtual {v0, p0}, Lcom/xiaomi/accountsdk/account/data/PhoneTokenRegisterParams$b;->m(Ljava/lang/String;)Lcom/xiaomi/accountsdk/account/data/PhoneTokenRegisterParams$b;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 4

    new-instance p2, Landroid/os/Bundle;

    invoke-direct {p2}, Landroid/os/Bundle;-><init>()V

    iget-object v0, p0, Lcom/xiaomi/accountsdk/account/data/PhoneTokenRegisterParams;->phone:Ljava/lang/String;

    const-string v1, "phone"

    invoke-virtual {p2, v1, v0}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/xiaomi/accountsdk/account/data/PhoneTokenRegisterParams;->ticketToken:Ljava/lang/String;

    const-string v1, "ticket_token"

    invoke-virtual {p2, v1, v0}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/xiaomi/accountsdk/account/data/PhoneTokenRegisterParams;->activatorPhoneInfo:Lcom/xiaomi/accountsdk/account/data/ActivatorPhoneInfo;

    const-string v1, "activator_phone_info"

    invoke-virtual {p2, v1, v0}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    iget-object v0, p0, Lcom/xiaomi/accountsdk/account/data/PhoneTokenRegisterParams;->password:Ljava/lang/String;

    const-string v1, "password"

    invoke-virtual {p2, v1, v0}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/xiaomi/accountsdk/account/data/PhoneTokenRegisterParams;->region:Ljava/lang/String;

    const-string v2, "region"

    invoke-virtual {p2, v2, v0}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/xiaomi/accountsdk/account/data/PhoneTokenRegisterParams;->noPwd:Z

    const-string v3, "is_no_password"

    invoke-virtual {p2, v3, v0}, Landroid/os/BaseBundle;->putBoolean(Ljava/lang/String;Z)V

    iget-object v0, p0, Lcom/xiaomi/accountsdk/account/data/PhoneTokenRegisterParams;->password:Ljava/lang/String;

    invoke-virtual {p2, v1, v0}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/xiaomi/accountsdk/account/data/PhoneTokenRegisterParams;->region:Ljava/lang/String;

    invoke-virtual {p2, v2, v0}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/xiaomi/accountsdk/account/data/PhoneTokenRegisterParams;->serviceId:Ljava/lang/String;

    const-string v1, "service_id"

    invoke-virtual {p2, v1, v0}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeBundle(Landroid/os/Bundle;)V

    return-void
.end method
