.class public Lcom/miui/autotask/activity/BluetoothSelectActivity;
.super Lcom/miui/autotask/activity/BaseSelectActivity;
.source "SourceFile"


# instance fields
.field private final l:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private m:Landroid/bluetooth/BluetoothAdapter;

.field private n:Ljava/lang/String;

.field private o:Z

.field private p:Landroid/content/BroadcastReceiver;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/miui/autotask/activity/BaseSelectActivity;-><init>()V

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/miui/autotask/activity/BluetoothSelectActivity;->l:Ljava/util/HashSet;

    new-instance v0, Lcom/miui/autotask/activity/BluetoothSelectActivity$a;

    invoke-direct {v0, p0}, Lcom/miui/autotask/activity/BluetoothSelectActivity$a;-><init>(Lcom/miui/autotask/activity/BluetoothSelectActivity;)V

    iput-object v0, p0, Lcom/miui/autotask/activity/BluetoothSelectActivity;->p:Landroid/content/BroadcastReceiver;

    return-void
.end method

.method static synthetic A0(Lcom/miui/autotask/activity/BluetoothSelectActivity;Landroid/bluetooth/BluetoothDevice;Z)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/miui/autotask/activity/BluetoothSelectActivity;->D0(Landroid/bluetooth/BluetoothDevice;Z)V

    return-void
.end method

.method static synthetic B0(Lcom/miui/autotask/activity/BluetoothSelectActivity;)V
    .locals 0

    invoke-direct {p0}, Lcom/miui/autotask/activity/BluetoothSelectActivity;->F0()V

    return-void
.end method

.method static synthetic C0(Lcom/miui/autotask/activity/BluetoothSelectActivity;)Ljava/util/HashSet;
    .locals 0

    iget-object p0, p0, Lcom/miui/autotask/activity/BluetoothSelectActivity;->l:Ljava/util/HashSet;

    return-object p0
.end method

