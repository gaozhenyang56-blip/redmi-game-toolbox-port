.class public Lcom/miui/sdk/tc/DataUsage$PackageDetail;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/sdk/tc/DataUsage;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "PackageDetail"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/sdk/tc/DataUsage$PackageDetail$CallTimeKeys;,
        Lcom/miui/sdk/tc/DataUsage$PackageDetail$BillKeys;,
        Lcom/miui/sdk/tc/DataUsage$PackageDetail$OldKeys;,
        Lcom/miui/sdk/tc/DataUsage$PackageDetail$LeisureKeys;,
        Lcom/miui/sdk/tc/DataUsage$PackageDetail$AddPkgKeys;,
        Lcom/miui/sdk/tc/DataUsage$PackageDetail$DailyPkgKeys;,
        Lcom/miui/sdk/tc/DataUsage$PackageDetail$PkgKeys;,
        Lcom/miui/sdk/tc/DataUsage$PackageDetail$PkgType;
    }
.end annotation


# static fields
.field private static final ADD_EXCEEDD:Ljava/lang/String; = "ADD_EXCEEDD"

.field private static final ADD_REMAINED:Ljava/lang/String; = "ADD_REMAINED"

.field private static final ADD_TOTAL:Ljava/lang/String; = "ADD_TOTAL"

.field private static final ADD_USED:Ljava/lang/String; = "ADD_USED"

.field private static final BILL_EXCEED:Ljava/lang/String; = "BILL_EXCEED"

.field private static final BILL_REMAINED:Ljava/lang/String; = "BILL_REMAINED"

.field private static final BILL_TOTAL:Ljava/lang/String; = "BILL_TOTAL"

.field private static final BILL_USED:Ljava/lang/String; = "BILL_USED"

.field private static final CALLTIME_EXCEED:Ljava/lang/String; = "CALLTIME_EXCEED"

.field private static final CALLTIME_REMAINED:Ljava/lang/String; = "CALLTIME_REMAINED"

.field private static final CALLTIME_TOTAL:Ljava/lang/String; = "CALLTIME_TOTAL"

.field private static final CALLTIME_USED:Ljava/lang/String; = "CALLTIME_USED"

.field private static final DAILY_EXCEED:Ljava/lang/String; = "DAILY_EXCEED"

.field private static final DAILY_REMAINED:Ljava/lang/String; = "DAILY_REMAINED"

.field private static final DAILY_TOTAL:Ljava/lang/String; = "DAILY_TOTAL"

.field private static final DAILY_USED:Ljava/lang/String; = "DAILY_USED"

.field private static final LEISURE_EXCEED:Ljava/lang/String; = "LEISURE_EXCEED"

.field private static final LEISURE_REMAINED:Ljava/lang/String; = "LEISURE_REMAINED"

.field private static final LEISURE_TOTAL:Ljava/lang/String; = "LEISURE_TOTAL"

.field private static final LEISURE_USED:Ljava/lang/String; = "LEISURE_USED"

.field private static final OLD_EXCEED:Ljava/lang/String; = "GPRS_EXCEED"

.field private static final OLD_REMAINED:Ljava/lang/String; = "TOTAL_GPRS_BALANCE"

.field private static final OLD_TOTAL:Ljava/lang/String; = "TOTAL_GPRS"

.field private static final OLD_USED:Ljava/lang/String; = "TOTAL_GPRS_USED"

.field private static sPkgKeyTypeMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/miui/sdk/tc/DataUsage$PackageDetail$PkgType;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private mHasRemain:Z

.field private mHasTotal:Z

.field private mHasUsed:Z

.field private mIsJustOver:Z

.field private mIsStable:Z

.field private mPkgType:Lcom/miui/sdk/tc/DataUsage$PackageDetail$PkgType;

.field private mRemainTrafficB:J

.field private mTotalTrafficB:J

