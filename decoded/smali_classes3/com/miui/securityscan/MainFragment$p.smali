.class Lcom/miui/securityscan/MainFragment$p;
.super Lmiuix/animation/listener/TransitionListener;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/securityscan/MainFragment;->W1()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/miui/securityscan/MainFragment;


# direct methods
.method constructor <init>(Lcom/miui/securityscan/MainFragment;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/securityscan/MainFragment$p;->a:Lcom/miui/securityscan/MainFragment;

    invoke-direct {p0}, Lmiuix/animation/listener/TransitionListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onComplete(Ljava/lang/Object;)V
    .locals 2

    invoke-super {p0, p1}, Lmiuix/animation/listener/TransitionListener;->onComplete(Ljava/lang/Object;)V

    iget-object p1, p0, Lcom/miui/securityscan/MainFragment$p;->a:Lcom/miui/securityscan/MainFragment;

    iget-object p1, p1, Lcom/miui/securityscan/MainFragment;->y:Lcom/miui/common/card/CardViewRvAdapter;

    invoke-virtual {p1}, Lcom/miui/common/card/CardViewRvAdapter;->getItemCount()I

    move-result p1

    if-nez p1, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/miui/securityscan/MainFragment$p;->a:Lcom/miui/securityscan/MainFragment;

    iget-object v0, v0, Lcom/miui/securityscan/MainFragment;->y:Lcom/miui/common/card/CardViewRvAdapter;

    invoke-virtual {v0}, Lcom/miui/common/card/CardViewRvAdapter;->getModelList()Ljava/util/ArrayList;

    move-result-object v0

    add-int/lit8 p1, p1, -0x1

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/common/card/models/BottomAnimCardModel;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/miui/common/card/models/BottomAnimCardModel;->setIsNoticeAnimEnable(Z)V

    iget-object v0, p0, Lcom/miui/securityscan/MainFragment$p;->a:Lcom/miui/securityscan/MainFragment;

    iget-object v0, v0, Lcom/miui/securityscan/MainFragment;->y:Lcom/miui/common/card/CardViewRvAdapter;

    invoke-virtual {v0, p1}, Landroidx/recyclerview/widget/RecyclerView$h;->notifyItemChanged(I)V

    return-void
.end method
