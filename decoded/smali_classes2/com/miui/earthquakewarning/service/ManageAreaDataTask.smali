.class public Lcom/miui/earthquakewarning/service/ManageAreaDataTask;
.super Landroid/os/AsyncTask;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/earthquakewarning/service/ManageAreaDataTask$CallBack;
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
.field private callBack:Lcom/miui/earthquakewarning/service/ManageAreaDataTask$CallBack;

.field private mAreaResult:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/miui/earthquakewarning/model/SaveAreaResult;",
            ">;"
        }
    .end annotation
.end field

.field private mOpearteString:Ljava/lang/String;

.field private mType:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "content://com.miui.earthquakewarning.EarthquakeContentProvider2/area"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/miui/earthquakewarning/service/ManageAreaDataTask;->EARTHQUAKE_URI:Landroid/net/Uri;

    return-void
.end method

.method public constructor <init>(I)V
    .locals 0

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    iput p1, p0, Lcom/miui/earthquakewarning/service/ManageAreaDataTask;->mType:I

    return-void
.end method

.method public constructor <init>(ILjava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    iput p1, p0, Lcom/miui/earthquakewarning/service/ManageAreaDataTask;->mType:I

    iput-object p2, p0, Lcom/miui/earthquakewarning/service/ManageAreaDataTask;->mOpearteString:Ljava/lang/String;

    return-void
.end method

.method private deleteData()V
    .locals 3

    invoke-static {}, Lcom/miui/securitycenter/Application;->A()Lcom/miui/securitycenter/Application;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/miui/earthquakewarning/service/ManageAreaDataTask;->EARTHQUAKE_URI:Landroid/net/Uri;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2, v2}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    return-void
.end method

