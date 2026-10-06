.class Lcom/miui/push/XiaomiPushReceiver$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/push/XiaomiPushReceiver;->parsePassThrough(Landroid/content/Context;Lcom/xiaomi/mipush/sdk/MiPushMessage;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/xiaomi/mipush/sdk/MiPushMessage;

.field final synthetic b:Landroid/content/Context;


# direct methods
.method constructor <init>(Lcom/xiaomi/mipush/sdk/MiPushMessage;Landroid/content/Context;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/push/XiaomiPushReceiver$a;->a:Lcom/xiaomi/mipush/sdk/MiPushMessage;

    iput-object p2, p0, Lcom/miui/push/XiaomiPushReceiver$a;->b:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 8

    const-string v0, "forceUpdate"

    const-string v1, "quake"

    const-string v2, "content"

    :try_start_0
    iget-object v3, p0, Lcom/miui/push/XiaomiPushReceiver$a;->a:Lcom/xiaomi/mipush/sdk/MiPushMessage;

    invoke-virtual {v3}, Lcom/xiaomi/mipush/sdk/MiPushMessage;->getContent()Ljava/lang/String;

    move-result-object v3

    new-instance v4, Lorg/json/JSONObject;

    invoke-direct {v4, v3}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v3
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const-string v5, "SecurityCenterPassThroughMessage"

    if-eqz v3, :cond_2

    :try_start_1
    invoke-virtual {v4, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_1

    invoke-virtual {v2, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    goto :goto_0

    :cond_0
    new-instance v4, Lorg/json/JSONObject;

    invoke-direct {v4, v2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    goto :goto_1

    :cond_1
    :goto_0
    return-void

    :cond_2
    :goto_1
    invoke-virtual {v4, v5}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_14

    invoke-virtual {v4, v5}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v2

    const-string v3, "moduleName"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "wakePath"

    invoke-static {v3, v4}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v4
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    const/4 v5, 0x0

    const-string v6, "version"

    const/4 v7, 0x1

    if-eqz v4, :cond_6

    :try_start_2
    invoke-virtual {v2, v6}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v1

    if-ne v1, v7, :cond_15

    const-string v1, "commands"

    invoke-virtual {v2, v1}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v1

    if-eqz v1, :cond_15

    :goto_2
    invoke-virtual {v1}, Lorg/json/JSONArray;->length()I

    move-result v2

    if-ge v5, v2, :cond_15

    new-instance v2, Lorg/json/JSONObject;

    invoke-virtual {v1, v5}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string v3, "command"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_3

    goto :goto_3

    :cond_3
    const-string v4, "UpdateWakePathData"

    invoke-static {v3, v4}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_5

    new-instance v3, Landroid/content/Intent;

    const-string v4, "miui.intent.action.DELAY_UPDATE_WAKEPATH"

    invoke-direct {v3, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v4, "channel"

    const-string v6, "push"

    invoke-virtual {v3, v4, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {v2, v0}, Lorg/json/JSONObject;->getBoolean(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-virtual {v3, v0, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    :cond_4
    const-string v2, "com.lbe.security.miui"

    invoke-virtual {v3, v2}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    iget-object v2, p0, Lcom/miui/push/XiaomiPushReceiver$a;->b:Landroid/content/Context;

    invoke-static {}, Lx4/z1;->A()Landroid/os/UserHandle;

    move-result-object v4

    invoke-static {v2, v3, v4}, Lx4/v;->q(Landroid/content/Context;Landroid/content/Intent;Landroid/os/UserHandle;)V

    :cond_5
    :goto_3
    add-int/lit8 v5, v5, 0x1

    goto :goto_2

    :cond_6
    const-string v0, "monthReport"

    invoke-static {v3, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    const-string v4, "data"

    if-eqz v0, :cond_7

    :try_start_3
    invoke-virtual {v2, v6}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v0

    if-ne v0, v7, :cond_15

    invoke-static {}, Lma/c;->a()Z

    move-result v0

    if-eqz v0, :cond_15

    sget-boolean v0, Lmiui/os/Build;->IS_INTERNATIONAL_BUILD:Z

    if-nez v0, :cond_15

    iget-object v0, p0, Lcom/miui/push/XiaomiPushReceiver$a;->a:Lcom/xiaomi/mipush/sdk/MiPushMessage;

    invoke-virtual {v0}, Lcom/xiaomi/mipush/sdk/MiPushMessage;->getTitle()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/push/XiaomiPushReceiver$a;->a:Lcom/xiaomi/mipush/sdk/MiPushMessage;

    invoke-virtual {v1}, Lcom/xiaomi/mipush/sdk/MiPushMessage;->getDescription()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Landroid/content/Intent;

    invoke-direct {v3}, Landroid/content/Intent;-><init>()V

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "securitycenter://monthreport?content="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v3, v2}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    move-result-object v2

    iget-object v3, p0, Lcom/miui/push/XiaomiPushReceiver$a;->b:Landroid/content/Context;

    const/16 v4, 0x2716

    const/high16 v5, 0x44000000    # 512.0f

    invoke-static {v3, v4, v2, v5}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v2

    iget-object v3, p0, Lcom/miui/push/XiaomiPushReceiver$a;->b:Landroid/content/Context;

    invoke-static {v3, v2, v0, v1}, Lcom/miui/push/XiaomiPushReceiver;->access$000(Landroid/content/Context;Landroid/app/PendingIntent;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_6

    :cond_7
    const-string v0, "illegalSales"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    iget-object v0, p0, Lcom/miui/push/XiaomiPushReceiver$a;->b:Landroid/content/Context;

    invoke-static {v0}, Lef/b0;->a(Landroid/content/Context;)Lef/b0;

    move-result-object v0

    invoke-virtual {v2, v4}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    invoke-virtual {v0, v1}, Lef/b0;->c(Ljava/lang/Object;)V

    goto/16 :goto_6

    :cond_8
    const-string v0, "antivirus"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    const-string v0, "info"

    invoke-virtual {v2, v0}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/push/XiaomiPushReceiver$a;->b:Landroid/content/Context;

    invoke-static {v1}, Lo2/e;->e(Landroid/content/Context;)Lo2/e;

    move-result-object v1

    invoke-virtual {v1, v0}, Lo2/e;->h(Lorg/json/JSONObject;)V

    goto/16 :goto_6

    :cond_9
    const-string v0, "luckymoney"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_a

    iget-object v0, p0, Lcom/miui/push/XiaomiPushReceiver$a;->b:Landroid/content/Context;

    invoke-static {v0, v2}, Lcom/miui/luckymoney/utils/LuckyPushUtil;->processCMD(Landroid/content/Context;Lorg/json/JSONObject;)V

    goto/16 :goto_6

    :cond_a
    const-string v0, "cloudControl"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_b

    invoke-virtual {v2, v6}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v0

    if-ne v0, v7, :cond_15

    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.android.settings.action.PULL_CLOUD_DATA"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/high16 v1, 0x1000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    iget-object v1, p0, Lcom/miui/push/XiaomiPushReceiver$a;->b:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    goto/16 :goto_6

    :cond_b
    const-string v0, "earthquakeWarning"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_d

    invoke-virtual {v2, v1}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    if-eqz v0, :cond_c

    invoke-static {}, Lcom/miui/push/XiaomiPushReceiver;->access$100()Ljava/lang/String;

    move-result-object v0

    const-string v3, "receive quake message"

    invoke-static {v0, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v2, v1}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    const-string v1, "countries"

    invoke-virtual {v2, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v3, "quakeSign"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "MIIBIjANBgkqhkiG9w0BAQEFAAOCAQ8AMIIBCgKCAQEAlUpEjMQOi0gXDO769bGW/Dnr1CcXTY3Hg9C8DmPJKuUC4JBxoAFCAkmdJc6oGFqHQFNw3Pl6vqpAa6D6NYCkqwUhgrnx1x37SsneTZo0+FezL7FlCrHFkG+eN0uHRYbUt7cwHq4fyyF4CvitXkMlXAjsgPFryjRSbED0s4IdBpZD6fmsbQcNb0Y+aViRB9vp0xm2Qit0NRFjgHEav/R5ksxD1iEHF0Gmrhoy+Ts1pVSQQhIbJz73AcgSn2NFQ0YcMs3zm4EEUl0TGOLwGeVmLFr9zl4BR6wcX9Ik4BEM/jees47vopM4vTcaUPN/KsXtj1GDsF6fwyyW9IX8Uo14JQIDAQAB"

    invoke-static {v3, v2, v4}, Lcom/miui/earthquakewarning/utils/SHA1WithRSAUtil;->virefy(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_c

    invoke-static {}, Lcom/miui/earthquakewarning/EarthquakeWarningManager;->getInstance()Lcom/miui/earthquakewarning/EarthquakeWarningManager;

    move-result-object v2

    iget-object v3, p0, Lcom/miui/push/XiaomiPushReceiver$a;->b:Landroid/content/Context;

    invoke-virtual {v2, v3, v0, v1}, Lcom/miui/earthquakewarning/EarthquakeWarningManager;->showWarningInfo(Landroid/content/Context;Lorg/json/JSONObject;Ljava/lang/String;)V

    const-string v0, "push_receive"

    invoke-static {v0}, Lcom/miui/earthquakewarning/analytics/AnalyticHelper;->trackPushActionModuleClick(Ljava/lang/String;)V

    return-void

    :cond_c
    const-string v0, "receive"

    new-array v1, v7, [Loj/l;

    new-instance v2, Loj/l;

    const-string v3, "NO_POPUP_REASON"

    const-string v4, "PUSH_MESSAGE_BROKEN"

    invoke-direct {v2, v3, v4}, Loj/l;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    aput-object v2, v1, v5

    invoke-static {v0, v1}, Lcom/miui/earthquakewarning/analytics/NewTracker;->track(Ljava/lang/String;[Loj/l;)V

    goto/16 :goto_6

    :cond_d
    const-string v0, "MijiaWarning"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_e

    invoke-static {}, Lcom/miui/warningcenter/mijia/WarningCenterManager;->getInstance()Lcom/miui/warningcenter/mijia/WarningCenterManager;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/push/XiaomiPushReceiver$a;->b:Landroid/content/Context;

    invoke-virtual {v0, v1, v2}, Lcom/miui/warningcenter/mijia/WarningCenterManager;->handlePush(Landroid/content/Context;Lorg/json/JSONObject;)V

    goto/16 :goto_6

    :cond_e
    const-string v0, "12379Warning"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    const-string v1, "MIIBIjANBgkqhkiG9w0BAQEFAAOCAQ8AMIIBCgKCAQEApRu6Zd52/9k2NSgeGUIeSg8rIUtj64REDEBW+wNEnhYiebc9BSUcViBe3rYJvKH9hAXyiVKSVq9V2p/wweXX6QcJgu7P9I2ajyqZ23ChpLG1I3vBl4yBjv1r9+uCz819jZGxzhD4jLwKKLeAbd+cM3mdLwhCwI/5b56VFWrkKpcQQhtrxB8FU4n/wzqSgo38NyerBa7KhcUsCrJxt4Y7sIQ9u+fJAFvN7jpKn+9ey6C9hibBJunnAQj/rCcyC+fcUlOGj2EEoSp+S0s+Rd7gIWYdxl7uAX9P0SIc+ZUGslVjEEvOjpxNcUq/x6aXt6YJt+bZGVXs4FuS/YqGDIOiywIDAQAB"

    const-string v4, "WaringSign"

    const-string v5, ""

    const-string v6, "\\"

    const-string v7, "warning"

    if-eqz v0, :cond_11

    :try_start_4
    invoke-virtual {v2, v7}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    if-eqz v0, :cond_10

    invoke-static {}, Lcom/miui/push/XiaomiPushReceiver;->access$100()Ljava/lang/String;

    move-result-object v0

    const-string v3, "receive warning message"

    invoke-static {v0, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v2, v7}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    invoke-virtual {v2, v7}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, v6, v5}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2, v1}, Lcom/miui/earthquakewarning/utils/SHA1WithRSAUtil;->virefy(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_f

    invoke-static {}, Lcom/miui/warningcenter/disasterwarning/WarningCenterDisasterManager;->getInstance()Lcom/miui/warningcenter/disasterwarning/WarningCenterDisasterManager;

    move-result-object v1

    iget-object v2, p0, Lcom/miui/push/XiaomiPushReceiver$a;->b:Landroid/content/Context;

    invoke-virtual {v1, v2, v0}, Lcom/miui/warningcenter/disasterwarning/WarningCenterDisasterManager;->parseQuake(Landroid/content/Context;Lorg/json/JSONObject;)V

    const-string v0, "disaster"

    :goto_4
    invoke-static {v0}, Lcom/miui/warningcenter/analytics/AnalyticHelper;->trackPushActionReceive(Ljava/lang/String;)V

    goto :goto_6

    :cond_f
    invoke-static {}, Lcom/miui/push/XiaomiPushReceiver;->access$100()Ljava/lang/String;

    move-result-object v0

    const-string v1, "quakeSign failed!"

    :goto_5
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_6

    :cond_10
    invoke-static {}, Lcom/miui/push/XiaomiPushReceiver;->access$100()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Data error: can not find warning!"

    goto :goto_5

    :cond_11
    const-string v0, "accurate-warning"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_15

    invoke-virtual {v2, v7}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    if-eqz v0, :cond_13

    invoke-static {}, Lcom/miui/push/XiaomiPushReceiver;->access$100()Ljava/lang/String;

    move-result-object v0

    const-string v3, "receive Accurate warning message "

    invoke-static {v0, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v2, v7}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    invoke-virtual {v2, v7}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, v6, v5}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2, v1}, Lcom/miui/earthquakewarning/utils/SHA1WithRSAUtil;->virefy(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_12

    invoke-static {}, Lcom/miui/warningcenter/disasterwarning/WarningCenterDisasterManager;->getInstance()Lcom/miui/warningcenter/disasterwarning/WarningCenterDisasterManager;

    move-result-object v1

    iget-object v2, p0, Lcom/miui/push/XiaomiPushReceiver$a;->b:Landroid/content/Context;

    invoke-virtual {v1, v2, v0}, Lcom/miui/warningcenter/disasterwarning/WarningCenterDisasterManager;->parseAccurateWarningData(Landroid/content/Context;Lorg/json/JSONObject;)V

    const-string v0, "accurate"

    goto :goto_4

    :cond_12
    invoke-static {}, Lcom/miui/push/XiaomiPushReceiver;->access$100()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Accurate quakeSign failed!"

    goto :goto_5

    :cond_13
    invoke-static {}, Lcom/miui/push/XiaomiPushReceiver;->access$100()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Accurate Data error: can not find warning!"
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    goto :goto_5

    :cond_14
    return-void

    :catch_0
    move-exception v0

    invoke-static {}, Lcom/miui/push/XiaomiPushReceiver;->access$100()Ljava/lang/String;

    move-result-object v1

    const-string v2, "passThroughPaser"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_15
    :goto_6
    return-void
.end method
