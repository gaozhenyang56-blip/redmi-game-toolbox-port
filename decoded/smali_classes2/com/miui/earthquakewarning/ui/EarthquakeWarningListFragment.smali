.class public Lcom/miui/earthquakewarning/ui/EarthquakeWarningListFragment;
.super Lcom/miui/common/base/ui/BaseFragment;
.source "SourceFile"


# static fields
.field private static final AUTHORITY:Ljava/lang/String; = "com.miui.earthquakewarning.EarthquakeContentProvider2"

.field private static final EARTHQUAKE_URI:Landroid/net/Uri;

.field public static final TAG:Ljava/lang/String; = "EWListFragment"


# instance fields
.field private adapter:Lcom/miui/earthquakewarning/ui/EarthquakeWarningListAdapter;

.field private isLocal:Z

.field private mCityCode:Ljava/lang/String;

.field private mContext:Landroid/content/Context;

.field private mEmptyView:Lcom/miui/earthquakewarning/view/EmptyView;

.field private subscribeTime:J


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "content://com.miui.earthquakewarning.EarthquakeContentProvider2/earthquake"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/miui/earthquakewarning/ui/EarthquakeWarningListFragment;->EARTHQUAKE_URI:Landroid/net/Uri;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/miui/common/base/ui/BaseFragment;-><init>()V

    return-void
.end method

