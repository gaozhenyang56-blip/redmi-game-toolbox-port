.class public abstract Lcom/xiaomi/aiasst/vision/sdk/ITranslateSdkCallback$Stub;
.super Landroid/os/Binder;
.source "SourceFile"

# interfaces
.implements Lcom/xiaomi/aiasst/vision/sdk/ITranslateSdkCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaomi/aiasst/vision/sdk/ITranslateSdkCallback;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/xiaomi/aiasst/vision/sdk/ITranslateSdkCallback$Stub$a;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    const-string v0, "com.xiaomi.aiasst.vision.sdk.ITranslateSdkCallback"

    invoke-virtual {p0, p0, v0}, Landroid/os/Binder;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lcom/xiaomi/aiasst/vision/sdk/ITranslateSdkCallback;
    .locals 2

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    const-string v0, "com.xiaomi.aiasst.vision.sdk.ITranslateSdkCallback"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    if-eqz v0, :cond_1

    instance-of v1, v0, Lcom/xiaomi/aiasst/vision/sdk/ITranslateSdkCallback;

    if-eqz v1, :cond_1

    check-cast v0, Lcom/xiaomi/aiasst/vision/sdk/ITranslateSdkCallback;

    return-object v0

    :cond_1
    new-instance v0, Lcom/xiaomi/aiasst/vision/sdk/ITranslateSdkCallback$Stub$a;

    invoke-direct {v0, p0}, Lcom/xiaomi/aiasst/vision/sdk/ITranslateSdkCallback$Stub$a;-><init>(Landroid/os/IBinder;)V

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

    const-string v1, "com.xiaomi.aiasst.vision.sdk.ITranslateSdkCallback"

    if-lt p1, v0, :cond_0

    const v2, 0xffffff

    if-gt p1, v2, :cond_0

    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    :cond_0
    const v2, 0x5f4e5446

    if-eq p1, v2, :cond_2

    packed-switch p1, :pswitch_data_0

    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result p1

    return p1

    :pswitch_0
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p4

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p2

    invoke-interface {p0, p1, p4, p2}, Lcom/xiaomi/aiasst/vision/sdk/ITranslateSdkCallback;->V7(Ljava/lang/String;ILjava/lang/String;)V

    goto/16 :goto_2

    :pswitch_1
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p4

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p2

    invoke-interface {p0, p1, p4, p2}, Lcom/xiaomi/aiasst/vision/sdk/ITranslateSdkCallback;->L0(Ljava/lang/String;ILjava/lang/String;)V

    goto/16 :goto_2

    :pswitch_2
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    invoke-interface {p0, p1}, Lcom/xiaomi/aiasst/vision/sdk/ITranslateSdkCallback;->n(Ljava/lang/String;)V

    goto/16 :goto_2

    :pswitch_3
    sget-object p1, Lcom/xiaomi/aiasst/vision/sdk/AiTranslateResult;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {p2, p1}, Lcom/xiaomi/aiasst/vision/sdk/ITranslateSdkCallback$a;->a(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/xiaomi/aiasst/vision/sdk/AiTranslateResult;

    invoke-interface {p0, p1}, Lcom/xiaomi/aiasst/vision/sdk/ITranslateSdkCallback;->R1(Lcom/xiaomi/aiasst/vision/sdk/AiTranslateResult;)V

    goto :goto_0

    :pswitch_4
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    invoke-interface {p0, p1}, Lcom/xiaomi/aiasst/vision/sdk/ITranslateSdkCallback;->T6(Ljava/lang/String;)V

    goto :goto_2

    :pswitch_5
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    invoke-interface {p0, p1}, Lcom/xiaomi/aiasst/vision/sdk/ITranslateSdkCallback;->Q4(Ljava/lang/String;)V

    goto :goto_2

    :pswitch_6
    invoke-virtual {p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object p1

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p2

    invoke-interface {p0, p1, p2}, Lcom/xiaomi/aiasst/vision/sdk/ITranslateSdkCallback;->A4([BLjava/lang/String;)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeByteArray([B)V

    goto :goto_3

    :pswitch_7
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p2

    invoke-interface {p0, p1, p2}, Lcom/xiaomi/aiasst/vision/sdk/ITranslateSdkCallback;->D0(ILjava/lang/String;)V

    goto :goto_2

    :pswitch_8
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p4

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p2

    invoke-interface {p0, p1, p4, p2}, Lcom/xiaomi/aiasst/vision/sdk/ITranslateSdkCallback;->T(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    :pswitch_9
    sget-object p1, Lcom/xiaomi/aiasst/vision/sdk/AiTranslateResult;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {p2, p1}, Lcom/xiaomi/aiasst/vision/sdk/ITranslateSdkCallback$a;->a(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/xiaomi/aiasst/vision/sdk/AiTranslateResult;

    invoke-interface {p0, p1}, Lcom/xiaomi/aiasst/vision/sdk/ITranslateSdkCallback;->D6(Lcom/xiaomi/aiasst/vision/sdk/AiTranslateResult;)V

    :goto_0
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-static {p3, p1, v0}, Lcom/xiaomi/aiasst/vision/sdk/ITranslateSdkCallback$a;->b(Landroid/os/Parcel;Landroid/os/Parcelable;I)V

    goto :goto_3

    :pswitch_a
    invoke-interface {p0}, Lcom/xiaomi/aiasst/vision/sdk/ITranslateSdkCallback;->E0()V

    goto :goto_2

    :pswitch_b
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    if-eqz p1, :cond_1

    move p1, v0

    goto :goto_1

    :cond_1
    const/4 p1, 0x0

    :goto_1
    invoke-interface {p0, p1}, Lcom/xiaomi/aiasst/vision/sdk/ITranslateSdkCallback;->x2(Z)V

    goto :goto_2

    :pswitch_c
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    invoke-interface {p0, p1}, Lcom/xiaomi/aiasst/vision/sdk/ITranslateSdkCallback;->w(Ljava/lang/String;)V

    :goto_2
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    :goto_3
    return v0

    :cond_2
    invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return v0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
