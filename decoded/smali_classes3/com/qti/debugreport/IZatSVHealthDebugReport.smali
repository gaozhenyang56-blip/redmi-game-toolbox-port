.class public Lcom/qti/debugreport/IZatSVHealthDebugReport;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/qti/debugreport/IZatSVHealthDebugReport$b;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/qti/debugreport/IZatSVHealthDebugReport;",
            ">;"
        }
    .end annotation
.end field

.field private static TAG:Ljava/lang/String; = "IZatSVHealthReport"

.field private static final VERBOSE:Z


# instance fields
.field private mBdsBadMask:J

.field private mBdsGoodMask:J

.field private mBdsSVHealthState:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/qti/debugreport/IZatSVHealthDebugReport$b;",
            ">;"
        }
    .end annotation
.end field

.field private mBdsUnknownMask:J

.field private mGalBadMask:J

.field private mGalGoodMask:J

.field private mGalSVHealthState:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/qti/debugreport/IZatSVHealthDebugReport$b;",
            ">;"
        }
    .end annotation
.end field

.field private mGalUnknownMask:J

.field private mGlonassBadMask:I

.field private mGlonassGoodMask:I

.field private mGlonassSVHealthState:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/qti/debugreport/IZatSVHealthDebugReport$b;",
            ">;"
        }
    .end annotation
.end field

.field private mGlonassUnknownMask:I

.field private mGpsBadMask:I

.field private mGpsGoodMask:I

.field private mGpsSVHealthState:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/qti/debugreport/IZatSVHealthDebugReport$b;",
            ">;"
        }
    .end annotation
.end field

.field private mGpsUnknownMask:I

.field private mQzssBadMask:B

.field private mQzssGoodMask:B

.field private mQzssSVHealthState:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/qti/debugreport/IZatSVHealthDebugReport$b;",
            ">;"
        }
    .end annotation
.end field

.field private mQzssUnknownMask:B

.field private mUtcTimeLastReported:Lcom/qti/debugreport/IZatUtcSpec;

