.class public abstract Lcom/miui/securityscan/model/manualitem/DefaultAppModel;
.super Lcom/miui/securityscan/model/AbsModel;
.source "SourceFile"


# static fields
.field public static final MATCH_ALL:I = 0x20000


# instance fields
.field private defaultPkgName:Ljava/lang/String;

.field private filter:Landroid/content/IntentFilter;

.field private final mPkgWhiteList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private typeName:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/Integer;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/miui/securityscan/model/AbsModel;-><init>(Ljava/lang/String;Ljava/lang/Integer;)V

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/miui/securityscan/model/manualitem/DefaultAppModel;->mPkgWhiteList:Ljava/util/List;

    invoke-virtual {p0}, Lcom/miui/securityscan/model/manualitem/DefaultAppModel;->initModel()V

    return-void
.end method

.method public static getIntent(Landroid/content/IntentFilter;)Landroid/content/Intent;
    .locals 5

    new-instance v0, Landroid/content/Intent;

    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Landroid/content/IntentFilter;->getAction(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Landroid/content/IntentFilter;->countCategories()I

    move-result v2

    if-lez v2, :cond_0

    invoke-virtual {p0, v1}, Landroid/content/IntentFilter;->getCategory(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    invoke-virtual {p0, v1}, Landroid/content/IntentFilter;->getCategory(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    :cond_0
    invoke-virtual {p0}, Landroid/content/IntentFilter;->countDataSchemes()I

    move-result v2

    const/4 v3, 0x0

    if-lez v2, :cond_1

    invoke-virtual {p0, v1}, Landroid/content/IntentFilter;->getDataScheme(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, v1}, Landroid/content/IntentFilter;->getDataScheme(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ":"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    goto :goto_0

    :cond_1
    move-object v2, v3

    :goto_0
    invoke-virtual {p0}, Landroid/content/IntentFilter;->countDataTypes()I

    move-result v4

    if-lez v4, :cond_2

    invoke-virtual {p0, v1}, Landroid/content/IntentFilter;->getDataType(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_2

    invoke-virtual {p0, v1}, Landroid/content/IntentFilter;->getDataType(I)Ljava/lang/String;

    move-result-object v3

    const-string p0, "\\"

    invoke-virtual {v3, p0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p0

    if-nez p0, :cond_2

    const-string p0, "/"

    invoke-virtual {v3, p0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p0

    if-nez p0, :cond_2

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "/*"

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    :cond_2
    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    return-object v0
.end method

.method private static isAppNotInstalled(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 2

    const/4 v0, 0x1

    :try_start_0
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    return v0

    :cond_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p0

    const/4 v1, 0x0

    invoke-virtual {p0, p1, v1}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    return v1

    :catch_0
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    return v0
.end method

.method public static isDefaultMiuiApp(Landroid/content/Context;Landroid/content/IntentFilter;Ljava/lang/String;)Z
    .locals 1

    const/4 v0, 0x0

    invoke-static {p0, p1, p2, v0}, Lcom/miui/securityscan/model/manualitem/DefaultAppModel;->isDefaultMiuiApp(Landroid/content/Context;Landroid/content/IntentFilter;Ljava/lang/String;Ljava/util/List;)Z

    move-result p0

    return p0
.end method

.method public static isDefaultMiuiApp(Landroid/content/Context;Landroid/content/IntentFilter;Ljava/lang/String;Ljava/util/List;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Landroid/content/IntentFilter;",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)Z"
        }
    .end annotation

    const/4 v0, 0x1

    if-eqz p1, :cond_5

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_5

    invoke-static {p0, p2}, Lcom/miui/securityscan/model/manualitem/DefaultAppModel;->isAppNotInstalled(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p0

    invoke-static {p1}, Lcom/miui/securityscan/model/manualitem/DefaultAppModel;->getIntent(Landroid/content/IntentFilter;)Landroid/content/Intent;

    move-result-object p1

    const/4 v1, 0x0

    invoke-virtual {p0, p1, v1}, Landroid/content/pm/PackageManager;->resolveActivity(Landroid/content/Intent;I)Landroid/content/pm/ResolveInfo;

    move-result-object p0

    if-nez p0, :cond_1

    return v0

    :cond_1
    iget-object p0, p0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object p0, p0, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    invoke-virtual {p0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_2

    const-string p1, "android"

    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_2

    const-string p1, "com.android.intentresolver"

    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_3

    :cond_2
    move v1, v0

    :cond_3
    if-nez v1, :cond_4

    if-eqz p3, :cond_4

    invoke-interface {p3}, Ljava/util/List;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_4

    invoke-interface {p3, p0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :cond_4
    return v1

    :catch_0
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    return v0

    :cond_5
    :goto_0
    const-string p0, "isDefaultMiuiApp"

    const-string p1, "ri == null "

    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v0
.end method

.method private static setDefaultMiuiApp(Landroid/content/Context;Landroid/content/IntentFilter;Ljava/lang/String;)V
    .locals 10

    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p0

    invoke-static {p1}, Lcom/miui/securityscan/model/manualitem/DefaultAppModel;->getIntent(Landroid/content/IntentFilter;)Landroid/content/Intent;

    move-result-object v0

    const/high16 v1, 0x20000

    invoke-virtual {p0, v0, v1}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    new-array v1, v1, [Landroid/content/ComponentName;

    const/4 v2, 0x0

    const/4 v3, 0x0

    move v4, v2

    move v5, v4

    :goto_0
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v6

    if-ge v4, v6, :cond_2

    invoke-interface {v0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/content/pm/ResolveInfo;

    new-instance v7, Landroid/content/ComponentName;

    iget-object v8, v6, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v9, v8, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    iget-object v8, v8, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-direct {v7, v9, v8}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v7, v1, v4

    iget v7, v6, Landroid/content/pm/ResolveInfo;->match:I

    if-le v7, v5, :cond_0

    move v5, v7

    :cond_0
    iget-object v7, v6, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v7, v7, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v7, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_1

    move-object v3, v6

    :cond_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_2
    invoke-static {p1}, Lcom/miui/securityscan/model/manualitem/DefaultAppModel;->getIntent(Landroid/content/IntentFilter;)Landroid/content/Intent;

    move-result-object p2

    invoke-virtual {p0, p2, v2}, Landroid/content/pm/PackageManager;->resolveActivity(Landroid/content/Intent;I)Landroid/content/pm/ResolveInfo;

    move-result-object p2

    iget-object p2, p2, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object p2, p2, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    invoke-virtual {p0, p2}, Landroid/content/pm/PackageManager;->clearPackagePreferredActivities(Ljava/lang/String;)V

    if-eqz v3, :cond_3

    invoke-static {p1, p0, v3, v1, v5}, Lcom/miui/securityscan/model/manualitem/DefaultAppModel;->setPreferredApp(Landroid/content/IntentFilter;Landroid/content/pm/PackageManager;Landroid/content/pm/ResolveInfo;[Landroid/content/ComponentName;I)V

    :cond_3
    return-void
.end method

.method private static setPreferredApp(Landroid/content/IntentFilter;Landroid/content/pm/PackageManager;Landroid/content/pm/ResolveInfo;[Landroid/content/ComponentName;I)V
    .locals 2

    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0, p0}, Landroid/content/IntentFilter;-><init>(Landroid/content/IntentFilter;)V

    new-instance p0, Landroid/content/ComponentName;

    iget-object p2, p2, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v1, p2, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    iget-object p2, p2, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-direct {p0, v1, p2}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p1, v0, p4, p3, p0}, Landroid/content/pm/PackageManager;->addPreferredActivity(Landroid/content/IntentFilter;I[Landroid/content/ComponentName;Landroid/content/ComponentName;)V

    return-void
.end method


# virtual methods
.method public addAllPkgWhiteList(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/miui/securityscan/model/manualitem/DefaultAppModel;->mPkgWhiteList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    return-void
.end method

.method public addPkgWhiteList(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/miui/securityscan/model/manualitem/DefaultAppModel;->mPkgWhiteList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method protected getDefaultPkgName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/miui/securityscan/model/manualitem/DefaultAppModel;->defaultPkgName:Ljava/lang/String;

    return-object v0
.end method

.method public getDesc()Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method protected getIntentFilter()Landroid/content/IntentFilter;
    .locals 1

    iget-object v0, p0, Lcom/miui/securityscan/model/manualitem/DefaultAppModel;->filter:Landroid/content/IntentFilter;

    return-object v0
.end method

.method public getPkgWhiteList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/miui/securityscan/model/manualitem/DefaultAppModel;->mPkgWhiteList:Ljava/util/List;

    return-object v0
.end method

.method public getSummary()Ljava/lang/String;
    .locals 4

    invoke-virtual {p0}, Lcom/miui/securityscan/model/AbsModel;->getContext()Landroid/content/Context;

    move-result-object v0

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    iget-object v2, p0, Lcom/miui/securityscan/model/manualitem/DefaultAppModel;->typeName:Ljava/lang/String;

    const/4 v3, 0x0

    aput-object v2, v1, v3

    const v2, 0x7f1218bb

    invoke-virtual {v0, v2, v1}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getTitle()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/miui/securityscan/model/manualitem/DefaultAppModel;->typeName:Ljava/lang/String;

    return-object v0
.end method

.method protected getTypeName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/miui/securityscan/model/manualitem/DefaultAppModel;->typeName:Ljava/lang/String;

    return-object v0
.end method

.method protected abstract initModel()V
.end method

.method public optimize(Landroid/content/Context;)V
    .locals 2

    invoke-virtual {p0}, Lcom/miui/securityscan/model/AbsModel;->getContext()Landroid/content/Context;

    move-result-object p1

    iget-object v0, p0, Lcom/miui/securityscan/model/manualitem/DefaultAppModel;->filter:Landroid/content/IntentFilter;

    invoke-virtual {p0}, Lcom/miui/securityscan/model/manualitem/DefaultAppModel;->getDefaultPkgName()Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, v0, v1}, Lcom/miui/securityscan/model/manualitem/DefaultAppModel;->setDefaultMiuiApp(Landroid/content/Context;Landroid/content/IntentFilter;Ljava/lang/String;)V

    sget-object p1, Lcom/miui/securityscan/model/AbsModel$State;->SAFE:Lcom/miui/securityscan/model/AbsModel$State;

    invoke-virtual {p0, p1}, Lcom/miui/securityscan/model/AbsModel;->setSafe(Lcom/miui/securityscan/model/AbsModel$State;)V

    return-void
.end method

.method public scan()V
    .locals 4

    invoke-static {}, Lx4/t;->u()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lcom/miui/securityscan/model/AbsModel;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/securityscan/model/manualitem/DefaultAppModel;->filter:Landroid/content/IntentFilter;

    iget-object v2, p0, Lcom/miui/securityscan/model/manualitem/DefaultAppModel;->defaultPkgName:Ljava/lang/String;

    iget-object v3, p0, Lcom/miui/securityscan/model/manualitem/DefaultAppModel;->mPkgWhiteList:Ljava/util/List;

    invoke-static {v0, v1, v2, v3}, Lcom/miui/securityscan/model/manualitem/DefaultAppModel;->isDefaultMiuiApp(Landroid/content/Context;Landroid/content/IntentFilter;Ljava/lang/String;Ljava/util/List;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    if-eqz v0, :cond_2

    sget-object v0, Lcom/miui/securityscan/model/AbsModel$State;->SAFE:Lcom/miui/securityscan/model/AbsModel$State;

    goto :goto_2

    :cond_2
    sget-object v0, Lcom/miui/securityscan/model/AbsModel$State;->DANGER:Lcom/miui/securityscan/model/AbsModel$State;

    :goto_2
    invoke-virtual {p0, v0}, Lcom/miui/securityscan/model/AbsModel;->setSafe(Lcom/miui/securityscan/model/AbsModel$State;)V

    return-void
.end method

.method protected setDefaultPkgName(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/securityscan/model/manualitem/DefaultAppModel;->defaultPkgName:Ljava/lang/String;

    return-void
.end method

.method protected setIntentFilter(Landroid/content/IntentFilter;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/securityscan/model/manualitem/DefaultAppModel;->filter:Landroid/content/IntentFilter;

    return-void
.end method

.method protected setTypeName(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/securityscan/model/manualitem/DefaultAppModel;->typeName:Ljava/lang/String;

    return-void
.end method
