.class Lcom/miui/networkassistant/ui/NetworkAssistantActivity$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/networkassistant/ui/NetworkAssistantActivity;->updateToolItem(Lcom/miui/networkassistant/ui/bean/RecommendBean;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/networkassistant/ui/NetworkAssistantActivity;

.field final synthetic val$product:Lcom/miui/networkassistant/ui/bean/Tool;


# direct methods
.method constructor <init>(Lcom/miui/networkassistant/ui/NetworkAssistantActivity;Lcom/miui/networkassistant/ui/bean/Tool;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/networkassistant/ui/NetworkAssistantActivity$2;->this$0:Lcom/miui/networkassistant/ui/NetworkAssistantActivity;

    iput-object p2, p0, Lcom/miui/networkassistant/ui/NetworkAssistantActivity$2;->val$product:Lcom/miui/networkassistant/ui/bean/Tool;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3

    iget-object p1, p0, Lcom/miui/networkassistant/ui/NetworkAssistantActivity$2;->val$product:Lcom/miui/networkassistant/ui/bean/Tool;

    invoke-virtual {p1}, Lcom/miui/networkassistant/ui/bean/Tool;->getRedirectUrl()Ljava/lang/String;

    move-result-object p1

    iget-object v0, p0, Lcom/miui/networkassistant/ui/NetworkAssistantActivity$2;->val$product:Lcom/miui/networkassistant/ui/bean/Tool;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/miui/networkassistant/ui/bean/Tool;->getRedirectUrl()Ljava/lang/String;

    move-result-object v0

    const-string v1, "recordlist"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    const-string v1, "android.intent.action.VIEW"

    if-eqz v0, :cond_0

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    const/high16 p1, 0x10000000

    invoke-virtual {v0, p1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    goto :goto_0

    :cond_0
    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0, v1, p1}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    :goto_0
    iget-object p1, p0, Lcom/miui/networkassistant/ui/NetworkAssistantActivity$2;->this$0:Lcom/miui/networkassistant/ui/NetworkAssistantActivity;

    invoke-virtual {p1, v0}, Lcom/miui/common/base/BaseActivity;->startActivity(Landroid/content/Intent;)V

    iget-object p1, p0, Lcom/miui/networkassistant/ui/NetworkAssistantActivity$2;->this$0:Lcom/miui/networkassistant/ui/NetworkAssistantActivity;

    invoke-static {p1}, Lcom/miui/networkassistant/ui/NetworkAssistantActivity;->access$000(Lcom/miui/networkassistant/ui/NetworkAssistantActivity;)Z

    move-result p1

    if-eqz p1, :cond_1

    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    const-string v1, "page_index_home"

    invoke-interface {p1, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/miui/networkassistant/ui/NetworkAssistantActivity$2;->val$product:Lcom/miui/networkassistant/ui/bean/Tool;

    invoke-virtual {v0}, Lcom/miui/networkassistant/ui/bean/Tool;->getTitle()Ljava/lang/String;

    move-result-object v0

    const-wide/16 v1, 0x1

    invoke-static {v0, v1, v2, p1}, Lcom/miui/networkassistant/utils/AnalyticsHelper;->recordCalculateEvent(Ljava/lang/String;JLjava/util/Map;)V

    :cond_1
    return-void
.end method