.field private mUtcTimeLastUpdated:Lcom/qti/debugreport/IZatUtcSpec;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const-string v0, "IZatSVHealthReport"

    const/4 v1, 0x2

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    sput-boolean v0, Lcom/qti/debugreport/IZatSVHealthDebugReport;->VERBOSE:Z

    new-instance v0, Lcom/qti/debugreport/IZatSVHealthDebugReport$a;

    invoke-direct {v0}, Lcom/qti/debugreport/IZatSVHealthDebugReport$a;-><init>()V

    sput-object v0, Lcom/qti/debugreport/IZatSVHealthDebugReport;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 8

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/qti/debugreport/IZatSVHealthDebugReport;->mGpsSVHealthState:Ljava/util/List;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/qti/debugreport/IZatSVHealthDebugReport;->mGlonassSVHealthState:Ljava/util/List;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/qti/debugreport/IZatSVHealthDebugReport;->mBdsSVHealthState:Ljava/util/List;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/qti/debugreport/IZatSVHealthDebugReport;->mGalSVHealthState:Ljava/util/List;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/qti/debugreport/IZatSVHealthDebugReport;->mQzssSVHealthState:Ljava/util/List;

    const-class v1, Lcom/qti/debugreport/IZatUtcSpec;

    invoke-virtual {v1}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Lcom/qti/debugreport/IZatUtcSpec;

    iput-object v1, p0, Lcom/qti/debugreport/IZatSVHealthDebugReport;->mUtcTimeLastUpdated:Lcom/qti/debugreport/IZatUtcSpec;

    const-class v1, Lcom/qti/debugreport/IZatUtcSpec;

    invoke-virtual {v1}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Lcom/qti/debugreport/IZatUtcSpec;

    iput-object v1, p0, Lcom/qti/debugreport/IZatSVHealthDebugReport;->mUtcTimeLastReported:Lcom/qti/debugreport/IZatUtcSpec;

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, p0, Lcom/qti/debugreport/IZatSVHealthDebugReport;->mGpsGoodMask:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, p0, Lcom/qti/debugreport/IZatSVHealthDebugReport;->mGpsBadMask:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, p0, Lcom/qti/debugreport/IZatSVHealthDebugReport;->mGpsUnknownMask:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, p0, Lcom/qti/debugreport/IZatSVHealthDebugReport;->mGlonassGoodMask:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, p0, Lcom/qti/debugreport/IZatSVHealthDebugReport;->mGlonassBadMask:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, p0, Lcom/qti/debugreport/IZatSVHealthDebugReport;->mGlonassUnknownMask:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v1

    iput-wide v1, p0, Lcom/qti/debugreport/IZatSVHealthDebugReport;->mBdsGoodMask:J

    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v1

    iput-wide v1, p0, Lcom/qti/debugreport/IZatSVHealthDebugReport;->mBdsBadMask:J

    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v1

    iput-wide v1, p0, Lcom/qti/debugreport/IZatSVHealthDebugReport;->mBdsUnknownMask:J

    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v1

    iput-wide v1, p0, Lcom/qti/debugreport/IZatSVHealthDebugReport;->mGalGoodMask:J

    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v1

    iput-wide v1, p0, Lcom/qti/debugreport/IZatSVHealthDebugReport;->mGalBadMask:J

    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v1

    iput-wide v1, p0, Lcom/qti/debugreport/IZatSVHealthDebugReport;->mGalUnknownMask:J

    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v1

    iput-byte v1, p0, Lcom/qti/debugreport/IZatSVHealthDebugReport;->mQzssGoodMask:B

    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v1

    iput-byte v1, p0, Lcom/qti/debugreport/IZatSVHealthDebugReport;->mQzssBadMask:B

    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v0

    iput-byte v0, p0, Lcom/qti/debugreport/IZatSVHealthDebugReport;->mQzssUnknownMask:B

    iget-object v0, p0, Lcom/qti/debugreport/IZatSVHealthDebugReport;->mGpsSVHealthState:Ljava/util/List;

    iget v1, p0, Lcom/qti/debugreport/IZatSVHealthDebugReport;->mGpsGoodMask:I

    iget v2, p0, Lcom/qti/debugreport/IZatSVHealthDebugReport;->mGpsBadMask:I

    iget v3, p0, Lcom/qti/debugreport/IZatSVHealthDebugReport;->mGpsUnknownMask:I

    invoke-direct {p0, v0, v1, v2, v3}, Lcom/qti/debugreport/IZatSVHealthDebugReport;->fillSVHealthList(Ljava/util/List;III)V

    iget-object v0, p0, Lcom/qti/debugreport/IZatSVHealthDebugReport;->mGlonassSVHealthState:Ljava/util/List;

    iget v1, p0, Lcom/qti/debugreport/IZatSVHealthDebugReport;->mGlonassGoodMask:I

    iget v2, p0, Lcom/qti/debugreport/IZatSVHealthDebugReport;->mGlonassBadMask:I

    iget v3, p0, Lcom/qti/debugreport/IZatSVHealthDebugReport;->mGlonassUnknownMask:I

    invoke-direct {p0, v0, v1, v2, v3}, Lcom/qti/debugreport/IZatSVHealthDebugReport;->fillSVHealthList(Ljava/util/List;III)V

    iget-object v1, p0, Lcom/qti/debugreport/IZatSVHealthDebugReport;->mBdsSVHealthState:Ljava/util/List;

    iget-wide v2, p0, Lcom/qti/debugreport/IZatSVHealthDebugReport;->mBdsGoodMask:J

    iget-wide v4, p0, Lcom/qti/debugreport/IZatSVHealthDebugReport;->mBdsBadMask:J

    iget-wide v6, p0, Lcom/qti/debugreport/IZatSVHealthDebugReport;->mBdsUnknownMask:J

    move-object v0, p0

    invoke-direct/range {v0 .. v7}, Lcom/qti/debugreport/IZatSVHealthDebugReport;->fillSVHealthList(Ljava/util/List;JJJ)V

    iget-object v1, p0, Lcom/qti/debugreport/IZatSVHealthDebugReport;->mGalSVHealthState:Ljava/util/List;

    iget-wide v2, p0, Lcom/qti/debugreport/IZatSVHealthDebugReport;->mGalGoodMask:J

    iget-wide v4, p0, Lcom/qti/debugreport/IZatSVHealthDebugReport;->mGalBadMask:J

    iget-wide v6, p0, Lcom/qti/debugreport/IZatSVHealthDebugReport;->mGalUnknownMask:J

    invoke-direct/range {v0 .. v7}, Lcom/qti/debugreport/IZatSVHealthDebugReport;->fillSVHealthList(Ljava/util/List;JJJ)V

    iget-object v0, p0, Lcom/qti/debugreport/IZatSVHealthDebugReport;->mQzssSVHealthState:Ljava/util/List;

    iget-byte v1, p0, Lcom/qti/debugreport/IZatSVHealthDebugReport;->mQzssGoodMask:B

    iget-byte v2, p0, Lcom/qti/debugreport/IZatSVHealthDebugReport;->mQzssBadMask:B

    iget-byte v3, p0, Lcom/qti/debugreport/IZatSVHealthDebugReport;->mQzssUnknownMask:B

    invoke-direct {p0, v0, v1, v2, v3}, Lcom/qti/debugreport/IZatSVHealthDebugReport;->fillSVHealthList(Ljava/util/List;BBB)V

    return-void
