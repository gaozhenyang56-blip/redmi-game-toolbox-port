.class public Lcom/miui/autotask/taskitem/BluetoothDisconnectDeviceConditionItem;
.super Lcom/miui/autotask/taskitem/BluetoothDeviceConditionItem;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/miui/autotask/taskitem/BluetoothDeviceConditionItem;-><init>()V

    return-void
.end method

.method private C()Z
    .locals 3

    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v0

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothAdapter;->isEnabled()Z

    move-result v0

    if-nez v0, :cond_2

    invoke-virtual {p0}, Lcom/miui/autotask/taskitem/BluetoothDeviceConditionItem;->x()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    invoke-static {}, Lu3/h;->y0()Lu3/h;

    move-result-object v2

    invoke-virtual {v2}, Lu3/h;->z0()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    invoke-interface {v2, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_1
    const/4 v0, 0x0

    return v0

    :cond_2
    invoke-static {}, Lu3/h;->y0()Lu3/h;

    move-result-object v0

    invoke-virtual {v0}, Lu3/h;->p0()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Lcom/miui/autotask/taskitem/BluetoothDeviceConditionItem;->x()Ljava/util/Map;

    move-result-object v1

    invoke-interface {v1, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method


# virtual methods
.method public b()I
    .locals 1

    const v0, 0x7f0803f7

    return v0
.end method

.method public c()I
    .locals 1

    const v0, 0x7f0803f6

    return v0
.end method

.method public e()Ljava/lang/String;
    .locals 1

    const-string v0, "key_bluetooth_disconnect_device_condition_item"

    return-object v0
.end method

.method public g()Ljava/lang/String;
    .locals 5

    invoke-virtual {p0}, Lcom/miui/autotask/taskitem/BluetoothDeviceConditionItem;->z()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/miui/autotask/taskitem/BluetoothDeviceConditionItem;->y()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/miui/autotask/taskitem/BluetoothDeviceConditionItem;->v()Ljava/lang/String;

    move-result-object v0

    :goto_0
    invoke-static {}, Lcom/miui/securitycenter/Application;->A()Lcom/miui/securitycenter/Application;

    move-result-object v1

    const v2, 0x7f120303

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object v0, v3, v4

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public h()Ljava/lang/String;
    .locals 1

    const v0, 0x7f121a08

    invoke-virtual {p0, v0}, Lcom/miui/autotask/taskitem/TaskItem;->f(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public i()I
    .locals 1

    const v0, 0x7f0803f8

    return v0
.end method

.method public m()Z
    .locals 2

    invoke-virtual {p0}, Lcom/miui/autotask/taskitem/BluetoothDeviceConditionItem;->z()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/miui/autotask/taskitem/BluetoothDisconnectDeviceConditionItem;->C()Z

    move-result v0

    return v0

    :cond_0
    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v0

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothAdapter;->isEnabled()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-static {}, Lu3/h;->y0()Lu3/h;

    move-result-object v0

    invoke-virtual {v0}, Lu3/h;->z0()Ljava/util/Set;

    move-result-object v0

    invoke-virtual {p0}, Lcom/miui/autotask/taskitem/BluetoothDeviceConditionItem;->w()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    return v0

    :cond_1
    invoke-virtual {p0}, Lcom/miui/autotask/taskitem/BluetoothDeviceConditionItem;->w()Ljava/lang/String;

    move-result-object v0

    invoke-static {}, Lu3/h;->y0()Lu3/h;

    move-result-object v1

    invoke-virtual {v1}, Lu3/h;->p0()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    return v0
.end method
