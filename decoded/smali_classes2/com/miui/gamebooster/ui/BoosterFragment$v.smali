.class Lcom/miui/gamebooster/ui/BoosterFragment$v;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/gamebooster/ui/BoosterFragment;->onStop()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/util/List;

.field final synthetic b:Lcom/miui/gamebooster/ui/BoosterFragment;


# direct methods
.method constructor <init>(Lcom/miui/gamebooster/ui/BoosterFragment;Ljava/util/List;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/gamebooster/ui/BoosterFragment$v;->b:Lcom/miui/gamebooster/ui/BoosterFragment;

    iput-object p2, p0, Lcom/miui/gamebooster/ui/BoosterFragment$v;->a:Ljava/util/List;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 8

    iget-object v0, p0, Lcom/miui/gamebooster/ui/BoosterFragment$v;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x0

    iget-object v1, p0, Lcom/miui/gamebooster/ui/BoosterFragment$v;->a:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    move v7, v0

    :cond_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/gamebooster/model/d;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/miui/gamebooster/model/d;->a()Landroid/content/pm/ApplicationInfo;

    move-result-object v2

    if-eqz v2, :cond_1

    invoke-virtual {v0}, Lcom/miui/gamebooster/model/d;->a()Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    iget-object v2, p0, Lcom/miui/gamebooster/ui/BoosterFragment$v;->b:Lcom/miui/gamebooster/ui/BoosterFragment;

    invoke-static {v2}, Lcom/miui/gamebooster/ui/BoosterFragment;->D0(Lcom/miui/gamebooster/ui/BoosterFragment;)Landroid/content/Context;

    move-result-object v2

    iget-object v3, v0, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-static {v2, v3}, Lx4/f1;->O(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-interface {v2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v3

    iget-object v2, p0, Lcom/miui/gamebooster/ui/BoosterFragment$v;->b:Lcom/miui/gamebooster/ui/BoosterFragment;

    invoke-static {v2}, Lcom/miui/gamebooster/ui/BoosterFragment;->E0(Lcom/miui/gamebooster/ui/BoosterFragment;)Landroid/content/Context;

    move-result-object v2

    iget-object v4, v0, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    iget v5, v0, Landroid/content/pm/ApplicationInfo;->uid:I

    const/4 v6, 0x0

    add-int/lit8 v0, v7, 0x1

    invoke-static/range {v2 .. v7}, La8/j0;->r(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;III)V

    goto :goto_0

    :cond_2
    return-void
.end method