.end method

.method public constructor <init>(Lcom/qti/debugreport/IZatUtcSpec;Lcom/qti/debugreport/IZatUtcSpec;IIIIIIJJJJJJBBB)V
    .locals 16

    move-object/from16 v0, p0

    move/from16 v1, p3

    move/from16 v2, p4

    move/from16 v3, p5

    move/from16 v4, p6

    move/from16 v5, p7

    move/from16 v6, p8

    move/from16 v7, p21

    move/from16 v8, p22

    move/from16 v9, p23

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    new-instance v10, Ljava/util/ArrayList;

    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    iput-object v10, v0, Lcom/qti/debugreport/IZatSVHealthDebugReport;->mGpsSVHealthState:Ljava/util/List;

    new-instance v10, Ljava/util/ArrayList;

    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    iput-object v10, v0, Lcom/qti/debugreport/IZatSVHealthDebugReport;->mGlonassSVHealthState:Ljava/util/List;

    new-instance v10, Ljava/util/ArrayList;

    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    iput-object v10, v0, Lcom/qti/debugreport/IZatSVHealthDebugReport;->mBdsSVHealthState:Ljava/util/List;

    new-instance v10, Ljava/util/ArrayList;

    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    iput-object v10, v0, Lcom/qti/debugreport/IZatSVHealthDebugReport;->mGalSVHealthState:Ljava/util/List;

    new-instance v10, Ljava/util/ArrayList;

    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    iput-object v10, v0, Lcom/qti/debugreport/IZatSVHealthDebugReport;->mQzssSVHealthState:Ljava/util/List;

    move-object/from16 v10, p1

    iput-object v10, v0, Lcom/qti/debugreport/IZatSVHealthDebugReport;->mUtcTimeLastUpdated:Lcom/qti/debugreport/IZatUtcSpec;

    move-object/from16 v10, p2

    iput-object v10, v0, Lcom/qti/debugreport/IZatSVHealthDebugReport;->mUtcTimeLastReported:Lcom/qti/debugreport/IZatUtcSpec;

    iput v1, v0, Lcom/qti/debugreport/IZatSVHealthDebugReport;->mGpsGoodMask:I

    iput v2, v0, Lcom/qti/debugreport/IZatSVHealthDebugReport;->mGpsBadMask:I

    iput v3, v0, Lcom/qti/debugreport/IZatSVHealthDebugReport;->mGpsUnknownMask:I

    iput v4, v0, Lcom/qti/debugreport/IZatSVHealthDebugReport;->mGlonassGoodMask:I

    iput v5, v0, Lcom/qti/debugreport/IZatSVHealthDebugReport;->mGlonassBadMask:I

    iput v6, v0, Lcom/qti/debugreport/IZatSVHealthDebugReport;->mGlonassUnknownMask:I

    move-wide/from16 v10, p9

    iput-wide v10, v0, Lcom/qti/debugreport/IZatSVHealthDebugReport;->mBdsGoodMask:J

    move-wide/from16 v12, p11

    iput-wide v12, v0, Lcom/qti/debugreport/IZatSVHealthDebugReport;->mBdsBadMask:J

    move-wide/from16 v14, p13

    iput-wide v14, v0, Lcom/qti/debugreport/IZatSVHealthDebugReport;->mBdsUnknownMask:J

    move-wide/from16 v10, p15

    iput-wide v10, v0, Lcom/qti/debugreport/IZatSVHealthDebugReport;->mGalGoodMask:J

    move-wide/from16 v10, p17

    iput-wide v10, v0, Lcom/qti/debugreport/IZatSVHealthDebugReport;->mGalBadMask:J

    move-wide/from16 v10, p19

    iput-wide v10, v0, Lcom/qti/debugreport/IZatSVHealthDebugReport;->mGalUnknownMask:J

    iput-byte v7, v0, Lcom/qti/debugreport/IZatSVHealthDebugReport;->mQzssGoodMask:B

    iput-byte v8, v0, Lcom/qti/debugreport/IZatSVHealthDebugReport;->mQzssBadMask:B

    iput-byte v9, v0, Lcom/qti/debugreport/IZatSVHealthDebugReport;->mQzssUnknownMask:B

    iget-object v10, v0, Lcom/qti/debugreport/IZatSVHealthDebugReport;->mGpsSVHealthState:Ljava/util/List;

    invoke-direct {v0, v10, v1, v2, v3}, Lcom/qti/debugreport/IZatSVHealthDebugReport;->fillSVHealthList(Ljava/util/List;III)V

    iget-object v1, v0, Lcom/qti/debugreport/IZatSVHealthDebugReport;->mGlonassSVHealthState:Ljava/util/List;

    invoke-direct {v0, v1, v4, v5, v6}, Lcom/qti/debugreport/IZatSVHealthDebugReport;->fillSVHealthList(Ljava/util/List;III)V

    iget-object v1, v0, Lcom/qti/debugreport/IZatSVHealthDebugReport;->mBdsSVHealthState:Ljava/util/List;

    move-object/from16 p1, p0

    move-object/from16 p2, v1

    move-wide/from16 p3, p9

    move-wide/from16 p5, p11

    move-wide/from16 p7, p13

    invoke-direct/range {p1 .. p8}, Lcom/qti/debugreport/IZatSVHealthDebugReport;->fillSVHealthList(Ljava/util/List;JJJ)V

    iget-object v1, v0, Lcom/qti/debugreport/IZatSVHealthDebugReport;->mGalSVHealthState:Ljava/util/List;

    move-object/from16 p2, v1

    move-wide/from16 p3, p15

    move-wide/from16 p5, p17

    move-wide/from16 p7, p19

    invoke-direct/range {p1 .. p8}, Lcom/qti/debugreport/IZatSVHealthDebugReport;->fillSVHealthList(Ljava/util/List;JJJ)V

    iget-object v1, v0, Lcom/qti/debugreport/IZatSVHealthDebugReport;->mQzssSVHealthState:Ljava/util/List;

    invoke-direct {v0, v1, v7, v8, v9}, Lcom/qti/debugreport/IZatSVHealthDebugReport;->fillSVHealthList(Ljava/util/List;BBB)V

    return-void
