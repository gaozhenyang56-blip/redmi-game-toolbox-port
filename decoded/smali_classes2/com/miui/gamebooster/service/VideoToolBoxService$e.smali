.class public Lcom/miui/gamebooster/service/VideoToolBoxService$e;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/gamebooster/service/VideoToolBoxService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "e"
.end annotation


# instance fields
.field final synthetic a:Lcom/miui/gamebooster/service/VideoToolBoxService;


# direct methods
.method public constructor <init>(Lcom/miui/gamebooster/service/VideoToolBoxService;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/gamebooster/service/VideoToolBoxService$e;->a:Lcom/miui/gamebooster/service/VideoToolBoxService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

    iget-object v0, p0, Lcom/miui/gamebooster/service/VideoToolBoxService$e;->a:Lcom/miui/gamebooster/service/VideoToolBoxService;

    invoke-static {v0}, Lcom/miui/gamebooster/service/VideoToolBoxService;->q(Lcom/miui/gamebooster/service/VideoToolBoxService;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Li4/a;->k(Landroid/content/Context;)Li4/a;

    move-result-object v0

    invoke-virtual {v0}, Li4/a;->j()Ljava/util/List;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/gamebooster/service/VideoToolBoxService$e;->a:Lcom/miui/gamebooster/service/VideoToolBoxService;

    invoke-static {v1}, Lcom/miui/gamebooster/service/VideoToolBoxService;->q(Lcom/miui/gamebooster/service/VideoToolBoxService;)Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, La8/j0;->g(Landroid/content/Context;)Ljava/util/List;

    move-result-object v1

    iget-object v2, p0, Lcom/miui/gamebooster/service/VideoToolBoxService$e;->a:Lcom/miui/gamebooster/service/VideoToolBoxService;

    invoke-static {v2}, Lcom/miui/gamebooster/service/VideoToolBoxService;->q(Lcom/miui/gamebooster/service/VideoToolBoxService;)Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Li8/c;->g(Landroid/content/Context;)Ljava/util/List;

    move-result-object v2

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    invoke-static {v3}, Li8/c;->A(Ljava/util/ArrayList;)Ljava/util/ArrayList;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "defalut size "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const-string v5, "VideoToolBoxService"

    invoke-static {v5, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/content/pm/PackageInfo;

    if-eqz v4, :cond_0

    iget-object v6, v4, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-interface {v1, v6}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_0

    iget-object v6, v4, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-interface {v2, v6}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    iget-object v6, v4, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-interface {v3, v6}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_0

    iget-object v6, p0, Lcom/miui/gamebooster/service/VideoToolBoxService$e;->a:Lcom/miui/gamebooster/service/VideoToolBoxService;

    invoke-static {v6}, Lcom/miui/gamebooster/service/VideoToolBoxService;->r(Lcom/miui/gamebooster/service/VideoToolBoxService;)Ljava/util/ArrayList;

    move-result-object v6

    iget-object v4, v4, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v6, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "set default vtb apps = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/miui/gamebooster/service/VideoToolBoxService$e;->a:Lcom/miui/gamebooster/service/VideoToolBoxService;

    invoke-static {v1}, Lcom/miui/gamebooster/service/VideoToolBoxService;->r(Lcom/miui/gamebooster/service/VideoToolBoxService;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v5, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/miui/gamebooster/service/VideoToolBoxService$e;->a:Lcom/miui/gamebooster/service/VideoToolBoxService;

    invoke-static {v0}, Lcom/miui/gamebooster/service/VideoToolBoxService;->r(Lcom/miui/gamebooster/service/VideoToolBoxService;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-static {v0}, Li8/c;->D0(Ljava/util/ArrayList;)V

    return-void
.end method
