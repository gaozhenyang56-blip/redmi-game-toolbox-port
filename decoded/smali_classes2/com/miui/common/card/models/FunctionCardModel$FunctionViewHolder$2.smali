.class Lcom/miui/common/card/models/FunctionCardModel$FunctionViewHolder$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnLongClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/common/card/models/FunctionCardModel$FunctionViewHolder;->fillData(Landroid/view/View;Lcom/miui/common/card/models/BaseCardModel;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/common/card/models/FunctionCardModel$FunctionViewHolder;

.field final synthetic val$absModel:Lcom/miui/securityscan/model/AbsModel;

.field final synthetic val$model:Lcom/miui/common/card/models/BaseCardModel;


# direct methods
.method constructor <init>(Lcom/miui/common/card/models/FunctionCardModel$FunctionViewHolder;Lcom/miui/securityscan/model/AbsModel;Lcom/miui/common/card/models/BaseCardModel;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/common/card/models/FunctionCardModel$FunctionViewHolder$2;->this$0:Lcom/miui/common/card/models/FunctionCardModel$FunctionViewHolder;

    iput-object p2, p0, Lcom/miui/common/card/models/FunctionCardModel$FunctionViewHolder$2;->val$absModel:Lcom/miui/securityscan/model/AbsModel;

    iput-object p3, p0, Lcom/miui/common/card/models/FunctionCardModel$FunctionViewHolder$2;->val$model:Lcom/miui/common/card/models/BaseCardModel;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onLongClick(Landroid/view/View;)Z
    .locals 3

    iget-object p1, p0, Lcom/miui/common/card/models/FunctionCardModel$FunctionViewHolder$2;->val$absModel:Lcom/miui/securityscan/model/AbsModel;

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/miui/common/card/models/FunctionCardModel$FunctionViewHolder$2;->this$0:Lcom/miui/common/card/models/FunctionCardModel$FunctionViewHolder;

    iget-object v1, p0, Lcom/miui/common/card/models/FunctionCardModel$FunctionViewHolder$2;->val$model:Lcom/miui/common/card/models/BaseCardModel;

    iget-object v2, v0, Lcom/miui/common/card/models/FunctionCardModel$FunctionViewHolder;->context:Landroid/content/Context;

    invoke-virtual {v0, v1, p1, v2}, Lcom/miui/common/card/BaseViewHolder;->showManualItemLongClickDialog(Lcom/miui/common/card/models/BaseCardModel;Lcom/miui/securityscan/model/AbsModel;Landroid/content/Context;)V

    :cond_0
    const/4 p1, 0x1

    return p1
.end method
