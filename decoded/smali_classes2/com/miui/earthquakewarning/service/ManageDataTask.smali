.class public Lcom/miui/earthquakewarning/service/ManageDataTask;
.super Landroid/os/AsyncTask;
.source "SourceFile"


# annotations
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
.field private static final AUTHORITY:Ljava/lang/String; = "com.miui.earthquakewarning.EarthquakeContentProvider2"

.field private static final EARTHQUAKE_URI:Landroid/net/Uri;

.field private static final TAG:Ljava/lang/String; = "ManageDataTask"


# instance fields
.field private context:Landroid/content/Context;

.field private userQuakeItem:Lcom/miui/earthquakewarning/model/UserQuakeItem;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "content://com.miui.earthquakewarning.EarthquakeContentProvider2/earthquake"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/miui/earthquakewarning/service/ManageDataTask;->EARTHQUAKE_URI:Landroid/net/Uri;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/miui/earthquakewarning/model/UserQuakeItem;)V
    .locals 0

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    iput-object p1, p0, Lcom/miui/earthquakewarning/service/ManageDataTask;->context:Landroid/content/Context;

    iput-object p2, p0, Lcom/miui/earthquakewarning/service/ManageDataTask;->userQuakeItem:Lcom/miui/earthquakewarning/model/UserQuakeItem;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/miui/earthquakewarning/model/UserQuakeItem;Z)V
    .locals 0

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    iput-object p1, p0, Lcom/miui/earthquakewarning/service/ManageDataTask;->context:Landroid/content/Context;

    iput-object p2, p0, Lcom/miui/earthquakewarning/service/ManageDataTask;->userQuakeItem:Lcom/miui/earthquakewarning/model/UserQuakeItem;

    return-void
.end method

