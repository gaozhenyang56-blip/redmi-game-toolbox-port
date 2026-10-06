.class public Lcom/miui/permcenter/permissions/acrossterminal/AcrossTerminalPermissionContentProvider;
.super Landroid/content/ContentProvider;
.source "SourceFile"


# static fields
.field private static d:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Lcom/miui/permcenter/permissions/acrossterminal/a;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final a:Ljava/lang/String;

.field private b:Landroid/os/Handler;

.field private final c:I


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Landroid/content/ContentProvider;-><init>()V

    const-string v0, "AcrossTerminalPermissionContentProvider"

    iput-object v0, p0, Lcom/miui/permcenter/permissions/acrossterminal/AcrossTerminalPermissionContentProvider;->a:Ljava/lang/String;

    const/4 v0, 0x0

    iput v0, p0, Lcom/miui/permcenter/permissions/acrossterminal/AcrossTerminalPermissionContentProvider;->c:I

    return-void
.end method

.method public static synthetic a()V
    .locals 0

    invoke-static {}, Lcom/miui/permcenter/permissions/acrossterminal/AcrossTerminalPermissionContentProvider;->d()V

    return-void
.end method

.method public static synthetic b(Lcom/miui/permcenter/permissions/acrossterminal/AcrossTerminalPermissionContentProvider;)V
    .locals 0

    invoke-direct {p0}, Lcom/miui/permcenter/permissions/acrossterminal/AcrossTerminalPermissionContentProvider;->e()V

    return-void
.end method

.method private c()V
    .locals 2

    invoke-static {}, Lxc/q;->c()Landroid/os/Handler;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/permcenter/permissions/acrossterminal/AcrossTerminalPermissionContentProvider;->b:Landroid/os/Handler;

    new-instance v1, Ldc/a;

    invoke-direct {v1}, Ldc/a;-><init>()V

    invoke-static {v0, v1}, Landroid/os/Message;->obtain(Landroid/os/Handler;Ljava/lang/Runnable;)Landroid/os/Message;

    move-result-object v0

    const/4 v1, 0x0

    iput v1, v0, Landroid/os/Message;->what:I

    iget-object v1, p0, Lcom/miui/permcenter/permissions/acrossterminal/AcrossTerminalPermissionContentProvider;->b:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method private static synthetic d()V
    .locals 1

    :try_start_0
    invoke-static {}, Lcom/miui/permcenter/permissions/acrossterminal/b;->b()Ljava/util/HashMap;

    move-result-object v0

    sput-object v0, Lcom/miui/permcenter/permissions/acrossterminal/AcrossTerminalPermissionContentProvider;->d:Ljava/util/HashMap;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    :goto_0
    return-void
.end method

.method private synthetic e()V
    .locals 2

    :try_start_0
    invoke-static {}, Lcom/miui/permcenter/permissions/acrossterminal/b;->a()V

    const-string v0, "AcrossTerminalPermissionContentProvider"

    const-string v1, "update:"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    :goto_0
    return-void
.end method

.method private f()V
    .locals 3

    iget-object v0, p0, Lcom/miui/permcenter/permissions/acrossterminal/AcrossTerminalPermissionContentProvider;->b:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    iget-object v0, p0, Lcom/miui/permcenter/permissions/acrossterminal/AcrossTerminalPermissionContentProvider;->b:Landroid/os/Handler;

    new-instance v2, Ldc/b;

    invoke-direct {v2, p0}, Ldc/b;-><init>(Lcom/miui/permcenter/permissions/acrossterminal/AcrossTerminalPermissionContentProvider;)V

    invoke-static {v0, v2}, Landroid/os/Message;->obtain(Landroid/os/Handler;Ljava/lang/Runnable;)Landroid/os/Message;

    move-result-object v0

    iput v1, v0, Landroid/os/Message;->what:I

    iget-object v1, p0, Lcom/miui/permcenter/permissions/acrossterminal/AcrossTerminalPermissionContentProvider;->b:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method


