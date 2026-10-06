.class public abstract Lcom/miui/networkassistant/service/IFirewallBinder$Stub;
.super Landroid/os/Binder;
.source "SourceFile"

# interfaces
.implements Lcom/miui/networkassistant/service/IFirewallBinder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/networkassistant/service/IFirewallBinder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/networkassistant/service/IFirewallBinder$Stub$Proxy;
    }
.end annotation


# static fields
.field static final TRANSACTION_getMobileRestrictPackages:I = 0xc

.field static final TRANSACTION_getMobileRule:I = 0xa

.field static final TRANSACTION_getRoamingAppCountByRule:I = 0x13

.field static final TRANSACTION_getRoamingRule:I = 0x10

.field static final TRANSACTION_getRoamingWhiteListEnable:I = 0x12

.field static final TRANSACTION_getRule:I = 0x2

.field static final TRANSACTION_getTempMobileRule:I = 0xe

.field static final TRANSACTION_getTempWifiRule:I = 0x8

.field static final TRANSACTION_getWifiRestrictPackages:I = 0x6

.field static final TRANSACTION_getWifiRule:I = 0x4

.field static final TRANSACTION_isStarted:I = 0x1

.field static final TRANSACTION_setMobileRule:I = 0x9

.field static final TRANSACTION_setMobileRuleForPackages:I = 0xb

.field static final TRANSACTION_setRoamingRule:I = 0xf

.field static final TRANSACTION_setRoamingWhiteListEnable:I = 0x11

.field static final TRANSACTION_setTempMobileRule:I = 0xd

.field static final TRANSACTION_setTempWifiRule:I = 0x7

.field static final TRANSACTION_setWifiRule:I = 0x3

.field static final TRANSACTION_setWifiRuleForPackages:I = 0x5


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    const-string v0, "com.miui.networkassistant.service.IFirewallBinder"

    invoke-virtual {p0, p0, v0}, Landroid/os/Binder;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lcom/miui/networkassistant/service/IFirewallBinder;
    .locals 2

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    const-string v0, "com.miui.networkassistant.service.IFirewallBinder"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    if-eqz v0, :cond_1

    instance-of v1, v0, Lcom/miui/networkassistant/service/IFirewallBinder;

    if-eqz v1, :cond_1

    check-cast v0, Lcom/miui/networkassistant/service/IFirewallBinder;

    return-object v0

    :cond_1
    new-instance v0, Lcom/miui/networkassistant/service/IFirewallBinder$Stub$Proxy;

    invoke-direct {v0, p0}, Lcom/miui/networkassistant/service/IFirewallBinder$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v0
.end method

.method public static getDefaultImpl()Lcom/miui/networkassistant/service/IFirewallBinder;
    .locals 1

    sget-object v0, Lcom/miui/networkassistant/service/IFirewallBinder$Stub$Proxy;->sDefaultImpl:Lcom/miui/networkassistant/service/IFirewallBinder;

    return-object v0
.end method