.method private insertEarthquake(Landroid/content/Context;Lcom/miui/earthquakewarning/model/UserQuakeItem;)V
    .locals 3

    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    invoke-virtual {p2}, Lcom/miui/earthquakewarning/model/QuakeItem;->getEventID()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const-string v2, "eventID"

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    invoke-virtual {p2}, Lcom/miui/earthquakewarning/model/QuakeItem;->getIndex()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "index_ew"

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    invoke-virtual {p2}, Lcom/miui/earthquakewarning/model/QuakeItem;->getMagnitude()F

    move-result v1

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    const-string v2, "magnitude"

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Float;)V

    invoke-virtual {p2}, Lcom/miui/earthquakewarning/model/QuakeItem;->getEpiLocation()Lcom/miui/earthquakewarning/model/LocationModel;

    move-result-object v1

    invoke-virtual {v1}, Lcom/miui/earthquakewarning/model/LocationModel;->getLongitude()D

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v1

    const-string v2, "longitude"

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Double;)V

    invoke-virtual {p2}, Lcom/miui/earthquakewarning/model/QuakeItem;->getEpiLocation()Lcom/miui/earthquakewarning/model/LocationModel;

    move-result-object v1

    invoke-virtual {v1}, Lcom/miui/earthquakewarning/model/LocationModel;->getLatitude()D

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v1

    const-string v2, "latitude"

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Double;)V

    invoke-virtual {p2}, Lcom/miui/earthquakewarning/model/UserQuakeItem;->getLocation()Lcom/miui/earthquakewarning/model/LocationModel;

    move-result-object v1

    invoke-virtual {v1}, Lcom/miui/earthquakewarning/model/LocationModel;->getLongitude()D

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v1

    const-string v2, "myLongitude"

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Double;)V

    invoke-virtual {p2}, Lcom/miui/earthquakewarning/model/UserQuakeItem;->getLocation()Lcom/miui/earthquakewarning/model/LocationModel;

    move-result-object v1

    invoke-virtual {v1}, Lcom/miui/earthquakewarning/model/LocationModel;->getLatitude()D

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v1

    const-string v2, "myLatitude"

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Double;)V

    invoke-virtual {p2}, Lcom/miui/earthquakewarning/model/UserQuakeItem;->getDistance()F

    move-result v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(F)Ljava/lang/String;

    move-result-object v1

    const-string v2, "distance"

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p2}, Lcom/miui/earthquakewarning/model/UserQuakeItem;->getIntensity()F

    move-result v1

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    const-string v2, "intensity"

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Float;)V

    invoke-virtual {p2}, Lcom/miui/earthquakewarning/model/QuakeItem;->getEpiLocation()Lcom/miui/earthquakewarning/model/LocationModel;

    move-result-object v1

    invoke-virtual {v1}, Lcom/miui/earthquakewarning/model/LocationModel;->getPlace()Ljava/lang/String;

    move-result-object v1

    const-string v2, "epicenter"

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p2}, Lcom/miui/earthquakewarning/model/QuakeItem;->getStartTime()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const-string v2, "startTime"

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    invoke-virtual {p2}, Lcom/miui/earthquakewarning/model/QuakeItem;->getSignatureText()Ljava/lang/String;

    move-result-object v1

    const-string v2, "signature"

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p2}, Lcom/miui/earthquakewarning/model/QuakeItem;->getUpdateTime()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const-string v2, "updateTime"

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    invoke-virtual {p2}, Lcom/miui/earthquakewarning/model/QuakeItem;->getType()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "type"

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    invoke-virtual {p2}, Lcom/miui/earthquakewarning/model/UserQuakeItem;->getCountdown()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "warntime"

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    invoke-virtual {p2}, Lcom/miui/earthquakewarning/model/UserQuakeItem;->getCityCode()Ljava/lang/String;

    move-result-object v1

    const-string v2, "cityCode"

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p2}, Lcom/miui/earthquakewarning/model/UserQuakeItem;->getSubscribe()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "subscribe"

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    invoke-virtual {p2}, Lcom/miui/earthquakewarning/model/UserQuakeItem;->getIsMyCity()I

    move-result p2

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    const-string v1, "isMyCity"

    invoke-virtual {v0, v1, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    sget-object p2, Lcom/miui/earthquakewarning/service/ManageDataTask;->EARTHQUAKE_URI:Landroid/net/Uri;

    invoke-virtual {p1, p2, v0}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    return-void
.end method

.method private queryData(Landroid/content/Context;J)Lcom/miui/earthquakewarning/model/WarningModel;
    .locals 20

    new-instance v0, Lcom/miui/earthquakewarning/model/WarningModel;

    invoke-direct {v0}, Lcom/miui/earthquakewarning/model/WarningModel;-><init>()V

    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    sget-object v2, Lcom/miui/earthquakewarning/service/ManageDataTask;->EARTHQUAKE_URI:Landroid/net/Uri;

    const-string v3, "_id"

    const-string v4, "eventID"

    const-string v5, "index_ew"

    const-string v6, "magnitude"

    const-string v7, "longitude"

    const-string v8, "latitude"

    const-string v9, "myLongitude"

    const-string v10, "myLatitude"

    const-string v11, "epicenter"

    const-string v12, "startTime"

    const-string v13, "signature"

    const-string v14, "distance"

    const-string v15, "intensity"

    const-string v16, "warntime"

    const-string v17, "subscribe"

    const-string v18, "cityCode"

    const-string v19, "isMyCity"

    filled-new-array/range {v3 .. v19}, [Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    const-string v6, "startTime desc"

    invoke-virtual/range {v1 .. v6}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2

    if-eqz v2, :cond_1

    const-string v2, "eventID"

    invoke-interface {v1, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v1, v3}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v3

    cmp-long v3, v3, p2

    if-nez v3, :cond_0

    invoke-interface {v1, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v1, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    iput-wide v2, v0, Lcom/miui/earthquakewarning/model/WarningModel;->eventID:J

    const-string v2, "index_ew"

    invoke-interface {v1, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v1, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    iput v2, v0, Lcom/miui/earthquakewarning/model/WarningModel;->index_ew:I

    const-string v2, "magnitude"

    invoke-interface {v1, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v1, v2}, Landroid/database/Cursor;->getFloat(I)F

    move-result v2

    iput v2, v0, Lcom/miui/earthquakewarning/model/WarningModel;->magnitude:F

    const-string v2, "longitude"

    invoke-interface {v1, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v1, v2}, Landroid/database/Cursor;->getDouble(I)D

    move-result-wide v2

    iput-wide v2, v0, Lcom/miui/earthquakewarning/model/WarningModel;->longitude:D

    const-string v2, "latitude"

    invoke-interface {v1, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v1, v2}, Landroid/database/Cursor;->getDouble(I)D

    move-result-wide v2

    iput-wide v2, v0, Lcom/miui/earthquakewarning/model/WarningModel;->latitude:D

    const-string v2, "myLongitude"

    invoke-interface {v1, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v1, v2}, Landroid/database/Cursor;->getDouble(I)D

    move-result-wide v2

    iput-wide v2, v0, Lcom/miui/earthquakewarning/model/WarningModel;->myLongitude:D

    const-string v2, "myLatitude"

    invoke-interface {v1, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v1, v2}, Landroid/database/Cursor;->getDouble(I)D

    move-result-wide v2

    iput-wide v2, v0, Lcom/miui/earthquakewarning/model/WarningModel;->myLatitude:D

    const-string v2, "epicenter"

    invoke-interface {v1, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v1, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lcom/miui/earthquakewarning/model/WarningModel;->epicenter:Ljava/lang/String;

    const-string v2, "startTime"

    invoke-interface {v1, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v1, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    iput-wide v2, v0, Lcom/miui/earthquakewarning/model/WarningModel;->startTime:J

    const-string v2, "signature"

    invoke-interface {v1, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v1, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lcom/miui/earthquakewarning/model/WarningModel;->signature:Ljava/lang/String;

    const-string v2, "distance"

    invoke-interface {v1, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v1, v2}, Landroid/database/Cursor;->getDouble(I)D

    move-result-wide v2

    iput-wide v2, v0, Lcom/miui/earthquakewarning/model/WarningModel;->distance:D

    const-string v2, "intensity"

    invoke-interface {v1, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v1, v2}, Landroid/database/Cursor;->getFloat(I)F

    move-result v2

    iput v2, v0, Lcom/miui/earthquakewarning/model/WarningModel;->intensity:F

    const-string v2, "warntime"

    invoke-interface {v1, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v1, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    iput v2, v0, Lcom/miui/earthquakewarning/model/WarningModel;->warnTime:I

    const-string v2, "subscribe"

    invoke-interface {v1, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v1, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    iput v2, v0, Lcom/miui/earthquakewarning/model/WarningModel;->subscribe:I

    const-string v2, "cityCode"

    invoke-interface {v1, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v1, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lcom/miui/earthquakewarning/model/WarningModel;->cityCode:Ljava/lang/String;

    const-string v2, "isMyCity"

    invoke-interface {v1, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v1, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    iput v1, v0, Lcom/miui/earthquakewarning/model/WarningModel;->isMyCity:I

    return-object v0

    :cond_1
    const/4 v0, 0x0

    return-object v0
.end method

.method private updateEarthquake(Landroid/content/Context;Lcom/miui/earthquakewarning/model/UserQuakeItem;Lcom/miui/earthquakewarning/model/WarningModel;)V
    .locals 5

    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    invoke-virtual {p2}, Lcom/miui/earthquakewarning/model/QuakeItem;->getIndex()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "index_ew"

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    invoke-virtual {p2}, Lcom/miui/earthquakewarning/model/QuakeItem;->getMagnitude()F

    move-result v1

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    const-string v2, "magnitude"

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Float;)V

    invoke-virtual {p2}, Lcom/miui/earthquakewarning/model/QuakeItem;->getEpiLocation()Lcom/miui/earthquakewarning/model/LocationModel;

    move-result-object v1

    invoke-virtual {v1}, Lcom/miui/earthquakewarning/model/LocationModel;->getLongitude()D

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v1

    const-string v2, "longitude"

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Double;)V

    invoke-virtual {p2}, Lcom/miui/earthquakewarning/model/QuakeItem;->getEpiLocation()Lcom/miui/earthquakewarning/model/LocationModel;

    move-result-object v1

    invoke-virtual {v1}, Lcom/miui/earthquakewarning/model/LocationModel;->getLatitude()D

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v1

    const-string v2, "latitude"

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Double;)V

    iget-wide v1, p3, Lcom/miui/earthquakewarning/model/WarningModel;->myLongitude:D

    const-wide/16 v3, 0x0

    cmpg-double v1, v1, v3

    if-lez v1, :cond_0

    invoke-virtual {p2}, Lcom/miui/earthquakewarning/model/UserQuakeItem;->getLocation()Lcom/miui/earthquakewarning/model/LocationModel;

    move-result-object v1

    invoke-virtual {v1}, Lcom/miui/earthquakewarning/model/LocationModel;->getLongitude()D

    move-result-wide v1

    cmpl-double v1, v1, v3

    if-lez v1, :cond_1

    :cond_0
    invoke-virtual {p2}, Lcom/miui/earthquakewarning/model/UserQuakeItem;->getLocation()Lcom/miui/earthquakewarning/model/LocationModel;

    move-result-object v1

    invoke-virtual {v1}, Lcom/miui/earthquakewarning/model/LocationModel;->getLongitude()D

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v1

    const-string v2, "myLongitude"

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Double;)V

    invoke-virtual {p2}, Lcom/miui/earthquakewarning/model/UserQuakeItem;->getLocation()Lcom/miui/earthquakewarning/model/LocationModel;

    move-result-object v1

    invoke-virtual {v1}, Lcom/miui/earthquakewarning/model/LocationModel;->getLatitude()D

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v1

    const-string v2, "myLatitude"

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Double;)V

    invoke-virtual {p2}, Lcom/miui/earthquakewarning/model/UserQuakeItem;->getDistance()F

    move-result v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(F)Ljava/lang/String;

    move-result-object v1

    const-string v2, "distance"

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p2}, Lcom/miui/earthquakewarning/model/UserQuakeItem;->getIntensity()F

    move-result v1

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    const-string v2, "intensity"

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Float;)V

    :cond_1
    invoke-virtual {p2}, Lcom/miui/earthquakewarning/model/QuakeItem;->getEpiLocation()Lcom/miui/earthquakewarning/model/LocationModel;

    move-result-object v1

    invoke-virtual {v1}, Lcom/miui/earthquakewarning/model/LocationModel;->getPlace()Ljava/lang/String;

    move-result-object v1

    const-string v2, "epicenter"

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p2}, Lcom/miui/earthquakewarning/model/QuakeItem;->getStartTime()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const-string v2, "startTime"

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    invoke-virtual {p2}, Lcom/miui/earthquakewarning/model/QuakeItem;->getSignatureText()Ljava/lang/String;

    move-result-object v1

    const-string v2, "signature"

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p2}, Lcom/miui/earthquakewarning/model/QuakeItem;->getUpdateTime()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const-string v2, "updateTime"

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    invoke-virtual {p2}, Lcom/miui/earthquakewarning/model/QuakeItem;->getType()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "type"

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    iget v1, p3, Lcom/miui/earthquakewarning/model/WarningModel;->warnTime:I

    const/4 v2, 0x1

    if-ge v1, v2, :cond_2

    invoke-virtual {p2}, Lcom/miui/earthquakewarning/model/UserQuakeItem;->getCountdown()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v3, "warntime"

    invoke-virtual {v0, v3, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    :cond_2
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p3, Lcom/miui/earthquakewarning/model/WarningModel;->cityCode:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ","

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Lcom/miui/earthquakewarning/model/UserQuakeItem;->getCityCode()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v3, "cityCode"

    invoke-virtual {v0, v3, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    iget v1, p3, Lcom/miui/earthquakewarning/model/WarningModel;->subscribe:I

    if-nez v1, :cond_3

    invoke-virtual {p2}, Lcom/miui/earthquakewarning/model/UserQuakeItem;->getSubscribe()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v3, "subscribe"

    invoke-virtual {v0, v3, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    :cond_3
    iget p3, p3, Lcom/miui/earthquakewarning/model/WarningModel;->isMyCity:I

    if-nez p3, :cond_4

    invoke-virtual {p2}, Lcom/miui/earthquakewarning/model/UserQuakeItem;->getIsMyCity()I

    move-result p3

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    const-string v1, "isMyCity"

    invoke-virtual {v0, v1, p3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    :cond_4
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    sget-object p3, Lcom/miui/earthquakewarning/service/ManageDataTask;->EARTHQUAKE_URI:Landroid/net/Uri;

    new-array v1, v2, [Ljava/lang/String;

    const/4 v2, 0x0

    invoke-virtual {p2}, Lcom/miui/earthquakewarning/model/QuakeItem;->getEventID()J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object p2

    aput-object p2, v1, v2

    const-string p2, "eventID = ?"

    invoke-virtual {p1, p3, v0, p2, v1}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    return-void
.end method


# virtual methods
.method protected varargs doInBackground([Ljava/lang/String;)Ljava/lang/Boolean;
    .locals 4

    :try_start_0
    iget-object p1, p0, Lcom/miui/earthquakewarning/service/ManageDataTask;->context:Landroid/content/Context;

    iget-object v0, p0, Lcom/miui/earthquakewarning/service/ManageDataTask;->userQuakeItem:Lcom/miui/earthquakewarning/model/UserQuakeItem;

    invoke-virtual {v0}, Lcom/miui/earthquakewarning/model/QuakeItem;->getEventID()J

    move-result-wide v0

    invoke-direct {p0, p1, v0, v1}, Lcom/miui/earthquakewarning/service/ManageDataTask;->queryData(Landroid/content/Context;J)Lcom/miui/earthquakewarning/model/WarningModel;

    move-result-object p1

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/miui/earthquakewarning/service/ManageDataTask;->userQuakeItem:Lcom/miui/earthquakewarning/model/UserQuakeItem;

    invoke-virtual {v0}, Lcom/miui/earthquakewarning/model/QuakeItem;->getEventID()J

    move-result-wide v0

    iget-wide v2, p1, Lcom/miui/earthquakewarning/model/WarningModel;->eventID:J

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/miui/earthquakewarning/service/ManageDataTask;->context:Landroid/content/Context;

    iget-object v1, p0, Lcom/miui/earthquakewarning/service/ManageDataTask;->userQuakeItem:Lcom/miui/earthquakewarning/model/UserQuakeItem;

    invoke-direct {p0, v0, v1, p1}, Lcom/miui/earthquakewarning/service/ManageDataTask;->updateEarthquake(Landroid/content/Context;Lcom/miui/earthquakewarning/model/UserQuakeItem;Lcom/miui/earthquakewarning/model/WarningModel;)V

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lcom/miui/earthquakewarning/service/ManageDataTask;->context:Landroid/content/Context;

    iget-object v0, p0, Lcom/miui/earthquakewarning/service/ManageDataTask;->userQuakeItem:Lcom/miui/earthquakewarning/model/UserQuakeItem;

    invoke-direct {p0, p1, v0}, Lcom/miui/earthquakewarning/service/ManageDataTask;->insertEarthquake(Landroid/content/Context;Lcom/miui/earthquakewarning/model/UserQuakeItem;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    const-string v0, "ManageDataTask"

    const-string v1, "insert data error"

    invoke-static {v0, v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    sget-object p1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    return-object p1
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, [Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/miui/earthquakewarning/service/ManageDataTask;->doInBackground([Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1
.end method

.method protected onPostExecute(Ljava/lang/Boolean;)V
    .locals 3

    invoke-super {p0, p1}, Landroid/os/AsyncTask;->onPostExecute(Ljava/lang/Object;)V

    iget-object p1, p0, Lcom/miui/earthquakewarning/service/ManageDataTask;->userQuakeItem:Lcom/miui/earthquakewarning/model/UserQuakeItem;

    invoke-virtual {p1}, Lcom/miui/earthquakewarning/model/UserQuakeItem;->getCityCode()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_0

    new-instance p1, Lcom/miui/earthquakewarning/model/SaveAreaResult;

    invoke-direct {p1}, Lcom/miui/earthquakewarning/model/SaveAreaResult;-><init>()V

    iget-object v0, p0, Lcom/miui/earthquakewarning/service/ManageDataTask;->userQuakeItem:Lcom/miui/earthquakewarning/model/UserQuakeItem;

    invoke-virtual {v0}, Lcom/miui/earthquakewarning/model/QuakeItem;->getStartTime()J

    move-result-wide v0

    invoke-virtual {p1, v0, v1}, Lcom/miui/earthquakewarning/model/SaveAreaResult;->setUpdateTime(J)V

    iget-object v0, p0, Lcom/miui/earthquakewarning/service/ManageDataTask;->userQuakeItem:Lcom/miui/earthquakewarning/model/UserQuakeItem;

    invoke-virtual {v0}, Lcom/miui/earthquakewarning/model/UserQuakeItem;->getCityCode()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/miui/earthquakewarning/model/SaveAreaResult;->setCityCode(Ljava/lang/String;)V

    new-instance v0, Lcom/miui/earthquakewarning/service/ManageSubscribeDataTask;

    iget-object v1, p0, Lcom/miui/earthquakewarning/service/ManageDataTask;->context:Landroid/content/Context;

    const/4 v2, 0x4

    invoke-direct {v0, v1, v2, p1}, Lcom/miui/earthquakewarning/service/ManageSubscribeDataTask;-><init>(Landroid/content/Context;ILcom/miui/earthquakewarning/model/SaveAreaResult;)V

    const/4 p1, 0x0

    new-array p1, p1, [Ljava/lang/String;

    invoke-virtual {v0, p1}, Landroid/os/AsyncTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    :cond_0
    return-void
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p0, p1}, Lcom/miui/earthquakewarning/service/ManageDataTask;->onPostExecute(Ljava/lang/Boolean;)V

    return-void
.end method
