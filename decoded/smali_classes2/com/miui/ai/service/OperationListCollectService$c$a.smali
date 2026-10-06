.class Lcom/miui/ai/service/OperationListCollectService$c$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/ai/service/OperationListCollectService$c;->onReceive(Landroid/content/Context;Landroid/content/Intent;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/content/Intent;

.field final synthetic b:Lcom/miui/ai/service/OperationListCollectService$c;


# direct methods
.method constructor <init>(Lcom/miui/ai/service/OperationListCollectService$c;Landroid/content/Intent;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/ai/service/OperationListCollectService$c$a;->b:Lcom/miui/ai/service/OperationListCollectService$c;

    iput-object p2, p0, Lcom/miui/ai/service/OperationListCollectService$c$a;->a:Landroid/content/Intent;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 15

    iget-object v0, p0, Lcom/miui/ai/service/OperationListCollectService$c$a;->a:Landroid/content/Intent;

    invoke-virtual {v0}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v1

    const/16 v2, 0xb

    const/16 v3, 0xa

    const/4 v4, 0x5

    const/4 v5, 0x3

    const/4 v6, 0x4

    const/4 v7, -0x1

    const/4 v8, 0x2

    const/4 v9, 0x1

    const/4 v10, 0x0

    sparse-switch v1, :sswitch_data_0

    :goto_0
    move v0, v7

    goto/16 :goto_1

    :sswitch_0
    const-string v1, "android.bluetooth.device.action.BOND_STATE_CHANGED"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    move v0, v2

    goto/16 :goto_1

    :sswitch_1
    const-string v1, "android.media.RINGER_MODE_CHANGED"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    goto :goto_0

    :cond_1
    move v0, v3

    goto/16 :goto_1

    :sswitch_2
    const-string v1, "android.bluetooth.device.action.ACL_DISCONNECTED"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    goto :goto_0

    :cond_2
    const/16 v0, 0x9

    goto/16 :goto_1

    :sswitch_3
    const-string v1, "android.intent.action.USER_PRESENT"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    goto :goto_0

    :cond_3
    const/16 v0, 0x8

    goto/16 :goto_1

    :sswitch_4
    const-string v1, "android.net.wifi.WIFI_AP_STATE_CHANGED"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4

    goto :goto_0

    :cond_4
    const/4 v0, 0x7

    goto :goto_1

    :sswitch_5
    const-string v1, "android.bluetooth.device.action.ACL_CONNECTED"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_5

    goto :goto_0

    :cond_5
    const/4 v0, 0x6

    goto :goto_1

    :sswitch_6
    const-string v1, "android.net.wifi.STATE_CHANGE"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_6

    goto :goto_0

    :cond_6
    move v0, v4

    goto :goto_1

    :sswitch_7
    const-string v1, "android.bluetooth.adapter.action.STATE_CHANGED"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_7

    goto :goto_0

    :cond_7
    move v0, v6

    goto :goto_1

    :sswitch_8
    const-string v1, "android.intent.action.BATTERY_CHANGED"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_8

    goto :goto_0

    :cond_8
    move v0, v5

    goto :goto_1

    :sswitch_9
    const-string v1, "android.intent.action.HEADSET_PLUG"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_9

    goto :goto_0

    :cond_9
    move v0, v8

    goto :goto_1

    :sswitch_a
    const-string v1, "android.net.wifi.WIFI_STATE_CHANGED"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_a

    goto :goto_0

    :cond_a
    move v0, v9

    goto :goto_1

    :sswitch_b
    const-string v1, "android.intent.action.SCREEN_OFF"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_b

    goto/16 :goto_0

    :cond_b
    move v0, v10

    :goto_1
    const/16 v1, 0xc

    const-string v11, "wifi_state"

    const-string v12, ""

    const-string v13, "android.bluetooth.device.extra.DEVICE"

    const-string v14, "NewAutoTaskService"

    packed-switch v0, :pswitch_data_0

    goto/16 :goto_a

    :pswitch_0
    iget-object v0, p0, Lcom/miui/ai/service/OperationListCollectService$c$a;->a:Landroid/content/Intent;

    invoke-virtual {v0, v13}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/bluetooth/BluetoothDevice;

    if-nez v0, :cond_c

    return-void

    :cond_c
    invoke-virtual {v0}, Landroid/bluetooth/BluetoothDevice;->getBondState()I

    move-result v2

    if-eq v2, v1, :cond_d

    goto/16 :goto_a

    :cond_d
    const-string v1, "onReceive: BluetoothDevice.BOND_BONDED connectDevice"

    :goto_2
    invoke-static {v14, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/miui/ai/service/OperationListCollectService$c$a;->b:Lcom/miui/ai/service/OperationListCollectService$c;

    iget-object v1, v1, Lcom/miui/ai/service/OperationListCollectService$c;->a:Lcom/miui/ai/service/OperationListCollectService;

    invoke-static {v1, v0}, Lcom/miui/ai/service/OperationListCollectService;->k(Lcom/miui/ai/service/OperationListCollectService;Landroid/bluetooth/BluetoothDevice;)V

    goto/16 :goto_a

    :pswitch_1
    iget-object v0, p0, Lcom/miui/ai/service/OperationListCollectService$c$a;->b:Lcom/miui/ai/service/OperationListCollectService$c;

    iget-object v0, v0, Lcom/miui/ai/service/OperationListCollectService$c;->a:Lcom/miui/ai/service/OperationListCollectService;

    const-string v1, "audio"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    invoke-virtual {v0}, Landroid/media/AudioManager;->getRingerMode()I

    move-result v0

    if-eqz v0, :cond_12

    if-eq v0, v9, :cond_10

    if-eq v0, v8, :cond_e

    goto/16 :goto_a

    :cond_e
    iget-object v1, p0, Lcom/miui/ai/service/OperationListCollectService$c$a;->b:Lcom/miui/ai/service/OperationListCollectService$c;

    iget-object v1, v1, Lcom/miui/ai/service/OperationListCollectService$c;->a:Lcom/miui/ai/service/OperationListCollectService;

    invoke-virtual {v1}, Lcom/miui/ai/service/OperationListCollectService;->F()I

    move-result v1

    if-ne v1, v0, :cond_f

    return-void

    :cond_f
    iget-object v1, p0, Lcom/miui/ai/service/OperationListCollectService$c$a;->b:Lcom/miui/ai/service/OperationListCollectService$c;

    iget-object v1, v1, Lcom/miui/ai/service/OperationListCollectService$c;->a:Lcom/miui/ai/service/OperationListCollectService;

    invoke-virtual {v1, v0}, Lcom/miui/ai/service/OperationListCollectService;->R(I)V

    const-string v0, "KEY_CLOSE_MUTE"

    goto :goto_3

    :cond_10
    iget-object v1, p0, Lcom/miui/ai/service/OperationListCollectService$c$a;->b:Lcom/miui/ai/service/OperationListCollectService$c;

    iget-object v1, v1, Lcom/miui/ai/service/OperationListCollectService$c;->a:Lcom/miui/ai/service/OperationListCollectService;

    invoke-virtual {v1}, Lcom/miui/ai/service/OperationListCollectService;->F()I

    move-result v1

    if-ne v1, v0, :cond_11

    return-void

    :cond_11
    invoke-static {}, Lu3/h;->y0()Lu3/h;

    move-result-object v1

    invoke-virtual {v1}, Lu3/h;->S()V

    iget-object v1, p0, Lcom/miui/ai/service/OperationListCollectService$c$a;->b:Lcom/miui/ai/service/OperationListCollectService$c;

    iget-object v1, v1, Lcom/miui/ai/service/OperationListCollectService$c;->a:Lcom/miui/ai/service/OperationListCollectService;

    invoke-virtual {v1, v0}, Lcom/miui/ai/service/OperationListCollectService;->R(I)V

    const-string v0, "KEY_OPEN_MUTE_VIBRATE"

    :goto_3
    invoke-static {v14, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_a

    :cond_12
    :try_start_0
    iget-object v1, p0, Lcom/miui/ai/service/OperationListCollectService$c$a;->b:Lcom/miui/ai/service/OperationListCollectService$c;

    iget-object v1, v1, Lcom/miui/ai/service/OperationListCollectService$c;->a:Lcom/miui/ai/service/OperationListCollectService;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "zen_mode"

    invoke-static {v1, v2}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;)I

    move-result v1
    :try_end_0
    .catch Landroid/provider/Settings$SettingNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    if-ne v1, v9, :cond_13

    goto :goto_4

    :cond_13
    move v9, v10

    :goto_4
    move v10, v9

    goto :goto_5

    :catch_0
    const-string v1, "SettingNotFoundException"

    invoke-static {v14, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :goto_5
    if-eqz v10, :cond_14

    return-void

    :cond_14
    iget-object v1, p0, Lcom/miui/ai/service/OperationListCollectService$c$a;->b:Lcom/miui/ai/service/OperationListCollectService$c;

    iget-object v1, v1, Lcom/miui/ai/service/OperationListCollectService$c;->a:Lcom/miui/ai/service/OperationListCollectService;

    invoke-virtual {v1}, Lcom/miui/ai/service/OperationListCollectService;->F()I

    move-result v1

    if-ne v1, v0, :cond_15

    return-void

    :cond_15
    invoke-static {}, Lu3/h;->y0()Lu3/h;

    move-result-object v1

    invoke-virtual {v1}, Lu3/h;->S()V

    iget-object v1, p0, Lcom/miui/ai/service/OperationListCollectService$c$a;->b:Lcom/miui/ai/service/OperationListCollectService$c;

    iget-object v1, v1, Lcom/miui/ai/service/OperationListCollectService$c;->a:Lcom/miui/ai/service/OperationListCollectService;

    invoke-virtual {v1, v0}, Lcom/miui/ai/service/OperationListCollectService;->R(I)V

    const-string v0, "KEY_OPEN_MUTE"

    goto :goto_3

    :pswitch_2
    const-string v0, "onReceive: BluetoothDevice.ACTION_ACL_DISCONNECTED disConnectDevice"

    invoke-static {v14, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/miui/ai/service/OperationListCollectService$c$a;->a:Landroid/content/Intent;

    invoke-virtual {v0, v13}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/bluetooth/BluetoothDevice;

    if-eqz v0, :cond_17

    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v1

    invoke-virtual {v1}, Landroid/bluetooth/BluetoothAdapter;->isEnabled()Z

    move-result v1

    if-nez v1, :cond_16

    goto :goto_6

    :cond_16
    invoke-virtual {v0}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v0

    invoke-static {}, Lu3/h;->y0()Lu3/h;

    move-result-object v1

    invoke-virtual {v1}, Lu3/h;->r0()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1, v0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_24

    invoke-interface {v1, v0}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    invoke-static {}, Lu3/h;->y0()Lu3/h;

    move-result-object v1

    invoke-virtual {v1, v0}, Lu3/h;->g1(Ljava/lang/String;)V

    invoke-static {}, Lu3/h;->y0()Lu3/h;

    move-result-object v0

    invoke-virtual {v0}, Lu3/h;->F()V

    goto/16 :goto_a

    :cond_17
    :goto_6
    return-void

    :pswitch_3
    invoke-static {}, Lu3/h;->y0()Lu3/h;

    move-result-object v0

    const-wide/16 v1, 0x0

    iput-wide v1, v0, Lu3/h;->j:J

    invoke-static {}, Lu3/h;->y0()Lu3/h;

    move-result-object v0

    invoke-virtual {v0}, Lu3/h;->x()V

    invoke-static {}, Lu3/h;->y0()Lu3/h;

    move-result-object v0

    invoke-virtual {v0}, Lu3/h;->c1()V

    goto/16 :goto_a

    :pswitch_4
    iget-object v0, p0, Lcom/miui/ai/service/OperationListCollectService$c$a;->a:Landroid/content/Intent;

    invoke-virtual {v0, v11, v10}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    if-eq v0, v2, :cond_18

    const/16 v1, 0xd

    if-ne v0, v1, :cond_24

    :cond_18
    invoke-static {}, Lu3/h;->y0()Lu3/h;

    move-result-object v0

    invoke-virtual {v0}, Lu3/h;->P()V

    goto/16 :goto_a

    :pswitch_5
    iget-object v0, p0, Lcom/miui/ai/service/OperationListCollectService$c$a;->a:Landroid/content/Intent;

    invoke-virtual {v0, v13}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/bluetooth/BluetoothDevice;

    if-nez v0, :cond_19

    return-void

    :cond_19
    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v1

    invoke-virtual {v1}, Landroid/bluetooth/BluetoothAdapter;->getBondedDevices()Ljava/util/Set;

    move-result-object v1

    if-eqz v1, :cond_24

    invoke-interface {v1}, Ljava/util/Set;->size()I

    move-result v2

    if-lez v2, :cond_24

    invoke-interface {v1, v0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_24

    const-string v1, "onReceive: ACTION_ACL_CONNECTED connectDevice"

    goto/16 :goto_2

    :pswitch_6
    iget-object v0, p0, Lcom/miui/ai/service/OperationListCollectService$c$a;->b:Lcom/miui/ai/service/OperationListCollectService$c;

    iget-object v0, v0, Lcom/miui/ai/service/OperationListCollectService$c;->a:Lcom/miui/ai/service/OperationListCollectService;

    iget-object v1, p0, Lcom/miui/ai/service/OperationListCollectService$c$a;->a:Landroid/content/Intent;

    invoke-static {v0, v1}, Lcom/miui/ai/service/OperationListCollectService;->d(Lcom/miui/ai/service/OperationListCollectService;Landroid/content/Intent;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1b

    iget-object v1, p0, Lcom/miui/ai/service/OperationListCollectService$c$a;->b:Lcom/miui/ai/service/OperationListCollectService$c;

    iget-object v1, v1, Lcom/miui/ai/service/OperationListCollectService$c;->a:Lcom/miui/ai/service/OperationListCollectService;

    invoke-static {v1}, Lcom/miui/ai/service/OperationListCollectService;->g(Lcom/miui/ai/service/OperationListCollectService;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1a

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    iget-object v3, p0, Lcom/miui/ai/service/OperationListCollectService$c$a;->b:Lcom/miui/ai/service/OperationListCollectService$c;

    iget-object v3, v3, Lcom/miui/ai/service/OperationListCollectService$c;->a:Lcom/miui/ai/service/OperationListCollectService;

    invoke-static {v3}, Lcom/miui/ai/service/OperationListCollectService;->i(Lcom/miui/ai/service/OperationListCollectService;)J

    move-result-wide v3

    sub-long/2addr v1, v3

    const-wide/16 v3, 0x3e8

    cmp-long v1, v1, v3

    if-gez v1, :cond_1a

    return-void

    :cond_1a
    iget-object v1, p0, Lcom/miui/ai/service/OperationListCollectService$c$a;->b:Lcom/miui/ai/service/OperationListCollectService$c;

    iget-object v1, v1, Lcom/miui/ai/service/OperationListCollectService$c;->a:Lcom/miui/ai/service/OperationListCollectService;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-static {v1, v2, v3}, Lcom/miui/ai/service/OperationListCollectService;->j(Lcom/miui/ai/service/OperationListCollectService;J)J

    iget-object v1, p0, Lcom/miui/ai/service/OperationListCollectService$c$a;->b:Lcom/miui/ai/service/OperationListCollectService$c;

    iget-object v1, v1, Lcom/miui/ai/service/OperationListCollectService$c;->a:Lcom/miui/ai/service/OperationListCollectService;

    invoke-static {v1, v0}, Lcom/miui/ai/service/OperationListCollectService;->h(Lcom/miui/ai/service/OperationListCollectService;Ljava/lang/String;)Ljava/lang/String;

    invoke-static {}, Lu3/h;->y0()Lu3/h;

    move-result-object v0

    new-instance v1, Ljava/lang/String;

    iget-object v2, p0, Lcom/miui/ai/service/OperationListCollectService$c$a;->b:Lcom/miui/ai/service/OperationListCollectService$c;

    iget-object v2, v2, Lcom/miui/ai/service/OperationListCollectService$c;->a:Lcom/miui/ai/service/OperationListCollectService;

    invoke-static {v2}, Lcom/miui/ai/service/OperationListCollectService;->g(Lcom/miui/ai/service/OperationListCollectService;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, v8}, Landroid/util/Base64;->decode(Ljava/lang/String;I)[B

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/String;-><init>([B)V

    invoke-virtual {v0, v1}, Lu3/h;->y1(Ljava/lang/String;)V

    invoke-static {}, Lu3/h;->y0()Lu3/h;

    move-result-object v0

    invoke-virtual {v0}, Lu3/h;->I()V

    goto/16 :goto_a

    :cond_1b
    invoke-static {}, Lu3/h;->y0()Lu3/h;

    move-result-object v0

    invoke-virtual {v0}, Lu3/h;->t0()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_24

    invoke-static {}, Lu3/h;->y0()Lu3/h;

    move-result-object v0

    invoke-virtual {v0, v12}, Lu3/h;->y1(Ljava/lang/String;)V

    invoke-static {}, Lu3/h;->y0()Lu3/h;

    move-result-object v0

    invoke-virtual {v0}, Lu3/h;->J()V

    goto/16 :goto_a

    :pswitch_7
    iget-object v0, p0, Lcom/miui/ai/service/OperationListCollectService$c$a;->a:Landroid/content/Intent;

    const-string v2, "android.bluetooth.adapter.extra.STATE"

    invoke-virtual {v0, v2, v10}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    if-eq v0, v3, :cond_1d

    if-eq v0, v1, :cond_1c

    goto/16 :goto_a

    :cond_1c
    invoke-static {}, Lu3/h;->y0()Lu3/h;

    move-result-object v0

    invoke-virtual {v0}, Lu3/h;->D()V

    invoke-static {}, Lu3/h;->y0()Lu3/h;

    move-result-object v0

    invoke-virtual {v0, v12}, Lu3/h;->g1(Ljava/lang/String;)V

    goto/16 :goto_a

    :cond_1d
    invoke-static {}, Lu3/h;->y0()Lu3/h;

    move-result-object v0

    invoke-virtual {v0}, Lu3/h;->D()V

    invoke-static {}, Lu3/h;->y0()Lu3/h;

    move-result-object v0

    invoke-virtual {v0, v12}, Lu3/h;->g1(Ljava/lang/String;)V

    invoke-static {}, Lu3/h;->y0()Lu3/h;

    move-result-object v0

    invoke-virtual {v0}, Lu3/h;->W0()V

    invoke-static {}, Lu3/h;->y0()Lu3/h;

    move-result-object v0

    invoke-virtual {v0}, Lu3/h;->F()V

    invoke-static {}, Lu3/h;->y0()Lu3/h;

    move-result-object v0

    invoke-virtual {v0}, Lu3/h;->r0()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->clear()V

    goto/16 :goto_a

    :pswitch_8
    iget-object v0, p0, Lcom/miui/ai/service/OperationListCollectService$c$a;->a:Landroid/content/Intent;

    const-string v1, "status"

    invoke-virtual {v0, v1, v7}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    iget-object v1, p0, Lcom/miui/ai/service/OperationListCollectService$c$a;->a:Landroid/content/Intent;

    const-string v2, "plugged"

    invoke-virtual {v1, v2, v7}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    if-eq v1, v6, :cond_1e

    move v1, v9

    goto :goto_7

    :cond_1e
    move v1, v10

    :goto_7
    if-eq v0, v8, :cond_20

    if-ne v0, v4, :cond_1f

    goto :goto_8

    :cond_1f
    move v9, v10

    goto :goto_9

    :cond_20
    :goto_8
    move v6, v8

    :goto_9
    iget-object v0, p0, Lcom/miui/ai/service/OperationListCollectService$c$a;->a:Landroid/content/Intent;

    const-string v2, "level"

    invoke-virtual {v0, v2, v10}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    iget-object v2, p0, Lcom/miui/ai/service/OperationListCollectService$c$a;->b:Lcom/miui/ai/service/OperationListCollectService$c;

    iget-object v2, v2, Lcom/miui/ai/service/OperationListCollectService$c;->a:Lcom/miui/ai/service/OperationListCollectService;

    invoke-static {v2}, Lcom/miui/ai/service/OperationListCollectService;->l(Lcom/miui/ai/service/OperationListCollectService;)I

    move-result v2

    const-string v3, "NewAutoTaskManager-battery"

    if-eq v0, v2, :cond_21

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "change level = "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lu3/h;->y0()Lu3/h;

    move-result-object v2

    invoke-virtual {v2}, Lu3/h;->C()V

    iget-object v2, p0, Lcom/miui/ai/service/OperationListCollectService$c$a;->b:Lcom/miui/ai/service/OperationListCollectService$c;

    iget-object v2, v2, Lcom/miui/ai/service/OperationListCollectService$c;->a:Lcom/miui/ai/service/OperationListCollectService;

    invoke-static {v2, v0}, Lcom/miui/ai/service/OperationListCollectService;->m(Lcom/miui/ai/service/OperationListCollectService;I)I

    :cond_21
    iget-object v0, p0, Lcom/miui/ai/service/OperationListCollectService$c$a;->b:Lcom/miui/ai/service/OperationListCollectService$c;

    iget-object v0, v0, Lcom/miui/ai/service/OperationListCollectService$c;->a:Lcom/miui/ai/service/OperationListCollectService;

    invoke-static {v0}, Lcom/miui/ai/service/OperationListCollectService;->n(Lcom/miui/ai/service/OperationListCollectService;)I

    move-result v0

    if-ne v6, v0, :cond_22

    return-void

    :cond_22
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "change status = "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/miui/ai/service/OperationListCollectService$c$a;->b:Lcom/miui/ai/service/OperationListCollectService$c;

    iget-object v0, v0, Lcom/miui/ai/service/OperationListCollectService$c;->a:Lcom/miui/ai/service/OperationListCollectService;

    invoke-static {v0, v6}, Lcom/miui/ai/service/OperationListCollectService;->o(Lcom/miui/ai/service/OperationListCollectService;I)I

    invoke-static {}, Lu3/h;->y0()Lu3/h;

    move-result-object v0

    invoke-virtual {v0, v9}, Lu3/h;->h1(Z)V

    invoke-static {}, Lu3/h;->y0()Lu3/h;

    move-result-object v0

    invoke-virtual {v0, v1}, Lu3/h;->j1(Z)V

    invoke-static {}, Lu3/h;->y0()Lu3/h;

    move-result-object v0

    invoke-virtual {v0}, Lu3/h;->G()V

    goto :goto_a

    :pswitch_9
    invoke-static {}, Lu3/h;->y0()Lu3/h;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/ai/service/OperationListCollectService$c$a;->a:Landroid/content/Intent;

    const-string v2, "state"

    invoke-virtual {v1, v2, v10}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    iput v1, v0, Lu3/h;->m:I

    invoke-static {}, Lu3/h;->y0()Lu3/h;

    move-result-object v0

    invoke-virtual {v0}, Lu3/h;->O()V

    goto :goto_a

    :pswitch_a
    iget-object v0, p0, Lcom/miui/ai/service/OperationListCollectService$c$a;->a:Landroid/content/Intent;

    invoke-virtual {v0, v11, v10}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    if-eq v0, v9, :cond_23

    if-eq v0, v5, :cond_23

    goto :goto_a

    :cond_23
    invoke-static {}, Lu3/h;->y0()Lu3/h;

    move-result-object v0

    invoke-virtual {v0}, Lu3/h;->Y()V

    goto :goto_a

    :pswitch_b
    invoke-static {}, Lu3/h;->y0()Lu3/h;

    move-result-object v0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    iput-wide v1, v0, Lu3/h;->j:J

    invoke-static {}, Lu3/h;->y0()Lu3/h;

    move-result-object v0

    invoke-virtual {v0}, Lu3/h;->i1()V

    invoke-static {}, Lu3/h;->y0()Lu3/h;

    move-result-object v0

    invoke-virtual {v0}, Lu3/h;->q1()V

    invoke-static {}, La4/f;->b()La4/f;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/ai/service/OperationListCollectService$c$a;->b:Lcom/miui/ai/service/OperationListCollectService$c;

    iget-object v1, v1, Lcom/miui/ai/service/OperationListCollectService$c;->a:Lcom/miui/ai/service/OperationListCollectService;

    invoke-static {v1}, Lcom/miui/ai/service/OperationListCollectService;->p(Lcom/miui/ai/service/OperationListCollectService;)Lcom/miui/ai/service/OperationListCollectService$i;

    move-result-object v1

    invoke-virtual {v0, v1}, La4/f;->a(Landroid/os/Handler;)V

    :cond_24
    :goto_a
    return-void

    nop

    :sswitch_data_0
    .sparse-switch
        -0x7ed8ea7f -> :sswitch_b
        -0x6fcd6bbb -> :sswitch_a
        -0x63ecb970 -> :sswitch_9
        -0x5bb23923 -> :sswitch_8
        -0x5b36f014 -> :sswitch_7
        -0x147b62d9 -> :sswitch_6
        -0x11f77b4b -> :sswitch_5
        0x186f64d7 -> :sswitch_4
        0x311a1d6c -> :sswitch_3
        0x6c9330ef -> :sswitch_2
        0x7b621251 -> :sswitch_1
        0x7e2cc189 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
