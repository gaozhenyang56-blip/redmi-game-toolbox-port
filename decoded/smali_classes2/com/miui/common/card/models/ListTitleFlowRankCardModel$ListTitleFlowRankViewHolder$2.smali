.class Lcom/miui/common/card/models/ListTitleFlowRankCardModel$ListTitleFlowRankViewHolder$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnLongClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/common/card/models/ListTitleFlowRankCardModel$ListTitleFlowRankViewHolder;->fillData(Landroid/view/View;Lcom/miui/common/card/models/BaseCardModel;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/common/card/models/ListTitleFlowRankCardModel$ListTitleFlowRankViewHolder;

.field final synthetic val$m:Lcom/miui/common/card/models/ListTitleFlowRankCardModel;

.field final synthetic val$model:Lcom/miui/common/card/models/BaseCardModel;


# direct methods
.method constructor <init>(Lcom/miui/common/card/models/ListTitleFlowRankCardModel$ListTitleFlowRankViewHolder;Lcom/miui/common/card/models/ListTitleFlowRankCardModel;Lcom/miui/common/card/models/BaseCardModel;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/common/card/models/ListTitleFlowRankCardModel$ListTitleFlowRankViewHolder$2;->this$0:Lcom/miui/common/card/models/ListTitleFlowRankCardModel$ListTitleFlowRankViewHolder;

    iput-object p2, p0, Lcom/miui/common/card/models/ListTitleFlowRankCardModel$ListTitleFlowRankViewHolder$2;->val$m:Lcom/miui/common/card/models/ListTitleFlowRankCardModel;

    iput-object p3, p0, Lcom/miui/common/card/models/ListTitleFlowRankCardModel$ListTitleFlowRankViewHolder$2;->val$model:Lcom/miui/common/card/models/BaseCardModel;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onLongClick(Landroid/view/View;)Z
    .locals 3

    iget-object p1, p0, Lcom/miui/common/card/models/ListTitleFlowRankCardModel$ListTitleFlowRankViewHolder$2;->val$m:Lcom/miui/common/card/models/ListTitleFlowRankCardModel;

    invoke-static {p1}, Lcom/miui/common/card/models/ListTitleFlowRankCardModel;->access$200(Lcom/miui/common/card/models/ListTitleFlowRankCardModel;)Lcom/miui/securityscan/model/AbsModel;

    move-result-object p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/miui/common/card/models/ListTitleFlowRankCardModel$ListTitleFlowRankViewHolder$2;->this$0:Lcom/miui/common/card/models/ListTitleFlowRankCardModel$ListTitleFlowRankViewHolder;

    iget-object v0, p0, Lcom/miui/common/card/models/ListTitleFlowRankCardModel$ListTitleFlowRankViewHolder$2;->val$model:Lcom/miui/common/card/models/BaseCardModel;

    iget-object v1, p0, Lcom/miui/common/card/models/ListTitleFlowRankCardModel$ListTitleFlowRankViewHolder$2;->val$m:Lcom/miui/common/card/models/ListTitleFlowRankCardModel;

    invoke-static {v1}, Lcom/miui/common/card/models/ListTitleFlowRankCardModel;->access$200(Lcom/miui/common/card/models/ListTitleFlowRankCardModel;)Lcom/miui/securityscan/model/AbsModel;

    move-result-object v1

    iget-object v2, p0, Lcom/miui/common/card/models/ListTitleFlowRankCardModel$ListTitleFlowRankViewHolder$2;->this$0:Lcom/miui/common/card/models/ListTitleFlowRankCardModel$ListTitleFlowRankViewHolder;

    invoke-static {v2}, Lcom/miui/common/card/models/ListTitleFlowRankCardModel$ListTitleFlowRankViewHolder;->access$300(Lcom/miui/common/card/models/ListTitleFlowRankCardModel$ListTitleFlowRankViewHolder;)Landroid/content/Context;

    move-result-object v2

    invoke-virtual {p1, v0, v1, v2}, Lcom/miui/common/card/BaseViewHolder;->showManualItemLongClickDialog(Lcom/miui/common/card/models/BaseCardModel;Lcom/miui/securityscan/model/AbsModel;Landroid/content/Context;)V

    :cond_0
    const/4 p1, 0x1

    return p1
.end method
