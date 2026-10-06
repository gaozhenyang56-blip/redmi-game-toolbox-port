.class public Lcom/miui/networkassistant/utils/TelephonyUtil;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/networkassistant/utils/TelephonyUtil$PhoneNumberLoadedBySlotListener;,
        Lcom/miui/networkassistant/utils/TelephonyUtil$PhoneNumberLoadedListener;
    }
.end annotation


# static fields
.field public static final CBN:Ljava/lang/String; = "CBN"

.field public static final CMCC:Ljava/lang/String; = "CMCC"

.field private static final KEY_CARRIER_NAME:Ljava/lang/String; = "carrierName"

.field private static final METHOD_GET_CARRIER_NAME:Ljava/lang/String; = "getCarrierName"

.field public static final MIMOBILE:Ljava/lang/String; = "MIMOBILE"

.field public static final OPERATOR_CBN:I = 0x5

.field public static final OPERATOR_CMCC:I = 0x0

.field public static final OPERATOR_MI_MOBILE:I = 0x4

.field public static final OPERATOR_TELCOM:I = 0x2

.field public static final OPERATOR_UNICOM:I = 0x1

.field public static final OPERATOR_VIRTUAL:I = 0x3

.field private static final PREFIX_MI_MOBIE:Ljava/lang/String; = "\u5c0f\u7c73"

.field private static final TAG:Ljava/lang/String; = "TelephonyUtil"

.field public static final TELECOM:Ljava/lang/String; = "TELECOM"

.field public static final UNICOM:Ljava/lang/String; = "UNICOM"

.field public static final VIRTUALOPT:Ljava/lang/String; = "400"

.field private static final VIRTUAL_SIM_CONTENT:Ljava/lang/String; = "content://com.miui.virtualsim.provider.virtualsimInfo"

.field private static sNotSupportCorrectionList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/miui/networkassistant/utils/TelephonyUtil;->sNotSupportCorrectionList:Ljava/util/ArrayList;

    const-string v1, "170"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/miui/networkassistant/utils/TelephonyUtil;->sNotSupportCorrectionList:Ljava/util/ArrayList;

    const-string v1, "171"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/miui/networkassistant/utils/TelephonyUtil;->sNotSupportCorrectionList:Ljava/util/ArrayList;

    const-string v1, "162"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/miui/networkassistant/utils/TelephonyUtil;->sNotSupportCorrectionList:Ljava/util/ArrayList;

    const-string v1, "165"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/miui/networkassistant/utils/TelephonyUtil;->sNotSupportCorrectionList:Ljava/util/ArrayList;

    const-string v1, "167"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/miui/networkassistant/utils/TelephonyUtil;->sNotSupportCorrectionList:Ljava/util/ArrayList;

    const-string v1, "134"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/miui/networkassistant/utils/TelephonyUtil;->sNotSupportCorrectionList:Ljava/util/ArrayList;

    const-string v1, "174"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/miui/networkassistant/utils/TelephonyUtil;->sNotSupportCorrectionList:Ljava/util/ArrayList;

    const-string v1, "140"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/miui/networkassistant/utils/TelephonyUtil;->sNotSupportCorrectionList:Ljava/util/ArrayList;

    const-string v1, "141"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/miui/networkassistant/utils/TelephonyUtil;->sNotSupportCorrectionList:Ljava/util/ArrayList;

    const-string v1, "144"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/miui/networkassistant/utils/TelephonyUtil;->sNotSupportCorrectionList:Ljava/util/ArrayList;

    const-string v1, "146"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/miui/networkassistant/utils/TelephonyUtil;->sNotSupportCorrectionList:Ljava/util/ArrayList;

    const-string v1, "148"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static synthetic a(Landroid/content/Context;ILcom/miui/networkassistant/utils/TelephonyUtil$PhoneNumberLoadedListener;Landroid/os/Handler;)V
    .locals 0

    invoke-static {p0, p1, p2, p3}, Lcom/miui/networkassistant/utils/TelephonyUtil;->lambda$getPhoneNumber$1(Landroid/content/Context;ILcom/miui/networkassistant/utils/TelephonyUtil$PhoneNumberLoadedListener;Landroid/os/Handler;)V

    return-void
.end method

.method public static synthetic b(Lcom/miui/networkassistant/utils/TelephonyUtil$PhoneNumberLoadedBySlotListener;Ljava/lang/String;I)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/miui/networkassistant/utils/TelephonyUtil;->lambda$getPhoneNumber$2(Lcom/miui/networkassistant/utils/TelephonyUtil$PhoneNumberLoadedBySlotListener;Ljava/lang/String;I)V

    return-void
.end method

.method public static synthetic c(Landroid/content/Context;ILcom/miui/networkassistant/utils/TelephonyUtil$PhoneNumberLoadedBySlotListener;Landroid/os/Handler;)V
    .locals 0

    invoke-static {p0, p1, p2, p3}, Lcom/miui/networkassistant/utils/TelephonyUtil;->lambda$getPhoneNumber$3(Landroid/content/Context;ILcom/miui/networkassistant/utils/TelephonyUtil$PhoneNumberLoadedBySlotListener;Landroid/os/Handler;)V

    return-void
.end method

