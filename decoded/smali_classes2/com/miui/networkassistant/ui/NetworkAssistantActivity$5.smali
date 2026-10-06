.class Lcom/miui/networkassistant/ui/NetworkAssistantActivity$5;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/networkassistant/ui/NetworkAssistantActivity;->updateRecommend(Lcom/miui/networkassistant/ui/bean/RecommendBean;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/networkassistant/ui/NetworkAssistantActivity;

.field final synthetic val$data:Lcom/miui/networkassistant/ui/bean/RecommendBean;


# direct methods
.method constructor <init>(Lcom/miui/networkassistant/ui/NetworkAssistantActivity;Lcom/miui/networkassistant/ui/bean/RecommendBean;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/networkassistant/ui/NetworkAssistantActivity$5;->this$0:Lcom/miui/networkassistant/ui/NetworkAssistantActivity;

    iput-object p2, p0, Lcom/miui/networkassistant/ui/NetworkAssistantActivity$5;->val$data:Lcom/miui/networkassistant/ui/bean/RecommendBean;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    const-string p1, "home_advertise"

    const-wide/16 v0, 0x1

    invoke-static {p1, v0, v1}, Lcom/miui/networkassistant/utils/AnalyticsHelper;->recordNumericEvent(Ljava/lang/String;J)V

    iget-object p1, p0, Lcom/miui/networkassistant/ui/NetworkAssistantActivity$5;->val$data:Lcom/miui/networkassistant/ui/bean/RecommendBean;

    invoke-virtual {p1}, Lcom/miui/networkassistant/ui/bean/RecommendBean;->getData()Lcom/miui/networkassistant/ui/bean/RecommendData;

    move-result-object p1

    invoke-virtual {p1}, Lcom/miui/networkassistant/ui/bean/RecommendData;->getBestPosition()Ljava/util/List;

    move-result-object p1

    const/4 v0, 0x0

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/miui/networkassistant/ui/bean/Home;

    invoke-virtual {p1}, Lcom/miui/networkassistant/ui/bean/Home;->getRedirectUrl()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.VIEW"

    invoke-direct {v0, v1, p1}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    iget-object p1, p0, Lcom/miui/networkassistant/ui/NetworkAssistantActivity$5;->this$0:Lcom/miui/networkassistant/ui/NetworkAssistantActivity;

    invoke-virtual {p1, v0}, Lcom/miui/common/base/BaseActivity;->startActivity(Landroid/content/Intent;)V

    :cond_0
    return-void
.end method
