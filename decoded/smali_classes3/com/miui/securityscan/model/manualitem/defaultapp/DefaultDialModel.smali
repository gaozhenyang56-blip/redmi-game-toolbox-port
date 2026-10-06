.class public Lcom/miui/securityscan/model/manualitem/defaultapp/DefaultDialModel;
.super Lcom/miui/securityscan/model/manualitem/DefaultAppModel;
.source "SourceFile"


# static fields
.field private static final TAG:Ljava/lang/String; = "DefaultDialModel"


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/Integer;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/miui/securityscan/model/manualitem/DefaultAppModel;-><init>(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string p1, "default_dial"

    invoke-virtual {p0, p1}, Lcom/miui/securityscan/model/AbsModel;->setTrackStr(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public getDesc()Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public getIndex()I
    .locals 1

    const/16 v0, 0xe

    return v0
.end method

.method protected initModel()V
    .locals 4

    invoke-virtual {p0}, Lcom/miui/securityscan/model/AbsModel;->getContext()Landroid/content/Context;

    move-result-object v0

    sget-boolean v1, Lmiui/os/Build;->IS_INTERNATIONAL_BUILD:Z

    const-string v2, "com.google.android.dialer"

    const-string v3, "com.android.contacts"

    if-eqz v1, :cond_0

    invoke-static {v0, v2}, Lx4/g1;->a(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    move-object v2, v3

    :goto_0
    invoke-virtual {p0, v2}, Lcom/miui/securityscan/model/manualitem/DefaultAppModel;->setDefaultPkgName(Ljava/lang/String;)V

    const v1, 0x7f121411

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/miui/securityscan/model/manualitem/DefaultAppModel;->setTypeName(Ljava/lang/String;)V

    return-void
.end method

.method public optimize(Landroid/content/Context;)V
    .locals 1

    invoke-virtual {p0}, Lcom/miui/securityscan/model/AbsModel;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p0}, Lcom/miui/securityscan/model/manualitem/DefaultAppModel;->getDefaultPkgName()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lx4/x;->e(Landroid/content/Context;Ljava/lang/String;)V

    return-void
.end method

.method public scan()V
    .locals 3

    sget-boolean v0, Lmiui/util/OldmanUtil;->IS_ELDER_MODE:Z

    if-nez v0, :cond_2

    invoke-static {}, Lx4/a0;->y()Z

    move-result v0

    if-nez v0, :cond_2

    invoke-static {}, Lx4/t;->u()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/miui/securityscan/model/AbsModel;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lx4/a0;->E(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_3

    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const-string v1, "android.intent.action.DIAL"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "android.intent.action.VIEW"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "android.intent.category.DEFAULT"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addCategory(Ljava/lang/String;)V

    const-string v1, "tel"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/miui/securityscan/model/AbsModel;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {p0}, Lcom/miui/securityscan/model/manualitem/DefaultAppModel;->getDefaultPkgName()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v0, v2}, Lx4/x;->d(Landroid/content/Context;Landroid/content/IntentFilter;Ljava/lang/String;)Z

    move-result v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "isDefault = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "DefaultDialModel"

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v0, :cond_1

    goto :goto_0

    :cond_1
    sget-object v0, Lcom/miui/securityscan/model/AbsModel$State;->DANGER:Lcom/miui/securityscan/model/AbsModel$State;

    goto :goto_1

    :cond_2
    :goto_0
    sget-object v0, Lcom/miui/securityscan/model/AbsModel$State;->SAFE:Lcom/miui/securityscan/model/AbsModel$State;

    :goto_1
    invoke-virtual {p0, v0}, Lcom/miui/securityscan/model/AbsModel;->setSafe(Lcom/miui/securityscan/model/AbsModel$State;)V

    :cond_3
    return-void
.end method
