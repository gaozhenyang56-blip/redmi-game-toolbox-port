.class public Lcom/miui/warningcenter/disasterwarning/db/InsertSubscribeTask;
.super Landroid/os/AsyncTask;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/warningcenter/disasterwarning/db/InsertSubscribeTask$CallBack;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask<",
        "Ljava/lang/String;",
        "Ljava/lang/Void;",
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation


# static fields
.field private static final AUTHORITY:Ljava/lang/String; = "com.miui.warningcenter.DisasterSubscribeProvider"

.field private static final DISASTER_URI:Landroid/net/Uri;

.field public static final TYPE_DELETE:I = 0x2

.field public static final TYPE_INSERT:I = 0x1

.field public static final TYPE_QUERY:I = 0x3

.field public static final TYPE_UPDATE:I = 0x4


# instance fields
.field private callBack:Lcom/miui/warningcenter/disasterwarning/db/InsertSubscribeTask$CallBack;

.field private mModel:Lcom/miui/warningcenter/disasterwarning/model/AreaModel;

.field private mType:I

.field private final mWeakContext:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Landroid/content/Context;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "content://com.miui.warningcenter.DisasterSubscribeProvider/subscribe"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/miui/warningcenter/disasterwarning/db/InsertSubscribeTask;->DISASTER_URI:Landroid/net/Uri;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/miui/warningcenter/disasterwarning/model/AreaModel;I)V
    .locals 1

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/miui/warningcenter/disasterwarning/db/InsertSubscribeTask;->mWeakContext:Ljava/lang/ref/WeakReference;

    iput-object p2, p0, Lcom/miui/warningcenter/disasterwarning/db/InsertSubscribeTask;->mModel:Lcom/miui/warningcenter/disasterwarning/model/AreaModel;

    iput p3, p0, Lcom/miui/warningcenter/disasterwarning/db/InsertSubscribeTask;->mType:I

    return-void
.end method

.method private deleteData(Landroid/content/Context;Lcom/miui/warningcenter/disasterwarning/model/AreaModel;)V
    .locals 3

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    sget-object v0, Lcom/miui/warningcenter/disasterwarning/db/InsertSubscribeTask;->DISASTER_URI:Landroid/net/Uri;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/String;

    invoke-virtual {p2}, Lcom/miui/warningcenter/disasterwarning/model/AreaModel;->getCode()I

    move-result p2

    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p2

    const/4 v2, 0x0

    aput-object p2, v1, v2

    const-string p2, "code = ?"

    invoke-virtual {p1, v0, p2, v1}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    return-void
.end method

