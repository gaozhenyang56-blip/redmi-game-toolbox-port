.class Lcom/miui/common/card/models/FunctionCardModel$FunctionViewHolder$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


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

.field final synthetic val$function:Lcom/miui/common/card/functions/BaseFunction;

.field final synthetic val$m:Lcom/miui/common/card/models/FunctionCardModel;


# direct methods
.method constructor <init>(Lcom/miui/common/card/models/FunctionCardModel$FunctionViewHolder;Lcom/miui/common/card/models/FunctionCardModel;Lcom/miui/common/card/functions/BaseFunction;Lcom/miui/securityscan/model/AbsModel;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/common/card/models/FunctionCardModel$FunctionViewHolder$1;->this$0:Lcom/miui/common/card/models/FunctionCardModel$FunctionViewHolder;

    iput-object p2, p0, Lcom/miui/common/card/models/FunctionCardModel$FunctionViewHolder$1;->val$m:Lcom/miui/common/card/models/FunctionCardModel;

    iput-object p3, p0, Lcom/miui/common/card/models/FunctionCardModel$FunctionViewHolder$1;->val$function:Lcom/miui/common/card/functions/BaseFunction;

    iput-object p4, p0, Lcom/miui/common/card/models/FunctionCardModel$FunctionViewHolder$1;->val$absModel:Lcom/miui/securityscan/model/AbsModel;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private statEvent(Lcom/miui/common/card/models/FunctionCardModel;Landroid/content/Context;)V
    .locals 2

    invoke-virtual {p1}, Lcom/miui/common/card/models/FunctionCardModel;->isHomePageFunc()Z

    move-result v0

    if-eqz v0, :cond_3

    const/4 v0, 0x0

    invoke-virtual {p1}, Lcom/miui/common/card/models/FunctionCardModel;->getFunction()Lcom/miui/common/card/functions/BaseFunction;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {p1}, Lcom/miui/common/card/models/FunctionCardModel;->getFunction()Lcom/miui/common/card/functions/BaseFunction;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/common/card/functions/BaseFunction;->getAction()Ljava/lang/String;

    move-result-object v0

    :cond_0
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {p1}, Lcom/miui/common/card/models/FunctionCardModel;->getStatKey()Ljava/lang/String;

    move-result-object v0

    :cond_1
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_2

    invoke-static {v0}, Lqf/c;->v0(Ljava/lang/String;)V

    :cond_2
    iget-object p1, p0, Lcom/miui/common/card/models/FunctionCardModel$FunctionViewHolder$1;->val$function:Lcom/miui/common/card/functions/BaseFunction;

    invoke-virtual {p1}, Lcom/miui/common/card/functions/BaseFunction;->getAction()Ljava/lang/String;

    move-result-object p1

    const-string v0, "#Intent;action=com.miui.gamebooster.action.ACCESS_MAINACTIVITY;S.jump_target=gamebox;end"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_4

    invoke-static {p2}, Lqf/c;->H(Landroid/content/Context;)V

    goto :goto_0

    :cond_3
    iget-object p1, p0, Lcom/miui/common/card/models/FunctionCardModel$FunctionViewHolder$1;->val$absModel:Lcom/miui/securityscan/model/AbsModel;

    if-eqz p1, :cond_4

    invoke-virtual {p1}, Lcom/miui/securityscan/model/AbsModel;->getTrackStr()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_4

    iget-object p1, p0, Lcom/miui/common/card/models/FunctionCardModel$FunctionViewHolder$1;->val$absModel:Lcom/miui/securityscan/model/AbsModel;

    invoke-virtual {p1}, Lcom/miui/securityscan/model/AbsModel;->getTrackStr()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lqf/c;->Z(Ljava/lang/String;)V

    :cond_4
    :goto_0
    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    iget-object v0, p0, Lcom/miui/common/card/models/FunctionCardModel$FunctionViewHolder$1;->val$m:Lcom/miui/common/card/models/FunctionCardModel;

    iget-object v1, p0, Lcom/miui/common/card/models/FunctionCardModel$FunctionViewHolder$1;->this$0:Lcom/miui/common/card/models/FunctionCardModel$FunctionViewHolder;

    iget-object v1, v1, Lcom/miui/common/card/models/FunctionCardModel$FunctionViewHolder;->context:Landroid/content/Context;

    invoke-direct {p0, v0, v1}, Lcom/miui/common/card/models/FunctionCardModel$FunctionViewHolder$1;->statEvent(Lcom/miui/common/card/models/FunctionCardModel;Landroid/content/Context;)V

    iget-object v0, p0, Lcom/miui/common/card/models/FunctionCardModel$FunctionViewHolder$1;->val$function:Lcom/miui/common/card/functions/BaseFunction;

    invoke-virtual {v0, p1}, Lcom/miui/common/card/functions/BaseFunction;->onClick(Landroid/view/View;)V

    iget-object p1, p0, Lcom/miui/common/card/models/FunctionCardModel$FunctionViewHolder$1;->val$m:Lcom/miui/common/card/models/FunctionCardModel;

    invoke-static {p1}, Lcom/miui/common/card/models/FunctionCardModel;->access$200(Lcom/miui/common/card/models/FunctionCardModel;)Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/miui/common/card/models/FunctionCardModel$FunctionViewHolder$1;->this$0:Lcom/miui/common/card/models/FunctionCardModel$FunctionViewHolder;

    invoke-static {p1}, Lcom/miui/common/card/models/FunctionCardModel$FunctionViewHolder;->access$300(Lcom/miui/common/card/models/FunctionCardModel$FunctionViewHolder;)Landroid/os/Handler;

    move-result-object p1

    if-eqz p1, :cond_0

    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object p1

    const/16 v0, 0x6d

    iput v0, p1, Landroid/os/Message;->what:I

    iget-object v0, p0, Lcom/miui/common/card/models/FunctionCardModel$FunctionViewHolder$1;->val$m:Lcom/miui/common/card/models/FunctionCardModel;

    iput-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    iget-object v0, p0, Lcom/miui/common/card/models/FunctionCardModel$FunctionViewHolder$1;->this$0:Lcom/miui/common/card/models/FunctionCardModel$FunctionViewHolder;

    invoke-static {v0}, Lcom/miui/common/card/models/FunctionCardModel$FunctionViewHolder;->access$400(Lcom/miui/common/card/models/FunctionCardModel$FunctionViewHolder;)Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    :cond_0
    return-void
.end method
