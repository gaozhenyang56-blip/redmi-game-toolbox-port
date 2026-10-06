.class public Lcom/qti/debugreport/IZatXoStateDebugReport;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/qti/debugreport/IZatXoStateDebugReport$b;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/qti/debugreport/IZatXoStateDebugReport;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private mUtcTimeLastReported:Lcom/qti/debugreport/IZatUtcSpec;

.field private mUtcTimeLastUpdated:Lcom/qti/debugreport/IZatUtcSpec;

.field private mXoState:Lcom/qti/debugreport/IZatXoStateDebugReport$b;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/qti/debugreport/IZatXoStateDebugReport$a;

    invoke-direct {v0}, Lcom/qti/debugreport/IZatXoStateDebugReport$a;-><init>()V

    sput-object v0, Lcom/qti/debugreport/IZatXoStateDebugReport;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-class v0, Lcom/qti/debugreport/IZatUtcSpec;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/qti/debugreport/IZatUtcSpec;

    iput-object v0, p0, Lcom/qti/debugreport/IZatXoStateDebugReport;->mUtcTimeLastUpdated:Lcom/qti/debugreport/IZatUtcSpec;

    const-class v0, Lcom/qti/debugreport/IZatUtcSpec;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/qti/debugreport/IZatUtcSpec;

    iput-object v0, p0, Lcom/qti/debugreport/IZatXoStateDebugReport;->mUtcTimeLastReported:Lcom/qti/debugreport/IZatUtcSpec;

    invoke-static {}, Lcom/qti/debugreport/IZatXoStateDebugReport$b;->values()[Lcom/qti/debugreport/IZatXoStateDebugReport$b;

    move-result-object v0

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result p1

    aget-object p1, v0, p1

    iput-object p1, p0, Lcom/qti/debugreport/IZatXoStateDebugReport;->mXoState:Lcom/qti/debugreport/IZatXoStateDebugReport$b;

    return-void
.end method

.method public constructor <init>(Lcom/qti/debugreport/IZatUtcSpec;Lcom/qti/debugreport/IZatUtcSpec;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/qti/debugreport/IZatXoStateDebugReport;->mUtcTimeLastUpdated:Lcom/qti/debugreport/IZatUtcSpec;

    iput-object p2, p0, Lcom/qti/debugreport/IZatXoStateDebugReport;->mUtcTimeLastReported:Lcom/qti/debugreport/IZatUtcSpec;

    :try_start_0
    invoke-static {}, Lcom/qti/debugreport/IZatXoStateDebugReport$b;->values()[Lcom/qti/debugreport/IZatXoStateDebugReport$b;

    move-result-object p1

    aget-object p1, p1, p3

    iput-object p1, p0, Lcom/qti/debugreport/IZatXoStateDebugReport;->mXoState:Lcom/qti/debugreport/IZatXoStateDebugReport$b;
    :try_end_0
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    sget-object p1, Lcom/qti/debugreport/IZatXoStateDebugReport$b;->b:Lcom/qti/debugreport/IZatXoStateDebugReport$b;

    iput-object p1, p0, Lcom/qti/debugreport/IZatXoStateDebugReport;->mXoState:Lcom/qti/debugreport/IZatXoStateDebugReport$b;

    :goto_0
    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getLastReportedUTCTime()Lcom/qti/debugreport/IZatUtcSpec;
    .locals 1

    iget-object v0, p0, Lcom/qti/debugreport/IZatXoStateDebugReport;->mUtcTimeLastReported:Lcom/qti/debugreport/IZatUtcSpec;

    return-object v0
.end method

.method public getUTCTimestamp()Lcom/qti/debugreport/IZatUtcSpec;
    .locals 1

    iget-object v0, p0, Lcom/qti/debugreport/IZatXoStateDebugReport;->mUtcTimeLastUpdated:Lcom/qti/debugreport/IZatUtcSpec;

    return-object v0
.end method

.method public getXoState()Lcom/qti/debugreport/IZatXoStateDebugReport$b;
    .locals 1

    iget-object v0, p0, Lcom/qti/debugreport/IZatXoStateDebugReport;->mXoState:Lcom/qti/debugreport/IZatXoStateDebugReport$b;

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1

    iget-object p2, p0, Lcom/qti/debugreport/IZatXoStateDebugReport;->mUtcTimeLastUpdated:Lcom/qti/debugreport/IZatUtcSpec;

    const/4 v0, 0x0

    invoke-virtual {p1, p2, v0}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    iget-object p2, p0, Lcom/qti/debugreport/IZatXoStateDebugReport;->mUtcTimeLastReported:Lcom/qti/debugreport/IZatUtcSpec;

    invoke-virtual {p1, p2, v0}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    iget-object p2, p0, Lcom/qti/debugreport/IZatXoStateDebugReport;->mXoState:Lcom/qti/debugreport/IZatXoStateDebugReport$b;

    invoke-virtual {p2}, Lcom/qti/debugreport/IZatXoStateDebugReport$b;->a()I

    move-result p2

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    return-void
.end method
