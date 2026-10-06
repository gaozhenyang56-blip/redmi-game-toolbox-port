.class public Lcom/miui/guardprovider/WifiCheckObserver;
.super Lcom/miui/guardprovider/aidl/IWifiDetectObserver$Stub;
.source "SourceFile"


# instance fields
.field private a:Lw2/w;

.field private k:Lorg/json/JSONObject;

.field private l:Landroid/content/Context;

.field private m:Ljava/util/concurrent/atomic/AtomicBoolean;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    invoke-direct {p0}, Lcom/miui/guardprovider/aidl/IWifiDetectObserver$Stub;-><init>()V

    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lcom/miui/guardprovider/WifiCheckObserver;->m:Ljava/util/concurrent/atomic/AtomicBoolean;

    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    iput-object v0, p0, Lcom/miui/guardprovider/WifiCheckObserver;->k:Lorg/json/JSONObject;

    iput-object p1, p0, Lcom/miui/guardprovider/WifiCheckObserver;->l:Landroid/content/Context;

    return-void
.end method

.method private o8()Z
    .locals 2

    iget-object v0, p0, Lcom/miui/guardprovider/WifiCheckObserver;->k:Lorg/json/JSONObject;

    const-string v1, "wifi_item_connection"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/guardprovider/WifiCheckObserver;->k:Lorg/json/JSONObject;

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private v1()Z
    .locals 2

    iget-object v0, p0, Lcom/miui/guardprovider/WifiCheckObserver;->k:Lorg/json/JSONObject;

    const-string v1, "wifi_item_encryption"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/guardprovider/WifiCheckObserver;->k:Lorg/json/JSONObject;

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2

    :cond_0
    iget-object v0, p0, Lcom/miui/guardprovider/WifiCheckObserver;->k:Lorg/json/JSONObject;

    const-string v1, "wifi_item_fake"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/miui/guardprovider/WifiCheckObserver;->k:Lorg/json/JSONObject;

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2

    :cond_1
    iget-object v0, p0, Lcom/miui/guardprovider/WifiCheckObserver;->k:Lorg/json/JSONObject;

    const-string v1, "wifi_item_dns"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/miui/guardprovider/WifiCheckObserver;->k:Lorg/json/JSONObject;

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    :cond_2
    const/4 v0, 0x1

    goto :goto_0

    :cond_3
    const/4 v0, 0x0

    :goto_0
    return v0
.end method