.method private insertArea()V
    .locals 4

    iget-object v0, p0, Lcom/miui/earthquakewarning/service/ManageAreaDataTask;->mAreaResult:Ljava/util/List;

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lcom/miui/earthquakewarning/service/ManageAreaDataTask;->mAreaResult:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    iget-object v2, p0, Lcom/miui/earthquakewarning/service/ManageAreaDataTask;->mAreaResult:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/miui/earthquakewarning/model/SaveAreaResult;

    invoke-virtual {v2}, Lcom/miui/earthquakewarning/model/SaveAreaResult;->getProvince()Ljava/lang/String;

    move-result-object v2

    const-string v3, "province"

    invoke-virtual {v1, v3, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v2, p0, Lcom/miui/earthquakewarning/service/ManageAreaDataTask;->mAreaResult:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/miui/earthquakewarning/model/SaveAreaResult;

    invoke-virtual {v2}, Lcom/miui/earthquakewarning/model/SaveAreaResult;->getCode()Ljava/lang/String;

    move-result-object v2

    const-string v3, "code"

    invoke-virtual {v1, v3, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v2, p0, Lcom/miui/earthquakewarning/service/ManageAreaDataTask;->mAreaResult:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/miui/earthquakewarning/model/SaveAreaResult;

    invoke-virtual {v2}, Lcom/miui/earthquakewarning/model/SaveAreaResult;->getCity()Ljava/lang/String;

    move-result-object v2

    const-string v3, "city"

    invoke-virtual {v1, v3, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v2, p0, Lcom/miui/earthquakewarning/service/ManageAreaDataTask;->mAreaResult:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/miui/earthquakewarning/model/SaveAreaResult;

    invoke-virtual {v2}, Lcom/miui/earthquakewarning/model/SaveAreaResult;->getSupport()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const-string v3, "support"

    invoke-virtual {v1, v3, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    iget-object v2, p0, Lcom/miui/earthquakewarning/service/ManageAreaDataTask;->mAreaResult:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/miui/earthquakewarning/model/SaveAreaResult;

    invoke-virtual {v2}, Lcom/miui/earthquakewarning/model/SaveAreaResult;->getCounties()Ljava/lang/String;

    move-result-object v2

    const-string v3, "counties"

    invoke-virtual {v1, v3, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/miui/securitycenter/Application;->A()Lcom/miui/securitycenter/Application;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    sget-object v3, Lcom/miui/earthquakewarning/service/ManageAreaDataTask;->EARTHQUAKE_URI:Landroid/net/Uri;

    invoke-virtual {v2, v3, v1}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method private queryData(Ljava/lang/String;)Ljava/util/List;
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Lcom/miui/earthquakewarning/model/SaveAreaResult;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "province LIKE \'%"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "%\' OR city LIKE \'%"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "%\' OR counties LIKE \'%"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "%\'"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    move-object v4, p1

    invoke-static {}, Lcom/miui/securitycenter/Application;->A()Lcom/miui/securitycenter/Application;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    sget-object v2, Lcom/miui/earthquakewarning/service/ManageAreaDataTask;->EARTHQUAKE_URI:Landroid/net/Uri;

    const-string v5, "_id"

    const-string v6, "province"

    const-string v7, "code"

    const-string v8, "city"

    const-string v9, "support"

    const-string v10, "counties"

    filled-new-array/range {v5 .. v10}, [Ljava/lang/String;

    move-result-object v3

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-virtual/range {v1 .. v6}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p1

    if-eqz p1, :cond_2

    invoke-interface {p1}, Landroid/database/Cursor;->moveToFirst()Z

    :cond_1
    new-instance v1, Lcom/miui/earthquakewarning/model/SaveAreaResult;

    invoke-direct {v1}, Lcom/miui/earthquakewarning/model/SaveAreaResult;-><init>()V

    const-string v2, "province"

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v2

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/miui/earthquakewarning/model/SaveAreaResult;->setProvince(Ljava/lang/String;)V

    const-string v2, "code"

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v2

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/miui/earthquakewarning/model/SaveAreaResult;->setCode(Ljava/lang/String;)V

    const-string v2, "city"

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v2

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/miui/earthquakewarning/model/SaveAreaResult;->setCity(Ljava/lang/String;)V

    const-string v2, "support"

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v2

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/miui/earthquakewarning/model/SaveAreaResult;->setSupport(I)V

    const-string v2, "counties"

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v2

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/miui/earthquakewarning/model/SaveAreaResult;->setCounties(Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-interface {p1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v1

    if-nez v1, :cond_1

    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    :cond_2
    return-object v0
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, [Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/miui/earthquakewarning/service/ManageAreaDataTask;->doInBackground([Ljava/lang/String;)Ljava/util/List;

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
    iget v0, p0, Lcom/miui/earthquakewarning/service/ManageAreaDataTask;->mType:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    invoke-direct {p0}, Lcom/miui/earthquakewarning/service/ManageAreaDataTask;->deleteData()V

    invoke-direct {p0}, Lcom/miui/earthquakewarning/service/ManageAreaDataTask;->insertArea()V

    const/4 v0, 0x0

    invoke-static {v0}, Lcom/miui/earthquakewarning/utils/Utils;->setNeedToForceUpdateArea(Z)V

    goto :goto_0

    :cond_0
    const/4 v1, 0x3

    if-ne v0, v1, :cond_1

    iget-object v0, p0, Lcom/miui/earthquakewarning/service/ManageAreaDataTask;->mOpearteString:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/miui/earthquakewarning/service/ManageAreaDataTask;->queryData(Ljava/lang/String;)Ljava/util/List;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "ManageAreaDataTask"

    const-string v2, "insert data error"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_1
    :goto_0
    return-object p1
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Ljava/util/List;

    invoke-virtual {p0, p1}, Lcom/miui/earthquakewarning/service/ManageAreaDataTask;->onPostExecute(Ljava/util/List;)V

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

    iget-object v0, p0, Lcom/miui/earthquakewarning/service/ManageAreaDataTask;->callBack:Lcom/miui/earthquakewarning/service/ManageAreaDataTask$CallBack;

    if-eqz v0, :cond_0

    invoke-interface {v0, p1}, Lcom/miui/earthquakewarning/service/ManageAreaDataTask$CallBack;->onSuccess(Ljava/util/List;)V

    :cond_0
    return-void
.end method

.method public setAreaList(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/miui/earthquakewarning/model/SaveAreaResult;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/miui/earthquakewarning/service/ManageAreaDataTask;->mAreaResult:Ljava/util/List;

    return-void
.end method

.method public setCallBack(Lcom/miui/earthquakewarning/service/ManageAreaDataTask$CallBack;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/earthquakewarning/service/ManageAreaDataTask;->callBack:Lcom/miui/earthquakewarning/service/ManageAreaDataTask$CallBack;

    return-void
.end method
