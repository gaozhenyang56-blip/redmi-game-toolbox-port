.class public Lcom/miui/warningcenter/disasterwarning/db/DisasterDBFactory;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static volatile mDataBase:Landroid/database/sqlite/SQLiteDatabase;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getInstance(Landroid/content/Context;)Landroid/database/sqlite/SQLiteDatabase;
    .locals 2

    sget-object v0, Lcom/miui/warningcenter/disasterwarning/db/DisasterDBFactory;->mDataBase:Landroid/database/sqlite/SQLiteDatabase;

    if-nez v0, :cond_1

    const-class v0, Lcom/miui/warningcenter/disasterwarning/db/DisasterDBFactory;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/miui/warningcenter/disasterwarning/db/DisasterDBFactory;->mDataBase:Landroid/database/sqlite/SQLiteDatabase;

    if-nez v1, :cond_0

    new-instance v1, Lcom/miui/warningcenter/disasterwarning/db/DisasterDBHelper;

    invoke-direct {v1, p0}, Lcom/miui/warningcenter/disasterwarning/db/DisasterDBHelper;-><init>(Landroid/content/Context;)V

    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object p0

    sput-object p0, Lcom/miui/warningcenter/disasterwarning/db/DisasterDBFactory;->mDataBase:Landroid/database/sqlite/SQLiteDatabase;

    :cond_0
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0

    :cond_1
    :goto_0
    sget-object p0, Lcom/miui/warningcenter/disasterwarning/db/DisasterDBFactory;->mDataBase:Landroid/database/sqlite/SQLiteDatabase;

    return-object p0
.end method
