.class Lcom/miui/common/card/models/AdvListTitleCardModel$2$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/common/card/models/AdvListTitleCardModel$2;->onFinished(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/miui/common/card/models/AdvListTitleCardModel$2;


# direct methods
.method constructor <init>(Lcom/miui/common/card/models/AdvListTitleCardModel$2;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/common/card/models/AdvListTitleCardModel$2$1;->this$1:Lcom/miui/common/card/models/AdvListTitleCardModel$2;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    iget-object v0, p0, Lcom/miui/common/card/models/AdvListTitleCardModel$2$1;->this$1:Lcom/miui/common/card/models/AdvListTitleCardModel$2;

    iget-object v0, v0, Lcom/miui/common/card/models/AdvListTitleCardModel$2;->this$0:Lcom/miui/common/card/models/AdvListTitleCardModel;

    invoke-virtual {v0}, Lcom/miui/common/card/models/TitleCardModel;->getSubCardModelList()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_0

    iget-object v1, p0, Lcom/miui/common/card/models/AdvListTitleCardModel$2$1;->this$1:Lcom/miui/common/card/models/AdvListTitleCardModel$2;

    iget-object v2, v1, Lcom/miui/common/card/models/AdvListTitleCardModel$2;->val$context:Lcom/miui/securityscan/BaseAdvActivity;

    iget-object v1, v1, Lcom/miui/common/card/models/AdvListTitleCardModel$2;->this$0:Lcom/miui/common/card/models/AdvListTitleCardModel;

    invoke-static {v1}, Lcom/miui/common/card/models/AdvListTitleCardModel;->access$000(Lcom/miui/common/card/models/AdvListTitleCardModel;)I

    move-result v3

    invoke-virtual {v2, v1, v0, v3}, Lcom/miui/securityscan/BaseAdvActivity;->f0(Lcom/miui/common/card/models/BaseCardModel;Ljava/util/List;I)V

    :cond_0
    return-void
.end method
