.class public abstract Lcom/miui/vpnsdkmanager/IMiuiVpnSdkService$Stub;
.super Landroid/os/Binder;
.source "SourceFile"

# interfaces
.implements Lcom/miui/vpnsdkmanager/IMiuiVpnSdkService;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/vpnsdkmanager/IMiuiVpnSdkService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/vpnsdkmanager/IMiuiVpnSdkService$Stub$a;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    const-string v0, "com.miui.vpnsdkmanager.IMiuiVpnSdkService"

    invoke-virtual {p0, p0, v0}, Landroid/os/Binder;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lcom/miui/vpnsdkmanager/IMiuiVpnSdkService;
    .locals 2

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    const-string v0, "com.miui.vpnsdkmanager.IMiuiVpnSdkService"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    if-eqz v0, :cond_1

    instance-of v1, v0, Lcom/miui/vpnsdkmanager/IMiuiVpnSdkService;

    if-eqz v1, :cond_1

    check-cast v0, Lcom/miui/vpnsdkmanager/IMiuiVpnSdkService;

    return-object v0

    :cond_1
    new-instance v0, Lcom/miui/vpnsdkmanager/IMiuiVpnSdkService$Stub$a;

    invoke-direct {v0, p0}, Lcom/miui/vpnsdkmanager/IMiuiVpnSdkService$Stub$a;-><init>(Landroid/os/IBinder;)V

    return-object v0
.end method

