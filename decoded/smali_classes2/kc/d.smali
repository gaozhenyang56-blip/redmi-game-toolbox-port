.class public Lkc/d;
.super Lkc/c;
.source "SourceFile"


# instance fields
.field private j:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 10

    invoke-direct {p0, p1}, Lkc/c;-><init>(Landroid/content/Context;)V

    sget-boolean p1, Lmiui/os/Build;->IS_INTERNATIONAL_BUILD:Z

    if-nez p1, :cond_0

    iget-object p1, p0, Lkc/c;->f:Landroid/util/ArrayMap;

    const-wide/16 v0, 0x1000

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    const v3, 0x7f080937

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {p1, v2, v3}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object p1, p0, Lkc/c;->f:Landroid/util/ArrayMap;

    const-wide/32 v2, 0x20000

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    const v5, 0x7f080934

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {p1, v4, v5}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object p1, p0, Lkc/c;->f:Landroid/util/ArrayMap;

    const-wide/16 v4, 0x20

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    const v7, 0x7f080971

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {p1, v6, v7}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object p1, p0, Lkc/c;->f:Landroid/util/ArrayMap;

    const-wide/16 v6, 0x1

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    const v9, 0x7f080f1d

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {p1, v8, v9}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object p1, p0, Lkc/c;->g:Landroid/util/ArrayMap;

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    iget-object v1, p0, Lkc/c;->a:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v8, 0x7f0600fb

    invoke-virtual {v1, v8}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object p1, p0, Lkc/c;->g:Landroid/util/ArrayMap;

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    iget-object v1, p0, Lkc/c;->a:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0600f8

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object p1, p0, Lkc/c;->g:Landroid/util/ArrayMap;

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    iget-object v1, p0, Lkc/c;->a:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v3, 0x7f0600ff

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object p1, p0, Lkc/c;->g:Landroid/util/ArrayMap;

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    iget-object v1, p0, Lkc/c;->a:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    return-void
.end method