# virtual methods
.method public call(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;
    .locals 19
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p3    # Landroid/os/Bundle;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    move-object/from16 v0, p1

    move-object/from16 v1, p3

    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->hashCode()I

    const-string v3, "temp_close_capsule"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1e

    const-string v3, "notify_terminal_privacy"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1d

    sget-object v3, Lcom/miui/permcenter/permissions/acrossterminal/b;->d:Ljava/lang/String;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_0

    return-object v2

    :cond_0
    sget-object v4, Lcom/miui/permcenter/permissions/acrossterminal/AcrossTerminalPermissionContentProvider;->d:Ljava/util/HashMap;

    const/4 v5, 0x0

    const/4 v6, 0x0

    if-nez v4, :cond_2

    move-object/from16 v4, p0

    iget-object v7, v4, Lcom/miui/permcenter/permissions/acrossterminal/AcrossTerminalPermissionContentProvider;->b:Landroid/os/Handler;

    if-eqz v7, :cond_1

    invoke-virtual {v7, v5}, Landroid/os/Handler;->removeMessages(I)V

    :cond_1
    :try_start_0
    invoke-static {}, Lcom/miui/permcenter/permissions/acrossterminal/b;->b()Ljava/util/HashMap;

    move-result-object v7

    sput-object v7, Lcom/miui/permcenter/permissions/acrossterminal/AcrossTerminalPermissionContentProvider;->d:Ljava/util/HashMap;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    return-object v6

    :cond_2
    move-object/from16 v4, p0

    :goto_0
    const-string v7, "get_all_terminal"

    invoke-virtual {v7, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    const-string v8, "extra_data"

    if-eqz v7, :cond_4

    sget-object v0, Lcom/miui/permcenter/permissions/acrossterminal/AcrossTerminalPermissionContentProvider;->d:Ljava/util/HashMap;

    invoke-virtual {v0, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_3

    sget-object v0, Lcom/miui/permcenter/permissions/acrossterminal/AcrossTerminalPermissionContentProvider;->d:Ljava/util/HashMap;

    invoke-virtual {v0, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/permcenter/permissions/acrossterminal/a;

    invoke-virtual {v0}, Lcom/miui/permcenter/permissions/acrossterminal/a;->b()Ljava/util/HashMap;

    move-result-object v0

    invoke-virtual {v2, v8, v0}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    :cond_3
    return-object v2

    :cond_4
    if-nez v1, :cond_5

    return-object v6

    :cond_5
    const-string v7, "terminalId"

    invoke-virtual {v1, v7}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    const-string v7, "permissionName"

    invoke-virtual {v1, v7}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    const-string v9, "terminalName"

    invoke-virtual {v1, v9}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    const-string v9, "action"

    invoke-virtual {v1, v9}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;)I

    move-result v10

    const-string v12, "terminalType"

    invoke-virtual {v1, v12}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;)I

    move-result v12

    const-string v13, "onetimeFlag"

    invoke-virtual {v1, v13}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;)I

    move-result v13

    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v14

    if-nez v14, :cond_6

    invoke-static {v7}, Ldc/d;->a(Ljava/lang/String;)Ldc/c;

    move-result-object v14

    if-nez v14, :cond_7

    return-object v6

    :cond_6
    move-object v14, v6

    :cond_7
    sget-object v5, Lcom/miui/permcenter/permissions/acrossterminal/AcrossTerminalPermissionContentProvider;->d:Ljava/util/HashMap;

    invoke-virtual {v5, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/miui/permcenter/permissions/acrossterminal/a;

    if-eqz v5, :cond_8

    invoke-virtual {v5}, Lcom/miui/permcenter/permissions/acrossterminal/a;->b()Ljava/util/HashMap;

    move-result-object v16

    move-object/from16 v6, v16

    :cond_8
    const/16 v17, -0x1

    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->hashCode()I

    move-result v18

    sparse-switch v18, :sswitch_data_0

    goto :goto_1

    :sswitch_0
    const-string v4, "update_terminal_permission"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_9

    goto :goto_1

    :cond_9
    const/16 v17, 0x3

    goto :goto_1

    :sswitch_1
    const-string v4, "check_permission"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_a

    goto :goto_1

    :cond_a
    const/16 v17, 0x2

    goto :goto_1

    :sswitch_2
    const-string v4, "update_terminal_name"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_b

    goto :goto_1

    :cond_b
    const/16 v17, 0x1

    goto :goto_1

    :sswitch_3
    const-string v4, "get_all_permission"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_c

    goto :goto_1

    :cond_c
    const/16 v17, 0x0

    :goto_1
    const-string v0, "METHOD_CHECK_PERMISSION return for params empty."

    const-string v4, "AcrossTerminalPermissionContentProvider"

    packed-switch v17, :pswitch_data_0

    goto/16 :goto_8

    :pswitch_0
    invoke-static {v11}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_18

    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_18

    invoke-static {v15}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_d

    goto/16 :goto_6

    :cond_d
    if-nez v5, :cond_e

    new-instance v5, Lcom/miui/permcenter/permissions/acrossterminal/a;

    invoke-direct {v5}, Lcom/miui/permcenter/permissions/acrossterminal/a;-><init>()V

    invoke-virtual {v5, v3}, Lcom/miui/permcenter/permissions/acrossterminal/a;->c(Ljava/lang/String;)V

    :cond_e
    invoke-virtual {v5}, Lcom/miui/permcenter/permissions/acrossterminal/a;->b()Ljava/util/HashMap;

    move-result-object v0

    invoke-virtual {v0, v11}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/permcenter/permissions/acrossterminal/a$b;

    new-instance v6, Lcom/miui/permcenter/permissions/acrossterminal/a$a;

    invoke-direct {v6, v7, v10}, Lcom/miui/permcenter/permissions/acrossterminal/a$a;-><init>(Ljava/lang/String;I)V

    invoke-virtual {v6, v13}, Lcom/miui/permcenter/permissions/acrossterminal/a$a;->d(I)V

    if-nez v0, :cond_f

    new-instance v0, Lcom/miui/permcenter/permissions/acrossterminal/a$b;

    invoke-direct {v0}, Lcom/miui/permcenter/permissions/acrossterminal/a$b;-><init>()V

    invoke-virtual {v0, v11}, Lcom/miui/permcenter/permissions/acrossterminal/a$b;->f(Ljava/lang/String;)V

    invoke-virtual {v0, v15}, Lcom/miui/permcenter/permissions/acrossterminal/a$b;->g(Ljava/lang/String;)V

    invoke-virtual {v0, v12}, Lcom/miui/permcenter/permissions/acrossterminal/a$b;->h(I)V

    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    invoke-virtual {v1, v7, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v0, v1}, Lcom/miui/permcenter/permissions/acrossterminal/a$b;->e(Ljava/util/HashMap;)V

    invoke-virtual {v5}, Lcom/miui/permcenter/permissions/acrossterminal/a;->b()Ljava/util/HashMap;

    move-result-object v1

    invoke-virtual {v1, v11, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/miui/permcenter/permissions/acrossterminal/AcrossTerminalPermissionContentProvider;->d:Ljava/util/HashMap;

    invoke-virtual {v0, v3, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "METHOD_UPDATE_TERMINAL_PERMISSION: account = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ",terminalId = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ",terminalName = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ",permissionName = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ",action = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_7

    :cond_f
    const/4 v3, 0x3

    if-ne v10, v3, :cond_10

    const-string v3, "override_onetime"

    const/4 v5, 0x1

    invoke-virtual {v1, v3, v5}, Landroid/os/BaseBundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    if-nez v1, :cond_10

    goto :goto_2

    :cond_10
    const/4 v5, 0x0

    :goto_2
    if-eqz v5, :cond_11

    invoke-virtual {v0}, Lcom/miui/permcenter/permissions/acrossterminal/a$b;->a()Ljava/util/HashMap;

    move-result-object v1

    invoke-virtual {v1, v7}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_11

    invoke-virtual {v0}, Lcom/miui/permcenter/permissions/acrossterminal/a$b;->a()Ljava/util/HashMap;

    move-result-object v1

    invoke-virtual {v1, v7}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/miui/permcenter/permissions/acrossterminal/a$a;

    invoke-virtual {v1}, Lcom/miui/permcenter/permissions/acrossterminal/a$a;->a()I

    move-result v1

    const/4 v3, 0x2

    if-eq v1, v3, :cond_11

    goto/16 :goto_8

    :cond_11
    if-eqz v5, :cond_12

    invoke-virtual/range {p0 .. p0}, Landroid/content/ContentProvider;->getContext()Landroid/content/Context;

    move-result-object v9

    const/4 v13, 0x2

    const/4 v14, 0x3

    move-object v10, v7

    move-object v12, v15

    invoke-static/range {v9 .. v14}, Lz4/b;->j(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;II)V

    :cond_12
    invoke-virtual {v0, v15}, Lcom/miui/permcenter/permissions/acrossterminal/a$b;->g(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/miui/permcenter/permissions/acrossterminal/a$b;->a()Ljava/util/HashMap;

    move-result-object v0

    invoke-virtual {v0, v7, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "METHOD_UPDATE_TERMINAL_PERMISSION: "

    goto/16 :goto_7

    :pswitch_1
    invoke-static {v11}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_18

    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_13

    goto/16 :goto_6

    :cond_13
    if-eqz v6, :cond_14

    invoke-virtual {v6, v11}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_14

    invoke-virtual {v6, v11}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/permcenter/permissions/acrossterminal/a$b;

    invoke-virtual {v0}, Lcom/miui/permcenter/permissions/acrossterminal/a$b;->a()Ljava/util/HashMap;

    move-result-object v0

    if-eqz v0, :cond_14

    invoke-virtual {v6, v11}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/permcenter/permissions/acrossterminal/a$b;

    invoke-virtual {v0}, Lcom/miui/permcenter/permissions/acrossterminal/a$b;->a()Ljava/util/HashMap;

    move-result-object v0

    invoke-virtual {v0, v7}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    move-object v6, v0

    check-cast v6, Lcom/miui/permcenter/permissions/acrossterminal/a$a;

    goto :goto_3

    :cond_14
    const/4 v6, 0x0

    :goto_3
    if-eqz v14, :cond_1c

    if-nez v6, :cond_15

    invoke-virtual {v14}, Ldc/c;->b()I

    move-result v0

    goto :goto_4

    :cond_15
    invoke-virtual {v6}, Lcom/miui/permcenter/permissions/acrossterminal/a$a;->a()I

    move-result v0

    :goto_4
    invoke-virtual {v2, v9, v0}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    const/4 v1, 0x2

    if-ne v0, v1, :cond_16

    invoke-virtual/range {p0 .. p0}, Landroid/content/ContentProvider;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lkc/q;->G(Landroid/content/Context;)Lkc/q;

    move-result-object v0

    invoke-virtual {v0, v7, v11}, Lkc/q;->D(Ljava/lang/String;Ljava/lang/String;)V

    :cond_16
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "METHOD_CHECK_PERMISSION, action:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-nez v6, :cond_17

    invoke-virtual {v14}, Ldc/c;->b()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    goto :goto_5

    :cond_17
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6}, Lcom/miui/permcenter/permissions/acrossterminal/a$a;->a()I

    move-result v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ",onetimeFlag:"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Lcom/miui/permcenter/permissions/acrossterminal/a$a;->b()I

    move-result v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    :goto_5
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :cond_18
    :goto_6
    invoke-static {v4, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_8

    :pswitch_2
    invoke-static {v11}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1c

    invoke-static {v15}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1c

    if-nez v5, :cond_19

    goto :goto_8

    :cond_19
    invoke-virtual {v5}, Lcom/miui/permcenter/permissions/acrossterminal/a;->b()Ljava/util/HashMap;

    move-result-object v0

    invoke-virtual {v0, v11}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/permcenter/permissions/acrossterminal/a$b;

    if-eqz v0, :cond_1a

    invoke-virtual {v0, v15}, Lcom/miui/permcenter/permissions/acrossterminal/a$b;->g(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "METHOD_UPDATE_TERMINAL_NAME: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_7
    invoke-static {v4, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1a
    invoke-direct/range {p0 .. p0}, Lcom/miui/permcenter/permissions/acrossterminal/AcrossTerminalPermissionContentProvider;->f()V

    goto :goto_8

    :pswitch_3
    invoke-static {v11}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1c

    if-eqz v5, :cond_1c

    invoke-virtual {v5}, Lcom/miui/permcenter/permissions/acrossterminal/a;->b()Ljava/util/HashMap;

    move-result-object v0

    if-nez v0, :cond_1b

    goto :goto_8

    :cond_1b
    invoke-virtual {v5}, Lcom/miui/permcenter/permissions/acrossterminal/a;->b()Ljava/util/HashMap;

    move-result-object v0

    invoke-virtual {v0, v11}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/permcenter/permissions/acrossterminal/a$b;

    invoke-virtual {v2, v8, v0}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    :cond_1c
    :goto_8
    return-object v2

    :cond_1d
    invoke-virtual/range {p0 .. p0}, Landroid/content/ContentProvider;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lkc/q;->G(Landroid/content/Context;)Lkc/q;

    move-result-object v0

    invoke-virtual {v0, v1}, Lkc/q;->U(Landroid/os/Bundle;)V

    return-object v2

    :cond_1e
    invoke-virtual/range {p0 .. p0}, Landroid/content/ContentProvider;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, v1}, Lz4/d;->j(Landroid/content/Context;Landroid/os/Bundle;)V

    return-object v2

    nop

    :sswitch_data_0
    .sparse-switch
        0xd818b36 -> :sswitch_3
        0x552d4578 -> :sswitch_2
        0x6efc4166 -> :sswitch_1
        0x7b44eafc -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I
    .locals 0
    .param p1    # Landroid/net/Uri;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p3    # [Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    const/4 p1, 0x0

    return p1
.end method

.method public getType(Landroid/net/Uri;)Ljava/lang/String;
    .locals 0
    .param p1    # Landroid/net/Uri;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    const/4 p1, 0x0

    return-object p1
.end method

.method public insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;
    .locals 0
    .param p1    # Landroid/net/Uri;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroid/content/ContentValues;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    const/4 p1, 0x0

    return-object p1
.end method

.method public onCreate()Z
    .locals 1

    invoke-direct {p0}, Lcom/miui/permcenter/permissions/acrossterminal/AcrossTerminalPermissionContentProvider;->c()V

    const/4 v0, 0x0

    return v0
.end method

.method public query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    .locals 0
    .param p1    # Landroid/net/Uri;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # [Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p3    # Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p4    # [Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p5    # Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    const/4 p1, 0x0

    return-object p1
.end method

.method public update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    .locals 0
    .param p1    # Landroid/net/Uri;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroid/content/ContentValues;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p3    # Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p4    # [Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    const/4 p1, 0x0

    return p1
.end method
