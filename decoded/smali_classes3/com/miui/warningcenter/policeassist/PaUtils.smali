.class public Lcom/miui/warningcenter/policeassist/PaUtils;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static EMERGENCY_NUMBERS:Ljava/util/List; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public static final NOTIFICATION_ID:I = 0x1f4

.field public static final TAG:Ljava/lang/String; = "PaUtils"


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/miui/warningcenter/policeassist/PaUtils;->EMERGENCY_NUMBERS:Ljava/util/List;

    const-string v1, "110"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/miui/warningcenter/policeassist/PaUtils;->EMERGENCY_NUMBERS:Ljava/util/List;

    const-string v1, "120"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/miui/warningcenter/policeassist/PaUtils;->EMERGENCY_NUMBERS:Ljava/util/List;

    const-string v1, "119"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/miui/warningcenter/policeassist/PaUtils;->EMERGENCY_NUMBERS:Ljava/util/List;

    const-string v1, "122"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static addBodyIfExists(Ljava/net/HttpURLConnection;Ljava/lang/String;)V
    .locals 2

    if-eqz p1, :cond_0

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Ljava/net/URLConnection;->setDoOutput(Z)V

    const-string v0, "Content-Type"

    const-string v1, "application/json"

    invoke-virtual {p0, v0, v1}, Ljava/net/URLConnection;->addRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Ljava/io/DataOutputStream;

    invoke-virtual {p0}, Ljava/net/URLConnection;->getOutputStream()Ljava/io/OutputStream;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    invoke-virtual {v0, p1}, Ljava/io/DataOutputStream;->writeBytes(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/OutputStream;->close()V

    :cond_0
    return-void
.end method

.method public static buildMessageData(IIDDJ)[B
    .locals 3

    const/4 v0, 0x3

    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    const/16 v0, 0x10

    invoke-virtual {v1, v0}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    const/4 v0, 0x0

    invoke-virtual {v1, v0}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v1

    const/16 v2, 0x75

    invoke-static {v2}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v2

    int-to-short p0, p0

    invoke-virtual {v2, p0}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    int-to-short p0, p1

    invoke-virtual {v2, p0}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    invoke-virtual {v2, p2, p3}, Ljava/nio/ByteBuffer;->putDouble(D)Ljava/nio/ByteBuffer;

    invoke-virtual {v2, p4, p5}, Ljava/nio/ByteBuffer;->putDouble(D)Ljava/nio/ByteBuffer;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide p0

    invoke-virtual {v2, p0, p1}, Ljava/nio/ByteBuffer;->putLong(J)Ljava/nio/ByteBuffer;

    invoke-static {}, Lcom/miui/securitycenter/Application;->A()Lcom/miui/securitycenter/Application;

    move-result-object p0

    invoke-static {p0}, Lef/w;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/String;->getBytes()[B

    move-result-object p0

    invoke-virtual {v2, p0}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    invoke-virtual {v2, v0}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    invoke-virtual {v2, p6, p7}, Ljava/nio/ByteBuffer;->putLong(J)Ljava/nio/ByteBuffer;

    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object p0

    invoke-static {p0}, Lcom/miui/warningcenter/policeassist/PaUtils;->rsaEncrypt([B)[B

    move-result-object p0

    const/16 p1, 0x83

    invoke-static {p1}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object p1

    invoke-virtual {p1, v1}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    invoke-virtual {p1, p0}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object p0

    return-object p0
.end method

.method private static buildNetMessage(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;DDLjava/lang/String;JJ)Ljava/lang/String;
    .locals 4

    new-instance v0, Lcom/miui/warningcenter/policeassist/PapaLocation;

    invoke-direct {v0}, Lcom/miui/warningcenter/policeassist/PapaLocation;-><init>()V

    const-string v1, "xiaomi"

    invoke-virtual {v0, v1}, Lcom/miui/warningcenter/policeassist/PapaLocation;->setChannelName(Ljava/lang/String;)V

    const-string v1, "3016"

    invoke-virtual {v0, v1}, Lcom/miui/warningcenter/policeassist/PapaLocation;->setChannelNo(Ljava/lang/String;)V

    invoke-static {}, Lcom/miui/securitycenter/Application;->A()Lcom/miui/securitycenter/Application;

    move-result-object v1

    invoke-static {v1}, Lef/w;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/miui/warningcenter/policeassist/PapaLocation;->setDeviceId(Ljava/lang/String;)V

    move-object v1, p0

    invoke-virtual {v0, p0}, Lcom/miui/warningcenter/policeassist/PapaLocation;->setMobile(Ljava/lang/String;)V

    move-object v1, p1

    invoke-virtual {v0, p1}, Lcom/miui/warningcenter/policeassist/PapaLocation;->setEmergencyNum(Ljava/lang/String;)V

    move-object v1, p2

    invoke-virtual {v0, p2}, Lcom/miui/warningcenter/policeassist/PapaLocation;->setAreaCode(Ljava/lang/String;)V

    invoke-static {p3, p4}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/miui/warningcenter/policeassist/PapaLocation;->setCallMillisTime(Ljava/lang/String;)V

    invoke-static {p5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    move-object v1, p5

    invoke-virtual {v0, p5}, Lcom/miui/warningcenter/policeassist/PapaLocation;->setType(Ljava/lang/String;)V

    :cond_0
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    new-instance v2, Lcom/miui/warningcenter/policeassist/PapaLocation$LocationList;

    invoke-direct {v2}, Lcom/miui/warningcenter/policeassist/PapaLocation$LocationList;-><init>()V

    move-object v3, p10

    invoke-virtual {v2, p10}, Lcom/miui/warningcenter/policeassist/PapaLocation$LocationList;->setAddress(Ljava/lang/String;)V

    invoke-static {p6, p7}, Ljava/lang/String;->valueOf(D)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/miui/warningcenter/policeassist/PapaLocation$LocationList;->setLatitude(Ljava/lang/String;)V

    invoke-static {p8, p9}, Ljava/lang/String;->valueOf(D)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/miui/warningcenter/policeassist/PapaLocation$LocationList;->setLongtitude(Ljava/lang/String;)V

    invoke-static/range {p11 .. p12}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/miui/warningcenter/policeassist/PapaLocation$LocationList;->setLocationStartTime(Ljava/lang/String;)V

    invoke-static/range {p13 .. p14}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/miui/warningcenter/policeassist/PapaLocation$LocationList;->setLocationEndTime(Ljava/lang/String;)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const/4 v2, 0x3

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/miui/warningcenter/policeassist/PapaLocation;->setVersion(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/miui/warningcenter/policeassist/PapaLocation;->setLocationList(Ljava/util/List;)V

    new-instance v1, Lcom/google/gson/Gson;

    invoke-direct {v1}, Lcom/google/gson/Gson;-><init>()V

    invoke-virtual {v1, v0}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static doPost(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 4

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return-object v1

    :cond_0
    invoke-static {}, Lef/x;->z()Z

    move-result v0

    if-nez v0, :cond_1

    return-object v1

    :cond_1
    :try_start_0
    invoke-static {p0}, Lcom/miui/warningcenter/policeassist/PaUtils;->openConnection(Ljava/lang/String;)Ljava/net/HttpURLConnection;

    move-result-object p0

    const-string v0, "POST"

    invoke-virtual {p0, v0}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V

    invoke-static {p0, p1}, Lcom/miui/warningcenter/policeassist/PaUtils;->addBodyIfExists(Ljava/net/HttpURLConnection;Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result p1

    const/16 v0, 0xc8

    if-ne p1, v0, :cond_3

    invoke-virtual {p0}, Ljava/net/URLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    new-instance p1, Ljava/io/ByteArrayOutputStream;

    invoke-direct {p1}, Ljava/io/ByteArrayOutputStream;-><init>()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    const/16 v0, 0x1000

    :try_start_2
    new-array v0, v0, [B

    :goto_0
    invoke-virtual {p0, v0}, Ljava/io/InputStream;->read([B)I

    move-result v2

    const/4 v3, -0x1

    if-eq v2, v3, :cond_2

    const/4 v3, 0x0

    invoke-virtual {p1, v0, v3, v2}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    goto :goto_0

    :cond_2
    invoke-virtual {p1}, Ljava/io/ByteArrayOutputStream;->toString()Ljava/lang/String;

    move-result-object v0
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    invoke-static {p0}, Lbl/e;->b(Ljava/io/InputStream;)V

    invoke-static {p1}, Lbl/e;->c(Ljava/io/OutputStream;)V

    return-object v0

    :catch_0
    move-exception v0

    goto :goto_1

    :catchall_0
    move-exception v0

    move-object p1, v1

    goto :goto_3

    :catch_1
    move-exception v0

    move-object p1, v1

    goto :goto_1

    :cond_3
    invoke-static {v1}, Lbl/e;->b(Ljava/io/InputStream;)V

    invoke-static {v1}, Lbl/e;->c(Ljava/io/OutputStream;)V

    goto :goto_2

    :catchall_1
    move-exception v0

    move-object p1, v1

    goto :goto_4

    :catch_2
    move-exception v0

    move-object p0, v1

    move-object p1, p0

    :goto_1
    :try_start_3
    const-string v2, "PaUtils"

    const-string v3, "exception when do post request"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    invoke-static {p0}, Lbl/e;->b(Ljava/io/InputStream;)V

    invoke-static {p1}, Lbl/e;->c(Ljava/io/OutputStream;)V

    :goto_2
    return-object v1

    :catchall_2
    move-exception v0

    :goto_3
    move-object v1, p0

    :goto_4
    invoke-static {v1}, Lbl/e;->b(Ljava/io/InputStream;)V

    invoke-static {p1}, Lbl/e;->c(Ljava/io/OutputStream;)V

    throw v0
.end method

.method public static encoder([B)[B
    .locals 5

    const/16 v0, 0x8c

    new-array v0, v0, [B

    const/4 v1, 0x0

    move v2, v1

    move v3, v2

    :goto_0
    array-length v4, p0

    mul-int/lit8 v4, v4, 0x8

    if-ge v2, v4, :cond_1

    rem-int/lit8 v4, v2, 0xf

    if-nez v4, :cond_0

    invoke-static {v0, v3, v1}, Lcom/miui/warningcenter/policeassist/PaUtils;->setBit([BIB)V

    add-int/lit8 v3, v3, 0x1

    :cond_0
    invoke-static {p0, v2}, Lcom/miui/warningcenter/policeassist/PaUtils;->getBit([BI)B

    move-result v4

    invoke-static {v0, v3, v4}, Lcom/miui/warningcenter/policeassist/PaUtils;->setBit([BIB)V

    add-int/lit8 v2, v2, 0x1

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    return-object v0
.end method

.method public static getBit([BI)B
    .locals 1

    div-int/lit8 v0, p1, 0x8

    rem-int/lit8 p1, p1, 0x8

    rsub-int/lit8 p1, p1, 0x7

    aget-byte p0, p0, v0

    const/4 v0, 0x1

    shl-int p1, v0, p1

    int-to-byte p1, p1

    and-int/2addr p0, p1

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    int-to-byte p0, v0

    return p0
.end method

.method private static getCurrentCallingSlot(Landroid/content/Context;)I
    .locals 5

    const/4 p0, -0x1

    :try_start_0
    invoke-static {}, Lmiui/telephony/TelephonyManager;->getDefault()Lmiui/telephony/TelephonyManager;

    move-result-object v0

    invoke-virtual {v0}, Lmiui/telephony/TelephonyManager;->getPhoneCount()I

    move-result v0

    const/4 v1, 0x1

    if-gt v0, v1, :cond_0

    return p0

    :cond_0
    invoke-static {}, Lmiui/telephony/TelephonyManager;->getDefault()Lmiui/telephony/TelephonyManager;

    move-result-object v0

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Lmiui/telephony/TelephonyManager;->getCallStateForSlot(I)I

    move-result v0

    invoke-static {}, Lmiui/telephony/TelephonyManager;->getDefault()Lmiui/telephony/TelephonyManager;

    move-result-object v3

    invoke-virtual {v3, v1}, Lmiui/telephony/TelephonyManager;->getCallStateForSlot(I)I

    move-result v3
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-eq v1, v0, :cond_3

    const/4 v4, 0x2

    if-ne v4, v0, :cond_1

    goto :goto_0

    :cond_1
    if-eq v1, v3, :cond_2

    if-ne v4, v3, :cond_4

    :cond_2
    move p0, v1

    goto :goto_1

    :cond_3
    :goto_0
    move p0, v2

    goto :goto_1

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_4
    :goto_1
    return p0
.end method

.method public static getCurrentEnableSubInfo()Lmiui/telephony/SubscriptionInfo;
    .locals 4

    invoke-static {}, Lmiui/telephony/SubscriptionManager;->getDefault()Lmiui/telephony/SubscriptionManager;

    move-result-object v0

    invoke-virtual {v0}, Lmiui/telephony/SubscriptionManager;->getSubscriptionInfoList()Ljava/util/List;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_3

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_0

    goto :goto_0

    :cond_0
    invoke-static {}, Lmiui/telephony/SubscriptionManager;->getDefault()Lmiui/telephony/SubscriptionManager;

    move-result-object v2

    invoke-virtual {v2}, Lmiui/telephony/SubscriptionManager;->getDefaultVoiceSlotId()I

    move-result v2

    invoke-static {}, Lmiui/telephony/SubscriptionManager;->getDefault()Lmiui/telephony/SubscriptionManager;

    move-result-object v3

    invoke-virtual {v3, v2}, Lmiui/telephony/SubscriptionManager;->getSubscriptionInfoForSlot(I)Lmiui/telephony/SubscriptionInfo;

    move-result-object v2

    if-eqz v2, :cond_1

    invoke-virtual {v2}, Lmiui/telephony/SubscriptionInfo;->isActivated()Z

    move-result v3

    if-eqz v3, :cond_1

    return-object v2

    :cond_1
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lmiui/telephony/SubscriptionInfo;

    invoke-virtual {v2}, Lmiui/telephony/SubscriptionInfo;->isActivated()Z

    move-result v3

    if-eqz v3, :cond_2

    return-object v2

    :cond_3
    :goto_0
    return-object v1
.end method

.method public static getMyPhoneNumber(Landroid/content/Context;)Ljava/lang/String;
    .locals 3

    invoke-static {}, Lcom/miui/warningcenter/policeassist/PaUtils;->getCurrentEnableSubInfo()Lmiui/telephony/SubscriptionInfo;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    invoke-static {p0}, Lcom/miui/warningcenter/policeassist/PaUtils;->getCurrentCallingSlot(Landroid/content/Context;)I

    move-result p0

    const/4 v2, -0x1

    if-le p0, v2, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Lmiui/telephony/SubscriptionInfo;->getSlotId()I

    move-result p0

    :goto_0
    invoke-static {p0}, Lcom/miui/networkassistant/utils/TelephonyUtil;->isChinaOperatorForNetworkAndSim(I)Z

    move-result v0

    if-nez v0, :cond_1

    return-object v1

    :cond_1
    invoke-static {}, Lcom/miui/securitycenter/Application;->A()Lcom/miui/securitycenter/Application;

    move-result-object v0

    invoke-static {v0, p0}, Lcom/miui/warningcenter/policeassist/PaUtils;->getPhoneNumber(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    return-object p0

    :cond_2
    return-object v1
.end method

.method public static getPhoneNumber(Landroid/content/Context;I)Ljava/lang/String;
    .locals 5

    const/4 v0, 0x0

    if-ltz p1, :cond_5

    const/4 v1, 0x2

    if-le p1, v1, :cond_0

    goto :goto_5

    :cond_0
    const/4 v1, 0x1

    :try_start_0
    invoke-static {p0}, Lcom/xiaomi/accountsdk/activate/ActivateManager;->get(Landroid/content/Context;)Lcom/xiaomi/accountsdk/activate/ActivateManager;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/xiaomi/accountsdk/activate/ActivateManager;->getActivateInfo(I)Lcom/xiaomi/accountsdk/activate/ActivateManager$ActivateManagerFuture;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz p0, :cond_1

    const-wide/16 v2, 0xbb8

    :try_start_1
    sget-object v4, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-interface {p0, v2, v3, v4}, Lcom/xiaomi/accountsdk/activate/ActivateManager$ActivateManagerFuture;->getResult(JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/Bundle;

    const-string v3, "activate_phone"

    invoke-virtual {v2, v3}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_0

    :catch_0
    move-exception v2

    goto :goto_2

    :cond_1
    :goto_0
    if-eqz p0, :cond_2

    :goto_1
    invoke-interface {p0, v1}, Lcom/xiaomi/accountsdk/activate/ActivateManager$ActivateManagerFuture;->cancel(Z)Z

    goto :goto_3

    :catchall_0
    move-exception p1

    goto :goto_4

    :catch_1
    move-exception v2

    move-object p0, v0

    :goto_2
    :try_start_2
    invoke-virtual {v2}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    if-eqz p0, :cond_2

    goto :goto_1

    :cond_2
    :goto_3
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p0

    if-eqz p0, :cond_3

    invoke-static {}, Lmiui/telephony/TelephonyManager;->getDefault()Lmiui/telephony/TelephonyManager;

    move-result-object p0

    invoke-virtual {p0, p1}, Lmiui/telephony/TelephonyManager;->getLine1NumberForSlot(I)Ljava/lang/String;

    move-result-object v0

    :cond_3
    return-object v0

    :catchall_1
    move-exception p1

    move-object v0, p0

    :goto_4
    if-eqz v0, :cond_4

    invoke-interface {v0, v1}, Lcom/xiaomi/accountsdk/activate/ActivateManager$ActivateManagerFuture;->cancel(Z)Z

    :cond_4
    throw p1

    :cond_5
    :goto_5
    return-object v0
.end method

.method public static getPoliceAssistToggle(Landroid/content/Context;)Z
    .locals 3

    invoke-static {p0}, Lcom/miui/policeassist/EPSManager;->getEPSPoliceAssistToggle(Landroid/content/Context;)Z

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-nez v0, :cond_0

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string v0, "com_miui_warningcenter_pa_status"

    invoke-static {p0, v0, v1}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p0

    if-ne p0, v2, :cond_1

    :cond_0
    move v1, v2

    :cond_1
    return v1
.end method

.method public static isEmergencyNumber(Ljava/lang/String;)Z
    .locals 1

    invoke-static {p0}, Lmiui/telephony/PhoneNumberUtils$PhoneNumber;->parse(Ljava/lang/CharSequence;)Lmiui/telephony/PhoneNumberUtils$PhoneNumber;

    move-result-object p0

    invoke-virtual {p0}, Lmiui/telephony/PhoneNumberUtils$PhoneNumber;->getEffectiveNumber()Ljava/lang/String;

    move-result-object p0

    sget-object v0, Lcom/miui/warningcenter/policeassist/PaUtils;->EMERGENCY_NUMBERS:Ljava/util/List;

    if-eqz v0, :cond_0

    invoke-interface {v0, p0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static isNumeric(Ljava/lang/String;)Z
    .locals 1

    const-string v0, "\\d*"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object p0

    invoke-virtual {p0}, Ljava/util/regex/Matcher;->matches()Z

    move-result p0

    return p0
.end method

.method public static isSimCardStateReady(Landroid/content/Context;)Z
    .locals 1

    const-string v0, "phone"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/telephony/TelephonyManager;

    invoke-virtual {p0}, Landroid/telephony/TelephonyManager;->getSimState()I

    move-result p0

    const/4 v0, 0x5

    if-ne p0, v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static openConnection(Ljava/lang/String;)Ljava/net/HttpURLConnection;
    .locals 1

    new-instance v0, Ljava/net/URL;

    invoke-direct {v0, p0}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object p0

    check-cast p0, Ljava/net/HttpURLConnection;

    const v0, 0x186a0

    invoke-virtual {p0, v0}, Ljava/net/URLConnection;->setConnectTimeout(I)V

    invoke-virtual {p0, v0}, Ljava/net/URLConnection;->setReadTimeout(I)V

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Ljava/net/URLConnection;->setUseCaches(Z)V

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Ljava/net/URLConnection;->setDoInput(Z)V

    return-object p0
.end method

.method public static postMessage(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;DDLjava/lang/String;JJ)V
    .locals 10

    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    const-string v1, "channelNo"

    const-string v2, "3016"

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    invoke-static/range {p0 .. p14}, Lcom/miui/warningcenter/policeassist/PaUtils;->buildNetMessage(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;DDLjava/lang/String;JJ)Ljava/lang/String;

    move-result-object v1

    const-string v2, "data"

    new-instance v3, Lcom/miui/warningcenter/policeassist/AesCbcUtils;

    const-string v4, "HPLvLMJnR6vvuS9VNkpj7DYb"

    invoke-direct {v3, v4}, Lcom/miui/warningcenter/policeassist/AesCbcUtils;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v1}, Lcom/miui/warningcenter/policeassist/AesCbcUtils;->encrypt(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "https://gateway-papa.cloud.weizhi.com/papa/upload"

    invoke-static {v1, v0}, Lcom/miui/warningcenter/policeassist/PaUtils;->doPost(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/miui/securitycenter/Application;->A()Lcom/miui/securitycenter/Application;

    move-result-object v1

    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    invoke-static {p2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    move-wide/from16 v4, p6

    move-wide/from16 v6, p8

    move-wide v8, p3

    invoke-static/range {v1 .. v9}, Lcom/miui/warningcenter/policeassist/PaUtils;->sendMessage(Landroid/content/Context;IIDDJ)V

    :cond_0
    invoke-static {}, Lcom/miui/earthquakewarning/utils/MsgObservable;->getInstance()Lcom/miui/earthquakewarning/utils/MsgObservable;

    move-result-object v0

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Lcom/miui/earthquakewarning/utils/MsgObservable;->sendEmptyMessage(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "PaUtils"

    const-string v2, "postMessage Exception:"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    return-void
.end method

.method public static rsaEncrypt([B)[B
    .locals 5

    const-string v0, "RSA"

    invoke-static {v0}, Ljava/security/KeyFactory;->getInstance(Ljava/lang/String;)Ljava/security/KeyFactory;

    move-result-object v0

    const-string v1, "RSA/ECB/PKCS1Padding"

    invoke-static {v1}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;)Ljavax/crypto/Cipher;

    move-result-object v1

    new-instance v2, Ljava/security/spec/X509EncodedKeySpec;

    invoke-static {}, Ljava/util/Base64;->getDecoder()Ljava/util/Base64$Decoder;

    move-result-object v3

    const-string v4, "MIGfMA0GCSqGSIb3DQEBAQUAA4GNADCBiQKBgQCsPsxtHUmeUiBfvdGqBIJQUloI52iMczf/5glfBgjo3NCV5tMq4bV4mUV4g6/tEkbh+0N2xcavZWnDVNpCDrYFQcVupICPwSdS3wZyoWogt9RdoLs7lnQ4l7OPWNjweMqDE2b8gacmA+aebDgSb3wqT8iNIh+yjvgwpq9s88u+cQIDAQAB"

    invoke-virtual {v3, v4}, Ljava/util/Base64$Decoder;->decode(Ljava/lang/String;)[B

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/security/spec/X509EncodedKeySpec;-><init>([B)V

    invoke-virtual {v0, v2}, Ljava/security/KeyFactory;->generatePublic(Ljava/security/spec/KeySpec;)Ljava/security/PublicKey;

    move-result-object v0

    const/4 v2, 0x1

    invoke-virtual {v1, v2, v0}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;)V

    invoke-virtual {v1, p0}, Ljavax/crypto/Cipher;->doFinal([B)[B

    move-result-object p0

    return-object p0
.end method

.method public static sendMessage(Landroid/content/Context;IIDDJ)V
    .locals 6

    :try_start_0
    invoke-static/range {p1 .. p8}, Lcom/miui/warningcenter/policeassist/PaUtils;->buildMessageData(IIDDJ)[B

    move-result-object p1

    invoke-static {p1}, Lcom/miui/warningcenter/policeassist/PaUtils;->encoder([B)[B

    move-result-object p1

    new-instance p2, Landroid/content/Intent;

    const-class p3, Lcom/miui/warningcenter/policeassist/PaService;

    invoke-direct {p2, p0, p3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string p3, "action_send_message_done"

    invoke-virtual {p2, p3}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    const/4 p3, 0x0

    const/high16 p4, 0xc000000

    invoke-static {p0, p3, p2, p4}, Landroid/app/PendingIntent;->getService(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v4

    invoke-static {}, Lmiui/telephony/SmsManager;->getDefault()Lmiui/telephony/SmsManager;

    move-result-object v0

    const-string v1, "106903590009"

    const/4 v2, 0x0

    new-instance v3, Ljava/lang/String;

    const-string p0, "UTF_16BE"

    invoke-direct {v3, p1, p0}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Lmiui/telephony/SmsManager;->sendTextMessage(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/app/PendingIntent;Landroid/app/PendingIntent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    const-string p1, "PaUtils"

    const-string p2, "sendMessage Exception:"

    invoke-static {p1, p2, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    return-void
.end method

.method public static setBit([BIB)V
    .locals 2

    div-int/lit8 v0, p1, 0x8

    rem-int/lit8 p1, p1, 0x8

    rsub-int/lit8 p1, p1, 0x7

    aget-byte v1, p0, v0

    shl-int p1, p2, p1

    or-int/2addr p1, v1

    int-to-byte p1, p1

    aput-byte p1, p0, v0

    return-void
.end method

.method public static setCallNumberAndStartService(Landroid/content/Context;Ljava/lang/String;)V
    .locals 4

    const-string v0, "phone"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    invoke-static {}, Lcom/miui/warningcenter/policeassist/PaUtils;->getCurrentEnableSubInfo()Lmiui/telephony/SubscriptionInfo;

    move-result-object v1

    if-nez v1, :cond_0

    return-void

    :cond_0
    invoke-static {p0}, Lcom/miui/warningcenter/policeassist/PaUtils;->getCurrentCallingSlot(Landroid/content/Context;)I

    move-result v2

    const/4 v3, -0x1

    if-le v2, v3, :cond_1

    goto :goto_0

    :cond_1
    invoke-virtual {v1}, Lmiui/telephony/SubscriptionInfo;->getSlotId()I

    move-result v2

    :goto_0
    invoke-static {v2}, Lcom/miui/networkassistant/utils/TelephonyUtil;->isChinaOperatorForNetworkAndSim(I)Z

    move-result v1

    if-nez v1, :cond_2

    return-void

    :cond_2
    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->isNetworkRoaming()Z

    move-result v0

    if-nez v0, :cond_3

    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/miui/warningcenter/policeassist/PaService;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v1, "action_pa_init"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    const-string v2, "CallNumber"

    invoke-virtual {v1, v2, p1}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    const-string p1, "CallTime"

    invoke-virtual {v1, p1, v2, v3}, Landroid/os/BaseBundle;->putLong(Ljava/lang/String;J)V

    invoke-virtual {v0, v1}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    invoke-virtual {p0, v0}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    goto :goto_1

    :cond_3
    const-string p0, "PaUtils"

    const-string p1, "Not support roaming data"

    invoke-static {p0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :goto_1
    return-void
.end method

.method public static setPoliceAssistToggle(Landroid/content/Context;Z)V
    .locals 3

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    if-eqz p1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, -0x1

    :goto_0
    const-string v2, "com_miui_warningcenter_pa_status"

    invoke-static {v0, v2, v1}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    invoke-static {p0, p1}, Lcom/miui/policeassist/EPSManager;->setEPSPoliceAssistToggle(Landroid/content/Context;Z)V

    return-void
.end method

.method public static showPAGuideNotification(Landroid/content/Context;)V
    .locals 8

    const-class v0, Lcom/miui/warningcenter/policeassist/PaSettingActivity;

    new-instance v1, Landroidx/core/app/NotificationCompat$c;

    const-string v2, "com.miui.securitycenter"

    invoke-direct {v1, p0, v2}, Landroidx/core/app/NotificationCompat$c;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    const v3, 0x7f080f25

    invoke-virtual {v1, v3}, Landroidx/core/app/NotificationCompat$c;->y(I)Landroidx/core/app/NotificationCompat$c;

    move-result-object v1

    const v3, 0x7f121c4d

    invoke-virtual {p0, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroidx/core/app/NotificationCompat$c;->m(Ljava/lang/CharSequence;)Landroidx/core/app/NotificationCompat$c;

    move-result-object v1

    const v3, 0x7f121c4a

    invoke-virtual {p0, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroidx/core/app/NotificationCompat$c;->l(Ljava/lang/CharSequence;)Landroidx/core/app/NotificationCompat$c;

    move-result-object v1

    const/4 v3, 0x0

    invoke-virtual {v1, v3}, Landroidx/core/app/NotificationCompat$c;->x(Z)Landroidx/core/app/NotificationCompat$c;

    move-result-object v1

    const/4 v4, 0x2

    invoke-virtual {v1, v4}, Landroidx/core/app/NotificationCompat$c;->v(I)Landroidx/core/app/NotificationCompat$c;

    move-result-object v1

    const/4 v4, -0x1

    invoke-virtual {v1, v4}, Landroidx/core/app/NotificationCompat$c;->n(I)Landroidx/core/app/NotificationCompat$c;

    move-result-object v1

    const-string v4, "single"

    invoke-virtual {v1, v4}, Landroidx/core/app/NotificationCompat$c;->r(Ljava/lang/String;)Landroidx/core/app/NotificationCompat$c;

    move-result-object v1

    const/4 v4, 0x1

    invoke-virtual {v1, v4}, Landroidx/core/app/NotificationCompat$c;->g(Z)Landroidx/core/app/NotificationCompat$c;

    move-result-object v1

    new-instance v5, Landroid/content/Intent;

    invoke-direct {v5, p0, v0}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const/high16 v6, 0xc000000

    invoke-static {p0, v3, v5, v6}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v5

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f120452

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1, v3, v6, v5}, Landroidx/core/app/NotificationCompat$c;->a(ILjava/lang/CharSequence;Landroid/app/PendingIntent;)Landroidx/core/app/NotificationCompat$c;

    new-instance v5, Landroid/os/Bundle;

    invoke-direct {v5}, Landroid/os/Bundle;-><init>()V

    const-string v6, "miui.showAction"

    invoke-virtual {v5, v6, v4}, Landroid/os/BaseBundle;->putBoolean(Ljava/lang/String;Z)V

    invoke-virtual {v1, v5}, Landroidx/core/app/NotificationCompat$c;->p(Landroid/os/Bundle;)Landroidx/core/app/NotificationCompat$c;

    new-instance v5, Landroid/content/Intent;

    invoke-direct {v5, p0, v0}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const/high16 v0, 0x10000000

    invoke-virtual {v5, v0}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    const/high16 v0, 0x4000000

    invoke-static {p0, v3, v5, v0}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroidx/core/app/NotificationCompat$c;->k(Landroid/app/PendingIntent;)Landroidx/core/app/NotificationCompat$c;

    invoke-virtual {v1}, Landroidx/core/app/NotificationCompat$c;->d()Landroid/app/Notification;

    move-result-object v0

    invoke-static {v0, v4}, Lrg/a;->c(Landroid/app/Notification;Z)V

    invoke-static {p0}, Landroidx/core/app/NotificationManagerCompat;->f(Landroid/content/Context;)Landroidx/core/app/NotificationManagerCompat;

    move-result-object v1

    new-instance v3, Landroidx/core/app/k$c;

    const/4 v4, 0x5

    invoke-direct {v3, v2, v4}, Landroidx/core/app/k$c;-><init>(Ljava/lang/String;I)V

    const v2, 0x7f120f27

    invoke-virtual {p0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v3, p0}, Landroidx/core/app/k$c;->b(Ljava/lang/CharSequence;)Landroidx/core/app/k$c;

    move-result-object p0

    invoke-virtual {p0}, Landroidx/core/app/k$c;->a()Landroidx/core/app/k;

    move-result-object p0

    invoke-virtual {v1, p0}, Landroidx/core/app/NotificationManagerCompat;->e(Landroidx/core/app/k;)V

    const/16 p0, 0x1f4

    invoke-virtual {v1, p0, v0}, Landroidx/core/app/NotificationManagerCompat;->h(ILandroid/app/Notification;)V

    return-void
.end method

.method public static showPAPrivacyNotification(Landroid/content/Context;)V
    .locals 9

    const-class v0, Lcom/miui/warningcenter/policeassist/PaSettingActivity;

    new-instance v1, Landroidx/core/app/NotificationCompat$c;

    const-string v2, "com.miui.securitycenter"

    invoke-direct {v1, p0, v2}, Landroidx/core/app/NotificationCompat$c;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    const v3, 0x7f080f25

    invoke-virtual {v1, v3}, Landroidx/core/app/NotificationCompat$c;->y(I)Landroidx/core/app/NotificationCompat$c;

    move-result-object v1

    const v3, 0x7f121c4c

    invoke-virtual {p0, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroidx/core/app/NotificationCompat$c;->m(Ljava/lang/CharSequence;)Landroidx/core/app/NotificationCompat$c;

    move-result-object v1

    const v3, 0x7f121c4b

    invoke-virtual {p0, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroidx/core/app/NotificationCompat$c;->l(Ljava/lang/CharSequence;)Landroidx/core/app/NotificationCompat$c;

    move-result-object v1

    const/4 v3, 0x0

    invoke-virtual {v1, v3}, Landroidx/core/app/NotificationCompat$c;->x(Z)Landroidx/core/app/NotificationCompat$c;

    move-result-object v1

    const/4 v4, 0x2

    invoke-virtual {v1, v4}, Landroidx/core/app/NotificationCompat$c;->v(I)Landroidx/core/app/NotificationCompat$c;

    move-result-object v1

    const/4 v4, -0x1

    invoke-virtual {v1, v4}, Landroidx/core/app/NotificationCompat$c;->n(I)Landroidx/core/app/NotificationCompat$c;

    move-result-object v1

    const-string v4, "single"

    invoke-virtual {v1, v4}, Landroidx/core/app/NotificationCompat$c;->r(Ljava/lang/String;)Landroidx/core/app/NotificationCompat$c;

    move-result-object v1

    const/4 v4, 0x1

    invoke-virtual {v1, v4}, Landroidx/core/app/NotificationCompat$c;->g(Z)Landroidx/core/app/NotificationCompat$c;

    move-result-object v1

    new-instance v5, Landroid/content/Intent;

    invoke-direct {v5, p0, v0}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const/high16 v6, 0x10000000

    invoke-virtual {v5, v6}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    const/high16 v7, 0xc000000

    invoke-static {p0, v3, v5, v7}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v5

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v8, 0x7f1204b0

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v1, v3, v7, v5}, Landroidx/core/app/NotificationCompat$c;->a(ILjava/lang/CharSequence;Landroid/app/PendingIntent;)Landroidx/core/app/NotificationCompat$c;

    new-instance v5, Landroid/os/Bundle;

    invoke-direct {v5}, Landroid/os/Bundle;-><init>()V

    const-string v7, "miui.showAction"

    invoke-virtual {v5, v7, v4}, Landroid/os/BaseBundle;->putBoolean(Ljava/lang/String;Z)V

    invoke-virtual {v1, v5}, Landroidx/core/app/NotificationCompat$c;->p(Landroid/os/Bundle;)Landroidx/core/app/NotificationCompat$c;

    new-instance v5, Landroid/content/Intent;

    invoke-direct {v5, p0, v0}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {v5, v6}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    const/high16 v0, 0x4000000

    invoke-static {p0, v3, v5, v0}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroidx/core/app/NotificationCompat$c;->k(Landroid/app/PendingIntent;)Landroidx/core/app/NotificationCompat$c;

    invoke-virtual {v1}, Landroidx/core/app/NotificationCompat$c;->d()Landroid/app/Notification;

    move-result-object v0

    invoke-static {v0, v4}, Lrg/a;->c(Landroid/app/Notification;Z)V

    invoke-static {p0}, Landroidx/core/app/NotificationManagerCompat;->f(Landroid/content/Context;)Landroidx/core/app/NotificationManagerCompat;

    move-result-object v1

    new-instance v3, Landroidx/core/app/k$c;

    const/4 v4, 0x5

    invoke-direct {v3, v2, v4}, Landroidx/core/app/k$c;-><init>(Ljava/lang/String;I)V

    const v2, 0x7f120f27

    invoke-virtual {p0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v3, p0}, Landroidx/core/app/k$c;->b(Ljava/lang/CharSequence;)Landroidx/core/app/k$c;

    move-result-object p0

    invoke-virtual {p0}, Landroidx/core/app/k$c;->a()Landroidx/core/app/k;

    move-result-object p0

    invoke-virtual {v1, p0}, Landroidx/core/app/NotificationManagerCompat;->e(Landroidx/core/app/k;)V

    const/16 p0, 0x1f4

    invoke-virtual {v1, p0, v0}, Landroidx/core/app/NotificationManagerCompat;->h(ILandroid/app/Notification;)V

    return-void
.end method

.method public static showPASendSuccessNotification(Landroid/content/Context;)V
    .locals 5

    new-instance v0, Landroidx/core/app/NotificationCompat$c;

    const-string v1, "com.miui.securitycenter"

    invoke-direct {v0, p0, v1}, Landroidx/core/app/NotificationCompat$c;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    const v2, 0x7f080f25

    invoke-virtual {v0, v2}, Landroidx/core/app/NotificationCompat$c;->y(I)Landroidx/core/app/NotificationCompat$c;

    move-result-object v0

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f121c53

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroidx/core/app/NotificationCompat$c;->m(Ljava/lang/CharSequence;)Landroidx/core/app/NotificationCompat$c;

    move-result-object v0

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f121c4c

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroidx/core/app/NotificationCompat$c;->l(Ljava/lang/CharSequence;)Landroidx/core/app/NotificationCompat$c;

    move-result-object v0

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroidx/core/app/NotificationCompat$c;->x(Z)Landroidx/core/app/NotificationCompat$c;

    move-result-object v0

    const-string v2, "single"

    invoke-virtual {v0, v2}, Landroidx/core/app/NotificationCompat$c;->r(Ljava/lang/String;)Landroidx/core/app/NotificationCompat$c;

    move-result-object v0

    const/4 v2, 0x2

    invoke-virtual {v0, v2}, Landroidx/core/app/NotificationCompat$c;->v(I)Landroidx/core/app/NotificationCompat$c;

    move-result-object v0

    const/4 v2, -0x1

    invoke-virtual {v0, v2}, Landroidx/core/app/NotificationCompat$c;->n(I)Landroidx/core/app/NotificationCompat$c;

    move-result-object v0

    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    const-string v3, "miui.showAction"

    const/4 v4, 0x1

    invoke-virtual {v2, v3, v4}, Landroid/os/BaseBundle;->putBoolean(Ljava/lang/String;Z)V

    invoke-virtual {v0, v2}, Landroidx/core/app/NotificationCompat$c;->p(Landroid/os/Bundle;)Landroidx/core/app/NotificationCompat$c;

    invoke-virtual {v0}, Landroidx/core/app/NotificationCompat$c;->d()Landroid/app/Notification;

    move-result-object v0

    invoke-static {v0, v4}, Lrg/a;->c(Landroid/app/Notification;Z)V

    invoke-static {p0}, Landroidx/core/app/NotificationManagerCompat;->f(Landroid/content/Context;)Landroidx/core/app/NotificationManagerCompat;

    move-result-object v2

    new-instance v3, Landroidx/core/app/k$c;

    const/4 v4, 0x5

    invoke-direct {v3, v1, v4}, Landroidx/core/app/k$c;-><init>(Ljava/lang/String;I)V

    const v1, 0x7f120f27

    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v3, p0}, Landroidx/core/app/k$c;->b(Ljava/lang/CharSequence;)Landroidx/core/app/k$c;

    move-result-object p0

    invoke-virtual {p0}, Landroidx/core/app/k$c;->a()Landroidx/core/app/k;

    move-result-object p0

    invoke-virtual {v2, p0}, Landroidx/core/app/NotificationManagerCompat;->e(Landroidx/core/app/k;)V

    const/16 p0, 0x1f4

    invoke-virtual {v2, p0, v0}, Landroidx/core/app/NotificationManagerCompat;->h(ILandroid/app/Notification;)V

    return-void
.end method