.method public static v1()Lcom/miui/vpnsdkmanager/IMiuiVpnSdkService;
    .locals 1

    sget-object v0, Lcom/miui/vpnsdkmanager/IMiuiVpnSdkService$Stub$a;->k:Lcom/miui/vpnsdkmanager/IMiuiVpnSdkService;

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

    const-string v1, "com.miui.vpnsdkmanager.IMiuiVpnSdkService"

    const v2, 0x5f4e5446

    if-eq p1, v2, :cond_3

    const/4 v2, 0x0

    packed-switch p1, :pswitch_data_0

    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result p1

    return p1

    :pswitch_0
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p3

    invoke-static {p3}, Lcom/miui/networkassistant/vpn/miui/IMiuiVoiceChangeCallback$Stub;->asInterface(Landroid/os/IBinder;)Lcom/miui/networkassistant/vpn/miui/IMiuiVoiceChangeCallback;

    move-result-object p3

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p2

    invoke-interface {p0, p1, p3, p2}, Lcom/miui/vpnsdkmanager/IMiuiVpnSdkService;->I(ILcom/miui/networkassistant/vpn/miui/IMiuiVoiceChangeCallback;I)V

    return v0

    :pswitch_1
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p4

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p2

    invoke-interface {p0, p1, p4, p2}, Lcom/miui/vpnsdkmanager/IMiuiVpnSdkService;->getSettingWithChannel(Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return v0

    :pswitch_2
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    if-eqz p1, :cond_0

    move v2, v0

    :cond_0
    invoke-interface {p0, v2}, Lcom/miui/vpnsdkmanager/IMiuiVpnSdkService;->setDSDASwitch(Z)V

    return v0

    :pswitch_3
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p2

    invoke-interface {p0, p1, p2}, Lcom/miui/vpnsdkmanager/IMiuiVpnSdkService;->detectTimeDelay(Ljava/lang/String;I)V

    return v0

    :pswitch_4
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p2

    invoke-static {p2}, Lcom/miui/networkassistant/vpn/miui/IMiuiVoiceChangeCallback$Stub;->asInterface(Landroid/os/IBinder;)Lcom/miui/networkassistant/vpn/miui/IMiuiVoiceChangeCallback;

    move-result-object p2

    invoke-interface {p0, p1, p2}, Lcom/miui/vpnsdkmanager/IMiuiVpnSdkService;->R5(ILcom/miui/networkassistant/vpn/miui/IMiuiVoiceChangeCallback;)V

    return v0

    :pswitch_5
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    if-eqz p1, :cond_1

    move v2, v0

    :cond_1
    invoke-interface {p0, v2}, Lcom/miui/vpnsdkmanager/IMiuiVpnSdkService;->c2(Z)[B

    move-result-object p1

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeByteArray([B)V

    return v0

    :pswitch_6
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-interface {p0}, Lcom/miui/vpnsdkmanager/IMiuiVpnSdkService;->W2()V

    return v0

    :pswitch_7
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    if-eqz p1, :cond_2

    move v2, v0

    :cond_2
    invoke-virtual {p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object p1

    invoke-interface {p0, v2, p1}, Lcom/miui/vpnsdkmanager/IMiuiVpnSdkService;->h7(Z[B)V

    return v0

    :pswitch_8
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-interface {p0}, Lcom/miui/vpnsdkmanager/IMiuiVpnSdkService;->T1()V

    return v0

    :pswitch_9
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-interface {p0}, Lcom/miui/vpnsdkmanager/IMiuiVpnSdkService;->w4()I

    move-result p1

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    return v0

    :pswitch_a
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p2

    invoke-interface {p0, p1, p2}, Lcom/miui/vpnsdkmanager/IMiuiVpnSdkService;->y4(Ljava/lang/String;I)Ljava/util/List;

    move-result-object p1

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    return v0

    :pswitch_b
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p2

    invoke-static {p2}, Lcom/miui/networkassistant/vpn/miui/IMiuiVoiceChangeCallback$Stub;->asInterface(Landroid/os/IBinder;)Lcom/miui/networkassistant/vpn/miui/IMiuiVoiceChangeCallback;

    move-result-object p2

    invoke-interface {p0, p1, p2}, Lcom/miui/vpnsdkmanager/IMiuiVpnSdkService;->h6(Ljava/lang/String;Lcom/miui/networkassistant/vpn/miui/IMiuiVoiceChangeCallback;)V

    return v0

    :pswitch_c
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p1

    invoke-static {p1}, Lcom/miui/networkassistant/vpn/miui/IMiuiVoiceChangeCallback$Stub;->asInterface(Landroid/os/IBinder;)Lcom/miui/networkassistant/vpn/miui/IMiuiVoiceChangeCallback;

    move-result-object p1

    invoke-interface {p0, p1}, Lcom/miui/vpnsdkmanager/IMiuiVpnSdkService;->S(Lcom/miui/networkassistant/vpn/miui/IMiuiVoiceChangeCallback;)V

    return v0

    :pswitch_d
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p1

    invoke-static {p1}, Lcom/miui/networkassistant/vpn/miui/IMiuiVoiceChangeCallback$Stub;->asInterface(Landroid/os/IBinder;)Lcom/miui/networkassistant/vpn/miui/IMiuiVoiceChangeCallback;

    move-result-object p1

    invoke-interface {p0, p1}, Lcom/miui/vpnsdkmanager/IMiuiVpnSdkService;->D7(Lcom/miui/networkassistant/vpn/miui/IMiuiVoiceChangeCallback;)V

    return v0

    :pswitch_e
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p1

    invoke-static {p1}, Lcom/miui/networkassistant/vpn/miui/IMiuiVoiceChangeCallback$Stub;->asInterface(Landroid/os/IBinder;)Lcom/miui/networkassistant/vpn/miui/IMiuiVoiceChangeCallback;

    move-result-object p1

    invoke-interface {p0, p1}, Lcom/miui/vpnsdkmanager/IMiuiVpnSdkService;->W1(Lcom/miui/networkassistant/vpn/miui/IMiuiVoiceChangeCallback;)V

    return v0

    :pswitch_f
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p4

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p2

    invoke-interface {p0, p1, p4, p2}, Lcom/miui/vpnsdkmanager/IMiuiVpnSdkService;->z7(III)I

    move-result p1

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    return v0

    :pswitch_10
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p4

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p2

    invoke-interface {p0, p1, p4, p2}, Lcom/miui/vpnsdkmanager/IMiuiVpnSdkService;->n4(ILjava/lang/String;I)I

    move-result p1

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    return v0

    :pswitch_11
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-interface {p0}, Lcom/miui/vpnsdkmanager/IMiuiVpnSdkService;->n8()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return v0

    :pswitch_12
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p1

    invoke-static {p1}, Lcom/miui/networkassistant/vpn/miui/IMiuiVoiceChangeCallback$Stub;->asInterface(Landroid/os/IBinder;)Lcom/miui/networkassistant/vpn/miui/IMiuiVoiceChangeCallback;

    move-result-object p1

    invoke-interface {p0, p1}, Lcom/miui/vpnsdkmanager/IMiuiVpnSdkService;->O4(Lcom/miui/networkassistant/vpn/miui/IMiuiVoiceChangeCallback;)V

    return v0

    :pswitch_13
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p1

    invoke-static {p1}, Lcom/miui/networkassistant/vpn/miui/IMiuiVoiceChangeCallback$Stub;->asInterface(Landroid/os/IBinder;)Lcom/miui/networkassistant/vpn/miui/IMiuiVoiceChangeCallback;

    move-result-object p1

    invoke-interface {p0, p1}, Lcom/miui/vpnsdkmanager/IMiuiVpnSdkService;->Q5(Lcom/miui/networkassistant/vpn/miui/IMiuiVoiceChangeCallback;)V

    return v0

    :pswitch_14
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-interface {p0}, Lcom/miui/vpnsdkmanager/IMiuiVpnSdkService;->N6()Z

    move-result p1

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    return v0

    :pswitch_15
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-interface {p0}, Lcom/miui/vpnsdkmanager/IMiuiVpnSdkService;->getCoupons()V

    return v0

    :pswitch_16
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p2

    invoke-interface {p0, p1, p2}, Lcom/miui/vpnsdkmanager/IMiuiVpnSdkService;->f7(Ljava/lang/String;I)V

    return v0

    :pswitch_17
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p2

    invoke-interface {p0, p1, p2}, Lcom/miui/vpnsdkmanager/IMiuiVpnSdkService;->setSetting(Ljava/lang/String;Ljava/lang/String;)Z

    move-result p1

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    return v0

    :pswitch_18
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p2

    invoke-interface {p0, p1, p2}, Lcom/miui/vpnsdkmanager/IMiuiVpnSdkService;->getSetting(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return v0

    :pswitch_19
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-interface {p0}, Lcom/miui/vpnsdkmanager/IMiuiVpnSdkService;->B3()I

    move-result p1

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    return v0

    :pswitch_1a
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-interface {p0}, Lcom/miui/vpnsdkmanager/IMiuiVpnSdkService;->H0()I

    move-result p1

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    return v0

    :pswitch_1b
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-interface {p0}, Lcom/miui/vpnsdkmanager/IMiuiVpnSdkService;->refreshUserState()I

    move-result p1

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    return v0

    :pswitch_1c
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-interface {p0}, Lcom/miui/vpnsdkmanager/IMiuiVpnSdkService;->M4()I

    move-result p1

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    return v0

    :pswitch_1d
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    invoke-interface {p0, p1}, Lcom/miui/vpnsdkmanager/IMiuiVpnSdkService;->q2(I)I

    move-result p1

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    return v0

    :pswitch_1e
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    invoke-virtual {p2}, Landroid/os/Parcel;->createStringArrayList()Ljava/util/ArrayList;

    move-result-object p2

    invoke-interface {p0, p1, p2}, Lcom/miui/vpnsdkmanager/IMiuiVpnSdkService;->b2(ILjava/util/List;)I

    move-result p1

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    return v0

    :pswitch_1f
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p1

    invoke-static {p1}, Lcom/miui/networkassistant/vpn/miui/IMiuiVpnManageServiceCallback$Stub;->asInterface(Landroid/os/IBinder;)Lcom/miui/networkassistant/vpn/miui/IMiuiVpnManageServiceCallback;

    move-result-object p1

    invoke-interface {p0, p1}, Lcom/miui/vpnsdkmanager/IMiuiVpnSdkService;->registerCallback(Lcom/miui/networkassistant/vpn/miui/IMiuiVpnManageServiceCallback;)V

    return v0

    :cond_3
    invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return v0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1f
        :pswitch_1e
        :pswitch_1d
        :pswitch_1c
        :pswitch_1b
        :pswitch_1a
        :pswitch_19
        :pswitch_18
        :pswitch_17
        :pswitch_16
        :pswitch_15
        :pswitch_14
        :pswitch_13
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
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