.method public static setDefaultImpl(Lcom/miui/networkassistant/service/IFirewallBinder;)Z
    .locals 1

    sget-object v0, Lcom/miui/networkassistant/service/IFirewallBinder$Stub$Proxy;->sDefaultImpl:Lcom/miui/networkassistant/service/IFirewallBinder;

    if-nez v0, :cond_1

    if-eqz p0, :cond_0

    sput-object p0, Lcom/miui/networkassistant/service/IFirewallBinder$Stub$Proxy;->sDefaultImpl:Lcom/miui/networkassistant/service/IFirewallBinder;

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
    .locals 4

    const/4 v0, 0x1

    const-string v1, "com.miui.networkassistant.service.IFirewallBinder"

    const v2, 0x5f4e5446

    if-eq p1, v2, :cond_d

    const/4 v2, 0x0

    const/4 v3, 0x0

    packed-switch p1, :pswitch_data_0

    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result p1

    return p1

    :pswitch_0
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    if-eqz p1, :cond_0

    sget-object p1, Lcom/miui/networkassistant/model/FirewallRule;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {p1, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object p1

    move-object v2, p1

    check-cast v2, Lcom/miui/networkassistant/model/FirewallRule;

    :cond_0
    invoke-interface {p0, v2}, Lcom/miui/networkassistant/service/IFirewallBinder;->getRoamingAppCountByRule(Lcom/miui/networkassistant/model/FirewallRule;)I

    move-result p1

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    return v0

    :pswitch_1
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-interface {p0}, Lcom/miui/networkassistant/service/IFirewallBinder;->getRoamingWhiteListEnable()Z

    move-result p1

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    return v0

    :pswitch_2
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    if-eqz p1, :cond_1

    move v3, v0

    :cond_1
    invoke-interface {p0, v3}, Lcom/miui/networkassistant/service/IFirewallBinder;->setRoamingWhiteListEnable(Z)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v0

    :pswitch_3
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    invoke-interface {p0, p1}, Lcom/miui/networkassistant/service/IFirewallBinder;->getRoamingRule(Ljava/lang/String;)Lcom/miui/networkassistant/model/FirewallRule;

    move-result-object p1

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz p1, :cond_2

    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    invoke-virtual {p1, p3, v0}, Lcom/miui/networkassistant/model/FirewallRule;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_0

    :cond_2
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeInt(I)V

    :goto_0
    return v0

    :pswitch_4
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p4

    if-eqz p4, :cond_3

    sget-object p4, Lcom/miui/networkassistant/model/FirewallRule;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {p4, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object p2

    move-object v2, p2

    check-cast v2, Lcom/miui/networkassistant/model/FirewallRule;

    :cond_3
    invoke-interface {p0, p1, v2}, Lcom/miui/networkassistant/service/IFirewallBinder;->setRoamingRule(Ljava/lang/String;Lcom/miui/networkassistant/model/FirewallRule;)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v0

    :pswitch_5
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p2

    invoke-interface {p0, p1, p2}, Lcom/miui/networkassistant/service/IFirewallBinder;->getTempMobileRule(Ljava/lang/String;I)Lcom/miui/networkassistant/model/FirewallRule;

    move-result-object p1

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz p1, :cond_4

    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    invoke-virtual {p1, p3, v0}, Lcom/miui/networkassistant/model/FirewallRule;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_1

    :cond_4
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeInt(I)V

    :goto_1
    return v0

    :pswitch_6
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p4

    if-eqz p4, :cond_5

    sget-object p4, Lcom/miui/networkassistant/model/FirewallRule;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {p4, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object p4

    move-object v2, p4

    check-cast v2, Lcom/miui/networkassistant/model/FirewallRule;

    :cond_5
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p4

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p2

    invoke-interface {p0, p1, v2, p4, p2}, Lcom/miui/networkassistant/service/IFirewallBinder;->setTempMobileRule(Ljava/lang/String;Lcom/miui/networkassistant/model/FirewallRule;Ljava/lang/String;I)Z

    move-result p1

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    return v0

    :pswitch_7
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    invoke-interface {p0, p1}, Lcom/miui/networkassistant/service/IFirewallBinder;->getMobileRestrictPackages(I)Ljava/util/List;

    move-result-object p1

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeStringList(Ljava/util/List;)V

    return v0

    :pswitch_8
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object p1

    invoke-virtual {p2, p1}, Landroid/os/Parcel;->readHashMap(Ljava/lang/ClassLoader;)Ljava/util/HashMap;

    move-result-object p1

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p2

    invoke-interface {p0, p1, p2}, Lcom/miui/networkassistant/service/IFirewallBinder;->setMobileRuleForPackages(Ljava/util/Map;I)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v0

    :pswitch_9
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p2

    invoke-interface {p0, p1, p2}, Lcom/miui/networkassistant/service/IFirewallBinder;->getMobileRule(Ljava/lang/String;I)Lcom/miui/networkassistant/model/FirewallRule;

    move-result-object p1

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz p1, :cond_6

    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    invoke-virtual {p1, p3, v0}, Lcom/miui/networkassistant/model/FirewallRule;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_2

    :cond_6
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeInt(I)V

    :goto_2
    return v0

    :pswitch_a
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p4

    if-eqz p4, :cond_7

    sget-object p4, Lcom/miui/networkassistant/model/FirewallRule;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {p4, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object p4

    move-object v2, p4

    check-cast v2, Lcom/miui/networkassistant/model/FirewallRule;

    :cond_7
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p2

    invoke-interface {p0, p1, v2, p2}, Lcom/miui/networkassistant/service/IFirewallBinder;->setMobileRule(Ljava/lang/String;Lcom/miui/networkassistant/model/FirewallRule;I)Z

    move-result p1

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    return v0

    :pswitch_b
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    invoke-interface {p0, p1}, Lcom/miui/networkassistant/service/IFirewallBinder;->getTempWifiRule(Ljava/lang/String;)Lcom/miui/networkassistant/model/FirewallRule;

    move-result-object p1

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz p1, :cond_8

    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    invoke-virtual {p1, p3, v0}, Lcom/miui/networkassistant/model/FirewallRule;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_3

    :cond_8
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeInt(I)V

    :goto_3
    return v0

    :pswitch_c
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p4

    if-eqz p4, :cond_9

    sget-object p4, Lcom/miui/networkassistant/model/FirewallRule;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {p4, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object p4

    move-object v2, p4

    check-cast v2, Lcom/miui/networkassistant/model/FirewallRule;

    :cond_9
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p2

    invoke-interface {p0, p1, v2, p2}, Lcom/miui/networkassistant/service/IFirewallBinder;->setTempWifiRule(Ljava/lang/String;Lcom/miui/networkassistant/model/FirewallRule;Ljava/lang/String;)Z

    move-result p1

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    return v0

    :pswitch_d
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-interface {p0}, Lcom/miui/networkassistant/service/IFirewallBinder;->getWifiRestrictPackages()Ljava/util/List;

    move-result-object p1

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeStringList(Ljava/util/List;)V

    return v0

    :pswitch_e
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object p1

    invoke-virtual {p2, p1}, Landroid/os/Parcel;->readHashMap(Ljava/lang/ClassLoader;)Ljava/util/HashMap;

    move-result-object p1

    invoke-interface {p0, p1}, Lcom/miui/networkassistant/service/IFirewallBinder;->setWifiRuleForPackages(Ljava/util/Map;)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v0

    :pswitch_f
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    invoke-interface {p0, p1}, Lcom/miui/networkassistant/service/IFirewallBinder;->getWifiRule(Ljava/lang/String;)Lcom/miui/networkassistant/model/FirewallRule;

    move-result-object p1

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz p1, :cond_a

    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    invoke-virtual {p1, p3, v0}, Lcom/miui/networkassistant/model/FirewallRule;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_4

    :cond_a
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeInt(I)V

    :goto_4
    return v0

    :pswitch_10
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p4

    if-eqz p4, :cond_b

    sget-object p4, Lcom/miui/networkassistant/model/FirewallRule;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {p4, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object p2

    move-object v2, p2

    check-cast v2, Lcom/miui/networkassistant/model/FirewallRule;

    :cond_b
    invoke-interface {p0, p1, v2}, Lcom/miui/networkassistant/service/IFirewallBinder;->setWifiRule(Ljava/lang/String;Lcom/miui/networkassistant/model/FirewallRule;)Z

    move-result p1

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    return v0

    :pswitch_11
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    invoke-interface {p0, p1}, Lcom/miui/networkassistant/service/IFirewallBinder;->getRule(Ljava/lang/String;)Lcom/miui/networkassistant/model/FirewallRuleSet;

    move-result-object p1

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz p1, :cond_c

    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    invoke-virtual {p1, p3, v0}, Lcom/miui/networkassistant/model/FirewallRuleSet;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_5

    :cond_c
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeInt(I)V

    :goto_5
    return v0

    :pswitch_12
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-interface {p0}, Lcom/miui/networkassistant/service/IFirewallBinder;->isStarted()Z

    move-result p1

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    return v0

    :cond_d
    invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return v0

    nop

    :pswitch_data_0
    .packed-switch 0x1
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
