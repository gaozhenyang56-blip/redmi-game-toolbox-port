.class public Lcom/qti/debugreport/IZatFixStatusDebugReport;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/qti/debugreport/IZatFixStatusDebugReport$b;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/qti/debugreport/IZatFixStatusDebugReport;",
            ">;"
        }
    .end annotation
.end field

.field private static final IS_FINAL_FIX_SUCCESSFUL:I = 0x1

.field private static final IS_HEPE_CHECK_FAIL:I = 0x4

.field private static final IS_TOO_FEW_SV_SEEN:I = 0x2

.field private static final IS_VERY_LOW_RELAIBILITY:I = 0x8

.field private static TAG:Ljava/lang/String; = "IZatFixStatus"

.field private static final VERBOSE:Z


# instance fields
.field private mFixStatus:Lcom/qti/debugreport/IZatFixStatusDebugReport$b;

.field private mFixStatusMask:I

.field private mHepeLimit:J

.field private mUtcTimeLastReported:Lcom/qti/debugreport/IZatUtcSpec;

.field private mUtcTimeLastUpdated:Lcom/qti/debugreport/IZatUtcSpec;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const-string v0, "IZatFixStatus"

    const/4 v1, 0x2

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    sput-boolean v0, Lcom/qti/debugreport/IZatFixStatusDebugReport;->VERBOSE:Z

    new-instance v0, Lcom/qti/debugreport/IZatFixStatusDebugReport$a;

    invoke-direct {v0}, Lcom/qti/debugreport/IZatFixStatusDebugReport$a;-><init>()V

    sput-object v0, Lcom/qti/debugreport/IZatFixStatusDebugReport;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-class v0, Lcom/qti/debugreport/IZatUtcSpec;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/qti/debugreport/IZatUtcSpec;

    iput-object v0, p0, Lcom/qti/debugreport/IZatFixStatusDebugReport;->mUtcTimeLastUpdated:Lcom/qti/debugreport/IZatUtcSpec;

    const-class v0, Lcom/qti/debugreport/IZatUtcSpec;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/qti/debugreport/IZatUtcSpec;

    iput-object v0, p0, Lcom/qti/debugreport/IZatFixStatusDebugReport;->mUtcTimeLastReported:Lcom/qti/debugreport/IZatUtcSpec;

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/qti/debugreport/IZatFixStatusDebugReport;->mFixStatusMask:I

    and-int/lit8 v1, v0, 0x1

    if-eqz v1, :cond_0

    invoke-static {}, Lcom/qti/debugreport/IZatFixStatusDebugReport$b;->values()[Lcom/qti/debugreport/IZatFixStatusDebugReport$b;

    move-result-object v0

    const/4 v1, 0x0

    aget-object v0, v0, v1

    :goto_0
    iput-object v0, p0, Lcom/qti/debugreport/IZatFixStatusDebugReport;->mFixStatus:Lcom/qti/debugreport/IZatFixStatusDebugReport$b;

    goto :goto_1

    :cond_0
    and-int/lit8 v1, v0, 0x2

    if-eqz v1, :cond_1

    invoke-static {}, Lcom/qti/debugreport/IZatFixStatusDebugReport$b;->values()[Lcom/qti/debugreport/IZatFixStatusDebugReport$b;

    move-result-object v0

    const/4 v1, 0x1

    aget-object v0, v0, v1

    goto :goto_0

    :cond_1
    and-int/lit8 v1, v0, 0x4

    if-eqz v1, :cond_2

    invoke-static {}, Lcom/qti/debugreport/IZatFixStatusDebugReport$b;->values()[Lcom/qti/debugreport/IZatFixStatusDebugReport$b;

    move-result-object v0

    const/4 v1, 0x2

    aget-object v0, v0, v1

    goto :goto_0

    :cond_2
    and-int/lit8 v0, v0, 0x8

    if-eqz v0, :cond_3

    invoke-static {}, Lcom/qti/debugreport/IZatFixStatusDebugReport$b;->values()[Lcom/qti/debugreport/IZatFixStatusDebugReport$b;

    move-result-object v0

    const/4 v1, 0x3

    aget-object v0, v0, v1

    goto :goto_0

    :cond_3
    :goto_1
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/qti/debugreport/IZatFixStatusDebugReport;->mHepeLimit:J

    return-void
.end method

.method public constructor <init>(Lcom/qti/debugreport/IZatUtcSpec;Lcom/qti/debugreport/IZatUtcSpec;IJ)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/qti/debugreport/IZatFixStatusDebugReport;->mUtcTimeLastUpdated:Lcom/qti/debugreport/IZatUtcSpec;

    iput-object p2, p0, Lcom/qti/debugreport/IZatFixStatusDebugReport;->mUtcTimeLastReported:Lcom/qti/debugreport/IZatUtcSpec;

    iput p3, p0, Lcom/qti/debugreport/IZatFixStatusDebugReport;->mFixStatusMask:I

    and-int/lit8 p1, p3, 0x1

    if-eqz p1, :cond_0

    invoke-static {}, Lcom/qti/debugreport/IZatFixStatusDebugReport$b;->values()[Lcom/qti/debugreport/IZatFixStatusDebugReport$b;

    move-result-object p1

    const/4 p2, 0x0

    aget-object p1, p1, p2

    :goto_0
    iput-object p1, p0, Lcom/qti/debugreport/IZatFixStatusDebugReport;->mFixStatus:Lcom/qti/debugreport/IZatFixStatusDebugReport$b;

    goto :goto_1

    :cond_0
    and-int/lit8 p1, p3, 0x2

    if-eqz p1, :cond_1

    invoke-static {}, Lcom/qti/debugreport/IZatFixStatusDebugReport$b;->values()[Lcom/qti/debugreport/IZatFixStatusDebugReport$b;

    move-result-object p1

    const/4 p2, 0x1

    aget-object p1, p1, p2

    goto :goto_0

    :cond_1
    and-int/lit8 p1, p3, 0x4

    if-eqz p1, :cond_2

    invoke-static {}, Lcom/qti/debugreport/IZatFixStatusDebugReport$b;->values()[Lcom/qti/debugreport/IZatFixStatusDebugReport$b;

    move-result-object p1

    const/4 p2, 0x2

    aget-object p1, p1, p2

    goto :goto_0

    :cond_2
    and-int/lit8 p1, p3, 0x8

    if-eqz p1, :cond_3

    invoke-static {}, Lcom/qti/debugreport/IZatFixStatusDebugReport$b;->values()[Lcom/qti/debugreport/IZatFixStatusDebugReport$b;

    move-result-object p1

    const/4 p2, 0x3

    aget-object p1, p1, p2

    goto :goto_0

    :cond_3
    :goto_1
    iput-wide p4, p0, Lcom/qti/debugreport/IZatFixStatusDebugReport;->mHepeLimit:J

    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getFixStatus()Lcom/qti/debugreport/IZatFixStatusDebugReport$b;
    .locals 1

    iget-object v0, p0, Lcom/qti/debugreport/IZatFixStatusDebugReport;->mFixStatus:Lcom/qti/debugreport/IZatFixStatusDebugReport$b;

    return-object v0
.end method

.method public getHEPELimit()J
    .locals 2

    iget-wide v0, p0, Lcom/qti/debugreport/IZatFixStatusDebugReport;->mHepeLimit:J

    return-wide v0
.end method

.method public getLastReportedUTCTime()Lcom/qti/debugreport/IZatUtcSpec;
    .locals 1

    iget-object v0, p0, Lcom/qti/debugreport/IZatFixStatusDebugReport;->mUtcTimeLastReported:Lcom/qti/debugreport/IZatUtcSpec;

    return-object v0
.end method

.method public getUTCTimestamp()Lcom/qti/debugreport/IZatUtcSpec;
    .locals 1

    iget-object v0, p0, Lcom/qti/debugreport/IZatFixStatusDebugReport;->mUtcTimeLastUpdated:Lcom/qti/debugreport/IZatUtcSpec;

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 2

    iget-object p2, p0, Lcom/qti/debugreport/IZatFixStatusDebugReport;->mUtcTimeLastUpdated:Lcom/qti/debugreport/IZatUtcSpec;

    const/4 v0, 0x0

    invoke-virtual {p1, p2, v0}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    iget-object p2, p0, Lcom/qti/debugreport/IZatFixStatusDebugReport;->mUtcTimeLastReported:Lcom/qti/debugreport/IZatUtcSpec;

    invoke-virtual {p1, p2, v0}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    iget p2, p0, Lcom/qti/debugreport/IZatFixStatusDebugReport;->mFixStatusMask:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    iget-wide v0, p0, Lcom/qti/debugreport/IZatFixStatusDebugReport;->mHepeLimit:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    return-void
.end method
