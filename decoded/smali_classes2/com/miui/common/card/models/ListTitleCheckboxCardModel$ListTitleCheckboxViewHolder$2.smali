.class Lcom/miui/common/card/models/ListTitleCheckboxCardModel$ListTitleCheckboxViewHolder$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/common/card/models/ListTitleCheckboxCardModel$ListTitleCheckboxViewHolder;->fillData(Landroid/view/View;Lcom/miui/common/card/models/BaseCardModel;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/common/card/models/ListTitleCheckboxCardModel$ListTitleCheckboxViewHolder;

.field final synthetic val$absModel:Lcom/miui/securityscan/model/AbsModel;

.field final synthetic val$checkBox:Landroid/widget/CheckBox;


# direct methods
.method constructor <init>(Lcom/miui/common/card/models/ListTitleCheckboxCardModel$ListTitleCheckboxViewHolder;Landroid/widget/CheckBox;Lcom/miui/securityscan/model/AbsModel;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/common/card/models/ListTitleCheckboxCardModel$ListTitleCheckboxViewHolder$2;->this$0:Lcom/miui/common/card/models/ListTitleCheckboxCardModel$ListTitleCheckboxViewHolder;

    iput-object p2, p0, Lcom/miui/common/card/models/ListTitleCheckboxCardModel$ListTitleCheckboxViewHolder$2;->val$checkBox:Landroid/widget/CheckBox;

    iput-object p3, p0, Lcom/miui/common/card/models/ListTitleCheckboxCardModel$ListTitleCheckboxViewHolder$2;->val$absModel:Lcom/miui/securityscan/model/AbsModel;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    iget-object p1, p0, Lcom/miui/common/card/models/ListTitleCheckboxCardModel$ListTitleCheckboxViewHolder$2;->val$checkBox:Landroid/widget/CheckBox;

    invoke-virtual {p1}, Landroid/widget/CompoundButton;->isChecked()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    invoke-virtual {p1, v0}, Landroid/widget/CompoundButton;->setChecked(Z)V

    iget-object p1, p0, Lcom/miui/common/card/models/ListTitleCheckboxCardModel$ListTitleCheckboxViewHolder$2;->val$absModel:Lcom/miui/securityscan/model/AbsModel;

    iget-object v0, p0, Lcom/miui/common/card/models/ListTitleCheckboxCardModel$ListTitleCheckboxViewHolder$2;->val$checkBox:Landroid/widget/CheckBox;

    invoke-virtual {v0}, Landroid/widget/CompoundButton;->isChecked()Z

    move-result v0

    invoke-virtual {p1, v0}, Lcom/miui/securityscan/model/AbsModel;->setChecked(Z)V

    iget-object p1, p0, Lcom/miui/common/card/models/ListTitleCheckboxCardModel$ListTitleCheckboxViewHolder$2;->this$0:Lcom/miui/common/card/models/ListTitleCheckboxCardModel$ListTitleCheckboxViewHolder;

    invoke-static {p1}, Lcom/miui/common/card/models/ListTitleCheckboxCardModel$ListTitleCheckboxViewHolder;->access$500(Lcom/miui/common/card/models/ListTitleCheckboxCardModel$ListTitleCheckboxViewHolder;)Landroid/os/Handler;

    move-result-object p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/miui/common/card/models/ListTitleCheckboxCardModel$ListTitleCheckboxViewHolder$2;->this$0:Lcom/miui/common/card/models/ListTitleCheckboxCardModel$ListTitleCheckboxViewHolder;

    invoke-static {p1}, Lcom/miui/common/card/models/ListTitleCheckboxCardModel$ListTitleCheckboxViewHolder;->access$600(Lcom/miui/common/card/models/ListTitleCheckboxCardModel$ListTitleCheckboxViewHolder;)Landroid/os/Handler;

    move-result-object p1

    const/16 v0, 0x6b

    invoke-virtual {p1, v0}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    :cond_0
    return-void
.end method
