.class public final Lcom/gzy/redmiport/GameStore;
.super Ljava/lang/Object;
.source "GameStore.java"


# static fields
.field private static final SELECTION:Ljava/lang/String; = "package_name=? AND package_uid=? AND flag_white=? AND pop_game IS NULL"

.field private static final TABLE:Landroid/net/Uri;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 10
    const-string v0, "content://com.miui.securitycenter.gamebooster/gamebooster"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/gzy/redmiport/GameStore;->TABLE:Landroid/net/Uri;

    .line 11
    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static contains(Landroid/content/ContentResolver;[Ljava/lang/String;)Z
    .registers 9

    .line 13
    const/4 v0, 0x0

    :try_start_1
    sget-object v2, Lcom/gzy/redmiport/GameStore;->TABLE:Landroid/net/Uri;

    const-string v1, "_id"

    filled-new-array {v1}, [Ljava/lang/String;

    move-result-object v3

    const-string v4, "package_name=? AND package_uid=? AND flag_white=? AND pop_game IS NULL"

    const/4 v6, 0x0

    move-object v1, p0

    move-object v5, p1

    invoke-virtual/range {v1 .. v6}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p0
    :try_end_12
    .catchall {:try_start_1 .. :try_end_12} :catchall_2f

    .line 14
    if-eqz p0, :cond_21

    .line 15
    :try_start_14
    invoke-interface {p0}, Landroid/database/Cursor;->moveToFirst()Z

    move-result p1
    :try_end_18
    .catchall {:try_start_14 .. :try_end_18} :catchall_1e

    .line 16
    if-eqz p0, :cond_1d

    :try_start_1a
    invoke-interface {p0}, Landroid/database/Cursor;->close()V
    :try_end_1d
    .catchall {:try_start_1a .. :try_end_1d} :catchall_2f

    .line 15
    :cond_1d
    return p1

    :catchall_1e
    move-exception p1

    move-object v0, p1

    goto :goto_29

    .line 14
    :cond_21
    :try_start_21
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "Game provider returned no cursor"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
    :try_end_29
    .catchall {:try_start_21 .. :try_end_29} :catchall_1e

    .line 16
    :goto_29
    if-eqz p0, :cond_2e

    :try_start_2b
    invoke-interface {p0}, Landroid/database/Cursor;->close()V

    :cond_2e
    throw v0
    :try_end_2f
    .catchall {:try_start_2b .. :try_end_2f} :catchall_2f

    :catchall_2f
    move-exception p0

    if-eqz v0, :cond_38

    if-eq v0, p0, :cond_37

    invoke-virtual {v0, p0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_37
    move-object p0, v0

    :cond_38
    throw p0
.end method

.method public static hasGames(Landroid/content/Context;)Z
    .registers 8

    .line 64
    const/4 v0, 0x0

    :try_start_1
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    sget-object v2, Lcom/gzy/redmiport/GameStore;->TABLE:Landroid/net/Uri;

    const-string p0, "_id"

    filled-new-array {p0}, [Ljava/lang/String;

    move-result-object v3

    const-string v4, "flag_white=0 AND pop_game IS NULL AND is_del=0"

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-virtual/range {v1 .. v6}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p0
    :try_end_15
    .catchall {:try_start_1 .. :try_end_15} :catchall_2d

    .line 65
    if-eqz p0, :cond_26

    :try_start_17
    invoke-interface {p0}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v1
    :try_end_1b
    .catchall {:try_start_17 .. :try_end_1b} :catchall_1f

    if-eqz v1, :cond_26

    const/4 v1, 0x1

    goto :goto_27

    :catchall_1f
    move-exception v0

    .line 66
    if-eqz p0, :cond_25

    :try_start_22
    invoke-interface {p0}, Landroid/database/Cursor;->close()V

    :cond_25
    throw v0

    .line 65
    :cond_26
    const/4 v1, 0x0

    .line 66
    :goto_27
    if-eqz p0, :cond_2c

    invoke-interface {p0}, Landroid/database/Cursor;->close()V
    :try_end_2c
    .catchall {:try_start_22 .. :try_end_2c} :catchall_2d

    .line 65
    :cond_2c
    return v1

    .line 66
    :catchall_2d
    move-exception p0

    if-eqz v0, :cond_36

    if-eq v0, p0, :cond_35

    invoke-virtual {v0, p0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_35
    move-object p0, v0

    :cond_36
    throw p0
.end method

.method public static declared-synchronized save(Landroid/content/Context;Landroid/content/pm/ApplicationInfo;Z)Z
    .registers 25

    move-object/from16 v1, p0

    move-object/from16 v0, p1

    move/from16 v2, p2

    const-class v3, Lcom/gzy/redmiport/GameStore;

    monitor-enter v3

    .line 20
    const/4 v4, 0x1

    const/4 v5, 0x0

    if-eqz v0, :cond_ff

    :try_start_d
    iget-object v6, v0, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    if-eqz v6, :cond_ff

    .line 21
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    .line 22
    iget-object v7, v0, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    iget v8, v0, Landroid/content/pm/ApplicationInfo;->uid:I

    const v9, 0x186a0

    div-int/2addr v8, v9

    invoke-static {v8}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v8

    const-string v10, "0"

    filled-new-array {v7, v8, v10}, [Ljava/lang/String;

    move-result-object v7

    .line 23
    if-eqz v2, :cond_bb

    .line 24
    invoke-static {v6, v7}, Lcom/gzy/redmiport/GameStore;->contains(Landroid/content/ContentResolver;[Ljava/lang/String;)Z

    move-result v8

    if-nez v8, :cond_c2

    .line 25
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v8

    invoke-virtual {v0, v8}, Landroid/content/pm/ApplicationInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v8

    .line 26
    new-instance v10, Landroid/content/ContentValues;

    invoke-direct {v10}, Landroid/content/ContentValues;-><init>()V

    .line 27
    const-string v11, "package_name"

    iget-object v12, v0, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v10, v11, v12}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 28
    const-string v11, "app_name"

    if-nez v8, :cond_4a

    iget-object v8, v0, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    goto :goto_4e

    :cond_4a
    invoke-interface {v8}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v8

    :goto_4e
    invoke-virtual {v10, v11, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 29
    const-string v8, "package_uid"

    iget v11, v0, Landroid/content/pm/ApplicationInfo;->uid:I

    div-int/2addr v11, v9

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v10, v8, v9}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 30
    const-string v8, "flag_white"

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v10, v8, v9}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 31
    const-string v8, "is_del"

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v10, v8, v9}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 32
    const-string v8, "pop_game"

    invoke-virtual {v10, v8}, Landroid/content/ContentValues;->putNull(Ljava/lang/String;)V

    .line 33
    const-string v11, "settings_gs"

    const-string v12, "settings_ts"

    const-string v13, "settings_edge"

    const-string v14, "settings_hdr"

    const-string v15, "settings_follow"

    .line 34
    const-string v16, "settings_hot_area"

    const-string v17, "settings_finger"

    const-string v18, "settings_shake"

    const-string v19, "settings_sensitivity"

    const-string v20, "settings_op_stability"

    const-string v21, "settings_touch_mode"

    filled-new-array/range {v11 .. v21}, [Ljava/lang/String;

    move-result-object v8

    .line 33
    nop

    .line 35
    move v9, v5

    :goto_90
    const/16 v11, 0xb

    if-lt v9, v11, :cond_ae

    .line 36
    const-string v8, "settings_4d"

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v10, v8, v9}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 37
    sget-object v8, Lcom/gzy/redmiport/GameStore;->TABLE:Landroid/net/Uri;

    invoke-virtual {v6, v8, v10}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object v8

    if-eqz v8, :cond_a6

    goto :goto_c2

    :cond_a6
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v2, "Game insert returned null"

    invoke-direct {v0, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 35
    :cond_ae
    aget-object v11, v8, v9

    const/4 v12, -0x1

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    invoke-virtual {v10, v11, v12}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    add-int/lit8 v9, v9, 0x1

    goto :goto_90

    .line 39
    :cond_bb
    sget-object v8, Lcom/gzy/redmiport/GameStore;->TABLE:Landroid/net/Uri;

    const-string v9, "package_name=? AND package_uid=? AND flag_white=? AND pop_game IS NULL"

    invoke-virtual {v6, v8, v9, v7}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    .line 40
    :cond_c2
    :goto_c2
    invoke-static {v6, v7}, Lcom/gzy/redmiport/GameStore;->contains(Landroid/content/ContentResolver;[Ljava/lang/String;)Z

    move-result v6

    if-ne v6, v2, :cond_f7

    .line 41
    const-string v6, "redmi-port-status"

    invoke-virtual {v1, v6, v5}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v6

    invoke-interface {v6}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v6

    .line 42
    const-string v7, "last_save"

    new-instance v8, Ljava/lang/StringBuilder;

    iget-object v0, v0, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v8, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    if-eqz v2, :cond_e4

    const-string v0, "\uff1a\u5df2\u6dfb\u52a0"

    goto :goto_e6

    :cond_e4
    const-string v0, "\uff1a\u5df2\u79fb\u9664"

    :goto_e6
    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v6, v7, v0}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z
    :try_end_f5
    .catchall {:try_start_d .. :try_end_f5} :catchall_107

    .line 43
    monitor-exit v3

    return v4

    .line 40
    :cond_f7
    :try_start_f7
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v2, "Game write/readback mismatch"

    invoke-direct {v0, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 20
    :cond_ff
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v2, "Missing game package"

    invoke-direct {v0, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_107
    .catchall {:try_start_f7 .. :try_end_107} :catchall_107

    .line 44
    :catchall_107
    move-exception v0

    .line 45
    :try_start_108
    const-string v2, "Game selection write/readback"

    invoke-static {v2, v0}, Lcom/gzy/redmidiag/CrashReporter;->record(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 46
    const-string v0, "\u6e38\u620f\u5217\u8868\u4fdd\u5b58\u5931\u8d25\uff0c\u8bf7\u67e5\u770b\u5d29\u6e83\u65e5\u5fd7"

    invoke-static {v1, v0, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V
    :try_end_116
    .catchall {:try_start_108 .. :try_end_116} :catchall_118

    .line 47
    monitor-exit v3

    return v5

    .line 19
    :catchall_118
    move-exception v0

    monitor-exit v3

    throw v0
.end method

.method public static selected(Landroid/content/Context;Ljava/lang/String;I)Z
    .registers 10

    .line 57
    const/4 v0, 0x0

    :try_start_1
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    sget-object v2, Lcom/gzy/redmiport/GameStore;->TABLE:Landroid/net/Uri;

    const-string p0, "_id"

    filled-new-array {p0}, [Ljava/lang/String;

    move-result-object v3

    const-string v4, "package_name=? AND package_uid=? AND flag_white=? AND pop_game IS NULL AND is_del=0"

    .line 58
    const p0, 0x186a0

    div-int/2addr p2, p0

    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p0

    const-string p2, "0"

    filled-new-array {p1, p0, p2}, [Ljava/lang/String;

    move-result-object v5

    .line 57
    const/4 v6, 0x0

    invoke-virtual/range {v1 .. v6}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p0
    :try_end_22
    .catchall {:try_start_1 .. :try_end_22} :catchall_3f

    .line 59
    if-eqz p0, :cond_31

    .line 60
    :try_start_24
    invoke-interface {p0}, Landroid/database/Cursor;->moveToFirst()Z

    move-result p1
    :try_end_28
    .catchall {:try_start_24 .. :try_end_28} :catchall_2e

    .line 61
    if-eqz p0, :cond_2d

    :try_start_2a
    invoke-interface {p0}, Landroid/database/Cursor;->close()V
    :try_end_2d
    .catchall {:try_start_2a .. :try_end_2d} :catchall_3f

    .line 60
    :cond_2d
    return p1

    :catchall_2e
    move-exception p1

    move-object v0, p1

    goto :goto_39

    .line 59
    :cond_31
    :try_start_31
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "Game provider returned no cursor"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
    :try_end_39
    .catchall {:try_start_31 .. :try_end_39} :catchall_2e

    .line 61
    :goto_39
    if-eqz p0, :cond_3e

    :try_start_3b
    invoke-interface {p0}, Landroid/database/Cursor;->close()V

    :cond_3e
    throw v0
    :try_end_3f
    .catchall {:try_start_3b .. :try_end_3f} :catchall_3f

    :catchall_3f
    move-exception p0

    if-eqz v0, :cond_48

    if-eq v0, p0, :cond_47

    invoke-virtual {v0, p0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_47
    move-object p0, v0

    :cond_48
    throw p0
.end method

.method public static status(Landroid/content/Context;)Ljava/lang/String;
    .registers 8

    .line 51
    const/4 v0, 0x0

    :try_start_1
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    sget-object v2, Lcom/gzy/redmiport/GameStore;->TABLE:Landroid/net/Uri;

    const-string v3, "_id"

    filled-new-array {v3}, [Ljava/lang/String;

    move-result-object v3

    const-string v4, "flag_white=0 AND pop_game IS NULL"

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-virtual/range {v1 .. v6}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    .line 52
    if-nez v1, :cond_1f

    .line 54
    if-eqz v1, :cond_1c

    invoke-interface {v1}, Landroid/database/Cursor;->close()V
    :try_end_1c
    .catchall {:try_start_1 .. :try_end_1c} :catchall_59

    .line 52
    :cond_1c
    const-string p0, "\u6e38\u620f\u6570\u636e\u5e93\u6682\u4e0d\u53ef\u8bfb\u53d6"

    return-object p0

    .line 53
    :cond_1f
    :try_start_1f
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "\u5df2\u4fdd\u5b58\u6e38\u620f\uff1a"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface {v1}, Landroid/database/Cursor;->getCount()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "redmi-port-status"

    const/4 v4, 0x0

    invoke-virtual {p0, v3, v4}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p0

    const-string v3, "last_save"

    const-string v4, ""

    invoke-interface {p0, v3, v4}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0
    :try_end_4b
    .catchall {:try_start_1f .. :try_end_4b} :catchall_51

    .line 54
    if-eqz v1, :cond_50

    :try_start_4d
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 53
    :cond_50
    return-object p0

    :catchall_51
    move-exception p0

    move-object v0, p0

    .line 54
    if-eqz v1, :cond_58

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    :cond_58
    throw v0
    :try_end_59
    .catchall {:try_start_4d .. :try_end_59} :catchall_59

    :catchall_59
    move-exception p0

    if-eqz v0, :cond_62

    if-eq v0, p0, :cond_61

    :try_start_5e
    invoke-virtual {v0, p0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_61
    move-object p0, v0

    :cond_62
    throw p0
    :try_end_63
    .catchall {:try_start_5e .. :try_end_63} :catchall_63

    :catchall_63
    move-exception p0

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "\u6e38\u620f\u6570\u636e\u5e93\u8bfb\u53d6\u5931\u8d25\uff1a"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
