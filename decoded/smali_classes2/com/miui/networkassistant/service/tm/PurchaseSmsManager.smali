.class public Lcom/miui/networkassistant/service/tm/PurchaseSmsManager;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final TAG:Ljava/lang/String;

.field private mCommonConfig:Lcom/miui/networkassistant/config/CommonConfig;

.field private mContext:Landroid/content/Context;

.field private mPurchaseSmsNumberResult:Lcom/miui/networkassistant/webapi/PurchaseSmsNumberResult;

.field private mSmsNumberWhiteList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "PurchaseSmsManager"

    iput-object v0, p0, Lcom/miui/networkassistant/service/tm/PurchaseSmsManager;->TAG:Ljava/lang/String;

    iput-object p1, p0, Lcom/miui/networkassistant/service/tm/PurchaseSmsManager;->mContext:Landroid/content/Context;

    invoke-static {p1}, Lcom/miui/networkassistant/config/CommonConfig;->getInstance(Landroid/content/Context;)Lcom/miui/networkassistant/config/CommonConfig;

    move-result-object p1

    iput-object p1, p0, Lcom/miui/networkassistant/service/tm/PurchaseSmsManager;->mCommonConfig:Lcom/miui/networkassistant/config/CommonConfig;

    new-instance v0, Lcom/miui/networkassistant/webapi/PurchaseSmsNumberResult;

    invoke-virtual {p1}, Lcom/miui/networkassistant/config/CommonConfig;->getPurchaseSmsNumber()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Lcom/miui/networkassistant/webapi/PurchaseSmsNumberResult;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/miui/networkassistant/service/tm/PurchaseSmsManager;->mPurchaseSmsNumberResult:Lcom/miui/networkassistant/webapi/PurchaseSmsNumberResult;

    invoke-virtual {v0}, Lcom/miui/networkassistant/webapi/PurchaseSmsNumberResult;->getSmsNumberList()Ljava/util/ArrayList;

    move-result-object p1

    iput-object p1, p0, Lcom/miui/networkassistant/service/tm/PurchaseSmsManager;->mSmsNumberWhiteList:Ljava/util/ArrayList;

    return-void
.end method

.method static synthetic access$000(Lcom/miui/networkassistant/service/tm/PurchaseSmsManager;)Lcom/miui/networkassistant/webapi/PurchaseSmsNumberResult;
    .locals 0

    iget-object p0, p0, Lcom/miui/networkassistant/service/tm/PurchaseSmsManager;->mPurchaseSmsNumberResult:Lcom/miui/networkassistant/webapi/PurchaseSmsNumberResult;

    return-object p0
.end method

.method static synthetic access$002(Lcom/miui/networkassistant/service/tm/PurchaseSmsManager;Lcom/miui/networkassistant/webapi/PurchaseSmsNumberResult;)Lcom/miui/networkassistant/webapi/PurchaseSmsNumberResult;
    .locals 0

    iput-object p1, p0, Lcom/miui/networkassistant/service/tm/PurchaseSmsManager;->mPurchaseSmsNumberResult:Lcom/miui/networkassistant/webapi/PurchaseSmsNumberResult;

    return-object p1
.end method

.method static synthetic access$100(Lcom/miui/networkassistant/service/tm/PurchaseSmsManager;)Lcom/miui/networkassistant/config/CommonConfig;
    .locals 0

    iget-object p0, p0, Lcom/miui/networkassistant/service/tm/PurchaseSmsManager;->mCommonConfig:Lcom/miui/networkassistant/config/CommonConfig;

    return-object p0
.end method

.method static synthetic access$202(Lcom/miui/networkassistant/service/tm/PurchaseSmsManager;Ljava/util/ArrayList;)Ljava/util/ArrayList;
    .locals 0

    iput-object p1, p0, Lcom/miui/networkassistant/service/tm/PurchaseSmsManager;->mSmsNumberWhiteList:Ljava/util/ArrayList;

    return-object p1
.end method