.end method

.method private fillSVHealthList(Ljava/util/List;BBB)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/qti/debugreport/IZatSVHealthDebugReport$b;",
            ">;BBB)V"
        }
    .end annotation

    const/4 p4, 0x0

    :goto_0
    const/16 v0, 0x8

    if-ge p4, v0, :cond_2

    const/4 v0, 0x1

    shl-int/2addr v0, p4

    and-int v1, v0, p2

    if-eqz v1, :cond_0

    sget-object v0, Lcom/qti/debugreport/IZatSVHealthDebugReport$b;->c:Lcom/qti/debugreport/IZatSVHealthDebugReport$b;

    :goto_1
    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2

    :cond_0
    and-int/2addr v0, p3

    if-eqz v0, :cond_1

    sget-object v0, Lcom/qti/debugreport/IZatSVHealthDebugReport$b;->d:Lcom/qti/debugreport/IZatSVHealthDebugReport$b;

    goto :goto_1

    :cond_1
    sget-object v0, Lcom/qti/debugreport/IZatSVHealthDebugReport$b;->b:Lcom/qti/debugreport/IZatSVHealthDebugReport$b;

    goto :goto_1

    :goto_2
    add-int/lit8 p4, p4, 0x1

    int-to-byte p4, p4

    goto :goto_0

    :cond_2
    return-void
