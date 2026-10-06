.class Lcom/miui/common/card/models/ListTitleConsumePowerRankCardModel$ListTitleConsumePowerRankViewHolder$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/common/card/models/ListTitleConsumePowerRankCardModel$ListTitleConsumePowerRankViewHolder;->fillData(Landroid/view/View;Lcom/miui/common/card/models/BaseCardModel;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/common/card/models/ListTitleConsumePowerRankCardModel$ListTitleConsumePowerRankViewHolder;

.field final synthetic val$m:Lcom/miui/common/card/models/ListTitleConsumePowerRankCardModel;


# direct methods
.method constructor <init>(Lcom/miui/common/card/models/ListTitleConsumePowerRankCardModel$ListTitleConsumePowerRankViewHolder;Lcom/miui/common/card/models/ListTitleConsumePowerRankCardModel;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/common/card/models/ListTitleConsumePowerRankCardModel$ListTitleConsumePowerRankViewHolder$1;->this$0:Lcom/miui/common/card/models/ListTitleConsumePowerRankCardModel$ListTitleConsumePowerRankViewHolder;

    iput-object p2, p0, Lcom/miui/common/card/models/ListTitleConsumePowerRankCardModel$ListTitleConsumePowerRankViewHolder$1;->val$m:Lcom/miui/common/card/models/ListTitleConsumePowerRankCardModel;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    iget-object p1, p0, Lcom/miui/common/card/models/ListTitleConsumePowerRankCardModel$ListTitleConsumePowerRankViewHolder$1;->val$m:Lcom/miui/common/card/models/ListTitleConsumePowerRankCardModel;

    invoke-static {p1}, Lcom/miui/common/card/models/ListTitleConsumePowerRankCardModel;->access$100(Lcom/miui/common/card/models/ListTitleConsumePowerRankCardModel;)Lcom/miui/securityscan/scanner/k$i;

    move-result-object p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/miui/common/card/models/ListTitleConsumePowerRankCardModel$ListTitleConsumePowerRankViewHolder$1;->val$m:Lcom/miui/common/card/models/ListTitleConsumePowerRankCardModel;

    invoke-static {p1}, Lcom/miui/common/card/models/ListTitleConsumePowerRankCardModel;->access$100(Lcom/miui/common/card/models/ListTitleConsumePowerRankCardModel;)Lcom/miui/securityscan/scanner/k$i;

    move-result-object p1

    iget-object v0, p0, Lcom/miui/common/card/models/ListTitleConsumePowerRankCardModel$ListTitleConsumePowerRankViewHolder$1;->val$m:Lcom/miui/common/card/models/ListTitleConsumePowerRankCardModel;

    invoke-static {v0}, Lcom/miui/common/card/models/ListTitleConsumePowerRankCardModel;->access$200(Lcom/miui/common/card/models/ListTitleConsumePowerRankCardModel;)Lcom/miui/securityscan/model/manualitem/ConsumePowerRankModel;

    move-result-object v0

    invoke-interface {p1, v0}, Lcom/miui/securityscan/scanner/k$i;->c(Lcom/miui/securityscan/model/AbsModel;)V

    iget-object p1, p0, Lcom/miui/common/card/models/ListTitleConsumePowerRankCardModel$ListTitleConsumePowerRankViewHolder$1;->val$m:Lcom/miui/common/card/models/ListTitleConsumePowerRankCardModel;

    invoke-static {p1}, Lcom/miui/common/card/models/ListTitleConsumePowerRankCardModel;->access$100(Lcom/miui/common/card/models/ListTitleConsumePowerRankCardModel;)Lcom/miui/securityscan/scanner/k$i;

    move-result-object p1

    iget-object v0, p0, Lcom/miui/common/card/models/ListTitleConsumePowerRankCardModel$ListTitleConsumePowerRankViewHolder$1;->val$m:Lcom/miui/common/card/models/ListTitleConsumePowerRankCardModel;

    invoke-static {v0}, Lcom/miui/common/card/models/ListTitleConsumePowerRankCardModel;->access$300(Lcom/miui/common/card/models/ListTitleConsumePowerRankCardModel;)I

    move-result v0

    iget-object v1, p0, Lcom/miui/common/card/models/ListTitleConsumePowerRankCardModel$ListTitleConsumePowerRankViewHolder$1;->val$m:Lcom/miui/common/card/models/ListTitleConsumePowerRankCardModel;

    invoke-static {v1}, Lcom/miui/common/card/models/ListTitleConsumePowerRankCardModel;->access$200(Lcom/miui/common/card/models/ListTitleConsumePowerRankCardModel;)Lcom/miui/securityscan/model/manualitem/ConsumePowerRankModel;

    move-result-object v1

    invoke-virtual {v1}, Lcom/miui/securityscan/model/AbsModel;->isDelayOptimized()Z

    move-result v1

    invoke-interface {p1, v0, v1}, Lcom/miui/securityscan/scanner/k$i;->e(IZ)V

    :cond_0
    iget-object p1, p0, Lcom/miui/common/card/models/ListTitleConsumePowerRankCardModel$ListTitleConsumePowerRankViewHolder$1;->val$m:Lcom/miui/common/card/models/ListTitleConsumePowerRankCardModel;

    invoke-static {p1}, Lcom/miui/common/card/models/ListTitleConsumePowerRankCardModel;->access$200(Lcom/miui/common/card/models/ListTitleConsumePowerRankCardModel;)Lcom/miui/securityscan/model/manualitem/ConsumePowerRankModel;

    move-result-object p1

    invoke-virtual {p1}, Lcom/miui/securityscan/model/AbsModel;->getTrackStr()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lqf/c;->Z(Ljava/lang/String;)V

    return-void
.end method