.field private mUsedTrafficB:J


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/miui/sdk/tc/DataUsage$PackageDetail;->sPkgKeyTypeMap:Ljava/util/Map;

    sget-object v1, Lcom/miui/sdk/tc/DataUsage$PackageDetail$PkgType;->DailyPkg:Lcom/miui/sdk/tc/DataUsage$PackageDetail$PkgType;

    const-string v2, "DAILY_TOTAL"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/miui/sdk/tc/DataUsage$PackageDetail;->sPkgKeyTypeMap:Ljava/util/Map;

    const-string v2, "DAILY_USED"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/miui/sdk/tc/DataUsage$PackageDetail;->sPkgKeyTypeMap:Ljava/util/Map;

    const-string v2, "DAILY_REMAINED"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/miui/sdk/tc/DataUsage$PackageDetail;->sPkgKeyTypeMap:Ljava/util/Map;

    const-string v2, "DAILY_EXCEED"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/miui/sdk/tc/DataUsage$PackageDetail;->sPkgKeyTypeMap:Ljava/util/Map;

    sget-object v1, Lcom/miui/sdk/tc/DataUsage$PackageDetail$PkgType;->AddPkg:Lcom/miui/sdk/tc/DataUsage$PackageDetail$PkgType;

    const-string v2, "ADD_TOTAL"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/miui/sdk/tc/DataUsage$PackageDetail;->sPkgKeyTypeMap:Ljava/util/Map;

    const-string v2, "ADD_USED"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/miui/sdk/tc/DataUsage$PackageDetail;->sPkgKeyTypeMap:Ljava/util/Map;

    const-string v2, "ADD_REMAINED"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/miui/sdk/tc/DataUsage$PackageDetail;->sPkgKeyTypeMap:Ljava/util/Map;

    const-string v2, "ADD_EXCEEDD"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/miui/sdk/tc/DataUsage$PackageDetail;->sPkgKeyTypeMap:Ljava/util/Map;

    sget-object v1, Lcom/miui/sdk/tc/DataUsage$PackageDetail$PkgType;->LeisurePkg:Lcom/miui/sdk/tc/DataUsage$PackageDetail$PkgType;

    const-string v2, "LEISURE_TOTAL"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/miui/sdk/tc/DataUsage$PackageDetail;->sPkgKeyTypeMap:Ljava/util/Map;

    const-string v2, "LEISURE_USED"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/miui/sdk/tc/DataUsage$PackageDetail;->sPkgKeyTypeMap:Ljava/util/Map;

    const-string v2, "LEISURE_REMAINED"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/miui/sdk/tc/DataUsage$PackageDetail;->sPkgKeyTypeMap:Ljava/util/Map;

    const-string v2, "LEISURE_EXCEED"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/miui/sdk/tc/DataUsage$PackageDetail;->sPkgKeyTypeMap:Ljava/util/Map;

    sget-object v1, Lcom/miui/sdk/tc/DataUsage$PackageDetail$PkgType;->OldPkg:Lcom/miui/sdk/tc/DataUsage$PackageDetail$PkgType;

    const-string v2, "TOTAL_GPRS_USED"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/miui/sdk/tc/DataUsage$PackageDetail;->sPkgKeyTypeMap:Ljava/util/Map;

    const-string v2, "TOTAL_GPRS_BALANCE"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/miui/sdk/tc/DataUsage$PackageDetail;->sPkgKeyTypeMap:Ljava/util/Map;

    sget-object v1, Lcom/miui/sdk/tc/DataUsage$PackageDetail$PkgType;->BillPkg:Lcom/miui/sdk/tc/DataUsage$PackageDetail$PkgType;

    const-string v2, "BILL_TOTAL"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/miui/sdk/tc/DataUsage$PackageDetail;->sPkgKeyTypeMap:Ljava/util/Map;

    const-string v2, "BILL_USED"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/miui/sdk/tc/DataUsage$PackageDetail;->sPkgKeyTypeMap:Ljava/util/Map;

    const-string v2, "BILL_REMAINED"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/miui/sdk/tc/DataUsage$PackageDetail;->sPkgKeyTypeMap:Ljava/util/Map;

    const-string v2, "BILL_EXCEED"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/miui/sdk/tc/DataUsage$PackageDetail;->sPkgKeyTypeMap:Ljava/util/Map;

    sget-object v1, Lcom/miui/sdk/tc/DataUsage$PackageDetail$PkgType;->CallTimePkg:Lcom/miui/sdk/tc/DataUsage$PackageDetail$PkgType;

    const-string v2, "CALLTIME_TOTAL"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/miui/sdk/tc/DataUsage$PackageDetail;->sPkgKeyTypeMap:Ljava/util/Map;

    const-string v2, "CALLTIME_USED"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/miui/sdk/tc/DataUsage$PackageDetail;->sPkgKeyTypeMap:Ljava/util/Map;

    const-string v2, "CALLTIME_REMAINED"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/miui/sdk/tc/DataUsage$PackageDetail;->sPkgKeyTypeMap:Ljava/util/Map;

    const-string v2, "CALLTIME_EXCEED"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Lorg/json/JSONObject;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/miui/sdk/tc/DataUsage$PackageDetail;->mIsStable:Z

    iput-boolean v0, p0, Lcom/miui/sdk/tc/DataUsage$PackageDetail;->mHasTotal:Z

    iput-boolean v0, p0, Lcom/miui/sdk/tc/DataUsage$PackageDetail;->mHasUsed:Z

    iput-boolean v0, p0, Lcom/miui/sdk/tc/DataUsage$PackageDetail;->mHasRemain:Z

    iput-boolean v0, p0, Lcom/miui/sdk/tc/DataUsage$PackageDetail;->mIsJustOver:Z

    sget-object v0, Lcom/miui/sdk/tc/DataUsage$PackageDetail$PkgType;->NoPkg:Lcom/miui/sdk/tc/DataUsage$PackageDetail$PkgType;

    iput-object v0, p0, Lcom/miui/sdk/tc/DataUsage$PackageDetail;->mPkgType:Lcom/miui/sdk/tc/DataUsage$PackageDetail$PkgType;

    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/miui/sdk/tc/DataUsage$PackageDetail;->mTotalTrafficB:J

    iput-wide v0, p0, Lcom/miui/sdk/tc/DataUsage$PackageDetail;->mUsedTrafficB:J

    iput-wide v0, p0, Lcom/miui/sdk/tc/DataUsage$PackageDetail;->mRemainTrafficB:J

    invoke-direct {p0, p1}, Lcom/miui/sdk/tc/DataUsage$PackageDetail;->parse(Lorg/json/JSONObject;)V

    return-void
