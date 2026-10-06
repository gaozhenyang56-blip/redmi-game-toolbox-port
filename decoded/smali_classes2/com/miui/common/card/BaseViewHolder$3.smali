.class Lcom/miui/common/card/BaseViewHolder$3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/common/card/BaseViewHolder;->showAlertInfoDialog(Lcom/miui/common/card/models/BaseCardModel;Lcom/miui/securityscan/model/AbsModel;Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/common/card/BaseViewHolder;

.field final synthetic val$absModel:Lcom/miui/securityscan/model/AbsModel;

.field final synthetic val$baseModel:Lcom/miui/common/card/models/BaseCardModel;


# direct methods
.method constructor <init>(Lcom/miui/common/card/BaseViewHolder;Lcom/miui/securityscan/model/AbsModel;Lcom/miui/common/card/models/BaseCardModel;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/common/card/BaseViewHolder$3;->this$0:Lcom/miui/common/card/BaseViewHolder;

    iput-object p2, p0, Lcom/miui/common/card/BaseViewHolder$3;->val$absModel:Lcom/miui/securityscan/model/AbsModel;

    iput-object p3, p0, Lcom/miui/common/card/BaseViewHolder$3;->val$baseModel:Lcom/miui/common/card/models/BaseCardModel;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1

    iget-object p1, p0, Lcom/miui/common/card/BaseViewHolder$3;->val$absModel:Lcom/miui/securityscan/model/AbsModel;

    invoke-virtual {p1}, Lcom/miui/securityscan/model/AbsModel;->getItemKey()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Leg/p;->a(Ljava/lang/String;)Landroid/net/Uri;

    iget-object p1, p0, Lcom/miui/common/card/BaseViewHolder$3;->this$0:Lcom/miui/common/card/BaseViewHolder;

    iget-object p1, p1, Lcom/miui/common/card/BaseViewHolder;->handler:Landroid/os/Handler;

    if-eqz p1, :cond_2

    iget-object p1, p0, Lcom/miui/common/card/BaseViewHolder$3;->val$baseModel:Lcom/miui/common/card/models/BaseCardModel;

    instance-of p2, p1, Lcom/miui/common/card/models/ListTitleCheckboxCardModel;

    if-eqz p2, :cond_0

    check-cast p1, Lcom/miui/common/card/models/ListTitleCheckboxCardModel;

    iget-object p2, p0, Lcom/miui/common/card/BaseViewHolder$3;->val$absModel:Lcom/miui/securityscan/model/AbsModel;

    invoke-virtual {p1, p2}, Lcom/miui/common/card/models/ListTitleCheckboxCardModel;->ignoreAbsModel(Lcom/miui/securityscan/model/AbsModel;)V

    :cond_0
    invoke-static {}, Lcom/miui/securityscan/scanner/ScoreManager;->j()Lcom/miui/securityscan/scanner/ScoreManager;

    move-result-object p1

    iget-object p2, p0, Lcom/miui/common/card/BaseViewHolder$3;->val$absModel:Lcom/miui/securityscan/model/AbsModel;

    sget-object v0, Lcom/miui/securityscan/model/AbsModel$State;->SAFE:Lcom/miui/securityscan/model/AbsModel$State;

    invoke-virtual {p1, p2, v0}, Lcom/miui/securityscan/scanner/ScoreManager;->P(Lcom/miui/securityscan/model/AbsModel;Lcom/miui/securityscan/model/AbsModel$State;)V

    invoke-static {}, Lcom/miui/securitycenter/Application;->A()Lcom/miui/securitycenter/Application;

    move-result-object p1

    invoke-static {p1}, Lef/x;->m(Landroid/content/Context;)I

    move-result p1

    if-lez p1, :cond_1

    iget-object p2, p0, Lcom/miui/common/card/BaseViewHolder$3;->val$absModel:Lcom/miui/securityscan/model/AbsModel;

    invoke-virtual {p2}, Lcom/miui/securityscan/model/AbsModel;->getScore()I

    move-result p2

    sub-int/2addr p1, p2

    :cond_1
    invoke-static {}, Lcom/miui/securitycenter/Application;->A()Lcom/miui/securitycenter/Application;

    move-result-object p2

    invoke-static {p2, p1}, Lef/x;->c0(Landroid/content/Context;I)V

    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object p1

    const/16 p2, 0x6d

    iput p2, p1, Landroid/os/Message;->what:I

    iget-object p2, p0, Lcom/miui/common/card/BaseViewHolder$3;->val$baseModel:Lcom/miui/common/card/models/BaseCardModel;

    iput-object p2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    iget-object p2, p0, Lcom/miui/common/card/BaseViewHolder$3;->this$0:Lcom/miui/common/card/BaseViewHolder;

    iget-object p2, p2, Lcom/miui/common/card/BaseViewHolder;->handler:Landroid/os/Handler;

    invoke-virtual {p2, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    :cond_2
    return-void
.end method
