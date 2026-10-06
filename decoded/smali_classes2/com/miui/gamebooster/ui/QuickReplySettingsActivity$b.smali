.class Lcom/miui/gamebooster/ui/QuickReplySettingsActivity$b;
.super Lw4/d;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/gamebooster/ui/QuickReplySettingsActivity;->onCreateLoader(ILandroid/os/Bundle;)Lq0/c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lw4/d<",
        "Lcom/miui/gamebooster/ui/b;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic q:Lcom/miui/gamebooster/ui/QuickReplySettingsActivity;


# direct methods
.method constructor <init>(Lcom/miui/gamebooster/ui/QuickReplySettingsActivity;Landroid/content/Context;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/gamebooster/ui/QuickReplySettingsActivity$b;->q:Lcom/miui/gamebooster/ui/QuickReplySettingsActivity;

    invoke-direct {p0, p2}, Lw4/d;-><init>(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method public bridge synthetic G()Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0}, Lcom/miui/gamebooster/ui/QuickReplySettingsActivity$b;->J()Lcom/miui/gamebooster/ui/b;

    move-result-object v0

    return-object v0
.end method

.method public J()Lcom/miui/gamebooster/ui/b;
    .locals 18

    move-object/from16 v1, p0

    new-instance v2, Lcom/miui/gamebooster/ui/b;

    invoke-direct {v2}, Lcom/miui/gamebooster/ui/b;-><init>()V

    iget-object v0, v1, Lcom/miui/gamebooster/ui/QuickReplySettingsActivity$b;->q:Lcom/miui/gamebooster/ui/QuickReplySettingsActivity;

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Li4/a;->k(Landroid/content/Context;)Li4/a;

    move-result-object v4

    new-instance v0, Ljava/util/ArrayList;

    invoke-virtual {v4}, Li4/a;->j()Ljava/util/List;

    move-result-object v5

    invoke-direct {v0, v5}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-static {v3}, Lcom/miui/appmanager/AppManageUtils;->m0(Landroid/content/Context;)Ljava/util/HashSet;

    move-result-object v5

    iget-object v6, v1, Lcom/miui/gamebooster/ui/QuickReplySettingsActivity$b;->q:Lcom/miui/gamebooster/ui/QuickReplySettingsActivity;

    invoke-static {v6}, Lcom/miui/gamebooster/ui/QuickReplySettingsActivity;->i0(Lcom/miui/gamebooster/ui/QuickReplySettingsActivity;)Landroid/content/pm/PackageManager;

    move-result-object v7

    const/4 v8, 0x0

    invoke-static {v6, v7, v8, v5}, Lcom/miui/gamebooster/ui/QuickReplySettingsActivity;->j0(Lcom/miui/gamebooster/ui/QuickReplySettingsActivity;Landroid/content/pm/PackageManager;ILjava/util/HashSet;)Ljava/util/List;

    move-result-object v5

    invoke-static {v3}, Lcom/miui/gamebooster/ui/QuickReplySettingsActivity;->n0(Landroid/content/Context;)Ljava/util/List;

    move-result-object v6

    iput-object v6, v2, Lcom/miui/gamebooster/ui/b;->b:Ljava/util/List;

    iget-object v6, v1, Lcom/miui/gamebooster/ui/QuickReplySettingsActivity$b;->q:Lcom/miui/gamebooster/ui/QuickReplySettingsActivity;

    invoke-static {v3}, Lf7/b;->k(Landroid/content/Context;)Z

    move-result v7

    invoke-static {v6, v7}, Lcom/miui/gamebooster/ui/QuickReplySettingsActivity;->l0(Lcom/miui/gamebooster/ui/QuickReplySettingsActivity;Z)Z

    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    iget-object v7, v1, Lcom/miui/gamebooster/ui/QuickReplySettingsActivity$b;->q:Lcom/miui/gamebooster/ui/QuickReplySettingsActivity;

    invoke-static {v7}, Lcom/miui/gamebooster/ui/QuickReplySettingsActivity;->k0(Lcom/miui/gamebooster/ui/QuickReplySettingsActivity;)Z

    move-result v7

    if-eqz v7, :cond_0

    iget-object v7, v1, Lcom/miui/gamebooster/ui/QuickReplySettingsActivity$b;->q:Lcom/miui/gamebooster/ui/QuickReplySettingsActivity;

    invoke-static {v7}, Lcom/miui/gamebooster/ui/QuickReplySettingsActivity;->g0(Lcom/miui/gamebooster/ui/QuickReplySettingsActivity;)Z

    move-result v7

    if-nez v7, :cond_0

    iget-object v7, v2, Lcom/miui/gamebooster/ui/b;->b:Ljava/util/List;

    invoke-interface {v7}, Ljava/util/List;->isEmpty()Z

    move-result v7

    if-eqz v7, :cond_0

    invoke-static {v3}, Lf7/b;->e(Landroid/content/Context;)Ljava/util/List;

    move-result-object v6

    :cond_0
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :cond_1
    :goto_0
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    move-object v9, v0

    check-cast v9, Landroid/content/pm/PackageInfo;

    sget-object v0, Le3/c;->g:Ljava/util/List;

    iget-object v10, v9, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-interface {v0, v10}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    goto :goto_0

    :cond_2
    iget-object v0, v9, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-interface {v5, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    sget-object v0, Lcom/miui/gamebooster/ui/QuickReplySettingsActivity;->l:Ljava/util/List;

    iget-object v10, v9, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-interface {v0, v10}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, v9, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    const-string v10, "pkg_icon://"

    invoke-virtual {v10, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    const/4 v10, 0x0

    :try_start_0
    iget-object v0, v9, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v4, v0}, Li4/a;->f(Ljava/lang/String;)Li4/b;

    move-result-object v0

    invoke-virtual {v0}, Li4/b;->a()Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-object v14, v0

    goto :goto_1

    :catch_0
    move-exception v0

    const-string v11, "QuickReplySettings"

    const-string v12, "getAppInfo error"

    invoke-static {v11, v12, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move-object v14, v10

    :goto_1
    if-eqz v14, :cond_1

    iget-object v0, v9, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-interface {v6, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    iget-object v10, v2, Lcom/miui/gamebooster/ui/b;->b:Ljava/util/List;

    iget-object v11, v9, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-interface {v10, v11}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_4

    if-eqz v0, :cond_3

    goto :goto_2

    :cond_3
    move/from16 v16, v8

    goto :goto_3

    :cond_4
    :goto_2
    const/4 v10, 0x1

    move/from16 v16, v10

    :goto_3
    if-eqz v0, :cond_5

    iget-object v0, v9, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    iget-object v10, v9, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v10, v10, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-static {v3, v0, v10}, Lm7/a;->f(Landroid/content/Context;Ljava/lang/String;I)V

    iget-object v0, v2, Lcom/miui/gamebooster/ui/b;->b:Ljava/util/List;

    iget-object v10, v9, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-interface {v0, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_5
    new-instance v0, Ls5/c;

    iget-object v12, v9, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    iget-object v9, v9, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v15, v9, Landroid/content/pm/ApplicationInfo;->uid:I

    const/16 v17, 0x1

    move-object v11, v0

    invoke-direct/range {v11 .. v17}, Ls5/c;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IZI)V

    iget-object v9, v2, Lcom/miui/gamebooster/ui/b;->a:Ljava/util/List;

    invoke-interface {v9, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    :cond_6
    return-object v2
.end method