# virtual methods
.method public b(J)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "dismissStatusBarCapsule with tag:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "MIUISafety-Flares"

    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :try_start_0
    iget-object v0, p0, Lkc/c;->a:Landroid/content/Context;

    invoke-static {p1, p2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/app/MiuiStatusBarManager;->clearState(Landroid/content/Context;Ljava/lang/String;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    const-string p2, "dismissStatusBarCapsule exception:"

    invoke-static {v1, p2, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    return-void
.end method

.method public i(ILcom/miui/permcenter/privacymanager/StatusBar;)V
    .locals 9

    sget-boolean v0, Lmiui/os/Build;->IS_INTERNATIONAL_BUILD:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x0

    const-string v1, "MIUISafety-Flares"

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz p1, :cond_3

    if-eqz p2, :cond_3

    invoke-virtual {p2}, Lcom/miui/permcenter/privacymanager/StatusBar;->hasPrivacyAccess()Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-virtual {p2}, Lcom/miui/permcenter/privacymanager/StatusBar;->getActivePerm()J

    move-result-wide v4

    invoke-virtual {p0, v4, v5}, Lkc/c;->d(J)J

    move-result-wide v4

    iget-object v0, p0, Lkc/c;->a:Landroid/content/Context;

    iget-object v6, p2, Lcom/miui/permcenter/privacymanager/StatusBar;->pkgName:Ljava/lang/String;

    invoke-static {v0, v6}, Lcom/miui/luckymoney/utils/PackageUtil;->getAppName(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iget-object v6, p0, Lkc/c;->a:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f12145e

    new-array v8, v2, [Ljava/lang/Object;

    aput-object v0, v8, v3

    invoke-virtual {v6, v7, v8}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    iget-object v6, p0, Lkc/d;->j:Ljava/lang/String;

    invoke-static {v6, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_1

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "update return same with last: "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_1
    iput-object v0, p0, Lkc/d;->j:Ljava/lang/String;

    new-instance v6, Landroid/os/Bundle;

    invoke-direct {v6}, Landroid/os/Bundle;-><init>()V

    iget-object p2, p2, Lcom/miui/permcenter/privacymanager/StatusBar;->pkgName:Ljava/lang/String;

    const-string v7, "android.intent.extra.PACKAGE_NAME"

    invoke-virtual {v6, v7, p2}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "update content:"

    invoke-virtual {p2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v1, p2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const-string p2, "key_privacy_content"

    invoke-virtual {v6, p2, v0}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v4, v5}, Lkc/c;->h(J)I

    move-result p2

    const-string v0, "key_privacy_type"

    invoke-virtual {v6, v0, p2}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    new-instance p2, Landroid/content/Intent;

    const-string v0, "com.miui.action.open_status_bar"

    invoke-direct {p2, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    iget-object v0, p0, Lkc/c;->a:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    iget-object v0, p0, Lkc/c;->a:Landroid/content/Context;

    const/high16 v7, 0xc000000

    invoke-static {}, Lx4/z1;->d()Landroid/os/UserHandle;

    move-result-object v8

    invoke-static {v0, v3, p2, v7, v8}, Lx4/v;->h(Landroid/content/Context;ILandroid/content/Intent;ILandroid/os/UserHandle;)Landroid/app/PendingIntent;

    move-result-object p2

    const-string v0, "key_flares_pending"

    invoke-virtual {v6, v0, p2}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    const-wide/16 v7, 0x1000

    cmp-long p2, v4, v7

    if-nez p2, :cond_2

    move p2, v2

    goto :goto_0

    :cond_2
    move p2, v3

    :goto_0
    move-object v0, v6

    goto :goto_1

    :cond_3
    iput-object v0, p0, Lkc/d;->j:Ljava/lang/String;

    move p2, v3

    :goto_1
    iget-object v4, p0, Lkc/c;->c:Landroid/app/StatusBarManager;

    const/4 v5, 0x3

    new-array v6, v5, [Ljava/lang/Class;

    sget-object v7, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v7, v6, v3

    const-class v7, Ljava/lang/String;

    aput-object v7, v6, v2

    const-class v7, Landroid/os/Bundle;

    const/4 v8, 0x2

    aput-object v7, v6, v8

    new-array v5, v5, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, v5, v3

    const-string p1, "action_update_privacy_flares"

    aput-object p1, v5, v2

    aput-object v0, v5, v8

    const-string p1, "setStatus"

    invoke-static {v1, v4, p1, v6, v5}, Lbh/e;->b(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    iget-object p1, p0, Lkc/c;->a:Landroid/content/Context;

    invoke-static {p1, p2}, Lkc/c$a;->a(Landroid/content/Context;Z)V

    return-void
.end method

.method public j(Lcom/miui/permcenter/privacymanager/StatusBar;Ljava/lang/String;I)V
    .locals 17

    move-object/from16 v1, p0

    move-object/from16 v0, p1

    const-string v2, "MIUISafety-Flares"

    sget-boolean v3, Lmiui/os/Build;->IS_INTERNATIONAL_BUILD:Z

    if-nez v3, :cond_6

    if-nez v0, :cond_0

    goto/16 :goto_2

    :cond_0
    invoke-virtual/range {p1 .. p1}, Lcom/miui/permcenter/privacymanager/StatusBar;->getHighestPerm()J

    move-result-wide v3

    iget-object v5, v1, Lkc/c;->f:Landroid/util/ArrayMap;

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/util/ArrayMap;->containsKey(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_1

    return-void

    :cond_1
    :try_start_0
    new-instance v5, Landroid/content/Intent;

    const-wide/16 v6, 0x1

    cmp-long v6, v3, v6

    if-nez v6, :cond_2

    const-string v7, "com.miui.action.open_screen_share_tip"

    goto :goto_0

    :cond_2
    const-string v7, "com.miui.action.open_status_bar"

    :goto_0
    invoke-direct {v5, v7}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    iget-object v7, v1, Lkc/c;->a:Landroid/content/Context;

    const/high16 v8, 0xc000000

    invoke-static {}, Lx4/z1;->d()Landroid/os/UserHandle;

    move-result-object v9

    const/4 v10, 0x0

    invoke-static {v7, v10, v5, v8, v9}, Lx4/v;->h(Landroid/content/Context;ILandroid/content/Intent;ILandroid/os/UserHandle;)Landroid/app/PendingIntent;

    move-result-object v5

    new-instance v7, Landroid/app/MiuiStatusBarState$MiniStateViewBuilder;

    iget-object v8, v1, Lkc/c;->a:Landroid/content/Context;

    invoke-direct {v7, v8}, Landroid/app/MiuiStatusBarState$MiniStateViewBuilder;-><init>(Landroid/content/Context;)V

    iget-object v8, v1, Lkc/c;->f:Landroid/util/ArrayMap;

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v9

    invoke-virtual {v8, v9}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/Integer;

    if-nez v6, :cond_4

    iget-object v6, v1, Lkc/c;->a:Landroid/content/Context;

    invoke-static {v6}, Lkc/q;->G(Landroid/content/Context;)Lkc/q;

    move-result-object v6

    move-object/from16 v9, p2

    invoke-virtual {v6, v9}, Lkc/q;->M(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_3

    const v6, 0x7f080f1b

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    const/4 v6, 0x1

    move/from16 v16, v6

    goto :goto_1

    :cond_3
    move/from16 v16, v10

    :goto_1
    iget-object v11, v1, Lkc/c;->a:Landroid/content/Context;

    iget-object v12, v1, Lkc/c;->b:Landroid/app/AppOpsManager;

    const/16 v15, 0x2739

    move-object/from16 v13, p2

    move/from16 v14, p3

    invoke-static/range {v11 .. v16}, Lcom/miui/permcenter/compact/AppOpsUtilsCompat;->setModeWithXSpace(Landroid/content/Context;Landroid/app/AppOpsManager;Ljava/lang/String;III)V

    :cond_4
    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v6

    invoke-virtual {v7, v6}, Landroid/app/MiuiStatusBarState$MiniStateViewBuilder;->setAppIcon(I)Landroid/app/MiuiStatusBarState$MiniStateViewBuilder;

    move-result-object v6

    iget-object v8, v1, Lkc/c;->g:Landroid/util/ArrayMap;

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v9

    invoke-virtual {v8, v9}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/Integer;

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v8

    invoke-virtual {v6, v8}, Landroid/app/MiuiStatusBarState$MiniStateViewBuilder;->setBackgroundColor(I)Landroid/app/MiuiStatusBarState$MiniStateViewBuilder;

    if-eqz v5, :cond_5

    invoke-virtual {v7, v5}, Landroid/app/MiuiStatusBarState$MiniStateViewBuilder;->setPendingIntent(Landroid/app/PendingIntent;)Landroid/app/MiuiStatusBarState$MiniStateViewBuilder;

    :cond_5
    new-instance v5, Landroid/app/MiuiStatusBarState;

    invoke-static {v3, v4}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v6

    const/4 v8, 0x0

    invoke-virtual {v7}, Landroid/app/MiuiStatusBarState$MiniStateViewBuilder;->build()Landroid/widget/RemoteViews;

    move-result-object v7

    invoke-direct {v5, v6, v8, v7, v10}, Landroid/app/MiuiStatusBarState;-><init>(Ljava/lang/String;Landroid/widget/RemoteViews;Landroid/widget/RemoteViews;I)V

    iget-object v6, v1, Lkc/c;->a:Landroid/content/Context;

    invoke-static {v6, v5}, Landroid/app/MiuiStatusBarManager;->applyState(Landroid/content/Context;Landroid/app/MiuiStatusBarState;)Z

    const-string v5, "capsule_exposure"

    invoke-static {v5}, Lmb/a;->h(Ljava/lang/String;)V

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "updateStatusBarCapsule pkg:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, v0, Lcom/miui/permcenter/privacymanager/StatusBar;->pkgName:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, ",user:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, v0, Lcom/miui/permcenter/privacymanager/StatusBar;->userId:I

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ",tag:"

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    move-exception v0

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "updateStatusBarCapsule error: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_6
    :goto_2
    return-void
.end method
