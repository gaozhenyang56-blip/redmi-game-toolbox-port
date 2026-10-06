.class public Lcom/miui/earthquakewarning/service/ManageSubscribeDataTask;
.super Landroid/os/AsyncTask;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/earthquakewarning/service/ManageSubscribeDataTask$CallBack;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask<",
        "Ljava/lang/String;",
        "Ljava/lang/Void;",
        "Ljava/util/List<",
        "Lcom/miui/earthquakewarning/model/SaveAreaResult;",
        ">;>;"
    }
.end annotation


# static fields
.field private static final AUTHORITY:Ljava/lang/String; = "com.miui.earthquakewarning.EarthquakeContentProvider2"

.field private static final EARTHQUAKE_URI:Landroid/net/Uri;

.field private static final TAG:Ljava/lang/String; = "ManageAreaDataTask"

.field public static final TYPE_DELETE:I = 0x2

.field public static final TYPE_INSERT:I = 0x1

.field public static final TYPE_QUERY:I = 0x3

.field public static final TYPE_UPDATE:I = 0x4


# instance fields
.field private callBack:Lcom/miui/earthquakewarning/service/ManageSubscribeDataTask$CallBack;

.field private mContext:Landroid/content/Context;

.field private mSaveAreaModel:Lcom/miui/earthquakewarning/model/SaveAreaResult;

.field private mType:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "content://com.miui.earthquakewarning.EarthquakeContentProvider2/subscribe"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/miui/earthquakewarning/service/ManageSubscribeDataTask;->EARTHQUAKE_URI:Landroid/net/Uri;

    return-void
.end method

.method public constructor <init>(I)V
    .locals 0

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    iput p1, p0, Lcom/miui/earthquakewarning/service/ManageSubscribeDataTask;->mType:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;ILcom/miui/earthquakewarning/model/SaveAreaResult;)V
    .locals 0

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    iput-object p1, p0, Lcom/miui/earthquakewarning/service/ManageSubscribeDataTask;->mContext:Landroid/content/Context;

    iput p2, p0, Lcom/miui/earthquakewarning/service/ManageSubscribeDataTask;->mType:I

    iput-object p3, p0, Lcom/miui/earthquakewarning/service/ManageSubscribeDataTask;->mSaveAreaModel:Lcom/miui/earthquakewarning/model/SaveAreaResult;

    return-void
.end method

.method private deleteData(Lcom/miui/earthquakewarning/model/SaveAreaResult;)V
    .locals 4

    iget-object v0, p0, Lcom/miui/earthquakewarning/service/ManageSubscribeDataTask;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/miui/earthquakewarning/service/ManageSubscribeDataTask;->EARTHQUAKE_URI:Landroid/net/Uri;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    invoke-virtual {p1}, Lcom/miui/earthquakewarning/model/SaveAreaResult;->getCode()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    const/4 v3, 0x0

    aput-object p1, v2, v3

    const-string p1, "code = ?"

    invoke-virtual {v0, v1, p1, v2}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    return-void
.end method

