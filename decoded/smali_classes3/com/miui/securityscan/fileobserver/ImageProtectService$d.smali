.class Lcom/miui/securityscan/fileobserver/ImageProtectService$d;
.super Landroid/os/Handler;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/securityscan/fileobserver/ImageProtectService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "d"
.end annotation


# instance fields
.field private a:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Lcom/miui/securityscan/fileobserver/ImageProtectService;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lcom/miui/securityscan/fileobserver/ImageProtectService;Landroid/os/Looper;)V
    .locals 0

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-instance p2, Ljava/lang/ref/WeakReference;

    invoke-direct {p2, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object p2, p0, Lcom/miui/securityscan/fileobserver/ImageProtectService$d;->a:Ljava/lang/ref/WeakReference;

    return-void
.end method


# virtual methods
.method public dispatchMessage(Landroid/os/Message;)V
    .locals 26
    .param p1    # Landroid/os/Message;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    move-object/from16 v0, p1

    invoke-super/range {p0 .. p1}, Landroid/os/Handler;->dispatchMessage(Landroid/os/Message;)V

    move-object/from16 v10, p0

    iget-object v1, v10, Lcom/miui/securityscan/fileobserver/ImageProtectService$d;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v1

    move-object v11, v1

    check-cast v11, Lcom/miui/securityscan/fileobserver/ImageProtectService;

    if-nez v11, :cond_0

    return-void

    :cond_0
    iget v1, v0, Landroid/os/Message;->what:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_1

    invoke-virtual {v11}, Lcom/miui/securityscan/fileobserver/ImageProtectService;->t()V

    goto/16 :goto_3

    :cond_1
    invoke-virtual {v11}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    iget-object v2, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    const/4 v3, 0x0

    const/4 v4, -0x1

    if-eqz v2, :cond_2

    check-cast v2, Ljava/lang/String;

    invoke-static {v11}, Lcom/miui/securityscan/fileobserver/ImageProtectService;->g(Lcom/miui/securityscan/fileobserver/ImageProtectService;)Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    invoke-static {v11}, Lcom/miui/securityscan/fileobserver/ImageProtectService;->g(Lcom/miui/securityscan/fileobserver/ImageProtectService;)Ljava/util/Map;

    move-result-object v5

    invoke-interface {v5, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object v7, v0

    move-object v8, v2

    move v9, v4

    goto :goto_0

    :cond_2
    iget v0, v0, Landroid/os/Message;->what:I

    invoke-static {v11}, Lcom/miui/securityscan/fileobserver/ImageProtectService;->h(Lcom/miui/securityscan/fileobserver/ImageProtectService;)Ljava/util/Map;

    move-result-object v2

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v2, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/List;

    invoke-static {v11}, Lcom/miui/securityscan/fileobserver/ImageProtectService;->h(Lcom/miui/securityscan/fileobserver/ImageProtectService;)Ljava/util/Map;

    move-result-object v5

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-interface {v5, v6, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v1, v0}, Landroid/content/pm/PackageManager;->getNameForUid(I)Ljava/lang/String;

    move-result-object v3

    move v9, v0

    move-object v7, v2

    move-object v8, v3

    :goto_0
    if-eqz v7, :cond_8

    invoke-interface {v7}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_3

    goto/16 :goto_6

    :cond_3
    invoke-static {}, Lcom/miui/securityscan/fileobserver/ImageProtectService;->a()Ljava/lang/String;

    move-result-object v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "uid:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ", pkg:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    if-eq v9, v4, :cond_4

    invoke-static {v9}, Lx4/z1;->b(I)I

    move-result v2

    const/16 v3, 0x2710

    if-lt v2, v3, :cond_7

    :cond_4
    invoke-static {v11, v8}, Lcom/miui/permcenter/n;->s(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_7

    invoke-virtual {v11}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v9, v8, v2}, Lcom/miui/securityscan/fileobserver/ImageProtectService;->i(ILjava/lang/String;Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_5

    goto/16 :goto_4

    :cond_5
    :try_start_0
    invoke-virtual {v1, v8, v0}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageItemInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    invoke-static {}, Lcom/miui/securityscan/fileobserver/ImageProtectService;->a()Ljava/lang/String;

    move-result-object v1

    const-string v2, "getApplicationInfo fail"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const-string v0, ""

    :goto_1
    move-object/from16 v20, v0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v21

    new-instance v0, Ljava/util/Random;

    invoke-direct {v0}, Ljava/util/Random;-><init>()V

    invoke-virtual {v0}, Ljava/util/Random;->nextInt()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v23

    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v0

    const/16 v1, 0x12c

    invoke-static {}, Lvf/l;->s()Lvf/l;

    move-result-object v12

    if-gt v0, v1, :cond_6

    move v13, v9

    move/from16 v14, v23

    move-object v15, v7

    move-wide/from16 v16, v21

    move-object/from16 v18, v20

    move-object/from16 v19, v8

    invoke-virtual/range {v12 .. v19}, Lvf/l;->y(IILjava/util/List;JLjava/lang/String;Ljava/lang/String;)V

    const/16 v17, 0x1

    move-object v12, v7

    move-object/from16 v15, v20

    move-object/from16 v16, v8

    move-wide/from16 v18, v21

    invoke-static/range {v11 .. v19}, Lcom/miui/securityscan/fileobserver/ImageProtectService;->B(Landroid/content/Context;Ljava/util/List;IILjava/lang/String;Ljava/lang/String;ZJ)V

    move-object/from16 v25, v8

    goto :goto_2

    :cond_6
    new-instance v24, Lcom/miui/securityscan/fileobserver/ImageProtectService$d$a;

    move-object/from16 v0, v24

    move-object/from16 v1, p0

    move-object v2, v11

    move-object v3, v7

    move v4, v9

    move/from16 v5, v23

    move-object/from16 v6, v20

    move-object v11, v7

    move-object v7, v8

    move-object/from16 v25, v8

    move v13, v9

    move-wide/from16 v8, v21

    invoke-direct/range {v0 .. v9}, Lcom/miui/securityscan/fileobserver/ImageProtectService$d$a;-><init>(Lcom/miui/securityscan/fileobserver/ImageProtectService$d;Lcom/miui/securityscan/fileobserver/ImageProtectService;Ljava/util/List;IILjava/lang/String;Ljava/lang/String;J)V

    move/from16 v14, v23

    move-object v15, v11

    move-wide/from16 v16, v21

    move-object/from16 v18, v20

    move-object/from16 v19, v25

    move-object/from16 v20, v24

    invoke-virtual/range {v12 .. v20}, Lvf/l;->A(IILjava/util/List;JLjava/lang/String;Ljava/lang/String;Lvf/b;)V

    :goto_2
    invoke-static/range {v25 .. v25}, Lcom/miui/securityscan/fileobserver/ImageProtectService;->j(Ljava/lang/String;)V

    :goto_3
    return-void

    :cond_7
    :goto_4
    move-object v11, v7

    :goto_5
    invoke-interface {v11}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_8

    new-instance v1, Ljava/io/File;

    invoke-interface {v11, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lvf/k;

    iget-object v2, v2, Lvf/k;->c:Ljava/lang/String;

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v1}, Lcom/miui/securityscan/fileobserver/ImageProtectService;->q(Ljava/io/File;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_5

    :cond_8
    :goto_6
    return-void
.end method
