.class public Lcom/miui/autotask/bean/b;
.super Lcom/miui/autotask/bean/n;
.source "SourceFile"


# instance fields
.field private d:I

.field private e:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/miui/autotask/bean/n;-><init>()V

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/miui/autotask/bean/n;->f(I)V

    return-void
.end method

.method public static g(Landroid/bluetooth/BluetoothDevice;)I
    .locals 8

    invoke-virtual {p0}, Landroid/bluetooth/BluetoothDevice;->getBluetoothClass()Landroid/bluetooth/BluetoothClass;

    move-result-object p0

    const v0, 0x7f0807f7

    if-nez p0, :cond_0

    return v0

    :cond_0
    const/4 v1, 0x0

    :try_start_0
    const-class v2, Landroid/bluetooth/BluetoothClass;

    const-string v3, "doesClassMatch"

    const/4 v4, 0x1

    new-array v5, v4, [Ljava/lang/Class;

    sget-object v6, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v6, v5, v1

    invoke-virtual {v2, v3, v5}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    const-class v3, Landroid/bluetooth/BluetoothClass;

    const-string v5, "PROFILE_HEADSET"

    invoke-virtual {v3, v5}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v3

    const/4 v5, 0x0

    invoke-virtual {v3, v5}, Ljava/lang/reflect/Field;->getInt(Ljava/lang/Object;)I

    move-result v3

    const-class v6, Landroid/bluetooth/BluetoothClass;

    const-string v7, "PROFILE_A2DP"

    invoke-virtual {v6, v7}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v6

    invoke-virtual {v6, v5}, Ljava/lang/reflect/Field;->getInt(Ljava/lang/Object;)I

    move-result v5

    new-array v6, v4, [Ljava/lang/Object;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v6, v1

    invoke-virtual {v2, p0, v6}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    :try_start_1
    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v1

    invoke-virtual {v2, p0, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    :catch_0
    move-exception v2

    goto :goto_0

    :catch_1
    move-exception v2

    move v3, v1

    :goto_0
    const-string v4, "auto_task_tag"

    const-string v5, "getBluetoothIcon doesClassMatch fail"

    invoke-static {v4, v5, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_1
    if-eqz v3, :cond_1

    const v0, 0x7f0807fa

    goto :goto_2

    :cond_1
    if-eqz v1, :cond_2

    const v0, 0x7f0807f9

    goto :goto_2

    :cond_2
    invoke-virtual {p0}, Landroid/bluetooth/BluetoothClass;->getMajorDeviceClass()I

    move-result p0

    if-eqz p0, :cond_8

    const/16 v1, 0x100

    if-eq p0, v1, :cond_7

    const/16 v1, 0x200

    if-eq p0, v1, :cond_6

    const/16 v1, 0x300

    if-eq p0, v1, :cond_5

    const/16 v1, 0x600

    if-eq p0, v1, :cond_4

    const/16 v1, 0x700

    if-eq p0, v1, :cond_3

    goto :goto_2

    :cond_3
    const v0, 0x7f0807ff

    goto :goto_2

    :cond_4
    const v0, 0x7f0807fb

    goto :goto_2

    :cond_5
    const v0, 0x7f0807fe

    goto :goto_2

    :cond_6
    const v0, 0x7f0807f8

    goto :goto_2

    :cond_7
    const v0, 0x7f0807fc

    goto :goto_2

    :cond_8
    const v0, 0x7f0807fd

    :goto_2
    return v0
.end method


# virtual methods
.method public h()I
    .locals 1

    iget v0, p0, Lcom/miui/autotask/bean/b;->d:I

    return v0
.end method

.method public i()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/miui/autotask/bean/b;->e:Ljava/lang/String;

    return-object v0
.end method

.method public j(I)V
    .locals 0

    iput p1, p0, Lcom/miui/autotask/bean/b;->d:I

    return-void
.end method

.method public k(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/autotask/bean/b;->e:Ljava/lang/String;

    return-void
.end method
