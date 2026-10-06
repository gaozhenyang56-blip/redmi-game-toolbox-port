.class public Lcom/miui/autotask/activity/WlanSelectActivity;
.super Lcom/miui/autotask/activity/BaseSelectActivity;
.source "SourceFile"


# instance fields
.field private l:Landroid/net/wifi/WifiManager;

.field private m:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private n:Z

.field private o:Ljava/lang/String;

.field private p:Z

.field private q:Landroid/content/BroadcastReceiver;

.field private r:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/miui/autotask/activity/BaseSelectActivity;-><init>()V

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/miui/autotask/activity/WlanSelectActivity;->m:Ljava/util/HashSet;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/miui/autotask/activity/WlanSelectActivity;->n:Z

    new-instance v0, Lcom/miui/autotask/activity/WlanSelectActivity$a;

    invoke-direct {v0, p0}, Lcom/miui/autotask/activity/WlanSelectActivity$a;-><init>(Lcom/miui/autotask/activity/WlanSelectActivity;)V

    iput-object v0, p0, Lcom/miui/autotask/activity/WlanSelectActivity;->q:Landroid/content/BroadcastReceiver;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/miui/autotask/activity/WlanSelectActivity;->r:Ljava/util/HashMap;

    return-void
.end method

.method static synthetic A0(Lcom/miui/autotask/activity/WlanSelectActivity;)Landroid/net/wifi/WifiManager;
    .locals 0

    iget-object p0, p0, Lcom/miui/autotask/activity/WlanSelectActivity;->l:Landroid/net/wifi/WifiManager;

    return-object p0
.end method