.end method

.method static synthetic access$000(Lcom/miui/sdk/tc/DataUsage$PackageDetail;Lcom/miui/sdk/tc/DataUsage$PackageDetail;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/miui/sdk/tc/DataUsage$PackageDetail;->merge(Lcom/miui/sdk/tc/DataUsage$PackageDetail;)V

    return-void
.end method

.method private checkPkgType(Lorg/json/JSONObject;)V
    .locals 1

    invoke-virtual {p1}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;

    move-result-object p1

    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    sget-object v0, Lcom/miui/sdk/tc/DataUsage$PackageDetail;->sPkgKeyTypeMap:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/miui/sdk/tc/DataUsage$PackageDetail$PkgType;

    iput-object p1, p0, Lcom/miui/sdk/tc/DataUsage$PackageDetail;->mPkgType:Lcom/miui/sdk/tc/DataUsage$PackageDetail$PkgType;

    :cond_0
    iget-object p1, p0, Lcom/miui/sdk/tc/DataUsage$PackageDetail;->mPkgType:Lcom/miui/sdk/tc/DataUsage$PackageDetail$PkgType;

    if-nez p1, :cond_1

    sget-object p1, Lcom/miui/sdk/tc/DataUsage$PackageDetail$PkgType;->NoPkg:Lcom/miui/sdk/tc/DataUsage$PackageDetail$PkgType;

    iput-object p1, p0, Lcom/miui/sdk/tc/DataUsage$PackageDetail;->mPkgType:Lcom/miui/sdk/tc/DataUsage$PackageDetail$PkgType;

    :cond_1
    return-void
.end method

.method private getTrafficStr(J)Ljava/lang/String;
    .locals 2

    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-ltz v0, :cond_0

    invoke-static {p1, p2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_0
    const-string p1, "NULL"

    :goto_0
    return-object p1
.end method

.method private merge(Lcom/miui/sdk/tc/DataUsage$PackageDetail;)V
    .locals 7

    invoke-virtual {p1}, Lcom/miui/sdk/tc/DataUsage$PackageDetail;->isStable()Z

    move-result v0

    iget-boolean v1, p0, Lcom/miui/sdk/tc/DataUsage$PackageDetail;->mIsStable:Z

    if-eqz v1, :cond_0

    if-eqz v0, :cond_0

    iget-wide v0, p0, Lcom/miui/sdk/tc/DataUsage$PackageDetail;->mTotalTrafficB:J

    iget-wide v2, p1, Lcom/miui/sdk/tc/DataUsage$PackageDetail;->mTotalTrafficB:J

    add-long/2addr v0, v2

    iput-wide v0, p0, Lcom/miui/sdk/tc/DataUsage$PackageDetail;->mTotalTrafficB:J

    iget-wide v0, p0, Lcom/miui/sdk/tc/DataUsage$PackageDetail;->mUsedTrafficB:J

    iget-wide v2, p1, Lcom/miui/sdk/tc/DataUsage$PackageDetail;->mUsedTrafficB:J

    add-long/2addr v0, v2

    iput-wide v0, p0, Lcom/miui/sdk/tc/DataUsage$PackageDetail;->mUsedTrafficB:J

    iget-wide v0, p0, Lcom/miui/sdk/tc/DataUsage$PackageDetail;->mRemainTrafficB:J

    iget-wide v2, p1, Lcom/miui/sdk/tc/DataUsage$PackageDetail;->mRemainTrafficB:J

    add-long/2addr v0, v2

    iput-wide v0, p0, Lcom/miui/sdk/tc/DataUsage$PackageDetail;->mRemainTrafficB:J

    goto :goto_4

    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/miui/sdk/tc/DataUsage$PackageDetail;->mIsStable:Z

    iget-boolean v1, p0, Lcom/miui/sdk/tc/DataUsage$PackageDetail;->mHasUsed:Z

    const/4 v2, 0x1

    if-eqz v1, :cond_1

    iget-boolean v3, p1, Lcom/miui/sdk/tc/DataUsage$PackageDetail;->mHasUsed:Z

    if-eqz v3, :cond_1

    iget-wide v3, p0, Lcom/miui/sdk/tc/DataUsage$PackageDetail;->mUsedTrafficB:J

    iget-wide v5, p1, Lcom/miui/sdk/tc/DataUsage$PackageDetail;->mUsedTrafficB:J

    add-long/2addr v3, v5

    iput-wide v3, p0, Lcom/miui/sdk/tc/DataUsage$PackageDetail;->mUsedTrafficB:J

    goto :goto_1

    :cond_1
    if-nez v1, :cond_2

    iget-boolean v3, p1, Lcom/miui/sdk/tc/DataUsage$PackageDetail;->mHasUsed:Z

    if-eqz v3, :cond_4

    :cond_2
    if-eqz v1, :cond_3

    iget-wide v3, p0, Lcom/miui/sdk/tc/DataUsage$PackageDetail;->mUsedTrafficB:J

    goto :goto_0

    :cond_3
    iget-wide v3, p1, Lcom/miui/sdk/tc/DataUsage$PackageDetail;->mUsedTrafficB:J

    :goto_0
    iput-wide v3, p0, Lcom/miui/sdk/tc/DataUsage$PackageDetail;->mUsedTrafficB:J

    iput-boolean v2, p0, Lcom/miui/sdk/tc/DataUsage$PackageDetail;->mHasUsed:Z

    :cond_4
    :goto_1
    iget-boolean v1, p0, Lcom/miui/sdk/tc/DataUsage$PackageDetail;->mHasRemain:Z

    if-eqz v1, :cond_5

    iget-boolean v3, p1, Lcom/miui/sdk/tc/DataUsage$PackageDetail;->mHasRemain:Z

    if-eqz v3, :cond_5

    iget-wide v3, p0, Lcom/miui/sdk/tc/DataUsage$PackageDetail;->mRemainTrafficB:J

    iget-wide v5, p1, Lcom/miui/sdk/tc/DataUsage$PackageDetail;->mRemainTrafficB:J

    add-long/2addr v3, v5

    iput-wide v3, p0, Lcom/miui/sdk/tc/DataUsage$PackageDetail;->mRemainTrafficB:J

    goto :goto_3

    :cond_5
    if-nez v1, :cond_6

    iget-boolean v3, p1, Lcom/miui/sdk/tc/DataUsage$PackageDetail;->mHasRemain:Z

    if-eqz v3, :cond_8

    :cond_6
    if-eqz v1, :cond_7

    iget-wide v3, p0, Lcom/miui/sdk/tc/DataUsage$PackageDetail;->mRemainTrafficB:J

    goto :goto_2

    :cond_7
    iget-wide v3, p1, Lcom/miui/sdk/tc/DataUsage$PackageDetail;->mRemainTrafficB:J

    :goto_2
    iput-wide v3, p0, Lcom/miui/sdk/tc/DataUsage$PackageDetail;->mRemainTrafficB:J

    iput-boolean v2, p0, Lcom/miui/sdk/tc/DataUsage$PackageDetail;->mHasRemain:Z

    :cond_8
    :goto_3
    iget-boolean p1, p0, Lcom/miui/sdk/tc/DataUsage$PackageDetail;->mHasUsed:Z

    if-eqz p1, :cond_9

    iget-boolean p1, p0, Lcom/miui/sdk/tc/DataUsage$PackageDetail;->mHasRemain:Z

    if-eqz p1, :cond_9

    move v0, v2

    :cond_9
    iput-boolean v0, p0, Lcom/miui/sdk/tc/DataUsage$PackageDetail;->mIsStable:Z

    if-eqz v0, :cond_a

    iget-wide v0, p0, Lcom/miui/sdk/tc/DataUsage$PackageDetail;->mRemainTrafficB:J

    iget-wide v2, p0, Lcom/miui/sdk/tc/DataUsage$PackageDetail;->mUsedTrafficB:J

    add-long/2addr v0, v2

    iput-wide v0, p0, Lcom/miui/sdk/tc/DataUsage$PackageDetail;->mTotalTrafficB:J

    :cond_a
    :goto_4
    return-void
.end method

.method private parse(Lorg/json/JSONObject;)V
    .locals 9

    if-eqz p1, :cond_7

    invoke-direct {p0, p1}, Lcom/miui/sdk/tc/DataUsage$PackageDetail;->checkPkgType(Lorg/json/JSONObject;)V

    sget-object v0, Lcom/miui/sdk/tc/DataUsage$1;->$SwitchMap$com$miui$sdk$tc$DataUsage$PackageDetail$PkgType:[I

    iget-object v1, p0, Lcom/miui/sdk/tc/DataUsage$PackageDetail;->mPkgType:Lcom/miui/sdk/tc/DataUsage$PackageDetail$PkgType;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    return-void

    :pswitch_0
    new-instance v0, Lcom/miui/sdk/tc/DataUsage$PackageDetail$CallTimeKeys;

    invoke-direct {v0}, Lcom/miui/sdk/tc/DataUsage$PackageDetail$CallTimeKeys;-><init>()V

    goto :goto_0

    :pswitch_1
    new-instance v0, Lcom/miui/sdk/tc/DataUsage$PackageDetail$BillKeys;

    invoke-direct {v0}, Lcom/miui/sdk/tc/DataUsage$PackageDetail$BillKeys;-><init>()V

    goto :goto_0

    :pswitch_2
    new-instance v0, Lcom/miui/sdk/tc/DataUsage$PackageDetail$LeisureKeys;

    invoke-direct {v0}, Lcom/miui/sdk/tc/DataUsage$PackageDetail$LeisureKeys;-><init>()V

    goto :goto_0

    :pswitch_3
    new-instance v0, Lcom/miui/sdk/tc/DataUsage$PackageDetail$AddPkgKeys;

    invoke-direct {v0}, Lcom/miui/sdk/tc/DataUsage$PackageDetail$AddPkgKeys;-><init>()V

    goto :goto_0

    :pswitch_4
    new-instance v0, Lcom/miui/sdk/tc/DataUsage$PackageDetail$OldKeys;

    invoke-direct {v0}, Lcom/miui/sdk/tc/DataUsage$PackageDetail$OldKeys;-><init>()V

    goto :goto_0

    :pswitch_5
    new-instance v0, Lcom/miui/sdk/tc/DataUsage$PackageDetail$DailyPkgKeys;

    invoke-direct {v0}, Lcom/miui/sdk/tc/DataUsage$PackageDetail$DailyPkgKeys;-><init>()V

    :goto_0
    iget-object v1, v0, Lcom/miui/sdk/tc/DataUsage$PackageDetail$PkgKeys;->mTotalKey:Ljava/lang/String;

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    const/4 v3, 0x1

    if-nez v2, :cond_0

    invoke-static {v1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v1

    iput-wide v1, p0, Lcom/miui/sdk/tc/DataUsage$PackageDetail;->mTotalTrafficB:J

    iget-object v1, v0, Lcom/miui/sdk/tc/DataUsage$PackageDetail$PkgKeys;->mTotalKey:Ljava/lang/String;

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->remove(Ljava/lang/String;)Ljava/lang/Object;

    iput-boolean v3, p0, Lcom/miui/sdk/tc/DataUsage$PackageDetail;->mHasTotal:Z

    :cond_0
    iget-object v1, v0, Lcom/miui/sdk/tc/DataUsage$PackageDetail$PkgKeys;->mUsedKey:Ljava/lang/String;

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    const/4 v4, 0x0

    if-nez v2, :cond_1

    invoke-static {v1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v1

    iput-wide v1, p0, Lcom/miui/sdk/tc/DataUsage$PackageDetail;->mUsedTrafficB:J

    iget-object v1, v0, Lcom/miui/sdk/tc/DataUsage$PackageDetail$PkgKeys;->mUsedKey:Ljava/lang/String;

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->remove(Ljava/lang/String;)Ljava/lang/Object;

    iput-boolean v3, p0, Lcom/miui/sdk/tc/DataUsage$PackageDetail;->mHasUsed:Z

    iget-wide v1, p0, Lcom/miui/sdk/tc/DataUsage$PackageDetail;->mUsedTrafficB:J

    const-wide/16 v5, -0x2

    cmp-long v1, v1, v5

    if-nez v1, :cond_1

    iput-boolean v4, p0, Lcom/miui/sdk/tc/DataUsage$PackageDetail;->mHasUsed:Z

    iget-boolean v1, p0, Lcom/miui/sdk/tc/DataUsage$PackageDetail;->mHasTotal:Z

    if-eqz v1, :cond_1

    iget-wide v1, p0, Lcom/miui/sdk/tc/DataUsage$PackageDetail;->mTotalTrafficB:J

    iput-wide v1, p0, Lcom/miui/sdk/tc/DataUsage$PackageDetail;->mUsedTrafficB:J

    iput-boolean v3, p0, Lcom/miui/sdk/tc/DataUsage$PackageDetail;->mHasUsed:Z

    iput-boolean v3, p0, Lcom/miui/sdk/tc/DataUsage$PackageDetail;->mIsJustOver:Z

    :cond_1
    iget-object v1, v0, Lcom/miui/sdk/tc/DataUsage$PackageDetail$PkgKeys;->mRemainKey:Ljava/lang/String;

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_3

    invoke-static {v1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v1

    iput-wide v1, p0, Lcom/miui/sdk/tc/DataUsage$PackageDetail;->mRemainTrafficB:J

    iget-object v1, v0, Lcom/miui/sdk/tc/DataUsage$PackageDetail$PkgKeys;->mRemainKey:Ljava/lang/String;

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->remove(Ljava/lang/String;)Ljava/lang/Object;

    iput-boolean v3, p0, Lcom/miui/sdk/tc/DataUsage$PackageDetail;->mHasRemain:Z

    iget-boolean v1, p0, Lcom/miui/sdk/tc/DataUsage$PackageDetail;->mHasTotal:Z

    if-eqz v1, :cond_2

    iget-boolean v2, p0, Lcom/miui/sdk/tc/DataUsage$PackageDetail;->mHasUsed:Z

    if-nez v2, :cond_2

    iget-wide v1, p0, Lcom/miui/sdk/tc/DataUsage$PackageDetail;->mTotalTrafficB:J

    iget-wide v5, p0, Lcom/miui/sdk/tc/DataUsage$PackageDetail;->mRemainTrafficB:J

    sub-long/2addr v1, v5

    iput-wide v1, p0, Lcom/miui/sdk/tc/DataUsage$PackageDetail;->mUsedTrafficB:J

    iput-boolean v3, p0, Lcom/miui/sdk/tc/DataUsage$PackageDetail;->mHasUsed:Z

    goto :goto_1

    :cond_2
    if-nez v1, :cond_3

    iget-boolean v1, p0, Lcom/miui/sdk/tc/DataUsage$PackageDetail;->mHasUsed:Z

    if-eqz v1, :cond_3

    iget-wide v1, p0, Lcom/miui/sdk/tc/DataUsage$PackageDetail;->mUsedTrafficB:J

    iget-wide v5, p0, Lcom/miui/sdk/tc/DataUsage$PackageDetail;->mRemainTrafficB:J

    add-long/2addr v1, v5

    iput-wide v1, p0, Lcom/miui/sdk/tc/DataUsage$PackageDetail;->mTotalTrafficB:J

    iput-boolean v3, p0, Lcom/miui/sdk/tc/DataUsage$PackageDetail;->mHasTotal:Z

    :cond_3
    :goto_1
    iget-object v1, v0, Lcom/miui/sdk/tc/DataUsage$PackageDetail$PkgKeys;->mExceedKey:Ljava/lang/String;

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_5

    invoke-static {v1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v1

    iget-object v0, v0, Lcom/miui/sdk/tc/DataUsage$PackageDetail$PkgKeys;->mExceedKey:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->remove(Ljava/lang/String;)Ljava/lang/Object;

    iget-wide v5, p0, Lcom/miui/sdk/tc/DataUsage$PackageDetail;->mRemainTrafficB:J

    const-wide/16 v7, 0x0

    cmp-long p1, v5, v7

    if-gtz p1, :cond_5

    cmp-long p1, v1, v7

    if-lez p1, :cond_5

    iput-boolean v3, p0, Lcom/miui/sdk/tc/DataUsage$PackageDetail;->mHasRemain:Z

    neg-long v0, v1

    iput-wide v0, p0, Lcom/miui/sdk/tc/DataUsage$PackageDetail;->mRemainTrafficB:J

    iget-boolean p1, p0, Lcom/miui/sdk/tc/DataUsage$PackageDetail;->mHasTotal:Z

    if-eqz p1, :cond_4

    iget-boolean v2, p0, Lcom/miui/sdk/tc/DataUsage$PackageDetail;->mHasUsed:Z

    if-nez v2, :cond_4

    iget-wide v5, p0, Lcom/miui/sdk/tc/DataUsage$PackageDetail;->mTotalTrafficB:J

    sub-long/2addr v5, v0

    iput-wide v5, p0, Lcom/miui/sdk/tc/DataUsage$PackageDetail;->mUsedTrafficB:J

    iput-boolean v3, p0, Lcom/miui/sdk/tc/DataUsage$PackageDetail;->mHasUsed:Z

    goto :goto_2

    :cond_4
    if-nez p1, :cond_5

    iget-boolean p1, p0, Lcom/miui/sdk/tc/DataUsage$PackageDetail;->mHasUsed:Z

    if-eqz p1, :cond_5

    iget-wide v5, p0, Lcom/miui/sdk/tc/DataUsage$PackageDetail;->mUsedTrafficB:J

    add-long/2addr v5, v0

    iput-wide v5, p0, Lcom/miui/sdk/tc/DataUsage$PackageDetail;->mTotalTrafficB:J

    iput-boolean v3, p0, Lcom/miui/sdk/tc/DataUsage$PackageDetail;->mHasTotal:Z

    :cond_5
    :goto_2
    iget-boolean p1, p0, Lcom/miui/sdk/tc/DataUsage$PackageDetail;->mHasTotal:Z

    if-eqz p1, :cond_6

    iget-boolean p1, p0, Lcom/miui/sdk/tc/DataUsage$PackageDetail;->mHasUsed:Z

    if-eqz p1, :cond_6

    move v4, v3

    :cond_6
    iput-boolean v4, p0, Lcom/miui/sdk/tc/DataUsage$PackageDetail;->mIsStable:Z

    if-eqz v4, :cond_7

    iget-boolean p1, p0, Lcom/miui/sdk/tc/DataUsage$PackageDetail;->mHasRemain:Z

    if-nez p1, :cond_7

    iget-wide v0, p0, Lcom/miui/sdk/tc/DataUsage$PackageDetail;->mTotalTrafficB:J

    iget-wide v4, p0, Lcom/miui/sdk/tc/DataUsage$PackageDetail;->mUsedTrafficB:J

    sub-long/2addr v0, v4

    iput-wide v0, p0, Lcom/miui/sdk/tc/DataUsage$PackageDetail;->mRemainTrafficB:J

    iput-boolean v3, p0, Lcom/miui/sdk/tc/DataUsage$PackageDetail;->mHasRemain:Z

    :cond_7
    return-void

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method public getDetailString()Ljava/lang/String;
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "\u662f\u5426\u5b8c\u6574:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/miui/sdk/tc/DataUsage$PackageDetail;->mIsStable:Z

    if-eqz v1, :cond_0

    const-string v1, "\u662f"

    goto :goto_0

    :cond_0
    const-string v1, "\u5426"

    :goto_0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ";\u5957\u9910\u603b\u91cf:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/miui/sdk/tc/DataUsage$PackageDetail;->mTotalTrafficB:J

    invoke-direct {p0, v1, v2}, Lcom/miui/sdk/tc/DataUsage$PackageDetail;->getTrafficStr(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ";\u5df2\u4f7f\u7528:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/miui/sdk/tc/DataUsage$PackageDetail;->mUsedTrafficB:J

    invoke-direct {p0, v1, v2}, Lcom/miui/sdk/tc/DataUsage$PackageDetail;->getTrafficStr(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ";\u5269\u4f59:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/miui/sdk/tc/DataUsage$PackageDetail;->mRemainTrafficB:J

    invoke-direct {p0, v1, v2}, Lcom/miui/sdk/tc/DataUsage$PackageDetail;->getTrafficStr(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getRemainTrafficB()J
    .locals 2

    iget-wide v0, p0, Lcom/miui/sdk/tc/DataUsage$PackageDetail;->mRemainTrafficB:J

    return-wide v0
.end method

.method public getTotalTrafficB()J
    .locals 2

    iget-wide v0, p0, Lcom/miui/sdk/tc/DataUsage$PackageDetail;->mTotalTrafficB:J

    return-wide v0
.end method

.method public getType()Lcom/miui/sdk/tc/DataUsage$PackageDetail$PkgType;
    .locals 1

    iget-object v0, p0, Lcom/miui/sdk/tc/DataUsage$PackageDetail;->mPkgType:Lcom/miui/sdk/tc/DataUsage$PackageDetail$PkgType;

    return-object v0
.end method

.method public getUsedTrafficB()J
    .locals 2

    iget-wide v0, p0, Lcom/miui/sdk/tc/DataUsage$PackageDetail;->mUsedTrafficB:J

    return-wide v0
.end method

.method public hasRemain()Z
    .locals 1

    iget-boolean v0, p0, Lcom/miui/sdk/tc/DataUsage$PackageDetail;->mHasRemain:Z

    return v0
.end method

.method public hasTotal()Z
    .locals 1

    iget-boolean v0, p0, Lcom/miui/sdk/tc/DataUsage$PackageDetail;->mHasTotal:Z

    return v0
.end method

.method public hasUsed()Z
    .locals 1

    iget-boolean v0, p0, Lcom/miui/sdk/tc/DataUsage$PackageDetail;->mHasUsed:Z

    return v0
.end method

.method public hasValue()Z
    .locals 1

    iget-boolean v0, p0, Lcom/miui/sdk/tc/DataUsage$PackageDetail;->mHasTotal:Z

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lcom/miui/sdk/tc/DataUsage$PackageDetail;->mHasUsed:Z

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lcom/miui/sdk/tc/DataUsage$PackageDetail;->mHasRemain:Z

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method public isJustOver()Z
    .locals 1

    iget-boolean v0, p0, Lcom/miui/sdk/tc/DataUsage$PackageDetail;->mIsJustOver:Z

    return v0
.end method

.method public isStable()Z
    .locals 1

    iget-boolean v0, p0, Lcom/miui/sdk/tc/DataUsage$PackageDetail;->mIsStable:Z

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "mIsStable:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/miui/sdk/tc/DataUsage$PackageDetail;->mIsStable:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ";mTotalTrafficB:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/miui/sdk/tc/DataUsage$PackageDetail;->mTotalTrafficB:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ";mUsedTrafficB:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/miui/sdk/tc/DataUsage$PackageDetail;->mUsedTrafficB:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ";mRemainTrafficB:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/miui/sdk/tc/DataUsage$PackageDetail;->mRemainTrafficB:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
