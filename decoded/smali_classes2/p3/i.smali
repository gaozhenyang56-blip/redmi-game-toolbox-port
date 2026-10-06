.class public Lp3/i;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static synthetic a(ILandroid/content/Context;)V
    .locals 0

    invoke-static {p0, p1}, Lp3/i;->n(ILandroid/content/Context;)V

    return-void
.end method

.method public static b(Ljava/lang/String;)V
    .locals 2

    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    const-string v1, "widget_black_list"

    invoke-virtual {v0, v1, p0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/miui/securitycenter/Application;->A()Lcom/miui/securitycenter/Application;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    sget-object v1, Lcom/miui/apppredict/db/WidgetBlackListContentProvider;->e:Landroid/net/Uri;

    invoke-virtual {p0, v1, v0}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    return-void
.end method

.method private static c(Landroid/content/Context;I)I
    .locals 1

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p0

    iget v0, p0, Landroid/util/DisplayMetrics;->widthPixels:I

    iget p0, p0, Landroid/util/DisplayMetrics;->heightPixels:I

    invoke-static {v0, p0}, Ljava/lang/Math;->min(II)I

    move-result p0

    int-to-float p0, p0

    int-to-float p1, p1

    const/high16 v0, 0x40000000    # 2.0f

    div-float/2addr p1, v0

    div-float/2addr p0, p1

    const v0, 0x3e4ccccd    # 0.2f

    mul-float/2addr p1, v0

    const/high16 v0, 0x40200000    # 2.5f

    sub-float/2addr v0, p1

    div-float/2addr p0, v0

    float-to-int p0, p0

    return p0
.end method

.method private static d(Landroid/content/Context;I)I
    .locals 2

    div-int/lit8 p1, p1, 0x2

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f071dd9

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    mul-int/lit8 v0, v0, 0x3

    sub-int/2addr p1, v0

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    const v0, 0x7f071da6

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p0

    sub-int/2addr p1, p0

    return p1
.end method

.method public static e()Ljava/lang/String;
    .locals 4

    const/4 v0, 0x0

    :try_start_0
    const-string v1, "miui.process.ProcessManager"

    invoke-static {v1}, Lbh/d$a;->d(Ljava/lang/String;)Lbh/d$a;

    move-result-object v1

    const-string v2, "getForegroundInfo"

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-virtual {v1, v2, v0, v3}, Lbh/d$a;->c(Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Lbh/d$a;

    move-result-object v1

    invoke-virtual {v1}, Lbh/d$a;->l()Lbh/d$a;

    move-result-object v1

    const-string v2, "mForegroundPackageName"

    invoke-virtual {v1, v2}, Lbh/d$a;->g(Ljava/lang/String;)Lbh/d$a;

    move-result-object v1

    invoke-virtual {v1}, Lbh/d$a;->m()Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    const-string v2, "AppPredictWidget"

    const-string v3, "getForegroundPackageName exception: "

    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    return-object v0
.end method

.method public static f(Landroid/content/Context;)Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p0

    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.MAIN"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v2, "android.intent.category.HOME"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/pm/ResolveInfo;

    iget-object v2, v1, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v2, v2, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    const-string v3, "com.android.settings"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    iget-object v1, v1, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v1, v1, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    return-object v0
.end method

.method public static g(Landroid/content/Context;)Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    invoke-static {}, Lp3/e;->a()Lp3/e;

    move-result-object p0

    invoke-virtual {p0}, Lp3/e;->b()Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public static h(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    const-string v0, ":"

    invoke-virtual {p0, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    array-length v1, v0

    if-lez v1, :cond_0

    const/4 p0, 0x0

    aget-object p0, v0, p0

    :cond_0
    return-object p0
.end method

.method public static i()Ljava/util/Set;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    invoke-static {}, Lcom/miui/securitycenter/Application;->A()Lcom/miui/securitycenter/Application;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    sget-object v2, Lcom/miui/apppredict/db/WidgetBlackListContentProvider;->e:Landroid/net/Uri;

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-virtual/range {v1 .. v6}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    new-instance v1, Landroid/util/ArraySet;

    invoke-direct {v1}, Landroid/util/ArraySet;-><init>()V

    if-eqz v0, :cond_1

    :goto_0
    invoke-interface {v0}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2

    if-eqz v2, :cond_0

    const-string v2, "widget_black_list"

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "black list size = "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v1}, Ljava/util/Set;->size()I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "AppPredictWidget"

    invoke-static {v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-object v1
.end method

.method public static j(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, ":xspace"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static k(Landroid/content/Context;)Z
    .locals 2

    invoke-static {}, Lp3/i;->e()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0}, Lp3/i;->f(Landroid/content/Context;)Ljava/util/List;

    move-result-object p0

    if-eqz p0, :cond_0

    invoke-interface {p0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-interface {p0, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p0

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method private static l(Landroid/content/Context;)Z
    .locals 6

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/4 v1, 0x0

    const/16 v2, 0x1b

    if-lt v0, v2, :cond_0

    invoke-static {p0}, Landroid/app/WallpaperManager;->getInstance(Landroid/content/Context;)Landroid/app/WallpaperManager;

    move-result-object p0

    const/4 v0, 0x1

    invoke-static {p0, v0}, Lk3/q;->a(Landroid/app/WallpaperManager;I)Landroid/app/WallpaperColors;

    move-result-object p0

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Landroid/app/WallpaperColors;->getPrimaryColor()Landroid/graphics/Color;

    move-result-object p0

    invoke-static {p0}, Lk3/r;->a(Landroid/graphics/Color;)I

    move-result p0

    invoke-static {p0}, Landroidx/core/graphics/d;->f(I)D

    move-result-wide v2

    const-wide/high16 v4, 0x3fe0000000000000L    # 0.5

    cmpl-double p0, v2, v4

    if-ltz p0, :cond_0

    move v1, v0

    :cond_0
    return v1
.end method

.method public static m(Ljava/lang/String;)Z
    .locals 1

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    const-string v0, ":xspace"

    invoke-virtual {p0, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method private static synthetic n(ILandroid/content/Context;)V
    .locals 34

    move/from16 v1, p0

    move-object/from16 v2, p1

    const-string v3, "AppPredictWidget"

    add-int/lit8 v0, v1, 0x4

    const/4 v4, 0x1

    add-int/lit8 v5, v0, -0x1

    add-int/lit8 v6, v5, 0x4

    invoke-static/range {p1 .. p1}, Landroid/appwidget/AppWidgetManager;->getInstance(Landroid/content/Context;)Landroid/appwidget/AppWidgetManager;

    move-result-object v7

    new-instance v0, Landroid/content/ComponentName;

    const-class v8, Lcom/miui/apppredict/widget/AppPredictWidget2x4;

    invoke-direct {v0, v2, v8}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    :try_start_0
    invoke-virtual {v7, v0}, Landroid/appwidget/AppWidgetManager;->getAppWidgetIds(Landroid/content/ComponentName;)[I

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    move-object v8, v0

    goto :goto_1

    :catch_0
    move-exception v0

    move-object v8, v0

    const-string v0, "getAppWidgetIds fail"

    invoke-static {v3, v0, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/4 v0, 0x0

    goto :goto_0

    :goto_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "AppPredictWidgetUtils::updateWidget::appWidgetIds = "

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v8}, Ljava/util/Arrays;->toString([I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v8, :cond_e

    array-length v0, v8

    if-nez v0, :cond_0

    goto/16 :goto_13

    :cond_0
    invoke-static {}, Lef/x;->v()Z

    move-result v0

    const-string v9, "widget"

    const-string v10, "enter_homepage_way"

    const/4 v11, 0x0

    if-nez v0, :cond_3

    invoke-static/range {p1 .. p1}, Lp3/i;->l(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1

    const v0, 0x7f0e0092

    goto :goto_2

    :cond_1
    const v0, 0x7f0e0091

    :goto_2
    new-instance v1, Landroid/widget/RemoteViews;

    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v3, v0}, Landroid/widget/RemoteViews;-><init>(Ljava/lang/String;I)V

    new-instance v0, Landroid/content/Intent;

    const-class v3, Lcom/miui/apppredict/activity/AppSuggestPrivacyActivity;

    invoke-direct {v0, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {v0, v10, v9}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const v3, 0x7f0b03c7

    const/high16 v4, 0x4000000

    invoke-static {v2, v11, v0, v4}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v0

    invoke-virtual {v1, v3, v0}, Landroid/widget/RemoteViews;->setOnClickPendingIntent(ILandroid/app/PendingIntent;)V

    array-length v0, v8

    :goto_3
    if-ge v11, v0, :cond_2

    aget v2, v8, v11

    invoke-virtual {v7, v2, v1}, Landroid/appwidget/AppWidgetManager;->updateAppWidget(ILandroid/widget/RemoteViews;)V

    add-int/lit8 v11, v11, 0x1

    goto :goto_3

    :cond_2
    return-void

    :cond_3
    const/16 v0, 0xb

    new-array v12, v0, [I

    fill-array-data v12, :array_0

    const/4 v0, 0x7

    new-array v13, v0, [I

    fill-array-data v13, :array_1

    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v14

    invoke-static {v2, v1}, Lp3/i;->c(Landroid/content/Context;I)I

    move-result v0

    invoke-static {}, Lx4/t;->r()Z

    move-result v15

    if-nez v15, :cond_4

    invoke-static {}, Lx4/t;->E()Z

    move-result v15

    if-eqz v15, :cond_5

    :cond_4
    invoke-static {}, Lcom/miui/securitycenter/Application;->A()Lcom/miui/securitycenter/Application;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v15, 0x7f07108f

    invoke-virtual {v0, v15}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    :cond_5
    move v15, v0

    invoke-static {v2, v15}, Lp3/i;->d(Landroid/content/Context;I)I

    move-result v4

    invoke-static {}, Lp3/i;->i()Ljava/util/Set;

    move-result-object v11

    invoke-static/range {p1 .. p1}, Lp3/i;->l(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_6

    const v0, 0x7f0e0090

    goto :goto_4

    :cond_6
    const v0, 0x7f0e008f

    :goto_4
    move/from16 v19, v4

    move-object/from16 v18, v12

    move v12, v0

    array-length v4, v8

    move/from16 v20, v15

    const/4 v15, 0x0

    :goto_5
    if-ge v15, v4, :cond_e

    move/from16 v21, v4

    aget v4, v8, v15

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v22, v8

    const-string v8, "AppPredictWidgetUtils::updateWidget::appWidgetId = "

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    move/from16 v23, v15

    invoke-static {v2, v4, v6, v11}, Lp3/f;->c(Landroid/content/Context;IILjava/util/Set;)Ljava/util/List;

    move-result-object v15

    invoke-interface {v15}, Ljava/util/List;->size()I

    move-result v0

    move-object/from16 v24, v11

    if-ge v0, v6, :cond_7

    new-instance v0, Landroid/widget/RemoteViews;

    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v0, v8, v12}, Landroid/widget/RemoteViews;-><init>(Ljava/lang/String;I)V

    new-instance v8, Landroid/content/Intent;

    const-class v11, Lcom/miui/apppredict/activity/AppClassificationActivity;

    invoke-direct {v8, v2, v11}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const/high16 v11, 0x10000000

    invoke-virtual {v8, v11}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    invoke-virtual {v8, v10, v9}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move/from16 v25, v6

    const/4 v6, 0x0

    const/high16 v11, 0xc000000

    invoke-static {v2, v6, v8, v11}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v8

    const v6, 0x7f0b0714

    invoke-virtual {v0, v6, v8}, Landroid/widget/RemoteViews;->setOnClickPendingIntent(ILandroid/app/PendingIntent;)V

    invoke-virtual {v7, v4, v0}, Landroid/appwidget/AppWidgetManager;->updateAppWidget(ILandroid/widget/RemoteViews;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "updateWidget:: appWidgetId = "

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " skip , size = "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v15}, Ljava/util/List;->size()I

    move-result v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move/from16 v26, v5

    move-object v11, v7

    move/from16 v27, v12

    move-object/from16 v31, v14

    move/from16 v4, v19

    move/from16 v8, v20

    const/4 v14, 0x1

    move-object v7, v3

    const/4 v3, 0x0

    goto/16 :goto_12

    :cond_7
    move/from16 v25, v6

    invoke-static/range {p1 .. p1}, Lmiuix/autodensity/AutoDensityConfig;->forceUpdateDensity(Landroid/content/Context;)V

    new-instance v6, Landroid/widget/RemoteViews;

    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v6, v0, v12}, Landroid/widget/RemoteViews;-><init>(Ljava/lang/String;I)V

    const/4 v11, 0x0

    :goto_6
    if-ge v11, v5, :cond_c

    invoke-interface {v15, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    move/from16 v26, v5

    invoke-static {v0}, Lp3/i;->h(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    move/from16 v27, v12

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v28, v7

    const-string v7, "AppPredictWidgetUtils::updateWidget::packageName = "

    invoke-virtual {v12, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v3, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :try_start_1
    invoke-static {v0}, Lp3/i;->m(Ljava/lang/String;)Z

    move-result v7
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_9

    if-eqz v7, :cond_8

    :try_start_2
    const-string v12, "getApplicationInfoAsUser"
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    move/from16 v29, v4

    const/4 v4, 0x3

    move-object/from16 v30, v15

    :try_start_3
    new-array v15, v4, [Ljava/lang/Class;

    const-class v31, Ljava/lang/String;

    const/16 v17, 0x0

    aput-object v31, v15, v17

    sget-object v31, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    const/16 v16, 0x1

    aput-object v31, v15, v16

    const/16 v32, 0x2

    aput-object v31, v15, v32

    new-array v4, v4, [Ljava/lang/Object;

    const/16 v17, 0x0

    aput-object v5, v4, v17

    invoke-static/range {v17 .. v17}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v31

    const/16 v16, 0x1

    aput-object v31, v4, v16

    const/16 v31, 0x3e7

    invoke-static/range {v31 .. v31}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v33

    aput-object v33, v4, v32

    invoke-static {v14, v12, v15, v4}, Lbh/f;->d(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/content/pm/ApplicationInfo;

    invoke-virtual {v14, v4}, Landroid/content/pm/PackageManager;->getApplicationIcon(Landroid/content/pm/ApplicationInfo;)Landroid/graphics/drawable/Drawable;

    move-result-object v12

    invoke-static/range {v31 .. v31}, Lx4/z1;->z(I)Landroid/os/UserHandle;

    move-result-object v15

    invoke-virtual {v14, v12, v15}, Landroid/content/pm/PackageManager;->getUserBadgedIcon(Landroid/graphics/drawable/Drawable;Landroid/os/UserHandle;)Landroid/graphics/drawable/Drawable;

    move-result-object v12

    goto :goto_7

    :catch_1
    move-exception v0

    move/from16 v29, v4

    move-object/from16 v30, v15

    goto/16 :goto_d

    :cond_8
    move/from16 v29, v4

    move-object/from16 v30, v15

    const/16 v4, 0x80

    invoke-virtual {v14, v0, v4}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v4

    invoke-virtual {v14, v0}, Landroid/content/pm/PackageManager;->getApplicationIcon(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v12

    :goto_7
    invoke-virtual {v4, v14}, Landroid/content/pm/PackageItemInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v15
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_8

    move-object/from16 v31, v14

    :try_start_4
    invoke-virtual {v12}, Landroid/graphics/drawable/Drawable;->getOpacity()I

    move-result v14
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_7

    move-object/from16 v32, v3

    const/4 v3, -0x1

    if-eq v14, v3, :cond_9

    :try_start_5
    sget-object v3, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    goto :goto_8

    :cond_9
    sget-object v3, Landroid/graphics/Bitmap$Config;->RGB_565:Landroid/graphics/Bitmap$Config;
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_6

    :goto_8
    move-object/from16 v16, v8

    const/4 v14, 0x1

    add-int/lit8 v8, v1, -0x1

    if-ge v11, v8, :cond_b

    :try_start_6
    aget v8, v13, v11

    invoke-virtual {v6, v8, v15}, Landroid/widget/RemoteViews;->setContentDescription(ILjava/lang/CharSequence;)V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_3

    move/from16 v8, v20

    :try_start_7
    invoke-static {v8, v8, v3}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v3

    const/4 v15, 0x0

    invoke-virtual {v12, v15, v15, v8, v8}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    iget v4, v4, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-static {v4}, Lx4/z1;->m(I)I

    move-result v4

    invoke-static {v2, v7, v5, v11, v4}, Lcom/miui/apppredict/service/AppPredictService;->r(Landroid/content/Context;ZLjava/lang/String;II)Landroid/content/Intent;

    move-result-object v4

    invoke-virtual {v4, v10, v9}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    const/high16 v5, 0xc000000

    invoke-static {v2, v0, v4, v5}, Landroid/app/PendingIntent;->getService(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v0

    if-nez v0, :cond_a

    move-object/from16 v5, v16

    move/from16 v4, v19

    goto :goto_b

    :cond_a
    aget v4, v13, v11

    invoke-virtual {v6, v4, v0}, Landroid/widget/RemoteViews;->setOnClickPendingIntent(ILandroid/app/PendingIntent;)V

    int-to-float v0, v8

    const/high16 v4, 0x42dc0000    # 110.0f

    mul-float/2addr v0, v4

    const/high16 v4, 0x42ea0000    # 117.0f

    div-float/2addr v0, v4

    float-to-int v0, v0

    aget v4, v13, v11

    const-string v5, "setWidth"

    invoke-virtual {v6, v4, v5, v0}, Landroid/widget/RemoteViews;->setInt(ILjava/lang/String;I)V

    aget v4, v13, v11

    const-string v5, "setHeight"

    invoke-virtual {v6, v4, v5, v0}, Landroid/widget/RemoteViews;->setInt(ILjava/lang/String;I)V
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_2

    move-object/from16 v5, v16

    move/from16 v4, v19

    goto :goto_a

    :catch_2
    move-exception v0

    goto :goto_9

    :catch_3
    move-exception v0

    move/from16 v8, v20

    :goto_9
    move-object/from16 v5, v16

    move/from16 v4, v19

    goto :goto_f

    :cond_b
    move/from16 v4, v19

    move/from16 v8, v20

    :try_start_8
    invoke-static {v4, v4, v3}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v3

    const/4 v5, 0x0

    invoke-virtual {v12, v5, v5, v4, v4}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_5

    move-object/from16 v5, v16

    :try_start_9
    invoke-virtual {v5, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :goto_a
    new-instance v0, Landroid/graphics/Canvas;

    invoke-direct {v0, v3}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    invoke-virtual {v12, v0}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    aget v0, v18, v11

    invoke-virtual {v6, v0, v3}, Landroid/widget/RemoteViews;->setImageViewBitmap(ILandroid/graphics/Bitmap;)V
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_4

    :goto_b
    move-object/from16 v7, v32

    goto :goto_10

    :catch_4
    move-exception v0

    goto :goto_f

    :catch_5
    move-exception v0

    move-object/from16 v5, v16

    goto :goto_f

    :catch_6
    move-exception v0

    goto :goto_c

    :catch_7
    move-exception v0

    move-object/from16 v32, v3

    :goto_c
    move-object v5, v8

    goto :goto_e

    :catch_8
    move-exception v0

    :goto_d
    move-object/from16 v32, v3

    move-object v5, v8

    move-object/from16 v31, v14

    goto :goto_e

    :catch_9
    move-exception v0

    move-object/from16 v32, v3

    move/from16 v29, v4

    move-object v5, v8

    move-object/from16 v31, v14

    move-object/from16 v30, v15

    :goto_e
    move/from16 v4, v19

    move/from16 v8, v20

    const/4 v14, 0x1

    :goto_f
    const-string v3, "Update widget error"

    move-object/from16 v7, v32

    invoke-static {v7, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_10
    add-int/lit8 v11, v11, 0x1

    move/from16 v19, v4

    move-object v3, v7

    move/from16 v20, v8

    move/from16 v12, v27

    move-object/from16 v7, v28

    move/from16 v4, v29

    move-object/from16 v15, v30

    move-object/from16 v14, v31

    move-object v8, v5

    move/from16 v5, v26

    goto/16 :goto_6

    :cond_c
    move/from16 v29, v4

    move/from16 v26, v5

    move-object/from16 v28, v7

    move-object v5, v8

    move/from16 v27, v12

    move-object/from16 v31, v14

    move-object/from16 v30, v15

    move/from16 v4, v19

    move/from16 v8, v20

    const/4 v14, 0x1

    move-object v7, v3

    const/4 v0, 0x0

    :goto_11
    const/4 v3, 0x4

    if-ge v0, v3, :cond_d

    add-int/lit8 v3, v25, -0x4

    add-int/2addr v3, v0

    move-object/from16 v11, v30

    invoke-interface {v11, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v5, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_11

    :cond_d
    move-object/from16 v11, v30

    const v0, 0x7f0b08e7

    const/4 v3, 0x0

    invoke-virtual {v6, v0, v3}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    const/16 v0, 0x8

    const v12, 0x7f0b0714

    invoke-virtual {v6, v12, v0}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    new-instance v0, Landroid/content/Intent;

    const-class v12, Lcom/miui/apppredict/activity/FolderSearchActivity;

    invoke-direct {v0, v2, v12}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const/high16 v12, 0x10000000

    invoke-virtual {v0, v12}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    const-string v12, "folder_package_names"

    invoke-virtual {v0, v12, v5}, Landroid/content/Intent;->putStringArrayListExtra(Ljava/lang/String;Ljava/util/ArrayList;)Landroid/content/Intent;

    move-object v15, v11

    check-cast v15, Ljava/util/ArrayList;

    const-string v5, "current_show_package_list"

    invoke-virtual {v0, v5, v15}, Landroid/content/Intent;->putStringArrayListExtra(Ljava/lang/String;Ljava/util/ArrayList;)Landroid/content/Intent;

    invoke-virtual {v0, v10, v9}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move/from16 v5, v29

    const/high16 v11, 0xc000000

    invoke-static {v2, v5, v0, v11}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v0

    const v11, 0x7f0b08e6

    invoke-virtual {v6, v11, v0}, Landroid/widget/RemoteViews;->setOnClickPendingIntent(ILandroid/app/PendingIntent;)V

    move-object/from16 v11, v28

    invoke-virtual {v11, v5, v6}, Landroid/appwidget/AppWidgetManager;->updateAppWidget(ILandroid/widget/RemoteViews;)V

    :goto_12
    add-int/lit8 v15, v23, 0x1

    move/from16 v19, v4

    move-object v3, v7

    move/from16 v20, v8

    move-object v7, v11

    move/from16 v4, v21

    move-object/from16 v8, v22

    move-object/from16 v11, v24

    move/from16 v6, v25

    move/from16 v5, v26

    move/from16 v12, v27

    move-object/from16 v14, v31

    goto/16 :goto_5

    :cond_e
    :goto_13
    return-void

    nop

    :array_0
    .array-data 4
        0x7f0b0507
        0x7f0b050b
        0x7f0b050d
        0x7f0b050f
        0x7f0b0511
        0x7f0b0513
        0x7f0b0515
        0x7f0b0517
        0x7f0b0518
        0x7f0b0508
        0x7f0b0509
    .end array-data

    :array_1
    .array-data 4
        0x7f0b050a
        0x7f0b050c
        0x7f0b050e
        0x7f0b0510
        0x7f0b0512
        0x7f0b0514
        0x7f0b0516
    .end array-data
.end method

.method public static o(Ljava/lang/String;)V
    .locals 4

    invoke-static {}, Lcom/miui/securitycenter/Application;->A()Lcom/miui/securitycenter/Application;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/miui/apppredict/db/WidgetBlackListContentProvider;->e:Landroid/net/Uri;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    aput-object p0, v2, v3

    const-string p0, ""

    invoke-virtual {v0, v1, p0, v2}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    return-void
.end method

.method public static p(Landroid/content/Context;Ljava/lang/String;)V
    .locals 2

    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    invoke-static {p1}, Lp3/i;->m(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-static {p1}, Lp3/i;->h(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    :cond_0
    invoke-virtual {v0, p1}, Landroid/content/pm/PackageManager;->getLaunchIntentForPackage(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object p1

    if-nez p1, :cond_1

    return-void

    :cond_1
    const/high16 v0, 0x10000000

    invoke-virtual {p1, v0}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    if-eqz v1, :cond_2

    const/16 v0, 0x3e7

    goto :goto_0

    :cond_2
    invoke-static {}, Lx4/z1;->y()I

    move-result v0

    :goto_0
    invoke-static {v0}, Lx4/z1;->z(I)Landroid/os/UserHandle;

    move-result-object v0

    invoke-static {p0, p1, v0}, Lx4/v;->u(Landroid/content/Context;Landroid/content/Intent;Landroid/os/UserHandle;)V

    return-void
.end method

.method public static q(Landroid/content/Context;I)V
    .locals 2

    const-string v0, "AppPredictWidget"

    const-string v1, "start update widget"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lp3/o;->f()Lp3/o;

    move-result-object v0

    invoke-virtual {v0}, Lp3/o;->e()Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lp3/h;

    invoke-direct {v1, p1, p0}, Lp3/h;-><init>(ILandroid/content/Context;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method
