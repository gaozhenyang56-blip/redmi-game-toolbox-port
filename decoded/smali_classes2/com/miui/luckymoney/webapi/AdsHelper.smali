.class public Lcom/miui/luckymoney/webapi/AdsHelper;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/luckymoney/webapi/AdsHelper$AdsItem;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "com.miui.luckymoney.webapi.AdsHelper"


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getCurrentAdsItem(Landroid/content/Context;)Lcom/miui/luckymoney/webapi/AdsHelper$AdsItem;
    .locals 12

    const/4 v0, 0x0

    :try_start_0
    invoke-static {p0}, Lcom/miui/luckymoney/config/CommonConfig;->getInstance(Landroid/content/Context;)Lcom/miui/luckymoney/config/CommonConfig;

    move-result-object v1

    invoke-virtual {v1}, Lcom/miui/luckymoney/config/CommonConfig;->getAdsConfig()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    return-object v0

    :cond_0
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2, v1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2

    const-string v1, "contents"

    invoke-virtual {v2, v1}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    if-eqz v1, :cond_3

    invoke-virtual {v1}, Lorg/json/JSONArray;->length()I

    move-result v4

    const/4 v5, 0x0

    :goto_0
    if-ge v5, v4, :cond_3

    invoke-virtual {v1, v5}, Lorg/json/JSONArray;->optJSONObject(I)Lorg/json/JSONObject;

    move-result-object v6

    if-nez v6, :cond_1

    goto :goto_2

    :cond_1
    :try_start_1
    const-string v7, "startTime"

    const-wide/16 v8, 0x0

    invoke-virtual {v6, v7, v8, v9}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;J)J

    move-result-wide v10

    const-string v7, "endTime"

    invoke-virtual {v6, v7, v8, v9}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;J)J

    move-result-wide v7

    cmp-long v9, v10, v2

    if-gez v9, :cond_2

    cmp-long v9, v7, v2

    if-lez v9, :cond_2

    new-instance v9, Lcom/miui/luckymoney/webapi/AdsHelper$AdsItem;

    invoke-direct {v9}, Lcom/miui/luckymoney/webapi/AdsHelper$AdsItem;-><init>()V

    iput-wide v10, v9, Lcom/miui/luckymoney/webapi/AdsHelper$AdsItem;->startTime:J

    iput-wide v7, v9, Lcom/miui/luckymoney/webapi/AdsHelper$AdsItem;->endTime:J

    new-instance v7, Ljava/io/FileInputStream;

    const-string v8, "Ads"

    const-string v10, "icon"

    invoke-virtual {v6, v10}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-static {p0, v8, v10}, Lcom/miui/luckymoney/utils/ResFileUtils;->getResFile(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/io/File;

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    invoke-static {v7}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;)Landroid/graphics/Bitmap;

    move-result-object v8

    iput-object v8, v9, Lcom/miui/luckymoney/webapi/AdsHelper$AdsItem;->icon:Landroid/graphics/Bitmap;

    const-string v8, "text"

    const-string v10, ""

    invoke-virtual {v6, v8, v10}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    iput-object v6, v9, Lcom/miui/luckymoney/webapi/AdsHelper$AdsItem;->text:Ljava/lang/String;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    invoke-static {v7}, Lbl/e;->b(Ljava/io/InputStream;)V

    return-object v9

    :catch_0
    move-exception v6

    goto :goto_1

    :cond_2
    invoke-static {v0}, Lbl/e;->b(Ljava/io/InputStream;)V

    goto :goto_2

    :catchall_0
    move-exception p0

    goto :goto_3

    :catch_1
    move-exception v6

    move-object v7, v0

    :goto_1
    :try_start_3
    sget-object v8, Lcom/miui/luckymoney/webapi/AdsHelper;->TAG:Ljava/lang/String;

    const-string v9, "parse ad item failed : "

    invoke-static {v8, v9, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    invoke-static {v7}, Lbl/e;->b(Ljava/io/InputStream;)V

    :goto_2
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    :catchall_1
    move-exception p0

    move-object v0, v7

    :goto_3
    invoke-static {v0}, Lbl/e;->b(Ljava/io/InputStream;)V

    throw p0

    :cond_3
    return-object v0

    :catch_2
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    return-object v0
.end method
