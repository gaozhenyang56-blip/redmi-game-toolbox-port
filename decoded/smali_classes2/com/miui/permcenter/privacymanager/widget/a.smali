.class public Lcom/miui/permcenter/privacymanager/widget/a;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method static synthetic a(Landroid/content/Context;Lcom/miui/permcenter/privacymanager/widget/BehaviorWidget$a;[I)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/miui/permcenter/privacymanager/widget/a;->g(Landroid/content/Context;Lcom/miui/permcenter/privacymanager/widget/BehaviorWidget$a;[I)V

    return-void
.end method

.method private static b(Landroid/content/res/Resources;Ljava/lang/String;I)Landroid/text/SpannableString;
    .locals 6

    new-instance v0, Landroid/text/SpannableString;

    invoke-direct {v0, p1}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    const v1, 0x7f071d5b

    invoke-virtual {p0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    new-instance v2, Landroid/text/style/AbsoluteSizeSpan;

    invoke-direct {v2, v1}, Landroid/text/style/AbsoluteSizeSpan;-><init>(I)V

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v1

    const/4 v3, 0x1

    new-array v4, v3, [Ljava/lang/Object;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    const/4 v5, 0x0

    aput-object p2, v4, v5

    const-string p2, "%d"

    invoke-static {v1, p2, v4}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result p2

    add-int/2addr p2, v1

    const/16 v4, 0x12

    invoke-virtual {v0, v2, v1, p2, v4}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    new-instance v2, Landroid/text/style/ForegroundColorSpan;

    const v4, 0x7f060191

    invoke-virtual {p0, v4}, Landroid/content/res/Resources;->getColor(I)I

    move-result p0

    invoke-direct {v2, p0}, Landroid/text/style/ForegroundColorSpan;-><init>(I)V

    const/16 p0, 0x21

    invoke-virtual {v0, v2, v1, p2, p0}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    new-instance v1, Landroid/text/style/StyleSpan;

    invoke-direct {v1, v3}, Landroid/text/style/StyleSpan;-><init>(I)V

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p1

    invoke-virtual {v0, v1, p2, p1, p0}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    return-object v0
.end method

.method public static c(Landroid/content/Context;)Z
    .locals 1

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object p0

    iget p0, p0, Landroid/content/res/Configuration;->uiMode:I

    and-int/lit8 p0, p0, 0x30

    const/16 v0, 0x20

    if-ne p0, v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static d(Landroid/content/Context;)Z
    .locals 0

    invoke-static {p0}, Lx4/a1;->a(Landroid/content/Context;)Z

    move-result p0

    return p0
.end method

.method public static e(Landroid/content/Context;Ljava/lang/String;)V
    .locals 3

    const-string v0, "com.miui.personalassistant"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_0

    return-void

    :cond_0
    invoke-static {p0}, Lcom/miui/permcenter/privacymanager/widget/a;->d(Landroid/content/Context;)Z

    move-result p1

    const/4 v0, 0x1

    if-eqz p1, :cond_1

    move p1, v0

    goto :goto_0

    :cond_1
    const/4 p1, 0x2

    :goto_0
    new-instance v1, Landroid/content/ComponentName;

    const-class v2, Lcom/miui/permcenter/privacymanager/widget/BehaviorWidget;

    invoke-direct {v1, p0, v2}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p0

    invoke-virtual {p0, v1}, Landroid/content/pm/PackageManager;->getComponentEnabledSetting(Landroid/content/ComponentName;)I

    move-result v2

    if-eq v2, p1, :cond_2

    invoke-virtual {p0, v1, p1, v0}, Landroid/content/pm/PackageManager;->setComponentEnabledSetting(Landroid/content/ComponentName;II)V

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "setBehaviorWidgetEnableOnReceive new state "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "BehaviorWidgetUtils"

    invoke-static {p1, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    return-void
.end method

.method public static f(Landroid/content/Context;[I)V
    .locals 1

    new-instance v0, Lcom/miui/permcenter/privacymanager/widget/a$a;

    invoke-direct {v0, p0, p1}, Lcom/miui/permcenter/privacymanager/widget/a$a;-><init>(Landroid/content/Context;[I)V

    invoke-static {v0}, Lcom/miui/common/base/asyn/a;->a(Ljava/lang/Runnable;)V

    return-void
.end method

.method private static g(Landroid/content/Context;Lcom/miui/permcenter/privacymanager/widget/BehaviorWidget$a;[I)V
    .locals 17

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    const-string v4, "setTextColor"

    const-string v5, "BehaviorWidgetUtils"

    invoke-static/range {p0 .. p0}, Landroid/appwidget/AppWidgetManager;->getInstance(Landroid/content/Context;)Landroid/appwidget/AppWidgetManager;

    move-result-object v6

    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v7, "miui_home_screen_cells_size"

    invoke-static {v0, v7}, Landroid/provider/MiuiSettings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    const/4 v9, 0x0

    if-nez v7, :cond_0

    const-string v7, "5x6"

    invoke-virtual {v7, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v7, 0x1

    goto :goto_0

    :cond_0
    move v7, v9

    :goto_0
    array-length v10, v3

    move v11, v9

    :goto_1
    if-ge v11, v10, :cond_a

    aget v12, v3, v11

    new-instance v0, Landroid/widget/RemoteViews;

    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v13

    const v14, 0x7f0e0070

    invoke-direct {v0, v13, v14}, Landroid/widget/RemoteViews;-><init>(Ljava/lang/String;I)V

    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v13

    const v14, 0x7f08036c

    const v15, 0x7f0b013d

    const-string v8, "setImageResource"

    invoke-virtual {v0, v15, v8, v14}, Landroid/widget/RemoteViews;->setInt(ILjava/lang/String;I)V

    invoke-static/range {p0 .. p0}, Lcom/miui/permcenter/privacymanager/widget/a;->c(Landroid/content/Context;)Z

    move-result v8

    if-eqz v8, :cond_1

    const v8, 0x7f06006b

    goto :goto_2

    :cond_1
    const v8, 0x7f06006c

    :goto_2
    const/4 v14, 0x0

    invoke-virtual {v13, v8, v14}, Landroid/content/res/Resources;->getColor(ILandroid/content/res/Resources$Theme;)I

    move-result v8

    const-string v14, "setColorFilter"

    invoke-virtual {v0, v15, v14, v8}, Landroid/widget/RemoteViews;->setInt(ILjava/lang/String;I)V

    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v8

    :try_start_0
    iget-object v14, v2, Lcom/miui/permcenter/privacymanager/widget/BehaviorWidget$a;->b:Ljava/util/ArrayList;

    invoke-virtual {v14}, Ljava/util/ArrayList;->size()I

    move-result v14

    if-lez v14, :cond_2

    iget-object v15, v2, Lcom/miui/permcenter/privacymanager/widget/BehaviorWidget$a;->b:Ljava/util/ArrayList;

    invoke-virtual {v15, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Llc/a;

    iget-object v15, v15, Llc/a;->b:Ljava/lang/String;

    invoke-virtual {v8, v15, v9}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v15

    invoke-virtual {v15, v8}, Landroid/content/pm/PackageItemInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v8

    const/4 v15, 0x1

    if-le v14, v15, :cond_3

    const/4 v15, 0x2

    new-array v15, v15, [Ljava/lang/Object;

    aput-object v8, v15, v9

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    const/16 v16, 0x1

    aput-object v8, v15, v16

    const v8, 0x7f10001c

    invoke-virtual {v13, v8, v14, v15}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    goto :goto_3

    :cond_2
    const-string v8, "-"

    :cond_3
    :goto_3
    const v14, 0x7f0b00fd

    invoke-virtual {v0, v14, v8}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    invoke-virtual {v13}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v8

    iget-object v8, v8, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    invoke-virtual {v8}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v8
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_6

    const-string v15, "bo"

    if-eqz v7, :cond_5

    const v9, 0x7f071dcf

    :try_start_1
    invoke-virtual {v13, v9}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v9
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_5

    int-to-float v9, v9

    const/4 v3, 0x0

    :try_start_2
    invoke-virtual {v0, v14, v3, v9}, Landroid/widget/RemoteViews;->setTextViewTextSize(IIF)V

    invoke-virtual {v15, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_4

    const v8, 0x7f071dda

    invoke-virtual {v13, v8}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v8

    int-to-float v8, v8

    const v9, 0x7f0b08a6

    invoke-virtual {v0, v9, v3, v8}, Landroid/widget/RemoteViews;->setTextViewTextSize(IIF)V

    move v8, v9

    goto :goto_5

    :cond_4
    const v8, 0x7f071df1

    const v9, 0x7f0b08a6

    invoke-virtual {v13, v8}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v8

    int-to-float v8, v8

    invoke-virtual {v0, v9, v3, v8}, Landroid/widget/RemoteViews;->setTextViewTextSize(IIF)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_4

    :catch_0
    move-exception v0

    move v13, v3

    goto/16 :goto_9

    :cond_5
    :try_start_3
    const-string v3, "zh"

    invoke-virtual {v3, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_6

    const v3, 0x7f071df1

    invoke-virtual {v13, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_5

    int-to-float v3, v3

    const/4 v8, 0x0

    :try_start_4
    invoke-virtual {v0, v14, v8, v3}, Landroid/widget/RemoteViews;->setTextViewTextSize(IIF)V

    const v3, 0x7f071e16

    invoke-virtual {v13, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    int-to-float v3, v3

    const v9, 0x7f0b08a6

    invoke-virtual {v0, v9, v8, v3}, Landroid/widget/RemoteViews;->setTextViewTextSize(IIF)V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1

    :goto_4
    const v8, 0x7f0b08a6

    goto :goto_5

    :catch_1
    move-exception v0

    move v13, v8

    goto/16 :goto_9

    :cond_6
    const v3, 0x7f071dda

    :try_start_5
    invoke-virtual {v13, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_5

    int-to-float v3, v3

    const/4 v9, 0x0

    :try_start_6
    invoke-virtual {v0, v14, v9, v3}, Landroid/widget/RemoteViews;->setTextViewTextSize(IIF)V

    invoke-virtual {v15, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_7

    const v3, 0x7f071de4

    invoke-virtual {v13, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    int-to-float v3, v3

    const v8, 0x7f0b08a6

    invoke-virtual {v0, v8, v9, v3}, Landroid/widget/RemoteViews;->setTextViewTextSize(IIF)V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_6

    goto :goto_4

    :cond_7
    const v3, 0x7f071e0c

    :try_start_7
    invoke-virtual {v13, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_5

    int-to-float v3, v3

    const v8, 0x7f0b08a6

    const/4 v9, 0x0

    :try_start_8
    invoke-virtual {v0, v8, v9, v3}, Landroid/widget/RemoteViews;->setTextViewTextSize(IIF)V
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_6

    :goto_5
    :try_start_9
    iget-wide v14, v2, Lcom/miui/permcenter/privacymanager/widget/BehaviorWidget$a;->a:J

    invoke-static {v14, v15}, Lmc/c;->h(J)I

    move-result v9

    invoke-virtual {v1, v9}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v0, v8, v9}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    invoke-static/range {p0 .. p0}, Lcom/miui/permcenter/privacymanager/widget/a;->c(Landroid/content/Context;)Z

    move-result v8

    if-eqz v8, :cond_8

    const v8, 0x7f060054

    goto :goto_6

    :cond_8
    const v8, 0x7f060055

    :goto_6
    const/4 v9, 0x0

    invoke-virtual {v13, v8, v9}, Landroid/content/res/Resources;->getColor(ILandroid/content/res/Resources$Theme;)I

    move-result v8

    const v3, 0x7f0b00fd

    invoke-virtual {v0, v3, v4, v8}, Landroid/widget/RemoteViews;->setInt(ILjava/lang/String;I)V

    invoke-static/range {p0 .. p0}, Lcom/miui/permcenter/privacymanager/widget/a;->c(Landroid/content/Context;)Z

    move-result v3

    if-eqz v3, :cond_9

    const v3, 0x7f060058

    goto :goto_7

    :cond_9
    const v3, 0x7f060059

    :goto_7
    const/4 v8, 0x0

    invoke-virtual {v13, v3, v8}, Landroid/content/res/Resources;->getColor(ILandroid/content/res/Resources$Theme;)I

    move-result v3

    const v8, 0x7f0b08a6

    invoke-virtual {v0, v8, v4, v3}, Landroid/widget/RemoteViews;->setInt(ILjava/lang/String;I)V

    const v3, 0x7f10001d

    iget v8, v2, Lcom/miui/permcenter/privacymanager/widget/BehaviorWidget$a;->c:I
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_5

    const/4 v9, 0x1

    :try_start_a
    new-array v14, v9, [Ljava/lang/Object;

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_4

    const/16 v16, 0x0

    :try_start_b
    aput-object v15, v14, v16
    :try_end_b
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_b} :catch_3

    :try_start_c
    invoke-virtual {v13, v3, v8, v14}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    iget v8, v2, Lcom/miui/permcenter/privacymanager/widget/BehaviorWidget$a;->c:I

    invoke-static {v13, v3, v8}, Lcom/miui/permcenter/privacymanager/widget/a;->b(Landroid/content/res/Resources;Ljava/lang/String;I)Landroid/text/SpannableString;

    move-result-object v3

    const v8, 0x7f0b02b3

    invoke-virtual {v0, v8, v3}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    new-instance v3, Landroid/content/Intent;

    invoke-direct {v3}, Landroid/content/Intent;-><init>()V

    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v8

    const-string v13, "com.miui.permcenter.privacycenter.usage.PermissionUsageRecordActivity"

    invoke-virtual {v3, v8, v13}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const/high16 v8, 0x10000000

    invoke-virtual {v3, v8}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;
    :try_end_c
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_c} :catch_4

    const/high16 v8, 0xc000000

    const/4 v13, 0x0

    :try_start_d
    invoke-static {v1, v13, v3, v8}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v3

    const v8, 0x7f0b0169

    invoke-virtual {v0, v8, v3}, Landroid/widget/RemoteViews;->setOnClickPendingIntent(ILandroid/app/PendingIntent;)V

    invoke-virtual {v6, v12, v0}, Landroid/appwidget/AppWidgetManager;->updateAppWidget(ILandroid/widget/RemoteViews;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, " updateWidget appWdigetId : "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v5, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_d
    .catch Ljava/lang/Exception; {:try_start_d .. :try_end_d} :catch_2

    goto :goto_b

    :catch_2
    move-exception v0

    goto :goto_a

    :catch_3
    move-exception v0

    move/from16 v13, v16

    goto :goto_a

    :catch_4
    move-exception v0

    goto :goto_8

    :catch_5
    move-exception v0

    const/4 v9, 0x1

    :goto_8
    const/4 v13, 0x0

    goto :goto_a

    :catch_6
    move-exception v0

    move v13, v9

    :goto_9
    const/4 v9, 0x1

    :goto_a
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "updateWdigetRemoteView failed "

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v5, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_b
    add-int/lit8 v11, v11, 0x1

    move-object/from16 v3, p2

    move v9, v13

    goto/16 :goto_1

    :cond_a
    return-void
.end method

.method public static h(Landroid/content/Context;)V
    .locals 4

    const-string v0, "BehaviorWidgetUtils"

    invoke-static {p0}, Landroid/appwidget/AppWidgetManager;->getInstance(Landroid/content/Context;)Landroid/appwidget/AppWidgetManager;

    move-result-object v1

    new-instance v2, Landroid/content/ComponentName;

    const-class v3, Lcom/miui/permcenter/privacymanager/widget/BehaviorWidget;

    invoke-direct {v2, p0, v3}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const/4 v3, 0x0

    new-array v3, v3, [I

    :try_start_0
    invoke-virtual {v1, v2}, Landroid/appwidget/AppWidgetManager;->getAppWidgetIds(Landroid/content/ComponentName;)[I

    move-result-object v3
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const-string v1, "get appWidgetIds failed"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    if-eqz v3, :cond_1

    array-length v1, v3

    if-nez v1, :cond_0

    goto :goto_1

    :cond_0
    const-string v1, "update BehaviorWidget when uiMode changed"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {p0, v3}, Lcom/miui/permcenter/privacymanager/widget/a;->f(Landroid/content/Context;[I)V

    return-void

    :cond_1
    :goto_1
    const-string p0, "appWidgetIds is null return"

    invoke-static {v0, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method
