.class Lcom/miui/networkassistant/service/tm/TrafficSimManager$5;
.super Landroid/os/AsyncTask;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/networkassistant/service/tm/TrafficSimManager;->checkMiSim(Lcom/miui/networkassistant/service/tm/TrafficSimManager$MiSimCallBack;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/networkassistant/service/tm/TrafficSimManager;

.field final synthetic val$callBack:Lcom/miui/networkassistant/service/tm/TrafficSimManager$MiSimCallBack;


# direct methods
.method constructor <init>(Lcom/miui/networkassistant/service/tm/TrafficSimManager;Lcom/miui/networkassistant/service/tm/TrafficSimManager$MiSimCallBack;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/networkassistant/service/tm/TrafficSimManager$5;->this$0:Lcom/miui/networkassistant/service/tm/TrafficSimManager;

    iput-object p2, p0, Lcom/miui/networkassistant/service/tm/TrafficSimManager$5;->val$callBack:Lcom/miui/networkassistant/service/tm/TrafficSimManager$MiSimCallBack;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/miui/networkassistant/service/tm/TrafficSimManager$5;->doInBackground([Ljava/lang/Void;)Ljava/lang/Void;

    move-result-object p1

    return-object p1
.end method

.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/Void;
    .locals 4

    const-string p1, "errCode"

    const-string v0, "result"

    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    sget-object v2, Landroid/os/Build;->MANUFACTURER:Ljava/lang/String;

    const-string v3, "manufacturer"

    invoke-virtual {v1, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "channelName"

    const-string v3, "network_assistant_channel"

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v2, p0, Lcom/miui/networkassistant/service/tm/TrafficSimManager$5;->this$0:Lcom/miui/networkassistant/service/tm/TrafficSimManager;

    invoke-static {v2}, Lcom/miui/networkassistant/service/tm/TrafficSimManager;->access$400(Lcom/miui/networkassistant/service/tm/TrafficSimManager;)Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lef/w;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "oaId"

    invoke-virtual {v1, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {}, Leg/c;->i()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/miui/earthquakewarning/utils/MD5Util;->getMD5String(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "imei"

    invoke-virtual {v1, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v2, Lp4/i;

    const-string v3, "query_micard_info"

    invoke-direct {v2, v3}, Lp4/i;-><init>(Ljava/lang/String;)V

    const-string v3, "https://api-new-misim.10046.xiaomimobile.com/external/isSatisfyYYLLUser"

    invoke-static {v3, v1, v2}, Leg/j;->f(Ljava/lang/String;Ljava/util/Map;Lp4/i;)Ljava/lang/String;

    move-result-object v1

    :try_start_0
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1

    new-instance v2, Lcom/google/gson/JsonParser;

    invoke-direct {v2}, Lcom/google/gson/JsonParser;-><init>()V

    invoke-virtual {v2, v1}, Lcom/google/gson/JsonParser;->parse(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/gson/JsonElement;->getAsJsonObject()Lcom/google/gson/JsonObject;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-virtual {v1, p1}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/gson/JsonElement;->getAsInt()I

    move-result p1

    if-nez p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    iget-object v2, p0, Lcom/miui/networkassistant/service/tm/TrafficSimManager$5;->this$0:Lcom/miui/networkassistant/service/tm/TrafficSimManager;

    invoke-static {v2}, Lcom/miui/networkassistant/service/tm/TrafficSimManager;->access$400(Lcom/miui/networkassistant/service/tm/TrafficSimManager;)Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/miui/networkassistant/config/CommonConfig;->getInstance(Landroid/content/Context;)Lcom/miui/networkassistant/config/CommonConfig;

    move-result-object v2

    invoke-virtual {v2, p1}, Lcom/miui/networkassistant/config/CommonConfig;->setMiSimEnabled(Z)V

    if-eqz p1, :cond_1

    invoke-virtual {v1, v0}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object p1

    if-eqz p1, :cond_1

    invoke-virtual {v1, v0}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/gson/JsonElement;->getAsJsonObject()Lcom/google/gson/JsonObject;

    move-result-object p1

    const-string v2, "msg"

    invoke-virtual {p1, v2}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/gson/JsonElement;->getAsString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, v0}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/gson/JsonElement;->getAsJsonObject()Lcom/google/gson/JsonObject;

    move-result-object v0

    const-string v1, "action"

    invoke-virtual {v0, v1}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/gson/JsonElement;->getAsString()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/networkassistant/service/tm/TrafficSimManager$5;->this$0:Lcom/miui/networkassistant/service/tm/TrafficSimManager;

    invoke-static {v1}, Lcom/miui/networkassistant/service/tm/TrafficSimManager;->access$400(Lcom/miui/networkassistant/service/tm/TrafficSimManager;)Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/miui/networkassistant/config/CommonConfig;->getInstance(Landroid/content/Context;)Lcom/miui/networkassistant/config/CommonConfig;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/miui/networkassistant/config/CommonConfig;->setMiSimTips(Ljava/lang/String;)V

    iget-object p1, p0, Lcom/miui/networkassistant/service/tm/TrafficSimManager$5;->this$0:Lcom/miui/networkassistant/service/tm/TrafficSimManager;

    invoke-static {p1}, Lcom/miui/networkassistant/service/tm/TrafficSimManager;->access$400(Lcom/miui/networkassistant/service/tm/TrafficSimManager;)Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/miui/networkassistant/config/CommonConfig;->getInstance(Landroid/content/Context;)Lcom/miui/networkassistant/config/CommonConfig;

    move-result-object p1

    invoke-virtual {p1, v0}, Lcom/miui/networkassistant/config/CommonConfig;->setMiSimAction(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_1
    :goto_1
    const/4 p1, 0x0

    return-object p1
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/miui/networkassistant/service/tm/TrafficSimManager$5;->onPostExecute(Ljava/lang/Void;)V

    return-void
.end method

.method protected onPostExecute(Ljava/lang/Void;)V
    .locals 0

    invoke-super {p0, p1}, Landroid/os/AsyncTask;->onPostExecute(Ljava/lang/Object;)V

    iget-object p1, p0, Lcom/miui/networkassistant/service/tm/TrafficSimManager$5;->val$callBack:Lcom/miui/networkassistant/service/tm/TrafficSimManager$MiSimCallBack;

    invoke-interface {p1}, Lcom/miui/networkassistant/service/tm/TrafficSimManager$MiSimCallBack;->miSimEnable()V

    return-void
.end method

.method protected onPreExecute()V
    .locals 0

    invoke-super {p0}, Landroid/os/AsyncTask;->onPreExecute()V

    return-void
.end method
