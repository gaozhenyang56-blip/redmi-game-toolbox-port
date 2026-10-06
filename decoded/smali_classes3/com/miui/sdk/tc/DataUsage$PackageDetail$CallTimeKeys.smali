.class Lcom/miui/sdk/tc/DataUsage$PackageDetail$CallTimeKeys;
.super Lcom/miui/sdk/tc/DataUsage$PackageDetail$PkgKeys;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/sdk/tc/DataUsage$PackageDetail;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "CallTimeKeys"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/miui/sdk/tc/DataUsage$PackageDetail$PkgKeys;-><init>(Lcom/miui/sdk/tc/DataUsage$1;)V

    const-string v0, "CALLTIME_TOTAL"

    iput-object v0, p0, Lcom/miui/sdk/tc/DataUsage$PackageDetail$PkgKeys;->mTotalKey:Ljava/lang/String;

    const-string v0, "CALLTIME_USED"

    iput-object v0, p0, Lcom/miui/sdk/tc/DataUsage$PackageDetail$PkgKeys;->mUsedKey:Ljava/lang/String;

    const-string v0, "CALLTIME_REMAINED"

    iput-object v0, p0, Lcom/miui/sdk/tc/DataUsage$PackageDetail$PkgKeys;->mRemainKey:Ljava/lang/String;

    const-string v0, "CALLTIME_EXCEED"

    iput-object v0, p0, Lcom/miui/sdk/tc/DataUsage$PackageDetail$PkgKeys;->mExceedKey:Ljava/lang/String;

    return-void
.end method
