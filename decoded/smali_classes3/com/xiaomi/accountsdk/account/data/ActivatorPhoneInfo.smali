.class public Lcom/xiaomi/accountsdk/account/data/ActivatorPhoneInfo;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/xiaomi/accountsdk/account/data/ActivatorPhoneInfo$b;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/xiaomi/accountsdk/account/data/ActivatorPhoneInfo;",
            ">;"
        }
    .end annotation
.end field

.field private static final KEY_ACTIVATOR_TOKEN:Ljava/lang/String; = "activator_token"

.field private static final KEY_COPY_WRITER:Ljava/lang/String; = "copy_writer"

.field private static final KEY_OPERATOR_LINK:Ljava/lang/String; = "operator_link"

.field private static final KEY_PHONE:Ljava/lang/String; = "phone"

.field private static final KEY_PHONE_HASH:Ljava/lang/String; = "phone_hash"

.field private static final KEY_SLOT_ID:Ljava/lang/String; = "slot_id"


# instance fields
.field public final activatorToken:Ljava/lang/String;

.field public final copyWriter:Ljava/lang/String;

.field public final operatorLink:Ljava/lang/String;

.field public final phone:Ljava/lang/String;

.field public final phoneHash:Ljava/lang/String;

.field public final slotId:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/xiaomi/accountsdk/account/data/ActivatorPhoneInfo$a;

    invoke-direct {v0}, Lcom/xiaomi/accountsdk/account/data/ActivatorPhoneInfo$a;-><init>()V

    sput-object v0, Lcom/xiaomi/accountsdk/account/data/ActivatorPhoneInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(Lcom/xiaomi/accountsdk/account/data/ActivatorPhoneInfo$b;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p1}, Lcom/xiaomi/accountsdk/account/data/ActivatorPhoneInfo$b;->a(Lcom/xiaomi/accountsdk/account/data/ActivatorPhoneInfo$b;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaomi/accountsdk/account/data/ActivatorPhoneInfo;->phone:Ljava/lang/String;

    invoke-static {p1}, Lcom/xiaomi/accountsdk/account/data/ActivatorPhoneInfo$b;->b(Lcom/xiaomi/accountsdk/account/data/ActivatorPhoneInfo$b;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaomi/accountsdk/account/data/ActivatorPhoneInfo;->phoneHash:Ljava/lang/String;

    invoke-static {p1}, Lcom/xiaomi/accountsdk/account/data/ActivatorPhoneInfo$b;->c(Lcom/xiaomi/accountsdk/account/data/ActivatorPhoneInfo$b;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaomi/accountsdk/account/data/ActivatorPhoneInfo;->activatorToken:Ljava/lang/String;

    invoke-static {p1}, Lcom/xiaomi/accountsdk/account/data/ActivatorPhoneInfo$b;->d(Lcom/xiaomi/accountsdk/account/data/ActivatorPhoneInfo$b;)I

    move-result v0

    iput v0, p0, Lcom/xiaomi/accountsdk/account/data/ActivatorPhoneInfo;->slotId:I

    invoke-static {p1}, Lcom/xiaomi/accountsdk/account/data/ActivatorPhoneInfo$b;->e(Lcom/xiaomi/accountsdk/account/data/ActivatorPhoneInfo$b;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaomi/accountsdk/account/data/ActivatorPhoneInfo;->copyWriter:Ljava/lang/String;

    invoke-static {p1}, Lcom/xiaomi/accountsdk/account/data/ActivatorPhoneInfo$b;->f(Lcom/xiaomi/accountsdk/account/data/ActivatorPhoneInfo$b;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/xiaomi/accountsdk/account/data/ActivatorPhoneInfo;->operatorLink:Ljava/lang/String;

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

    new-instance p2, Landroid/os/Bundle;

    invoke-direct {p2}, Landroid/os/Bundle;-><init>()V

    iget-object v0, p0, Lcom/xiaomi/accountsdk/account/data/ActivatorPhoneInfo;->phone:Ljava/lang/String;

    const-string v1, "phone"

    invoke-virtual {p2, v1, v0}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/xiaomi/accountsdk/account/data/ActivatorPhoneInfo;->phoneHash:Ljava/lang/String;

    const-string v1, "phone_hash"

    invoke-virtual {p2, v1, v0}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/xiaomi/accountsdk/account/data/ActivatorPhoneInfo;->activatorToken:Ljava/lang/String;

    const-string v1, "activator_token"

    invoke-virtual {p2, v1, v0}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    iget v0, p0, Lcom/xiaomi/accountsdk/account/data/ActivatorPhoneInfo;->slotId:I

    const-string v1, "slot_id"

    invoke-virtual {p2, v1, v0}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    iget-object v0, p0, Lcom/xiaomi/accountsdk/account/data/ActivatorPhoneInfo;->copyWriter:Ljava/lang/String;

    const-string v1, "copy_writer"

    invoke-virtual {p2, v1, v0}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/xiaomi/accountsdk/account/data/ActivatorPhoneInfo;->operatorLink:Ljava/lang/String;

    const-string v1, "operator_link"

    invoke-virtual {p2, v1, v0}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeBundle(Landroid/os/Bundle;)V

    return-void
.end method
