.class public Lcom/miui/securityscan/model/manualitem/defaultapp/DefaultEmailModel;
.super Lcom/miui/securityscan/model/manualitem/DefaultAppModel;
.source "SourceFile"


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/Integer;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/miui/securityscan/model/manualitem/DefaultAppModel;-><init>(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string p1, "default_email"

    invoke-virtual {p0, p1}, Lcom/miui/securityscan/model/AbsModel;->setTrackStr(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public getIndex()I
    .locals 1

    const/16 v0, 0x14

    return v0
.end method

.method protected initModel()V
    .locals 3

    invoke-virtual {p0}, Lcom/miui/securityscan/model/AbsModel;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "com.android.email"

    invoke-static {v0, v1}, Lx4/g1;->a(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    :goto_0
    invoke-virtual {p0, v1}, Lcom/miui/securityscan/model/manualitem/DefaultAppModel;->setDefaultPkgName(Ljava/lang/String;)V

    goto :goto_1

    :cond_0
    const-string v1, "com.android.emailhd"

    invoke-static {v0, v1}, Lx4/g1;->a(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_0

    :cond_1
    :goto_1
    invoke-virtual {p0}, Lcom/miui/securityscan/model/AbsModel;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f121412

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/miui/securityscan/model/manualitem/DefaultAppModel;->setTypeName(Ljava/lang/String;)V

    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "android.intent.action.SENDTO"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    const-string v1, "mailto"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/miui/securityscan/model/manualitem/DefaultAppModel;->setIntentFilter(Landroid/content/IntentFilter;)V

    return-void
.end method

.method public scan()V
    .locals 1

    sget-boolean v0, Lmiui/os/Build;->IS_INTERNATIONAL_BUILD:Z

    if-eqz v0, :cond_0

    sget-object v0, Lcom/miui/securityscan/model/AbsModel$State;->SAFE:Lcom/miui/securityscan/model/AbsModel$State;

    invoke-virtual {p0, v0}, Lcom/miui/securityscan/model/AbsModel;->setSafe(Lcom/miui/securityscan/model/AbsModel$State;)V

    goto :goto_0

    :cond_0
    invoke-super {p0}, Lcom/miui/securityscan/model/manualitem/DefaultAppModel;->scan()V

    :goto_0
    return-void
.end method
