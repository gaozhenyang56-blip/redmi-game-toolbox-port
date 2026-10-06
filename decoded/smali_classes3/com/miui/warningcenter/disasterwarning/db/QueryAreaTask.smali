.class public Lcom/miui/warningcenter/disasterwarning/db/QueryAreaTask;
.super Landroid/os/AsyncTask;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/warningcenter/disasterwarning/db/QueryAreaTask$CallBack;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask<",
        "Ljava/lang/String;",
        "Ljava/lang/Void;",
        "Ljava/util/List<",
        "Lcom/miui/warningcenter/disasterwarning/model/AreaModel;",
        ">;>;"
    }
.end annotation


# static fields
.field private static final AUTHORITY:Ljava/lang/String; = "com.miui.warningcenter.DisasterAreaProvider"

.field private static final DISASTER_URI:Landroid/net/Uri;


# instance fields
.field private callBack:Lcom/miui/warningcenter/disasterwarning/db/QueryAreaTask$CallBack;

.field private mSearchText:Ljava/lang/String;

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

    const-string v0, "content://com.miui.warningcenter.DisasterAreaProvider/area"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/miui/warningcenter/disasterwarning/db/QueryAreaTask;->DISASTER_URI:Landroid/net/Uri;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 1

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/miui/warningcenter/disasterwarning/db/QueryAreaTask;->mWeakContext:Ljava/lang/ref/WeakReference;

    iput-object p2, p0, Lcom/miui/warningcenter/disasterwarning/db/QueryAreaTask;->mSearchText:Ljava/lang/String;

    return-void
.end method

.method private queryNearest(Landroid/content/Context;Ljava/lang/String;)Ljava/util/List;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Lcom/miui/warningcenter/disasterwarning/model/AreaModel;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "city LIKE \'%"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "%\' OR province LIKE \'%"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "%\' OR region LIKE \'%"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, "%\'"

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    sget-object v3, Lcom/miui/warningcenter/disasterwarning/db/QueryAreaTask;->DISASTER_URI:Landroid/net/Uri;

    const/4 p1, 0x5

    new-array v4, p1, [Ljava/lang/String;

    sget-object p1, Lcom/miui/warningcenter/disasterwarning/model/AreaModel$Columns;->ID:Ljava/lang/String;

    const/4 p2, 0x0

    aput-object p1, v4, p2

    sget-object p1, Lcom/miui/warningcenter/disasterwarning/model/AreaModel$Columns;->code:Ljava/lang/String;

    const/4 p2, 0x1

    aput-object p1, v4, p2

    sget-object p1, Lcom/miui/warningcenter/disasterwarning/model/AreaModel$Columns;->province:Ljava/lang/String;

    const/4 p2, 0x2

    aput-object p1, v4, p2

    sget-object p1, Lcom/miui/warningcenter/disasterwarning/model/AreaModel$Columns;->city:Ljava/lang/String;

    const/4 p2, 0x3

    aput-object p1, v4, p2

    sget-object p1, Lcom/miui/warningcenter/disasterwarning/model/AreaModel$Columns;->region:Ljava/lang/String;

    const/4 p2, 0x4

    aput-object p1, v4, p2

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual/range {v2 .. v7}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p1

    if-eqz p1, :cond_1

    :goto_0
    :try_start_0
    invoke-interface {p1}, Landroid/database/Cursor;->moveToNext()Z

    move-result p2

    if-eqz p2, :cond_0

    new-instance p2, Lcom/miui/warningcenter/disasterwarning/model/AreaModel;

    invoke-direct {p2}, Lcom/miui/warningcenter/disasterwarning/model/AreaModel;-><init>()V

    sget-object v1, Lcom/miui/warningcenter/disasterwarning/model/AreaModel$Columns;->code:Ljava/lang/String;

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    invoke-virtual {p2, v1}, Lcom/miui/warningcenter/disasterwarning/model/AreaModel;->setCode(I)V

    sget-object v1, Lcom/miui/warningcenter/disasterwarning/model/AreaModel$Columns;->province:Ljava/lang/String;

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Lcom/miui/warningcenter/disasterwarning/model/AreaModel;->setProvince(Ljava/lang/String;)V

    sget-object v1, Lcom/miui/warningcenter/disasterwarning/model/AreaModel$Columns;->city:Ljava/lang/String;

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Lcom/miui/warningcenter/disasterwarning/model/AreaModel;->setCity(Ljava/lang/String;)V

    sget-object v1, Lcom/miui/warningcenter/disasterwarning/model/AreaModel$Columns;->region:Ljava/lang/String;

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Lcom/miui/warningcenter/disasterwarning/model/AreaModel;->setRegion(Ljava/lang/String;)V

    invoke-interface {v0, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :cond_0
    :goto_1
    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    goto :goto_3

    :catchall_0
    move-exception p2

    goto :goto_2

    :catch_0
    move-exception p2

    :try_start_1
    const-string v1, "WcDisasterTask"

    const-string v2, "QueryAreaTask: queryNearest error"

    invoke-static {v1, v2, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    :goto_2
    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    throw p2

    :cond_1
    :goto_3
    return-object v0
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, [Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/miui/warningcenter/disasterwarning/db/QueryAreaTask;->doInBackground([Ljava/lang/String;)Ljava/util/List;

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
            "Lcom/miui/warningcenter/disasterwarning/model/AreaModel;",
            ">;"
        }
    .end annotation

    iget-object p1, p0, Lcom/miui/warningcenter/disasterwarning/db/QueryAreaTask;->mWeakContext:Ljava/lang/ref/WeakReference;

    invoke-virtual {p1}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/content/Context;

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return-object v0

    :cond_0
    :try_start_0
    iget-object v1, p0, Lcom/miui/warningcenter/disasterwarning/db/QueryAreaTask;->mSearchText:Ljava/lang/String;

    invoke-direct {p0, p1, v1}, Lcom/miui/warningcenter/disasterwarning/db/QueryAreaTask;->queryNearest(Landroid/content/Context;Ljava/lang/String;)Ljava/util/List;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    const-string v1, "WcDisasterTask"

    const-string v2, "QueryAreaTask: insert data error"

    invoke-static {v1, v2, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    return-object v0
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Ljava/util/List;

    invoke-virtual {p0, p1}, Lcom/miui/warningcenter/disasterwarning/db/QueryAreaTask;->onPostExecute(Ljava/util/List;)V

    return-void
.end method

.method protected onPostExecute(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/miui/warningcenter/disasterwarning/model/AreaModel;",
            ">;)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/miui/warningcenter/disasterwarning/db/QueryAreaTask;->callBack:Lcom/miui/warningcenter/disasterwarning/db/QueryAreaTask$CallBack;

    if-eqz v0, :cond_1

    if-eqz p1, :cond_0

    invoke-interface {v0, p1}, Lcom/miui/warningcenter/disasterwarning/db/QueryAreaTask$CallBack;->onSuccess(Ljava/util/List;)V

    goto :goto_0

    :cond_0
    const-string p1, "WcDisasterTask"

    const-string v0, "QueryAreaTask: searchResult null"

    invoke-static {p1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    :goto_0
    return-void
.end method

.method public setCallBack(Lcom/miui/warningcenter/disasterwarning/db/QueryAreaTask$CallBack;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/warningcenter/disasterwarning/db/QueryAreaTask;->callBack:Lcom/miui/warningcenter/disasterwarning/db/QueryAreaTask$CallBack;

    return-void
.end method
