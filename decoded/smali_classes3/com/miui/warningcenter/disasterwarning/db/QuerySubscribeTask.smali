.class public Lcom/miui/warningcenter/disasterwarning/db/QuerySubscribeTask;
.super Landroid/os/AsyncTask;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/warningcenter/disasterwarning/db/QuerySubscribeTask$CallBack;
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
.field private static final AUTHORITY:Ljava/lang/String; = "com.miui.warningcenter.DisasterSubscribeProvider"

.field private static final DISASTER_URI:Landroid/net/Uri;


# instance fields
.field private callBack:Lcom/miui/warningcenter/disasterwarning/db/QuerySubscribeTask$CallBack;

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

    sput-object v0, Lcom/miui/warningcenter/disasterwarning/db/QuerySubscribeTask;->DISASTER_URI:Landroid/net/Uri;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/miui/warningcenter/disasterwarning/db/QuerySubscribeTask;->mWeakContext:Ljava/lang/ref/WeakReference;

    return-void
.end method

.method private queryAll(Landroid/content/Context;)Ljava/util/List;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/List<",
            "Lcom/miui/warningcenter/disasterwarning/model/AreaModel;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    sget-object v2, Lcom/miui/warningcenter/disasterwarning/db/QuerySubscribeTask;->DISASTER_URI:Landroid/net/Uri;

    const/4 p1, 0x5

    new-array v3, p1, [Ljava/lang/String;

    sget-object p1, Lcom/miui/warningcenter/disasterwarning/model/AreaModel$Columns;->ID:Ljava/lang/String;

    const/4 v4, 0x0

    aput-object p1, v3, v4

    sget-object p1, Lcom/miui/warningcenter/disasterwarning/model/AreaModel$Columns;->code:Ljava/lang/String;

    const/4 v4, 0x1

    aput-object p1, v3, v4

    sget-object p1, Lcom/miui/warningcenter/disasterwarning/model/AreaModel$Columns;->province:Ljava/lang/String;

    const/4 v4, 0x2

    aput-object p1, v3, v4

    sget-object p1, Lcom/miui/warningcenter/disasterwarning/model/AreaModel$Columns;->city:Ljava/lang/String;

    const/4 v4, 0x3

    aput-object p1, v3, v4

    sget-object p1, Lcom/miui/warningcenter/disasterwarning/model/AreaModel$Columns;->region:Ljava/lang/String;

    const/4 v4, 0x4

    aput-object p1, v3, v4

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-virtual/range {v1 .. v6}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p1

    if-eqz p1, :cond_1

    :goto_0
    :try_start_0
    invoke-interface {p1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v1

    if-eqz v1, :cond_0

    new-instance v1, Lcom/miui/warningcenter/disasterwarning/model/AreaModel;

    invoke-direct {v1}, Lcom/miui/warningcenter/disasterwarning/model/AreaModel;-><init>()V

    sget-object v2, Lcom/miui/warningcenter/disasterwarning/model/AreaModel$Columns;->code:Ljava/lang/String;

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/miui/warningcenter/disasterwarning/model/AreaModel;->setCode(I)V

    sget-object v2, Lcom/miui/warningcenter/disasterwarning/model/AreaModel$Columns;->province:Ljava/lang/String;

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/miui/warningcenter/disasterwarning/model/AreaModel;->setProvince(Ljava/lang/String;)V

    sget-object v2, Lcom/miui/warningcenter/disasterwarning/model/AreaModel$Columns;->city:Ljava/lang/String;

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/miui/warningcenter/disasterwarning/model/AreaModel;->setCity(Ljava/lang/String;)V

    sget-object v2, Lcom/miui/warningcenter/disasterwarning/model/AreaModel$Columns;->region:Ljava/lang/String;

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/miui/warningcenter/disasterwarning/model/AreaModel;->setRegion(Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :cond_0
    :goto_1
    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    goto :goto_3

    :catchall_0
    move-exception v0

    goto :goto_2

    :catch_0
    move-exception v1

    :try_start_1
    const-string v2, "WcDisasterTask"

    const-string v3, "QuerySubscribeTask: query data error"

    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    :goto_2
    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    throw v0

    :cond_1
    :goto_3
    return-object v0
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, [Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/miui/warningcenter/disasterwarning/db/QuerySubscribeTask;->doInBackground([Ljava/lang/String;)Ljava/util/List;

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

    const/4 p1, 0x0

    :try_start_0
    iget-object v0, p0, Lcom/miui/warningcenter/disasterwarning/db/QuerySubscribeTask;->mWeakContext:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    if-eqz v0, :cond_0

    invoke-direct {p0, v0}, Lcom/miui/warningcenter/disasterwarning/db/QuerySubscribeTask;->queryAll(Landroid/content/Context;)Ljava/util/List;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "WcDisasterTask"

    const-string v2, "QuerySubscribeTask: insert data error"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    :goto_0
    return-object p1
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Ljava/util/List;

    invoke-virtual {p0, p1}, Lcom/miui/warningcenter/disasterwarning/db/QuerySubscribeTask;->onPostExecute(Ljava/util/List;)V

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

    iget-object v0, p0, Lcom/miui/warningcenter/disasterwarning/db/QuerySubscribeTask;->callBack:Lcom/miui/warningcenter/disasterwarning/db/QuerySubscribeTask$CallBack;

    if-eqz v0, :cond_0

    if-eqz p1, :cond_0

    invoke-interface {v0, p1}, Lcom/miui/warningcenter/disasterwarning/db/QuerySubscribeTask$CallBack;->onSuccess(Ljava/util/List;)V

    :cond_0
    return-void
.end method

.method public setCallBack(Lcom/miui/warningcenter/disasterwarning/db/QuerySubscribeTask$CallBack;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/warningcenter/disasterwarning/db/QuerySubscribeTask;->callBack:Lcom/miui/warningcenter/disasterwarning/db/QuerySubscribeTask$CallBack;

    return-void
.end method
