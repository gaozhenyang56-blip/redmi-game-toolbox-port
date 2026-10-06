.class public abstract Lcom/miui/securityscan/BaseAdvFragment;
.super Lmiuix/appcompat/app/Fragment;
.source "SourceFile"


# instance fields
.field private a:Lzf/a;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lmiuix/appcompat/app/Fragment;-><init>()V

    new-instance v0, Lzf/a;

    invoke-direct {v0}, Lzf/a;-><init>()V

    iput-object v0, p0, Lcom/miui/securityscan/BaseAdvFragment;->a:Lzf/a;

    return-void
.end method


# virtual methods
.method public b0(Lcom/miui/common/card/CardViewAdapter;Ljava/lang/String;II)V
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

.method public c0(Lcom/miui/common/card/CardViewRvAdapter;Ljava/lang/String;II)V
    .locals 1

    if-nez p1, :cond_0

    return-void

    :cond_0
    invoke-virtual {p1}, Lcom/miui/common/card/CardViewRvAdapter;->getModelList()Ljava/util/ArrayList;

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

    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$h;->notifyDataSetChanged()V

    :cond_2
    return-void
.end method

.method public onDestroy()V
    .locals 2

    iget-object v0, p0, Lcom/miui/securityscan/BaseAdvFragment;->a:Lzf/a;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    :cond_0
    invoke-super {p0}, Lmiuix/appcompat/app/Fragment;->onDestroy()V

    return-void
.end method
