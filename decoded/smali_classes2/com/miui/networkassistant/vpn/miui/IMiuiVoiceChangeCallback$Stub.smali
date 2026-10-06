.class public abstract Lcom/miui/networkassistant/vpn/miui/IMiuiVoiceChangeCallback$Stub;
.super Landroid/os/Binder;
.source "SourceFile"

# interfaces
.implements Lcom/miui/networkassistant/vpn/miui/IMiuiVoiceChangeCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/networkassistant/vpn/miui/IMiuiVoiceChangeCallback;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/networkassistant/vpn/miui/IMiuiVoiceChangeCallback$Stub$Proxy;
    }
.end annotation


# static fields
.field static final TRANSACTION_onQueryTrialStateResult:I = 0x4

.field static final TRANSACTION_onQueryTwiceTrialStateResult:I = 0x5

.field static final TRANSACTION_onRequestTrialResult:I = 0x3

.field static final TRANSACTION_onServiceAvaliable:I = 0x1

.field static final TRANSACTION_onUserInfoRefresh:I = 0x2

.field static final TRANSACTION_onUserStatusRefresh:I = 0x7

.field static final TRANSACTION_onWebPageDismiss:I = 0x6


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    const-string v0, "com.miui.networkassistant.vpn.miui.IMiuiVoiceChangeCallback"

    invoke-virtual {p0, p0, v0}, Landroid/os/Binder;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lcom/miui/networkassistant/vpn/miui/IMiuiVoiceChangeCallback;
    .locals 2

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    const-string v0, "com.miui.networkassistant.vpn.miui.IMiuiVoiceChangeCallback"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    if-eqz v0, :cond_1

    instance-of v1, v0, Lcom/miui/networkassistant/vpn/miui/IMiuiVoiceChangeCallback;

    if-eqz v1, :cond_1

    check-cast v0, Lcom/miui/networkassistant/vpn/miui/IMiuiVoiceChangeCallback;

    return-object v0

    :cond_1
    new-instance v0, Lcom/miui/networkassistant/vpn/miui/IMiuiVoiceChangeCallback$Stub$Proxy;

    invoke-direct {v0, p0}, Lcom/miui/networkassistant/vpn/miui/IMiuiVoiceChangeCallback$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v0
.end method

.method public static getDefaultImpl()Lcom/miui/networkassistant/vpn/miui/IMiuiVoiceChangeCallback;
    .locals 1

    sget-object v0, Lcom/miui/networkassistant/vpn/miui/IMiuiVoiceChangeCallback$Stub$Proxy;->sDefaultImpl:Lcom/miui/networkassistant/vpn/miui/IMiuiVoiceChangeCallback;

    return-object v0
.end method

.method public static setDefaultImpl(Lcom/miui/networkassistant/vpn/miui/IMiuiVoiceChangeCallback;)Z
    .locals 1

    sget-object v0, Lcom/miui/networkassistant/vpn/miui/IMiuiVoiceChangeCallback$Stub$Proxy;->sDefaultImpl:Lcom/miui/networkassistant/vpn/miui/IMiuiVoiceChangeCallback;

    if-nez v0, :cond_1

    if-eqz p0, :cond_0

    sput-object p0, Lcom/miui/networkassistant/vpn/miui/IMiuiVoiceChangeCallback$Stub$Proxy;->sDefaultImpl:Lcom/miui/networkassistant/vpn/miui/IMiuiVoiceChangeCallback;

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0

    :cond_1
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string v0, "setDefaultImpl() called twice"

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 0

    return-object p0
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 3

    const/4 v0, 0x1

    const-string v1, "com.miui.networkassistant.vpn.miui.IMiuiVoiceChangeCallback"

    const v2, 0x5f4e5446

    if-eq p1, v2, :cond_0

    packed-switch p1, :pswitch_data_0

    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result p1

    return p1

    :pswitch_0
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    invoke-interface {p0, p1}, Lcom/miui/networkassistant/vpn/miui/IMiuiVoiceChangeCallback;->onUserStatusRefresh(I)V

    :goto_0
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v0

    :pswitch_1
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-interface {p0}, Lcom/miui/networkassistant/vpn/miui/IMiuiVoiceChangeCallback;->onWebPageDismiss()V

    goto :goto_0

    :pswitch_2
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p4

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p2

    invoke-interface {p0, p1, p4, p2}, Lcom/miui/networkassistant/vpn/miui/IMiuiVoiceChangeCallback;->onQueryTwiceTrialStateResult(ILjava/lang/String;I)V

    goto :goto_0

    :pswitch_3
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p2

    invoke-interface {p0, p1, p2}, Lcom/miui/networkassistant/vpn/miui/IMiuiVoiceChangeCallback;->onQueryTrialStateResult(II)V

    goto :goto_0

    :pswitch_4
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    invoke-interface {p0, p1}, Lcom/miui/networkassistant/vpn/miui/IMiuiVoiceChangeCallback;->onRequestTrialResult(I)V

    goto :goto_0

    :pswitch_5
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-interface {p0}, Lcom/miui/networkassistant/vpn/miui/IMiuiVoiceChangeCallback;->onUserInfoRefresh()V

    goto :goto_0

    :pswitch_6
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    invoke-interface {p0, p1}, Lcom/miui/networkassistant/vpn/miui/IMiuiVoiceChangeCallback;->onServiceAvaliable(I)V

    goto :goto_0

    :cond_0
    invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return v0

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
