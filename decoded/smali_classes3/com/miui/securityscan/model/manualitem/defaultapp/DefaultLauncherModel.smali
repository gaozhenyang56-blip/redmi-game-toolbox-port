.class public Lcom/miui/securityscan/model/manualitem/defaultapp/DefaultLauncherModel;
.super Lcom/miui/securityscan/model/manualitem/DefaultAppModel;
.source "SourceFile"


# static fields
.field private static LAUNCHER_WHITE_LIST:Ljava/util/List; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final TAG:Ljava/lang/String; = "DefaultLauncherModel"


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/miui/securityscan/model/manualitem/defaultapp/DefaultLauncherModel;->LAUNCHER_WHITE_LIST:Ljava/util/List;

    const-string v1, "com.mi.android.globallauncher"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/miui/securityscan/model/manualitem/defaultapp/DefaultLauncherModel;->LAUNCHER_WHITE_LIST:Ljava/util/List;

    const-string v1, "com.jeejen.family"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/miui/securityscan/model/manualitem/defaultapp/DefaultLauncherModel;->LAUNCHER_WHITE_LIST:Ljava/util/List;

    const-string v1, "com.jeejen.family.miui"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/Integer;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/miui/securityscan/model/manualitem/DefaultAppModel;-><init>(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string p1, "default_launcher"

    invoke-virtual {p0, p1}, Lcom/miui/securityscan/model/AbsModel;->setTrackStr(Ljava/lang/String;)V

    return-void
.end method

.method private isSafeLauncher(Landroid/content/Context;)Z
    .locals 3

    const/4 v0, 0x0

    :try_start_0
    new-instance v1, Landroid/content/IntentFilter;

    const-string v2, "android.intent.action.MAIN"

    invoke-direct {v1, v2}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    const-string v2, "android.intent.category.HOME"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addCategory(Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p1

    invoke-static {v1}, Lcom/miui/securityscan/model/manualitem/DefaultAppModel;->getIntent(Landroid/content/IntentFilter;)Landroid/content/Intent;

    move-result-object v1

    const/high16 v2, 0x10000

    invoke-virtual {p1, v1, v2}, Landroid/content/pm/PackageManager;->resolveActivity(Landroid/content/Intent;I)Landroid/content/pm/ResolveInfo;

    move-result-object p1

    if-eqz p1, :cond_1

    iget-object p1, p1, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object p1, p1, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    sget-object v1, Lcom/miui/securityscan/model/manualitem/defaultapp/DefaultLauncherModel;->LAUNCHER_WHITE_LIST:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz p1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0

    :catch_0
    move-exception p1

    const-string v1, "DefaultLauncherModel"

    const-string v2, "isSafeLauncher"

    invoke-static {v1, v2, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_1
    return v0
.end method


# virtual methods
.method public getIndex()I
    .locals 1

    const/16 v0, 0xd

    return v0
.end method

.method protected initModel()V
    .locals 2

    sget-object v0, Lcom/miui/common/c$a;->a:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/miui/securityscan/model/manualitem/DefaultAppModel;->setDefaultPkgName(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/miui/securityscan/model/AbsModel;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f121414

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/miui/securityscan/model/manualitem/DefaultAppModel;->setTypeName(Ljava/lang/String;)V

    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "android.intent.action.MAIN"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    const-string v1, "android.intent.category.HOME"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addCategory(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/miui/securityscan/model/manualitem/DefaultAppModel;->setIntentFilter(Landroid/content/IntentFilter;)V

    return-void
.end method

.method public scan()V
    .locals 1

    invoke-static {}, Lx4/t;->u()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lcom/miui/securityscan/model/AbsModel;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/miui/securityscan/model/manualitem/defaultapp/DefaultLauncherModel;->isSafeLauncher(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-super {p0}, Lcom/miui/securityscan/model/manualitem/DefaultAppModel;->scan()V

    goto :goto_1

    :cond_1
    :goto_0
    sget-object v0, Lcom/miui/securityscan/model/AbsModel$State;->SAFE:Lcom/miui/securityscan/model/AbsModel$State;

    invoke-virtual {p0, v0}, Lcom/miui/securityscan/model/AbsModel;->setSafe(Lcom/miui/securityscan/model/AbsModel$State;)V

    :goto_1
    return-void
.end method
