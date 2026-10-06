.class public abstract Lcom/milink/sdk/cast/IMiLinkMediaCallback$Stub;
.super Landroid/os/Binder;
.source "SourceFile"

# interfaces
.implements Lcom/milink/sdk/cast/IMiLinkMediaCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/milink/sdk/cast/IMiLinkMediaCallback;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/milink/sdk/cast/IMiLinkMediaCallback$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "com.milink.sdk.cast.IMiLinkMediaCallback"

.field static final TRANSACTION_onLoading:I = 0x1

.field static final TRANSACTION_onNextAudio:I = 0x6

.field static final TRANSACTION_onPaused:I = 0x4

.field static final TRANSACTION_onPlaying:I = 0x2

.field static final TRANSACTION_onPrevAudio:I = 0x7

.field static final TRANSACTION_onStopped:I = 0x3

.field static final TRANSACTION_onVolume:I = 0x5


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    const-string v0, "com.milink.sdk.cast.IMiLinkMediaCallback"

    invoke-virtual {p0, p0, v0}, Landroid/os/Binder;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lcom/milink/sdk/cast/IMiLinkMediaCallback;
    .locals 2

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    const-string v0, "com.milink.sdk.cast.IMiLinkMediaCallback"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    if-eqz v0, :cond_1

    instance-of v1, v0, Lcom/milink/sdk/cast/IMiLinkMediaCallback;

    if-eqz v1, :cond_1

    check-cast v0, Lcom/milink/sdk/cast/IMiLinkMediaCallback;

    return-object v0

    :cond_1
    new-instance v0, Lcom/milink/sdk/cast/IMiLinkMediaCallback$Stub$Proxy;

    invoke-direct {v0, p0}, Lcom/milink/sdk/cast/IMiLinkMediaCallback$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v0
.end method

.method public static getDefaultImpl()Lcom/milink/sdk/cast/IMiLinkMediaCallback;
    .locals 1

    sget-object v0, Lcom/milink/sdk/cast/IMiLinkMediaCallback$Stub$Proxy;->sDefaultImpl:Lcom/milink/sdk/cast/IMiLinkMediaCallback;

    return-object v0
.end method

.method public static setDefaultImpl(Lcom/milink/sdk/cast/IMiLinkMediaCallback;)Z
    .locals 1

    sget-object v0, Lcom/milink/sdk/cast/IMiLinkMediaCallback$Stub$Proxy;->sDefaultImpl:Lcom/milink/sdk/cast/IMiLinkMediaCallback;

    if-nez v0, :cond_0

    if-eqz p0, :cond_0

    sput-object p0, Lcom/milink/sdk/cast/IMiLinkMediaCallback$Stub$Proxy;->sDefaultImpl:Lcom/milink/sdk/cast/IMiLinkMediaCallback;

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 0

    return-object p0
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 3

    const v0, 0x5f4e5446

    const/4 v1, 0x1

    const-string v2, "com.milink.sdk.cast.IMiLinkMediaCallback"

    if-eq p1, v0, :cond_2

    const/4 v0, 0x0

    packed-switch p1, :pswitch_data_0

    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result p1

    return p1

    :pswitch_0
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    if-eqz p1, :cond_0

    move v0, v1

    :cond_0
    invoke-interface {p0, v0}, Lcom/milink/sdk/cast/IMiLinkMediaCallback;->onPrevAudio(Z)V

    :goto_0
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v1

    :pswitch_1
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    if-eqz p1, :cond_1

    move v0, v1

    :cond_1
    invoke-interface {p0, v0}, Lcom/milink/sdk/cast/IMiLinkMediaCallback;->onNextAudio(Z)V

    goto :goto_0

    :pswitch_2
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    invoke-interface {p0, p1}, Lcom/milink/sdk/cast/IMiLinkMediaCallback;->onVolume(I)V

    goto :goto_0

    :pswitch_3
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-interface {p0}, Lcom/milink/sdk/cast/IMiLinkMediaCallback;->onPaused()V

    goto :goto_0

    :pswitch_4
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-interface {p0}, Lcom/milink/sdk/cast/IMiLinkMediaCallback;->onStopped()V

    goto :goto_0

    :pswitch_5
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-interface {p0}, Lcom/milink/sdk/cast/IMiLinkMediaCallback;->onPlaying()V

    goto :goto_0

    :pswitch_6
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-interface {p0}, Lcom/milink/sdk/cast/IMiLinkMediaCallback;->onLoading()V

    goto :goto_0

    :cond_2
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return v1

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
