.class public Lc4/q;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method private static a(Landroid/content/Context;)Landroid/os/Bundle;
    .locals 3
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    sget-boolean v1, Lmiui/os/Build;->IS_INTERNATIONAL_BUILD:Z

    if-nez v1, :cond_0

    const/4 v1, 0x1

    const-string v2, "miui.showAction"

    invoke-virtual {v0, v2, v1}, Landroid/os/BaseBundle;->putBoolean(Ljava/lang/String;Z)V

    const v1, 0x7f08088c

    invoke-static {p0, v1}, Landroid/graphics/drawable/Icon;->createWithResource(Landroid/content/Context;I)Landroid/graphics/drawable/Icon;

    move-result-object p0

    const-string v1, "miui.appIcon"

    invoke-virtual {v0, v1, p0}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    :cond_0
    return-object v0
.end method

.method private static b(Landroid/content/Context;ILjava/lang/String;ILjava/lang/String;)V
    .locals 3

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "com.miui.cleaner_com.miui.cleaner_"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v1, "key_notification_id"

    invoke-virtual {v0, v1, p1}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string p1, "key_notificaton_text"

    invoke-virtual {v0, p1, p4}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/Locale;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p4, "key_notificaton_language"

    invoke-virtual {v0, p4, p1}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string p1, "key_notification_visible"

    const/4 p4, 0x1

    invoke-virtual {v0, p1, p4}, Landroid/os/BaseBundle;->putBoolean(Ljava/lang/String;Z)V

    const-string p1, "key_notification_action"

    invoke-virtual {v0, p1, p2}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide p1

    const-string p4, "key_notification_showtime"

    invoke-virtual {v0, p4, p1, p2}, Landroid/os/BaseBundle;->putLong(Ljava/lang/String;J)V

    int-to-long p1, p3

    const-string p3, "key_notification_duration"

    invoke-virtual {v0, p3, p1, p2}, Landroid/os/BaseBundle;->putLong(Ljava/lang/String;J)V

    invoke-static {p0, v0}, Lof/i;->k(Landroid/content/Context;Landroid/os/Bundle;)V

    return-void
.end method

.method public static c(Landroid/content/Context;)Lw4/b$b;
    .locals 2

    new-instance v0, Lw4/b$b;

    invoke-direct {v0, p0}, Lw4/b$b;-><init>(Landroid/content/Context;)V

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lw4/b$b;->l(I)Lw4/b$b;

    move-result-object v0

    const v1, 0x7f12008b

    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    const-string v1, "com.miui.cleanmaster"

    invoke-virtual {v0, v1, p0}, Lw4/b$b;->e(Ljava/lang/String;Ljava/lang/String;)Lw4/b$b;

    move-result-object p0

    const v0, 0x7f0804da

    invoke-virtual {p0, v0}, Lw4/b$b;->v(I)Lw4/b$b;

    move-result-object p0

    return-object p0
.end method

