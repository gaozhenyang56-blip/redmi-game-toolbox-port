.class public Lcom/miui/securityscan/model/manualitem/defaultapp/DefaultMessagingModel;
.super Lcom/miui/securityscan/model/manualitem/DefaultAppModel;
.source "SourceFile"


# static fields
.field private static final TAG:Ljava/lang/String; = "DefaultMessagingModel"


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/Integer;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/miui/securityscan/model/manualitem/DefaultAppModel;-><init>(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string p1, "default_messaging"

    invoke-virtual {p0, p1}, Lcom/miui/securityscan/model/AbsModel;->setTrackStr(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public getIndex()I
    .locals 1

    const/16 v0, 0xf

    return v0
.end method

.method protected initModel()V
    .locals 4

    invoke-virtual {p0}, Lcom/miui/securityscan/model/AbsModel;->getContext()Landroid/content/Context;

    move-result-object v0

    sget-boolean v1, Lmiui/os/Build;->IS_INTERNATIONAL_BUILD:Z

    const-string v2, "com.google.android.apps.messaging"

    const-string v3, "com.android.mms"

    if-eqz v1, :cond_0

    invoke-static {v0, v2}, Lx4/g1;->a(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    move-object v1, v2

    goto :goto_0

    :cond_0
    move-object v1, v3

    :goto_0
    invoke-virtual {p0, v1}, Lcom/miui/securityscan/model/manualitem/DefaultAppModel;->setDefaultPkgName(Ljava/lang/String;)V

    const v1, 0x7f121415

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/miui/securityscan/model/manualitem/DefaultAppModel;->setTypeName(Ljava/lang/String;)V

    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "android.intent.action.SENDTO"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    const-string v1, "smsto"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/miui/securityscan/model/manualitem/DefaultAppModel;->setIntentFilter(Landroid/content/IntentFilter;)V

    invoke-virtual {p0, v2}, Lcom/miui/securityscan/model/manualitem/DefaultAppModel;->addPkgWhiteList(Ljava/lang/String;)V

    invoke-virtual {p0, v3}, Lcom/miui/securityscan/model/manualitem/DefaultAppModel;->addPkgWhiteList(Ljava/lang/String;)V

    return-void
.end method

.method public optimize(Landroid/content/Context;)V
    .locals 7

    const-string p1, "DefaultMessagingModel"

    :try_start_0
    const-string v0, "com.android.internal.telephony.SmsApplication"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    const-string v1, "setDefaultApplication"

    const/4 v2, 0x2

    new-array v3, v2, [Ljava/lang/Class;

    const-class v4, Ljava/lang/String;

    const/4 v5, 0x0

    aput-object v4, v3, v5

    const-class v4, Landroid/content/Context;

    const/4 v6, 0x1

    aput-object v4, v3, v6

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {p0}, Lcom/miui/securityscan/model/manualitem/DefaultAppModel;->getDefaultPkgName()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v5

    invoke-virtual {p0}, Lcom/miui/securityscan/model/AbsModel;->getContext()Landroid/content/Context;

    move-result-object v4

    aput-object v4, v2, v6

    invoke-static {p1, v0, v1, v3, v2}, Lbh/e;->f(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "optimize exception!"

    invoke-static {p1, v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    sget-object p1, Lcom/miui/securityscan/model/AbsModel$State;->SAFE:Lcom/miui/securityscan/model/AbsModel$State;

    invoke-virtual {p0, p1}, Lcom/miui/securityscan/model/AbsModel;->setSafe(Lcom/miui/securityscan/model/AbsModel$State;)V

    return-void
.end method

.method public scan()V
    .locals 3

    sget-boolean v0, Lmiui/util/OldmanUtil;->IS_ELDER_MODE:Z

    if-nez v0, :cond_3

    invoke-static {}, Lx4/a0;->y()Z

    move-result v0

    if-nez v0, :cond_3

    invoke-static {}, Lx4/t;->u()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/miui/securityscan/model/AbsModel;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lx4/a0;->E(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-virtual {p0}, Lcom/miui/securityscan/model/AbsModel;->getContext()Landroid/content/Context;

    move-result-object v0

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/miui/appmanager/AppManageUtils;->A(Landroid/content/Context;Z)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "SmsApplication get currentSmsPkg : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "DefaultMessagingModel"

    invoke-static {v2, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_2

    invoke-virtual {p0}, Lcom/miui/securityscan/model/manualitem/DefaultAppModel;->getDefaultPkgName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    invoke-virtual {p0}, Lcom/miui/securityscan/model/manualitem/DefaultAppModel;->getPkgWhiteList()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_0

    :cond_1
    sget-object v0, Lcom/miui/securityscan/model/AbsModel$State;->DANGER:Lcom/miui/securityscan/model/AbsModel$State;

    goto :goto_1

    :cond_2
    invoke-super {p0}, Lcom/miui/securityscan/model/manualitem/DefaultAppModel;->scan()V

    goto :goto_2

    :cond_3
    :goto_0
    sget-object v0, Lcom/miui/securityscan/model/AbsModel$State;->SAFE:Lcom/miui/securityscan/model/AbsModel$State;

    :goto_1
    invoke-virtual {p0, v0}, Lcom/miui/securityscan/model/AbsModel;->setSafe(Lcom/miui/securityscan/model/AbsModel$State;)V

    :cond_4
    :goto_2
    return-void
.end method
