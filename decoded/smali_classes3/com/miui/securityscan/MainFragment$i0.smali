.class Lcom/miui/securityscan/MainFragment$i0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/securityscan/MainFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "i0"
.end annotation


# instance fields
.field private a:Landroid/content/Context;

.field private b:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Lcom/miui/securityscan/MainFragment;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/miui/securityscan/MainFragment;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/securityscan/MainFragment$i0;->a:Landroid/content/Context;

    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/miui/securityscan/MainFragment$i0;->b:Ljava/lang/ref/WeakReference;

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    iget-object v0, p0, Lcom/miui/securityscan/MainFragment$i0;->b:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/securityscan/MainFragment;

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v1, p0, Lcom/miui/securityscan/MainFragment$i0;->a:Landroid/content/Context;

    iget-object v2, v0, Lcom/miui/securityscan/MainFragment;->f1:Ljava/util/ArrayList;

    invoke-static {v1, v2}, Leg/d;->c(Landroid/content/Context;Ljava/util/List;)Ljava/util/List;

    move-result-object v1

    iget-object v0, v0, Lcom/miui/securityscan/MainFragment;->y:Lcom/miui/common/card/CardViewRvAdapter;

    invoke-virtual {v0}, Lcom/miui/common/card/CardViewRvAdapter;->getModelList()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    const/4 v3, 0x0

    if-eqz v2, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/miui/common/card/models/BaseCardModel;

    instance-of v4, v2, Lcom/miui/common/card/models/CommonlyUsedFunctionCardTitleModel;

    if-eqz v4, :cond_1

    check-cast v2, Lcom/miui/common/card/models/CommonlyUsedFunctionCardTitleModel;

    invoke-virtual {v2}, Lcom/miui/common/card/models/TitleCardModel;->getSubCardModelList()Ljava/util/List;

    move-result-object v0

    move v2, v3

    :goto_0
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v4

    if-ge v2, v4, :cond_2

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/miui/common/card/models/CommonlyUsedFunctionCardModelNew;

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/miui/common/card/GridFunctionData;

    invoke-virtual {v4, v5}, Lcom/miui/common/card/models/FunctionCardModel;->setGridFunctionData(Lcom/miui/common/card/GridFunctionData;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    const/4 v0, 0x1

    goto :goto_1

    :cond_3
    move v0, v3

    :goto_1
    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/miui/securityscan/MainFragment$i0;->b:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/securityscan/MainFragment;

    if-nez v0, :cond_4

    return-void

    :cond_4
    new-instance v1, Lcom/miui/securityscan/MainFragment$z;

    const/16 v2, 0x13

    invoke-direct {v1, v0, v2}, Lcom/miui/securityscan/MainFragment$z;-><init>(Lcom/miui/securityscan/MainFragment;I)V

    iget-object v0, v0, Lcom/miui/securityscan/MainFragment;->h:Lzf/h;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_4

    :cond_5
    iget-object v0, p0, Lcom/miui/securityscan/MainFragment$i0;->a:Landroid/content/Context;

    invoke-static {v0}, Leg/d;->a(Landroid/content/Context;)Lcom/miui/common/card/models/CommonlyUsedFunctionCardModel;

    move-result-object v0

    sget-object v1, Lcom/miui/securityscan/MainFragment;->s1:Ljava/util/ArrayList;

    if-eqz v1, :cond_7

    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_7

    :goto_2
    sget-object v1, Lcom/miui/securityscan/MainFragment;->s1:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v3, v1, :cond_7

    sget-object v1, Lcom/miui/securityscan/MainFragment;->s1:Ljava/util/ArrayList;

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    instance-of v1, v1, Lcom/miui/common/card/models/CommonlyUsedFunctionCardModel;

    if-eqz v1, :cond_6

    sget-object v1, Lcom/miui/securityscan/MainFragment;->s1:Ljava/util/ArrayList;

    invoke-virtual {v1, v3, v0}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    goto :goto_3

    :cond_6
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    :cond_7
    :goto_3
    iget-object v1, p0, Lcom/miui/securityscan/MainFragment$i0;->b:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/miui/securityscan/MainFragment;

    if-nez v1, :cond_8

    return-void

    :cond_8
    new-instance v2, Lcom/miui/securityscan/MainFragment$z;

    const/16 v3, 0x12

    invoke-direct {v2, v1, v3}, Lcom/miui/securityscan/MainFragment$z;-><init>(Lcom/miui/securityscan/MainFragment;I)V

    invoke-virtual {v2, v0}, Lcom/miui/securityscan/MainFragment$z;->a(Lcom/miui/common/card/models/CommonlyUsedFunctionCardModel;)V

    iget-object v0, v1, Lcom/miui/securityscan/MainFragment;->h:Lzf/h;

    invoke-virtual {v0, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :goto_4
    return-void
.end method
