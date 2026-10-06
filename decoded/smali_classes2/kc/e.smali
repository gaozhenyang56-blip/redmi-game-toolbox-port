.class public Lkc/e;
.super Lkc/c;
.source "SourceFile"


# instance fields
.field private volatile j:I

.field private final k:Landroid/app/NotificationManager;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 3

    invoke-direct {p0, p1}, Lkc/c;-><init>(Landroid/content/Context;)V

    const/4 v0, 0x0

    iput v0, p0, Lkc/e;->j:I

    iget-object v0, p0, Lkc/c;->e:Ljava/util/Set;

    const-wide/16 v1, 0x20

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lkc/c;->e:Ljava/util/Set;

    const-wide/32 v1, 0x20000

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lkc/c;->e:Ljava/util/Set;

    const-wide/16 v1, 0x1000

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    const/4 v0, 0x1

    iput-boolean v0, p0, Lkc/c;->d:Z

    const-class v0, Landroid/app/NotificationManager;

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/app/NotificationManager;

    iput-object p1, p0, Lkc/e;->k:Landroid/app/NotificationManager;

    return-void
.end method

.method private k(Z)V
    .locals 12

    const-string v0, "#CC000000"

    const-string v1, "#80FFFFFF"

    const-string v2, "#FFFFFF"

    const-string v3, "MIUISafety-Flares"

    new-instance v4, Lorg/json/JSONObject;

    invoke-direct {v4}, Lorg/json/JSONObject;-><init>()V

    :try_start_0
    const-string v5, "protocol"

    const/4 v6, 0x1

    invoke-virtual {v4, v5, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v5, "scene"

    const-string v7, "templateBaseScene"

    invoke-virtual {v4, v5, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v5, "title"

    iget-object v7, p0, Lkc/c;->a:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    if-eqz p1, :cond_0

    const v8, 0x7f1214fd

    goto :goto_0

    :cond_0
    const v8, 0x7f1214fe

    :goto_0
    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v5, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v5, "colorTitle"

    invoke-virtual {v4, v5, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v5, "colorTitleDark"

    invoke-virtual {v4, v5, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v2, "content"

    iget-object v5, p0, Lkc/c;->a:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    if-eqz p1, :cond_1

    const v7, 0x7f1214fc

    goto :goto_1

    :cond_1
    const v7, 0x7f1214fb

    :goto_1
    invoke-virtual {v5, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v2, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v2, "colorContent"

    invoke-virtual {v4, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v2, "colorContentDark"

    invoke-virtual {v4, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "colorBg"

    invoke-virtual {v4, v1, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "colorBgDark"

    invoke-virtual {v4, v1, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v0, "updatable"

    invoke-virtual {v4, v0, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    iget-object v0, p0, Lkc/c;->a:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f120f27

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lkc/e;->k:Landroid/app/NotificationManager;

    const/4 v2, 0x5

    const-string v5, "com.miui.securitycenter"

    invoke-static {v1, v5, v0, v2}, Lx4/e1;->b(Landroid/app/NotificationManager;Ljava/lang/String;Ljava/lang/String;I)V

    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.miui.action.open_screen_share_tip"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lkc/c;->a:Landroid/content/Context;

    const/4 v2, 0x0

    const/high16 v7, 0xc000000

    invoke-static {}, Lx4/z1;->d()Landroid/os/UserHandle;

    move-result-object v8

    invoke-static {v1, v2, v0, v7, v8}, Lx4/v;->h(Landroid/content/Context;ILandroid/content/Intent;ILandroid/os/UserHandle;)Landroid/app/PendingIntent;

    move-result-object v0

    new-instance v1, Landroidx/core/app/NotificationCompat$c;

    iget-object v2, p0, Lkc/c;->a:Landroid/content/Context;

    invoke-direct {v1, v2, v5}, Landroidx/core/app/NotificationCompat$c;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    const v2, 0x7f08037a

    invoke-virtual {v1, v2}, Landroidx/core/app/NotificationCompat$c;->y(I)Landroidx/core/app/NotificationCompat$c;

    invoke-virtual {v1, v0}, Landroidx/core/app/NotificationCompat$c;->k(Landroid/app/PendingIntent;)Landroidx/core/app/NotificationCompat$c;

    invoke-virtual {v1, v6}, Landroidx/core/app/NotificationCompat$c;->t(Z)Landroidx/core/app/NotificationCompat$c;

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    invoke-virtual {v4}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v4, "miui.focus.param"

    invoke-virtual {v0, v4, v2}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    iget-object v4, p0, Lkc/c;->a:Landroid/content/Context;

    if-eqz p1, :cond_2

    const v5, 0x7f080ed6

    goto :goto_2

    :cond_2
    const v5, 0x7f080ed7

    :goto_2
    invoke-static {v4, v5}, Landroid/graphics/drawable/Icon;->createWithResource(Landroid/content/Context;I)Landroid/graphics/drawable/Icon;

    move-result-object v4

    const-string v5, "miui.focus.pic_large"

    invoke-virtual {v2, v5, v4}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    const-string v4, "miui.focus.pics"

    invoke-virtual {v0, v4, v2}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    iget-object v2, p0, Lkc/c;->a:Landroid/content/Context;

    if-eqz p1, :cond_3

    const v4, 0x7f080f19

    goto :goto_3

    :cond_3
    const v4, 0x7f080f1c

    :goto_3
    invoke-static {v2, v4}, Landroid/graphics/drawable/Icon;->createWithResource(Landroid/content/Context;I)Landroid/graphics/drawable/Icon;

    move-result-object v2

    const-string v4, "miui.appIcon"

    invoke-virtual {v0, v4, v2}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    new-instance v2, Landroid/widget/RemoteViews;

    iget-object v4, p0, Lkc/c;->a:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v4

    const v5, 0x7f0e0474

    invoke-direct {v2, v4, v5}, Landroid/widget/RemoteViews;-><init>(Ljava/lang/String;I)V

    iget-object v4, p0, Lkc/c;->a:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v7, 0x7f1214ff

    const v8, 0x7f121500

    if-eqz p1, :cond_4

    move v9, v7

    goto :goto_4

    :cond_4
    move v9, v8

    :goto_4
    invoke-virtual {v4, v9}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    const v9, 0x7f0b0901

    invoke-virtual {v2, v9, v4}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    const v4, 0x41573333    # 13.45f

    invoke-virtual {v2, v9, v6, v4}, Landroid/widget/RemoteViews;->setTextViewTextSize(IIF)V

    iget-object v10, p0, Lkc/c;->a:Landroid/content/Context;

    invoke-virtual {v10}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    const v11, 0x7f060190

    invoke-virtual {v10, v11}, Landroid/content/res/Resources;->getColor(I)I

    move-result v10

    invoke-virtual {v2, v9, v10}, Landroid/widget/RemoteViews;->setTextColor(II)V

    new-instance v10, Landroid/widget/RemoteViews;

    iget-object v11, p0, Lkc/c;->a:Landroid/content/Context;

    invoke-virtual {v11}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v11

    invoke-direct {v10, v11, v5}, Landroid/widget/RemoteViews;-><init>(Ljava/lang/String;I)V

    iget-object v5, p0, Lkc/c;->a:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    if-eqz p1, :cond_5

    goto :goto_5

    :cond_5
    move v7, v8

    :goto_5
    invoke-virtual {v5, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v10, v9, v5}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    invoke-virtual {v10, v9, v6, v4}, Landroid/widget/RemoteViews;->setTextViewTextSize(IIF)V

    iget-object v4, p0, Lkc/c;->a:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f06021c

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getColor(I)I

    move-result v4

    invoke-virtual {v10, v9, v4}, Landroid/widget/RemoteViews;->setTextColor(II)V

    const-string v4, "miui.focus.rvBar"

    invoke-virtual {v0, v4, v2}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    const-string v2, "miui.focus.rvBarNight"

    invoke-virtual {v0, v2, v10}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    invoke-virtual {v1, v0}, Landroidx/core/app/NotificationCompat$c;->c(Landroid/os/Bundle;)Landroidx/core/app/NotificationCompat$c;

    iget-object v0, p0, Lkc/e;->k:Landroid/app/NotificationManager;

    invoke-virtual {v1}, Landroidx/core/app/NotificationCompat$c;->d()Landroid/app/Notification;

    move-result-object v1

    invoke-virtual {v0, v6, v1}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "send FocusNotification for "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v3, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :catch_0
    move-exception p1

    const-string v0, "sendFocusNotification: "

    invoke-static {v3, v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return-void
.end method


# virtual methods
.method public a(I)V
    .locals 0

    iput p1, p0, Lkc/e;->j:I

    return-void
.end method

.method public b(J)V
    .locals 2

    const-wide/16 v0, 0x1

    cmp-long p1, p1, v0

    if-nez p1, :cond_0

    iget-object p1, p0, Lkc/e;->k:Landroid/app/NotificationManager;

    const/4 p2, 0x1

    invoke-virtual {p1, p2}, Landroid/app/NotificationManager;->cancel(I)V

    const-string p1, "MIUISafety-Flares"

    const-string p2, "cancel FocusNotification"

    invoke-static {p1, p2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void
.end method

.method public i(ILcom/miui/permcenter/privacymanager/StatusBar;)V
    .locals 28

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    const-class v2, Ljava/lang/String;

    invoke-static {}, Lx4/z1;->e()I

    move-result v3

    invoke-static {}, Lx4/z1;->y()I

    move-result v4

    if-eq v3, v4, :cond_0

    return-void

    :cond_0
    const/4 v3, 0x4

    new-array v4, v3, [I

    fill-array-data v4, :array_0

    const-string v6, "MIUISafety-Flares"

    const/4 v9, 0x1

    const/4 v10, 0x0

    move/from16 v11, p1

    if-ne v11, v9, :cond_14

    if-eqz v1, :cond_14

    invoke-virtual/range {p2 .. p2}, Lcom/miui/permcenter/privacymanager/StatusBar;->hasPrivacyAccess()Z

    move-result v11

    if-eqz v11, :cond_14

    new-instance v11, Landroid/content/Intent;

    const-string v12, "com.miui.action.open_status_bar"

    invoke-direct {v11, v12}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    iget-object v12, v0, Lkc/c;->a:Landroid/content/Context;

    const/high16 v13, 0xc000000

    invoke-static {}, Lx4/z1;->d()Landroid/os/UserHandle;

    move-result-object v14

    invoke-static {v12, v10, v11, v13, v14}, Lx4/v;->h(Landroid/content/Context;ILandroid/content/Intent;ILandroid/os/UserHandle;)Landroid/app/PendingIntent;

    move-result-object v11

    invoke-virtual/range {p2 .. p2}, Lcom/miui/permcenter/privacymanager/StatusBar;->getActivePerm()J

    move-result-wide v12

    invoke-virtual/range {p2 .. p2}, Lcom/miui/permcenter/privacymanager/StatusBar;->isTerminal()Z

    move-result v14

    if-nez v14, :cond_1

    const-wide/16 v14, -0x2

    and-long/2addr v12, v14

    :cond_1
    new-instance v14, Landroid/widget/RemoteViews;

    iget-object v15, v0, Lkc/c;->a:Landroid/content/Context;

    invoke-virtual {v15}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v15

    const v3, 0x7f0e0471

    invoke-direct {v14, v15, v3}, Landroid/widget/RemoteViews;-><init>(Ljava/lang/String;I)V

    const-wide/16 v16, 0x1

    and-long v16, v12, v16

    const-wide/16 v18, 0x0

    cmp-long v3, v16, v18

    if-eqz v3, :cond_2

    move v5, v10

    goto :goto_0

    :cond_2
    const/16 v5, 0x8

    :goto_0
    const v15, 0x7f0b041a

    invoke-virtual {v14, v15, v5}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    const-wide/16 v20, 0x1000

    and-long v22, v12, v20

    cmp-long v5, v22, v18

    if-eqz v5, :cond_3

    move v7, v10

    goto :goto_1

    :cond_3
    const/16 v7, 0x8

    :goto_1
    const v8, 0x7f0b0417

    invoke-virtual {v14, v8, v7}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    const-wide/32 v23, 0x20000

    and-long v23, v12, v23

    cmp-long v7, v23, v18

    if-eqz v7, :cond_4

    goto :goto_2

    :cond_4
    const/16 v10, 0x8

    :goto_2
    const v8, 0x7f0b0419

    invoke-virtual {v14, v8, v10}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    const-wide/16 v25, 0x20

    and-long v25, v12, v25

    cmp-long v10, v25, v18

    if-eqz v10, :cond_5

    const/4 v8, 0x0

    goto :goto_3

    :cond_5
    const/16 v8, 0x8

    :goto_3
    const v15, 0x7f0b0418

    invoke-virtual {v14, v15, v8}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    invoke-virtual/range {p2 .. p2}, Lcom/miui/permcenter/privacymanager/StatusBar;->isTerminal()Z

    move-result v8

    if-eqz v8, :cond_6

    iget-object v8, v1, Lcom/miui/permcenter/privacymanager/StatusBar;->pkgName:Ljava/lang/String;

    if-eqz v8, :cond_6

    iget-object v15, v0, Lkc/c;->a:Landroid/content/Context;

    invoke-static {v15, v8}, Lz4/b;->d(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    goto :goto_4

    :cond_6
    iget-object v8, v1, Lcom/miui/permcenter/privacymanager/StatusBar;->pkgName:Ljava/lang/String;

    invoke-static {v8}, Lkc/c;->f(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_7

    iget-object v8, v0, Lkc/c;->a:Landroid/content/Context;

    invoke-static {v8}, Lkc/c;->e(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v8

    goto :goto_4

    :cond_7
    iget-object v8, v0, Lkc/c;->a:Landroid/content/Context;

    iget-object v15, v1, Lcom/miui/permcenter/privacymanager/StatusBar;->pkgName:Ljava/lang/String;

    invoke-static {v8, v15}, Lcom/miui/luckymoney/utils/PackageUtil;->getAppName(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    :goto_4
    const v15, 0x7f0b0416

    invoke-virtual {v14, v15, v8}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    new-instance v15, Landroid/os/Bundle;

    invoke-direct {v15}, Landroid/os/Bundle;-><init>()V

    move-object/from16 v26, v2

    const-string v2, "key_status_bar_priority"

    invoke-virtual {v15, v2, v9}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    const-string v2, "key_status_bar_mini_state"

    invoke-virtual {v15, v2, v14}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    iget-object v2, v0, Lkc/c;->a:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v14, 0x7f060cb2

    invoke-virtual {v2, v14}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    const-string v14, "key_dot_color"

    invoke-virtual {v15, v14, v2}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    new-instance v2, Landroid/widget/RemoteViews;

    iget-object v14, v0, Lkc/c;->a:Landroid/content/Context;

    invoke-virtual {v14}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v14

    const v9, 0x7f0e0470

    invoke-direct {v2, v14, v9}, Landroid/widget/RemoteViews;-><init>(Ljava/lang/String;I)V

    if-eqz v3, :cond_8

    const/4 v9, 0x0

    goto :goto_5

    :cond_8
    const/16 v9, 0x8

    :goto_5
    const v14, 0x7f0b041a

    invoke-virtual {v2, v14, v9}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    if-eqz v5, :cond_9

    const/4 v9, 0x0

    goto :goto_6

    :cond_9
    const/16 v9, 0x8

    :goto_6
    const v14, 0x7f0b0417

    invoke-virtual {v2, v14, v9}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    if-eqz v7, :cond_a

    const/4 v9, 0x0

    goto :goto_7

    :cond_a
    const/16 v9, 0x8

    :goto_7
    const v14, 0x7f0b0419

    invoke-virtual {v2, v14, v9}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    if-eqz v10, :cond_b

    const/4 v9, 0x0

    goto :goto_8

    :cond_b
    const/16 v9, 0x8

    :goto_8
    const v14, 0x7f0b0418

    invoke-virtual {v2, v14, v9}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    const-string v9, "key_status_bar_home_state"

    invoke-virtual {v15, v9, v2}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    invoke-virtual {v0, v12, v13}, Lkc/c;->d(J)J

    move-result-wide v12

    invoke-static {v12, v13}, Lkc/c;->h(J)I

    move-result v2

    cmp-long v9, v12, v20

    if-nez v9, :cond_c

    const/4 v9, 0x1

    goto :goto_9

    :cond_c
    const/4 v9, 0x0

    :goto_9
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "setStatus hideLevel:"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v13, v0, Lkc/e;->j:I

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v13, ",showLevel:"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v6, v12}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    iget v12, v0, Lkc/e;->j:I

    if-gt v2, v12, :cond_d

    const/4 v2, 0x0

    const/4 v12, 0x4

    goto :goto_a

    :cond_d
    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Lkc/e;->a(I)V

    move v12, v2

    :goto_a
    const-string v13, "key_fullscreen_dot_visibility"

    invoke-virtual {v15, v13, v12}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    const-string v12, "key_prompt_pending"

    invoke-virtual {v15, v12, v11}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    invoke-static {}, Lcom/miui/permcenter/o;->n()Z

    move-result v11

    if-eqz v11, :cond_e

    if-eqz v10, :cond_e

    iget-object v11, v1, Lcom/miui/permcenter/privacymanager/StatusBar;->pkgName:Ljava/lang/String;

    iget v1, v1, Lcom/miui/permcenter/privacymanager/StatusBar;->userId:I

    invoke-static {v11, v2, v1}, Ltg/a;->d(Ljava/lang/String;II)Landroid/content/pm/PackageInfo;

    move-result-object v1

    if-eqz v1, :cond_e

    iget-object v2, v0, Lkc/c;->a:Landroid/content/Context;

    invoke-static {v2}, Lkc/q;->G(Landroid/content/Context;)Lkc/q;

    move-result-object v2

    iget-object v1, v1, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v1, v1, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-virtual {v2, v1}, Lkc/q;->I(I)Z

    move-result v1

    const/4 v2, 0x1

    xor-int/2addr v1, v2

    const-string v2, "key_first_use_location_prompt"

    invoke-virtual {v15, v2, v1}, Landroid/os/BaseBundle;->putBoolean(Ljava/lang/String;Z)V

    :cond_e
    const/4 v1, 0x0

    if-eqz v5, :cond_f

    const/16 v23, 0x1

    goto :goto_b

    :cond_f
    const/16 v23, 0x0

    :goto_b
    aput v23, v4, v1

    const/4 v1, 0x1

    if-eqz v7, :cond_10

    const/16 v27, 0x1

    goto :goto_c

    :cond_10
    const/16 v27, 0x0

    :goto_c
    aput v27, v4, v1

    if-eqz v10, :cond_11

    const/4 v1, 0x1

    goto :goto_d

    :cond_11
    const/4 v1, 0x0

    :goto_d
    const/4 v2, 0x2

    aput v1, v4, v2

    if-eqz v3, :cond_12

    const/4 v1, 0x1

    goto :goto_e

    :cond_12
    const/4 v1, 0x0

    :goto_e
    const/4 v2, 0x3

    aput v1, v4, v2

    invoke-static {}, Lcom/miui/permcenter/o;->n()Z

    move-result v1

    const-string v2, "key_prompt_controlCenterDotColor"

    const-string v3, "key_prompt_contentDescription"

    const-string v5, "key_prompt_type"

    if-eqz v1, :cond_13

    invoke-virtual {v15, v5, v4}, Landroid/os/BaseBundle;->putIntArray(Ljava/lang/String;[I)V

    invoke-virtual {v15, v3, v8}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, v0, Lkc/c;->a:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v7, 0x7f060cb2

    invoke-virtual {v1, v7}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v15, v2, v1}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    move-object v5, v8

    const/4 v2, 0x1

    goto :goto_f

    :cond_13
    const v7, 0x7f060cb2

    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    invoke-virtual {v1, v5, v4}, Landroid/os/BaseBundle;->putIntArray(Ljava/lang/String;[I)V

    invoke-virtual {v1, v3, v8}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v3, v0, Lkc/c;->a:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3, v7}, Landroid/content/res/Resources;->getColor(I)I

    move-result v3

    invoke-virtual {v1, v2, v3}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    move-object/from16 v16, v1

    move-object v5, v8

    const/4 v2, 0x1

    goto :goto_10

    :cond_14
    move-object/from16 v26, v2

    const/4 v2, 0x0

    const/4 v5, 0x0

    const/4 v9, 0x0

    const/4 v15, 0x0

    :goto_f
    const/16 v16, 0x0

    :goto_10
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setStatus event:"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ",content:"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ",type:"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v3, 0x0

    aget v5, v4, v3

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, "-"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v5, 0x1

    aget v7, v4, v5

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v5, 0x2

    aget v7, v4, v5

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v3, 0x3

    aget v4, v4, v3

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v6, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lcom/miui/permcenter/o;->n()Z

    move-result v1

    const-string v4, "setStatus"

    if-nez v1, :cond_15

    iget-object v1, v0, Lkc/c;->c:Landroid/app/StatusBarManager;

    new-array v5, v3, [Ljava/lang/Class;

    sget-object v7, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    const/4 v8, 0x0

    aput-object v7, v5, v8

    const/4 v7, 0x1

    aput-object v26, v5, v7

    const-class v10, Landroid/os/Bundle;

    const/4 v11, 0x2

    aput-object v10, v5, v11

    new-array v10, v3, [Ljava/lang/Object;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    aput-object v12, v10, v8

    const-string v12, "action_control_center_update_prompt"

    aput-object v12, v10, v7

    aput-object v16, v10, v11

    invoke-static {v6, v1, v4, v5, v10}, Lbh/e;->b(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_11

    :cond_15
    const/4 v7, 0x1

    const/4 v8, 0x0

    const/4 v11, 0x2

    :goto_11
    iget-object v1, v0, Lkc/c;->c:Landroid/app/StatusBarManager;

    new-array v5, v3, [Ljava/lang/Class;

    sget-object v10, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v10, v5, v8

    aput-object v26, v5, v7

    const-class v10, Landroid/os/Bundle;

    aput-object v10, v5, v11

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v3, v8

    const-string v2, "action_update_prompt"

    aput-object v2, v3, v7

    aput-object v15, v3, v11

    invoke-static {v6, v1, v4, v5, v3}, Lbh/e;->b(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, v0, Lkc/c;->a:Landroid/content/Context;

    invoke-static {v1, v9}, Lkc/c$a;->a(Landroid/content/Context;Z)V

    return-void

    nop

    :array_0
    .array-data 4
        0x0
        0x0
        0x0
        0x0
    .end array-data
.end method

.method public j(Lcom/miui/permcenter/privacymanager/StatusBar;Ljava/lang/String;I)V
    .locals 6

    sget-boolean v0, Lmiui/os/Build;->IS_INTERNATIONAL_BUILD:Z

    if-nez v0, :cond_3

    if-eqz p1, :cond_3

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_1

    :cond_0
    invoke-virtual {p1}, Lcom/miui/permcenter/privacymanager/StatusBar;->getHighestPerm()J

    move-result-wide v0

    const-wide/16 v2, 0x1

    cmp-long p1, v0, v2

    if-eqz p1, :cond_1

    return-void

    :cond_1
    iget-object p1, p0, Lkc/c;->a:Landroid/content/Context;

    invoke-static {p1}, Lkc/q;->G(Landroid/content/Context;)Lkc/q;

    move-result-object p1

    invoke-virtual {p1, p2}, Lkc/q;->J(Ljava/lang/String;)Z

    move-result p1

    iget-object v0, p0, Lkc/c;->a:Landroid/content/Context;

    iget-object v1, p0, Lkc/c;->b:Landroid/app/AppOpsManager;

    const/16 v4, 0x2739

    move-object v2, p2

    move v3, p3

    move v5, p1

    invoke-static/range {v0 .. v5}, Lcom/miui/permcenter/compact/AppOpsUtilsCompat;->setModeWithXSpace(Landroid/content/Context;Landroid/app/AppOpsManager;Ljava/lang/String;III)V

    const/4 p2, 0x1

    if-ne p1, p2, :cond_2

    goto :goto_0

    :cond_2
    const/4 p2, 0x0

    :goto_0
    invoke-direct {p0, p2}, Lkc/e;->k(Z)V

    :cond_3
    :goto_1
    return-void
.end method