.method private getSlotIdExtra(Landroid/content/Intent;I)I
    .locals 6

    const-string v0, "miui.telephony.SubscriptionManager"

    invoke-static {v0}, Lbh/d$a;->d(Ljava/lang/String;)Lbh/d$a;

    move-result-object v0

    const/4 v1, 0x2

    new-array v2, v1, [Ljava/lang/Class;

    const-class v3, Landroid/content/Intent;

    const/4 v4, 0x0

    aput-object v3, v2, v4

    sget-object v3, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    const/4 v5, 0x1

    aput-object v3, v2, v5

    new-array v1, v1, [Ljava/lang/Object;

    aput-object p1, v1, v4

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, v1, v5

    const-string p1, "getSlotIdExtra"

    invoke-virtual {v0, p1, v2, v1}, Lbh/d$a;->c(Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Lbh/d$a;

    move-result-object p1

    invoke-virtual {p1}, Lbh/d$a;->i()I

    move-result p1

    return p1
.end method


# virtual methods
.method checkContainReceiveNumber(Landroid/content/Intent;)Z
    .locals 2

    invoke-static {p1}, Lcom/miui/networkassistant/utils/TelephonyUtil;->getMessagesFromIntent(Landroid/content/Intent;)[Landroid/telephony/SmsMessage;

    move-result-object p1

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    array-length v1, p1

    if-lez v1, :cond_0

    aget-object p1, p1, v0

    invoke-virtual {p1}, Landroid/telephony/SmsMessage;->getDisplayOriginatingAddress()Ljava/lang/String;

    move-result-object p1

    const-string v1, "+86"

    invoke-static {p1, v1}, Lcom/miui/networkassistant/utils/TelephonyUtil;->removePhoneNumPrefix(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iget-object v1, p0, Lcom/miui/networkassistant/service/tm/PurchaseSmsManager;->mSmsNumberWhiteList:Ljava/util/ArrayList;

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lez v1, :cond_0

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v0, "PurchaseSmsManager"

    const-string v1, "mina checkContainReceiveNumber"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/miui/networkassistant/service/tm/PurchaseSmsManager;->mSmsNumberWhiteList:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result p1

    return p1

    :cond_0
    return v0
.end method

.method checkPurchaseSmsNumberWhiteList()V
    .locals 4

    sget-boolean v0, Lcom/miui/networkassistant/utils/DeviceUtil;->IS_INTERNATIONAL_BUILD:Z

    if-nez v0, :cond_1

    invoke-static {}, Lcom/miui/networkassistant/utils/PrivacyDeclareAndAllowNetworkUtil;->isAllowNetwork()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-object v2, p0, Lcom/miui/networkassistant/service/tm/PurchaseSmsManager;->mCommonConfig:Lcom/miui/networkassistant/config/CommonConfig;

    invoke-virtual {v2}, Lcom/miui/networkassistant/config/CommonConfig;->getPurchaseSmsNumberUpdateTime()J

    move-result-wide v2

    cmp-long v0, v0, v2

    if-lez v0, :cond_1

    new-instance v0, Lcom/miui/networkassistant/service/tm/PurchaseSmsManager$1;

    invoke-direct {v0, p0}, Lcom/miui/networkassistant/service/tm/PurchaseSmsManager$1;-><init>(Lcom/miui/networkassistant/service/tm/PurchaseSmsManager;)V

    invoke-static {v0}, Lcom/miui/common/base/asyn/a;->a(Ljava/lang/Runnable;)V

    :cond_1
    :goto_0
    return-void
.end method

.method getSlotIdFromIntent(Landroid/content/Intent;)I
    .locals 3

    sget v0, Lcom/miui/networkassistant/dual/Sim;->MAX_SLOT_COUNT:I

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-le v0, v2, :cond_0

    invoke-direct {p0, p1, v1}, Lcom/miui/networkassistant/service/tm/PurchaseSmsManager;->getSlotIdExtra(Landroid/content/Intent;I)I

    move-result v1

    if-gez v1, :cond_0

    const-string p1, "PurchaseSmsManager"

    const-string v0, "getSlotIdFromIntent slotId < 0"

    invoke-static {p1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return v1
.end method
