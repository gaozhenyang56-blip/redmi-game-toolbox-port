.class Lcom/miui/common/card/models/ListTitleCheckboxCardModel$ListTitleCheckboxViewHolder$4;
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

.field final synthetic val$m:Lcom/miui/common/card/models/ListTitleCheckboxCardModel;


# direct methods
.method constructor <init>(Lcom/miui/common/card/models/ListTitleCheckboxCardModel$ListTitleCheckboxViewHolder;Lcom/miui/common/card/models/ListTitleCheckboxCardModel;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/common/card/models/ListTitleCheckboxCardModel$ListTitleCheckboxViewHolder$4;->this$0:Lcom/miui/common/card/models/ListTitleCheckboxCardModel$ListTitleCheckboxViewHolder;

    iput-object p2, p0, Lcom/miui/common/card/models/ListTitleCheckboxCardModel$ListTitleCheckboxViewHolder$4;->val$m:Lcom/miui/common/card/models/ListTitleCheckboxCardModel;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 5

    invoke-static {}, Leg/e;->a()Z

    move-result p1

    if-eqz p1, :cond_0

    return-void

    :cond_0
    iget-object p1, p0, Lcom/miui/common/card/models/ListTitleCheckboxCardModel$ListTitleCheckboxViewHolder$4;->this$0:Lcom/miui/common/card/models/ListTitleCheckboxCardModel$ListTitleCheckboxViewHolder;

    invoke-static {p1}, Lcom/miui/common/card/models/ListTitleCheckboxCardModel$ListTitleCheckboxViewHolder;->access$800(Lcom/miui/common/card/models/ListTitleCheckboxCardModel$ListTitleCheckboxViewHolder;)[Landroid/widget/CheckBox;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/miui/common/card/models/ListTitleCheckboxCardModel$ListTitleCheckboxViewHolder;->access$900(Lcom/miui/common/card/models/ListTitleCheckboxCardModel$ListTitleCheckboxViewHolder;[Landroid/widget/CheckBox;)Z

    move-result p1

    if-eqz p1, :cond_a

    iget-object p1, p0, Lcom/miui/common/card/models/ListTitleCheckboxCardModel$ListTitleCheckboxViewHolder$4;->this$0:Lcom/miui/common/card/models/ListTitleCheckboxCardModel$ListTitleCheckboxViewHolder;

    invoke-static {p1}, Lcom/miui/common/card/models/ListTitleCheckboxCardModel$ListTitleCheckboxViewHolder;->access$800(Lcom/miui/common/card/models/ListTitleCheckboxCardModel$ListTitleCheckboxViewHolder;)[Landroid/widget/CheckBox;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/miui/common/card/models/ListTitleCheckboxCardModel$ListTitleCheckboxViewHolder;->access$1000(Lcom/miui/common/card/models/ListTitleCheckboxCardModel$ListTitleCheckboxViewHolder;[Landroid/widget/CheckBox;)Z

    move-result p1

    const/4 v0, 0x0

    if-eqz p1, :cond_5

    iget-object p1, p0, Lcom/miui/common/card/models/ListTitleCheckboxCardModel$ListTitleCheckboxViewHolder$4;->val$m:Lcom/miui/common/card/models/ListTitleCheckboxCardModel;

    invoke-static {p1}, Lcom/miui/common/card/models/ListTitleCheckboxCardModel;->access$000(Lcom/miui/common/card/models/ListTitleCheckboxCardModel;)Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    move v1, v0

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/miui/securityscan/model/AbsModel;

    invoke-virtual {v2}, Lcom/miui/securityscan/model/AbsModel;->getScore()I

    move-result v3

    add-int/2addr v1, v3

    iget-object v3, p0, Lcom/miui/common/card/models/ListTitleCheckboxCardModel$ListTitleCheckboxViewHolder$4;->val$m:Lcom/miui/common/card/models/ListTitleCheckboxCardModel;

    invoke-static {v3}, Lcom/miui/common/card/models/ListTitleCheckboxCardModel;->access$1100(Lcom/miui/common/card/models/ListTitleCheckboxCardModel;)Lcom/miui/securityscan/scanner/k$i;

    move-result-object v3

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/miui/common/card/models/ListTitleCheckboxCardModel$ListTitleCheckboxViewHolder$4;->val$m:Lcom/miui/common/card/models/ListTitleCheckboxCardModel;

    invoke-static {v3}, Lcom/miui/common/card/models/ListTitleCheckboxCardModel;->access$1100(Lcom/miui/common/card/models/ListTitleCheckboxCardModel;)Lcom/miui/securityscan/scanner/k$i;

    move-result-object v3

    invoke-interface {v3, v2}, Lcom/miui/securityscan/scanner/k$i;->c(Lcom/miui/securityscan/model/AbsModel;)V

    :cond_1
    invoke-virtual {v2}, Lcom/miui/securityscan/model/AbsModel;->getTrackStr()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lqf/c;->Z(Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    iget-object p1, p0, Lcom/miui/common/card/models/ListTitleCheckboxCardModel$ListTitleCheckboxViewHolder$4;->val$m:Lcom/miui/common/card/models/ListTitleCheckboxCardModel;

    invoke-static {p1}, Lcom/miui/common/card/models/ListTitleCheckboxCardModel;->access$1100(Lcom/miui/common/card/models/ListTitleCheckboxCardModel;)Lcom/miui/securityscan/scanner/k$i;

    move-result-object p1

    if-eqz p1, :cond_3

    iget-object p1, p0, Lcom/miui/common/card/models/ListTitleCheckboxCardModel$ListTitleCheckboxViewHolder$4;->val$m:Lcom/miui/common/card/models/ListTitleCheckboxCardModel;

    invoke-static {p1}, Lcom/miui/common/card/models/ListTitleCheckboxCardModel;->access$1100(Lcom/miui/common/card/models/ListTitleCheckboxCardModel;)Lcom/miui/securityscan/scanner/k$i;

    move-result-object p1

    invoke-interface {p1, v1, v0}, Lcom/miui/securityscan/scanner/k$i;->e(IZ)V

    :cond_3
    iget-object p1, p0, Lcom/miui/common/card/models/ListTitleCheckboxCardModel$ListTitleCheckboxViewHolder$4;->val$m:Lcom/miui/common/card/models/ListTitleCheckboxCardModel;

    invoke-static {p1}, Lcom/miui/common/card/models/ListTitleCheckboxCardModel;->access$1200(Lcom/miui/common/card/models/ListTitleCheckboxCardModel;)Z

    move-result p1

    if-eqz p1, :cond_4

    iget-object p1, p0, Lcom/miui/common/card/models/ListTitleCheckboxCardModel$ListTitleCheckboxViewHolder$4;->this$0:Lcom/miui/common/card/models/ListTitleCheckboxCardModel$ListTitleCheckboxViewHolder;

    invoke-static {p1}, Lcom/miui/common/card/models/ListTitleCheckboxCardModel$ListTitleCheckboxViewHolder;->access$1300(Lcom/miui/common/card/models/ListTitleCheckboxCardModel$ListTitleCheckboxViewHolder;)Landroid/os/Handler;

    move-result-object p1

    if-eqz p1, :cond_4

    iget-object p1, p0, Lcom/miui/common/card/models/ListTitleCheckboxCardModel$ListTitleCheckboxViewHolder$4;->this$0:Lcom/miui/common/card/models/ListTitleCheckboxCardModel$ListTitleCheckboxViewHolder;

    invoke-static {p1}, Lcom/miui/common/card/models/ListTitleCheckboxCardModel$ListTitleCheckboxViewHolder;->access$1400(Lcom/miui/common/card/models/ListTitleCheckboxCardModel$ListTitleCheckboxViewHolder;)Landroid/os/Handler;

    move-result-object p1

    const/16 v0, 0x66

    invoke-virtual {p1, v0}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    :cond_4
    iget-object p1, p0, Lcom/miui/common/card/models/ListTitleCheckboxCardModel$ListTitleCheckboxViewHolder$4;->val$m:Lcom/miui/common/card/models/ListTitleCheckboxCardModel;

    invoke-static {p1}, Lcom/miui/common/card/models/ListTitleCheckboxCardModel;->access$1500(Lcom/miui/common/card/models/ListTitleCheckboxCardModel;)Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_b

    iget-object p1, p0, Lcom/miui/common/card/models/ListTitleCheckboxCardModel$ListTitleCheckboxViewHolder$4;->val$m:Lcom/miui/common/card/models/ListTitleCheckboxCardModel;

    invoke-static {p1}, Lcom/miui/common/card/models/ListTitleCheckboxCardModel;->access$1500(Lcom/miui/common/card/models/ListTitleCheckboxCardModel;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_b

    iget-object p1, p0, Lcom/miui/common/card/models/ListTitleCheckboxCardModel$ListTitleCheckboxViewHolder$4;->this$0:Lcom/miui/common/card/models/ListTitleCheckboxCardModel$ListTitleCheckboxViewHolder;

    invoke-static {p1}, Lcom/miui/common/card/models/ListTitleCheckboxCardModel$ListTitleCheckboxViewHolder;->access$700(Lcom/miui/common/card/models/ListTitleCheckboxCardModel$ListTitleCheckboxViewHolder;)Landroid/content/Context;

    move-result-object p1

    iget-object v0, p0, Lcom/miui/common/card/models/ListTitleCheckboxCardModel$ListTitleCheckboxViewHolder$4;->val$m:Lcom/miui/common/card/models/ListTitleCheckboxCardModel;

    invoke-static {v0}, Lcom/miui/common/card/models/ListTitleCheckboxCardModel;->access$1500(Lcom/miui/common/card/models/ListTitleCheckboxCardModel;)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_2

    :cond_5
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iget-object v1, p0, Lcom/miui/common/card/models/ListTitleCheckboxCardModel$ListTitleCheckboxViewHolder$4;->val$m:Lcom/miui/common/card/models/ListTitleCheckboxCardModel;

    invoke-static {v1}, Lcom/miui/common/card/models/ListTitleCheckboxCardModel;->access$000(Lcom/miui/common/card/models/ListTitleCheckboxCardModel;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    move v2, v0

    :cond_6
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_8

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/miui/securityscan/model/AbsModel;

    invoke-virtual {v3}, Lcom/miui/securityscan/model/AbsModel;->isChecked()Z

    move-result v4

    if-eqz v4, :cond_6

    invoke-virtual {v3}, Lcom/miui/securityscan/model/AbsModel;->getScore()I

    move-result v4

    add-int/2addr v2, v4

    iget-object v4, p0, Lcom/miui/common/card/models/ListTitleCheckboxCardModel$ListTitleCheckboxViewHolder$4;->val$m:Lcom/miui/common/card/models/ListTitleCheckboxCardModel;

    invoke-static {v4}, Lcom/miui/common/card/models/ListTitleCheckboxCardModel;->access$1100(Lcom/miui/common/card/models/ListTitleCheckboxCardModel;)Lcom/miui/securityscan/scanner/k$i;

    move-result-object v4

    if-eqz v4, :cond_7

    iget-object v4, p0, Lcom/miui/common/card/models/ListTitleCheckboxCardModel$ListTitleCheckboxViewHolder$4;->val$m:Lcom/miui/common/card/models/ListTitleCheckboxCardModel;

    invoke-static {v4}, Lcom/miui/common/card/models/ListTitleCheckboxCardModel;->access$1100(Lcom/miui/common/card/models/ListTitleCheckboxCardModel;)Lcom/miui/securityscan/scanner/k$i;

    move-result-object v4

    invoke-interface {v4, v3}, Lcom/miui/securityscan/scanner/k$i;->c(Lcom/miui/securityscan/model/AbsModel;)V

    :cond_7
    invoke-virtual {v3}, Lcom/miui/securityscan/model/AbsModel;->getTrackStr()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lqf/c;->Z(Ljava/lang/String;)V

    invoke-interface {p1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_8
    iget-object v1, p0, Lcom/miui/common/card/models/ListTitleCheckboxCardModel$ListTitleCheckboxViewHolder$4;->val$m:Lcom/miui/common/card/models/ListTitleCheckboxCardModel;

    invoke-static {v1}, Lcom/miui/common/card/models/ListTitleCheckboxCardModel;->access$1100(Lcom/miui/common/card/models/ListTitleCheckboxCardModel;)Lcom/miui/securityscan/scanner/k$i;

    move-result-object v1

    if-eqz v1, :cond_9

    iget-object v1, p0, Lcom/miui/common/card/models/ListTitleCheckboxCardModel$ListTitleCheckboxViewHolder$4;->val$m:Lcom/miui/common/card/models/ListTitleCheckboxCardModel;

    invoke-static {v1}, Lcom/miui/common/card/models/ListTitleCheckboxCardModel;->access$1100(Lcom/miui/common/card/models/ListTitleCheckboxCardModel;)Lcom/miui/securityscan/scanner/k$i;

    move-result-object v1

    invoke-interface {v1, v2, v0}, Lcom/miui/securityscan/scanner/k$i;->e(IZ)V

    :cond_9
    iget-object v0, p0, Lcom/miui/common/card/models/ListTitleCheckboxCardModel$ListTitleCheckboxViewHolder$4;->val$m:Lcom/miui/common/card/models/ListTitleCheckboxCardModel;

    invoke-static {v0}, Lcom/miui/common/card/models/ListTitleCheckboxCardModel;->access$000(Lcom/miui/common/card/models/ListTitleCheckboxCardModel;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->removeAll(Ljava/util/Collection;)Z

    iget-object p1, p0, Lcom/miui/common/card/models/ListTitleCheckboxCardModel$ListTitleCheckboxViewHolder$4;->this$0:Lcom/miui/common/card/models/ListTitleCheckboxCardModel$ListTitleCheckboxViewHolder;

    invoke-static {p1}, Lcom/miui/common/card/models/ListTitleCheckboxCardModel$ListTitleCheckboxViewHolder;->access$1600(Lcom/miui/common/card/models/ListTitleCheckboxCardModel$ListTitleCheckboxViewHolder;)Landroid/os/Handler;

    move-result-object p1

    if-eqz p1, :cond_b

    iget-object p1, p0, Lcom/miui/common/card/models/ListTitleCheckboxCardModel$ListTitleCheckboxViewHolder$4;->this$0:Lcom/miui/common/card/models/ListTitleCheckboxCardModel$ListTitleCheckboxViewHolder;

    invoke-static {p1}, Lcom/miui/common/card/models/ListTitleCheckboxCardModel$ListTitleCheckboxViewHolder;->access$1700(Lcom/miui/common/card/models/ListTitleCheckboxCardModel$ListTitleCheckboxViewHolder;)Landroid/os/Handler;

    move-result-object p1

    const/16 v0, 0x6b

    invoke-virtual {p1, v0}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_3

    :cond_a
    iget-object p1, p0, Lcom/miui/common/card/models/ListTitleCheckboxCardModel$ListTitleCheckboxViewHolder$4;->this$0:Lcom/miui/common/card/models/ListTitleCheckboxCardModel$ListTitleCheckboxViewHolder;

    invoke-static {p1}, Lcom/miui/common/card/models/ListTitleCheckboxCardModel$ListTitleCheckboxViewHolder;->access$700(Lcom/miui/common/card/models/ListTitleCheckboxCardModel$ListTitleCheckboxViewHolder;)Landroid/content/Context;

    move-result-object p1

    iget-object v0, p0, Lcom/miui/common/card/models/ListTitleCheckboxCardModel$ListTitleCheckboxViewHolder$4;->this$0:Lcom/miui/common/card/models/ListTitleCheckboxCardModel$ListTitleCheckboxViewHolder;

    invoke-static {v0}, Lcom/miui/common/card/models/ListTitleCheckboxCardModel$ListTitleCheckboxViewHolder;->access$700(Lcom/miui/common/card/models/ListTitleCheckboxCardModel$ListTitleCheckboxViewHolder;)Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f120fa4

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    :goto_2
    invoke-static {p1, v0}, Lx4/y1;->k(Landroid/content/Context;Ljava/lang/String;)V

    :cond_b
    :goto_3
    return-void
.end method
