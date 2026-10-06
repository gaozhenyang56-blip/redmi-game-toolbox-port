.class public Lcom/qti/debugreport/IZatUtcSpec;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/qti/debugreport/IZatUtcSpec;",
            ">;"
        }
    .end annotation
.end field

.field private static TAG:Ljava/lang/String; = "IZatUtcSpec"

.field private static final VERBOSE:Z


# instance fields
.field private mNanoSeconds:J

.field private mWholeSeconds:J


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const-string v0, "IZatUtcSpec"

    const/4 v1, 0x2

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    sput-boolean v0, Lcom/qti/debugreport/IZatUtcSpec;->VERBOSE:Z

    new-instance v0, Lcom/qti/debugreport/IZatUtcSpec$a;

    invoke-direct {v0}, Lcom/qti/debugreport/IZatUtcSpec$a;-><init>()V

    sput-object v0, Lcom/qti/debugreport/IZatUtcSpec;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(JJ)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-wide p1, p0, Lcom/qti/debugreport/IZatUtcSpec;->mWholeSeconds:J

    iput-wide p3, p0, Lcom/qti/debugreport/IZatUtcSpec;->mNanoSeconds:J

    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/qti/debugreport/IZatUtcSpec;->mWholeSeconds:J

    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/qti/debugreport/IZatUtcSpec;->mNanoSeconds:J

    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getNanoSeconds()J
    .locals 2

    iget-wide v0, p0, Lcom/qti/debugreport/IZatUtcSpec;->mNanoSeconds:J

    return-wide v0
.end method

.method public getSeconds()J
    .locals 2

    iget-wide v0, p0, Lcom/qti/debugreport/IZatUtcSpec;->mWholeSeconds:J

    return-wide v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 2

    iget-wide v0, p0, Lcom/qti/debugreport/IZatUtcSpec;->mWholeSeconds:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    iget-wide v0, p0, Lcom/qti/debugreport/IZatUtcSpec;->mNanoSeconds:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    return-void
.end method