# virtual methods
.method public N7(I)V
    .locals 8

    const/4 v0, -0x3

    const-string v1, "wifi_item_dns"

    const-string v2, "wifi_item_fake"

    const-string v3, "WifiCheckObserver"

    const/4 v4, 0x1

    const/4 v5, 0x0

    if-eq p1, v0, :cond_3

    const/4 v0, -0x2

    const-string v6, "wifi_item_encryption"

    if-eq p1, v0, :cond_2

    if-eqz p1, :cond_2

    const-string v0, "wifi_item_connection"

    if-eq p1, v4, :cond_1

    const/4 v7, 0x2

    if-eq p1, v7, :cond_0

    const/4 v7, 0x3

    if-eq p1, v7, :cond_0

    packed-switch p1, :pswitch_data_0

    packed-switch p1, :pswitch_data_1

    :try_start_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "wifi result = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v3, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :pswitch_0
    iget-object p1, p0, Lcom/miui/guardprovider/WifiCheckObserver;->k:Lorg/json/JSONObject;

    invoke-virtual {p1, v6, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    goto :goto_0

    :pswitch_1
    iget-object p1, p0, Lcom/miui/guardprovider/WifiCheckObserver;->k:Lorg/json/JSONObject;

    invoke-virtual {p1, v1, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    iget-object p1, p0, Lcom/miui/guardprovider/WifiCheckObserver;->k:Lorg/json/JSONObject;

    invoke-virtual {p1, v2, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    goto :goto_0

    :pswitch_2
    iget-object p1, p0, Lcom/miui/guardprovider/WifiCheckObserver;->k:Lorg/json/JSONObject;

    invoke-virtual {p1, v1, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    iget-object p1, p0, Lcom/miui/guardprovider/WifiCheckObserver;->k:Lorg/json/JSONObject;

    invoke-virtual {p1, v2, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lcom/miui/guardprovider/WifiCheckObserver;->k:Lorg/json/JSONObject;

    invoke-virtual {p1, v0, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    goto :goto_0

    :cond_1
    iget-object p1, p0, Lcom/miui/guardprovider/WifiCheckObserver;->k:Lorg/json/JSONObject;

    invoke-virtual {p1, v0, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    goto :goto_0

    :cond_2
    :pswitch_3
    iget-object p1, p0, Lcom/miui/guardprovider/WifiCheckObserver;->k:Lorg/json/JSONObject;

    invoke-virtual {p1, v6, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    goto :goto_0

    :cond_3
    :pswitch_4
    iget-object p1, p0, Lcom/miui/guardprovider/WifiCheckObserver;->k:Lorg/json/JSONObject;

    invoke-virtual {p1, v2, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    iget-object p1, p0, Lcom/miui/guardprovider/WifiCheckObserver;->k:Lorg/json/JSONObject;

    invoke-virtual {p1, v1, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    :goto_0
    iget-object p1, p0, Lcom/miui/guardprovider/WifiCheckObserver;->a:Lw2/w;

    invoke-virtual {p1}, Lw2/w;->b()Z

    move-result p1

    if-eqz p1, :cond_4

    iget-object p1, p0, Lcom/miui/guardprovider/WifiCheckObserver;->a:Lw2/w;

    invoke-virtual {p1}, Lw2/w;->a()Landroid/net/wifi/WifiInfo;

    move-result-object p1

    if-eqz p1, :cond_4

    iget-object p1, p0, Lcom/miui/guardprovider/WifiCheckObserver;->m:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {p1}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result p1

    if-nez p1, :cond_4

    invoke-direct {p0}, Lcom/miui/guardprovider/WifiCheckObserver;->o8()Z

    move-result p1

    if-eqz p1, :cond_4

    invoke-direct {p0}, Lcom/miui/guardprovider/WifiCheckObserver;->v1()Z

    move-result p1

    if-eqz p1, :cond_4

    iget-object p1, p0, Lcom/miui/guardprovider/WifiCheckObserver;->m:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {p1, v5, v4}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result p1

    if-eqz p1, :cond_4

    const-string p1, "wifi is dangerous."

    invoke-static {v3, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    new-instance p1, Landroid/content/Intent;

    iget-object v0, p0, Lcom/miui/guardprovider/WifiCheckObserver;->l:Landroid/content/Context;

    const-class v1, Lcom/miui/antivirus/service/DialogService;

    invoke-direct {p1, v0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v0, "com.miui.safepay.SHOW_WIFI_WARNING_DIALOG"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    const-string v0, "extra_wifi_info"

    iget-object v1, p0, Lcom/miui/guardprovider/WifiCheckObserver;->a:Lw2/w;

    invoke-virtual {v1}, Lw2/w;->a()Landroid/net/wifi/WifiInfo;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    iget-object v0, p0, Lcom/miui/guardprovider/WifiCheckObserver;->l:Landroid/content/Context;

    invoke-virtual {v0, p1}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    :cond_4
    iget-object p1, p0, Lcom/miui/guardprovider/WifiCheckObserver;->k:Lorg/json/JSONObject;

    invoke-virtual {p1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lo2/h;->Y(Ljava/lang/String;)V

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "update wifi result = "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/miui/guardprovider/WifiCheckObserver;->k:Lorg/json/JSONObject;

    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v3, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p1, p0, Lcom/miui/guardprovider/WifiCheckObserver;->k:Lorg/json/JSONObject;

    invoke-virtual {p1}, Lorg/json/JSONObject;->length()I

    move-result p1

    const/4 v0, 0x4

    if-lt p1, v0, :cond_5

    iget-object p1, p0, Lcom/miui/guardprovider/WifiCheckObserver;->l:Landroid/content/Context;

    invoke-static {p1}, Lp9/a;->j(Landroid/content/Context;)Lp9/a;

    move-result-object p1

    invoke-virtual {p1}, Lp9/a;->m()V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_5
    :goto_1
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x10
        :pswitch_4
        :pswitch_4
        :pswitch_2
        :pswitch_1
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x100
        :pswitch_0
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
    .end packed-switch
.end method

.method public p8(Lw2/w;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/guardprovider/WifiCheckObserver;->a:Lw2/w;

    return-void
.end method
