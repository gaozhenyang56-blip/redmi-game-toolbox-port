.class Lcom/miui/gamebooster/ui/BoosterFragment$w$a;
.super Lcom/miui/common/base/asyn/b;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/gamebooster/ui/BoosterFragment$w;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/util/ArrayList;

.field final synthetic b:Lcom/miui/gamebooster/ui/BoosterFragment$w;


# direct methods
.method constructor <init>(Lcom/miui/gamebooster/ui/BoosterFragment$w;Landroid/app/Activity;Ljava/util/ArrayList;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/gamebooster/ui/BoosterFragment$w$a;->b:Lcom/miui/gamebooster/ui/BoosterFragment$w;

    iput-object p3, p0, Lcom/miui/gamebooster/ui/BoosterFragment$w$a;->a:Ljava/util/ArrayList;

    invoke-direct {p0, p2}, Lcom/miui/common/base/asyn/b;-><init>(Landroid/app/Activity;)V

    return-void
.end method


# virtual methods
.method protected runOnUiThread()V
    .locals 2

    iget-object v0, p0, Lcom/miui/gamebooster/ui/BoosterFragment$w$a;->b:Lcom/miui/gamebooster/ui/BoosterFragment$w;

    iget-object v0, v0, Lcom/miui/gamebooster/ui/BoosterFragment$w;->a:Lcom/miui/gamebooster/ui/BoosterFragment;

    invoke-static {v0}, Lcom/miui/gamebooster/ui/BoosterFragment;->s0(Lcom/miui/gamebooster/ui/BoosterFragment;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    iget-object v0, p0, Lcom/miui/gamebooster/ui/BoosterFragment$w$a;->b:Lcom/miui/gamebooster/ui/BoosterFragment$w;

    iget-object v0, v0, Lcom/miui/gamebooster/ui/BoosterFragment$w;->a:Lcom/miui/gamebooster/ui/BoosterFragment;

    invoke-static {v0}, Lcom/miui/gamebooster/ui/BoosterFragment;->s0(Lcom/miui/gamebooster/ui/BoosterFragment;)Ljava/util/ArrayList;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/gamebooster/ui/BoosterFragment$w$a;->a:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    iget-object v0, p0, Lcom/miui/gamebooster/ui/BoosterFragment$w$a;->b:Lcom/miui/gamebooster/ui/BoosterFragment$w;

    iget-object v0, v0, Lcom/miui/gamebooster/ui/BoosterFragment$w;->a:Lcom/miui/gamebooster/ui/BoosterFragment;

    invoke-static {v0}, Lcom/miui/gamebooster/ui/BoosterFragment;->t0(Lcom/miui/gamebooster/ui/BoosterFragment;)V

    iget-object v0, p0, Lcom/miui/gamebooster/ui/BoosterFragment$w$a;->b:Lcom/miui/gamebooster/ui/BoosterFragment$w;

    iget-object v0, v0, Lcom/miui/gamebooster/ui/BoosterFragment$w;->a:Lcom/miui/gamebooster/ui/BoosterFragment;

    invoke-static {v0}, Lcom/miui/gamebooster/ui/BoosterFragment;->Q0(Lcom/miui/gamebooster/ui/BoosterFragment;)Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/gamebooster/ui/BoosterFragment$w$a;->b:Lcom/miui/gamebooster/ui/BoosterFragment$w;

    iget-object v1, v1, Lcom/miui/gamebooster/ui/BoosterFragment$w;->a:Lcom/miui/gamebooster/ui/BoosterFragment;

    invoke-static {v1}, Lcom/miui/gamebooster/ui/BoosterFragment;->s0(Lcom/miui/gamebooster/ui/BoosterFragment;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    invoke-static {v0, v1}, Lcom/miui/gamebooster/ui/BoosterFragment;->x0(Landroid/content/Context;I)V

    return-void
.end method