.method static synthetic B0(Lcom/miui/autotask/activity/WlanSelectActivity;Ljava/util/List;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/miui/autotask/activity/WlanSelectActivity;->G0(Ljava/util/List;)V

    return-void
.end method

.method static synthetic C0(Lcom/miui/autotask/activity/WlanSelectActivity;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/miui/autotask/activity/WlanSelectActivity;->n:Z

    return p0
.end method

.method static synthetic D0(Lcom/miui/autotask/activity/WlanSelectActivity;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/miui/autotask/activity/WlanSelectActivity;->n:Z

    return p1
.end method

.method static synthetic E0(Lcom/miui/autotask/activity/WlanSelectActivity;)V
    .locals 0

    invoke-direct {p0}, Lcom/miui/autotask/activity/WlanSelectActivity;->I0()V

    return-void
.end method

.method static synthetic F0(Lcom/miui/autotask/activity/WlanSelectActivity;)Ljava/util/HashSet;
    .locals 0

    iget-object p0, p0, Lcom/miui/autotask/activity/WlanSelectActivity;->m:Ljava/util/HashSet;

    return-object p0
.end method

.method private G0(Ljava/util/List;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/net/wifi/ScanResult;",
            ">;)V"
        }
    .end annotation

    iget-boolean v0, p0, Lcom/miui/autotask/activity/BaseSelectActivity;->i:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/miui/autotask/activity/BaseSelectActivity;->i:Z

    iget-object v1, p0, Lcom/miui/autotask/activity/BaseSelectActivity;->e:Ljava/util/List;

    new-instance v2, Lcom/miui/autotask/bean/l;

    const v3, 0x7f12031e

    invoke-virtual {p0, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/miui/autotask/bean/l;-><init>(Ljava/lang/String;)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v1, p0, Lcom/miui/autotask/activity/BaseSelectActivity;->d:Lr3/z;

    iget-object v2, p0, Lcom/miui/autotask/activity/BaseSelectActivity;->e:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    sub-int/2addr v2, v0

    invoke-virtual {v1, v2}, Landroidx/recyclerview/widget/RecyclerView$h;->notifyItemInserted(I)V

    :cond_0
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_1
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/ScanResult;

    iget-object v1, v0, Landroid/net/wifi/ScanResult;->SSID:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_2

    goto :goto_0

    :cond_2
    invoke-static {v0}, Lcom/miui/autotask/bean/u;->h(Landroid/net/wifi/ScanResult;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/miui/autotask/activity/WlanSelectActivity;->m:Ljava/util/HashSet;

    invoke-virtual {v2, v1}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/miui/autotask/activity/WlanSelectActivity;->r:Ljava/util/HashMap;

    invoke-virtual {v2, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    if-eqz v2, :cond_1

    iget-object v3, p0, Lcom/miui/autotask/activity/WlanSelectActivity;->r:Ljava/util/HashMap;

    invoke-virtual {v3, v1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, p0, Lcom/miui/autotask/activity/BaseSelectActivity;->e:Ljava/util/List;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/miui/autotask/bean/u;

    iget v2, v0, Landroid/net/wifi/ScanResult;->frequency:I

    invoke-virtual {v1, v2}, Lcom/miui/autotask/bean/u;->o(I)V

    iget v2, v0, Landroid/net/wifi/ScanResult;->level:I

    sget-object v3, Lcom/miui/autotask/bean/u;->h:[I

    array-length v3, v3

    invoke-static {v2, v3}, Landroid/net/wifi/WifiManager;->calculateSignalLevel(II)I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/miui/autotask/bean/u;->q(I)V

    invoke-static {v0}, Lcom/miui/autotask/bean/u;->g(Landroid/net/wifi/ScanResult;)Z

    move-result v0

    invoke-virtual {v1, v0}, Lcom/miui/autotask/bean/u;->p(Z)V

    goto :goto_0

    :cond_3
    iget-object v2, p0, Lcom/miui/autotask/activity/WlanSelectActivity;->m:Ljava/util/HashSet;

    invoke-virtual {v2, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    new-instance v2, Lcom/miui/autotask/bean/u;

    invoke-direct {v2}, Lcom/miui/autotask/bean/u;-><init>()V

    iget-object v3, v0, Landroid/net/wifi/ScanResult;->SSID:Ljava/lang/String;

    invoke-virtual {v2, v3}, Lcom/miui/autotask/bean/n;->d(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Lcom/miui/autotask/bean/u;->r(Ljava/lang/String;)V

    iget v1, v0, Landroid/net/wifi/ScanResult;->frequency:I

    invoke-virtual {v2, v1}, Lcom/miui/autotask/bean/u;->o(I)V

    iget v1, v0, Landroid/net/wifi/ScanResult;->level:I

    sget-object v3, Lcom/miui/autotask/bean/u;->h:[I

    array-length v3, v3

    invoke-static {v1, v3}, Landroid/net/wifi/WifiManager;->calculateSignalLevel(II)I

    move-result v1

    invoke-virtual {v2, v1}, Lcom/miui/autotask/bean/u;->q(I)V

    invoke-static {v0}, Lcom/miui/autotask/bean/u;->g(Landroid/net/wifi/ScanResult;)Z

    move-result v0

    invoke-virtual {v2, v0}, Lcom/miui/autotask/bean/u;->p(Z)V

    iget-object v0, p0, Lcom/miui/autotask/activity/BaseSelectActivity;->e:Ljava/util/List;

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    :cond_4
    iget-object p1, p0, Lcom/miui/autotask/activity/BaseSelectActivity;->d:Lr3/z;

    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$h;->notifyDataSetChanged()V

    return-void
.end method

.method private H0()V
    .locals 2

    new-instance v0, Lcom/miui/autotask/bean/q;

    invoke-direct {v0}, Lcom/miui/autotask/bean/q;-><init>()V

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/miui/autotask/bean/q;->j(Z)V

    iget-object v1, p0, Lcom/miui/autotask/activity/WlanSelectActivity;->l:Landroid/net/wifi/WifiManager;

    invoke-virtual {v1}, Landroid/net/wifi/WifiManager;->isWifiEnabled()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/miui/autotask/bean/q;->i(Z)V

    const v1, 0x7f120335

    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/miui/autotask/bean/n;->d(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/miui/autotask/activity/BaseSelectActivity;->e:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method private I0()V
    .locals 8

    iget-object v0, p0, Lcom/miui/autotask/activity/WlanSelectActivity;->l:Landroid/net/wifi/WifiManager;

    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->getConfiguredNetworks()Ljava/util/List;

    move-result-object v0

    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    if-eqz v0, :cond_3

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_3

    iget-object v2, p0, Lcom/miui/autotask/activity/BaseSelectActivity;->e:Ljava/util/List;

    new-instance v3, Lcom/miui/autotask/bean/l;

    const v4, 0x7f120332

    invoke-virtual {p0, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Lcom/miui/autotask/bean/l;-><init>(Ljava/lang/String;)V

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/net/wifi/WifiConfiguration;

    new-instance v3, Lcom/miui/autotask/bean/u;

    invoke-direct {v3}, Lcom/miui/autotask/bean/u;-><init>()V

    iget-object v4, v2, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    const/4 v5, 0x1

    if-eqz v4, :cond_0

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v6

    const/4 v7, 0x2

    if-le v6, v7, :cond_0

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v6

    sub-int/2addr v6, v5

    invoke-virtual {v4, v5, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    :cond_0
    invoke-interface {v1, v4}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_1

    goto :goto_0

    :cond_1
    invoke-virtual {v3, v4}, Lcom/miui/autotask/bean/n;->d(Ljava/lang/String;)V

    invoke-static {v2, v4}, Lcom/miui/autotask/bean/u;->l(Landroid/net/wifi/WifiConfiguration;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iget v4, p0, Lcom/miui/autotask/activity/BaseSelectActivity;->g:I

    const/4 v6, -0x1

    if-ne v4, v6, :cond_2

    iget-object v4, p0, Lcom/miui/autotask/activity/WlanSelectActivity;->o:Ljava/lang/String;

    invoke-static {v2, v4}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_2

    iget-object v4, p0, Lcom/miui/autotask/activity/BaseSelectActivity;->e:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    iput v4, p0, Lcom/miui/autotask/activity/BaseSelectActivity;->g:I

    invoke-virtual {v3, v5}, Lcom/miui/autotask/bean/n;->e(Z)V

    :cond_2
    invoke-virtual {v3, v2}, Lcom/miui/autotask/bean/u;->r(Ljava/lang/String;)V

    iget-object v4, p0, Lcom/miui/autotask/activity/WlanSelectActivity;->r:Ljava/util/HashMap;

    iget-object v5, p0, Lcom/miui/autotask/activity/BaseSelectActivity;->e:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v2, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v4, p0, Lcom/miui/autotask/activity/WlanSelectActivity;->m:Ljava/util/HashSet;

    invoke-virtual {v4, v2}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    iget-object v2, p0, Lcom/miui/autotask/activity/BaseSelectActivity;->e:Ljava/util/List;

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_3
    iget-object v0, p0, Lcom/miui/autotask/activity/BaseSelectActivity;->d:Lr3/z;

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView$h;->notifyDataSetChanged()V

    iget-object v0, p0, Lcom/miui/autotask/activity/WlanSelectActivity;->l:Landroid/net/wifi/WifiManager;

    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->startScan()Z

    return-void
.end method

.method public static J0(Landroid/app/Activity;Ljava/lang/String;IZ)V
    .locals 2

    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/miui/autotask/activity/WlanSelectActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v1, "wlanKey"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string p1, "isConnect"

    invoke-virtual {v0, p1, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    invoke-virtual {p0, v0, p2}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    return-void
.end method


# virtual methods
.method protected e0()Ljava/lang/String;
    .locals 1

    iget-boolean v0, p0, Lcom/miui/autotask/activity/WlanSelectActivity;->p:Z

    if-eqz v0, :cond_0

    const v0, 0x7f121a0a

    goto :goto_0

    :cond_0
    const v0, 0x7f121a0b

    :goto_0
    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected init()V
    .locals 3

    invoke-super {p0}, Lcom/miui/autotask/activity/BaseSelectActivity;->init()V

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "wifi"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/WifiManager;

    iput-object v0, p0, Lcom/miui/autotask/activity/WlanSelectActivity;->l:Landroid/net/wifi/WifiManager;

    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "wlanKey"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/autotask/activity/WlanSelectActivity;->o:Ljava/lang/String;

    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "isConnect"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/miui/autotask/activity/WlanSelectActivity;->p:Z

    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const-string v1, "android.net.wifi.SCAN_RESULTS"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "android.net.wifi.WIFI_STATE_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/miui/autotask/activity/WlanSelectActivity;->q:Landroid/content/BroadcastReceiver;

    const/4 v2, 0x4

    invoke-static {p0, v1, v0, v2}, Lx4/v;->m(Landroid/content/Context;Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;I)Landroid/content/Intent;

    return-void
.end method

.method protected n0()Lr3/z;
    .locals 3

    new-instance v0, Lr3/b0;

    iget-object v1, p0, Lcom/miui/autotask/activity/BaseSelectActivity;->h:Lcom/miui/autotask/activity/BaseSelectActivity;

    iget-object v2, p0, Lcom/miui/autotask/activity/BaseSelectActivity;->e:Ljava/util/List;

    invoke-direct {v0, v1, v2}, Lr3/b0;-><init>(Landroid/content/Context;Ljava/util/List;)V

    return-object v0
.end method

.method protected onDestroy()V
    .locals 1

    invoke-super {p0}, Lcom/miui/common/base/BaseActivity;->onDestroy()V

    iget-object v0, p0, Lcom/miui/autotask/activity/WlanSelectActivity;->q:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    return-void
.end method

.method protected t0()V
    .locals 1

    invoke-direct {p0}, Lcom/miui/autotask/activity/WlanSelectActivity;->H0()V

    iget-object v0, p0, Lcom/miui/autotask/activity/WlanSelectActivity;->l:Landroid/net/wifi/WifiManager;

    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->isWifiEnabled()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/miui/autotask/activity/WlanSelectActivity;->n:Z

    invoke-direct {p0}, Lcom/miui/autotask/activity/WlanSelectActivity;->I0()V

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

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    iget-object v2, p0, Lcom/miui/autotask/activity/BaseSelectActivity;->e:Ljava/util/List;

    iget v3, p0, Lcom/miui/autotask/activity/BaseSelectActivity;->g:I

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/miui/autotask/bean/u;

    iget-boolean v3, p0, Lcom/miui/autotask/activity/WlanSelectActivity;->p:Z

    if-eqz v3, :cond_0

    new-instance v3, Lcom/miui/autotask/taskitem/WlanConnectSpecifiedConditionItem;

    invoke-direct {v3}, Lcom/miui/autotask/taskitem/WlanConnectSpecifiedConditionItem;-><init>()V

    goto :goto_0

    :cond_0
    new-instance v3, Lcom/miui/autotask/taskitem/WlanDisconnectSpecifiedConditionItem;

    invoke-direct {v3}, Lcom/miui/autotask/taskitem/WlanDisconnectSpecifiedConditionItem;-><init>()V

    :goto_0
    invoke-virtual {v2}, Lcom/miui/autotask/bean/n;->a()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/miui/autotask/taskitem/WlanSpecifiedConditionItem;->y(Ljava/lang/String;)V

    invoke-virtual {v2}, Lcom/miui/autotask/bean/u;->m()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Lcom/miui/autotask/taskitem/WlanSpecifiedConditionItem;->x(Ljava/lang/String;)V

    const-string v2, "taskItem"

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    invoke-virtual {p0, v1, v0}, Landroid/app/Activity;->setResult(ILandroid/content/Intent;)V

    invoke-virtual {p0}, Lmiuix/appcompat/app/AppCompatActivity;->finish()V

    :cond_1
    return-void
.end method

.method protected x0(Z)V
    .locals 1

    iget-object v0, p0, Lcom/miui/autotask/activity/WlanSelectActivity;->l:Landroid/net/wifi/WifiManager;

    invoke-virtual {v0, p1}, Landroid/net/wifi/WifiManager;->setWifiEnabled(Z)Z

    return-void
.end method
