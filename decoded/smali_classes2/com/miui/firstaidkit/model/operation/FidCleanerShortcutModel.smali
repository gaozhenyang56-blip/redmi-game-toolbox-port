.class public Lcom/miui/firstaidkit/model/operation/FidCleanerShortcutModel;
.super Lcom/miui/securityscan/model/manualitem/CleanerShortcutModel;
.source "SourceFile"


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/Integer;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/miui/securityscan/model/manualitem/CleanerShortcutModel;-><init>(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string p1, "fid"

    iput-object p1, p0, Lcom/miui/securityscan/model/manualitem/CleanerShortcutModel;->stat:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getButtonTitle()Ljava/lang/String;
    .locals 2

    invoke-virtual {p0}, Lcom/miui/securityscan/model/AbsModel;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f12052c

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected notifyOptimize(Landroid/content/Context;)V
    .locals 2

    invoke-virtual {p0}, Lcom/miui/securityscan/model/AbsModel;->getFirstAidEventHandler()Landroid/os/Handler;

    move-result-object v0

    if-eqz v0, :cond_0

    const/16 v1, 0xc9

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    :cond_0
    const v0, 0x7f120534

    invoke-static {p1, v0}, Lx4/y1;->j(Landroid/content/Context;I)V

    return-void
.end method
