.class Lcom/miui/networkassistant/service/tm/TrafficManageService$24;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/networkassistant/service/tm/TrafficManageService;->initNetworkBackgroundRestrict()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/networkassistant/service/tm/TrafficManageService;


# direct methods
.method constructor <init>(Lcom/miui/networkassistant/service/tm/TrafficManageService;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/networkassistant/service/tm/TrafficManageService$24;->this$0:Lcom/miui/networkassistant/service/tm/TrafficManageService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    :try_start_0
    iget-object v0, p0, Lcom/miui/networkassistant/service/tm/TrafficManageService$24;->this$0:Lcom/miui/networkassistant/service/tm/TrafficManageService;

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/miui/networkassistant/firewall/BackgroundPolicyService;->getInstance(Landroid/content/Context;)Lcom/miui/networkassistant/firewall/BackgroundPolicyService;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/miui/networkassistant/firewall/BackgroundPolicyService;->setRestrictBackground(Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void
.end method
