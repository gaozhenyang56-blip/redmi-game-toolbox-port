.class Lcom/miui/earthquakewarning/service/RestoreHelper$1;
.super Ljava/lang/Thread;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/earthquakewarning/service/RestoreHelper;->getAllOldData(Landroid/content/Context;)Ljava/util/List;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic val$context:Landroid/content/Context;

.field final synthetic val$models:Ljava/util/List;


# direct methods
.method constructor <init>(Ljava/util/List;Landroid/content/Context;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/earthquakewarning/service/RestoreHelper$1;->val$models:Ljava/util/List;

    iput-object p2, p0, Lcom/miui/earthquakewarning/service/RestoreHelper$1;->val$context:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    new-instance v0, Ljava/io/File;

    const-string v1, "/data/data/com.miui.securitycenter/databases/earthquake_warning.db"

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    const/4 v2, 0x0

    :try_start_0
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {v1, v2}, Landroid/database/sqlite/SQLiteDatabase;->openOrCreateDatabase(Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;)Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    const-string v1, "select * from earthquake"

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/String;

    invoke-virtual {v0, v1, v3}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v2

    if-eqz v2, :cond_1

    :goto_0
    invoke-interface {v2}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Lcom/miui/earthquakewarning/model/WarningModel;

    invoke-direct {v0}, Lcom/miui/earthquakewarning/model/WarningModel;-><init>()V

    const-string v1, "eventID"

    invoke-interface {v2, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v2, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v3

    iput-wide v3, v0, Lcom/miui/earthquakewarning/model/WarningModel;->eventID:J

    const-string v1, "index_ew"

    invoke-interface {v2, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v2, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    iput v1, v0, Lcom/miui/earthquakewarning/model/WarningModel;->index_ew:I

    const-string v1, "magnitude"

    invoke-interface {v2, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v2, v1}, Landroid/database/Cursor;->getFloat(I)F

    move-result v1

    iput v1, v0, Lcom/miui/earthquakewarning/model/WarningModel;->magnitude:F

    const-string v1, "longitude"

    invoke-interface {v2, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v2, v1}, Landroid/database/Cursor;->getDouble(I)D

    move-result-wide v3

    iput-wide v3, v0, Lcom/miui/earthquakewarning/model/WarningModel;->longitude:D

    const-string v1, "latitude"

    invoke-interface {v2, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v2, v1}, Landroid/database/Cursor;->getDouble(I)D

    move-result-wide v3

    iput-wide v3, v0, Lcom/miui/earthquakewarning/model/WarningModel;->latitude:D

    const-string v1, "myLongitude"

    invoke-interface {v2, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v2, v1}, Landroid/database/Cursor;->getDouble(I)D

    move-result-wide v3

    iput-wide v3, v0, Lcom/miui/earthquakewarning/model/WarningModel;->myLongitude:D

    const-string v1, "myLatitude"

    invoke-interface {v2, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v2, v1}, Landroid/database/Cursor;->getDouble(I)D

    move-result-wide v3

    iput-wide v3, v0, Lcom/miui/earthquakewarning/model/WarningModel;->myLatitude:D

    const-string v1, "epicenter"

    invoke-interface {v2, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v2, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/miui/earthquakewarning/model/WarningModel;->epicenter:Ljava/lang/String;

    const-string v1, "startTime"

    invoke-interface {v2, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v2, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v3

    iput-wide v3, v0, Lcom/miui/earthquakewarning/model/WarningModel;->startTime:J

    const-string v1, "signature"

    invoke-interface {v2, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v2, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/miui/earthquakewarning/model/WarningModel;->signature:Ljava/lang/String;

    const-string v1, "distance"

    invoke-interface {v2, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v2, v1}, Landroid/database/Cursor;->getDouble(I)D

    move-result-wide v3

    iput-wide v3, v0, Lcom/miui/earthquakewarning/model/WarningModel;->distance:D

    const-string v1, "intensity"

    invoke-interface {v2, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v2, v1}, Landroid/database/Cursor;->getFloat(I)F

    move-result v1

    iput v1, v0, Lcom/miui/earthquakewarning/model/WarningModel;->intensity:F

    const-string v1, "warntime"

    invoke-interface {v2, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v2, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    iput v1, v0, Lcom/miui/earthquakewarning/model/WarningModel;->warnTime:I

    iget-object v1, p0, Lcom/miui/earthquakewarning/service/RestoreHelper$1;->val$models:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    :cond_0
    iget-object v0, p0, Lcom/miui/earthquakewarning/service/RestoreHelper$1;->val$context:Landroid/content/Context;

    iget-object v1, p0, Lcom/miui/earthquakewarning/service/RestoreHelper$1;->val$models:Ljava/util/List;

    invoke-static {v0, v1}, Lcom/miui/earthquakewarning/service/RestoreHelper;->access$000(Landroid/content/Context;Ljava/util/List;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_1
    if-eqz v2, :cond_2

    :goto_1
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    goto :goto_2

    :catchall_0
    move-exception v0

    goto :goto_3

    :catch_0
    move-exception v0

    :try_start_1
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v2, :cond_2

    goto :goto_1

    :cond_2
    :goto_2
    return-void

    :goto_3
    if-eqz v2, :cond_3

    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    :cond_3
    throw v0
.end method
