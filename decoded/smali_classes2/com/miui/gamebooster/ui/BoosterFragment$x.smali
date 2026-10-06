.class Lcom/miui/gamebooster/ui/BoosterFragment$x;
.super Lw8/h$b;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/gamebooster/ui/BoosterFragment;->j2()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/miui/gamebooster/ui/BoosterFragment;


# direct methods
.method constructor <init>(Lcom/miui/gamebooster/ui/BoosterFragment;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/gamebooster/ui/BoosterFragment$x;->a:Lcom/miui/gamebooster/ui/BoosterFragment;

    invoke-direct {p0}, Lw8/h$b;-><init>()V

    return-void
.end method

.method static synthetic b(Lcom/miui/gamebooster/ui/BoosterFragment$x;Ljava/util/List;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/miui/gamebooster/ui/BoosterFragment$x;->c(Ljava/util/List;)V

    return-void
.end method

.method private c(Ljava/util/List;)V
    .locals 4
    .annotation build Landroidx/annotation/UiThread;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iget-object v1, p0, Lcom/miui/gamebooster/ui/BoosterFragment$x;->a:Lcom/miui/gamebooster/ui/BoosterFragment;

    invoke-static {v1}, Lcom/miui/gamebooster/ui/BoosterFragment;->s0(Lcom/miui/gamebooster/ui/BoosterFragment;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/miui/gamebooster/model/d;

    if-eqz v2, :cond_0

    invoke-virtual {v2}, Lcom/miui/gamebooster/model/d;->c()Ljava/lang/CharSequence;

    move-result-object v3

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_1

    goto :goto_0

    :cond_1
    new-instance v3, Lcom/miui/gamebooster/model/c;

    invoke-direct {v3, v2}, Lcom/miui/gamebooster/model/c;-><init>(Lcom/miui/gamebooster/model/d;)V

    invoke-virtual {v2}, Lcom/miui/gamebooster/model/d;->c()Ljava/lang/CharSequence;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-interface {p1, v2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v2

    invoke-virtual {v3, v2}, Lcom/miui/gamebooster/model/c;->k(Z)V

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_2
    invoke-static {v0}, Lc7/c;->p(Ljava/util/Collection;)Z

    move-result p1

    if-eqz p1, :cond_3

    iget-object p1, p0, Lcom/miui/gamebooster/ui/BoosterFragment$x;->a:Lcom/miui/gamebooster/ui/BoosterFragment;

    invoke-static {p1}, Lcom/miui/gamebooster/ui/BoosterFragment;->V0(Lcom/miui/gamebooster/ui/BoosterFragment;)Landroid/content/Context;

    move-result-object p1

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    invoke-static {p1, v1}, Lb7/b;->g(Landroid/content/Context;I)V

    :cond_3
    iget-object p1, p0, Lcom/miui/gamebooster/ui/BoosterFragment$x;->a:Lcom/miui/gamebooster/ui/BoosterFragment;

    invoke-static {p1}, Lcom/miui/gamebooster/ui/BoosterFragment;->v0(Lcom/miui/gamebooster/ui/BoosterFragment;)V

    iget-object p1, p0, Lcom/miui/gamebooster/ui/BoosterFragment$x;->a:Lcom/miui/gamebooster/ui/BoosterFragment;

    invoke-static {p1}, Lcom/miui/gamebooster/ui/BoosterFragment;->W0(Lcom/miui/gamebooster/ui/BoosterFragment;)Lt5/i;

    move-result-object p1

    invoke-virtual {p1, v0}, Lt5/i;->F(Ljava/util/List;)V

    const/4 p1, 0x0

    invoke-static {}, Lc7/c;->k()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_4

    iget-object p1, p0, Lcom/miui/gamebooster/ui/BoosterFragment$x;->a:Lcom/miui/gamebooster/ui/BoosterFragment;

    invoke-static {p1}, Lcom/miui/gamebooster/ui/BoosterFragment;->W0(Lcom/miui/gamebooster/ui/BoosterFragment;)Lt5/i;

    move-result-object p1

    invoke-virtual {p1, v0}, Lt5/i;->n(Ljava/lang/String;)I

    move-result p1

    :cond_4
    iget-object v0, p0, Lcom/miui/gamebooster/ui/BoosterFragment$x;->a:Lcom/miui/gamebooster/ui/BoosterFragment;

    invoke-static {v0}, Lcom/miui/gamebooster/ui/BoosterFragment;->X0(Lcom/miui/gamebooster/ui/BoosterFragment;)Landroidx/viewpager/widget/ViewPager;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, p1, v1}, Landroidx/viewpager/widget/ViewPager;->setCurrentItem(IZ)V

    iget-object v0, p0, Lcom/miui/gamebooster/ui/BoosterFragment$x;->a:Lcom/miui/gamebooster/ui/BoosterFragment;

    invoke-static {v0}, Lcom/miui/gamebooster/ui/BoosterFragment;->Y0(Lcom/miui/gamebooster/ui/BoosterFragment;)Landroidx/viewpager/widget/ViewPager$i;

    move-result-object v0

    invoke-interface {v0, p1}, Landroidx/viewpager/widget/ViewPager$i;->onPageSelected(I)V

    return-void
.end method


# virtual methods
.method public a(Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/miui/gamebooster/ui/BoosterFragment$x;->a:Lcom/miui/gamebooster/ui/BoosterFragment;

    new-instance v1, Lcom/miui/gamebooster/ui/BoosterFragment$x$a;

    iget-object v2, p0, Lcom/miui/gamebooster/ui/BoosterFragment$x;->a:Lcom/miui/gamebooster/ui/BoosterFragment;

    invoke-static {v2}, Lcom/miui/gamebooster/ui/BoosterFragment;->T0(Lcom/miui/gamebooster/ui/BoosterFragment;)Landroid/app/Activity;

    move-result-object v2

    invoke-direct {v1, p0, v2, p1}, Lcom/miui/gamebooster/ui/BoosterFragment$x$a;-><init>(Lcom/miui/gamebooster/ui/BoosterFragment$x;Landroid/app/Activity;Ljava/util/List;)V

    invoke-static {v0, v1}, Lcom/miui/gamebooster/ui/BoosterFragment;->U0(Lcom/miui/gamebooster/ui/BoosterFragment;Lcom/miui/common/base/asyn/b;)V

    return-void
.end method
