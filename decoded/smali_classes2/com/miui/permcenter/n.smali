.class public Lcom/miui/permcenter/n;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final a:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field private static final b:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    sput-object v0, Lcom/miui/permcenter/n;->a:Ljava/util/Set;

    const-wide/16 v1, 0x20

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    sput-object v0, Lcom/miui/permcenter/n;->b:Ljava/util/Set;

    const-string v1, "com.duokan.phone.remotecontroller"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    const-string v1, "com.miui.huanji"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    const-string v1, "com.google.android.syncadapters.contacts"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    const-string v1, "com.miui.calculator"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    const-string v1, "com.miui.calculator2"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    const-string v1, "com.android.email"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    const-string v1, "com.miui.screenrecorder"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    const-string v1, "com.mi.liveassistant"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    const-string v1, "com.xiaomi.mifisecurity"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    const-string v1, "com.miui.virtualsim"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    const-string v1, "com.xiaomi.pass"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    const-string v1, "com.xiaomi.shop"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    const-string v1, "com.miui.smarttravel"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    const-string v1, "com.xiaomi.drivemode"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    const-string v1, "com.xiaomi.gamecenter.sdk.service"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    const-string v1, "com.miui.userguide"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    const-string v1, "com.xiaomi.jr"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    const-string v1, "com.xiaomi.mibrain.speech"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    const-string v1, "com.mi.health"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    const-string v1, "com.standardar.service"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    const-string v1, "com.miui.compass"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    const-string v1, "com.miui.notes"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    const-string v1, "com.xiaomi.gamecenter"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    const-string v1, "com.miui.cleanmaster"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    sget-boolean v1, Lmiui/os/Build;->IS_INTERNATIONAL_BUILD:Z

    if-eqz v1, :cond_0

    const-string v1, "com.miui.cleaner"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    :cond_0
    const-string v1, "com.miui.weather2"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    const-string v1, "com.xiaomi.scanner"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    const-string v1, "com.xiaomi.mimobile.noti"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    const-string v1, "com.xiaomi.vipaccount"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    const-string v1, "cn.wps.moffice_eng.xiaomi.lite"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    const-string v1, "com.duokan.reader"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    const-string v1, "com.example.testandroid"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    const-string v1, "com.xiaomi.mirror"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    const-string v1, "com.baidu.input_mi"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    const-string v1, "com.iflytek.inputmethod.miui"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    const-string v1, "com.sohu.inputmethod.sogou.xiaomi"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    const-string v1, "com.miui.newmidrive"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    const-string v1, "com.android.emailhd"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    const-string v1, "com.mfashiongallery.emag"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    const-string v1, "com.miui.player"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    const-string v1, "com.android.calendar"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    const-string v1, "com.miui.gallery"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    const-string v1, "com.android.deskclcok"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    const-string v1, "com.miui.video"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    const-string v1, "com.miui.securitycenter"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    const-string v1, "com.mipay.wallet"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    const-string v1, "com.android.thememanager"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    const-string v1, "com.miui.miservice"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    const-string v1, "com.android.stk"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    const-string v1, "com.miui.voiceassist"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    const-string v1, "com.android.providers.downloads.ui"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    const-string v1, "com.xiaomi.aicr"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    const-string v1, "com.miui.cameradetect"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    const-string v1, "com.hyperos.aitoolbox"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public static A(Landroid/content/Context;J)Ljava/util/ArrayList;
    .locals 34
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "J)",
            "Ljava/util/ArrayList<",
            "Lcom/miui/permcenter/AppPermissionInfo;",
            ">;"
        }
    .end annotation

    invoke-static {}, Lmc/c;->l()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static/range {p0 .. p2}, Lcom/miui/permcenter/l;->p(Landroid/content/Context;J)Ljava/util/ArrayList;

    move-result-object v0

    return-object v0

    :cond_0
    invoke-static/range {p0 .. p0}, Li4/a;->k(Landroid/content/Context;)Li4/a;

    move-result-object v0

    invoke-virtual {v0}, Li4/a;->j()Ljava/util/List;

    move-result-object v0

    new-instance v15, Ljava/util/HashMap;

    invoke-direct {v15}, Ljava/util/HashMap;-><init>()V

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    const/4 v11, 0x1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/pm/PackageInfo;

    iget-object v2, v1, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v3, v2, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/2addr v3, v11

    if-nez v3, :cond_1

    iget-object v1, v1, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v15, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_2
    const/4 v0, 0x3

    const/4 v12, 0x4

    const/4 v9, 0x5

    const/4 v10, 0x6

    const-string v1, "pkgName"

    const-string v2, "suggestAccept"

    const-string v3, "suggestPrompt"

    const-string v4, "suggestReject"

    const-string v5, "userAccept"

    const-string v6, "userPrompt"

    const-string v7, "userReject"

    filled-new-array/range {v1 .. v7}, [Ljava/lang/String;

    move-result-object v18

    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    const/4 v1, 0x0

    :try_start_0
    invoke-static/range {p1 .. p2}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v16

    sget-object v17, Lcom/miui/permission/PermissionContract$Active;->URI:Landroid/net/Uri;

    const-string v19, "permMask& ? != 0 and +present!= 0 and suggestBlock & ? == 0 "

    const/4 v8, 0x2

    new-array v3, v8, [Ljava/lang/String;

    const/4 v4, 0x0

    aput-object v2, v3, v4

    aput-object v2, v3, v11

    const/16 v21, 0x0

    move-object/from16 v20, v3

    invoke-virtual/range {v16 .. v21}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    if-eqz v3, :cond_7

    :goto_1
    :try_start_1
    invoke-interface {v3}, Landroid/database/Cursor;->moveToNext()Z

    move-result v1

    if-eqz v1, :cond_6

    invoke-interface {v3, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v15, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/pm/ApplicationInfo;

    if-nez v2, :cond_3

    goto :goto_1

    :cond_3
    invoke-interface {v3, v11}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v16

    invoke-interface {v3, v8}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v18

    invoke-interface {v3, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v20

    invoke-interface {v3, v12}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v22

    invoke-interface {v3, v9}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v24

    invoke-interface {v3, v10}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v26
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    and-long v5, v22, p1

    const-wide/16 v13, 0x0

    cmp-long v5, v5, v13

    if-nez v5, :cond_4

    and-long v5, v24, p1

    cmp-long v5, v5, v13

    if-nez v5, :cond_4

    and-long v5, v26, p1

    cmp-long v5, v5, v13

    if-eqz v5, :cond_5

    :cond_4
    and-long v5, v16, p1

    cmp-long v5, v5, v13

    if-nez v5, :cond_5

    const-wide/16 v5, 0x0

    const-wide/16 v13, 0x0

    move-object v0, v1

    move-object/from16 v28, v2

    move-wide/from16 v1, p1

    move-object/from16 v29, v3

    move/from16 v30, v4

    move-wide/from16 v3, v16

    move-object/from16 v31, v7

    move/from16 v32, v8

    move-wide/from16 v7, v18

    move/from16 v19, v9

    move/from16 v33, v10

    move-wide/from16 v9, v20

    move/from16 v21, v11

    move/from16 v20, v12

    move-wide/from16 v11, v22

    move-object/from16 v22, v15

    move-wide/from16 v15, v24

    move-wide/from16 v17, v26

    :try_start_2
    invoke-static/range {v1 .. v18}, Lcom/miui/permission/PermissionManager;->calculatePermissionAction(JJJJJJJJJ)I

    move-result v1

    new-instance v2, Lcom/miui/permcenter/AppPermissionInfo;

    invoke-direct {v2}, Lcom/miui/permcenter/AppPermissionInfo;-><init>()V

    invoke-virtual {v2, v0}, Lcom/miui/permcenter/AppPermissionInfo;->setPackageName(Ljava/lang/String;)V

    move-object/from16 v0, p0

    move-object/from16 v3, v28

    invoke-static {v0, v3}, Lx4/f1;->P(Landroid/content/Context;Landroid/content/pm/ApplicationInfo;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/miui/permcenter/AppPermissionInfo;->setLabel(Ljava/lang/String;)V

    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    invoke-static/range {p1 .. p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v3, v4, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v2, v3}, Lcom/miui/permcenter/AppPermissionInfo;->setPermissionToAction(Ljava/util/HashMap;)V

    move-object/from16 v1, v31

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    :cond_5
    move-object/from16 v0, p0

    move-object/from16 v29, v3

    move/from16 v30, v4

    move-object v1, v7

    move/from16 v32, v8

    move/from16 v19, v9

    move/from16 v33, v10

    move/from16 v21, v11

    move/from16 v20, v12

    move-object/from16 v22, v15

    :goto_2
    move-object v7, v1

    move/from16 v9, v19

    move/from16 v12, v20

    move/from16 v11, v21

    move-object/from16 v15, v22

    move-object/from16 v3, v29

    move/from16 v4, v30

    move/from16 v8, v32

    move/from16 v10, v33

    const/4 v0, 0x3

    goto/16 :goto_1

    :cond_6
    move-object/from16 v29, v3

    move-object v1, v7

    new-instance v0, Lcom/miui/permcenter/b;

    invoke-direct {v0}, Lcom/miui/permcenter/b;-><init>()V

    invoke-static {v1, v0}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_4

    :catchall_0
    move-exception v0

    goto :goto_3

    :catchall_1
    move-exception v0

    move-object/from16 v29, v3

    :goto_3
    move-object/from16 v1, v29

    goto :goto_5

    :cond_7
    move-object/from16 v29, v3

    move-object v1, v7

    :goto_4
    invoke-static/range {v29 .. v29}, Lbl/e;->a(Ljava/io/Closeable;)V

    return-object v1

    :catchall_2
    move-exception v0

    :goto_5
    invoke-static {v1}, Lbl/e;->a(Ljava/io/Closeable;)V

    throw v0
.end method

.method public static B(Landroid/content/Context;J)Ljava/util/ArrayList;
    .locals 36
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "J)",
            "Ljava/util/ArrayList<",
            "Lcom/miui/permcenter/AppPermissionInfo;",
            ">;"
        }
    .end annotation

    move-object/from16 v0, p0

    invoke-static/range {p0 .. p0}, Li4/a;->k(Landroid/content/Context;)Li4/a;

    move-result-object v1

    invoke-virtual {v1}, Li4/a;->j()Ljava/util/List;

    move-result-object v1

    new-instance v15, Ljava/util/HashMap;

    invoke-direct {v15}, Ljava/util/HashMap;-><init>()V

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    const/4 v11, 0x1

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/pm/PackageInfo;

    invoke-static {v0, v2}, Lcom/miui/permission/RequiredPermissionsUtil;->isAdaptedRequiredPermissionsOnData(Landroid/content/Context;Landroid/content/pm/PackageInfo;)Z

    move-result v3

    if-eqz v3, :cond_1

    goto :goto_0

    :cond_1
    iget-object v3, v2, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v4, v3, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/2addr v4, v11

    if-nez v4, :cond_0

    iget v4, v3, Landroid/content/pm/ApplicationInfo;->uid:I

    const/16 v5, 0x2710

    if-lt v4, v5, :cond_0

    iget-object v2, v2, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v15, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_2
    const/4 v12, 0x3

    const/4 v9, 0x4

    const/4 v10, 0x5

    const/4 v7, 0x6

    const-string v16, "pkgName"

    const-string v17, "suggestAccept"

    const-string v18, "suggestPrompt"

    const-string v19, "suggestReject"

    const-string v20, "userAccept"

    const-string v21, "userPrompt"

    const-string v22, "userReject"

    filled-new-array/range {v16 .. v22}, [Ljava/lang/String;

    move-result-object v3

    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    :try_start_0
    invoke-static/range {p1 .. p2}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    sget-object v4, Lcom/miui/permission/PermissionContract$Active;->URI:Landroid/net/Uri;

    const-string v5, "permMask& ? != 0 and +present!= 0 and suggestBlock & ? == 0 "

    const/4 v14, 0x2

    new-array v6, v14, [Ljava/lang/String;

    const/4 v13, 0x0

    aput-object v1, v6, v13

    aput-object v1, v6, v11

    const/16 v17, 0x0

    move-object v1, v2

    move-object v2, v4

    move-object v4, v5

    move-object v5, v6

    move-object/from16 v6, v17

    invoke-virtual/range {v1 .. v6}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    if-eqz v3, :cond_7

    :goto_1
    :try_start_1
    invoke-interface {v3}, Landroid/database/Cursor;->moveToNext()Z

    move-result v1

    if-eqz v1, :cond_6

    invoke-interface {v3, v13}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v15, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/pm/ApplicationInfo;

    if-nez v1, :cond_3

    goto :goto_1

    :cond_3
    invoke-interface {v3, v11}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v16

    invoke-interface {v3, v14}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v18

    invoke-interface {v3, v12}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v20

    invoke-interface {v3, v9}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v22

    invoke-interface {v3, v10}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v24

    invoke-interface {v3, v7}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v26
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    and-long v5, v22, p1

    const-wide/16 v28, 0x0

    cmp-long v2, v5, v28

    if-nez v2, :cond_4

    and-long v5, v24, p1

    cmp-long v2, v5, v28

    if-nez v2, :cond_4

    and-long v5, v26, p1

    cmp-long v2, v5, v28

    if-eqz v2, :cond_5

    :cond_4
    and-long v5, v16, p1

    cmp-long v2, v5, v28

    if-nez v2, :cond_5

    const-wide/16 v5, 0x0

    const-wide/16 v28, 0x0

    move/from16 v31, v13

    move/from16 v30, v14

    move-wide/from16 v13, v28

    move-object/from16 v32, v1

    move-wide/from16 v1, p1

    move-object/from16 v28, v3

    move-object/from16 v33, v4

    move-wide/from16 v3, v16

    move/from16 v29, v7

    move-object/from16 v34, v8

    move-wide/from16 v7, v18

    move/from16 v19, v9

    move/from16 v35, v10

    move-wide/from16 v9, v20

    move/from16 v21, v11

    move/from16 v20, v12

    move-wide/from16 v11, v22

    move-object/from16 v22, v15

    move-wide/from16 v15, v24

    move-wide/from16 v17, v26

    :try_start_2
    invoke-static/range {v1 .. v18}, Lcom/miui/permission/PermissionManager;->calculatePermissionAction(JJJJJJJJJ)I

    move-result v1

    new-instance v2, Lcom/miui/permcenter/AppPermissionInfo;

    invoke-direct {v2}, Lcom/miui/permcenter/AppPermissionInfo;-><init>()V

    move-object/from16 v3, v33

    invoke-virtual {v2, v3}, Lcom/miui/permcenter/AppPermissionInfo;->setPackageName(Ljava/lang/String;)V

    move-object/from16 v3, v32

    invoke-static {v0, v3}, Lx4/f1;->P(Landroid/content/Context;Landroid/content/pm/ApplicationInfo;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/miui/permcenter/AppPermissionInfo;->setLabel(Ljava/lang/String;)V

    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    invoke-static/range {p1 .. p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v3, v4, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v2, v3}, Lcom/miui/permcenter/AppPermissionInfo;->setPermissionToAction(Ljava/util/HashMap;)V

    move-object/from16 v1, v34

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    :cond_5
    move-object/from16 v28, v3

    move/from16 v29, v7

    move-object v1, v8

    move/from16 v19, v9

    move/from16 v35, v10

    move/from16 v21, v11

    move/from16 v20, v12

    move/from16 v31, v13

    move/from16 v30, v14

    move-object/from16 v22, v15

    :goto_2
    move-object v8, v1

    move/from16 v9, v19

    move/from16 v12, v20

    move/from16 v11, v21

    move-object/from16 v15, v22

    move-object/from16 v3, v28

    move/from16 v7, v29

    move/from16 v14, v30

    move/from16 v13, v31

    move/from16 v10, v35

    goto/16 :goto_1

    :cond_6
    move-object/from16 v28, v3

    move-object v1, v8

    new-instance v0, Lcom/miui/permcenter/b;

    invoke-direct {v0}, Lcom/miui/permcenter/b;-><init>()V

    invoke-static {v1, v0}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_4

    :catchall_0
    move-exception v0

    goto :goto_3

    :catchall_1
    move-exception v0

    move-object/from16 v28, v3

    :goto_3
    move-object/from16 v13, v28

    goto :goto_5

    :cond_7
    move-object/from16 v28, v3

    move-object v1, v8

    :goto_4
    invoke-static/range {v28 .. v28}, Lbl/e;->a(Ljava/io/Closeable;)V

    return-object v1

    :catchall_2
    move-exception v0

    const/4 v13, 0x0

    :goto_5
    invoke-static {v13}, Lbl/e;->a(Ljava/io/Closeable;)V

    throw v0
.end method

.method public static C(Landroid/content/Context;Ljava/util/List;Ljava/util/List;Lxc/c;Lak/l;I)Ljava/util/ArrayList;
    .locals 60
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List<",
            "Landroid/content/pm/PackageInfo;",
            ">;",
            "Ljava/util/List<",
            "Ljava/lang/Long;",
            ">;",
            "Lxc/c<",
            "Landroid/content/pm/ApplicationInfo;",
            ">;",
            "Lak/l<",
            "Landroid/content/pm/PackageInfo;",
            "Ljava/lang/Boolean;",
            ">;I)",
            "Ljava/util/ArrayList<",
            "Lcom/miui/permcenter/AppPermissionInfo;",
            ">;"
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v1, p3

    new-instance v2, Ljava/util/ArrayList;

    move-object/from16 v3, p1

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-static/range {p0 .. p0}, Lcom/miui/permcenter/l;->k(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/util/HashMap;

    invoke-direct {v4}, Ljava/util/HashMap;-><init>()V

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    const-string v6, "@"

    if-eqz v5, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/content/pm/PackageInfo;

    move-object/from16 v7, p4

    invoke-interface {v7, v5}, Lak/l;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/Boolean;

    invoke-virtual {v8}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v8

    if-eqz v8, :cond_0

    goto :goto_0

    :cond_0
    iget-object v8, v5, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-static {v8, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v8

    if-eqz v8, :cond_1

    iget-object v8, v5, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v8, v8, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-static {v8}, Lx4/z1;->m(I)I

    move-result v8

    if-nez v8, :cond_1

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "other permissions setting is hidden for device owner: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const-string v6, "PermissionUtils"

    invoke-static {v6, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_1
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v9, v5, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, v5, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v6, v6, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-static {v6}, Lx4/z1;->m(I)I

    move-result v6

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_2
    const/4 v2, 0x2

    const/4 v3, 0x3

    const/4 v5, 0x4

    const/4 v7, 0x5

    const/16 v11, 0x9

    const/16 v12, 0xa

    sget-boolean v13, Lcom/miui/permcenter/o;->w:Z

    if-eqz v13, :cond_3

    const-string v14, "pkgName"

    const-string v15, "suggestAccept"

    const-string v16, "suggestPrompt"

    const-string v17, "suggestReject"

    const-string v18, "userAccept"

    const-string v19, "userPrompt"

    const-string v20, "userReject"

    const-string v21, "permMask"

    const-string v22, "suggestBlock"

    const-string v23, "suggestForeground"

    const-string v24, "userForeground"

    const-string v25, "userId"

    filled-new-array/range {v14 .. v25}, [Ljava/lang/String;

    move-result-object v13

    :goto_1
    move-object/from16 v16, v13

    goto :goto_2

    :cond_3
    sget-boolean v13, Lcom/miui/permcenter/o;->e:Z

    const-string v14, "pkgName"

    const-string v15, "suggestAccept"

    const-string v16, "suggestPrompt"

    const-string v17, "suggestReject"

    const-string v18, "userAccept"

    const-string v19, "userPrompt"

    const-string v20, "userReject"

    const-string v21, "permMask"

    const-string v22, "suggestBlock"

    if-eqz v13, :cond_4

    const-string v23, "suggestForeground"

    const-string v24, "userForeground"

    filled-new-array/range {v14 .. v24}, [Ljava/lang/String;

    move-result-object v13

    goto :goto_1

    :cond_4
    filled-new-array/range {v14 .. v22}, [Ljava/lang/String;

    move-result-object v13

    goto :goto_1

    :goto_2
    new-instance v13, Ljava/util/ArrayList;

    invoke-direct {v13}, Ljava/util/ArrayList;-><init>()V

    const/16 v20, 0x0

    :try_start_0
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v14

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "content://"

    invoke-virtual {v15, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move/from16 v10, p5

    invoke-virtual {v15, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v9, "@com.lbe.security.miui.permmgr/active"

    invoke-virtual {v15, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v15

    const-string v17, "present!= 0"

    const/16 v18, 0x0

    const/16 v19, 0x0

    invoke-virtual/range {v14 .. v19}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v9
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    if-eqz v9, :cond_14

    :goto_3
    :try_start_1
    invoke-interface {v9}, Landroid/database/Cursor;->moveToNext()Z

    move-result v14

    if-eqz v14, :cond_13

    const/4 v14, 0x0

    invoke-interface {v9, v14}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v15

    const-string v14, "userId"

    invoke-interface {v9, v14}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v14

    const/4 v8, -0x1

    if-eq v14, v8, :cond_5

    invoke-interface {v9, v14}, Landroid/database/Cursor;->getInt(I)I

    move-result v8

    goto :goto_4

    :cond_5
    move v8, v10

    :goto_4
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v4, v8}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/content/pm/PackageInfo;

    if-nez v8, :cond_6

    goto :goto_3

    :cond_6
    const/4 v14, 0x1

    invoke-interface {v9, v14}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v36

    sget-boolean v18, Lcom/miui/permcenter/o;->e:Z

    const-wide/16 v38, 0x0

    if-eqz v18, :cond_7

    invoke-interface {v9, v11}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v19

    move-wide/from16 v40, v19

    goto :goto_5

    :cond_7
    move-wide/from16 v40, v38

    :goto_5
    invoke-interface {v9, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v42

    invoke-interface {v9, v3}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v44

    invoke-interface {v9, v5}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v46

    if-eqz v18, :cond_8

    invoke-interface {v9, v12}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v18

    move-wide/from16 v48, v18

    goto :goto_6

    :cond_8
    move-wide/from16 v48, v38

    :goto_6
    invoke-interface {v9, v7}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v50

    const/4 v2, 0x6

    invoke-interface {v9, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v52

    const/4 v2, 0x7

    invoke-interface {v9, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v54

    const/16 v2, 0x8

    invoke-interface {v9, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v56

    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    invoke-interface/range {p2 .. p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v58

    :goto_7
    invoke-interface/range {v58 .. v58}, Ljava/util/Iterator;->hasNext()Z

    move-result v18

    if-eqz v18, :cond_d

    invoke-interface/range {v58 .. v58}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v18

    move-object/from16 v3, v18

    check-cast v3, Ljava/lang/Long;

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v18

    and-long v18, v54, v18

    cmp-long v18, v18, v38

    if-eqz v18, :cond_c

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v18

    and-long v18, v56, v18

    cmp-long v18, v18, v38

    if-eqz v18, :cond_9

    goto :goto_9

    :cond_9
    if-eqz v1, :cond_a

    move-object/from16 v59, v6

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v5

    iget-object v7, v8, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    invoke-interface {v1, v5, v6, v7}, Lxc/c;->a(JLjava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_b

    goto :goto_8

    :cond_a
    move-object/from16 v59, v6

    :cond_b
    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v18

    move-wide/from16 v20, v36

    move-wide/from16 v22, v40

    move-wide/from16 v24, v42

    move-wide/from16 v26, v44

    move-wide/from16 v28, v46

    move-wide/from16 v30, v48

    move-wide/from16 v32, v50

    move-wide/from16 v34, v52

    invoke-static/range {v18 .. v35}, Lcom/miui/permission/PermissionManager;->calculatePermissionActionWithReal(JJJJJJJJJ)I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v2, v3, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :goto_8
    move-object/from16 v6, v59

    const/4 v3, 0x3

    const/4 v5, 0x4

    const/4 v7, 0x5

    goto :goto_7

    :cond_c
    :goto_9
    const/4 v3, 0x3

    goto :goto_7

    :cond_d
    move-object/from16 v59, v6

    invoke-virtual {v2}, Ljava/util/HashMap;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_e

    :goto_a
    move-object/from16 v6, v59

    const/4 v2, 0x2

    const/4 v3, 0x3

    const/4 v5, 0x4

    const/4 v7, 0x5

    goto/16 :goto_3

    :cond_e
    invoke-interface/range {p2 .. p2}, Ljava/util/List;->size()I

    move-result v3

    if-ne v3, v14, :cond_f

    const-wide/16 v5, 0x4000

    move-object/from16 v3, p2

    const/4 v7, 0x0

    invoke-interface {v3, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Ljava/lang/Long;

    invoke-virtual/range {v16 .. v16}, Ljava/lang/Long;->longValue()J

    move-result-wide v18

    cmp-long v5, v5, v18

    if-eqz v5, :cond_10

    goto :goto_b

    :cond_f
    move-object/from16 v3, p2

    const/4 v7, 0x0

    :goto_b
    invoke-static {v8, v2}, Lxc/u;->d(Landroid/content/pm/PackageInfo;Ljava/util/Map;)V

    :cond_10
    new-instance v5, Lcom/miui/permcenter/AppPermissionInfo;

    invoke-direct {v5}, Lcom/miui/permcenter/AppPermissionInfo;-><init>()V

    invoke-virtual {v5, v15}, Lcom/miui/permcenter/AppPermissionInfo;->setPackageName(Ljava/lang/String;)V

    iget-object v6, v8, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v6, v6, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-virtual {v5, v6}, Lcom/miui/permcenter/AppPermissionInfo;->setUid(I)V

    iget-object v6, v8, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v6, v6, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/2addr v6, v14

    if-eqz v6, :cond_11

    move v6, v14

    goto :goto_c

    :cond_11
    move v6, v7

    :goto_c
    invoke-virtual {v5, v6}, Lcom/miui/permcenter/AppPermissionInfo;->setSystem(Z)V

    iget-object v6, v8, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    invoke-static {v0, v6}, Lx4/f1;->P(Landroid/content/Context;Landroid/content/pm/ApplicationInfo;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/miui/permcenter/AppPermissionInfo;->setLabel(Ljava/lang/String;)V

    invoke-static {v5, v8}, Lcom/miui/permcenter/n;->G(Lcom/miui/permcenter/AppPermissionInfo;Landroid/content/pm/PackageInfo;)V

    invoke-virtual {v5, v2}, Lcom/miui/permcenter/AppPermissionInfo;->setPermissionToAction(Ljava/util/HashMap;)V

    iget-object v2, v8, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v2, v2, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    invoke-virtual {v5, v2}, Lcom/miui/permcenter/AppPermissionInfo;->setTargetSdkVersion(I)V

    iget-object v2, v8, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v2, v2, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-virtual {v5, v2}, Lcom/miui/permcenter/AppPermissionInfo;->setUid(I)V

    iget-object v2, v8, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    invoke-static {v0, v2}, Lxc/m;->b(Landroid/content/Context;Landroid/content/pm/ApplicationInfo;)Lxc/m$a;

    move-result-object v2

    sget-object v6, Lxc/m$a;->a:Lxc/m$a;

    if-ne v2, v6, :cond_12

    goto :goto_d

    :cond_12
    move v14, v7

    :goto_d
    invoke-virtual {v5, v14}, Lcom/miui/permcenter/AppPermissionInfo;->setNoScopedStorage(Z)V

    invoke-virtual {v13, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_a

    :cond_13
    new-instance v0, Lcom/miui/permcenter/b;

    invoke-direct {v0}, Lcom/miui/permcenter/b;-><init>()V

    invoke-static {v13, v0}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_e

    :catchall_0
    move-exception v0

    move-object/from16 v20, v9

    goto :goto_f

    :cond_14
    :goto_e
    invoke-static {v9}, Lbl/e;->a(Ljava/io/Closeable;)V

    return-object v13

    :catchall_1
    move-exception v0

    :goto_f
    invoke-static/range {v20 .. v20}, Lbl/e;->a(Ljava/io/Closeable;)V

    throw v0
.end method

.method public static D(Landroid/content/Context;)V
    .locals 1

    if-eqz p0, :cond_0

    new-instance v0, Lcom/miui/permcenter/n$a;

    invoke-direct {v0, p0}, Lcom/miui/permcenter/n$a;-><init>(Landroid/content/Context;)V

    const/4 p0, 0x0

    new-array p0, p0, [Ljava/lang/Void;

    invoke-virtual {v0, p0}, Landroid/os/AsyncTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    :cond_0
    return-void
.end method

.method public static varargs E(Landroid/content/Context;J[Ljava/lang/String;)V
    .locals 1

    invoke-static {p0}, Lcom/miui/permission/PermissionManager;->getInstance(Landroid/content/Context;)Lcom/miui/permission/PermissionManager;

    move-result-object p0

    const/4 v0, 0x1

    invoke-virtual {p0, p1, p2, v0, p3}, Lcom/miui/permission/PermissionManager;->setApplicationPermission(JI[Ljava/lang/String;)V

    return-void
.end method

.method public static F(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 2

    sget-object v0, Lcom/miui/permcenter/n;->b:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-static {p0, p1}, Lcom/miui/permcenter/n;->s(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const-string v1, "com.miui.securitycenter.permission.SYSTEM_PERMISSION_DECLARE"

    invoke-virtual {v0, v1, p1}, Landroid/content/pm/PackageManager;->checkPermission(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {p0, p1}, Lcom/miui/permcenter/n;->h(Landroid/content/Context;Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method

.method private static G(Lcom/miui/permcenter/AppPermissionInfo;Landroid/content/pm/PackageInfo;)V
    .locals 5

    iget-object p1, p1, Landroid/content/pm/PackageInfo;->requestedPermissions:[Ljava/lang/String;

    if-eqz p1, :cond_2

    array-length v0, p1

    if-nez v0, :cond_0

    goto :goto_1

    :cond_0
    array-length v0, p1

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_2

    aget-object v2, p1, v1

    sget-object v3, Lcom/miui/permission/RequiredPermissionsUtil;->RUNTIME_PERMISSIONS:Ljava/util/Map;

    invoke-interface {v3, v2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v3, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Long;

    if-eqz v2, :cond_1

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-virtual {p0, v2, v3}, Lcom/miui/permcenter/AppPermissionInfo;->addRequiredPermission(J)V

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    :goto_1
    return-void
.end method

.method public static synthetic a(Landroid/content/Context;ZLandroid/content/pm/PackageInfo;)Ljava/lang/Boolean;
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/miui/permcenter/n;->u(Landroid/content/Context;ZLandroid/content/pm/PackageInfo;)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0
.end method

.method public static varargs b(Landroid/content/Context;J[Ljava/lang/String;)V
    .locals 1

    invoke-static {p0}, Lcom/miui/permission/PermissionManager;->getInstance(Landroid/content/Context;)Lcom/miui/permission/PermissionManager;

    move-result-object p0

    const/4 v0, 0x3

    invoke-virtual {p0, p1, p2, v0, p3}, Lcom/miui/permission/PermissionManager;->setApplicationPermission(JI[Ljava/lang/String;)V

    return-void
.end method

.method public static c(II)I
    .locals 1

    const/4 v0, 0x3

    if-ne p0, v0, :cond_0

    if-ne p1, v0, :cond_0

    return v0

    :cond_0
    if-ne p0, v0, :cond_1

    const/4 p0, 0x6

    :cond_1
    return p0
.end method

.method public static varargs d(Landroid/content/Context;J[Ljava/lang/String;)V
    .locals 1

    invoke-static {p0}, Lcom/miui/permission/PermissionManager;->getInstance(Landroid/content/Context;)Lcom/miui/permission/PermissionManager;

    move-result-object p0

    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0, p3}, Lcom/miui/permission/PermissionManager;->setApplicationPermission(JI[Ljava/lang/String;)V

    return-void
.end method

.method public static e(Landroid/content/Context;Ljava/lang/String;J)I
    .locals 26

    move-object/from16 v0, p1

    invoke-static {}, Lmc/c;->l()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-static {}, Lx4/z1;->y()I

    move-result v1

    move-object/from16 v2, p0

    move-wide/from16 v3, p2

    invoke-static {v2, v1, v0, v3, v4}, Lcom/miui/permcenter/l;->g(Landroid/content/Context;ILjava/lang/String;J)I

    move-result v0

    return v0

    :cond_0
    move-object/from16 v2, p0

    move-wide/from16 v3, p2

    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const/4 v1, 0x0

    const/4 v2, 0x2

    const/4 v11, 0x3

    const/4 v12, 0x4

    const/4 v13, 0x5

    :try_start_0
    const-string v14, "suggestAccept"

    const-string v15, "suggestPrompt"

    const-string v16, "suggestReject"

    const-string v17, "userAccept"

    const-string v18, "userPrompt"

    const-string v19, "userReject"

    filled-new-array/range {v14 .. v19}, [Ljava/lang/String;

    move-result-object v7

    sget-object v6, Lcom/miui/permission/PermissionContract$Active;->URI:Landroid/net/Uri;

    const-string v8, "pkgName =? "

    const/4 v14, 0x1

    new-array v9, v14, [Ljava/lang/String;

    const/4 v15, 0x0

    aput-object v0, v9, v15

    const/4 v10, 0x0

    invoke-virtual/range {v5 .. v10}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    if-eqz v1, :cond_3

    invoke-interface {v1}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-gez v0, :cond_1

    goto :goto_0

    :cond_1
    invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v1, v15}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v8

    invoke-interface {v1, v14}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v16

    invoke-interface {v1, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v18

    invoke-interface {v1, v11}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v20

    invoke-interface {v1, v12}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v22

    invoke-interface {v1, v13}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v24

    const-wide/16 v6, 0x0

    const-wide/16 v14, 0x0

    move-wide/from16 v2, p2

    move-wide v4, v8

    move-wide/from16 v8, v16

    move-wide/from16 v10, v18

    move-wide/from16 v12, v20

    move-wide/from16 v16, v22

    move-wide/from16 v18, v24

    invoke-static/range {v2 .. v19}, Lcom/miui/permission/PermissionManager;->calculatePermissionAction(JJJJJJJJJ)I

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {v1}, Lbl/e;->a(Ljava/io/Closeable;)V

    return v0

    :cond_2
    invoke-static {v1}, Lbl/e;->a(Ljava/io/Closeable;)V

    return v15

    :cond_3
    :goto_0
    invoke-static {v1}, Lbl/e;->a(Ljava/io/Closeable;)V

    return v15

    :catchall_0
    move-exception v0

    invoke-static {v1}, Lbl/e;->a(Ljava/io/Closeable;)V

    throw v0
.end method

.method public static f(Landroid/content/Context;ILjava/lang/String;)Ljava/util/HashMap;
    .locals 36
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "I",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/HashMap<",
            "Ljava/lang/Long;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    invoke-static {}, Lmc/c;->l()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static/range {p0 .. p2}, Lcom/miui/permcenter/l;->h(Landroid/content/Context;ILjava/lang/String;)Ljava/util/HashMap;

    move-result-object v0

    return-object v0

    :cond_0
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const/4 v0, 0x2

    const/4 v7, 0x3

    const/4 v8, 0x4

    const/4 v9, 0x5

    const/4 v10, 0x6

    const/4 v11, 0x7

    const/4 v12, 0x0

    :try_start_0
    const-string v13, "permMask"

    const-string v14, "suggestAccept"

    const-string v15, "suggestPrompt"

    const-string v16, "suggestReject"

    const-string v17, "suggestBlock"

    const-string v18, "userAccept"

    const-string v19, "userPrompt"

    const-string v20, "userReject"

    filled-new-array/range {v13 .. v20}, [Ljava/lang/String;

    move-result-object v3

    sget-object v2, Lcom/miui/permission/PermissionContract$Active;->URI:Landroid/net/Uri;

    const-string v4, "pkgName =? "

    const/4 v13, 0x1

    new-array v5, v13, [Ljava/lang/String;

    const/4 v14, 0x0

    aput-object p2, v5, v14

    const/4 v6, 0x0

    invoke-virtual/range {v1 .. v6}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    if-eqz v1, :cond_3

    :try_start_1
    invoke-interface {v1}, Landroid/database/Cursor;->getCount()I

    move-result v2

    if-gez v2, :cond_1

    goto :goto_0

    :cond_1
    invoke-static/range {p0 .. p0}, Lcom/miui/permission/PermissionManager;->getInstance(Landroid/content/Context;)Lcom/miui/permission/PermissionManager;

    move-result-object v15

    invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1, v14}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v16

    invoke-interface {v1, v13}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v18

    invoke-interface {v1, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v22

    invoke-interface {v1, v7}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v24

    invoke-interface {v1, v8}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v26

    invoke-interface {v1, v9}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v28

    invoke-interface {v1, v10}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v32

    invoke-interface {v1, v11}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v34

    const-wide/16 v20, 0x0

    const-wide/16 v30, 0x0

    invoke-virtual/range {v15 .. v35}, Lcom/miui/permission/PermissionManager;->calculatePermissionAction(JJJJJJJJJJ)Ljava/util/HashMap;

    move-result-object v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-static {v1}, Lbl/e;->a(Ljava/io/Closeable;)V

    return-object v0

    :cond_2
    invoke-static {v1}, Lbl/e;->a(Ljava/io/Closeable;)V

    return-object v12

    :catchall_0
    move-exception v0

    move-object v12, v1

    goto :goto_1

    :cond_3
    :goto_0
    invoke-static {v1}, Lbl/e;->a(Ljava/io/Closeable;)V

    return-object v12

    :catchall_1
    move-exception v0

    :goto_1
    invoke-static {v12}, Lbl/e;->a(Ljava/io/Closeable;)V

    throw v0
.end method

.method public static g(Landroid/content/Context;IJLjava/lang/String;)Lcom/miui/permcenter/AppPermissionInfo;
    .locals 31

    move-object/from16 v1, p4

    const/4 v2, 0x0

    if-nez p0, :cond_0

    return-object v2

    :cond_0
    invoke-static {}, Lmc/c;->l()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static/range {p0 .. p4}, Lcom/miui/permcenter/l;->j(Landroid/content/Context;IJLjava/lang/String;)Lcom/miui/permcenter/AppPermissionInfo;

    move-result-object v0

    return-object v0

    :cond_1
    const/4 v3, 0x4

    const/4 v4, 0x5

    const/4 v5, 0x6

    const-string v6, "pkgName"

    const-string v7, "suggestAccept"

    const-string v8, "suggestPrompt"

    const-string v9, "suggestReject"

    const-string v10, "userAccept"

    const-string v11, "userPrompt"

    const-string v12, "userReject"

    filled-new-array/range {v6 .. v12}, [Ljava/lang/String;

    move-result-object v15

    :try_start_0
    invoke-static/range {p2 .. p3}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v0

    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v13

    sget-object v14, Lcom/miui/permission/PermissionContract$Active;->URI:Landroid/net/Uri;

    const-string v16, "permMask& ? != 0 and +present!= 0 and suggestBlock & ? == 0 and pkgName == ?"

    const/4 v6, 0x3

    new-array v7, v6, [Ljava/lang/String;

    const/4 v8, 0x0

    aput-object v0, v7, v8

    const/4 v9, 0x1

    aput-object v0, v7, v9

    const/4 v10, 0x2

    aput-object v1, v7, v10

    const/16 v18, 0x0

    move-object/from16 v17, v7

    invoke-virtual/range {v13 .. v18}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    if-eqz v7, :cond_4

    move-object v11, v2

    :goto_0
    :try_start_1
    invoke-interface {v7}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v7, v8}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v12

    invoke-static/range {p0 .. p0}, Li4/a;->k(Landroid/content/Context;)Li4/a;

    move-result-object v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    invoke-virtual {v0, v1}, Li4/a;->f(Ljava/lang/String;)Li4/b;

    move-result-object v0
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1

    :catch_0
    move-exception v0

    move-object v13, v0

    :try_start_3
    const-string v0, "PermissionUtils"

    const-string v14, "fail getAppInfo"

    invoke-static {v0, v14, v13}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move-object v0, v2

    :goto_1
    if-nez v0, :cond_2

    goto :goto_0

    :cond_2
    invoke-interface {v7, v9}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v15

    invoke-interface {v7, v10}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v19

    invoke-interface {v7, v6}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v21

    invoke-interface {v7, v3}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v23

    invoke-interface {v7, v4}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v27

    invoke-interface {v7, v5}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v29

    const-wide/16 v17, 0x0

    const-wide/16 v25, 0x0

    move-wide/from16 v13, p2

    invoke-static/range {v13 .. v30}, Lcom/miui/permission/PermissionManager;->calculatePermissionAction(JJJJJJJJJ)I

    move-result v11

    new-instance v13, Lcom/miui/permcenter/AppPermissionInfo;

    invoke-direct {v13}, Lcom/miui/permcenter/AppPermissionInfo;-><init>()V

    invoke-virtual {v13, v12}, Lcom/miui/permcenter/AppPermissionInfo;->setPackageName(Ljava/lang/String;)V

    invoke-virtual {v13, v8}, Lcom/miui/permcenter/AppPermissionInfo;->setSystem(Z)V

    invoke-virtual {v0}, Li4/b;->a()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v13, v0}, Lcom/miui/permcenter/AppPermissionInfo;->setLabel(Ljava/lang/String;)V

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    invoke-static/range {p2 .. p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v12

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    invoke-virtual {v0, v12, v11}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v13, v0}, Lcom/miui/permcenter/AppPermissionInfo;->setPermissionToAction(Ljava/util/HashMap;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    move-object v11, v13

    goto :goto_0

    :cond_3
    move-object v2, v11

    goto :goto_2

    :catchall_0
    move-exception v0

    move-object v2, v7

    goto :goto_3

    :cond_4
    :goto_2
    invoke-static {v7}, Lbl/e;->a(Ljava/io/Closeable;)V

    return-object v2

    :catchall_1
    move-exception v0

    :goto_3
    invoke-static {v2}, Lbl/e;->a(Ljava/io/Closeable;)V

    throw v0
.end method

.method private static h(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 4

    const/4 v0, 0x0

    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string v1, "content://com.miui.sec.THIRD_DESKTOP"

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    const-string v2, "getListForCTAEnable"

    const/4 v3, 0x0

    invoke-virtual {p0, v1, v2, v3, v3}, Landroid/content/ContentResolver;->call(Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object p0

    const-string v1, "list"

    invoke-virtual {p0, v1}, Landroid/os/Bundle;->getStringArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object p0

    if-eqz p0, :cond_0

    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz p0, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0

    :catch_0
    move-exception p0

    const-string p1, "PermissionUtils"

    const-string v1, "get third desktop provider exception!"

    invoke-static {p1, v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return v0
.end method

.method public static i(Landroid/content/Context;IJ)Ljava/lang/String;
    .locals 2

    if-lez p1, :cond_1

    invoke-static {}, Lhc/a;->c()Ljava/util/List;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_5

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/miui/permission/PermissionGroupInfo;

    invoke-virtual {p2}, Lcom/miui/permission/PermissionGroupInfo;->getId()I

    move-result p3

    if-ne p3, p1, :cond_0

    invoke-static {}, Lhc/a;->b()Landroid/content/Context;

    move-result-object p0

    invoke-virtual {p2, p0}, Lcom/miui/permission/PermissionGroupInfo;->getName(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_1
    const-wide/16 v0, 0x0

    cmp-long p1, p2, v0

    if-lez p1, :cond_3

    invoke-static {p0}, Lcom/miui/permission/PermissionManager;->getInstance(Landroid/content/Context;)Lcom/miui/permission/PermissionManager;

    move-result-object p1

    invoke-virtual {p1, p2, p3}, Lcom/miui/permission/PermissionManager;->getPermissionForId(J)Lcom/miui/permission/PermissionInfo;

    move-result-object p1

    if-eqz p1, :cond_5

    invoke-virtual {p1}, Lcom/miui/permission/PermissionInfo;->getId()J

    move-result-wide p2

    const-wide/16 v0, 0x4000

    cmp-long p2, p2, v0

    if-nez p2, :cond_2

    const p1, 0x7f1201e3

    invoke-virtual {p0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_2
    invoke-static {p0, p1}, Lcom/miui/permcenter/q;->h(Landroid/content/Context;Lcom/miui/permission/PermissionInfo;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_3
    const-wide/16 v0, -0x3

    cmp-long p1, p2, v0

    if-nez p1, :cond_4

    const p1, 0x7f120b83

    invoke-virtual {p0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_4
    const-wide/16 v0, -0x2

    cmp-long p1, p2, v0

    if-nez p1, :cond_5

    const p1, 0x7f120b76

    invoke-virtual {p0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_5
    const/4 p0, 0x0

    return-object p0
.end method

.method public static j(Landroid/content/Context;)V
    .locals 1

    sget-boolean v0, Lec/c;->a:Z

    if-nez v0, :cond_0

    return-void

    :cond_0
    new-instance v0, Lcom/miui/permcenter/n$b;

    invoke-direct {v0, p0}, Lcom/miui/permcenter/n$b;-><init>(Landroid/content/Context;)V

    invoke-static {v0}, Lx4/f;->b(Ljava/lang/Runnable;)V

    return-void
.end method

.method public static k(Landroid/content/Context;I)Ljava/lang/String;
    .locals 2

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0, p1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p0

    sget-boolean p1, Lmiui/os/Build;->IS_INTERNATIONAL_BUILD:Z

    if-eqz p1, :cond_0

    return-object p0

    :cond_0
    const-string p1, "Wi-Fi"

    invoke-virtual {p0, p1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    const-string v1, "WLAN"

    if-eqz v0, :cond_1

    invoke-virtual {p0, p1, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_1
    const-string p1, "wifi"

    invoke-virtual {p0, p1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    const-string v0, "wlan"

    invoke-virtual {p0, p1, v0}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_2
    const-string p1, "WIFI"

    invoke-virtual {p0, p1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-virtual {p0, p1, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p0

    :cond_3
    return-object p0
.end method

.method public static varargs l(Lcom/miui/permission/PermissionManager;II[Ljava/lang/String;)V
    .locals 11

    const/4 v0, 0x2

    const/4 v1, 0x1

    const/4 v2, 0x3

    if-ne p2, v2, :cond_0

    move v3, v2

    :goto_0
    move v7, v3

    goto :goto_1

    :cond_0
    if-ne p2, v1, :cond_1

    move v3, v1

    goto :goto_0

    :cond_1
    const/4 v3, 0x6

    if-ne p2, v3, :cond_2

    move v3, v1

    move v7, v2

    goto :goto_1

    :cond_2
    move v3, v0

    goto :goto_0

    :goto_1
    const-wide/16 v5, 0x20

    const/4 v9, 0x2

    move-object v4, p0

    move v8, p1

    move-object v10, p3

    invoke-virtual/range {v4 .. v10}, Lcom/miui/permission/PermissionManager;->setApplicationPermission(JIII[Ljava/lang/String;)V

    const-wide/high16 v1, 0x2000000000000000L

    const/4 v5, 0x2

    move-object v0, p0

    move v4, p1

    move-object v6, p3

    invoke-virtual/range {v0 .. v6}, Lcom/miui/permission/PermissionManager;->setApplicationPermission(JIII[Ljava/lang/String;)V

    return-void
.end method

.method public static m(Landroid/content/Context;)V
    .locals 5

    const-string v0, "PermissionUtils"

    const-string v1, "com.lbe.security.miui"

    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    :try_start_0
    invoke-virtual {v2, v1}, Landroid/content/pm/PackageManager;->getApplicationEnabledSetting(Ljava/lang/String;)I

    move-result v3

    const/4 v4, 0x2

    if-eq v3, v4, :cond_0

    const/4 v4, 0x3

    if-eq v3, v4, :cond_0

    const/4 v4, 0x4

    if-eq v3, v4, :cond_0

    goto :goto_0

    :cond_0
    const/4 v3, 0x0

    invoke-virtual {v2, v1, v3, v3}, Landroid/content/pm/PackageManager;->setApplicationEnabledSetting(Ljava/lang/String;II)V

    const-string v2, "enable lbe security"

    invoke-static {v0, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const-string v2, "permcenter"

    const-string v3, "service_disabled"

    const/4 v4, 0x0

    invoke-static {v2, v3, v4}, Lcom/miui/analytics/AnalyticsUtil;->recordCountEvent(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v2

    const-string v3, " ApplicationEnabledSetting error "

    invoke-static {v0, v3, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    :try_start_1
    new-instance v2, Landroid/content/Intent;

    const-string v3, "com.miui.permission.Action.SecurityService"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {p0, v2}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    :catch_1
    move-exception p0

    const-string v1, "startService"

    invoke-static {v0, v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_1
    return-void
.end method

.method public static n(Landroid/content/Context;Landroid/content/pm/PackageInfo;Z)Z
    .locals 5

    invoke-static {}, Lmc/c;->l()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {p0, p1, p2}, Lcom/miui/permcenter/l;->n(Landroid/content/Context;Landroid/content/pm/PackageInfo;Z)Z

    move-result p0

    return p0

    :cond_0
    iget-object v0, p1, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-static {p0, v0}, Lcom/miui/permcenter/compact/EnterpriseCompat;->shouldGrantPermission(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_1

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "Permission edit for package "

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p1, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " is restricted"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "Enterprise"

    invoke-static {p1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    :cond_1
    iget-object v0, p1, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v2, v0, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/2addr v2, v1

    const/4 v3, 0x0

    if-eqz v2, :cond_2

    move v2, v1

    goto :goto_0

    :cond_2
    move v2, v3

    :goto_0
    iget v0, v0, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-static {v0}, Lx4/z1;->b(I)I

    move-result v0

    const/16 v4, 0x2710

    if-ge v0, v4, :cond_3

    move v0, v1

    goto :goto_1

    :cond_3
    move v0, v3

    :goto_1
    invoke-static {p0, p1}, Lcom/miui/permission/RequiredPermissionsUtil;->isAdaptedRequiredPermissionsOnData(Landroid/content/Context;Landroid/content/pm/PackageInfo;)Z

    move-result p0

    if-nez v2, :cond_4

    if-nez p0, :cond_4

    if-eqz v0, :cond_5

    :cond_4
    if-nez p2, :cond_5

    goto :goto_2

    :cond_5
    move v1, v3

    :goto_2
    return v1
.end method

.method public static o(Ljava/lang/Long;)Z
    .locals 0

    invoke-static {p0}, Lcom/miui/permission/PermissionManager;->isExistInMcallAndcontactpermissionlist(Ljava/lang/Long;)Z

    move-result p0

    return p0
.end method

.method public static p(Ljava/lang/Long;)Z
    .locals 0

    invoke-static {p0}, Lcom/miui/permission/PermissionManager;->isExistInMsmsAndmmspermissionlist(Ljava/lang/Long;)Z

    move-result p0

    return p0
.end method

.method public static q(J)Z
    .locals 2

    const-wide v0, 0x200000000000L

    cmp-long v0, p0, v0

    if-eqz v0, :cond_1

    const-wide/16 v0, 0x40

    cmp-long v0, p0, v0

    if-eqz v0, :cond_1

    const-wide v0, 0x400000000000L

    cmp-long v0, p0, v0

    if-eqz v0, :cond_1

    const-wide v0, 0x800000000000L

    cmp-long v0, p0, v0

    if-eqz v0, :cond_1

    const-wide/high16 v0, 0x1000000000000L

    cmp-long v0, p0, v0

    if-eqz v0, :cond_1

    const-wide/high16 v0, 0x2000000000000L

    cmp-long v0, p0, v0

    if-eqz v0, :cond_1

    const-wide/high16 v0, 0x4000000000000L

    cmp-long p0, p0, v0

    if-nez p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    return p0

    :cond_1
    :goto_0
    const/4 p0, 0x1

    return p0
.end method

.method public static r()Z
    .locals 1

    invoke-static {}, Lcom/miui/permcenter/compact/AppOpsUtilsCompat;->isXOptMode()Z

    move-result v0

    return v0
.end method

.method public static s(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 1

    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p0

    const/4 v0, 0x0

    :try_start_0
    invoke-virtual {p0, p1, v0}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object p0
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    const/4 p0, 0x0

    :goto_0
    if-eqz p0, :cond_0

    invoke-static {p0}, Lcom/miui/permcenter/n;->t(Landroid/content/pm/ApplicationInfo;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method public static t(Landroid/content/pm/ApplicationInfo;)Z
    .locals 2

    iget v0, p0, Landroid/content/pm/ApplicationInfo;->flags:I

    const/4 v1, 0x1

    and-int/2addr v0, v1

    if-gtz v0, :cond_1

    iget p0, p0, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-static {p0}, Lx4/z1;->b(I)I

    move-result p0

    const/16 v0, 0x2710

    if-ge p0, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :cond_1
    :goto_0
    return v1
.end method

.method private static synthetic u(Landroid/content/Context;ZLandroid/content/pm/PackageInfo;)Ljava/lang/Boolean;
    .locals 0

    invoke-static {p0, p2, p1}, Lcom/miui/permcenter/n;->n(Landroid/content/Context;Landroid/content/pm/PackageInfo;Z)Z

    move-result p0

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0
.end method

.method public static v(Landroid/content/Context;)Ljava/util/ArrayList;
    .locals 20
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/ArrayList<",
            "Lcom/miui/permcenter/AppPermissionInfo;",
            ">;"
        }
    .end annotation

    move-object/from16 v0, p0

    new-instance v1, Ljava/util/ArrayList;

    invoke-static/range {p0 .. p0}, Li4/a;->k(Landroid/content/Context;)Li4/a;

    move-result-object v2

    invoke-virtual {v2}, Li4/a;->j()Ljava/util/List;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-static {}, Lx4/z1;->r()Z

    move-result v2

    if-eqz v2, :cond_0

    sget-boolean v2, Lcom/miui/permcenter/o;->w:Z

    if-eqz v2, :cond_0

    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    const/16 v3, 0x10c0

    const/16 v4, 0x3e7

    invoke-static {v2, v3, v4}, Loc/g$c;->a(Landroid/content/pm/PackageManager;II)Ljava/util/List;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    :cond_0
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_1
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    const-string v4, "@"

    if-eqz v3, :cond_4

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/pm/PackageInfo;

    iget-object v5, v3, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-static {v0, v5}, Lcom/miui/permcenter/compact/EnterpriseCompat;->shouldGrantPermission(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_2

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Permission edit for package "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, v3, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " is restricted"

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "Enterprise"

    invoke-static {v4, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_2
    iget-object v5, v3, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    invoke-static {v5}, Lx4/f1;->L(Landroid/content/pm/ApplicationInfo;)Z

    move-result v5

    if-eqz v5, :cond_3

    invoke-static {v0, v3}, Lcom/miui/permission/RequiredPermissionsUtil;->isAdaptedRequiredPermissionsIncludeShared(Landroid/content/Context;Landroid/content/pm/PackageInfo;)Z

    move-result v5

    if-eqz v5, :cond_1

    iget-object v5, v3, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-static {v5, v0}, Lxc/z;->d(Ljava/lang/String;Landroid/content/Context;)Z

    move-result v5

    if-nez v5, :cond_1

    :cond_3
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v6, v3, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, v3, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v4, v4, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-static {v4}, Lx4/z1;->m(I)I

    move-result v4

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_4
    invoke-static/range {p0 .. p0}, Lcom/miui/permcenter/l;->k(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    const/4 v3, 0x0

    if-eqz v1, :cond_5

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_5

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "other permissions setting is hidden for device owner: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v5, "AppPermissionsFragment"

    invoke-static {v5, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_5
    sget-boolean v1, Lcom/miui/permcenter/o;->w:Z

    const-string v5, "userId"

    const-string v6, "suggestBlock"

    const-string v7, "permMask"

    const-string v8, "pkgName"

    if-eqz v1, :cond_6

    filled-new-array {v8, v7, v6, v5}, [Ljava/lang/String;

    move-result-object v1

    goto :goto_1

    :cond_6
    filled-new-array {v8, v7, v6}, [Ljava/lang/String;

    move-result-object v1

    :goto_1
    move-object v8, v1

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    const/4 v12, 0x0

    :try_start_0
    invoke-static/range {p0 .. p0}, Lcom/miui/permission/PermissionManager;->getInstance(Landroid/content/Context;)Lcom/miui/permission/PermissionManager;

    move-result-object v13

    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    sget-object v7, Lcom/miui/permission/PermissionContract$Active;->URI:Landroid/net/Uri;

    const-string v9, "present!= 0"

    const/4 v10, 0x0

    const/4 v11, 0x0

    invoke-virtual/range {v6 .. v11}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v12

    if-eqz v12, :cond_13

    :cond_7
    :goto_2
    invoke-interface {v12}, Landroid/database/Cursor;->moveToNext()Z

    move-result v6

    if-eqz v6, :cond_12

    invoke-interface {v12, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-interface {v12, v5}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v7

    const/4 v8, -0x1

    if-eq v7, v8, :cond_8

    invoke-interface {v12, v7}, Landroid/database/Cursor;->getInt(I)I

    move-result v7

    goto :goto_3

    :cond_8
    invoke-static {}, Lx4/z1;->y()I

    move-result v7

    :goto_3
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v2, v7}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/content/pm/PackageInfo;

    if-nez v7, :cond_9

    goto :goto_2

    :cond_9
    const/4 v8, 0x1

    invoke-interface {v12, v8}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v9

    const/4 v11, 0x2

    invoke-interface {v12, v11}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v14

    invoke-virtual {v13, v9, v10, v14, v15}, Lcom/miui/permission/PermissionManager;->calculatePermissionCount(JJ)I

    move-result v11

    const-wide v14, 0x400000000L

    and-long/2addr v14, v9

    const-wide/16 v16, 0x0

    cmp-long v14, v14, v16

    if-eqz v14, :cond_a

    invoke-static {}, Lxc/k;->c()Z

    move-result v14

    if-nez v14, :cond_a

    add-int/lit8 v11, v11, -0x1

    :cond_a
    sget-boolean v14, Lmiui/os/Build;->IS_INTERNATIONAL_BUILD:Z

    if-eqz v14, :cond_b

    const-wide/high16 v18, 0x4000000000000000L    # 2.0

    and-long v18, v9, v18

    cmp-long v15, v18, v16

    if-eqz v15, :cond_b

    add-int/lit8 v11, v11, -0x1

    :cond_b
    if-eqz v14, :cond_c

    const-wide/16 v18, 0x2000

    and-long v18, v9, v18

    cmp-long v15, v18, v16

    if-eqz v15, :cond_c

    add-int/lit8 v11, v11, -0x1

    :cond_c
    if-nez v14, :cond_11

    invoke-static {}, Lcom/miui/permission/support/util/SdkLevel;->isAtLeastT()Z

    move-result v14

    if-eqz v14, :cond_11

    iget-object v14, v7, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    invoke-static {v0, v14}, Lxc/m;->b(Landroid/content/Context;Landroid/content/pm/ApplicationInfo;)Lxc/m$a;

    move-result-object v14

    sget-object v15, Lxc/m$a;->a:Lxc/m$a;

    if-eq v14, v15, :cond_11

    iget-object v14, v7, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v14, v14, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    const/16 v15, 0x21

    if-ge v14, v15, :cond_d

    goto :goto_4

    :cond_d
    move v8, v3

    :goto_4
    const-wide v14, 0x200000000000L

    and-long/2addr v9, v14

    cmp-long v9, v9, v16

    if-eqz v9, :cond_e

    add-int/lit8 v11, v11, -0x1

    if-eqz v8, :cond_e

    add-int/lit8 v11, v11, 0x2

    :cond_e
    if-nez v8, :cond_10

    iget-object v9, v7, Landroid/content/pm/PackageInfo;->requestedPermissions:[Ljava/lang/String;

    const-string v10, "android.permission.READ_MEDIA_IMAGES"

    invoke-static {v9, v10}, Lcom/miui/permission/PermissionManager$ArrayUtils;->contains([Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_f

    iget-object v9, v7, Landroid/content/pm/PackageInfo;->requestedPermissions:[Ljava/lang/String;

    const-string v10, "android.permission.READ_MEDIA_VIDEO"

    invoke-static {v9, v10}, Lcom/miui/permission/PermissionManager$ArrayUtils;->contains([Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_f

    iget-object v9, v7, Landroid/content/pm/PackageInfo;->requestedPermissions:[Ljava/lang/String;

    const-string v10, "android.permission.ACCESS_MEDIA_LOCATION"

    invoke-static {v9, v10}, Lcom/miui/permission/PermissionManager$ArrayUtils;->contains([Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_10

    :cond_f
    add-int/lit8 v11, v11, 0x1

    :cond_10
    if-nez v8, :cond_11

    iget-object v8, v7, Landroid/content/pm/PackageInfo;->requestedPermissions:[Ljava/lang/String;

    const-string v9, "android.permission.READ_MEDIA_AUDIO"

    invoke-static {v8, v9}, Lcom/miui/permission/PermissionManager$ArrayUtils;->contains([Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_11

    add-int/lit8 v11, v11, 0x1

    :cond_11
    if-lez v11, :cond_7

    new-instance v8, Lcom/miui/permcenter/AppPermissionInfo;

    invoke-direct {v8}, Lcom/miui/permcenter/AppPermissionInfo;-><init>()V

    invoke-virtual {v8, v6}, Lcom/miui/permcenter/AppPermissionInfo;->setPackageName(Ljava/lang/String;)V

    iget-object v6, v7, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    invoke-static {v0, v6}, Lx4/f1;->P(Landroid/content/Context;Landroid/content/pm/ApplicationInfo;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v8, v6}, Lcom/miui/permcenter/AppPermissionInfo;->setLabel(Ljava/lang/String;)V

    iget-object v6, v7, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v6, v6, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-virtual {v8, v6}, Lcom/miui/permcenter/AppPermissionInfo;->setUid(I)V

    invoke-virtual {v8, v11}, Lcom/miui/permcenter/AppPermissionInfo;->setCount(I)V

    iget-object v6, v7, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    invoke-static {v6}, Lx4/f1;->L(Landroid/content/pm/ApplicationInfo;)Z

    move-result v6

    invoke-virtual {v8, v6}, Lcom/miui/permcenter/AppPermissionInfo;->setSystem(Z)V

    invoke-static {v0, v7}, Lcom/miui/permission/RequiredPermissionsUtil;->isAdaptedRequiredPermissionsOnData(Landroid/content/Context;Landroid/content/pm/PackageInfo;)Z

    move-result v6

    invoke-virtual {v8, v6}, Lcom/miui/permcenter/AppPermissionInfo;->setAdaptedRpData(Z)V

    iget-object v6, v7, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v6, v6, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    invoke-virtual {v8, v6}, Lcom/miui/permcenter/AppPermissionInfo;->setTargetSdkVersion(I)V

    iget-object v6, v7, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v6, v6, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-virtual {v8, v6}, Lcom/miui/permcenter/AppPermissionInfo;->setUid(I)V

    invoke-virtual {v1, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_2

    :cond_12
    new-instance v0, Lcom/miui/permcenter/b;

    invoke-direct {v0}, Lcom/miui/permcenter/b;-><init>()V

    invoke-static {v1, v0}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_13
    invoke-static {v12}, Lbl/e;->a(Ljava/io/Closeable;)V

    return-object v1

    :catchall_0
    move-exception v0

    invoke-static {v12}, Lbl/e;->a(Ljava/io/Closeable;)V

    throw v0
.end method

.method public static w(Landroid/content/Context;J)Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "J)",
            "Ljava/util/ArrayList<",
            "Lcom/miui/permcenter/AppPermissionInfo;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x0

    invoke-static {p0, p1, p2, v0}, Lcom/miui/permcenter/n;->x(Landroid/content/Context;JZ)Ljava/util/ArrayList;

    move-result-object p0

    return-object p0
.end method

.method public static x(Landroid/content/Context;JZ)Ljava/util/ArrayList;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "JZ)",
            "Ljava/util/ArrayList<",
            "Lcom/miui/permcenter/AppPermissionInfo;",
            ">;"
        }
    .end annotation

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    invoke-static {p1}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    const/4 p2, 0x0

    invoke-static {p0, p3, p1, p2}, Lcom/miui/permcenter/n;->y(Landroid/content/Context;ZLjava/util/List;Lxc/c;)Ljava/util/ArrayList;

    move-result-object p0

    return-object p0
.end method

.method public static y(Landroid/content/Context;ZLjava/util/List;Lxc/c;)Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Z",
            "Ljava/util/List<",
            "Ljava/lang/Long;",
            ">;",
            "Lxc/c<",
            "Landroid/content/pm/ApplicationInfo;",
            ">;)",
            "Ljava/util/ArrayList<",
            "Lcom/miui/permcenter/AppPermissionInfo;",
            ">;"
        }
    .end annotation

    new-instance v0, Lcom/miui/permcenter/m;

    invoke-direct {v0, p0, p1}, Lcom/miui/permcenter/m;-><init>(Landroid/content/Context;Z)V

    invoke-static {p0, p1, p2, p3, v0}, Lcom/miui/permcenter/n;->z(Landroid/content/Context;ZLjava/util/List;Lxc/c;Lak/l;)Ljava/util/ArrayList;

    move-result-object p0

    return-object p0
.end method

.method public static z(Landroid/content/Context;ZLjava/util/List;Lxc/c;Lak/l;)Ljava/util/ArrayList;
    .locals 59
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Z",
            "Ljava/util/List<",
            "Ljava/lang/Long;",
            ">;",
            "Lxc/c<",
            "Landroid/content/pm/ApplicationInfo;",
            ">;",
            "Lak/l<",
            "Landroid/content/pm/PackageInfo;",
            "Ljava/lang/Boolean;",
            ">;)",
            "Ljava/util/ArrayList<",
            "Lcom/miui/permcenter/AppPermissionInfo;",
            ">;"
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v1, p3

    new-instance v2, Ljava/util/ArrayList;

    invoke-static/range {p0 .. p0}, Li4/a;->k(Landroid/content/Context;)Li4/a;

    move-result-object v3

    invoke-virtual {v3}, Li4/a;->j()Ljava/util/List;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-static {}, Lx4/z1;->r()Z

    move-result v3

    if-eqz v3, :cond_0

    sget-boolean v3, Lcom/miui/permcenter/o;->w:Z

    if-eqz v3, :cond_0

    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    const/16 v4, 0x10c0

    const/16 v5, 0x3e7

    invoke-static {v3, v4, v5}, Loc/g$c;->a(Landroid/content/pm/PackageManager;II)Ljava/util/List;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    :cond_0
    invoke-static/range {p0 .. p0}, Lcom/miui/permcenter/l;->k(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/util/HashMap;

    invoke-direct {v4}, Ljava/util/HashMap;-><init>()V

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    const-string v6, "@"

    if-eqz v5, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/content/pm/PackageInfo;

    move-object/from16 v7, p4

    invoke-interface {v7, v5}, Lak/l;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/Boolean;

    invoke-virtual {v8}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v8

    if-eqz v8, :cond_1

    goto :goto_0

    :cond_1
    iget-object v8, v5, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-static {v8, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v8

    if-eqz v8, :cond_2

    iget-object v8, v5, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v8, v8, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-static {v8}, Lx4/z1;->m(I)I

    move-result v8

    if-nez v8, :cond_2

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "other permissions setting is hidden for device owner: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const-string v6, "PermissionUtils"

    invoke-static {v6, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_2
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v9, v5, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, v5, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v6, v6, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-static {v6}, Lx4/z1;->m(I)I

    move-result v6

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_3
    const/4 v2, 0x2

    const/4 v3, 0x3

    const/4 v5, 0x4

    const/4 v7, 0x5

    const/4 v8, 0x6

    const/16 v11, 0x9

    const/16 v12, 0xa

    sget-boolean v13, Lcom/miui/permcenter/o;->w:Z

    if-eqz v13, :cond_4

    const-string v14, "pkgName"

    const-string v15, "suggestAccept"

    const-string v16, "suggestPrompt"

    const-string v17, "suggestReject"

    const-string v18, "userAccept"

    const-string v19, "userPrompt"

    const-string v20, "userReject"

    const-string v21, "permMask"

    const-string v22, "suggestBlock"

    const-string v23, "suggestForeground"

    const-string v24, "userForeground"

    const-string v25, "userId"

    filled-new-array/range {v14 .. v25}, [Ljava/lang/String;

    move-result-object v13

    :goto_1
    move-object/from16 v16, v13

    goto :goto_2

    :cond_4
    sget-boolean v13, Lcom/miui/permcenter/o;->e:Z

    const-string v14, "pkgName"

    const-string v15, "suggestAccept"

    const-string v16, "suggestPrompt"

    const-string v17, "suggestReject"

    const-string v18, "userAccept"

    const-string v19, "userPrompt"

    const-string v20, "userReject"

    const-string v21, "permMask"

    const-string v22, "suggestBlock"

    if-eqz v13, :cond_5

    const-string v23, "suggestForeground"

    const-string v24, "userForeground"

    filled-new-array/range {v14 .. v24}, [Ljava/lang/String;

    move-result-object v13

    goto :goto_1

    :cond_5
    filled-new-array/range {v14 .. v22}, [Ljava/lang/String;

    move-result-object v13

    goto :goto_1

    :goto_2
    new-instance v13, Ljava/util/ArrayList;

    invoke-direct {v13}, Ljava/util/ArrayList;-><init>()V

    const/16 v20, 0x0

    :try_start_0
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v14

    sget-object v15, Lcom/miui/permission/PermissionContract$Active;->URI:Landroid/net/Uri;

    const-string v17, "present!= 0"

    const/16 v18, 0x0

    const/16 v19, 0x0

    invoke-virtual/range {v14 .. v19}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v14
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    if-eqz v14, :cond_15

    :goto_3
    :try_start_1
    invoke-interface {v14}, Landroid/database/Cursor;->moveToNext()Z

    move-result v15

    if-eqz v15, :cond_14

    const/4 v15, 0x0

    invoke-interface {v14, v15}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v10

    const-string v15, "userId"

    invoke-interface {v14, v15}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v15

    const/4 v9, -0x1

    if-eq v15, v9, :cond_6

    invoke-interface {v14, v15}, Landroid/database/Cursor;->getInt(I)I

    move-result v9

    goto :goto_4

    :cond_6
    invoke-static {}, Lx4/z1;->y()I

    move-result v9

    :goto_4
    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v15, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v4, v9}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/content/pm/PackageInfo;

    if-nez v9, :cond_7

    goto :goto_3

    :cond_7
    const/4 v15, 0x1

    invoke-interface {v14, v15}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v35

    sget-boolean v17, Lcom/miui/permcenter/o;->e:Z

    const-wide/16 v37, 0x0

    if-eqz v17, :cond_8

    invoke-interface {v14, v11}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v18

    move-wide/from16 v39, v18

    goto :goto_5

    :cond_8
    move-wide/from16 v39, v37

    :goto_5
    invoke-interface {v14, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v41

    invoke-interface {v14, v3}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v43

    invoke-interface {v14, v5}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v45

    if-eqz v17, :cond_9

    invoke-interface {v14, v12}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v17

    move-wide/from16 v47, v17

    goto :goto_6

    :cond_9
    move-wide/from16 v47, v37

    :goto_6
    invoke-interface {v14, v7}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v49

    invoke-interface {v14, v8}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v51

    const/4 v2, 0x7

    invoke-interface {v14, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v53

    const/16 v2, 0x8

    invoke-interface {v14, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v55

    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    invoke-interface/range {p2 .. p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v57

    :goto_7
    invoke-interface/range {v57 .. v57}, Ljava/util/Iterator;->hasNext()Z

    move-result v17

    if-eqz v17, :cond_e

    invoke-interface/range {v57 .. v57}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v17

    move-object/from16 v3, v17

    check-cast v3, Ljava/lang/Long;

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v17

    and-long v17, v53, v17

    cmp-long v17, v17, v37

    if-eqz v17, :cond_d

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v17

    and-long v17, v55, v17

    cmp-long v17, v17, v37

    if-eqz v17, :cond_a

    goto :goto_9

    :cond_a
    if-eqz v1, :cond_b

    move-object/from16 v58, v6

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v5

    iget-object v7, v9, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    invoke-interface {v1, v5, v6, v7}, Lxc/c;->a(JLjava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_c

    goto :goto_8

    :cond_b
    move-object/from16 v58, v6

    :cond_c
    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v17

    move-wide/from16 v19, v35

    move-wide/from16 v21, v39

    move-wide/from16 v23, v41

    move-wide/from16 v25, v43

    move-wide/from16 v27, v45

    move-wide/from16 v29, v47

    move-wide/from16 v31, v49

    move-wide/from16 v33, v51

    invoke-static/range {v17 .. v34}, Lcom/miui/permission/PermissionManager;->calculatePermissionActionWithReal(JJJJJJJJJ)I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v2, v3, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :goto_8
    move-object/from16 v6, v58

    const/4 v3, 0x3

    const/4 v5, 0x4

    const/4 v7, 0x5

    goto :goto_7

    :cond_d
    :goto_9
    const/4 v3, 0x3

    goto :goto_7

    :cond_e
    move-object/from16 v58, v6

    invoke-virtual {v2}, Ljava/util/HashMap;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_f

    :goto_a
    move-object/from16 v6, v58

    const/4 v2, 0x2

    const/4 v3, 0x3

    const/4 v5, 0x4

    const/4 v7, 0x5

    goto/16 :goto_3

    :cond_f
    invoke-interface/range {p2 .. p2}, Ljava/util/List;->size()I

    move-result v3

    if-ne v3, v15, :cond_10

    const-wide/16 v5, 0x4000

    move-object/from16 v3, p2

    const/4 v7, 0x0

    invoke-interface {v3, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Ljava/lang/Long;

    invoke-virtual/range {v17 .. v17}, Ljava/lang/Long;->longValue()J

    move-result-wide v17

    cmp-long v5, v5, v17

    if-eqz v5, :cond_11

    goto :goto_b

    :cond_10
    move-object/from16 v3, p2

    const/4 v7, 0x0

    :goto_b
    invoke-static {v9, v2}, Lxc/u;->d(Landroid/content/pm/PackageInfo;Ljava/util/Map;)V

    :cond_11
    new-instance v5, Lcom/miui/permcenter/AppPermissionInfo;

    invoke-direct {v5}, Lcom/miui/permcenter/AppPermissionInfo;-><init>()V

    invoke-virtual {v5, v10}, Lcom/miui/permcenter/AppPermissionInfo;->setPackageName(Ljava/lang/String;)V

    iget-object v6, v9, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v6, v6, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-virtual {v5, v6}, Lcom/miui/permcenter/AppPermissionInfo;->setUid(I)V

    iget-object v6, v9, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v6, v6, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/2addr v6, v15

    if-eqz v6, :cond_12

    move v6, v15

    goto :goto_c

    :cond_12
    move v6, v7

    :goto_c
    invoke-virtual {v5, v6}, Lcom/miui/permcenter/AppPermissionInfo;->setSystem(Z)V

    iget-object v6, v9, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    invoke-static {v0, v6}, Lx4/f1;->P(Landroid/content/Context;Landroid/content/pm/ApplicationInfo;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/miui/permcenter/AppPermissionInfo;->setLabel(Ljava/lang/String;)V

    invoke-static {v5, v9}, Lcom/miui/permcenter/n;->G(Lcom/miui/permcenter/AppPermissionInfo;Landroid/content/pm/PackageInfo;)V

    invoke-virtual {v5, v2}, Lcom/miui/permcenter/AppPermissionInfo;->setPermissionToAction(Ljava/util/HashMap;)V

    iget-object v2, v9, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v2, v2, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    invoke-virtual {v5, v2}, Lcom/miui/permcenter/AppPermissionInfo;->setTargetSdkVersion(I)V

    iget-object v2, v9, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v2, v2, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-virtual {v5, v2}, Lcom/miui/permcenter/AppPermissionInfo;->setUid(I)V

    iget-object v2, v9, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    invoke-static {v0, v2}, Lxc/m;->b(Landroid/content/Context;Landroid/content/pm/ApplicationInfo;)Lxc/m$a;

    move-result-object v2

    sget-object v6, Lxc/m$a;->a:Lxc/m$a;

    if-ne v2, v6, :cond_13

    goto :goto_d

    :cond_13
    move v15, v7

    :goto_d
    invoke-virtual {v5, v15}, Lcom/miui/permcenter/AppPermissionInfo;->setNoScopedStorage(Z)V

    invoke-virtual {v13, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_a

    :cond_14
    new-instance v0, Lcom/miui/permcenter/b;

    invoke-direct {v0}, Lcom/miui/permcenter/b;-><init>()V

    invoke-static {v13, v0}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_e

    :catchall_0
    move-exception v0

    move-object/from16 v20, v14

    goto :goto_f

    :cond_15
    :goto_e
    invoke-static {v14}, Lbl/e;->a(Ljava/io/Closeable;)V

    return-object v13

    :catchall_1
    move-exception v0

    :goto_f
    invoke-static/range {v20 .. v20}, Lbl/e;->a(Ljava/io/Closeable;)V

    throw v0
.end method
