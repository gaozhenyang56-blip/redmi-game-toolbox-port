.class public abstract Lcom/xiaomi/aicr/sdk/ITranslateSdkCallback$Stub;
.super Landroid/os/Binder;
.source "SourceFile"

# interfaces
.implements Lcom/xiaomi/aicr/sdk/ITranslateSdkCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaomi/aicr/sdk/ITranslateSdkCallback;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/xiaomi/aicr/sdk/ITranslateSdkCallback$Stub$a;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    const-string v0, "com.xiaomi.aicr.sdk.ITranslateSdkCallback"

    invoke-virtual {p0, p0, v0}, Landroid/os/Binder;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lcom/xiaomi/aicr/sdk/ITranslateSdkCallback;
    .locals 2

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    const-string v0, "com.xiaomi.aicr.sdk.ITranslateSdkCallback"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    if-eqz v0, :cond_1

    instance-of v1, v0, Lcom/xiaomi/aicr/sdk/ITranslateSdkCallback;

    if-eqz v1, :cond_1

    check-cast v0, Lcom/xiaomi/aicr/sdk/ITranslateSdkCallback;

    return-object v0

    :cond_1
    new-instance v0, Lcom/xiaomi/aicr/sdk/ITranslateSdkCallback$Stub$a;

    invoke-direct {v0, p0}, Lcom/xiaomi/aicr/sdk/ITranslateSdkCallback$Stub$a;-><init>(Landroid/os/IBinder;)V

    return-object v0
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 0

    return-object p0
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 3

    const/4 v0, 0x1

    const-string v1, "com.xiaomi.aicr.sdk.ITranslateSdkCallback"

    if-lt p1, v0, :cond_0

    const v2, 0xffffff

    if-gt p1, v2, :cond_0

    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    :cond_0
    const v2, 0x5f4e5446

    if-eq p1, v2, :cond_6

    if-eq p1, v0, :cond_5

    const/4 v1, 0x2

    if-eq p1, v1, :cond_4

    const/4 v1, 0x3

    if-eq p1, v1, :cond_3

    const/4 v1, 0x4

    if-eq p1, v1, :cond_2

    const/4 v1, 0x5

    if-eq p1, v1, :cond_1

    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result p1

    return p1

    :cond_1
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    invoke-interface {p0, p1}, Lcom/xiaomi/aicr/sdk/ITranslateSdkCallback;->P4(Ljava/lang/String;)Z

    move-result p1

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_1

    :cond_2
    invoke-virtual {p2}, Landroid/os/Parcel;->createIntArray()[I

    move-result-object p1

    invoke-virtual {p2}, Landroid/os/Parcel;->createIntArray()[I

    move-result-object p2

    invoke-interface {p0, p1, p2}, Lcom/xiaomi/aicr/sdk/ITranslateSdkCallback;->k7([I[I)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeIntArray([I)V

    invoke-virtual {p3, p2}, Landroid/os/Parcel;->writeIntArray([I)V

    goto :goto_1

    :cond_3
    sget-object p1, Lcom/xiaomi/aicr/sdk/AiTranslateResult;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {p2, p1}, Lcom/xiaomi/aicr/sdk/ITranslateSdkCallback$a;->a(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/xiaomi/aicr/sdk/AiTranslateResult;

    invoke-interface {p0, p1}, Lcom/xiaomi/aicr/sdk/ITranslateSdkCallback;->w7(Lcom/xiaomi/aicr/sdk/AiTranslateResult;)V

    goto :goto_0

    :cond_4
    sget-object p1, Lcom/xiaomi/aicr/sdk/AiTranslateResult;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {p2, p1}, Lcom/xiaomi/aicr/sdk/ITranslateSdkCallback$a;->a(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/xiaomi/aicr/sdk/AiTranslateResult;

    invoke-interface {p0, p1}, Lcom/xiaomi/aicr/sdk/ITranslateSdkCallback;->G0(Lcom/xiaomi/aicr/sdk/AiTranslateResult;)V

    :goto_0
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-static {p3, p1, v0}, Lcom/xiaomi/aicr/sdk/ITranslateSdkCallback$a;->b(Landroid/os/Parcel;Landroid/os/Parcelable;I)V

    goto :goto_1

    :cond_5
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p2

    invoke-interface {p0, p1, p2}, Lcom/xiaomi/aicr/sdk/ITranslateSdkCallback;->g1(ILjava/lang/String;)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    :goto_1
    return v0

    :cond_6
    invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return v0
.end method
