.class Lcom/miui/networkassistant/service/tm/PurchaseSmsManager$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/networkassistant/service/tm/PurchaseSmsManager;->checkPurchaseSmsNumberWhiteList()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/networkassistant/service/tm/PurchaseSmsManager;


# direct methods
.method constructor <init>(Lcom/miui/networkassistant/service/tm/PurchaseSmsManager;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/networkassistant/service/tm/PurchaseSmsManager$1;->this$0:Lcom/miui/networkassistant/service/tm/PurchaseSmsManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    iget-object v0, p0, Lcom/miui/networkassistant/service/tm/PurchaseSmsManager$1;->this$0:Lcom/miui/networkassistant/service/tm/PurchaseSmsManager;

    invoke-static {}, Lcom/miui/networkassistant/webapi/WebApiAccessHelper;->updatePurchaseSmsNumberWhiteList()Lcom/miui/networkassistant/webapi/PurchaseSmsNumberResult;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/miui/networkassistant/service/tm/PurchaseSmsManager;->access$002(Lcom/miui/networkassistant/service/tm/PurchaseSmsManager;Lcom/miui/networkassistant/webapi/PurchaseSmsNumberResult;)Lcom/miui/networkassistant/webapi/PurchaseSmsNumberResult;

    iget-object v0, p0, Lcom/miui/networkassistant/service/tm/PurchaseSmsManager$1;->this$0:Lcom/miui/networkassistant/service/tm/PurchaseSmsManager;

    invoke-static {v0}, Lcom/miui/networkassistant/service/tm/PurchaseSmsManager;->access$000(Lcom/miui/networkassistant/service/tm/PurchaseSmsManager;)Lcom/miui/networkassistant/webapi/PurchaseSmsNumberResult;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/common/net/c;->isSuccess()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/networkassistant/service/tm/PurchaseSmsManager$1;->this$0:Lcom/miui/networkassistant/service/tm/PurchaseSmsManager;

    invoke-static {v0}, Lcom/miui/networkassistant/service/tm/PurchaseSmsManager;->access$000(Lcom/miui/networkassistant/service/tm/PurchaseSmsManager;)Lcom/miui/networkassistant/webapi/PurchaseSmsNumberResult;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/networkassistant/webapi/PurchaseSmsNumberResult;->getSmsNumberJson()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/networkassistant/service/tm/PurchaseSmsManager$1;->this$0:Lcom/miui/networkassistant/service/tm/PurchaseSmsManager;

    invoke-static {v1}, Lcom/miui/networkassistant/service/tm/PurchaseSmsManager;->access$100(Lcom/miui/networkassistant/service/tm/PurchaseSmsManager;)Lcom/miui/networkassistant/config/CommonConfig;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/miui/networkassistant/config/CommonConfig;->setPurchaseSmsNumber(Ljava/lang/String;)Z

    iget-object v0, p0, Lcom/miui/networkassistant/service/tm/PurchaseSmsManager$1;->this$0:Lcom/miui/networkassistant/service/tm/PurchaseSmsManager;

    invoke-static {v0}, Lcom/miui/networkassistant/service/tm/PurchaseSmsManager;->access$000(Lcom/miui/networkassistant/service/tm/PurchaseSmsManager;)Lcom/miui/networkassistant/webapi/PurchaseSmsNumberResult;

    move-result-object v1

    invoke-virtual {v1}, Lcom/miui/networkassistant/webapi/PurchaseSmsNumberResult;->getSmsNumberList()Ljava/util/ArrayList;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/miui/networkassistant/service/tm/PurchaseSmsManager;->access$202(Lcom/miui/networkassistant/service/tm/PurchaseSmsManager;Ljava/util/ArrayList;)Ljava/util/ArrayList;

    iget-object v0, p0, Lcom/miui/networkassistant/service/tm/PurchaseSmsManager$1;->this$0:Lcom/miui/networkassistant/service/tm/PurchaseSmsManager;

    invoke-static {v0}, Lcom/miui/networkassistant/service/tm/PurchaseSmsManager;->access$100(Lcom/miui/networkassistant/service/tm/PurchaseSmsManager;)Lcom/miui/networkassistant/config/CommonConfig;

    move-result-object v0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    const-wide/32 v3, 0x240c8400

    add-long/2addr v1, v3

    invoke-virtual {v0, v1, v2}, Lcom/miui/networkassistant/config/CommonConfig;->setPurchaseSmsNumberUpdateTime(J)Z

    const-string v0, "PurchaseSmsManager"

    const-string v1, "update purchase sms number white list"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void
.end method