.method public static synthetic b0(Lcom/miui/earthquakewarning/ui/EarthquakeWarningListFragment;Lcom/miui/earthquakewarning/model/WarningModel;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/miui/earthquakewarning/ui/EarthquakeWarningListFragment;->lambda$initView$0(Lcom/miui/earthquakewarning/model/WarningModel;)V

    return-void
.end method

.method private isAll(Lcom/miui/earthquakewarning/model/WarningModel;)Z
    .locals 3

    iget-boolean v0, p0, Lcom/miui/earthquakewarning/ui/EarthquakeWarningListFragment;->isLocal:Z

    const/4 v1, 0x1

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/miui/earthquakewarning/ui/EarthquakeWarningListFragment;->mCityCode:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    return v1

    :cond_1
    :goto_0
    iget-boolean v0, p0, Lcom/miui/earthquakewarning/ui/EarthquakeWarningListFragment;->isLocal:Z

    const/4 v2, 0x0

    if-eqz v0, :cond_2

    iget v0, p1, Lcom/miui/earthquakewarning/model/WarningModel;->isMyCity:I

    if-ne v0, v1, :cond_2

    return v2

    :cond_2
    iget-object v0, p0, Lcom/miui/earthquakewarning/ui/EarthquakeWarningListFragment;->mCityCode:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_3

    iget v0, p1, Lcom/miui/earthquakewarning/model/WarningModel;->isMyCity:I

    if-ne v0, v1, :cond_3

    return v2

    :cond_3
    iget p1, p1, Lcom/miui/earthquakewarning/model/WarningModel;->subscribe:I

    if-ne p1, v1, :cond_4

    goto :goto_1

    :cond_4
    move v1, v2

    :goto_1
    return v1
.end method

.method private synthetic lambda$initView$0(Lcom/miui/earthquakewarning/model/WarningModel;)V
    .locals 8

    iget-object v0, p0, Lcom/miui/earthquakewarning/ui/EarthquakeWarningListFragment;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/miui/earthquakewarning/utils/Utils;->supportMap(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_2

    :try_start_0
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.miui.earthquake.detail"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    const-string v2, "magnitude"

    iget v3, p1, Lcom/miui/earthquakewarning/model/WarningModel;->magnitude:F

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putFloat(Ljava/lang/String;F)V

    const-string v2, "longitude"

    iget-wide v3, p1, Lcom/miui/earthquakewarning/model/WarningModel;->longitude:D

    invoke-virtual {v1, v2, v3, v4}, Landroid/os/BaseBundle;->putDouble(Ljava/lang/String;D)V

    const-string v2, "latitude"

    iget-wide v3, p1, Lcom/miui/earthquakewarning/model/WarningModel;->latitude:D

    invoke-virtual {v1, v2, v3, v4}, Landroid/os/BaseBundle;->putDouble(Ljava/lang/String;D)V

    const-string v2, "distance"

    iget-wide v3, p1, Lcom/miui/earthquakewarning/model/WarningModel;->distance:D

    invoke-virtual {v1, v2, v3, v4}, Landroid/os/BaseBundle;->putDouble(Ljava/lang/String;D)V

    const-string v2, "myLongitude"

    iget-wide v3, p1, Lcom/miui/earthquakewarning/model/WarningModel;->myLongitude:D

    invoke-virtual {v1, v2, v3, v4}, Landroid/os/BaseBundle;->putDouble(Ljava/lang/String;D)V

    const-string v2, "myLatitude"

    iget-wide v3, p1, Lcom/miui/earthquakewarning/model/WarningModel;->myLatitude:D

    invoke-virtual {v1, v2, v3, v4}, Landroid/os/BaseBundle;->putDouble(Ljava/lang/String;D)V

    const-string v2, "intensity"

    iget v3, p1, Lcom/miui/earthquakewarning/model/WarningModel;->intensity:F

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putFloat(Ljava/lang/String;F)V

    const-string v2, "epicenter"

    iget-object v3, p1, Lcom/miui/earthquakewarning/model/WarningModel;->epicenter:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "startTime"

    iget-wide v3, p1, Lcom/miui/earthquakewarning/model/WarningModel;->startTime:J

    invoke-virtual {v1, v2, v3, v4}, Landroid/os/BaseBundle;->putLong(Ljava/lang/String;J)V

    const-string v2, "warnTime"

    iget v3, p1, Lcom/miui/earthquakewarning/model/WarningModel;->warnTime:I

    invoke-virtual {v1, v2, v3}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    const-string v2, "isAll"

    invoke-direct {p0, p1}, Lcom/miui/earthquakewarning/ui/EarthquakeWarningListFragment;->isAll(Lcom/miui/earthquakewarning/model/WarningModel;)Z

    move-result v3

    invoke-virtual {v1, v2, v3}, Landroid/os/BaseBundle;->putBoolean(Ljava/lang/String;Z)V

    iget-object v2, p1, Lcom/miui/earthquakewarning/model/WarningModel;->signature:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const-string v3, "signature"

    const/4 v4, 0x0

    const/4 v5, 0x1

    const v6, 0x7f120747

    if-nez v2, :cond_1

    :try_start_1
    const-string v2, "null"

    iget-object v7, p1, Lcom/miui/earthquakewarning/model/WarningModel;->signature:Ljava/lang/String;

    invoke-static {v2, v7}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    goto :goto_1

    :cond_0
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    new-array v5, v5, [Ljava/lang/Object;

    iget-object p1, p1, Lcom/miui/earthquakewarning/model/WarningModel;->signature:Ljava/lang/String;

    aput-object p1, v5, v4

    invoke-virtual {v2, v6, v5}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    :goto_0
    invoke-virtual {v1, v3, p1}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    :cond_1
    :goto_1
    const p1, 0x7f1207e4

    invoke-virtual {p0, p1}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    new-array v5, v5, [Ljava/lang/Object;

    aput-object p1, v5, v4

    invoke-virtual {v2, v6, v5}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :goto_2
    invoke-virtual {v0, v1}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    const-string p1, "com.miui.securityadd"

    invoke-virtual {v0, p1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {p0, v0}, Landroidx/fragment/app/Fragment;->startActivity(Landroid/content/Intent;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_3

    :catch_0
    const-string p1, "EWListFragment"

    const-string v0, "can not find detail page"

    invoke-static {p1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    :goto_3
    return-void
.end method

.method private queryValue(Landroid/content/Context;)V
    .locals 23

    move-object/from16 v1, p0

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iget-object v2, v1, Lcom/miui/earthquakewarning/ui/EarthquakeWarningListFragment;->mCityCode:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1

    invoke-static {}, Lcom/miui/earthquakewarning/utils/Utils;->getPreviousAreaCode()I

    move-result v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    iget-object v3, v1, Lcom/miui/earthquakewarning/ui/EarthquakeWarningListFragment;->mCityCode:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    const-string v3, "%\' AND startTime > "

    const-string v4, "cityCode LIKE \'%"

    if-eqz v2, :cond_0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, v1, Lcom/miui/earthquakewarning/ui/EarthquakeWarningListFragment;->mCityCode:Ljava/lang/String;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v3, v1, Lcom/miui/earthquakewarning/ui/EarthquakeWarningListFragment;->subscribeTime:J

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v3, " AND isMyCity = 1"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, v1, Lcom/miui/earthquakewarning/ui/EarthquakeWarningListFragment;->mCityCode:Ljava/lang/String;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v3, v1, Lcom/miui/earthquakewarning/ui/EarthquakeWarningListFragment;->subscribeTime:J

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    :goto_0
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_1

    :cond_1
    const/4 v2, 0x0

    :goto_1
    move-object v6, v2

    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    sget-object v4, Lcom/miui/earthquakewarning/ui/EarthquakeWarningListFragment;->EARTHQUAKE_URI:Landroid/net/Uri;

    const-string v7, "_id"

    const-string v8, "eventID"

    const-string v9, "index_ew"

    const-string v10, "magnitude"

    const-string v11, "longitude"

    const-string v12, "latitude"

    const-string v13, "myLongitude"

    const-string v14, "myLatitude"

    const-string v15, "epicenter"

    const-string v16, "startTime"

    const-string v17, "signature"

    const-string v18, "distance"

    const-string v19, "intensity"

    const-string v20, "warntime"

    const-string v21, "subscribe"

    const-string v22, "isMyCity"

    filled-new-array/range {v7 .. v22}, [Ljava/lang/String;

    move-result-object v5

    const/4 v7, 0x0

    const-string v8, "startTime desc"

    invoke-virtual/range {v3 .. v8}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v2

    :goto_2
    :try_start_0
    invoke-interface {v2}, Landroid/database/Cursor;->moveToNext()Z

    move-result v3

    if-eqz v3, :cond_2

    new-instance v3, Lcom/miui/earthquakewarning/model/WarningModel;

    invoke-direct {v3}, Lcom/miui/earthquakewarning/model/WarningModel;-><init>()V

    const-string v4, "eventID"

    invoke-interface {v2, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    invoke-interface {v2, v4}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v4

    iput-wide v4, v3, Lcom/miui/earthquakewarning/model/WarningModel;->eventID:J

    const-string v4, "index_ew"

    invoke-interface {v2, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    invoke-interface {v2, v4}, Landroid/database/Cursor;->getInt(I)I

    move-result v4

    iput v4, v3, Lcom/miui/earthquakewarning/model/WarningModel;->index_ew:I

    const-string v4, "magnitude"

    invoke-interface {v2, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    invoke-interface {v2, v4}, Landroid/database/Cursor;->getFloat(I)F

    move-result v4

    iput v4, v3, Lcom/miui/earthquakewarning/model/WarningModel;->magnitude:F

    const-string v4, "longitude"

    invoke-interface {v2, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    invoke-interface {v2, v4}, Landroid/database/Cursor;->getDouble(I)D

    move-result-wide v4

    iput-wide v4, v3, Lcom/miui/earthquakewarning/model/WarningModel;->longitude:D

    const-string v4, "latitude"

    invoke-interface {v2, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    invoke-interface {v2, v4}, Landroid/database/Cursor;->getDouble(I)D

    move-result-wide v4

    iput-wide v4, v3, Lcom/miui/earthquakewarning/model/WarningModel;->latitude:D

    const-string v4, "myLongitude"

    invoke-interface {v2, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    invoke-interface {v2, v4}, Landroid/database/Cursor;->getDouble(I)D

    move-result-wide v4

    iput-wide v4, v3, Lcom/miui/earthquakewarning/model/WarningModel;->myLongitude:D

    const-string v4, "myLatitude"

    invoke-interface {v2, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    invoke-interface {v2, v4}, Landroid/database/Cursor;->getDouble(I)D

    move-result-wide v4

    iput-wide v4, v3, Lcom/miui/earthquakewarning/model/WarningModel;->myLatitude:D

    const-string v4, "epicenter"

    invoke-interface {v2, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    invoke-interface {v2, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v3, Lcom/miui/earthquakewarning/model/WarningModel;->epicenter:Ljava/lang/String;

    const-string v4, "startTime"

    invoke-interface {v2, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    invoke-interface {v2, v4}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v4

    iput-wide v4, v3, Lcom/miui/earthquakewarning/model/WarningModel;->startTime:J

    const-string v4, "signature"

    invoke-interface {v2, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    invoke-interface {v2, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v3, Lcom/miui/earthquakewarning/model/WarningModel;->signature:Ljava/lang/String;

    const-string v4, "distance"

    invoke-interface {v2, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    invoke-interface {v2, v4}, Landroid/database/Cursor;->getDouble(I)D

    move-result-wide v4

    iput-wide v4, v3, Lcom/miui/earthquakewarning/model/WarningModel;->distance:D

    const-string v4, "intensity"

    invoke-interface {v2, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    invoke-interface {v2, v4}, Landroid/database/Cursor;->getFloat(I)F

    move-result v4

    iput v4, v3, Lcom/miui/earthquakewarning/model/WarningModel;->intensity:F

    const-string v4, "warntime"

    invoke-interface {v2, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    invoke-interface {v2, v4}, Landroid/database/Cursor;->getInt(I)I

    move-result v4

    iput v4, v3, Lcom/miui/earthquakewarning/model/WarningModel;->warnTime:I

    const-string v4, "subscribe"

    invoke-interface {v2, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    invoke-interface {v2, v4}, Landroid/database/Cursor;->getInt(I)I

    move-result v4

    iput v4, v3, Lcom/miui/earthquakewarning/model/WarningModel;->subscribe:I

    const-string v4, "isMyCity"

    invoke-interface {v2, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    invoke-interface {v2, v4}, Landroid/database/Cursor;->getInt(I)I

    move-result v4

    iput v4, v3, Lcom/miui/earthquakewarning/model/WarningModel;->isMyCity:I

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto/16 :goto_2

    :cond_2
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    iget-object v2, v1, Lcom/miui/earthquakewarning/ui/EarthquakeWarningListFragment;->adapter:Lcom/miui/earthquakewarning/ui/EarthquakeWarningListAdapter;

    invoke-virtual {v2, v0}, Landroidx/recyclerview/widget/p;->submitList(Ljava/util/List;)V

    invoke-direct {v1, v0}, Lcom/miui/earthquakewarning/ui/EarthquakeWarningListFragment;->setEmptyView(Ljava/util/List;)V

    return-void

    :catchall_0
    move-exception v0

    move-object v3, v0

    if-eqz v2, :cond_3

    :try_start_1
    invoke-interface {v2}, Landroid/database/Cursor;->close()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_3

    :catchall_1
    move-exception v0

    move-object v2, v0

    invoke-virtual {v3, v2}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_3
    :goto_3
    throw v3
.end method

.method private setEmptyView(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/miui/earthquakewarning/model/WarningModel;",
            ">;)V"
        }
    .end annotation

    if-eqz p1, :cond_1

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lcom/miui/earthquakewarning/ui/EarthquakeWarningListFragment;->mEmptyView:Lcom/miui/earthquakewarning/view/EmptyView;

    const/16 v0, 0x8

    goto :goto_1

    :cond_1
    :goto_0
    iget-object p1, p0, Lcom/miui/earthquakewarning/ui/EarthquakeWarningListFragment;->mEmptyView:Lcom/miui/earthquakewarning/view/EmptyView;

    const/4 v0, 0x0

    :goto_1
    invoke-virtual {p1, v0}, Lcom/miui/earthquakewarning/view/EmptyView;->setVisibility(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic getDefaultViewModelCreationExtras()Lp0/a;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    invoke-static {p0}, Landroidx/lifecycle/j;->a(Landroidx/lifecycle/k;)Lp0/a;

    move-result-object v0

    return-object v0
.end method

.method protected initView()V
    .locals 3

    const v0, 0x7f0b06d7

    invoke-virtual {p0, v0}, Lcom/miui/common/base/ui/BaseFragment;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lmiuix/recyclerview/widget/RecyclerView;

    const v1, 0x7f0b0379

    invoke-virtual {p0, v1}, Lcom/miui/common/base/ui/BaseFragment;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/miui/earthquakewarning/view/EmptyView;

    iput-object v1, p0, Lcom/miui/earthquakewarning/ui/EarthquakeWarningListFragment;->mEmptyView:Lcom/miui/earthquakewarning/view/EmptyView;

    new-instance v1, Lcom/miui/earthquakewarning/ui/EarthquakeWarningListAdapter;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Lcom/miui/earthquakewarning/ui/EarthquakeWarningListAdapter;-><init>(Z)V

    iput-object v1, p0, Lcom/miui/earthquakewarning/ui/EarthquakeWarningListFragment;->adapter:Lcom/miui/earthquakewarning/ui/EarthquakeWarningListAdapter;

    new-instance v1, Landroidx/recyclerview/widget/LinearLayoutManager;

    iget-object v2, p0, Lcom/miui/earthquakewarning/ui/EarthquakeWarningListFragment;->mContext:Landroid/content/Context;

    invoke-direct {v1, v2}, Landroidx/recyclerview/widget/LinearLayoutManager;-><init>(Landroid/content/Context;)V

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroidx/recyclerview/widget/LinearLayoutManager;->setOrientation(I)V

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$n;)V

    iget-object v1, p0, Lcom/miui/earthquakewarning/ui/EarthquakeWarningListFragment;->adapter:Lcom/miui/earthquakewarning/ui/EarthquakeWarningListAdapter;

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$h;)V

    iget-object v0, p0, Lcom/miui/earthquakewarning/ui/EarthquakeWarningListFragment;->adapter:Lcom/miui/earthquakewarning/ui/EarthquakeWarningListAdapter;

    new-instance v1, Lcom/miui/earthquakewarning/ui/e0;

    invoke-direct {v1, p0}, Lcom/miui/earthquakewarning/ui/e0;-><init>(Lcom/miui/earthquakewarning/ui/EarthquakeWarningListFragment;)V

    invoke-virtual {v0, v1}, Lcom/miui/earthquakewarning/ui/EarthquakeWarningListAdapter;->setListener(Lcom/miui/earthquakewarning/ui/EarthquakeWarningListAdapter$ClickListener;)V

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/miui/earthquakewarning/ui/EarthquakeWarningListFragment;->queryValue(Landroid/content/Context;)V

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2

    invoke-super {p0, p1}, Lmiuix/appcompat/app/Fragment;->onCreate(Landroid/os/Bundle;)V

    const p1, 0x7f13043e

    invoke-virtual {p0, p1}, Lmiuix/appcompat/app/Fragment;->setThemeRes(I)V

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object p1

    iput-object p1, p0, Lcom/miui/earthquakewarning/ui/EarthquakeWarningListFragment;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getArguments()Landroid/os/Bundle;

    move-result-object p1

    if-eqz p1, :cond_0

    const-string v0, "CITY_CODE"

    invoke-virtual {p1, v0}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/earthquakewarning/ui/EarthquakeWarningListFragment;->mCityCode:Ljava/lang/String;

    const-string v0, "SUBSCRIBE_TIME"

    invoke-virtual {p1, v0}, Landroid/os/BaseBundle;->getLong(Ljava/lang/String;)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/miui/earthquakewarning/ui/EarthquakeWarningListFragment;->subscribeTime:J

    invoke-static {}, Lcom/miui/earthquakewarning/utils/Utils;->getPreviousAreaCode()I

    move-result p1

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    iget-object v0, p0, Lcom/miui/earthquakewarning/ui/EarthquakeWarningListFragment;->mCityCode:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    iput-boolean p1, p0, Lcom/miui/earthquakewarning/ui/EarthquakeWarningListFragment;->isLocal:Z

    :cond_0
    return-void
.end method

.method protected onCreateViewLayout()I
    .locals 1

    const v0, 0x7f0e0148

    return v0
.end method

.method protected onCustomizeActionBar(Landroidx/appcompat/app/ActionBar;)I
    .locals 0

    const/4 p1, 0x0

    return p1
.end method