.end method

.method private fillSVHealthList(Ljava/util/List;III)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/qti/debugreport/IZatSVHealthDebugReport$b;",
            ">;III)V"
        }
    .end annotation

    const/4 p4, 0x0

    :goto_0
    const/16 v0, 0x20

    if-ge p4, v0, :cond_2

    const/4 v0, 0x1

    shl-int/2addr v0, p4

    and-int v1, v0, p2

    if-eqz v1, :cond_0

    sget-object v0, Lcom/qti/debugreport/IZatSVHealthDebugReport$b;->c:Lcom/qti/debugreport/IZatSVHealthDebugReport$b;

    :goto_1
    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2

    :cond_0
    and-int/2addr v0, p3

    if-eqz v0, :cond_1

    sget-object v0, Lcom/qti/debugreport/IZatSVHealthDebugReport$b;->d:Lcom/qti/debugreport/IZatSVHealthDebugReport$b;

    goto :goto_1

    :cond_1
    sget-object v0, Lcom/qti/debugreport/IZatSVHealthDebugReport$b;->b:Lcom/qti/debugreport/IZatSVHealthDebugReport$b;

    goto :goto_1

    :goto_2
    add-int/lit8 p4, p4, 0x1

    goto :goto_0

    :cond_2
    return-void
.end method

