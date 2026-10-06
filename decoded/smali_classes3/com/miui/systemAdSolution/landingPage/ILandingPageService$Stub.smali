.class public abstract Lcom/miui/systemAdSolution/landingPage/ILandingPageService$Stub;
.super Landroid/os/Binder;
.source "SourceFile"

# interfaces
.implements Lcom/miui/systemAdSolution/landingPage/ILandingPageService;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/systemAdSolution/landingPage/ILandingPageService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/systemAdSolution/landingPage/ILandingPageService$Stub$Proxy;
    }
.end annotation


# static fields
.field static final TRANSACTION_cancleDownload:I = 0x5

.field static final TRANSACTION_deeplinkStartApp:I = 0x1

.field static final TRANSACTION_getDownloadId:I = 0x8

.field static final TRANSACTION_getPackageInstallationStatus:I = 0x2

.field static final TRANSACTION_getServiceVersion:I = 0x7

.field static final TRANSACTION_registerListener:I = 0x6

.field static final TRANSACTION_showAppDetailCard:I = 0x3

.field static final TRANSACTION_startDownload:I = 0x4

.field static final TRANSACTION_unregisterListener:I = 0x9


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    const-string v0, "com.miui.systemAdSolution.landingPage.ILandingPageService"

    invoke-virtual {p0, p0, v0}, Landroid/os/Binder;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lcom/miui/systemAdSolution/landingPage/ILandingPageService;
    .locals 2

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    const-string v0, "com.miui.systemAdSolution.landingPage.ILandingPageService"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    if-eqz v0, :cond_1

    instance-of v1, v0, Lcom/miui/systemAdSolution/landingPage/ILandingPageService;

    if-eqz v1, :cond_1

    check-cast v0, Lcom/miui/systemAdSolution/landingPage/ILandingPageService;

    return-object v0

    :cond_1
    new-instance v0, Lcom/miui/systemAdSolution/landingPage/ILandingPageService$Stub$Proxy;

    invoke-direct {v0, p0}, Lcom/miui/systemAdSolution/landingPage/ILandingPageService$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v0
.end method

.method public static getDefaultImpl()Lcom/miui/systemAdSolution/landingPage/ILandingPageService;
    .locals 1

    sget-object v0, Lcom/miui/systemAdSolution/landingPage/ILandingPageService$Stub$Proxy;->sDefaultImpl:Lcom/miui/systemAdSolution/landingPage/ILandingPageService;

    return-object v0
.end method

.method public static setDefaultImpl(Lcom/miui/systemAdSolution/landingPage/ILandingPageService;)Z
    .locals 1

    sget-object v0, Lcom/miui/systemAdSolution/landingPage/ILandingPageService$Stub$Proxy;->sDefaultImpl:Lcom/miui/systemAdSolution/landingPage/ILandingPageService;

    if-nez v0, :cond_1

    if-eqz p0, :cond_0

    sput-object p0, Lcom/miui/systemAdSolution/landingPage/ILandingPageService$Stub$Proxy;->sDefaultImpl:Lcom/miui/systemAdSolution/landingPage/ILandingPageService;

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

    const-string v1, "com.miui.systemAdSolution.landingPage.ILandingPageService"

    const v2, 0x5f4e5446

    if-eq p1, v2, :cond_3

    const/4 v2, 0x0

    packed-switch p1, :pswitch_data_0

    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result p1

    return p1

    :pswitch_0
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p2

    invoke-static {p2}, Lcom/miui/systemAdSolution/landingPage/ILandingPageListener$Stub;->asInterface(Landroid/os/IBinder;)Lcom/miui/systemAdSolution/landingPage/ILandingPageListener;

    move-result-object p2

    invoke-interface {p0, p1, p2}, Lcom/miui/systemAdSolution/landingPage/ILandingPageService;->unregisterListener(Ljava/lang/String;Lcom/miui/systemAdSolution/landingPage/ILandingPageListener;)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v0

    :pswitch_1
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    invoke-interface {p0, p1}, Lcom/miui/systemAdSolution/landingPage/ILandingPageService;->getDownloadId(Ljava/lang/String;)J

    move-result-wide p1

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, p1, p2}, Landroid/os/Parcel;->writeLong(J)V

    return v0

    :pswitch_2
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-interface {p0}, Lcom/miui/systemAdSolution/landingPage/ILandingPageService;->getServiceVersion()I

    move-result p1

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    return v0

    :pswitch_3
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p2

    invoke-static {p2}, Lcom/miui/systemAdSolution/landingPage/ILandingPageListener$Stub;->asInterface(Landroid/os/IBinder;)Lcom/miui/systemAdSolution/landingPage/ILandingPageListener;

    move-result-object p2

    invoke-interface {p0, p1, p2}, Lcom/miui/systemAdSolution/landingPage/ILandingPageService;->registerListener(Ljava/lang/String;Lcom/miui/systemAdSolution/landingPage/ILandingPageListener;)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v0

    :pswitch_4
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    invoke-interface {p0, p1}, Lcom/miui/systemAdSolution/landingPage/ILandingPageService;->cancleDownload(Ljava/lang/String;)Z

    move-result p1

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    return v0

    :pswitch_5
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p4

    if-eqz p4, :cond_0

    sget-object p4, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {p4, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object p2

    move-object v2, p2

    check-cast v2, Landroid/os/Bundle;

    :cond_0
    invoke-interface {p0, p1, v2}, Lcom/miui/systemAdSolution/landingPage/ILandingPageService;->startDownload(Ljava/lang/String;Landroid/os/Bundle;)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v0

    :pswitch_6
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p4

    if-eqz p4, :cond_1

    sget-object p4, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {p4, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object p2

    move-object v2, p2

    check-cast v2, Landroid/os/Bundle;

    :cond_1
    invoke-interface {p0, p1, v2}, Lcom/miui/systemAdSolution/landingPage/ILandingPageService;->showAppDetailCard(Ljava/lang/String;Landroid/os/Bundle;)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v0

    :pswitch_7
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    invoke-interface {p0, p1}, Lcom/miui/systemAdSolution/landingPage/ILandingPageService;->getPackageInstallationStatus(Ljava/lang/String;)I

    move-result p1

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    return v0

    :pswitch_8
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p4

    if-eqz p4, :cond_2

    sget-object p4, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {p4, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object p2

    move-object v2, p2

    check-cast v2, Landroid/os/Bundle;

    :cond_2
    invoke-interface {p0, p1, v2}, Lcom/miui/systemAdSolution/landingPage/ILandingPageService;->deeplinkStartApp(Ljava/lang/String;Landroid/os/Bundle;)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v0

    :cond_3
    invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return v0

    :pswitch_data_0
    .packed-switch 0x1
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