.method private insertData(Landroid/content/Context;Lcom/miui/warningcenter/disasterwarning/model/AreaModel;)V
    .locals 3

    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    sget-object v1, Lcom/miui/warningcenter/disasterwarning/model/AreaModel$Columns;->code:Ljava/lang/String;

    invoke-virtual {p2}, Lcom/miui/warningcenter/disasterwarning/model/AreaModel;->getCode()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    sget-object v1, Lcom/miui/warningcenter/disasterwarning/model/AreaModel$Columns;->province:Ljava/lang/String;

    invoke-virtual {p2}, Lcom/miui/warningcenter/disasterwarning/model/AreaModel;->getProvince()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v1, Lcom/miui/warningcenter/disasterwarning/model/AreaModel$Columns;->city:Ljava/lang/String;

    invoke-virtual {p2}, Lcom/miui/warningcenter/disasterwarning/model/AreaModel;->getCity()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v1, Lcom/miui/warningcenter/disasterwarning/model/AreaModel$Columns;->region:Ljava/lang/String;

    invoke-virtual {p2}, Lcom/miui/warningcenter/disasterwarning/model/AreaModel;->getRegion()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v1, Lcom/miui/warningcenter/disasterwarning/model/AreaModel$Columns;->subscribeLevel:Ljava/lang/String;

    invoke-virtual {p2}, Lcom/miui/warningcenter/disasterwarning/model/AreaModel;->getSubscribeLevel()I

    move-result p2

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {v0, v1, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    sget-object p2, Lcom/miui/warningcenter/disasterwarning/db/InsertSubscribeTask;->DISASTER_URI:Landroid/net/Uri;

    invoke-virtual {p1, p2, v0}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    return-void
.end method

.method private queryData(Landroid/content/Context;I)I
    .locals 6

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/miui/warningcenter/disasterwarning/db/InsertSubscribeTask;->DISASTER_URI:Landroid/net/Uri;

    const/4 p1, 0x2

    new-array v2, p1, [Ljava/lang/String;

    sget-object p1, Lcom/miui/warningcenter/disasterwarning/model/AreaModel$Columns;->ID:Ljava/lang/String;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    sget-object p1, Lcom/miui/warningcenter/disasterwarning/model/AreaModel$Columns;->code:Ljava/lang/String;

    const/4 v3, 0x1

    aput-object p1, v2, v3

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p1

    const/4 v0, -0x1

    if-eqz p1, :cond_2

    :cond_0
    :try_start_0
    invoke-interface {p1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v1

    if-eqz v1, :cond_1

    sget-object v1, Lcom/miui/warningcenter/disasterwarning/model/AreaModel$Columns;->code:Ljava/lang/String;

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-ne v0, p2, :cond_0

    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    return v0

    :cond_1
    :goto_0
    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    goto :goto_2

    :catchall_0
    move-exception p2

    goto :goto_1

    :catch_0
    move-exception p2

    :try_start_1
    const-string v1, "WcDisasterTask"

    const-string v2, "InsertSubscribeTask: queryData error"

    invoke-static {v1, v2, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :goto_1
    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    throw p2

    :cond_2
    :goto_2
    return v0
.end method

.method private updateData(Landroid/content/Context;Lcom/miui/warningcenter/disasterwarning/model/AreaModel;)V
    .locals 4

    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    sget-object v1, Lcom/miui/warningcenter/disasterwarning/model/AreaModel$Columns;->code:Ljava/lang/String;

    invoke-virtual {p2}, Lcom/miui/warningcenter/disasterwarning/model/AreaModel;->getCode()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    invoke-virtual {p2}, Lcom/miui/warningcenter/disasterwarning/model/AreaModel;->getProvince()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    sget-object v1, Lcom/miui/warningcenter/disasterwarning/model/AreaModel$Columns;->province:Ljava/lang/String;

    invoke-virtual {p2}, Lcom/miui/warningcenter/disasterwarning/model/AreaModel;->getProvince()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    invoke-virtual {p2}, Lcom/miui/warningcenter/disasterwarning/model/AreaModel;->getCity()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    sget-object v1, Lcom/miui/warningcenter/disasterwarning/model/AreaModel$Columns;->city:Ljava/lang/String;

    invoke-virtual {p2}, Lcom/miui/warningcenter/disasterwarning/model/AreaModel;->getCity()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    invoke-virtual {p2}, Lcom/miui/warningcenter/disasterwarning/model/AreaModel;->getRegion()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_2

    sget-object v1, Lcom/miui/warningcenter/disasterwarning/model/AreaModel$Columns;->region:Ljava/lang/String;

    invoke-virtual {p2}, Lcom/miui/warningcenter/disasterwarning/model/AreaModel;->getRegion()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    :cond_2
    invoke-virtual {p2}, Lcom/miui/warningcenter/disasterwarning/model/AreaModel;->getSubscribeLevel()I

    move-result v1

    if-lez v1, :cond_3

    sget-object v1, Lcom/miui/warningcenter/disasterwarning/model/AreaModel$Columns;->subscribeLevel:Ljava/lang/String;

    invoke-virtual {p2}, Lcom/miui/warningcenter/disasterwarning/model/AreaModel;->getSubscribeLevel()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    :cond_3
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    sget-object v1, Lcom/miui/warningcenter/disasterwarning/db/InsertSubscribeTask;->DISASTER_URI:Landroid/net/Uri;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    invoke-virtual {p2}, Lcom/miui/warningcenter/disasterwarning/model/AreaModel;->getCode()I

    move-result p2

    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p2

    aput-object p2, v2, v3

    const-string p2, "code = ?"

    invoke-virtual {p1, v1, v0, p2, v2}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    return-void
.end method

.method private updateLevelData(Landroid/content/Context;I)V
    .locals 2

    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    sget-object v1, Lcom/miui/warningcenter/disasterwarning/model/AreaModel$Columns;->subscribeLevel:Ljava/lang/String;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {v0, v1, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    sget-object p2, Lcom/miui/warningcenter/disasterwarning/db/InsertSubscribeTask;->DISASTER_URI:Landroid/net/Uri;

    const/4 v1, 0x0

    invoke-virtual {p1, p2, v0, v1, v1}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    return-void
.end method


# virtual methods
.method protected varargs doInBackground([Ljava/lang/String;)Ljava/lang/Boolean;
    .locals 2

    :try_start_0
    iget-object p1, p0, Lcom/miui/warningcenter/disasterwarning/db/InsertSubscribeTask;->mWeakContext:Ljava/lang/ref/WeakReference;

    invoke-virtual {p1}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/content/Context;

    if-eqz p1, :cond_3

    iget v0, p0, Lcom/miui/warningcenter/disasterwarning/db/InsertSubscribeTask;->mType:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    iget-object v0, p0, Lcom/miui/warningcenter/disasterwarning/db/InsertSubscribeTask;->mModel:Lcom/miui/warningcenter/disasterwarning/model/AreaModel;

    invoke-virtual {v0}, Lcom/miui/warningcenter/disasterwarning/model/AreaModel;->getCode()I

    move-result v0

    iget-object v1, p0, Lcom/miui/warningcenter/disasterwarning/db/InsertSubscribeTask;->mModel:Lcom/miui/warningcenter/disasterwarning/model/AreaModel;

    invoke-virtual {v1}, Lcom/miui/warningcenter/disasterwarning/model/AreaModel;->getCode()I

    move-result v1

    invoke-direct {p0, p1, v1}, Lcom/miui/warningcenter/disasterwarning/db/InsertSubscribeTask;->queryData(Landroid/content/Context;I)I

    move-result v1

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/miui/warningcenter/disasterwarning/db/InsertSubscribeTask;->mModel:Lcom/miui/warningcenter/disasterwarning/model/AreaModel;

    invoke-direct {p0, p1, v0}, Lcom/miui/warningcenter/disasterwarning/db/InsertSubscribeTask;->updateData(Landroid/content/Context;Lcom/miui/warningcenter/disasterwarning/model/AreaModel;)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/miui/warningcenter/disasterwarning/db/InsertSubscribeTask;->mModel:Lcom/miui/warningcenter/disasterwarning/model/AreaModel;

    invoke-direct {p0, p1, v0}, Lcom/miui/warningcenter/disasterwarning/db/InsertSubscribeTask;->insertData(Landroid/content/Context;Lcom/miui/warningcenter/disasterwarning/model/AreaModel;)V

    goto :goto_0

    :cond_1
    const/4 v1, 0x2

    if-ne v0, v1, :cond_2

    iget-object v0, p0, Lcom/miui/warningcenter/disasterwarning/db/InsertSubscribeTask;->mModel:Lcom/miui/warningcenter/disasterwarning/model/AreaModel;

    invoke-direct {p0, p1, v0}, Lcom/miui/warningcenter/disasterwarning/db/InsertSubscribeTask;->deleteData(Landroid/content/Context;Lcom/miui/warningcenter/disasterwarning/model/AreaModel;)V

    goto :goto_0

    :cond_2
    const/4 v1, 0x4

    if-ne v0, v1, :cond_3

    iget-object v0, p0, Lcom/miui/warningcenter/disasterwarning/db/InsertSubscribeTask;->mModel:Lcom/miui/warningcenter/disasterwarning/model/AreaModel;

    invoke-virtual {v0}, Lcom/miui/warningcenter/disasterwarning/model/AreaModel;->getSubscribeLevel()I

    move-result v0

    invoke-direct {p0, p1, v0}, Lcom/miui/warningcenter/disasterwarning/db/InsertSubscribeTask;->updateLevelData(Landroid/content/Context;I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    const-string v0, "WcDisasterTask"

    const-string v1, "InsertSubscribeTask: insert data error"

    invoke-static {v0, v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_3
    :goto_0
    sget-object p1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    return-object p1
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, [Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/miui/warningcenter/disasterwarning/db/InsertSubscribeTask;->doInBackground([Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1
.end method

.method protected onPostExecute(Ljava/lang/Boolean;)V
    .locals 1

    iget-object v0, p0, Lcom/miui/warningcenter/disasterwarning/db/InsertSubscribeTask;->callBack:Lcom/miui/warningcenter/disasterwarning/db/InsertSubscribeTask$CallBack;

    if-eqz v0, :cond_0

    invoke-interface {v0, p1}, Lcom/miui/warningcenter/disasterwarning/db/InsertSubscribeTask$CallBack;->onResult(Ljava/lang/Boolean;)V

    :cond_0
    return-void
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p0, p1}, Lcom/miui/warningcenter/disasterwarning/db/InsertSubscribeTask;->onPostExecute(Ljava/lang/Boolean;)V

    return-void
.end method

.method public setCallBack(Lcom/miui/warningcenter/disasterwarning/db/InsertSubscribeTask$CallBack;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/warningcenter/disasterwarning/db/InsertSubscribeTask;->callBack:Lcom/miui/warningcenter/disasterwarning/db/InsertSubscribeTask$CallBack;

    return-void
.end method