.method private fillSVHealthList(Ljava/util/List;JJJ)V
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/qti/debugreport/IZatSVHealthDebugReport$b;",
            ">;JJJ)V"
        }
    .end annotation

    move-object v0, p1

    const-wide/16 v1, 0x0

    move-wide v3, v1

    :goto_0
    const-wide/16 v5, 0x40

    cmp-long v5, v3, v5

    if-gez v5, :cond_2

    long-to-int v5, v3

    const-wide/16 v6, 0x1

    shl-long v8, v6, v5

    and-long v10, v8, p2

    cmp-long v5, v10, v1

    if-eqz v5, :cond_0

    sget-object v5, Lcom/qti/debugreport/IZatSVHealthDebugReport$b;->c:Lcom/qti/debugreport/IZatSVHealthDebugReport$b;

    :goto_1
    invoke-interface {p1, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2

    :cond_0
    and-long v8, v8, p4

    cmp-long v5, v8, v1

    if-eqz v5, :cond_1

    sget-object v5, Lcom/qti/debugreport/IZatSVHealthDebugReport$b;->d:Lcom/qti/debugreport/IZatSVHealthDebugReport$b;

    goto :goto_1

    :cond_1
    sget-object v5, Lcom/qti/debugreport/IZatSVHealthDebugReport$b;->b:Lcom/qti/debugreport/IZatSVHealthDebugReport$b;

    goto :goto_1

    :goto_2
    add-long/2addr v3, v6

    goto :goto_0

    :cond_2
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

    iget-object v0, p0, Lcom/qti/debugreport/IZatSVHealthDebugReport;->mUtcTimeLastReported:Lcom/qti/debugreport/IZatUtcSpec;

    return-object v0
.end method

.method public getSVHealthForBDS()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/qti/debugreport/IZatSVHealthDebugReport$b;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/qti/debugreport/IZatSVHealthDebugReport;->mBdsSVHealthState:Ljava/util/List;

    return-object v0
.end method

.method public getSVHealthForGPS()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/qti/debugreport/IZatSVHealthDebugReport$b;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/qti/debugreport/IZatSVHealthDebugReport;->mGpsSVHealthState:Ljava/util/List;

    return-object v0
.end method

.method public getSVHealthForGal()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/qti/debugreport/IZatSVHealthDebugReport$b;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/qti/debugreport/IZatSVHealthDebugReport;->mGalSVHealthState:Ljava/util/List;

    return-object v0
.end method

.method public getSVHealthForGlonass()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/qti/debugreport/IZatSVHealthDebugReport$b;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/qti/debugreport/IZatSVHealthDebugReport;->mGlonassSVHealthState:Ljava/util/List;

    return-object v0
.end method

.method public getSVHealthForQzss()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/qti/debugreport/IZatSVHealthDebugReport$b;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/qti/debugreport/IZatSVHealthDebugReport;->mQzssSVHealthState:Ljava/util/List;

    return-object v0
.end method

.method public getUTCTimestamp()Lcom/qti/debugreport/IZatUtcSpec;
    .locals 1

    iget-object v0, p0, Lcom/qti/debugreport/IZatSVHealthDebugReport;->mUtcTimeLastUpdated:Lcom/qti/debugreport/IZatUtcSpec;

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 2

    iget-object p2, p0, Lcom/qti/debugreport/IZatSVHealthDebugReport;->mUtcTimeLastUpdated:Lcom/qti/debugreport/IZatUtcSpec;

    const/4 v0, 0x0

    invoke-virtual {p1, p2, v0}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    iget-object p2, p0, Lcom/qti/debugreport/IZatSVHealthDebugReport;->mUtcTimeLastReported:Lcom/qti/debugreport/IZatUtcSpec;

    invoke-virtual {p1, p2, v0}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    iget p2, p0, Lcom/qti/debugreport/IZatSVHealthDebugReport;->mGpsGoodMask:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    iget p2, p0, Lcom/qti/debugreport/IZatSVHealthDebugReport;->mGpsBadMask:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    iget p2, p0, Lcom/qti/debugreport/IZatSVHealthDebugReport;->mGpsUnknownMask:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    iget p2, p0, Lcom/qti/debugreport/IZatSVHealthDebugReport;->mGlonassGoodMask:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    iget p2, p0, Lcom/qti/debugreport/IZatSVHealthDebugReport;->mGlonassBadMask:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    iget p2, p0, Lcom/qti/debugreport/IZatSVHealthDebugReport;->mGlonassUnknownMask:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    iget-wide v0, p0, Lcom/qti/debugreport/IZatSVHealthDebugReport;->mBdsGoodMask:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    iget-wide v0, p0, Lcom/qti/debugreport/IZatSVHealthDebugReport;->mBdsBadMask:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    iget-wide v0, p0, Lcom/qti/debugreport/IZatSVHealthDebugReport;->mBdsUnknownMask:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    iget-wide v0, p0, Lcom/qti/debugreport/IZatSVHealthDebugReport;->mGalGoodMask:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    iget-wide v0, p0, Lcom/qti/debugreport/IZatSVHealthDebugReport;->mGalBadMask:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    iget-wide v0, p0, Lcom/qti/debugreport/IZatSVHealthDebugReport;->mGalUnknownMask:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    iget-byte p2, p0, Lcom/qti/debugreport/IZatSVHealthDebugReport;->mQzssGoodMask:B

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeByte(B)V

    iget-byte p2, p0, Lcom/qti/debugreport/IZatSVHealthDebugReport;->mQzssBadMask:B

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeByte(B)V

    iget-byte p2, p0, Lcom/qti/debugreport/IZatSVHealthDebugReport;->mQzssUnknownMask:B

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeByte(B)V

    return-void
.end method
