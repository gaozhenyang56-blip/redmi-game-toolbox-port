.class Lcom/miui/powercenter/provider/PowerSaveService$a;
.super Landroid/content/BroadcastReceiver;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/powercenter/provider/PowerSaveService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private a:I

.field private b:Ljava/lang/Boolean;

.field final synthetic c:Lcom/miui/powercenter/provider/PowerSaveService;


# direct methods
.method constructor <init>(Lcom/miui/powercenter/provider/PowerSaveService;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/powercenter/provider/PowerSaveService$a;->c:Lcom/miui/powercenter/provider/PowerSaveService;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    const/4 p1, 0x0

    iput p1, p0, Lcom/miui/powercenter/provider/PowerSaveService$a;->a:I

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 10

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onReceive: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "PowerSaveService"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v2, "android.intent.action.SCREEN_ON"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lde/i;->M()Lde/i;

    move-result-object p1

    invoke-virtual {p1}, Lde/i;->J()Landroid/os/Handler;

    move-result-object p1

    if-eqz p1, :cond_15

    invoke-static {}, Lde/i;->M()Lde/i;

    move-result-object p1

    invoke-virtual {p1}, Lde/i;->J()Landroid/os/Handler;

    move-result-object p1

    iget-object p2, p0, Lcom/miui/powercenter/provider/PowerSaveService$a;->c:Lcom/miui/powercenter/provider/PowerSaveService;

    invoke-static {p2}, Lcom/miui/powercenter/provider/PowerSaveService;->a(Lcom/miui/powercenter/provider/PowerSaveService;)Ljava/lang/Runnable;

    move-result-object p2

    :goto_0
    invoke-virtual {p1, p2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto/16 :goto_5

    :cond_0
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v2, "android.intent.action.SCREEN_OFF"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {}, Lde/i;->M()Lde/i;

    move-result-object p1

    invoke-virtual {p1}, Lde/i;->J()Landroid/os/Handler;

    move-result-object p1

    if-eqz p1, :cond_15

    invoke-static {}, Lde/i;->M()Lde/i;

    move-result-object p1

    invoke-virtual {p1}, Lde/i;->J()Landroid/os/Handler;

    move-result-object p1

    iget-object p2, p0, Lcom/miui/powercenter/provider/PowerSaveService$a;->c:Lcom/miui/powercenter/provider/PowerSaveService;

    invoke-static {p2}, Lcom/miui/powercenter/provider/PowerSaveService;->b(Lcom/miui/powercenter/provider/PowerSaveService;)Ljava/lang/Runnable;

    move-result-object p2

    goto :goto_0

    :cond_1
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v2, "android.intent.action.BATTERY_CHANGED"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const-string v2, "level"

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-eqz v0, :cond_a

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v5, 0x18

    if-lt v0, v5, :cond_2

    iget-object v6, p0, Lcom/miui/powercenter/provider/PowerSaveService$a;->c:Lcom/miui/powercenter/provider/PowerSaveService;

    invoke-virtual {v6}, Landroid/app/Service;->isDeviceProtectedStorage()Z

    move-result v6

    if-eqz v6, :cond_2

    return-void

    :cond_2
    const-string v6, "status"

    const/4 v7, -0x1

    invoke-virtual {p2, v6, v7}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v6

    invoke-virtual {p2, v2, v7}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    const-string v8, "scale"

    invoke-virtual {p2, v8, v7}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v7

    mul-int/lit8 v2, v2, 0x64

    div-int/2addr v2, v7

    const/4 v7, 0x2

    if-eq v6, v7, :cond_4

    const/4 v7, 0x5

    if-ne v6, v7, :cond_3

    goto :goto_1

    :cond_3
    move v3, v4

    :cond_4
    :goto_1
    iget-object v6, p0, Lcom/miui/powercenter/provider/PowerSaveService$a;->c:Lcom/miui/powercenter/provider/PowerSaveService;

    invoke-virtual {v6}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v6

    invoke-static {v6}, Lje/c;->f(Landroid/content/Context;)Lje/c;

    move-result-object v6

    iget v7, p0, Lcom/miui/powercenter/provider/PowerSaveService$a;->a:I

    invoke-virtual {v6, v7, v2}, Lje/c;->k(II)V

    iget-object v6, p0, Lcom/miui/powercenter/provider/PowerSaveService$a;->c:Lcom/miui/powercenter/provider/PowerSaveService;

    invoke-virtual {v6}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v6

    invoke-static {v6}, Lpg/i;->F(Landroid/content/Context;)Z

    move-result v6

    if-eqz v6, :cond_5

    iget-object v6, p0, Lcom/miui/powercenter/provider/PowerSaveService$a;->c:Lcom/miui/powercenter/provider/PowerSaveService;

    invoke-virtual {v6}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v6

    invoke-static {v6}, Ljg/e;->y(Landroid/content/Context;)Ljg/e;

    move-result-object v6

    iget v7, p0, Lcom/miui/powercenter/provider/PowerSaveService$a;->a:I

    invoke-virtual {v6, v3, v2, v7}, Ljg/e;->H(ZII)Z

    move-result v6

    goto :goto_2

    :cond_5
    move v6, v4

    :goto_2
    invoke-static {p1}, Lpg/c;->p(Landroid/content/Context;)Lpg/c;

    move-result-object v7

    iget v8, p0, Lcom/miui/powercenter/provider/PowerSaveService$a;->a:I

    invoke-virtual {v7, v2, v8, v3}, Lpg/c;->x(IIZ)V

    iget v7, p0, Lcom/miui/powercenter/provider/PowerSaveService$a;->a:I

    if-le v2, v7, :cond_6

    if-eqz v3, :cond_6

    invoke-static {}, Lgd/c;->g()Z

    move-result v7

    if-eqz v7, :cond_6

    if-nez v6, :cond_6

    iget-object v6, p0, Lcom/miui/powercenter/provider/PowerSaveService$a;->c:Lcom/miui/powercenter/provider/PowerSaveService;

    invoke-static {v6, p1, v2}, Lcom/miui/powercenter/provider/PowerSaveService;->k(Lcom/miui/powercenter/provider/PowerSaveService;Landroid/content/Context;I)V

    :cond_6
    invoke-static {}, Lde/i;->M()Lde/i;

    move-result-object p1

    invoke-virtual {p1, p2}, Lde/i;->Q(Landroid/content/Intent;)V

    iget-object p1, p0, Lcom/miui/powercenter/provider/PowerSaveService$a;->b:Ljava/lang/Boolean;

    if-nez p1, :cond_7

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    iput-object p1, p0, Lcom/miui/powercenter/provider/PowerSaveService$a;->b:Ljava/lang/Boolean;

    :cond_7
    iput v2, p0, Lcom/miui/powercenter/provider/PowerSaveService$a;->a:I

    invoke-static {}, Lme/c;->g()Lme/c;

    move-result-object p1

    invoke-virtual {p1, v3, v2}, Lme/c;->k(ZI)V

    if-lt v0, v5, :cond_8

    invoke-static {}, Lx4/z1;->r()Z

    move-result p1

    if-eqz p1, :cond_8

    iget-object p1, p0, Lcom/miui/powercenter/provider/PowerSaveService$a;->c:Lcom/miui/powercenter/provider/PowerSaveService;

    invoke-static {p1}, Lcom/miui/powercenter/batteryhistory/k;->o(Landroid/content/Context;)Lcom/miui/powercenter/batteryhistory/k;

    move-result-object p1

    invoke-virtual {p1, v3, v2}, Lcom/miui/powercenter/batteryhistory/k;->g(ZI)V

    :cond_8
    sget-boolean p1, Lsl/a;->a:Z

    if-nez p1, :cond_15

    sget-object p1, Lmiui/os/Build;->DEVICE:Ljava/lang/String;

    const-string p2, "perseus"

    invoke-static {p1, p2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_15

    iget-object p1, p0, Lcom/miui/powercenter/provider/PowerSaveService$a;->c:Lcom/miui/powercenter/provider/PowerSaveService;

    invoke-static {p1}, Lde/j;->E(Landroid/content/Context;)Z

    move-result p1

    if-eqz p1, :cond_15

    iget-object p1, p0, Lcom/miui/powercenter/provider/PowerSaveService$a;->c:Lcom/miui/powercenter/provider/PowerSaveService;

    invoke-static {p1}, Lme/w;->j(Landroid/content/Context;)I

    move-result p1

    const/16 p2, 0x1e

    if-ge p1, p2, :cond_9

    invoke-static {}, Lx4/t;->h()I

    move-result p1

    const/16 p2, 0xa

    if-lt p1, p2, :cond_15

    :cond_9
    iget-object p1, p0, Lcom/miui/powercenter/provider/PowerSaveService$a;->c:Lcom/miui/powercenter/provider/PowerSaveService;

    invoke-static {p1, v1, v4}, Lde/j;->L(Landroid/content/Context;Ljava/lang/String;Z)V

    goto/16 :goto_5

    :cond_a
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v5, "miui.intent.action.ABNORMAL_POWER_APP_HANDLE"

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_d

    invoke-static {}, Lcom/miui/powercenter/abnormalscan/a;->g()Z

    move-result v0

    if-eqz v0, :cond_d

    invoke-static {}, Lcom/miui/powercenter/abnormalscan/a;->f()Z

    move-result v0

    if-eqz v0, :cond_d

    sget-object v0, Lmiui/os/Build;->DEVICE:Ljava/lang/String;

    invoke-static {v0}, Lcom/miui/powercenter/abnormalscan/a;->d(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_d

    const-string v0, "notify_abnormal_data"

    invoke-virtual {p2, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-static {}, Lme/p;->a()Ljava/util/ArrayList;

    move-result-object v3

    :try_start_0
    new-instance v5, Lorg/json/JSONArray;

    invoke-direct {v5, p2}, Lorg/json/JSONArray;-><init>(Ljava/lang/String;)V

    move p2, v4

    :goto_3
    invoke-virtual {v5}, Lorg/json/JSONArray;->length()I

    move-result v6

    if-ge p2, v6, :cond_c

    invoke-virtual {v5, p2}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v6

    new-instance v7, Lcom/miui/powercenter/abnormalscan/AbnormalDataModel;

    invoke-direct {v7}, Lcom/miui/powercenter/abnormalscan/AbnormalDataModel;-><init>()V

    const-string v8, "uid"

    invoke-virtual {v6, v8}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v8

    iput v8, v7, Lcom/miui/powercenter/abnormalscan/AbnormalDataModel;->uid:I

    const-string v8, "package"

    invoke-virtual {v6, v8}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    iput-object v8, v7, Lcom/miui/powercenter/abnormalscan/AbnormalDataModel;->package_name:Ljava/lang/String;

    const-string v8, "type"

    invoke-virtual {v6, v8}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v8

    iput v8, v7, Lcom/miui/powercenter/abnormalscan/AbnormalDataModel;->type:I

    const-string v8, "rule"

    invoke-virtual {v6, v8}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v8

    iput v8, v7, Lcom/miui/powercenter/abnormalscan/AbnormalDataModel;->paction:I

    invoke-virtual {v6, v2}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v8

    iput v8, v7, Lcom/miui/powercenter/abnormalscan/AbnormalDataModel;->priority:I

    const-string v8, "version"

    invoke-virtual {v6, v8}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    iput-object v8, v7, Lcom/miui/powercenter/abnormalscan/AbnormalDataModel;->package_version:Ljava/lang/String;

    const-string v8, "time"

    invoke-virtual {v6, v8}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    iput-object v6, v7, Lcom/miui/powercenter/abnormalscan/AbnormalDataModel;->record_time:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "abnormalDataModel data: "

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Lcom/miui/powercenter/abnormalscan/AbnormalDataModel;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v1, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v6, p0, Lcom/miui/powercenter/provider/PowerSaveService$a;->c:Lcom/miui/powercenter/provider/PowerSaveService;

    invoke-virtual {v6}, Landroid/content/ContextWrapper;->getBaseContext()Landroid/content/Context;

    move-result-object v6

    iget-object v8, v7, Lcom/miui/powercenter/abnormalscan/AbnormalDataModel;->package_name:Ljava/lang/String;

    invoke-static {v6, v8}, Lx4/f1;->K(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_b

    iget-object v6, p0, Lcom/miui/powercenter/provider/PowerSaveService$a;->c:Lcom/miui/powercenter/provider/PowerSaveService;

    invoke-virtual {v6}, Landroid/content/ContextWrapper;->getBaseContext()Landroid/content/Context;

    move-result-object v6

    iget-object v8, v7, Lcom/miui/powercenter/abnormalscan/AbnormalDataModel;->package_name:Ljava/lang/String;

    invoke-static {v6, v8, v4}, Lx4/t;->y(Landroid/content/Context;Ljava/lang/String;I)Z

    move-result v6

    if-nez v6, :cond_b

    iget-object v6, v7, Lcom/miui/powercenter/abnormalscan/AbnormalDataModel;->package_name:Ljava/lang/String;

    invoke-interface {v3, v6}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_b

    iget v6, v7, Lcom/miui/powercenter/abnormalscan/AbnormalDataModel;->type:I

    iget v8, v7, Lcom/miui/powercenter/abnormalscan/AbnormalDataModel;->priority:I

    iget v9, v7, Lcom/miui/powercenter/abnormalscan/AbnormalDataModel;->paction:I

    invoke-static {v6, v8, v9}, Lcom/miui/powercenter/abnormalscan/a;->e(III)Z

    move-result v6

    if-eqz v6, :cond_b

    invoke-interface {v0, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_b
    add-int/lit8 p2, p2, 0x1

    goto/16 :goto_3

    :cond_c
    invoke-static {p1, v0}, Lcom/miui/powercenter/abnormalscan/a;->h(Landroid/content/Context;Ljava/util/List;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_5

    :catch_0
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    goto/16 :goto_5

    :cond_d
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "miui.intent.action.ACTION_WIRELESS_TX_TYPE"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_11

    const-string v0, "miui.intent.extra.wireless_tx_type"

    invoke-virtual {p2, v0, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p2

    const-string v0, "15"

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    if-lt p2, v0, :cond_10

    invoke-static {}, Lgd/c;->J()I

    move-result p2

    const/4 v0, 0x7

    if-lt p2, v0, :cond_f

    invoke-static {}, Lgd/c;->O0()Z

    move-result p2

    if-eqz p2, :cond_e

    invoke-static {p1}, Lke/a;->b(Landroid/content/Context;)Z

    move-result p2

    if-eqz p2, :cond_e

    invoke-static {p1}, Lke/a;->f(Landroid/content/Context;)V

    invoke-static {v4}, Lgd/c;->O2(Z)V

    :cond_e
    invoke-static {}, Lgd/c;->P0()Z

    move-result p2

    if-eqz p2, :cond_f

    invoke-static {p1}, Lke/a;->g(Landroid/content/Context;)V

    :cond_f
    invoke-static {}, Lgd/c;->J()I

    move-result p1

    invoke-static {p1}, Lke/a;->e(I)V

    invoke-static {v3}, Lgd/c;->O1(Z)V

    goto :goto_5

    :cond_10
    invoke-static {}, Lme/w;->C()Ljava/lang/String;

    move-result-object p2

    const-string v0, "0"

    invoke-static {p2, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p2

    if-eqz p2, :cond_15

    invoke-static {p1}, Lke/a;->a(Landroid/content/Context;)V

    goto :goto_5

    :cond_11
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "android.intent.action.BOOT_COMPLETED"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_12

    new-instance p1, Landroid/os/Handler;

    invoke-direct {p1}, Landroid/os/Handler;-><init>()V

    new-instance p2, Lcom/miui/powercenter/provider/PowerSaveService$a$a;

    invoke-direct {p2, p0}, Lcom/miui/powercenter/provider/PowerSaveService$a$a;-><init>(Lcom/miui/powercenter/provider/PowerSaveService$a;)V

    const-wide/32 v0, 0xea60

    invoke-virtual {p1, p2, v0, v1}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_5

    :cond_12
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "miui.intent.action.ACTION_RX_OFFSET"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_15

    const-string v0, "miui.intent.extra.EXTRA_RX_OFFSET"

    invoke-virtual {p2, v0, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p2

    invoke-static {}, Lcom/miui/powercenter/provider/PowerSaveService;->l()I

    move-result v0

    if-ne p2, v0, :cond_13

    invoke-static {}, Lde/i;->M()Lde/i;

    move-result-object v0

    invoke-virtual {v0, p1}, Lde/i;->S(Landroid/content/Context;)V

    goto :goto_4

    :cond_13
    iget-object v0, p0, Lcom/miui/powercenter/provider/PowerSaveService$a;->c:Lcom/miui/powercenter/provider/PowerSaveService;

    invoke-static {v0}, Lcom/miui/powercenter/provider/PowerSaveService;->m(Lcom/miui/powercenter/provider/PowerSaveService;)I

    move-result v0

    if-ne v0, v3, :cond_14

    if-nez p2, :cond_14

    invoke-static {p1}, Lde/j;->g(Landroid/content/Context;)V

    :cond_14
    :goto_4
    iget-object p1, p0, Lcom/miui/powercenter/provider/PowerSaveService$a;->c:Lcom/miui/powercenter/provider/PowerSaveService;

    invoke-static {p1, p2}, Lcom/miui/powercenter/provider/PowerSaveService;->n(Lcom/miui/powercenter/provider/PowerSaveService;I)I

    :cond_15
    :goto_5
    return-void
.end method