.method private insertData(Lcom/miui/earthquakewarning/model/SaveAreaResult;)V
    .locals 3

    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    invoke-virtual {p1}, Lcom/miui/earthquakewarning/model/SaveAreaResult;->getCode()Ljava/lang/String;

    move-result-object v1

    const-string v2, "code"

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/miui/earthquakewarning/model/SaveAreaResult;->getCity()Ljava/lang/String;

    move-result-object v1

    const-string v2, "city"

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/miui/earthquakewarning/model/SaveAreaResult;->getSupport()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "support"

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    invoke-virtual {p1}, Lcom/miui/earthquakewarning/model/SaveAreaResult;->getCounties()Ljava/lang/String;

    move-result-object p1

    const-string v1, "counties"

    invoke-virtual {v0, v1, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    const-string v1, "subscribeTime"

    invoke-virtual {v0, v1, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    iget-object p1, p0, Lcom/miui/earthquakewarning/service/ManageSubscribeDataTask;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    sget-object v1, Lcom/miui/earthquakewarning/service/ManageSubscribeDataTask;->EARTHQUAKE_URI:Landroid/net/Uri;

    invoke-virtual {p1, v1, v0}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    return-void
.end method

.method private queryData()Ljava/util/List;
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/miui/earthquakewarning/model/SaveAreaResult;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-static {}, Lcom/miui/securitycenter/Application;->A()Lcom/miui/securitycenter/Application;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    sget-object v3, Lcom/miui/earthquakewarning/service/ManageSubscribeDataTask;->EARTHQUAKE_URI:Landroid/net/Uri;

    const-string v4, "_id"

    const-string v5, "code"

    const-string v6, "city"

    const-string v7, "support"

    const-string v8, "counties"

    const-string v9, "updateTime"

    const-string v10, "subscribeTime"

    filled-new-array/range {v4 .. v10}, [Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual/range {v2 .. v7}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2

    if-eqz v2, :cond_0

    new-instance v2, Lcom/miui/earthquakewarning/model/SaveAreaResult;

    invoke-direct {v2}, Lcom/miui/earthquakewarning/model/SaveAreaResult;-><init>()V

    const-string v3, "code"

    invoke-interface {v1, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v1, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/miui/earthquakewarning/model/SaveAreaResult;->setCode(Ljava/lang/String;)V

    const-string v3, "city"

    invoke-interface {v1, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v1, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/miui/earthquakewarning/model/SaveAreaResult;->setCity(Ljava/lang/String;)V

    const-string v3, "support"

    invoke-interface {v1, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v1, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/miui/earthquakewarning/model/SaveAreaResult;->setSupport(I)V

    const-string v3, "counties"

    invoke-interface {v1, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v1, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/miui/earthquakewarning/model/SaveAreaResult;->setCounties(Ljava/lang/String;)V

    const-string v3, "updateTime"

    invoke-interface {v1, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v1, v3}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Lcom/miui/earthquakewarning/model/SaveAreaResult;->setUpdateTime(J)V

    const-string v3, "subscribeTime"

    invoke-interface {v1, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v1, v3}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Lcom/miui/earthquakewarning/model/SaveAreaResult;->setSubscribeTime(J)V

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    return-object v0
.end method

.method private updateData(Lcom/miui/earthquakewarning/model/SaveAreaResult;)V
    .locals 8

    invoke-virtual {p1}, Lcom/miui/earthquakewarning/model/SaveAreaResult;->getCityCode()Ljava/lang/String;

    move-result-object v0

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    array-length v3, v0

    if-ge v2, v3, :cond_1

    aget-object v3, v0, v2

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_0

    new-instance v4, Landroid/content/ContentValues;

    invoke-direct {v4}, Landroid/content/ContentValues;-><init>()V

    invoke-virtual {p1}, Lcom/miui/earthquakewarning/model/SaveAreaResult;->getUpdateTime()J

    move-result-wide v5

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    const-string v6, "updateTime"

    invoke-virtual {v4, v6, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    iget-object v5, p0, Lcom/miui/earthquakewarning/service/ManageSubscribeDataTask;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    sget-object v6, Lcom/miui/earthquakewarning/service/ManageSubscribeDataTask;->EARTHQUAKE_URI:Landroid/net/Uri;

    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/String;

    aput-object v3, v7, v1

    const-string v3, "code = ?"

    invoke-virtual {v5, v6, v4, v3, v7}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, [Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/miui/earthquakewarning/service/ManageSubscribeDataTask;->doInBackground([Ljava/lang/String;)Ljava/util/List;

    move-result-object p1

    return-object p1
.end method

.method protected varargs doInBackground([Ljava/lang/String;)Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Lcom/miui/earthquakewarning/model/SaveAreaResult;",
            ">;"
        }
    .end annotation

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    :try_start_0
    iget v0, p0, Lcom/miui/earthquakewarning/service/ManageSubscribeDataTask;->mType:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/miui/earthquakewarning/service/ManageSubscribeDataTask;->mSaveAreaModel:Lcom/miui/earthquakewarning/model/SaveAreaResult;

    invoke-direct {p0, v0}, Lcom/miui/earthquakewarning/service/ManageSubscribeDataTask;->insertData(Lcom/miui/earthquakewarning/model/SaveAreaResult;)V

    goto :goto_0

    :cond_0
    const/4 v1, 0x3

    if-ne v0, v1, :cond_1

    invoke-direct {p0}, Lcom/miui/earthquakewarning/service/ManageSubscribeDataTask;->queryData()Ljava/util/List;

    move-result-object p1

    goto :goto_0

    :cond_1
    const/4 v1, 0x2

    if-ne v0, v1, :cond_2

    iget-object v0, p0, Lcom/miui/earthquakewarning/service/ManageSubscribeDataTask;->mSaveAreaModel:Lcom/miui/earthquakewarning/model/SaveAreaResult;

    invoke-direct {p0, v0}, Lcom/miui/earthquakewarning/service/ManageSubscribeDataTask;->deleteData(Lcom/miui/earthquakewarning/model/SaveAreaResult;)V

    goto :goto_0

    :cond_2
    const/4 v1, 0x4

    if-ne v0, v1, :cond_3

    iget-object v0, p0, Lcom/miui/earthquakewarning/service/ManageSubscribeDataTask;->mSaveAreaModel:Lcom/miui/earthquakewarning/model/SaveAreaResult;

    invoke-direct {p0, v0}, Lcom/miui/earthquakewarning/service/ManageSubscribeDataTask;->updateData(Lcom/miui/earthquakewarning/model/SaveAreaResult;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "ManageAreaDataTask"

    const-string v2, "insert data error"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_3
    :goto_0
    return-object p1
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Ljava/util/List;

    invoke-virtual {p0, p1}, Lcom/miui/earthquakewarning/service/ManageSubscribeDataTask;->onPostExecute(Ljava/util/List;)V

    return-void
.end method

.method protected onPostExecute(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/miui/earthquakewarning/model/SaveAreaResult;",
            ">;)V"
        }
    .end annotation

    invoke-super {p0, p1}, Landroid/os/AsyncTask;->onPostExecute(Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/miui/earthquakewarning/service/ManageSubscribeDataTask;->callBack:Lcom/miui/earthquakewarning/service/ManageSubscribeDataTask$CallBack;

    if-eqz v0, :cond_0

    invoke-interface {v0, p1}, Lcom/miui/earthquakewarning/service/ManageSubscribeDataTask$CallBack;->onSuccess(Ljava/util/List;)V

    :cond_0
    return-void
.end method

.method public setCallBack(Lcom/miui/earthquakewarning/service/ManageSubscribeDataTask$CallBack;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/earthquakewarning/service/ManageSubscribeDataTask;->callBack:Lcom/miui/earthquakewarning/service/ManageSubscribeDataTask$CallBack;

    return-void
.end method