.method public static synthetic d(Lcom/miui/networkassistant/utils/TelephonyUtil$PhoneNumberLoadedListener;Ljava/lang/String;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/miui/networkassistant/utils/TelephonyUtil;->lambda$getPhoneNumber$0(Lcom/miui/networkassistant/utils/TelephonyUtil$PhoneNumberLoadedListener;Ljava/lang/String;)V

    return-void
.end method

.method public static getCurrentMobileSlotNum()I
    .locals 2

    invoke-static {}, Lcom/miui/networkassistant/utils/TelephonyUtil;->getCurrentMobileSlotReal()I

    move-result v0

    if-ltz v0, :cond_0

    const/4 v1, 0x1

    if-le v0, v1, :cond_1

    :cond_0
    const/4 v0, 0x0

    :cond_1
    return v0
.end method

.method public static getCurrentMobileSlotReal()I
    .locals 7

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/4 v1, 0x1

    const/4 v2, -0x1

    const/16 v3, 0x1f

    if-lt v0, v3, :cond_2

    invoke-static {}, Lcom/miui/networkassistant/utils/d;->a()I

    move-result v0

    invoke-static {v0}, Lcom/miui/networkassistant/utils/e;->a(I)I

    move-result v0

    if-ltz v0, :cond_1

    if-le v0, v1, :cond_0

    goto :goto_0

    :cond_0
    move v2, v0

    :cond_1
    :goto_0
    return v2

    :cond_2
    const-string v0, "miui.telephony.SubscriptionManager"

    invoke-static {v0}, Lbh/d$a;->d(Ljava/lang/String;)Lbh/d$a;

    move-result-object v0

    const/4 v3, 0x0

    new-array v4, v3, [Ljava/lang/Object;

    const-string v5, "getDefault"

    const/4 v6, 0x0

    invoke-virtual {v0, v5, v6, v4}, Lbh/d$a;->c(Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Lbh/d$a;

    move-result-object v0

    invoke-virtual {v0}, Lbh/d$a;->l()Lbh/d$a;

    move-result-object v0

    new-array v3, v3, [Ljava/lang/Object;

    const-string v4, "getDefaultDataSlotId"

    invoke-virtual {v0, v4, v6, v3}, Lbh/d$a;->b(Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Lbh/d$a;

    move-result-object v0

    invoke-virtual {v0}, Lbh/d$a;->i()I

    move-result v0

    if-ltz v0, :cond_4

    if-le v0, v1, :cond_3

    goto :goto_1

    :cond_3
    move v2, v0

    :cond_4
    :goto_1
    return v2
.end method

.method public static getDataRoamingEnabled(Landroid/content/Context;)Z
    .locals 2

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    invoke-static {}, Lcom/miui/networkassistant/utils/TelephonyUtil;->getDataRoamingName()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p0

    if-eqz p0, :cond_0

    const/4 v1, 0x1

    :cond_0
    return v1
.end method

.method private static getDataRoamingName()Ljava/lang/String;
    .locals 3

    const-string v0, "radio.dataroaming.enable.suffix.subid"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lx4/v1;->a(Ljava/lang/String;Z)Z

    move-result v0

    const-string v1, "data_roaming"

    if-eqz v0, :cond_1

    invoke-static {}, Lcom/miui/networkassistant/utils/TelephonyUtil;->getSimCount()I

    move-result v0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_0

    return-object v1

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/miui/networkassistant/utils/TelephonyUtil;->getDefaultDataSubscriptionId()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_1
    return-object v1
.end method

.method public static getDataRoamingType(Landroid/telephony/ServiceState;)I
    .locals 7

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/16 v3, 0x1d

    if-lt v0, v3, :cond_1

    const-string v0, "android.telephony.NetworkRegistrationInfo"

    invoke-static {v0}, Lbh/d$a;->d(Ljava/lang/String;)Lbh/d$a;

    move-result-object v0

    const-string v3, "DOMAIN_PS"

    invoke-virtual {v0, v3}, Lbh/d$a;->h(Ljava/lang/String;)Lbh/d$a;

    move-result-object v0

    invoke-virtual {v0}, Lbh/d$a;->i()I

    move-result v0

    invoke-static {p0}, Lbh/d$a;->e(Ljava/lang/Object;)Lbh/d$a;

    move-result-object p0

    const/4 v3, 0x2

    new-array v4, v3, [Ljava/lang/Class;

    sget-object v5, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v5, v4, v2

    const/4 v6, 0x1

    aput-object v5, v4, v6

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v2

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v6

    const-string v5, "getNetworkRegistrationInfo"

    invoke-virtual {p0, v5, v4, v3}, Lbh/d$a;->b(Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Lbh/d$a;

    move-result-object p0

    invoke-virtual {p0}, Lbh/d$a;->k()Ljava/lang/Object;

    move-result-object p0

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "object:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, "////domain_ps"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v3, "TelephonyUtil"

    invoke-static {v3, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz p0, :cond_0

    invoke-static {p0}, Lbh/d$a;->e(Ljava/lang/Object;)Lbh/d$a;

    move-result-object p0

    new-array v0, v2, [Ljava/lang/Object;

    const-string v2, "getRoamingType"

    invoke-virtual {p0, v2, v1, v0}, Lbh/d$a;->b(Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Lbh/d$a;

    move-result-object p0

    :goto_0
    invoke-virtual {p0}, Lbh/d$a;->i()I

    move-result p0

    return p0

    :cond_0
    return v2

    :cond_1
    invoke-static {p0}, Lbh/d$a;->e(Ljava/lang/Object;)Lbh/d$a;

    move-result-object p0

    new-array v0, v2, [Ljava/lang/Object;

    const-string v2, "getDataRoamingType"

    invoke-virtual {p0, v2, v1, v0}, Lbh/d$a;->b(Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Lbh/d$a;

    move-result-object p0

    goto :goto_0
.end method

.method public static getDefaultDataSubscriptionId()I
    .locals 7

    const-string v0, "TelephonyUtil"

    const/4 v1, -0x1

    :try_start_0
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const/16 v3, 0x18

    const/4 v4, 0x0

    const/4 v5, 0x0

    const-string v6, "android.telephony.SubscriptionManager"

    if-lt v2, v3, :cond_0

    :try_start_1
    invoke-static {v6}, Lbh/d$a;->d(Ljava/lang/String;)Lbh/d$a;

    move-result-object v2

    const-string v3, "getDefaultDataSubscriptionId"

    new-array v4, v4, [Ljava/lang/Object;

    invoke-virtual {v2, v3, v5, v4}, Lbh/d$a;->c(Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Lbh/d$a;

    move-result-object v2

    invoke-virtual {v2}, Lbh/d$a;->i()I

    move-result v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getDefaultDataSubscriptionId >= N, subId:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    :goto_0
    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :cond_0
    invoke-static {v6}, Lbh/d$a;->d(Ljava/lang/String;)Lbh/d$a;

    move-result-object v2

    const-string v3, "getDefaultDataSubId"

    new-array v4, v4, [Ljava/lang/Object;

    invoke-virtual {v2, v3, v5, v4}, Lbh/d$a;->c(Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Lbh/d$a;

    move-result-object v2

    invoke-virtual {v2}, Lbh/d$a;->i()I

    move-result v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getDefaultDataSubscriptionId < N, subId:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    :catch_0
    move-exception v2

    const-string v3, "getDefaultDataSubscriptionId "

    invoke-static {v0, v3, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_1
    return v1
.end method

.method public static getImei()Ljava/lang/String;
    .locals 5

    const-string v0, "miui.telephony.TelephonyManager"

    invoke-static {v0}, Lbh/d$a;->d(Ljava/lang/String;)Lbh/d$a;

    move-result-object v0

    const/4 v1, 0x0

    new-array v2, v1, [Ljava/lang/Object;

    const-string v3, "getDefault"

    const/4 v4, 0x0

    invoke-virtual {v0, v3, v4, v2}, Lbh/d$a;->c(Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Lbh/d$a;

    move-result-object v0

    invoke-virtual {v0}, Lbh/d$a;->l()Lbh/d$a;

    move-result-object v0

    new-array v1, v1, [Ljava/lang/Object;

    const-string v2, "getDeviceId"

    invoke-virtual {v0, v2, v4, v1}, Lbh/d$a;->b(Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Lbh/d$a;

    move-result-object v0

    invoke-virtual {v0}, Lbh/d$a;->m()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static getImsi(I)Ljava/lang/String;
    .locals 5

    const-string v0, "miui.telephony.TelephonyManager"

    invoke-static {v0}, Lbh/d$a;->d(Ljava/lang/String;)Lbh/d$a;

    move-result-object v0

    const/4 v1, 0x0

    new-array v2, v1, [Ljava/lang/Object;

    const-string v3, "getDefault"

    const/4 v4, 0x0

    invoke-virtual {v0, v3, v4, v2}, Lbh/d$a;->c(Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Lbh/d$a;

    move-result-object v0

    invoke-virtual {v0}, Lbh/d$a;->l()Lbh/d$a;

    move-result-object v0

    const/4 v2, 0x1

    new-array v3, v2, [Ljava/lang/Class;

    sget-object v4, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v4, v3, v1

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    aput-object p0, v2, v1

    const-string p0, "getSubscriberIdForSlot"

    invoke-virtual {v0, p0, v3, v2}, Lbh/d$a;->b(Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Lbh/d$a;

    move-result-object p0

    invoke-virtual {p0}, Lbh/d$a;->m()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static getMessagesFromIntent(Landroid/content/Intent;)[Landroid/telephony/SmsMessage;
    .locals 11

    invoke-virtual {p0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object p0

    const/4 v0, 0x0

    :try_start_0
    const-string v1, "pdus"

    invoke-virtual {p0, v1}, Landroid/os/BaseBundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Ljava/lang/Object;

    const-string v2, "format"

    invoke-virtual {p0, v2}, Landroid/os/BaseBundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    array-length v2, v1

    new-array v0, v2, [Landroid/telephony/SmsMessage;

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    array-length v4, v1

    if-ge v3, v4, :cond_0

    aget-object v4, v1, v3

    check-cast v4, [B

    const-string v5, "android.telephony.SmsMessage"

    invoke-static {v5}, Lbh/d$a;->d(Ljava/lang/String;)Lbh/d$a;

    move-result-object v5

    const-string v6, "createFromPdu"

    const/4 v7, 0x2

    new-array v8, v7, [Ljava/lang/Class;

    const-class v9, [B

    aput-object v9, v8, v2

    const-class v9, Ljava/lang/String;

    const/4 v10, 0x1

    aput-object v9, v8, v10

    new-array v7, v7, [Ljava/lang/Object;

    aput-object v4, v7, v2

    aput-object p0, v7, v10

    invoke-virtual {v5, v6, v8, v7}, Lbh/d$a;->c(Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Lbh/d$a;

    move-result-object v4

    invoke-virtual {v4}, Lbh/d$a;->k()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/telephony/SmsMessage;

    aput-object v4, v0, v3
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :catch_0
    move-exception p0

    const-string v1, "TelephonyUtil"

    const-string v2, "getMessagesFromIntent"

    invoke-static {v1, v2, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    return-object v0
.end method

.method public static getNetworkOperator()Ljava/lang/String;
    .locals 5

    const-string v0, "miui.telephony.TelephonyManager"

    invoke-static {v0}, Lbh/d$a;->d(Ljava/lang/String;)Lbh/d$a;

    move-result-object v0

    const/4 v1, 0x0

    new-array v2, v1, [Ljava/lang/Object;

    const-string v3, "getDefault"

    const/4 v4, 0x0

    invoke-virtual {v0, v3, v4, v2}, Lbh/d$a;->c(Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Lbh/d$a;

    move-result-object v0

    invoke-virtual {v0}, Lbh/d$a;->l()Lbh/d$a;

    move-result-object v0

    new-array v1, v1, [Ljava/lang/Object;

    const-string v2, "getNetworkOperator"

    invoke-virtual {v0, v2, v4, v1}, Lbh/d$a;->b(Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Lbh/d$a;

    move-result-object v0

    invoke-virtual {v0}, Lbh/d$a;->m()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    const-string v0, ""

    :cond_0
    return-object v0
.end method

.method public static getNetworkTypeForSlot(Landroid/content/Context;I)I
    .locals 4

    const-string p0, "miui.telephony.TelephonyManagerEx"

    invoke-static {p0}, Lbh/d$a;->d(Ljava/lang/String;)Lbh/d$a;

    move-result-object p0

    const/4 v0, 0x0

    new-array v1, v0, [Ljava/lang/Object;

    const-string v2, "getDefault"

    const/4 v3, 0x0

    invoke-virtual {p0, v2, v3, v1}, Lbh/d$a;->c(Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Lbh/d$a;

    move-result-object p0

    invoke-virtual {p0}, Lbh/d$a;->l()Lbh/d$a;

    move-result-object p0

    const/4 v1, 0x1

    new-array v2, v1, [Ljava/lang/Class;

    sget-object v3, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v3, v2, v0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, v1, v0

    const-string p1, "getNetworkTypeForSlot"

    invoke-virtual {p0, p1, v2, v1}, Lbh/d$a;->b(Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Lbh/d$a;

    move-result-object p0

    invoke-virtual {p0}, Lbh/d$a;->i()I

    move-result p0

    return p0
.end method

.method public static getOperator(I)I
    .locals 8

    invoke-static {p0}, Lcom/miui/networkassistant/utils/TelephonyUtil;->isMiMobileOperator(I)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p0, 0x4

    return p0

    :cond_0
    const/4 v0, -0x1

    invoke-static {p0}, Lcom/miui/networkassistant/utils/TelephonyUtil;->getSimOperatorForSlot(I)Ljava/lang/String;

    move-result-object p0

    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    const-string v2, "46001"

    const-string v3, "46006"

    const-string v4, "46009"

    const-string v5, "46010"

    filled-new-array {v2, v3, v4, v5}, [Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Ljava/util/Collections;->addAll(Ljava/util/Collection;[Ljava/lang/Object;)Z

    new-instance v2, Ljava/util/HashSet;

    invoke-direct {v2}, Ljava/util/HashSet;-><init>()V

    const-string v3, "46003"

    const-string v4, "46005"

    const-string v5, "46011"

    const-string v6, "46012"

    filled-new-array {v3, v4, v5, v6}, [Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Ljava/util/Collections;->addAll(Ljava/util/Collection;[Ljava/lang/Object;)Z

    new-instance v3, Ljava/util/HashSet;

    invoke-direct {v3}, Ljava/util/HashSet;-><init>()V

    const-string v4, "46000"

    const-string v5, "46002"

    const-string v6, "46004"

    const-string v7, "46007"

    filled-new-array {v4, v5, v6, v7}, [Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Ljava/util/Collections;->addAll(Ljava/util/Collection;[Ljava/lang/Object;)Z

    new-instance v4, Ljava/util/HashSet;

    invoke-direct {v4}, Ljava/util/HashSet;-><init>()V

    const-string v5, "46013"

    const-string v6, "46015"

    filled-new-array {v5, v6}, [Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Ljava/util/Collections;->addAll(Ljava/util/Collection;[Ljava/lang/Object;)Z

    invoke-virtual {v1, p0}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    invoke-virtual {v2, p0}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    const/4 v0, 0x2

    goto :goto_0

    :cond_2
    invoke-virtual {v3, p0}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    const/4 v0, 0x0

    goto :goto_0

    :cond_3
    invoke-virtual {v4, p0}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_4

    const/4 v0, 0x5

    :cond_4
    :goto_0
    return v0
.end method

.method public static getOperatorStr(I)Ljava/lang/String;
    .locals 1

    invoke-static {p0}, Lcom/miui/networkassistant/utils/TelephonyUtil;->getOperator(I)I

    move-result p0

    const/4 v0, 0x1

    if-ne p0, v0, :cond_0

    const-string p0, "UNICOM"

    return-object p0

    :cond_0
    const/4 v0, 0x2

    if-ne p0, v0, :cond_1

    const-string p0, "TELECOM"

    return-object p0

    :cond_1
    if-nez p0, :cond_2

    const-string p0, "CMCC"

    return-object p0

    :cond_2
    const/4 v0, 0x4

    if-ne p0, v0, :cond_3

    const-string p0, "MIMOBILE"

    return-object p0

    :cond_3
    const/4 v0, 0x5

    if-ne p0, v0, :cond_4

    const-string p0, "CBN"

    return-object p0

    :cond_4
    const-string p0, ""

    return-object p0
.end method

.method public static getOperatorStr(Ljava/lang/String;I)Ljava/lang/String;
    .locals 1

    invoke-static {p1}, Lcom/miui/networkassistant/utils/TelephonyUtil;->isMiMobileOperator(I)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string p0, "MIMOBILE"

    goto :goto_0

    :cond_0
    invoke-static {p0}, Lcom/miui/networkassistant/utils/TelephonyUtil;->isVirtualOperator(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_1

    const-string p0, "400"

    goto :goto_0

    :cond_1
    invoke-static {p1}, Lcom/miui/networkassistant/utils/TelephonyUtil;->getOperatorStr(I)Ljava/lang/String;

    move-result-object p0

    :goto_0
    return-object p0
.end method

.method public static getPartnerApexApnsPath()Ljava/lang/String;
    .locals 2

    const-string v0, "miui/telephony/TelephonyConstants.PARTNER_APEX_APNS_PATH"

    invoke-static {v0}, Lbh/d$a;->d(Ljava/lang/String;)Lbh/d$a;

    move-result-object v0

    const-string v1, "PARTNER_APEX_APNS_PATH"

    invoke-virtual {v0, v1}, Lbh/d$a;->h(Ljava/lang/String;)Lbh/d$a;

    move-result-object v0

    invoke-virtual {v0}, Lbh/d$a;->m()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getPhoneNumber(Landroid/content/Context;I)Ljava/lang/String;
    .locals 5

    const/4 v0, 0x0

    if-ltz p1, :cond_4

    const/4 v1, 0x1

    if-le p1, v1, :cond_0

    goto/16 :goto_5

    :cond_0
    :try_start_0
    invoke-static {p0}, Lcom/xiaomi/accountsdk/activate/ActivateManager;->get(Landroid/content/Context;)Lcom/xiaomi/accountsdk/activate/ActivateManager;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/xiaomi/accountsdk/activate/ActivateManager;->getActivateInfo(I)Lcom/xiaomi/accountsdk/activate/ActivateManager$ActivateManagerFuture;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    move-object p0, v0

    :goto_0
    if-eqz p0, :cond_1

    const-wide/16 v2, 0xbb8

    :try_start_1
    sget-object v4, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-interface {p0, v2, v3, v4}, Lcom/xiaomi/accountsdk/activate/ActivateManager$ActivateManagerFuture;->getResult(JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/Bundle;

    const-string v3, "activate_phone"

    invoke-virtual {v2, v3}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_3
    .catch Lcom/xiaomi/accountsdk/activate/OperationCancelledException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Lcom/xiaomi/accountsdk/activate/CloudServiceFailureException; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_3

    :catchall_0
    move-exception p1

    goto :goto_2

    :catch_1
    move-exception v2

    :try_start_2
    invoke-virtual {v2}, Lcom/xiaomi/accountsdk/activate/CloudServiceFailureException;->printStackTrace()V

    goto :goto_1

    :catch_2
    move-exception v2

    invoke-virtual {v2}, Lcom/xiaomi/accountsdk/activate/OperationCancelledException;->printStackTrace()V

    goto :goto_1

    :catch_3
    move-exception v2

    invoke-virtual {v2}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :goto_1
    invoke-interface {p0, v1}, Lcom/xiaomi/accountsdk/activate/ActivateManager$ActivateManagerFuture;->cancel(Z)Z

    move-object v2, v0

    goto :goto_4

    :goto_2
    invoke-interface {p0, v1}, Lcom/xiaomi/accountsdk/activate/ActivateManager$ActivateManagerFuture;->cancel(Z)Z

    throw p1

    :cond_1
    move-object v2, v0

    :goto_3
    if-eqz p0, :cond_2

    invoke-interface {p0, v1}, Lcom/xiaomi/accountsdk/activate/ActivateManager$ActivateManagerFuture;->cancel(Z)Z

    :cond_2
    :goto_4
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p0

    if-eqz p0, :cond_3

    const-string p0, "miui.telephony.TelephonyManager"

    invoke-static {p0}, Lbh/d$a;->d(Ljava/lang/String;)Lbh/d$a;

    move-result-object p0

    const/4 v2, 0x0

    new-array v3, v2, [Ljava/lang/Object;

    const-string v4, "getDefault"

    invoke-virtual {p0, v4, v0, v3}, Lbh/d$a;->c(Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Lbh/d$a;

    move-result-object p0

    invoke-virtual {p0}, Lbh/d$a;->l()Lbh/d$a;

    move-result-object p0

    new-array v0, v1, [Ljava/lang/Class;

    sget-object v3, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v3, v0, v2

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, v1, v2

    const-string p1, "getLine1NumberForSlot"

    invoke-virtual {p0, p1, v0, v1}, Lbh/d$a;->b(Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Lbh/d$a;

    move-result-object p0

    invoke-virtual {p0}, Lbh/d$a;->m()Ljava/lang/String;

    move-result-object v2

    :cond_3
    return-object v2

    :cond_4
    :goto_5
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "illegal argument slotnum : "

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "TelephonyUtil"

    invoke-static {p1, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-object v0
.end method

.method public static getPhoneNumber(Landroid/content/Context;ILandroid/os/Handler;Lcom/miui/networkassistant/utils/TelephonyUtil$PhoneNumberLoadedBySlotListener;)V
    .locals 1

    new-instance v0, Lcom/miui/networkassistant/utils/f;

    invoke-direct {v0, p0, p1, p3, p2}, Lcom/miui/networkassistant/utils/f;-><init>(Landroid/content/Context;ILcom/miui/networkassistant/utils/TelephonyUtil$PhoneNumberLoadedBySlotListener;Landroid/os/Handler;)V

    invoke-static {v0}, Lcom/miui/common/base/asyn/a;->a(Ljava/lang/Runnable;)V

    return-void
.end method

.method public static getPhoneNumber(Landroid/content/Context;ILandroid/os/Handler;Lcom/miui/networkassistant/utils/TelephonyUtil$PhoneNumberLoadedListener;)V
    .locals 1

    new-instance v0, Lcom/miui/networkassistant/utils/g;

    invoke-direct {v0, p0, p1, p3, p2}, Lcom/miui/networkassistant/utils/g;-><init>(Landroid/content/Context;ILcom/miui/networkassistant/utils/TelephonyUtil$PhoneNumberLoadedListener;Landroid/os/Handler;)V

    invoke-static {v0}, Lcom/miui/common/base/asyn/a;->a(Ljava/lang/Runnable;)V

    return-void
.end method

.method public static getSimCount()I
    .locals 5

    const-string v0, "android.telephony.TelephonyManager"

    invoke-static {v0}, Lbh/d$a;->d(Ljava/lang/String;)Lbh/d$a;

    move-result-object v0

    const/4 v1, 0x0

    new-array v2, v1, [Ljava/lang/Object;

    const-string v3, "getDefault"

    const/4 v4, 0x0

    invoke-virtual {v0, v3, v4, v2}, Lbh/d$a;->c(Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Lbh/d$a;

    move-result-object v0

    invoke-virtual {v0}, Lbh/d$a;->l()Lbh/d$a;

    move-result-object v0

    new-array v1, v1, [Ljava/lang/Object;

    const-string v2, "getSimCount"

    invoke-virtual {v0, v2, v4, v1}, Lbh/d$a;->b(Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Lbh/d$a;

    move-result-object v0

    invoke-virtual {v0}, Lbh/d$a;->i()I

    move-result v0

    return v0
.end method

.method public static getSimOperatorForSlot(I)Ljava/lang/String;
    .locals 5

    const-string v0, "miui.telephony.TelephonyManager"

    invoke-static {v0}, Lbh/d$a;->d(Ljava/lang/String;)Lbh/d$a;

    move-result-object v0

    const/4 v1, 0x0

    new-array v2, v1, [Ljava/lang/Object;

    const-string v3, "getDefault"

    const/4 v4, 0x0

    invoke-virtual {v0, v3, v4, v2}, Lbh/d$a;->c(Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Lbh/d$a;

    move-result-object v0

    invoke-virtual {v0}, Lbh/d$a;->l()Lbh/d$a;

    move-result-object v0

    const/4 v2, 0x1

    new-array v3, v2, [Ljava/lang/Class;

    sget-object v4, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v4, v3, v1

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    aput-object p0, v2, v1

    const-string p0, "getSimOperatorForSlot"

    invoke-virtual {v0, p0, v3, v2}, Lbh/d$a;->b(Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Lbh/d$a;

    move-result-object p0

    invoke-virtual {p0}, Lbh/d$a;->m()Ljava/lang/String;

    move-result-object p0

    if-nez p0, :cond_0

    const-string p0, ""

    :cond_0
    return-object p0
.end method

.method public static getSimOperatorNameForSlot(I)Ljava/lang/String;
    .locals 5

    const-string v0, "miui.telephony.TelephonyManager"

    invoke-static {v0}, Lbh/d$a;->d(Ljava/lang/String;)Lbh/d$a;

    move-result-object v0

    const/4 v1, 0x0

    new-array v2, v1, [Ljava/lang/Object;

    const-string v3, "getDefault"

    const/4 v4, 0x0

    invoke-virtual {v0, v3, v4, v2}, Lbh/d$a;->c(Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Lbh/d$a;

    move-result-object v0

    invoke-virtual {v0}, Lbh/d$a;->l()Lbh/d$a;

    move-result-object v0

    const/4 v2, 0x1

    new-array v3, v2, [Ljava/lang/Class;

    sget-object v4, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v4, v3, v1

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    aput-object p0, v2, v1

    const-string p0, "getSimOperatorNameForSlot"

    invoke-virtual {v0, p0, v3, v2}, Lbh/d$a;->b(Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Lbh/d$a;

    move-result-object p0

    invoke-virtual {p0}, Lbh/d$a;->m()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static getSimSerialNumberForSlot(I)Ljava/lang/String;
    .locals 5

    const-string v0, "miui.telephony.TelephonyManager"

    invoke-static {v0}, Lbh/d$a;->d(Ljava/lang/String;)Lbh/d$a;

    move-result-object v0

    const/4 v1, 0x0

    new-array v2, v1, [Ljava/lang/Object;

    const-string v3, "getDefault"

    const/4 v4, 0x0

    invoke-virtual {v0, v3, v4, v2}, Lbh/d$a;->c(Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Lbh/d$a;

    move-result-object v0

    invoke-virtual {v0}, Lbh/d$a;->l()Lbh/d$a;

    move-result-object v0

    const/4 v2, 0x1

    new-array v3, v2, [Ljava/lang/Class;

    sget-object v4, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v4, v3, v1

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    aput-object p0, v2, v1

    const-string p0, "getSimSerialNumberForSlot"

    invoke-virtual {v0, p0, v3, v2}, Lbh/d$a;->b(Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Lbh/d$a;

    move-result-object p0

    invoke-virtual {p0}, Lbh/d$a;->m()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static getSubscriberId()Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    invoke-static {v0}, Lcom/miui/networkassistant/utils/TelephonyUtil;->getSubscriberId(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getSubscriberId(I)Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "getSubscriberId\uff0c slot: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "TelephonyUtil"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {p0}, Lcom/miui/networkassistant/utils/TelephonyUtil;->getImsi(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static getSubscriberId(ILjava/lang/String;)Ljava/lang/String;
    .locals 1

    invoke-static {p0}, Lcom/miui/networkassistant/utils/TelephonyUtil;->getSubscriberId(I)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    move-object p1, p0

    :goto_0
    return-object p1
.end method

.method public static getVirtualSimCarrierName(Landroid/content/Context;)Ljava/lang/String;
    .locals 3

    const/4 v0, 0x0

    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string v1, "content://com.miui.virtualsim.provider.virtualsimInfo"

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    const-string v2, "getCarrierName"

    invoke-virtual {p0, v1, v2, v0, v0}, Landroid/content/ContentResolver;->call(Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getVirtualSimCarrierName e"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v1, "TelephonyUtil"

    invoke-static {v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-object p0, v0

    :goto_0
    if-nez p0, :cond_0

    goto :goto_1

    :cond_0
    const-string v0, "carrierName"

    invoke-virtual {p0, v0}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_1
    return-object v0
.end method

.method public static isAirModeOn(Landroid/content/Context;)Z
    .locals 2

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string v0, "airplane_mode_on"

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p0

    const/4 v0, 0x1

    if-ne p0, v0, :cond_0

    move v1, v0

    :cond_0
    return v1
.end method

.method public static isCarrierApexEnabled()Z
    .locals 4

    const-string v0, "miui.telephony.TelephonyManager"

    invoke-static {v0}, Lbh/d$a;->d(Ljava/lang/String;)Lbh/d$a;

    move-result-object v0

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    const-string v2, "isCarrierApexEnabled"

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3, v1}, Lbh/d$a;->c(Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Lbh/d$a;

    move-result-object v0

    invoke-virtual {v0}, Lbh/d$a;->a()Z

    move-result v0

    return v0
.end method

.method public static isChinaOperator(I)Z
    .locals 3

    const/4 v0, 0x0

    if-ltz p0, :cond_2

    const/4 v1, 0x1

    if-le p0, v1, :cond_0

    goto :goto_0

    :cond_0
    invoke-static {p0}, Lcom/miui/networkassistant/utils/TelephonyUtil;->getSimOperatorForSlot(I)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1

    const-string v2, "460"

    invoke-virtual {p0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_1

    return v1

    :cond_1
    return v0

    :cond_2
    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "illegal argument slotnum : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v1, "TelephonyUtil"

    invoke-static {v1, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return v0
.end method

.method public static isChinaOperatorForNetworkAndSim(I)Z
    .locals 4

    const/4 v0, 0x0

    if-ltz p0, :cond_2

    const/4 v1, 0x1

    if-le p0, v1, :cond_0

    goto :goto_0

    :cond_0
    invoke-static {p0}, Lcom/miui/networkassistant/utils/TelephonyUtil;->getSimOperatorForSlot(I)Ljava/lang/String;

    move-result-object p0

    invoke-static {}, Lcom/miui/networkassistant/utils/TelephonyUtil;->getNetworkOperator()Ljava/lang/String;

    move-result-object v2

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_1

    const-string v3, "460"

    invoke-virtual {p0, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_1

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p0

    if-nez p0, :cond_1

    invoke-virtual {v2, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_1

    return v1

    :cond_1
    return v0

    :cond_2
    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "illegal argument slotnum : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v1, "TelephonyUtil"

    invoke-static {v1, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return v0
.end method

.method public static isDomesticRoamingEnable(Landroid/content/Context;)Z
    .locals 5

    const-string v0, "miui.telephony.TelephonyManager"

    invoke-static {v0}, Lbh/d$a;->d(Ljava/lang/String;)Lbh/d$a;

    move-result-object v0

    const/4 v1, 0x1

    new-array v2, v1, [Ljava/lang/Class;

    const-class v3, Landroid/content/Context;

    const/4 v4, 0x0

    aput-object v3, v2, v4

    new-array v1, v1, [Ljava/lang/Object;

    aput-object p0, v1, v4

    const-string p0, "isDomesticRoamingEnable"

    invoke-virtual {v0, p0, v2, v1}, Lbh/d$a;->c(Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Lbh/d$a;

    move-result-object p0

    invoke-virtual {p0}, Lbh/d$a;->a()Z

    move-result p0

    return p0
.end method

.method public static isMiMobileOperator(I)Z
    .locals 6

    invoke-static {p0}, Lcom/miui/networkassistant/utils/TelephonyUtil;->getSimOperatorNameForSlot(I)Ljava/lang/String;

    move-result-object v0

    const-string v1, "\u5c0f\u7c73\u79fb\u52a8"

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    const/4 v2, 0x1

    if-nez v1, :cond_3

    const-string v1, "\u5c0f\u7c73\u79fb\u52d5"

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_3

    const-string v1, "Mi Mobile"

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_1

    :cond_0
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    const-string v1, "46001"

    const-string v3, "46006"

    const-string v4, "46009"

    const-string v5, "46010"

    filled-new-array {v1, v3, v4, v5}, [Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Ljava/util/Collections;->addAll(Ljava/util/Collection;[Ljava/lang/Object;)Z

    invoke-static {p0}, Lcom/miui/networkassistant/utils/TelephonyUtil;->getSimOperatorForSlot(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    invoke-static {p0}, Lcom/miui/networkassistant/utils/TelephonyUtil;->getSimSerialNumberForSlot(I)Ljava/lang/String;

    move-result-object p0

    if-eqz p0, :cond_1

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    const/16 v3, 0xb

    if-le v0, v3, :cond_1

    const/16 v0, 0x9

    const/16 v3, 0xc

    invoke-virtual {p0, v0, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    const-string v0, "423"

    invoke-static {p0, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p0

    if-eqz p0, :cond_1

    goto :goto_0

    :cond_1
    move v2, v1

    :goto_0
    return v2

    :cond_2
    return v1

    :cond_3
    :goto_1
    return v2
.end method

.method public static isNetworkRoaming(Landroid/content/Context;I)Z
    .locals 4

    const-string p0, "miui.telephony.TelephonyManagerEx"

    invoke-static {p0}, Lbh/d$a;->d(Ljava/lang/String;)Lbh/d$a;

    move-result-object p0

    const/4 v0, 0x0

    new-array v1, v0, [Ljava/lang/Object;

    const-string v2, "getDefault"

    const/4 v3, 0x0

    invoke-virtual {p0, v2, v3, v1}, Lbh/d$a;->c(Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Lbh/d$a;

    move-result-object p0

    invoke-virtual {p0}, Lbh/d$a;->l()Lbh/d$a;

    move-result-object p0

    const/4 v1, 0x1

    new-array v2, v1, [Ljava/lang/Class;

    sget-object v3, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v3, v2, v0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, v1, v0

    const-string p1, "isNetworkRoamingForSlot"

    invoke-virtual {p0, p1, v2, v1}, Lbh/d$a;->b(Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Lbh/d$a;

    move-result-object p0

    invoke-virtual {p0}, Lbh/d$a;->a()Z

    move-result p0

    return p0
.end method

.method public static isPhoneIdleState(Landroid/content/Context;)Z
    .locals 1

    const-string v0, "phone"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/telephony/TelephonyManager;

    invoke-virtual {p0}, Landroid/telephony/TelephonyManager;->getCallState()I

    move-result p0

    if-nez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static isSupportDomesticRoaming()Z
    .locals 4

    const-string v0, "miui.telephony.TelephonyManager"

    invoke-static {v0}, Lbh/d$a;->d(Ljava/lang/String;)Lbh/d$a;

    move-result-object v0

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    const-string v2, "isSupportDomesticRoaming"

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3, v1}, Lbh/d$a;->c(Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Lbh/d$a;

    move-result-object v0

    invoke-virtual {v0}, Lbh/d$a;->a()Z

    move-result v0

    return v0
.end method

.method public static isSupportSmsCorrection(Ljava/lang/String;)Z
    .locals 1

    const-string v0, "MIMOBILE"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    xor-int/lit8 p0, p0, 0x1

    return p0
.end method

.method private static isVirtualOperator(Ljava/lang/String;)Z
    .locals 2

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "+86"

    invoke-static {p0, v0}, Lcom/miui/networkassistant/utils/TelephonyUtil;->removePhoneNumPrefix(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    sget-object v0, Lcom/miui/networkassistant/utils/TelephonyUtil;->sNotSupportCorrectionList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {p0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_1
    const/4 p0, 0x0

    return p0
.end method

.method public static isVirtualSim(Landroid/content/Context;I)Z
    .locals 1

    invoke-static {p0}, Lah/d;->d(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {p0}, Lah/d;->b(Landroid/content/Context;)I

    move-result p0

    if-ne p1, p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private static synthetic lambda$getPhoneNumber$0(Lcom/miui/networkassistant/utils/TelephonyUtil$PhoneNumberLoadedListener;Ljava/lang/String;)V
    .locals 0

    invoke-interface {p0, p1}, Lcom/miui/networkassistant/utils/TelephonyUtil$PhoneNumberLoadedListener;->onPhoneNumberLoaded(Ljava/lang/String;)V

    return-void
.end method

.method private static synthetic lambda$getPhoneNumber$1(Landroid/content/Context;ILcom/miui/networkassistant/utils/TelephonyUtil$PhoneNumberLoadedListener;Landroid/os/Handler;)V
    .locals 2

    invoke-static {p0, p1}, Lcom/miui/networkassistant/utils/TelephonyUtil;->getPhoneNumber(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object p0

    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    const-string v1, "result_type"

    invoke-virtual {p1, v1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "get_sim_info"

    invoke-static {v0, p1}, Lcom/miui/networkassistant/utils/AnalyticsHelper;->recordCountEvent(Ljava/lang/String;Ljava/util/Map;)V

    if-eqz p2, :cond_0

    new-instance p1, Lcom/miui/networkassistant/utils/h;

    invoke-direct {p1, p2, p0}, Lcom/miui/networkassistant/utils/h;-><init>(Lcom/miui/networkassistant/utils/TelephonyUtil$PhoneNumberLoadedListener;Ljava/lang/String;)V

    invoke-virtual {p3, p1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_0
    return-void
.end method

.method private static synthetic lambda$getPhoneNumber$2(Lcom/miui/networkassistant/utils/TelephonyUtil$PhoneNumberLoadedBySlotListener;Ljava/lang/String;I)V
    .locals 0

    invoke-interface {p0, p1, p2}, Lcom/miui/networkassistant/utils/TelephonyUtil$PhoneNumberLoadedBySlotListener;->onPhoneNumberBySlotLoaded(Ljava/lang/String;I)V

    return-void
.end method

.method private static synthetic lambda$getPhoneNumber$3(Landroid/content/Context;ILcom/miui/networkassistant/utils/TelephonyUtil$PhoneNumberLoadedBySlotListener;Landroid/os/Handler;)V
    .locals 1

    invoke-static {p0, p1}, Lcom/miui/networkassistant/utils/TelephonyUtil;->getPhoneNumber(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object p0

    if-eqz p2, :cond_0

    new-instance v0, Lcom/miui/networkassistant/utils/i;

    invoke-direct {v0, p2, p0, p1}, Lcom/miui/networkassistant/utils/i;-><init>(Lcom/miui/networkassistant/utils/TelephonyUtil$PhoneNumberLoadedBySlotListener;Ljava/lang/String;I)V

    invoke-virtual {p3, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_0
    return-void
.end method

.method public static onRoamingOnIfDomestic(Landroid/content/Context;Landroid/telephony/ServiceState;)Z
    .locals 5

    const-string v0, "android.telephony.ServiceState"

    invoke-static {v0}, Lbh/d$a;->d(Ljava/lang/String;)Lbh/d$a;

    move-result-object v1

    const-string v2, "ROAMING_TYPE_DOMESTIC"

    invoke-virtual {v1, v2}, Lbh/d$a;->h(Ljava/lang/String;)Lbh/d$a;

    move-result-object v1

    invoke-virtual {v1}, Lbh/d$a;->i()I

    move-result v1

    invoke-static {v0}, Lbh/d$a;->d(Ljava/lang/String;)Lbh/d$a;

    move-result-object v0

    const-string v2, "ROAMING_TYPE_INTERNATIONAL"

    invoke-virtual {v0, v2}, Lbh/d$a;->h(Ljava/lang/String;)Lbh/d$a;

    move-result-object v0

    invoke-virtual {v0}, Lbh/d$a;->i()I

    move-result v0

    invoke-static {p1}, Lcom/miui/networkassistant/utils/TelephonyUtil;->getDataRoamingType(Landroid/telephony/ServiceState;)I

    move-result v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "static roamingType :"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "**serviceState is "

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, " ** getRoamingType"

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v1, "TelephonyUtil"

    invoke-static {v1, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lcom/miui/networkassistant/utils/TelephonyUtil;->isSupportDomesticRoaming()Z

    move-result p1

    if-eqz p1, :cond_0

    if-eq v2, v0, :cond_0

    invoke-static {p0}, Lcom/miui/networkassistant/utils/TelephonyUtil;->isDomesticRoamingEnable(Landroid/content/Context;)Z

    move-result p0

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public static removePhoneNumPrefix(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0, p1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p1

    invoke-virtual {p0, p1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    :cond_0
    return-object p0
.end method

.method public static sendTextMessage(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/app/PendingIntent;Landroid/app/PendingIntent;I)V
    .locals 6

    invoke-static {p5}, Lmiui/telephony/SmsManager;->getDefault(I)Lmiui/telephony/SmsManager;

    move-result-object p5

    invoke-virtual {p5, p2}, Lmiui/telephony/SmsManager;->divideMessage(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object p2

    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    move-object v3, v0

    check-cast v3, Ljava/lang/String;

    move-object v0, p5

    move-object v1, p0

    move-object v2, p1

    move-object v4, p3

    move-object v5, p4

    invoke-virtual/range {v0 .. v5}, Lmiui/telephony/SmsManager;->sendTextMessage(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/app/PendingIntent;Landroid/app/PendingIntent;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public static setDataRoamingEnabled(Landroid/content/Context;Z)V
    .locals 7

    const-string p0, "TelephonyUtil"

    const-string v0, "setDataRoamingEnabled"

    :try_start_0
    const-string v1, "android.telephony.TelephonyManager"

    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    const-string v2, "getDefault"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    const/4 v4, 0x1

    invoke-virtual {v2, v4}, Ljava/lang/reflect/AccessibleObject;->setAccessible(Z)V

    invoke-virtual {v2, v3, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    new-array v3, v4, [Ljava/lang/Class;

    sget-object v5, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    const/4 v6, 0x0

    aput-object v5, v3, v6

    invoke-virtual {v1, v0, v3}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    invoke-virtual {v1, v4}, Ljava/lang/reflect/AccessibleObject;->setAccessible(Z)V

    new-array v3, v4, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    aput-object v4, v3, v6

    invoke-virtual {v1, v2, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    invoke-static {p0, v0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    return-void
.end method

.method public static setDomesticRoamingEnable(Landroid/content/Context;Z)Z
    .locals 6

    const-string v0, "miui.telephony.TelephonyManager"

    invoke-static {v0}, Lbh/d$a;->d(Ljava/lang/String;)Lbh/d$a;

    move-result-object v0

    const/4 v1, 0x2

    new-array v2, v1, [Ljava/lang/Class;

    const-class v3, Landroid/content/Context;

    const/4 v4, 0x0

    aput-object v3, v2, v4

    sget-object v3, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    const/4 v5, 0x1

    aput-object v3, v2, v5

    new-array v1, v1, [Ljava/lang/Object;

    aput-object p0, v1, v4

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    aput-object p0, v1, v5

    const-string p0, "setDomesticRoamingEnable"

    invoke-virtual {v0, p0, v2, v1}, Lbh/d$a;->c(Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Lbh/d$a;

    move-result-object p0

    invoke-virtual {p0}, Lbh/d$a;->a()Z

    move-result p0

    return p0
.end method

.method public static setMobileDataState(Landroid/content/Context;Z)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setMobileDataState: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "TelephonyUtil"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {p0, p1}, Lmiui/securitycenter/NetworkUtils;->setMobileDataState(Landroid/content/Context;Z)V

    return-void
.end method

.method public static setPreferredNetworkType(Landroid/content/Context;II)Z
    .locals 6

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    const-string v0, "phone"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/telephony/TelephonyManager;

    const/4 v0, 0x0

    if-eqz p0, :cond_0

    :try_start_0
    const-string v1, "setAllowedNetworkTypesForReason"

    const/4 v2, 0x2

    new-array v3, v2, [Ljava/lang/Class;

    sget-object v4, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v4, v3, v0

    const/4 v5, 0x1

    aput-object v4, v3, v5

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, v2, v0

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, v2, v5

    invoke-static {p0, v1, v3, v2}, Lbh/f;->d(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_0
    return v0
.end method
