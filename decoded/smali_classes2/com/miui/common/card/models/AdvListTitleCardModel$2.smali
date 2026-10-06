.class Lcom/miui/common/card/models/AdvListTitleCardModel$2;
.super Lcom/xiaomi/ad/feedback/IAdFeedbackListener$Stub;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/common/card/models/AdvListTitleCardModel;->closeNormalAdNewStyle(Lcom/miui/securityscan/BaseAdvActivity;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/common/card/models/AdvListTitleCardModel;

.field final synthetic val$context:Lcom/miui/securityscan/BaseAdvActivity;


# direct methods
.method constructor <init>(Lcom/miui/common/card/models/AdvListTitleCardModel;Lcom/miui/securityscan/BaseAdvActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/common/card/models/AdvListTitleCardModel$2;->this$0:Lcom/miui/common/card/models/AdvListTitleCardModel;

    iput-object p2, p0, Lcom/miui/common/card/models/AdvListTitleCardModel$2;->val$context:Lcom/miui/securityscan/BaseAdvActivity;

    invoke-direct {p0}, Lcom/xiaomi/ad/feedback/IAdFeedbackListener$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public onFinished(I)V
    .locals 1

    if-lez p1, :cond_0

    new-instance p1, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {p1, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-instance v0, Lcom/miui/common/card/models/AdvListTitleCardModel$2$1;

    invoke-direct {v0, p0}, Lcom/miui/common/card/models/AdvListTitleCardModel$2$1;-><init>(Lcom/miui/common/card/models/AdvListTitleCardModel$2;)V

    invoke-virtual {p1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_0
    invoke-static {}, Lc3/k;->g()Lc3/k;

    move-result-object p1

    iget-object v0, p0, Lcom/miui/common/card/models/AdvListTitleCardModel$2;->val$context:Lcom/miui/securityscan/BaseAdvActivity;

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p1, v0}, Lc3/k;->l(Landroid/content/Context;)V

    return-void
.end method
