.class Lcom/miui/networkassistant/traffic/purchase/CooperationManager$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/networkassistant/traffic/purchase/CooperationManager;->updateTrafficPurchaseStatus(Landroid/content/Context;Lcom/miui/networkassistant/config/SimUserInfo;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic val$context:Landroid/content/Context;

.field final synthetic val$forceRefresh:Z

.field final synthetic val$simUserInfo:Lcom/miui/networkassistant/config/SimUserInfo;


# direct methods
.method constructor <init>(Lcom/miui/networkassistant/config/SimUserInfo;ZLandroid/content/Context;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/networkassistant/traffic/purchase/CooperationManager$1;->val$simUserInfo:Lcom/miui/networkassistant/config/SimUserInfo;

    iput-boolean p2, p0, Lcom/miui/networkassistant/traffic/purchase/CooperationManager$1;->val$forceRefresh:Z

    iput-object p3, p0, Lcom/miui/networkassistant/traffic/purchase/CooperationManager$1;->val$context:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    const-string v0, "CooperationManager"

    const-string v1, "mina updateTrafficPurchaseStatus"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-object v2, p0, Lcom/miui/networkassistant/traffic/purchase/CooperationManager$1;->val$simUserInfo:Lcom/miui/networkassistant/config/SimUserInfo;

    invoke-virtual {v2}, Lcom/miui/networkassistant/config/SimUserInfo;->getNATrafficPurchaseAvailableUpdateTime()J

    move-result-wide v2

    cmp-long v0, v0, v2

    if-gtz v0, :cond_0

    iget-boolean v0, p0, Lcom/miui/networkassistant/traffic/purchase/CooperationManager$1;->val$forceRefresh:Z

    if-eqz v0, :cond_1

    :cond_0
    iget-object v0, p0, Lcom/miui/networkassistant/traffic/purchase/CooperationManager$1;->val$context:Landroid/content/Context;

    iget-object v1, p0, Lcom/miui/networkassistant/traffic/purchase/CooperationManager$1;->val$simUserInfo:Lcom/miui/networkassistant/config/SimUserInfo;

    invoke-static {v0, v1}, Lcom/miui/networkassistant/traffic/purchase/CooperationManager;->access$000(Landroid/content/Context;Lcom/miui/networkassistant/config/SimUserInfo;)Z

    :cond_1
    return-void
.end method
