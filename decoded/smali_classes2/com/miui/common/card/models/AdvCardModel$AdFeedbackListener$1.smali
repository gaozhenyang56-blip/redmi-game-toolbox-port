.class Lcom/miui/common/card/models/AdvCardModel$AdFeedbackListener$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/common/card/models/AdvCardModel$AdFeedbackListener;->onFinished(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/common/card/models/AdvCardModel$AdFeedbackListener;

.field final synthetic val$advCardModel:Lcom/miui/common/card/models/AdvCardModel;


# direct methods
.method constructor <init>(Lcom/miui/common/card/models/AdvCardModel$AdFeedbackListener;Lcom/miui/common/card/models/AdvCardModel;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/common/card/models/AdvCardModel$AdFeedbackListener$1;->this$0:Lcom/miui/common/card/models/AdvCardModel$AdFeedbackListener;

    iput-object p2, p0, Lcom/miui/common/card/models/AdvCardModel$AdFeedbackListener$1;->val$advCardModel:Lcom/miui/common/card/models/AdvCardModel;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    iget-object v0, p0, Lcom/miui/common/card/models/AdvCardModel$AdFeedbackListener$1;->this$0:Lcom/miui/common/card/models/AdvCardModel$AdFeedbackListener;

    invoke-static {v0}, Lcom/miui/common/card/models/AdvCardModel$AdFeedbackListener;->access$800(Lcom/miui/common/card/models/AdvCardModel$AdFeedbackListener;)Ljava/lang/ref/WeakReference;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/securityscan/BaseAdvActivity;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lmiuix/appcompat/app/AppCompatActivity;->isFinishing()Z

    move-result v1

    if-nez v1, :cond_2

    invoke-virtual {v0}, Landroid/app/Activity;->isDestroyed()Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lcom/miui/common/card/models/AdvCardModel$AdFeedbackListener$1;->val$advCardModel:Lcom/miui/common/card/models/AdvCardModel;

    invoke-static {v1}, Lcom/miui/common/card/models/AdvCardModel;->access$700(Lcom/miui/common/card/models/AdvCardModel;)I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcom/miui/securityscan/BaseAdvActivity;->g0(Lcom/miui/common/card/models/BaseCardModel;I)V

    iget-object v0, p0, Lcom/miui/common/card/models/AdvCardModel$AdFeedbackListener$1;->val$advCardModel:Lcom/miui/common/card/models/AdvCardModel;

    invoke-static {v0}, Lcom/miui/common/card/models/AdvCardModel;->access$500(Lcom/miui/common/card/models/AdvCardModel;)I

    move-result v0

    const/16 v1, 0x2711

    if-eq v0, v1, :cond_1

    iget-object v0, p0, Lcom/miui/common/card/models/AdvCardModel$AdFeedbackListener$1;->val$advCardModel:Lcom/miui/common/card/models/AdvCardModel;

    invoke-static {v0}, Lcom/miui/common/card/models/AdvCardModel;->access$500(Lcom/miui/common/card/models/AdvCardModel;)I

    move-result v0

    const/16 v1, 0x7531

    if-eq v0, v1, :cond_1

    iget-object v0, p0, Lcom/miui/common/card/models/AdvCardModel$AdFeedbackListener$1;->val$advCardModel:Lcom/miui/common/card/models/AdvCardModel;

    invoke-static {v0}, Lcom/miui/common/card/models/AdvCardModel;->access$500(Lcom/miui/common/card/models/AdvCardModel;)I

    move-result v0

    const/16 v1, 0x7532

    if-ne v0, v1, :cond_2

    :cond_1
    iget-object v0, p0, Lcom/miui/common/card/models/AdvCardModel$AdFeedbackListener$1;->val$advCardModel:Lcom/miui/common/card/models/AdvCardModel;

    invoke-virtual {v0}, Lcom/miui/common/card/models/AdvCardModel;->getPositionId()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/common/card/models/AdvCardModel$AdFeedbackListener$1;->val$advCardModel:Lcom/miui/common/card/models/AdvCardModel;

    invoke-static {v1}, Lcom/miui/common/card/models/AdvCardModel;->access$900(Lcom/miui/common/card/models/AdvCardModel;)Ljava/lang/Object;

    move-result-object v1

    invoke-static {v0, v1}, Lsf/f;->f(Ljava/lang/String;Ljava/lang/Object;)V

    :cond_2
    :goto_0
    return-void
.end method
