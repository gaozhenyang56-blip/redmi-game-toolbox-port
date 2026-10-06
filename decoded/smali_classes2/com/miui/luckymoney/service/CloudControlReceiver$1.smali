.class Lcom/miui/luckymoney/service/CloudControlReceiver$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/luckymoney/service/CloudControlReceiver;->onReceive(Landroid/content/Context;Landroid/content/Intent;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/luckymoney/service/CloudControlReceiver;

.field final synthetic val$context:Landroid/content/Context;


# direct methods
.method constructor <init>(Lcom/miui/luckymoney/service/CloudControlReceiver;Landroid/content/Context;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/luckymoney/service/CloudControlReceiver$1;->this$0:Lcom/miui/luckymoney/service/CloudControlReceiver;

    iput-object p2, p0, Lcom/miui/luckymoney/service/CloudControlReceiver$1;->val$context:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    iget-object v0, p0, Lcom/miui/luckymoney/service/CloudControlReceiver$1;->val$context:Landroid/content/Context;

    invoke-static {v0}, Lp4/d;->f(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/miui/luckymoney/service/CloudControlReceiver$1;->this$0:Lcom/miui/luckymoney/service/CloudControlReceiver;

    invoke-static {v0}, Lcom/miui/luckymoney/service/CloudControlReceiver;->access$000(Lcom/miui/luckymoney/service/CloudControlReceiver;)Z

    move-result v0

    const-string v1, "CloudControlReceiver"

    if-eqz v0, :cond_0

    const-string v0, "check CloudControl config"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/miui/luckymoney/service/CloudControlReceiver$1;->this$0:Lcom/miui/luckymoney/service/CloudControlReceiver;

    invoke-static {v0}, Lcom/miui/luckymoney/service/CloudControlReceiver;->access$100(Lcom/miui/luckymoney/service/CloudControlReceiver;)Lcom/miui/luckymoney/config/CommonConfig;

    move-result-object v0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Lcom/miui/luckymoney/config/CommonConfig;->setLastTimeCheckUpdateConfig(J)V

    iget-object v0, p0, Lcom/miui/luckymoney/service/CloudControlReceiver$1;->this$0:Lcom/miui/luckymoney/service/CloudControlReceiver;

    invoke-static {v0}, Lcom/miui/luckymoney/service/CloudControlReceiver;->access$200(Lcom/miui/luckymoney/service/CloudControlReceiver;)V

    iget-object v0, p0, Lcom/miui/luckymoney/service/CloudControlReceiver$1;->val$context:Landroid/content/Context;

    invoke-static {v0}, Lcom/miui/luckymoney/utils/ResFileUtils;->cleanPNGRes(Landroid/content/Context;)V

    :cond_0
    iget-object v0, p0, Lcom/miui/luckymoney/service/CloudControlReceiver$1;->this$0:Lcom/miui/luckymoney/service/CloudControlReceiver;

    invoke-static {v0}, Lcom/miui/luckymoney/service/CloudControlReceiver;->access$100(Lcom/miui/luckymoney/service/CloudControlReceiver;)Lcom/miui/luckymoney/config/CommonConfig;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/luckymoney/config/CommonConfig;->isConfigChanged()Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "upload settings"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Lcom/miui/luckymoney/webapi/UploadConfigAsyncTask;

    invoke-direct {v0}, Lcom/miui/luckymoney/webapi/UploadConfigAsyncTask;-><init>()V

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Boolean;

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/miui/luckymoney/service/CloudControlReceiver$1;->this$0:Lcom/miui/luckymoney/service/CloudControlReceiver;

    invoke-static {v3}, Lcom/miui/luckymoney/service/CloudControlReceiver;->access$100(Lcom/miui/luckymoney/service/CloudControlReceiver;)Lcom/miui/luckymoney/config/CommonConfig;

    move-result-object v3

    invoke-virtual {v3}, Lcom/miui/luckymoney/config/CommonConfig;->getXiaomiLuckyMoneyEnable()Z

    move-result v3

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-virtual {v0, v1}, Landroid/os/AsyncTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    :cond_1
    new-instance v0, Lcom/miui/luckymoney/webapi/MasterSwitchResult;

    iget-object v1, p0, Lcom/miui/luckymoney/service/CloudControlReceiver$1;->this$0:Lcom/miui/luckymoney/service/CloudControlReceiver;

    invoke-static {v1}, Lcom/miui/luckymoney/service/CloudControlReceiver;->access$100(Lcom/miui/luckymoney/service/CloudControlReceiver;)Lcom/miui/luckymoney/config/CommonConfig;

    move-result-object v1

    invoke-virtual {v1}, Lcom/miui/luckymoney/config/CommonConfig;->getMasterSwitchConfig()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/miui/luckymoney/webapi/MasterSwitchResult;-><init>(Ljava/lang/String;)V

    return-void
.end method
