.class public Lcom/miui/powercenter/batteryhistory/h;
.super Landroid/database/sqlite/SQLiteOpenHelper;
.source "SourceFile"


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 3

    const-string v0, "battery_history.db"

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-direct {p0, p1, v0, v1, v2}, Landroid/database/sqlite/SQLiteOpenHelper;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;I)V

    return-void
.end method


# virtual methods
.method public onCreate(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 2

    :try_start_0
    invoke-static {p1}, Lcom/miui/powercenter/batteryhistory/m;->a(Landroid/database/sqlite/SQLiteDatabase;)V

    invoke-static {p1}, Lcom/miui/powercenter/batteryhistory/f;->a(Landroid/database/sqlite/SQLiteDatabase;)V

    invoke-static {p1}, Lcom/miui/powercenter/batteryhistory/s;->a(Landroid/database/sqlite/SQLiteDatabase;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    const-string v0, "BatteryHistory"

    const-string v1, "exception when create battery_history DB. "

    invoke-static {v0, v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    return-void
.end method

.method public onDowngrade(Landroid/database/sqlite/SQLiteDatabase;II)V
    .locals 0

    invoke-static {p1}, Lcom/miui/powercenter/batteryhistory/m;->b(Landroid/database/sqlite/SQLiteDatabase;)V

    invoke-static {p1}, Lcom/miui/powercenter/batteryhistory/f;->b(Landroid/database/sqlite/SQLiteDatabase;)V

    invoke-static {p1}, Lcom/miui/powercenter/batteryhistory/s;->a(Landroid/database/sqlite/SQLiteDatabase;)V

    invoke-virtual {p0, p1}, Lcom/miui/powercenter/batteryhistory/h;->onCreate(Landroid/database/sqlite/SQLiteDatabase;)V

    return-void
.end method

.method public onUpgrade(Landroid/database/sqlite/SQLiteDatabase;II)V
    .locals 0

    invoke-static {p1}, Lcom/miui/powercenter/batteryhistory/m;->b(Landroid/database/sqlite/SQLiteDatabase;)V

    invoke-static {p1}, Lcom/miui/powercenter/batteryhistory/f;->b(Landroid/database/sqlite/SQLiteDatabase;)V

    invoke-static {p1}, Lcom/miui/powercenter/batteryhistory/s;->b(Landroid/database/sqlite/SQLiteDatabase;)V

    invoke-virtual {p0, p1}, Lcom/miui/powercenter/batteryhistory/h;->onCreate(Landroid/database/sqlite/SQLiteDatabase;)V

    return-void
.end method
