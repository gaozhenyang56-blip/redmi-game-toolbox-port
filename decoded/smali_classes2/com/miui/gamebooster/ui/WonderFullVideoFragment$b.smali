.class Lcom/miui/gamebooster/ui/WonderFullVideoFragment$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/gamebooster/ui/WonderFullVideoFragment;->s0()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/miui/gamebooster/ui/WonderFullVideoFragment;


# direct methods
.method constructor <init>(Lcom/miui/gamebooster/ui/WonderFullVideoFragment;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/gamebooster/ui/WonderFullVideoFragment$b;->a:Lcom/miui/gamebooster/ui/WonderFullVideoFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lcom/miui/gamebooster/ui/WonderFullVideoFragment$b;->a:Lcom/miui/gamebooster/ui/WonderFullVideoFragment;

    invoke-static {v0}, Lcom/miui/gamebooster/ui/WonderFullVideoFragment;->d0(Lcom/miui/gamebooster/ui/WonderFullVideoFragment;)Landroid/app/Activity;

    move-result-object v0

    instance-of v0, v0, Lcom/miui/common/base/BaseActivity;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/miui/gamebooster/ui/WonderFullVideoFragment$b;->a:Lcom/miui/gamebooster/ui/WonderFullVideoFragment;

    invoke-static {v0}, Lcom/miui/gamebooster/ui/WonderFullVideoFragment;->d0(Lcom/miui/gamebooster/ui/WonderFullVideoFragment;)Landroid/app/Activity;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/gamebooster/ui/WonderFullVideoFragment$b;->a:Lcom/miui/gamebooster/ui/WonderFullVideoFragment;

    invoke-static {v1}, Lcom/miui/gamebooster/ui/WonderFullVideoFragment;->e0(Lcom/miui/gamebooster/ui/WonderFullVideoFragment;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, La8/q;->h(Landroid/content/Context;Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/gamebooster/ui/WonderFullVideoFragment$b;->a:Lcom/miui/gamebooster/ui/WonderFullVideoFragment;

    invoke-static {v1}, Lcom/miui/gamebooster/ui/WonderFullVideoFragment;->f0(Lcom/miui/gamebooster/ui/WonderFullVideoFragment;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->clear()V

    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_0

    iget-object v1, p0, Lcom/miui/gamebooster/ui/WonderFullVideoFragment$b;->a:Lcom/miui/gamebooster/ui/WonderFullVideoFragment;

    invoke-static {v1}, Lcom/miui/gamebooster/ui/WonderFullVideoFragment;->f0(Lcom/miui/gamebooster/ui/WonderFullVideoFragment;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, v0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    :cond_0
    iget-object v0, p0, Lcom/miui/gamebooster/ui/WonderFullVideoFragment$b;->a:Lcom/miui/gamebooster/ui/WonderFullVideoFragment;

    invoke-static {v0}, Lcom/miui/gamebooster/ui/WonderFullVideoFragment;->d0(Lcom/miui/gamebooster/ui/WonderFullVideoFragment;)Landroid/app/Activity;

    move-result-object v0

    new-instance v1, Lcom/miui/gamebooster/ui/WonderFullVideoFragment$b$a;

    invoke-direct {v1, p0}, Lcom/miui/gamebooster/ui/WonderFullVideoFragment$b$a;-><init>(Lcom/miui/gamebooster/ui/WonderFullVideoFragment$b;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    :cond_1
    return-void
.end method
