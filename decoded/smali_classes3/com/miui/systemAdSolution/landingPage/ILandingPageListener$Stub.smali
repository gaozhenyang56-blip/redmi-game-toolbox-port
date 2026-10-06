.class public abstract Lcom/miui/systemAdSolution/landingPage/ILandingPageListener$Stub;
.super Landroid/os/Binder;
.source "SourceFile"

# interfaces
.implements Lcom/miui/systemAdSolution/landingPage/ILandingPageListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/systemAdSolution/landingPage/ILandingPageListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/systemAdSolution/landingPage/ILandingPageListener$Stub$Proxy;
    }
.end annotation


# static fields
.field static final TRANSACTION_onDeeplinkFail:I = 0xa

.field static final TRANSACTION_onDeeplinkSuccess:I = 0x9

.field static final TRANSACTION_onDownloadCancel:I = 0x6

.field static final TRANSACTION_onDownloadFail:I = 0x3

.field static final TRANSACTION_onDownloadPause:I = 0x4

.field static final TRANSACTION_onDownloadProgress:I = 0x5

.field static final TRANSACTION_onDownloadStart:I = 0x1

.field static final TRANSACTION_onDownloadSuccess:I = 0x2

.field static final TRANSACTION_onH5Fail:I = 0xc

.field static final TRANSACTION_onH5Success:I = 0xb

.field static final TRANSACTION_onInstallFail:I = 0x8

.field static final TRANSACTION_onInstallSuccess:I = 0x7

.field static final TRANSACTION_onLanuchAppFail:I = 0xe

.field static final TRANSACTION_onLanuchAppSuccess:I = 0xd


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    const-string v0, "com.miui.systemAdSolution.landingPage.ILandingPageListener"

    invoke-virtual {p0, p0, v0}, Landroid/os/Binder;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lcom/miui/systemAdSolution/landingPage/ILandingPageListener;
    .locals 2

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    const-string v0, "com.miui.systemAdSolution.landingPage.ILandingPageListener"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    if-eqz v0, :cond_1

    instance-of v1, v0, Lcom/miui/systemAdSolution/landingPage/ILandingPageListener;

    if-eqz v1, :cond_1

    check-cast v0, Lcom/miui/systemAdSolution/landingPage/ILandingPageListener;

    return-object v0

    :cond_1
    new-instance v0, Lcom/miui/systemAdSolution/landingPage/ILandingPageListener$Stub$Proxy;

    invoke-direct {v0, p0}, Lcom/miui/systemAdSolution/landingPage/ILandingPageListener$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v0
.end method

.method public static getDefaultImpl()Lcom/miui/systemAdSolution/landingPage/ILandingPageListener;
    .locals 1

    sget-object v0, Lcom/miui/systemAdSolution/landingPage/ILandingPageListener$Stub$Proxy;->sDefaultImpl:Lcom/miui/systemAdSolution/landingPage/ILandingPageListener;

    return-object v0
.end method

.method public static setDefaultImpl(Lcom/miui/systemAdSolution/landingPage/ILandingPageListener;)Z
    .locals 1

    sget-object v0, Lcom/miui/systemAdSolution/landingPage/ILandingPageListener$Stub$Proxy;->sDefaultImpl:Lcom/miui/systemAdSolution/landingPage/ILandingPageListener;

    if-nez v0, :cond_1

    if-eqz p0, :cond_0

    sput-object p0, Lcom/miui/systemAdSolution/landingPage/ILandingPageListener$Stub$Proxy;->sDefaultImpl:Lcom/miui/systemAdSolution/landingPage/ILandingPageListener;

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

    const-string v1, "com.miui.systemAdSolution.landingPage.ILandingPageListener"

    const v2, 0x5f4e5446

    if-eq p1, v2, :cond_0

    packed-switch p1, :pswitch_data_0

    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result p1

    return p1

    :pswitch_0
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-interface {p0}, Lcom/miui/systemAdSolution/landingPage/ILandingPageListener;->onLanuchAppFail()V

    :goto_0
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v0

    :pswitch_1
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-interface {p0}, Lcom/miui/systemAdSolution/landingPage/ILandingPageListener;->onLanuchAppSuccess()V

    goto :goto_0

    :pswitch_2
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-interface {p0}, Lcom/miui/systemAdSolution/landingPage/ILandingPageListener;->onH5Fail()V

    goto :goto_0

    :pswitch_3
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-interface {p0}, Lcom/miui/systemAdSolution/landingPage/ILandingPageListener;->onH5Success()V

    goto :goto_0

    :pswitch_4
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-interface {p0}, Lcom/miui/systemAdSolution/landingPage/ILandingPageListener;->onDeeplinkFail()V

    goto :goto_0

    :pswitch_5
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-interface {p0}, Lcom/miui/systemAdSolution/landingPage/ILandingPageListener;->onDeeplinkSuccess()V

    goto :goto_0

    :pswitch_6
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    invoke-interface {p0, p1}, Lcom/miui/systemAdSolution/landingPage/ILandingPageListener;->onInstallFail(Ljava/lang/String;)V

    goto :goto_0

    :pswitch_7
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-interface {p0}, Lcom/miui/systemAdSolution/landingPage/ILandingPageListener;->onInstallSuccess()V

    goto :goto_0

    :pswitch_8
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-interface {p0}, Lcom/miui/systemAdSolution/landingPage/ILandingPageListener;->onDownloadCancel()V

    goto :goto_0

    :pswitch_9
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    invoke-interface {p0, p1}, Lcom/miui/systemAdSolution/landingPage/ILandingPageListener;->onDownloadProgress(I)V

    goto :goto_0

    :pswitch_a
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    invoke-interface {p0, p1}, Lcom/miui/systemAdSolution/landingPage/ILandingPageListener;->onDownloadPause(Ljava/lang/String;)V

    goto :goto_0

    :pswitch_b
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    invoke-interface {p0, p1}, Lcom/miui/systemAdSolution/landingPage/ILandingPageListener;->onDownloadFail(Ljava/lang/String;)V

    goto :goto_0

    :pswitch_c
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-interface {p0}, Lcom/miui/systemAdSolution/landingPage/ILandingPageListener;->onDownloadSuccess()V

    goto :goto_0

    :pswitch_d
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-interface {p0}, Lcom/miui/systemAdSolution/landingPage/ILandingPageListener;->onDownloadStart()V

    goto :goto_0

    :cond_0
    invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return v0

    nop

    :pswitch_data_0
    .packed-switch 0x1
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
