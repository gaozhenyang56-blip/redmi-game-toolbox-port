.class public La8/l0;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method private static a(Landroid/content/Context;I)V
    .locals 1

    sget-boolean v0, Lmiui/os/Build;->IS_INTERNATIONAL_BUILD:Z

    if-eqz v0, :cond_0

    invoke-static {p0, p1}, Lx4/y1;->b(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object p1

    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p0

    invoke-virtual {p0}, Landroid/widget/Toast;->show()V

    :cond_0
    return-void
.end method

.method private static b(Landroid/content/Context;I)V
    .locals 4

    sget-boolean v0, Lmiui/os/Build;->IS_INTERNATIONAL_BUILD:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f1209a4

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const/4 v3, 0x0

    aput-object p1, v2, v3

    invoke-virtual {v0, v1, v2}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p0

    invoke-virtual {p0}, Landroid/widget/Toast;->show()V

    :cond_0
    return-void
.end method

.method public static c(Landroid/content/Context;I)Ljava/lang/String;
    .locals 2
    .param p0    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    const v0, 0x7f120994

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    if-eqz p1, :cond_4

    const/4 v0, 0x1

    if-eq p1, v0, :cond_3

    const/4 v0, 0x2

    if-eq p1, v0, :cond_2

    const/4 v0, 0x3

    if-eq p1, v0, :cond_1

    const/4 v0, 0x4

    if-eq p1, v0, :cond_0

    goto :goto_1

    :cond_0
    const p1, 0x7f12095c

    goto :goto_0

    :cond_1
    const p1, 0x7f120997

    goto :goto_0

    :cond_2
    const p1, 0x7f120996

    goto :goto_0

    :cond_3
    const p1, 0x7f120995

    :goto_0
    invoke-virtual {p0, p1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_1

    :cond_4
    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    :goto_1
    return-object v1
.end method

.method public static d(Landroid/content/Context;Ljava/lang/String;I)I
    .locals 2

    const/4 v0, 0x0

    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    const/4 v1, 0x0

    invoke-static {p0, p1, v1, p2}, La8/j0;->j(Landroid/content/Context;Ljava/lang/String;II)Landroid/database/Cursor;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    move-result p0

    if-eqz p0, :cond_0

    const-string p0, "settings_hdr"

    invoke-interface {v0, p0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result p0

    invoke-interface {v0, p0}, Landroid/database/Cursor;->getInt(I)I

    move-result p0

    const-string p1, "queryAdvanceSettingsValue"

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, ",   HDR = "

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {v0}, Lbl/e;->a(Ljava/io/Closeable;)V

    return p0

    :catchall_0
    move-exception p0

    goto :goto_0

    :catch_0
    move-exception p0

    :try_start_1
    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_0
    invoke-static {v0}, Lbl/e;->a(Ljava/io/Closeable;)V

    const/4 p0, -0x1

    return p0

    :goto_0
    invoke-static {v0}, Lbl/e;->a(Ljava/io/Closeable;)V

    throw p0
.end method

.method public static e(Ljava/lang/String;ILcom/miui/gamebooster/model/n;Landroid/content/Context;Landroid/view/View;)Z
    .locals 5

    invoke-virtual {p2}, Lcom/miui/gamebooster/model/n;->l()Ln6/c;

    move-result-object p2

    sget-object v0, La8/l0$d;->a:[I

    invoke-virtual {p2}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const-string v1, "antimsg"

    const/4 v2, 0x1

    const/4 v3, 0x0

    const-string v4, "GameBoxFunctionUtils"

    packed-switch v0, :pswitch_data_0

    move v2, v3

    goto/16 :goto_4

    :pswitch_0
    invoke-static {}, Lcom/miui/gamebooster/utils/GameBoxVisionEnhanceUtils;->w()Lcom/miui/gamebooster/utils/GameBoxVisionEnhanceUtils;

    move-result-object p0

    invoke-virtual {p0, p2}, Lcom/miui/gamebooster/utils/GameBoxVisionEnhanceUtils;->D(Ln6/c;)V

    goto/16 :goto_4

    :pswitch_1
    invoke-static {p3, p4}, La8/l0;->p(Landroid/content/Context;Landroid/view/View;)V

    invoke-static {p3}, Lcom/miui/gamebooster/utils/a;->T(Landroid/content/Context;)V

    const-string p0, "BARRAGE_NOTICE"

    goto/16 :goto_3

    :pswitch_2
    invoke-static {}, Lp7/a;->b()Lp7/a;

    move-result-object p1

    invoke-virtual {p1, p0}, Lp7/a;->c(Ljava/lang/String;)V

    goto/16 :goto_4

    :pswitch_3
    const-string p0, "settings"

    invoke-static {p0}, Lcom/miui/gamebooster/utils/a;->r0(Ljava/lang/String;)V

    invoke-static {p3}, La8/k0;->j(Landroid/content/Context;)V

    goto/16 :goto_4

    :pswitch_4
    invoke-static {p3, p4, p0}, La8/l0;->q(Landroid/content/Context;Landroid/view/View;Ljava/lang/String;)V

    goto/16 :goto_4

    :pswitch_5
    invoke-static {p3}, La8/l0;->i(Landroid/content/Context;)V

    const-string p0, "MILINK"

    goto/16 :goto_3

    :pswitch_6
    new-instance p0, La8/l0$a;

    invoke-direct {p0, p3}, La8/l0$a;-><init>(Landroid/content/Context;)V

    invoke-static {p3}, La8/i0;->c(Landroid/content/Context;)La8/i0;

    move-result-object p1

    invoke-virtual {p1, p0}, La8/i0;->a(Lo4/a$a;)V

    const-string p0, "DISPLAY"

    goto/16 :goto_3

    :pswitch_7
    invoke-static {p3}, La8/l0;->m(Landroid/content/Context;)V

    const-string p0, "hangup"

    invoke-static {p0}, Lcom/miui/gamebooster/utils/a;->r0(Ljava/lang/String;)V

    const-string p0, "HANGUP"

    goto/16 :goto_3

    :pswitch_8
    invoke-static {p3, p4}, La8/l0;->w(Landroid/content/Context;Landroid/view/View;)V

    const-string p0, "immersion"

    invoke-static {p0}, Lcom/miui/gamebooster/utils/a;->r0(Ljava/lang/String;)V

    const-string p0, "IMMERSION"

    goto/16 :goto_3

    :pswitch_9
    invoke-static {p3, p4}, La8/l0;->s(Landroid/content/Context;Landroid/view/View;)V

    const-string p0, "switch_sim"

    invoke-static {p0}, Lcom/miui/gamebooster/utils/a;->r0(Ljava/lang/String;)V

    const-string p0, "SIMCARD"

    goto/16 :goto_3

    :pswitch_a
    invoke-static {p3, p4}, La8/l0;->u(Landroid/content/Context;Landroid/view/View;)V

    const-string p0, "WIFI"

    goto/16 :goto_3

    :pswitch_b
    invoke-static {p3, p4, v2}, La8/l0;->v(Landroid/content/Context;Landroid/view/View;Z)V

    invoke-static {v1}, Lcom/miui/gamebooster/utils/a;->r0(Ljava/lang/String;)V

    const-string p0, "DND"

    goto/16 :goto_3

    :pswitch_c
    invoke-static {p3, p4, v3}, La8/l0;->v(Landroid/content/Context;Landroid/view/View;Z)V

    invoke-static {v1}, Lcom/miui/gamebooster/utils/a;->r0(Ljava/lang/String;)V

    const-string p0, "ANTIMSG"

    goto/16 :goto_3

    :pswitch_d
    const-string p2, "GAME_MACRO"

    invoke-static {v4, p2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {p3}, La8/k2;->B(Landroid/content/Context;)Z

    move-result p2

    if-eqz p2, :cond_5

    invoke-static {p3, p0, p1, v2}, Le7/b;->k(Landroid/content/Context;Ljava/lang/String;IZ)V

    const-string p0, "game_macro"

    invoke-static {p0}, Lcom/miui/gamebooster/utils/a;->r0(Ljava/lang/String;)V

    goto/16 :goto_4

    :pswitch_e
    invoke-static {p3}, La8/l0;->h(Landroid/content/Context;)V

    const-string p0, "clean"

    invoke-static {p0}, Lcom/miui/gamebooster/utils/a;->r0(Ljava/lang/String;)V

    const-string p0, "ONEKEYCLEAN"

    goto/16 :goto_3

    :pswitch_f
    invoke-static {p3}, La8/l0;->n(Landroid/content/Context;)V

    const-string p0, "screen_record"

    invoke-static {p0}, Lcom/miui/gamebooster/utils/a;->r0(Ljava/lang/String;)V

    const-string p0, "RECORD"

    goto/16 :goto_3

    :pswitch_10
    invoke-static {p3}, La8/l0;->j(Landroid/content/Context;)V

    const-string p0, "screen_shot"

    invoke-static {p0}, Lcom/miui/gamebooster/utils/a;->r0(Ljava/lang/String;)V

    const-string p0, "QUICKSCREENSHOT"

    goto/16 :goto_3

    :pswitch_11
    const-string p0, "com.whatsapp"

    goto :goto_0

    :pswitch_12
    const-string p0, "com.vkontakte.android"

    goto :goto_0

    :pswitch_13
    const-string p0, "com.facebook.katana"

    :goto_0
    invoke-static {p3, p0}, La8/l0;->l(Landroid/content/Context;Ljava/lang/String;)V

    goto/16 :goto_4

    :pswitch_14
    invoke-static {}, Lve/k;->R()Lve/k;

    move-result-object p1

    invoke-virtual {p1, p0}, Lve/b;->k(Ljava/lang/String;)Lcom/miui/gamebooster/model/ActiveModel;

    move-result-object p0

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/miui/gamebooster/model/ActiveModel;->isValid()Z

    move-result p1

    if-eqz p1, :cond_0

    sget-object p1, Lve/d;->c:Lve/d;

    invoke-static {p3, p0, p1}, Lve/e;->a(Landroid/content/Context;Lcom/miui/gamebooster/model/ActiveModel;Lve/d;)Z

    return v2

    :cond_0
    const-string p0, "com.android.browser"

    invoke-static {p3, p0}, Lx4/f1;->D(Landroid/content/Context;Ljava/lang/String;)Z

    move-result p1

    const-string p2, "com.mi.globalbrowser"

    invoke-static {p3, p2}, Lx4/f1;->D(Landroid/content/Context;Ljava/lang/String;)Z

    move-result p4

    sget-boolean v0, Lmiui/os/Build;->IS_INTERNATIONAL_BUILD:Z

    const v1, 0x7f12098f

    if-eqz v0, :cond_1

    if-nez p1, :cond_1

    if-nez p4, :cond_1

    const-string p0, "com.android.chrome"

    invoke-static {p3, p0}, Lx4/g1;->a(Landroid/content/Context;Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_3

    invoke-static {p3, p0}, Lx4/f1;->d(Landroid/content/Context;Ljava/lang/String;)Landroid/content/pm/ResolveInfo;

    move-result-object p1

    if-eqz p1, :cond_4

    iget-object p1, p1, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object p1, p1, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    goto :goto_1

    :cond_1
    if-eqz p4, :cond_2

    const-string p0, "com.mi.globalbrowser.Main"

    invoke-static {p3, p2, p0, v1}, La8/a0;->T(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;I)V

    goto :goto_2

    :cond_2
    if-eqz p1, :cond_3

    const-string p1, "com.android.browser.BrowserActivity"

    :goto_1
    invoke-static {p3, p0, p1, v1}, La8/a0;->T(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;I)V

    goto :goto_2

    :cond_3
    invoke-virtual {p3, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    invoke-static {p3, p0, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p0

    invoke-virtual {p0}, Landroid/widget/Toast;->show()V

    :cond_4
    :goto_2
    const-string p0, "browser"

    invoke-static {p0}, Lcom/miui/gamebooster/utils/a;->r0(Ljava/lang/String;)V

    const-string p0, "QUICKBROWSER"

    goto :goto_3

    :pswitch_15
    const p0, 0x7f1209b8

    const-string p1, "com.tencent.mobileqq"

    const-string p2, "com.tencent.mobileqq.activity.SplashActivity"

    invoke-static {p3, p1, p2, p0}, La8/a0;->T(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;I)V

    const-string p0, "qq"

    invoke-static {p0}, Lcom/miui/gamebooster/utils/a;->r0(Ljava/lang/String;)V

    const-string p0, "QUICKQQ"

    goto :goto_3

    :pswitch_16
    const p0, 0x7f1209c2

    const-string p1, "com.tencent.mm"

    const-string p2, "com.tencent.mm.ui.LauncherUI"

    invoke-static {p3, p1, p2, p0}, La8/a0;->T(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;I)V

    const-string p0, "wechat"

    invoke-static {p0}, Lcom/miui/gamebooster/utils/a;->r0(Ljava/lang/String;)V

    const-string p0, "QUICKWEIXIN"

    :goto_3
    invoke-static {v4, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_5
    :goto_4
    return v2

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_16
        :pswitch_15
        :pswitch_14
        :pswitch_13
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public static f(Landroid/content/Context;)Z
    .locals 2

    invoke-static {}, La8/g0;->R()Z

    move-result v0

    const/4 v1, 0x0

    invoke-static {p0}, Lm6/a;->e(Landroid/content/Context;)Lm6/a;

    if-eqz v0, :cond_0

    invoke-static {v1}, Lm6/a;->i(Z)Z

    move-result p0

    return p0

    :cond_0
    invoke-static {v1}, Lm6/a;->j(Z)Z

    move-result p0

    return p0
.end method

.method public static g(Landroid/content/Context;)Z
    .locals 3

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string v0, "gb_boosting"

    const/4 v1, 0x0

    const/4 v2, -0x2

    invoke-static {p0, v0, v1, v2}, La8/c0;->h(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result p0

    const/4 v0, 0x1

    if-ne p0, v0, :cond_0

    move v1, v0

    :cond_0
    return v1
.end method

.method public static h(Landroid/content/Context;)V
    .locals 0
    return-void
.end method

.method public static i(Landroid/content/Context;)V
    .locals 2

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, La8/g1;->n(Landroid/content/Context;)La8/g1;

    move-result-object v0

    invoke-virtual {v0}, La8/g1;->q()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f120fb4

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p0

    invoke-virtual {p0}, Landroid/widget/Toast;->show()V

    return-void

    :cond_0
    invoke-virtual {v0}, La8/g1;->m()Z

    move-result p0

    if-eqz p0, :cond_1

    const p0, 0x7f12181d

    invoke-virtual {v0, p0}, La8/g1;->l(I)V

    goto :goto_0

    :cond_1
    invoke-virtual {v0}, La8/g1;->y()V

    :goto_0
    return-void
.end method

.method public static j(Landroid/content/Context;)V
    .locals 4

    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    new-instance v1, La8/l0$c;

    invoke-direct {v1, p0}, La8/l0$c;-><init>(Landroid/content/Context;)V

    const-wide/16 v2, 0x190

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method public static k(Landroid/content/Context;Z)V
    .locals 2

    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.android.phone.intent.action.DIVING_MODE"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, "com.android.phone"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "diving_mode_key"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    invoke-virtual {p0, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "startDivingMode"

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "GameBoxFunctionUtils"

    invoke-static {p1, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public static l(Landroid/content/Context;Ljava/lang/String;)V
    .locals 2

    invoke-static {p0, p1}, Lx4/f1;->d(Landroid/content/Context;Ljava/lang/String;)Landroid/content/pm/ResolveInfo;

    move-result-object p1

    const v0, 0x7f12098d

    if-nez p1, :cond_0

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p0

    invoke-virtual {p0}, Landroid/widget/Toast;->show()V

    goto :goto_0

    :cond_0
    iget-object p1, p1, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v1, p1, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v1, v1, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    iget-object p1, p1, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-static {p0, v1, p1, v0}, La8/a0;->T(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;I)V

    :goto_0
    return-void
.end method

.method public static m(Landroid/content/Context;)V
    .locals 8

    const-string v0, "key_currentbooster_pkg_uid"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lr4/a;->l(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    aget-object v0, v0, v1

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, La8/g1;->n(Landroid/content/Context;)La8/g1;

    move-result-object v2

    invoke-virtual {v2}, La8/g1;->m()Z

    move-result v2

    const-string v3, "GameBoxFunctionUtils"

    const/high16 v4, 0x10000000

    const-string v5, "intent_gamebox_booster_pkg"

    const-string v6, "intent_gamebox_function_type"

    const-string v7, "com.miui.gamebooster.action.GAMEBOX_ALERT_ACTIVITY"

    if-eqz v2, :cond_1

    const-string v2, "key_gamebooster_milink_hangup_ok"

    invoke-static {v2, v1}, Lr4/a;->e(Ljava/lang/String;Z)Z

    move-result v2

    if-nez v2, :cond_0

    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1, v7}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    const-string v2, "intent_gamebox_func_type_milink_hangup"

    invoke-virtual {v1, v6, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {v1, v5, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {v1, v4}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    invoke-virtual {p0, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    :cond_0
    const-string v0, "android.provider.MiuiSettings$Secure"

    const-string v2, "SCREEN_PROJECT_HANG_UP"

    invoke-static {v0, v2}, La8/c0;->f(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const/4 v2, 0x1

    invoke-static {p0, v0, v2, v1}, La8/c0;->i(Landroid/content/ContentResolver;Ljava/lang/String;II)V

    :goto_0
    const-string p0, "newHangUp"

    invoke-static {v3, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_1
    const-string v2, "key_gamebooster_hangup_ok"

    invoke-static {v2, v1}, Lr4/a;->e(Ljava/lang/String;Z)Z

    move-result v1

    if-nez v1, :cond_2

    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1, v7}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    const-string v2, "intent_gamebox_func_type_hangup"

    invoke-virtual {v1, v6, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {v1, v5, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {v1, v4}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    invoke-virtual {p0, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto :goto_1

    :cond_2
    if-eqz v0, :cond_3

    invoke-static {v0, p0}, La8/r0;->b(Ljava/lang/String;Landroid/content/Context;)V

    const-string p0, "setPackageHoldOn"

    invoke-static {v3, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    :goto_1
    return-void
.end method

.method public static n(Landroid/content/Context;)V
    .locals 3

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string v1, "miui.intent.screenrecorder.RECORDER_SERVICE"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "com.miui.screenrecorder"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "is_start_immediately"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    invoke-static {p0, v0}, La8/k0;->h(Landroid/content/Context;Landroid/content/Intent;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p0, v0}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    goto :goto_0

    :cond_0
    const v0, 0x7f1215e6

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p0

    invoke-virtual {p0}, Landroid/widget/Toast;->show()V

    const-string p0, "GameBoxFunctionUtils"

    const-string v0, "startRecord_fail"

    invoke-static {p0, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method

.method public static o(Landroid/content/Context;Landroid/view/View;Z)V
    .locals 2

    const v0, 0x7f0b0447

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    invoke-static {p0}, La8/l0;->f(Landroid/content/Context;)Z

    move-result v1

    if-eqz p2, :cond_2

    if-eqz v1, :cond_0

    const p2, 0x7f1209a0

    goto :goto_0

    :cond_0
    const p2, 0x7f1209a1

    :goto_0
    invoke-static {p0, p2}, La8/l0;->a(Landroid/content/Context;I)V

    xor-int/lit8 p2, v1, 0x1

    invoke-virtual {v0, p2}, Landroid/widget/ImageView;->setSelected(Z)V

    const p2, 0x7f0b044c

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    if-eqz v1, :cond_1

    const v0, 0x7f06030d

    goto :goto_1

    :cond_1
    const v0, 0x7f0602f7

    :goto_1
    invoke-virtual {p2, v0}, Landroid/content/res/Resources;->getColor(I)I

    move-result p2

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setTextColor(I)V

    if-nez v1, :cond_4

    invoke-static {}, La8/j;->q()V

    goto :goto_3

    :cond_2
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    if-eqz v1, :cond_3

    const p2, 0x7f081045

    goto :goto_2

    :cond_3
    const p2, 0x7f080626

    :goto_2
    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    :cond_4
    :goto_3
    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 p2, 0x21

    const-string v0, "com.miui.gamebooster.service.action.SWITCHANTIMSG"

    if-le p1, p2, :cond_5

    invoke-static {}, Lx4/g;->a()Landroid/os/Bundle;

    move-result-object p1

    new-instance p2, Landroid/content/Intent;

    invoke-direct {p2, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    sget-object v0, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    const/4 v1, 0x0

    invoke-static {p0, p2, v0, v1, p1}, Lx4/v;->s(Landroid/content/Context;Landroid/content/Intent;Landroid/os/UserHandle;Ljava/lang/String;Landroid/os/Bundle;)V

    goto :goto_4

    :cond_5
    new-instance p1, Landroid/content/Intent;

    invoke-direct {p1, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    sget-object p2, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    invoke-virtual {p0, p1, p2}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    :goto_4
    const-string p0, "GameBoxFunctionUtils"

    const-string p1, "switchAntiMsgMode"

    invoke-static {p0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public static p(Landroid/content/Context;Landroid/view/View;)V
    .locals 3

    const v0, 0x7f0b05bc

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    invoke-static {p0}, La8/j;->g(Landroid/content/Context;)Z

    move-result v1

    xor-int/lit8 v2, v1, 0x1

    invoke-static {p0, v2}, La8/j;->m(Landroid/content/Context;Z)V

    const v2, 0x7f0b064d

    if-eqz v1, :cond_0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setSelected(Z)V

    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    const v0, 0x7f06030d

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getColor(I)I

    move-result p0

    invoke-virtual {p1, p0}, Landroid/widget/TextView;->setTextColor(I)V

    goto :goto_0

    :cond_0
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setSelected(Z)V

    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    const v0, 0x7f06030e

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getColor(I)I

    move-result p0

    invoke-virtual {p1, p0}, Landroid/widget/TextView;->setTextColor(I)V

    invoke-static {}, Lcom/miui/bubbles/utils/TipsManager;->getInstance()Lcom/miui/bubbles/utils/TipsManager;

    move-result-object p0

    const/4 p1, 0x0

    const/4 v0, 0x3

    invoke-virtual {p0, p1, v0}, Lcom/miui/bubbles/utils/TipsManager;->showBarrageTipsIfNeed(Ljava/lang/String;I)V

    invoke-static {}, La8/j;->r()V

    :goto_0
    return-void
.end method

.method private static q(Landroid/content/Context;Landroid/view/View;Ljava/lang/String;)V
    .locals 2

    invoke-static {p0, p2}, Lz6/a;->c(Landroid/content/Context;Ljava/lang/String;)V

    const p2, 0x7f0b05bc

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/ImageView;

    if-nez p2, :cond_0

    return-void

    :cond_0
    invoke-static {}, La8/o0;->k()Z

    move-result v0

    const v1, 0x7f0b064d

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    invoke-virtual {p2, v0}, Landroid/widget/ImageView;->setSelected(Z)V

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    const p2, 0x7f06030e

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    invoke-virtual {p2, v0}, Landroid/widget/ImageView;->setSelected(Z)V

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    const p2, 0x7f06030d

    :goto_0
    invoke-virtual {p0, p2}, Landroid/content/res/Resources;->getColor(I)I

    move-result p0

    invoke-virtual {p1, p0}, Landroid/widget/TextView;->setTextColor(I)V

    return-void
.end method

.method public static r(Landroid/content/Context;Landroid/view/View;Ljava/lang/String;)V
    .locals 1

    invoke-static {p0, p2}, Lz6/a;->c(Landroid/content/Context;Ljava/lang/String;)V

    const p2, 0x7f0b0447

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/ImageView;

    if-nez p2, :cond_0

    return-void

    :cond_0
    invoke-static {}, La8/o0;->k()Z

    move-result v0

    invoke-virtual {p2, v0}, Landroid/widget/ImageView;->setSelected(Z)V

    const p2, 0x7f0b044c

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    if-eqz v0, :cond_1

    const p2, 0x7f0602f7

    goto :goto_0

    :cond_1
    const p2, 0x7f06030d

    :goto_0
    invoke-virtual {p0, p2}, Landroid/content/res/Resources;->getColor(I)I

    move-result p0

    invoke-virtual {p1, p0}, Landroid/widget/TextView;->setTextColor(I)V

    return-void
.end method

.method public static s(Landroid/content/Context;Landroid/view/View;)V
    .locals 0
    return-void
.end method

.method public static t(Landroid/content/Context;Landroid/view/View;)V
    .locals 4

    const v0, 0x7f0b0447

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    invoke-static {p0}, La8/k0;->e(Landroid/content/Context;)Z

    move-result v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "switchWLAN: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "GameBoxFunctionUtils"

    invoke-static {v3, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    xor-int/lit8 v2, v1, 0x1

    invoke-static {p0, v2}, La8/k0;->p(Landroid/content/Context;Z)V

    xor-int/lit8 v2, v1, 0x1

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setSelected(Z)V

    const v0, 0x7f0b044c

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    if-eqz v1, :cond_0

    const v2, 0x7f06030d

    goto :goto_0

    :cond_0
    const v2, 0x7f0602f7

    :goto_0
    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setTextColor(I)V

    if-eqz v1, :cond_1

    const p1, 0x7f1209a6

    goto :goto_1

    :cond_1
    const p1, 0x7f1209a7

    :goto_1
    invoke-static {p0, p1}, La8/l0;->a(Landroid/content/Context;I)V

    return-void
.end method

.method public static u(Landroid/content/Context;Landroid/view/View;)V
    .locals 4

    const v0, 0x7f0b05bc

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    invoke-static {p0}, La8/k0;->e(Landroid/content/Context;)Z

    move-result v1

    xor-int/lit8 v2, v1, 0x1

    invoke-static {p0, v2}, La8/k0;->p(Landroid/content/Context;Z)V

    const v2, 0x7f0b064d

    if-eqz v1, :cond_0

    const/4 v3, 0x0

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setSelected(Z)V

    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v2, 0x7f06030d

    goto :goto_0

    :cond_0
    const/4 v3, 0x1

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setSelected(Z)V

    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v2, 0x7f06030e

    :goto_0
    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setTextColor(I)V

    if-eqz v1, :cond_1

    const p1, 0x7f1209a6

    goto :goto_1

    :cond_1
    const p1, 0x7f1209a7

    :goto_1
    invoke-static {p0, p1}, La8/l0;->a(Landroid/content/Context;I)V

    return-void
.end method

.method public static v(Landroid/content/Context;Landroid/view/View;Z)V
    .locals 3

    const v0, 0x7f0b05bc

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    invoke-static {p0}, La8/l0;->f(Landroid/content/Context;)Z

    move-result v1

    const v2, 0x7f0b064d

    if-eqz v1, :cond_1

    if-eqz p2, :cond_0

    const p2, 0x7f1209a0

    invoke-static {p0, p2}, La8/l0;->a(Landroid/content/Context;I)V

    const/4 p2, 0x0

    invoke-virtual {v0, p2}, Landroid/widget/ImageView;->setSelected(Z)V

    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    const v0, 0x7f06030d

    invoke-virtual {p2, v0}, Landroid/content/res/Resources;->getColor(I)I

    move-result p2

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setTextColor(I)V

    goto :goto_1

    :cond_0
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const p2, 0x7f081045

    goto :goto_0

    :cond_1
    if-eqz p2, :cond_2

    const p2, 0x7f1209a1

    invoke-static {p0, p2}, La8/l0;->a(Landroid/content/Context;I)V

    const/4 p2, 0x1

    invoke-virtual {v0, p2}, Landroid/widget/ImageView;->setSelected(Z)V

    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    const v0, 0x7f060366

    invoke-virtual {p2, v0}, Landroid/content/res/Resources;->getColor(I)I

    move-result p2

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setTextColor(I)V

    invoke-static {}, La8/j;->q()V

    goto :goto_1

    :cond_2
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const p2, 0x7f080626

    :goto_0
    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    :goto_1
    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 p2, 0x21

    const-string v0, "com.miui.gamebooster.service.action.SWITCHANTIMSG"

    if-le p1, p2, :cond_3

    invoke-static {}, Lx4/g;->a()Landroid/os/Bundle;

    move-result-object p1

    new-instance p2, Landroid/content/Intent;

    invoke-direct {p2, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    sget-object v0, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    const/4 v1, 0x0

    invoke-static {p0, p2, v0, v1, p1}, Lx4/v;->s(Landroid/content/Context;Landroid/content/Intent;Landroid/os/UserHandle;Ljava/lang/String;Landroid/os/Bundle;)V

    goto :goto_2

    :cond_3
    new-instance p1, Landroid/content/Intent;

    invoke-direct {p1, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    sget-object p2, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    invoke-virtual {p0, p1, p2}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    :goto_2
    const-string p0, "GameBoxFunctionUtils"

    const-string p1, "swtichAntiMsgMode"

    invoke-static {p0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public static w(Landroid/content/Context;Landroid/view/View;)V
    .locals 0
    return-void
.end method
