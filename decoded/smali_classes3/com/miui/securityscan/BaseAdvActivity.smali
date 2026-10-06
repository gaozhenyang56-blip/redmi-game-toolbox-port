.class public abstract Lcom/miui/securityscan/BaseAdvActivity;
.super Lcom/miui/common/base/BaseActivity;
.source "SourceFile"


# instance fields
.field private a:Lzf/a;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/miui/common/base/BaseActivity;-><init>()V

    new-instance v0, Lzf/a;

    invoke-direct {v0}, Lzf/a;-><init>()V

    iput-object v0, p0, Lcom/miui/securityscan/BaseAdvActivity;->a:Lzf/a;

    return-void
.end method

.method public static d0(Ljava/lang/String;Lcom/miui/common/card/models/AdvCardModel;)V
    .locals 2

    invoke-virtual {p1}, Lcom/miui/common/card/models/AdvCardModel;->isLocal()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    new-instance v1, Lqf/a$b;

    invoke-direct {v1, p0, p1}, Lqf/a$b;-><init>(Ljava/lang/String;Lcom/miui/common/card/models/AdvCardModel;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-static {}, Lcom/miui/securitycenter/Application;->A()Lcom/miui/securitycenter/Application;

    move-result-object p0

    invoke-static {p0, v0}, Lqf/a;->h(Landroid/content/Context;Ljava/util/List;)V

    return-void
.end method


# virtual methods
.method public e0(Lcom/miui/common/card/CardViewAdapter;Ljava/lang/String;II)V
    .locals 1

    if-nez p1, :cond_0

    return-void

    :cond_0
    invoke-virtual {p1}, Lcom/miui/common/card/CardViewAdapter;->getModelList()Ljava/util/ArrayList;

    move-result-object p3

    invoke-virtual {p3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p3

    :cond_1
    invoke-interface {p3}, Ljava/util/Iterator;->hasNext()Z

    move-result p4

    if-eqz p4, :cond_2

    invoke-interface {p3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p4

    check-cast p4, Lcom/miui/common/card/models/BaseCardModel;

    instance-of v0, p4, Lcom/miui/common/card/models/AdvCardModel;

    if-eqz v0, :cond_1

    check-cast p4, Lcom/miui/common/card/models/AdvCardModel;

    invoke-virtual {p4}, Lcom/miui/common/card/models/AdvCardModel;->getPackageName()Ljava/lang/String;

    move-result-object p4

    invoke-virtual {p2, p4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p4

    if-eqz p4, :cond_1

    invoke-virtual {p1}, Lcom/miui/common/card/CardViewAdapter;->notifyDataSetChanged()V

    :cond_2
    return-void
.end method

.method public abstract f0(Lcom/miui/common/card/models/BaseCardModel;Ljava/util/List;I)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/miui/common/card/models/BaseCardModel;",
            "Ljava/util/List<",
            "Lcom/miui/common/card/models/BaseCardModel;",
            ">;I)V"
        }
    .end annotation
.end method

.method public abstract g0(Lcom/miui/common/card/models/BaseCardModel;I)V
.end method

.method public h0(Lcom/miui/securitycenter/ad/view/AdImageView;ILcom/miui/common/card/models/AdvCardModel;)V
    .locals 1

    iget-object v0, p0, Lcom/miui/securityscan/BaseAdvActivity;->a:Lzf/a;

    invoke-virtual {p1, v0, p2, p3}, Lcom/miui/securitycenter/ad/view/AdImageView;->startTime(Landroid/os/Handler;ILjava/lang/Object;)V

    return-void
.end method

.method protected onDestroy()V
    .locals 2

    iget-object v0, p0, Lcom/miui/securityscan/BaseAdvActivity;->a:Lzf/a;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    :cond_0
    invoke-super {p0}, Lcom/miui/common/base/BaseActivity;->onDestroy()V

    return-void
.end method
