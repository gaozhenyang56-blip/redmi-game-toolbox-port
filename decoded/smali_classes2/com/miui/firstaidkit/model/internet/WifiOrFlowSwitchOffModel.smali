.class public Lcom/miui/firstaidkit/model/internet/WifiOrFlowSwitchOffModel;
.super Lcom/miui/securityscan/model/AbsModel;
.source "SourceFile"


# instance fields
.field private final mResolver:Landroid/content/ContentResolver;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/Integer;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/miui/securityscan/model/AbsModel;-><init>(Ljava/lang/String;Ljava/lang/Integer;)V

    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Lcom/miui/securityscan/model/AbsModel;->setDelayOptimized(Z)V

    const-string p1, "wifi_or_flow"

    invoke-virtual {p0, p1}, Lcom/miui/securityscan/model/AbsModel;->setTrackStr(Ljava/lang/String;)V

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/miui/securityscan/model/AbsModel;->getTrackStr()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, "_ignore"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/miui/securityscan/model/AbsModel;->setTrackIgnoreStr(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/miui/securityscan/model/AbsModel;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    iput-object p1, p0, Lcom/miui/firstaidkit/model/internet/WifiOrFlowSwitchOffModel;->mResolver:Landroid/content/ContentResolver;

    return-void
.end method

.method public static synthetic a(Lcom/miui/firstaidkit/model/internet/WifiOrFlowSwitchOffModel;)V
    .locals 0

    invoke-direct {p0}, Lcom/miui/firstaidkit/model/internet/WifiOrFlowSwitchOffModel;->refreshUi()V

    return-void
.end method

.method private refreshUi()V
    .locals 2

    invoke-virtual {p0}, Lcom/miui/securityscan/model/AbsModel;->getFirstAidEventHandler()Landroid/os/Handler;

    move-result-object v0

    if-eqz v0, :cond_0

    const/16 v1, 0xc9

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    :cond_0
    return-void
.end method


# virtual methods
.method public getButtonTitle()Ljava/lang/String;
    .locals 2

    invoke-virtual {p0}, Lcom/miui/securityscan/model/AbsModel;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f1208a0

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getDesc()Ljava/lang/String;
    .locals 1

    const-string v0, ""

    return-object v0
.end method

.method public getIndex()I
    .locals 1

    const/16 v0, 0x34

    return v0
.end method

.method public getSummary()Ljava/lang/String;
    .locals 2

    invoke-virtual {p0}, Lcom/miui/securityscan/model/AbsModel;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f1208a1

    invoke-static {v0, v1}, Lx4/y1;->b(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getTitle()Ljava/lang/String;
    .locals 2

    invoke-virtual {p0}, Lcom/miui/securityscan/model/AbsModel;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f1208a2

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public optimize(Landroid/content/Context;)V
    .locals 3

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string v1, "android.settings.WIFI_SETTINGS"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    const/high16 v1, 0x10000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    invoke-static {}, Lcom/miui/securitycenter/Application;->A()Lcom/miui/securitycenter/Application;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2}, Landroid/content/pm/PackageManager;->resolveActivity(Landroid/content/Intent;I)Landroid/content/pm/ResolveInfo;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-virtual {p1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    instance-of v0, p1, Landroidx/lifecycle/v;

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/miui/firstaidkit/util/NetWorkChangeObserver;->d()Z

    move-result v0

    if-nez v0, :cond_0

    check-cast p1, Landroidx/lifecycle/v;

    new-instance v0, Lcom/miui/firstaidkit/model/internet/a;

    invoke-direct {v0, p0}, Lcom/miui/firstaidkit/model/internet/a;-><init>(Lcom/miui/firstaidkit/model/internet/WifiOrFlowSwitchOffModel;)V

    invoke-static {p1, v0}, Lcom/miui/firstaidkit/util/NetWorkChangeObserver;->e(Landroidx/lifecycle/v;Lcom/miui/firstaidkit/util/NetWorkChangeObserver$a;)V

    goto :goto_0

    :cond_0
    invoke-direct {p0}, Lcom/miui/firstaidkit/model/internet/WifiOrFlowSwitchOffModel;->refreshUi()V

    goto :goto_0

    :cond_1
    const v0, 0x7f120210

    invoke-static {p1, v0}, Lx4/y1;->j(Landroid/content/Context;I)V

    :goto_0
    return-void
.end method

.method public scan()V
    .locals 3

    iget-object v0, p0, Lcom/miui/firstaidkit/model/internet/WifiOrFlowSwitchOffModel;->mResolver:Landroid/content/ContentResolver;

    const-string v1, "airplane_mode_on"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-eqz v0, :cond_0

    const/4 v2, 0x1

    :cond_0
    if-nez v2, :cond_2

    invoke-virtual {p0}, Lcom/miui/securityscan/model/AbsModel;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Leg/c;->k(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1

    sget-object v0, Lcom/miui/securityscan/model/AbsModel$State;->SAFE:Lcom/miui/securityscan/model/AbsModel$State;

    goto :goto_0

    :cond_1
    sget-object v0, Lcom/miui/securityscan/model/AbsModel$State;->DANGER:Lcom/miui/securityscan/model/AbsModel$State;

    :goto_0
    invoke-virtual {p0, v0}, Lcom/miui/securityscan/model/AbsModel;->setSafe(Lcom/miui/securityscan/model/AbsModel$State;)V

    :cond_2
    return-void
.end method