.method private D0(Landroid/bluetooth/BluetoothDevice;Z)V
    .locals 4

    if-eqz p1, :cond_3

    invoke-virtual {p1}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_3

    invoke-virtual {p1}, Landroid/bluetooth/BluetoothDevice;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/miui/autotask/activity/BluetoothSelectActivity;->l:Ljava/util/HashSet;

    invoke-virtual {p1}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    return-void

    :cond_1
    iget-object v0, p0, Lcom/miui/autotask/activity/BluetoothSelectActivity;->l:Ljava/util/HashSet;

    invoke-virtual {p1}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    new-instance v0, Lcom/miui/autotask/bean/b;

    invoke-direct {v0}, Lcom/miui/autotask/bean/b;-><init>()V

    invoke-virtual {p1}, Landroid/bluetooth/BluetoothDevice;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/miui/autotask/bean/n;->d(Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/miui/autotask/bean/b;->k(Ljava/lang/String;)V

    invoke-static {p1}, Lcom/miui/autotask/bean/b;->g(Landroid/bluetooth/BluetoothDevice;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/miui/autotask/bean/b;->j(I)V

    iget v1, p0, Lcom/miui/autotask/activity/BaseSelectActivity;->g:I

    const/4 v2, -0x1

    const/4 v3, 0x1

    if-ne v1, v2, :cond_2

    iget-object v1, p0, Lcom/miui/autotask/activity/BluetoothSelectActivity;->n:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_2

    iget-object p1, p0, Lcom/miui/autotask/activity/BaseSelectActivity;->e:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    iput p1, p0, Lcom/miui/autotask/activity/BaseSelectActivity;->g:I

    invoke-virtual {v0, v3}, Lcom/miui/autotask/bean/n;->e(Z)V

    :cond_2
    iget-object p1, p0, Lcom/miui/autotask/activity/BaseSelectActivity;->e:Ljava/util/List;

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    if-eqz p2, :cond_3

    iget-object p1, p0, Lcom/miui/autotask/activity/BaseSelectActivity;->d:Lr3/z;

    iget-object p2, p0, Lcom/miui/autotask/activity/BaseSelectActivity;->e:Ljava/util/List;

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result p2

    sub-int/2addr p2, v3

    invoke-virtual {p1, p2}, Landroidx/recyclerview/widget/RecyclerView$h;->notifyItemInserted(I)V

    :cond_3
    :goto_0
    return-void
.end method

.method private E0()V
    .locals 2

    new-instance v0, Lcom/miui/autotask/bean/q;

    invoke-direct {v0}, Lcom/miui/autotask/bean/q;-><init>()V

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/miui/autotask/bean/q;->j(Z)V

    iget-object v1, p0, Lcom/miui/autotask/activity/BluetoothSelectActivity;->m:Landroid/bluetooth/BluetoothAdapter;

    invoke-virtual {v1}, Landroid/bluetooth/BluetoothAdapter;->isEnabled()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/miui/autotask/bean/q;->i(Z)V

    const v1, 0x7f120334

    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/miui/autotask/bean/n;->d(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/miui/autotask/activity/BaseSelectActivity;->e:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method private F0()V
    .locals 1

    invoke-direct {p0}, Lcom/miui/autotask/activity/BluetoothSelectActivity;->G0()V

    iget-object v0, p0, Lcom/miui/autotask/activity/BaseSelectActivity;->d:Lr3/z;

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView$h;->notifyDataSetChanged()V

    iget-object v0, p0, Lcom/miui/autotask/activity/BluetoothSelectActivity;->m:Landroid/bluetooth/BluetoothAdapter;

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothAdapter;->isEnabled()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/miui/autotask/activity/BluetoothSelectActivity;->m:Landroid/bluetooth/BluetoothAdapter;

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothAdapter;->isDiscovering()Z

    move-result v0

    if-eqz v0, :cond_1

    return-void

    :cond_1
    iget-object v0, p0, Lcom/miui/autotask/activity/BluetoothSelectActivity;->m:Landroid/bluetooth/BluetoothAdapter;

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothAdapter;->startDiscovery()Z

    return-void
.end method

.method private G0()V
    .locals 4

    :try_start_0
    const-class v0, Landroid/bluetooth/BluetoothAdapter;

    const-string v1, "getConnectionState"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/lang/reflect/AccessibleObject;->setAccessible(Z)V

    iget-object v0, p0, Lcom/miui/autotask/activity/BluetoothSelectActivity;->m:Landroid/bluetooth/BluetoothAdapter;

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothAdapter;->getBondedDevices()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    return-void

    :cond_0
    iget-object v1, p0, Lcom/miui/autotask/activity/BaseSelectActivity;->e:Ljava/util/List;

    new-instance v2, Lcom/miui/autotask/bean/l;

    const v3, 0x7f120331

    invoke-virtual {p0, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/miui/autotask/bean/l;-><init>(Ljava/lang/String;)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/bluetooth/BluetoothDevice;

    const/4 v2, 0x0

    invoke-direct {p0, v1, v2}, Lcom/miui/autotask/activity/BluetoothSelectActivity;->D0(Landroid/bluetooth/BluetoothDevice;Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_1
    return-void
.end method

.method private H0()V
    .locals 1

    iget-object v0, p0, Lcom/miui/autotask/activity/BluetoothSelectActivity;->m:Landroid/bluetooth/BluetoothAdapter;

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {v0}, Landroid/bluetooth/BluetoothAdapter;->isDiscovering()Z

    move-result v0

    if-nez v0, :cond_1

    return-void

    :cond_1
    iget-object v0, p0, Lcom/miui/autotask/activity/BluetoothSelectActivity;->m:Landroid/bluetooth/BluetoothAdapter;

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothAdapter;->cancelDiscovery()Z

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/miui/autotask/activity/BluetoothSelectActivity;->m:Landroid/bluetooth/BluetoothAdapter;

    return-void
.end method

.method public static I0(Landroid/app/Activity;Ljava/lang/String;IZ)V
    .locals 2

    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/miui/autotask/activity/BluetoothSelectActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v1, "macAddress"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string p1, "isConnect"

    invoke-virtual {v0, p1, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    invoke-virtual {p0, v0, p2}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    return-void
.end method


# virtual methods
.method protected e0()Ljava/lang/String;
    .locals 1

    iget-boolean v0, p0, Lcom/miui/autotask/activity/BluetoothSelectActivity;->o:Z

    if-eqz v0, :cond_0

    const v0, 0x7f121a07

    goto :goto_0

    :cond_0
    const v0, 0x7f121a08

    :goto_0
    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected init()V
    .locals 3

    invoke-super {p0}, Lcom/miui/autotask/activity/BaseSelectActivity;->init()V

    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/autotask/activity/BluetoothSelectActivity;->m:Landroid/bluetooth/BluetoothAdapter;

    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "macAddress"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/autotask/activity/BluetoothSelectActivity;->n:Ljava/lang/String;

    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "isConnect"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/miui/autotask/activity/BluetoothSelectActivity;->o:Z

    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const-string v1, "android.bluetooth.device.action.FOUND"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "android.bluetooth.adapter.action.DISCOVERY_STARTED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "android.bluetooth.adapter.action.DISCOVERY_FINISHED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "android.bluetooth.adapter.action.STATE_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/miui/autotask/activity/BluetoothSelectActivity;->p:Landroid/content/BroadcastReceiver;

    const/4 v2, 0x2

    invoke-static {p0, v1, v0, v2}, Lx4/v;->m(Landroid/content/Context;Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;I)Landroid/content/Intent;

    return-void
.end method

.method protected n0()Lr3/z;
    .locals 3

    new-instance v0, Lr3/a;

    iget-object v1, p0, Lcom/miui/autotask/activity/BaseSelectActivity;->h:Lcom/miui/autotask/activity/BaseSelectActivity;

    iget-object v2, p0, Lcom/miui/autotask/activity/BaseSelectActivity;->e:Ljava/util/List;

    invoke-direct {v0, v1, v2}, Lr3/a;-><init>(Landroid/content/Context;Ljava/util/List;)V

    return-object v0
.end method

.method protected onDestroy()V
    .locals 1

    invoke-super {p0}, Lcom/miui/common/base/BaseActivity;->onDestroy()V

    iget-object v0, p0, Lcom/miui/autotask/activity/BluetoothSelectActivity;->p:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    invoke-direct {p0}, Lcom/miui/autotask/activity/BluetoothSelectActivity;->H0()V

    return-void
.end method

.method protected t0()V
    .locals 0

    invoke-direct {p0}, Lcom/miui/autotask/activity/BluetoothSelectActivity;->E0()V

    invoke-direct {p0}, Lcom/miui/autotask/activity/BluetoothSelectActivity;->F0()V

    return-void
.end method

.method protected w0()V
    .locals 5

    iget v0, p0, Lcom/miui/autotask/activity/BaseSelectActivity;->g:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_1

    iget-object v0, p0, Lcom/miui/autotask/activity/BaseSelectActivity;->e:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    iget v2, p0, Lcom/miui/autotask/activity/BaseSelectActivity;->g:I

    if-le v0, v2, :cond_1

    iget-object v0, p0, Lcom/miui/autotask/activity/BaseSelectActivity;->e:Ljava/util/List;

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/autotask/bean/b;

    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    iget-boolean v3, p0, Lcom/miui/autotask/activity/BluetoothSelectActivity;->o:Z

    if-eqz v3, :cond_0

    new-instance v3, Lcom/miui/autotask/taskitem/BluetoothConnectDeviceConditionItem;

    invoke-direct {v3}, Lcom/miui/autotask/taskitem/BluetoothConnectDeviceConditionItem;-><init>()V

    goto :goto_0

    :cond_0
    new-instance v3, Lcom/miui/autotask/taskitem/BluetoothDisconnectDeviceConditionItem;

    invoke-direct {v3}, Lcom/miui/autotask/taskitem/BluetoothDisconnectDeviceConditionItem;-><init>()V

    :goto_0
    invoke-virtual {v0}, Lcom/miui/autotask/bean/n;->a()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/miui/autotask/taskitem/BluetoothDeviceConditionItem;->A(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/miui/autotask/bean/b;->i()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Lcom/miui/autotask/taskitem/BluetoothDeviceConditionItem;->B(Ljava/lang/String;)V

    const-string v0, "taskItem"

    invoke-virtual {v2, v0, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    invoke-virtual {p0, v1, v2}, Landroid/app/Activity;->setResult(ILandroid/content/Intent;)V

    invoke-virtual {p0}, Lmiuix/appcompat/app/AppCompatActivity;->finish()V

    :cond_1
    return-void
.end method

.method protected x0(Z)V
    .locals 0

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/miui/autotask/activity/BluetoothSelectActivity;->m:Landroid/bluetooth/BluetoothAdapter;

    invoke-virtual {p1}, Landroid/bluetooth/BluetoothAdapter;->enable()Z

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lcom/miui/autotask/activity/BluetoothSelectActivity;->m:Landroid/bluetooth/BluetoothAdapter;

    invoke-virtual {p1}, Landroid/bluetooth/BluetoothAdapter;->cancelDiscovery()Z

    iget-object p1, p0, Lcom/miui/autotask/activity/BluetoothSelectActivity;->m:Landroid/bluetooth/BluetoothAdapter;

    invoke-virtual {p1}, Landroid/bluetooth/BluetoothAdapter;->disable()Z

    :goto_0
    return-void
.end method