.method public static d(Landroid/content/Context;Z)V
    .locals 16

    move-object/from16 v0, p0

    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    const-string v3, "miui.intent.action.GARBAGE_DEEPCLEAN"

    invoke-virtual {v2, v3}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Intent;->toURI()Ljava/lang/String;

    move-result-object v3

    const-string v4, "extra_auto_start_scan"

    const/4 v5, 0x1

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v2, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    if-eqz p1, :cond_0

    const-string v4, "notification_available_space_lower_1g_a"

    goto :goto_0

    :cond_0
    const-string v4, "notification_available_space_lower_1g_b"

    :goto_0
    const-string v7, "enter_homepage_way"

    invoke-virtual {v2, v7, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const v4, 0x7f120efa

    const/4 v7, 0x0

    if-eqz p1, :cond_1

    new-array v8, v5, [Ljava/lang/Object;

    aput-object v6, v8, v7

    invoke-virtual {v1, v4, v8}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    const v9, 0x7f120f0d

    new-array v10, v5, [Ljava/lang/Object;

    aput-object v8, v10, v7

    invoke-virtual {v1, v9, v10}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    const v10, 0x7f060b48

    invoke-virtual {v1, v10}, Landroid/content/res/Resources;->getColor(I)I

    move-result v10

    invoke-static {v9, v8, v10}, Lc4/s;->a(Ljava/lang/String;Ljava/lang/String;I)Landroid/text/SpannableString;

    move-result-object v8

    const v9, 0x7f120f0e

    invoke-virtual {v1, v9}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v9

    const v10, 0x7f120ef2

    invoke-virtual {v1, v10}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v10

    const/16 v11, 0x7d4

    goto :goto_1

    :cond_1
    const v8, 0x7f120f0c

    invoke-virtual {v1, v8}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v8

    const v9, 0x7f120f0b

    invoke-virtual {v1, v9}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v9

    const v10, 0x7f120f0a

    invoke-virtual {v1, v10}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v10

    const/16 v11, 0x7d5

    :goto_1
    invoke-static/range {p0 .. p0}, Lc4/q;->a(Landroid/content/Context;)Landroid/os/Bundle;

    move-result-object v12

    invoke-static/range {p0 .. p0}, Lc4/q;->c(Landroid/content/Context;)Lw4/b$b;

    move-result-object v13

    invoke-virtual {v13, v5}, Lw4/b$b;->i(Z)Lw4/b$b;

    move-result-object v13

    invoke-virtual {v13, v7}, Lw4/b$b;->j(Z)Lw4/b$b;

    move-result-object v13

    invoke-virtual {v13, v5, v5}, Lw4/b$b;->w(ZI)Lw4/b$b;

    move-result-object v13

    const/16 v14, 0x7d0

    invoke-virtual {v13, v14}, Lw4/b$b;->r(I)Lw4/b$b;

    move-result-object v13

    const v14, 0x7f08088d

    invoke-virtual {v13, v14}, Lw4/b$b;->q(I)Lw4/b$b;

    move-result-object v13

    sget-boolean v15, Lmiui/os/Build;->IS_INTERNATIONAL_BUILD:Z

    if-eqz v15, :cond_2

    const v14, 0x7f0804da

    :cond_2
    invoke-virtual {v13, v14}, Lw4/b$b;->v(I)Lw4/b$b;

    move-result-object v13

    invoke-virtual {v13, v8}, Lw4/b$b;->h(Ljava/lang/CharSequence;)Lw4/b$b;

    move-result-object v8

    invoke-virtual {v8, v9}, Lw4/b$b;->g(Ljava/lang/CharSequence;)Lw4/b$b;

    move-result-object v8

    invoke-virtual {v8, v10}, Lw4/b$b;->c(Ljava/lang/String;)Lw4/b$b;

    move-result-object v8

    invoke-virtual {v8, v2, v7}, Lw4/b$b;->u(Landroid/content/Intent;I)Lw4/b$b;

    move-result-object v2

    invoke-virtual {v2, v12}, Lw4/b$b;->k(Landroid/os/Bundle;)Lw4/b$b;

    move-result-object v2

    invoke-virtual {v2}, Lw4/b$b;->a()Lw4/b;

    move-result-object v2

    invoke-virtual {v2}, Lw4/b;->I()V

    const/16 v2, 0x3e9

    const/4 v8, 0x6

    const-string v9, "Cleaner"

    invoke-static {v0, v9, v2, v8}, Lq4/b;->a(Landroid/content/Context;Ljava/lang/String;II)I

    move-result v2

    if-eqz p1, :cond_3

    const v8, 0x7f120f01

    new-array v9, v5, [Ljava/lang/Object;

    new-array v5, v5, [Ljava/lang/Object;

    aput-object v6, v5, v7

    invoke-virtual {v1, v4, v5}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v9, v7

    invoke-virtual {v1, v8, v9}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    goto :goto_2

    :cond_3
    const v4, 0x7f120f02

    invoke-virtual {v1, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    :goto_2
    invoke-static {v0, v11, v3, v2, v1}, Lc4/q;->b(Landroid/content/Context;ILjava/lang/String;ILjava/lang/String;)V

    return-void
.end method

.method public static e(Landroid/content/Context;)V
    .locals 12

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    const-string v2, "miui.intent.action.GARBAGE_CLEANUP"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Intent;->toURI()Ljava/lang/String;

    move-result-object v2

    const-string v3, "extra_auto_start_scan"

    const/4 v4, 0x1

    invoke-virtual {v1, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const-string v3, "enter_homepage_way"

    const-string v5, "notification_available_space_lower_1p5g"

    invoke-virtual {v1, v3, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    new-array v3, v4, [Ljava/lang/Object;

    const-wide/high16 v5, 0x3ff8000000000000L    # 1.5

    invoke-static {v5, v6}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v5

    const/4 v6, 0x0

    aput-object v5, v3, v6

    const v7, 0x7f120ef6

    invoke-virtual {v0, v7, v3}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    new-array v8, v4, [Ljava/lang/Object;

    aput-object v3, v8, v6

    const v9, 0x7f120f0d

    invoke-virtual {v0, v9, v8}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    const v9, 0x7f060b48

    invoke-virtual {v0, v9}, Landroid/content/res/Resources;->getColor(I)I

    move-result v9

    invoke-static {v8, v3, v9}, Lc4/s;->a(Ljava/lang/String;Ljava/lang/String;I)Landroid/text/SpannableString;

    move-result-object v3

    invoke-static {p0}, Lc4/q;->a(Landroid/content/Context;)Landroid/os/Bundle;

    move-result-object v8

    invoke-static {p0}, Lc4/q;->c(Landroid/content/Context;)Lw4/b$b;

    move-result-object v9

    invoke-virtual {v9, v4}, Lw4/b$b;->i(Z)Lw4/b$b;

    move-result-object v9

    invoke-virtual {v9, v6}, Lw4/b$b;->j(Z)Lw4/b$b;

    move-result-object v9

    const/16 v10, 0x7d0

    invoke-virtual {v9, v10}, Lw4/b$b;->r(I)Lw4/b$b;

    move-result-object v9

    const v10, 0x7f08088c

    invoke-virtual {v9, v10}, Lw4/b$b;->q(I)Lw4/b$b;

    move-result-object v9

    sget-boolean v11, Lmiui/os/Build;->IS_INTERNATIONAL_BUILD:Z

    if-eqz v11, :cond_0

    const v10, 0x7f0804da

    :cond_0
    invoke-virtual {v9, v10}, Lw4/b$b;->v(I)Lw4/b$b;

    move-result-object v9

    invoke-virtual {v9, v3}, Lw4/b$b;->h(Ljava/lang/CharSequence;)Lw4/b$b;

    move-result-object v3

    const v9, 0x7f120f0f

    invoke-virtual {v0, v9}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v3, v9}, Lw4/b$b;->g(Ljava/lang/CharSequence;)Lw4/b$b;

    move-result-object v3

    const v9, 0x7f120ef2

    invoke-virtual {v0, v9}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v3, v9}, Lw4/b$b;->c(Ljava/lang/String;)Lw4/b$b;

    move-result-object v3

    invoke-virtual {v3, v1, v6}, Lw4/b$b;->u(Landroid/content/Intent;I)Lw4/b$b;

    move-result-object v1

    invoke-virtual {v1, v8}, Lw4/b$b;->k(Landroid/os/Bundle;)Lw4/b$b;

    move-result-object v1

    invoke-virtual {v1}, Lw4/b$b;->a()Lw4/b;

    move-result-object v1

    invoke-virtual {v1}, Lw4/b;->I()V

    const/16 v1, 0x3ea

    const/4 v3, 0x6

    const-string v8, "Cleaner"

    invoke-static {p0, v8, v1, v3}, Lq4/b;->a(Landroid/content/Context;Ljava/lang/String;II)I

    move-result v1

    const v3, 0x7f120f00

    new-array v8, v4, [Ljava/lang/Object;

    new-array v4, v4, [Ljava/lang/Object;

    aput-object v5, v4, v6

    invoke-virtual {v0, v7, v4}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v8, v6

    invoke-virtual {v0, v3, v8}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const/16 v3, 0x7d3

    invoke-static {p0, v3, v2, v1, v0}, Lc4/q;->b(Landroid/content/Context;ILjava/lang/String;ILjava/lang/String;)V

    return-void
.end method

.method public static f(Landroid/content/Context;J)V
    .locals 5

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    const-string v2, "miui.intent.action.GARBAGE_CLEANUP"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v1

    const-string v2, "extra_auto_start_scan"

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    move-result-object v1

    const-string v2, "enter_homepage_way"

    const-string v4, "notification_rubbish_clean_normal"

    invoke-virtual {v1, v2, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v1

    invoke-static {p0, p1, p2}, Lsm/a;->a(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object p1

    new-array p2, v3, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, p2, v2

    const v4, 0x7f120efb

    invoke-virtual {v0, v4, p2}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    const v4, 0x7f060b48

    invoke-virtual {v0, v4}, Landroid/content/res/Resources;->getColor(I)I

    move-result v4

    invoke-static {p2, p1, v4}, Lc4/s;->a(Ljava/lang/String;Ljava/lang/String;I)Landroid/text/SpannableString;

    move-result-object p1

    invoke-static {p0}, Lc4/q;->a(Landroid/content/Context;)Landroid/os/Bundle;

    move-result-object p2

    invoke-static {p0}, Lc4/q;->c(Landroid/content/Context;)Lw4/b$b;

    move-result-object p0

    invoke-virtual {p0, v3}, Lw4/b$b;->i(Z)Lw4/b$b;

    move-result-object p0

    invoke-virtual {p0, v2}, Lw4/b$b;->j(Z)Lw4/b$b;

    move-result-object p0

    const/4 v4, 0x2

    invoke-virtual {p0, v3, v4}, Lw4/b$b;->w(ZI)Lw4/b$b;

    move-result-object p0

    const-string v3, "cm_general_clean_notification_cnt"

    const/4 v4, 0x5

    invoke-static {v3, v4}, Lr4/a;->h(Ljava/lang/String;I)I

    move-result v3

    invoke-virtual {p0, v3}, Lw4/b$b;->n(I)Lw4/b$b;

    move-result-object p0

    const/16 v3, 0x7d0

    invoke-virtual {p0, v3}, Lw4/b$b;->r(I)Lw4/b$b;

    move-result-object p0

    const v3, 0x7f08088c

    invoke-virtual {p0, v3}, Lw4/b$b;->q(I)Lw4/b$b;

    move-result-object p0

    sget-boolean v4, Lmiui/os/Build;->IS_INTERNATIONAL_BUILD:Z

    if-eqz v4, :cond_0

    const v3, 0x7f0804da

    :cond_0
    invoke-virtual {p0, v3}, Lw4/b$b;->v(I)Lw4/b$b;

    move-result-object p0

    invoke-virtual {p0, p1}, Lw4/b$b;->h(Ljava/lang/CharSequence;)Lw4/b$b;

    move-result-object p0

    const p1, 0x7f120ef4

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lw4/b$b;->g(Ljava/lang/CharSequence;)Lw4/b$b;

    move-result-object p0

    const p1, 0x7f120ef2

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lw4/b$b;->c(Ljava/lang/String;)Lw4/b$b;

    move-result-object p0

    invoke-virtual {p0, v1, v2}, Lw4/b$b;->u(Landroid/content/Intent;I)Lw4/b$b;

    move-result-object p0

    invoke-virtual {p0, p2}, Lw4/b$b;->k(Landroid/os/Bundle;)Lw4/b$b;

    move-result-object p0

    invoke-virtual {p0}, Lw4/b$b;->a()Lw4/b;

    move-result-object p0

    invoke-virtual {p0}, Lw4/b;->I()V

    return-void
.end method

.method public static g(Landroid/content/Context;J)V
    .locals 10

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    const-string v2, "miui.intent.action.GARBAGE_DEEPCLEAN"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Intent;->toURI()Ljava/lang/String;

    move-result-object v2

    const-string v3, "enter_homepage_way"

    const-string v4, "notification_low_storage"

    invoke-virtual {v1, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-wide/32 v3, 0x3b9aca00

    div-long/2addr p1, v3

    long-to-int p1, p1

    const/4 p2, 0x1

    new-array v3, p2, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const/4 v4, 0x0

    aput-object p1, v3, v4

    const p1, 0x7f120efa

    invoke-virtual {v0, p1, v3}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    new-array v3, p2, [Ljava/lang/Object;

    aput-object p1, v3, v4

    const v5, 0x7f120f0d

    invoke-virtual {v0, v5, v3}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    const v5, 0x7f060b48

    invoke-virtual {v0, v5}, Landroid/content/res/Resources;->getColor(I)I

    move-result v5

    invoke-static {v3, p1, v5}, Lc4/s;->a(Ljava/lang/String;Ljava/lang/String;I)Landroid/text/SpannableString;

    move-result-object v3

    invoke-static {p0}, Lc4/q;->a(Landroid/content/Context;)Landroid/os/Bundle;

    move-result-object v5

    invoke-static {p0}, Lc4/q;->c(Landroid/content/Context;)Lw4/b$b;

    move-result-object v6

    invoke-virtual {v6, p2}, Lw4/b$b;->i(Z)Lw4/b$b;

    move-result-object v6

    invoke-virtual {v6, v4}, Lw4/b$b;->j(Z)Lw4/b$b;

    move-result-object v6

    invoke-virtual {v6, p2, p2}, Lw4/b$b;->w(ZI)Lw4/b$b;

    move-result-object v6

    const/16 v7, 0x7d8

    invoke-virtual {v6, v7}, Lw4/b$b;->r(I)Lw4/b$b;

    move-result-object v6

    const v8, 0x7f08088d

    invoke-virtual {v6, v8}, Lw4/b$b;->q(I)Lw4/b$b;

    move-result-object v6

    sget-boolean v9, Lmiui/os/Build;->IS_INTERNATIONAL_BUILD:Z

    if-eqz v9, :cond_0

    const v8, 0x7f0804da

    :cond_0
    invoke-virtual {v6, v8}, Lw4/b$b;->v(I)Lw4/b$b;

    move-result-object v6

    invoke-virtual {v6, v3}, Lw4/b$b;->h(Ljava/lang/CharSequence;)Lw4/b$b;

    move-result-object v3

    const v6, 0x7f120f0e

    invoke-virtual {v0, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6}, Lw4/b$b;->g(Ljava/lang/CharSequence;)Lw4/b$b;

    move-result-object v3

    const v6, 0x7f120ef2

    invoke-virtual {v0, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6}, Lw4/b$b;->c(Ljava/lang/String;)Lw4/b$b;

    move-result-object v3

    invoke-virtual {v3, v1, v4}, Lw4/b$b;->u(Landroid/content/Intent;I)Lw4/b$b;

    move-result-object v1

    invoke-virtual {v1, v5}, Lw4/b$b;->k(Landroid/os/Bundle;)Lw4/b$b;

    move-result-object v1

    invoke-virtual {v1}, Lw4/b$b;->a()Lw4/b;

    move-result-object v1

    invoke-virtual {v1}, Lw4/b;->I()V

    const/16 v1, 0x3f2

    const/4 v3, 0x6

    const-string v5, "Cleaner"

    invoke-static {p0, v5, v1, v3}, Lq4/b;->a(Landroid/content/Context;Ljava/lang/String;II)I

    move-result v1

    const v3, 0x7f120f00

    new-array p2, p2, [Ljava/lang/Object;

    aput-object p1, p2, v4

    invoke-virtual {v0, v3, p2}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, v7, v2, v1, p1}, Lc4/q;->b(Landroid/content/Context;ILjava/lang/String;ILjava/lang/String;)V

    return-void
.end method

.method public static h(Landroid/content/Context;)V
    .locals 9

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    const-string v2, "miui.intent.action.GARBAGE_DEEPCLEAN_QQ"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Intent;->toURI()Ljava/lang/String;

    move-result-object v2

    const-string v3, "enterWay"

    const-string v4, "notification_qq_clean"

    invoke-virtual {v1, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    invoke-static {p0}, Lc4/q;->a(Landroid/content/Context;)Landroid/os/Bundle;

    move-result-object v3

    invoke-static {p0}, Lc4/q;->c(Landroid/content/Context;)Lw4/b$b;

    move-result-object v4

    const/4 v5, 0x1

    invoke-virtual {v4, v5}, Lw4/b$b;->i(Z)Lw4/b$b;

    move-result-object v4

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Lw4/b$b;->j(Z)Lw4/b$b;

    move-result-object v4

    const/16 v6, 0xfa0

    invoke-virtual {v4, v6}, Lw4/b$b;->r(I)Lw4/b$b;

    move-result-object v4

    const v7, 0x7f08088e

    invoke-virtual {v4, v7}, Lw4/b$b;->q(I)Lw4/b$b;

    move-result-object v4

    sget-boolean v8, Lmiui/os/Build;->IS_INTERNATIONAL_BUILD:Z

    if-eqz v8, :cond_0

    const v7, 0x7f0804da

    :cond_0
    invoke-virtual {v4, v7}, Lw4/b$b;->v(I)Lw4/b$b;

    move-result-object v4

    const v7, 0x7f120f1a

    invoke-virtual {v0, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v7}, Lw4/b$b;->h(Ljava/lang/CharSequence;)Lw4/b$b;

    move-result-object v4

    const v7, 0x7f120f19

    invoke-virtual {v0, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v7}, Lw4/b$b;->g(Ljava/lang/CharSequence;)Lw4/b$b;

    move-result-object v4

    const v7, 0x7f120ef2

    invoke-virtual {v0, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v7}, Lw4/b$b;->c(Ljava/lang/String;)Lw4/b$b;

    move-result-object v4

    invoke-virtual {v4, v1, v5}, Lw4/b$b;->u(Landroid/content/Intent;I)Lw4/b$b;

    move-result-object v1

    invoke-virtual {v1, v3}, Lw4/b$b;->k(Landroid/os/Bundle;)Lw4/b$b;

    move-result-object v1

    invoke-virtual {v1}, Lw4/b$b;->a()Lw4/b;

    move-result-object v1

    invoke-virtual {v1}, Lw4/b;->I()V

    const/16 v1, 0x3f1

    const/4 v3, 0x2

    const-string v4, "Cleaner"

    invoke-static {p0, v4, v1, v3}, Lq4/b;->a(Landroid/content/Context;Ljava/lang/String;II)I

    move-result v1

    const v3, 0x7f120f05

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v6, v2, v1, v0}, Lc4/q;->b(Landroid/content/Context;ILjava/lang/String;ILjava/lang/String;)V

    return-void
.end method

.method public static i(Landroid/content/Context;)V
    .locals 6

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    const-string v2, "miui.intent.action.GARBAGE_CLEANUP"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v1

    const-string v2, "extra_auto_start_scan"

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    move-result-object v1

    const-string v2, "enter_homepage_way"

    const-string v4, "notification_uninstall_residue"

    invoke-virtual {v1, v2, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v1

    invoke-static {p0}, Lc4/q;->a(Landroid/content/Context;)Landroid/os/Bundle;

    move-result-object v2

    invoke-static {p0}, Lc4/q;->c(Landroid/content/Context;)Lw4/b$b;

    move-result-object p0

    invoke-virtual {p0, v3}, Lw4/b$b;->i(Z)Lw4/b$b;

    move-result-object p0

    const/4 v4, 0x0

    invoke-virtual {p0, v4}, Lw4/b$b;->j(Z)Lw4/b$b;

    move-result-object p0

    const/4 v5, 0x3

    invoke-virtual {p0, v3, v5}, Lw4/b$b;->w(ZI)Lw4/b$b;

    move-result-object p0

    const/16 v3, 0x1b58

    invoke-virtual {p0, v3}, Lw4/b$b;->r(I)Lw4/b$b;

    move-result-object p0

    sget-boolean v3, Lmiui/os/Build;->IS_INTERNATIONAL_BUILD:Z

    const v5, 0x7f08088c

    if-eqz v3, :cond_0

    const v3, 0x7f0804da

    goto :goto_0

    :cond_0
    move v3, v5

    :goto_0
    invoke-virtual {p0, v3}, Lw4/b$b;->v(I)Lw4/b$b;

    move-result-object p0

    invoke-virtual {p0, v5}, Lw4/b$b;->q(I)Lw4/b$b;

    move-result-object p0

    const v3, 0x7f120f1d

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lw4/b$b;->h(Ljava/lang/CharSequence;)Lw4/b$b;

    move-result-object p0

    const v3, 0x7f120f1c

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lw4/b$b;->g(Ljava/lang/CharSequence;)Lw4/b$b;

    move-result-object p0

    const v3, 0x7f120ef2

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lw4/b$b;->c(Ljava/lang/String;)Lw4/b$b;

    move-result-object p0

    invoke-virtual {p0, v1, v4}, Lw4/b$b;->u(Landroid/content/Intent;I)Lw4/b$b;

    move-result-object p0

    invoke-virtual {p0, v2}, Lw4/b$b;->k(Landroid/os/Bundle;)Lw4/b$b;

    move-result-object p0

    invoke-virtual {p0}, Lw4/b$b;->a()Lw4/b;

    move-result-object p0

    invoke-virtual {p0}, Lw4/b;->I()V

    return-void
.end method

.method public static j(Landroid/content/Context;I)V
    .locals 11

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const/4 v1, 0x1

    new-array v2, v1, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/4 v4, 0x0

    aput-object v3, v2, v4

    const v3, 0x7f10007f

    invoke-virtual {v0, v3, p1, v2}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    const v5, 0x7f060b48

    invoke-virtual {v0, v5}, Landroid/content/res/Resources;->getColor(I)I

    move-result v5

    invoke-static {v2, v3, v5}, Lc4/s;->a(Ljava/lang/String;Ljava/lang/String;I)Landroid/text/SpannableString;

    move-result-object v2

    new-instance v3, Landroid/content/Intent;

    invoke-direct {v3}, Landroid/content/Intent;-><init>()V

    const-string v5, "miui.intent.action.GARBAGE_APK_MANAGE"

    invoke-virtual {v3, v5}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Intent;->toURI()Ljava/lang/String;

    move-result-object v5

    const-string v6, "extra_auto_start_scan"

    invoke-virtual {v3, v6, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const-string v6, "enter_homepage_way"

    const-string v7, "notification_useless_apk_multi"

    invoke-virtual {v3, v6, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    invoke-static {p0}, Lc4/q;->a(Landroid/content/Context;)Landroid/os/Bundle;

    move-result-object v6

    invoke-static {p0}, Lc4/q;->c(Landroid/content/Context;)Lw4/b$b;

    move-result-object v7

    invoke-virtual {v7, v1}, Lw4/b$b;->i(Z)Lw4/b$b;

    move-result-object v7

    invoke-virtual {v7, v4}, Lw4/b$b;->j(Z)Lw4/b$b;

    move-result-object v7

    const/16 v8, 0x7d6

    invoke-virtual {v7, v8}, Lw4/b$b;->r(I)Lw4/b$b;

    move-result-object v7

    const v9, 0x7f08088c

    invoke-virtual {v7, v9}, Lw4/b$b;->q(I)Lw4/b$b;

    move-result-object v7

    sget-boolean v10, Lmiui/os/Build;->IS_INTERNATIONAL_BUILD:Z

    if-eqz v10, :cond_0

    const v9, 0x7f0804da

    :cond_0
    invoke-virtual {v7, v9}, Lw4/b$b;->v(I)Lw4/b$b;

    move-result-object v7

    invoke-virtual {v7, v2}, Lw4/b$b;->h(Ljava/lang/CharSequence;)Lw4/b$b;

    move-result-object v2

    const v7, 0x7f120eea

    invoke-virtual {v0, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v2, v7}, Lw4/b$b;->g(Ljava/lang/CharSequence;)Lw4/b$b;

    move-result-object v2

    const v7, 0x7f120ef2

    invoke-virtual {v0, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v2, v7}, Lw4/b$b;->c(Ljava/lang/String;)Lw4/b$b;

    move-result-object v2

    invoke-virtual {v2, v3, v4}, Lw4/b$b;->u(Landroid/content/Intent;I)Lw4/b$b;

    move-result-object v2

    invoke-virtual {v2, v6}, Lw4/b$b;->k(Landroid/os/Bundle;)Lw4/b$b;

    move-result-object v2

    invoke-virtual {v2}, Lw4/b$b;->a()Lw4/b;

    move-result-object v2

    invoke-virtual {v2}, Lw4/b;->I()V

    const/16 v2, 0x3f0

    const/4 v3, 0x2

    const-string v6, "Cleaner"

    invoke-static {p0, v6, v2, v3}, Lq4/b;->a(Landroid/content/Context;Ljava/lang/String;II)I

    move-result v2

    const v3, 0x7f100080

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v1, v4

    invoke-virtual {v0, v3, p1, v1}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, v8, v5, v2, p1}, Lc4/q;->b(Landroid/content/Context;ILjava/lang/String;ILjava/lang/String;)V

    return-void
.end method

.method public static k(Landroid/content/Context;)V
    .locals 6

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    const-string v2, "miui.intent.action.GARBAGE_DEEPCLEAN_WECHAT"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v1

    const-string v2, "enterWay"

    const-string v3, "notification_wechat_clean_lower_1g"

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v1

    invoke-static {p0}, Lc4/q;->a(Landroid/content/Context;)Landroid/os/Bundle;

    move-result-object v2

    invoke-static {p0}, Lc4/q;->c(Landroid/content/Context;)Lw4/b$b;

    move-result-object p0

    const/4 v3, 0x1

    invoke-virtual {p0, v3}, Lw4/b$b;->i(Z)Lw4/b$b;

    move-result-object p0

    const/4 v4, 0x0

    invoke-virtual {p0, v4}, Lw4/b$b;->j(Z)Lw4/b$b;

    move-result-object p0

    const/4 v5, 0x2

    invoke-virtual {p0, v3, v5}, Lw4/b$b;->w(ZI)Lw4/b$b;

    move-result-object p0

    const-string v3, "cm_wechat_notification_cnt"

    const/4 v5, 0x5

    invoke-static {v3, v5}, Lr4/a;->h(Ljava/lang/String;I)I

    move-result v3

    invoke-virtual {p0, v3}, Lw4/b$b;->n(I)Lw4/b$b;

    move-result-object p0

    const/16 v3, 0xbb8

    invoke-virtual {p0, v3}, Lw4/b$b;->r(I)Lw4/b$b;

    move-result-object p0

    const v3, 0x7f08088f

    invoke-virtual {p0, v3}, Lw4/b$b;->q(I)Lw4/b$b;

    move-result-object p0

    sget-boolean v5, Lmiui/os/Build;->IS_INTERNATIONAL_BUILD:Z

    if-eqz v5, :cond_0

    const v3, 0x7f0804da

    :cond_0
    invoke-virtual {p0, v3}, Lw4/b$b;->v(I)Lw4/b$b;

    move-result-object p0

    const v3, 0x7f120f22

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lw4/b$b;->h(Ljava/lang/CharSequence;)Lw4/b$b;

    move-result-object p0

    const v3, 0x7f120f21

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lw4/b$b;->g(Ljava/lang/CharSequence;)Lw4/b$b;

    move-result-object p0

    const v3, 0x7f120ef2

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lw4/b$b;->c(Ljava/lang/String;)Lw4/b$b;

    move-result-object p0

    invoke-virtual {p0, v1, v4}, Lw4/b$b;->u(Landroid/content/Intent;I)Lw4/b$b;

    move-result-object p0

    invoke-virtual {p0, v2}, Lw4/b$b;->k(Landroid/os/Bundle;)Lw4/b$b;

    move-result-object p0

    invoke-virtual {p0}, Lw4/b$b;->a()Lw4/b;

    move-result-object p0

    invoke-virtual {p0}, Lw4/b;->I()V

    return-void
.end method

.method public static l(Landroid/content/Context;Z)V
    .locals 10

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    const-string v2, "miui.intent.action.GARBAGE_DEEPCLEAN_WECHAT"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Intent;->toURI()Ljava/lang/String;

    move-result-object v2

    if-eqz p1, :cond_0

    const-string v3, "notification_wechat_clean_2g_a"

    goto :goto_0

    :cond_0
    const-string v3, "notification_wechat_clean_2g_b"

    :goto_0
    const-string v4, "enterWay"

    invoke-virtual {v1, v4, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    if-eqz p1, :cond_1

    const v3, 0x7f120f1f

    goto :goto_1

    :cond_1
    const v3, 0x7f120f20

    :goto_1
    if-eqz p1, :cond_2

    const/16 v4, 0xbb9

    goto :goto_2

    :cond_2
    const/16 v4, 0xbba

    :goto_2
    invoke-static {p0}, Lc4/q;->a(Landroid/content/Context;)Landroid/os/Bundle;

    move-result-object v5

    invoke-static {p0}, Lc4/q;->c(Landroid/content/Context;)Lw4/b$b;

    move-result-object v6

    const/4 v7, 0x1

    invoke-virtual {v6, v7}, Lw4/b$b;->i(Z)Lw4/b$b;

    move-result-object v6

    const/4 v7, 0x0

    invoke-virtual {v6, v7}, Lw4/b$b;->j(Z)Lw4/b$b;

    move-result-object v6

    const/16 v8, 0xbb8

    invoke-virtual {v6, v8}, Lw4/b$b;->r(I)Lw4/b$b;

    move-result-object v6

    const v8, 0x7f08088f

    invoke-virtual {v6, v8}, Lw4/b$b;->q(I)Lw4/b$b;

    move-result-object v6

    sget-boolean v9, Lmiui/os/Build;->IS_INTERNATIONAL_BUILD:Z

    if-eqz v9, :cond_3

    const v8, 0x7f0804da

    :cond_3
    invoke-virtual {v6, v8}, Lw4/b$b;->v(I)Lw4/b$b;

    move-result-object v6

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v6, v3}, Lw4/b$b;->h(Ljava/lang/CharSequence;)Lw4/b$b;

    move-result-object v3

    const v6, 0x7f120f1e

    invoke-virtual {v0, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6}, Lw4/b$b;->g(Ljava/lang/CharSequence;)Lw4/b$b;

    move-result-object v3

    const v6, 0x7f120ef2

    invoke-virtual {v0, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6}, Lw4/b$b;->c(Ljava/lang/String;)Lw4/b$b;

    move-result-object v3

    invoke-virtual {v3, v1, v7}, Lw4/b$b;->u(Landroid/content/Intent;I)Lw4/b$b;

    move-result-object v1

    invoke-virtual {v1, v5}, Lw4/b$b;->k(Landroid/os/Bundle;)Lw4/b$b;

    move-result-object v1

    invoke-virtual {v1}, Lw4/b$b;->a()Lw4/b;

    move-result-object v1

    invoke-virtual {v1}, Lw4/b;->I()V

    const/16 v1, 0x3ed

    const/4 v3, 0x2

    const-string v5, "Cleaner"

    invoke-static {p0, v5, v1, v3}, Lq4/b;->a(Landroid/content/Context;Ljava/lang/String;II)I

    move-result v1

    if-eqz p1, :cond_4

    const p1, 0x7f120f03

    goto :goto_3

    :cond_4
    const p1, 0x7f120f04

    :goto_3
    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, v4, v2, v1, p1}, Lc4/q;->b(Landroid/content/Context;ILjava/lang/String;ILjava/lang/String;)V

    return-void
.end method
