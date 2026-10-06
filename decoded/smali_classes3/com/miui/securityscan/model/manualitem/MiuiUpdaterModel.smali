.class public Lcom/miui/securityscan/model/manualitem/MiuiUpdaterModel;
.super Lcom/miui/securityscan/model/AbsModel;
.source "SourceFile"


# static fields
.field private static final MIUI_UPDATE_KEY:Ljava/lang/String; = "MIUI_UPDATE"

.field private static final UPDATER_MAIN_ACTIVITY:Ljava/lang/String; = "com.android.updater.MainActivity"

.field private static final UPDATER_PKGNAME:Ljava/lang/String; = "com.android.updater"


# instance fields
.field private newVersion:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/Integer;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/miui/securityscan/model/AbsModel;-><init>(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string p1, ""

    iput-object p1, p0, Lcom/miui/securityscan/model/manualitem/MiuiUpdaterModel;->newVersion:Ljava/lang/String;

    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Lcom/miui/securityscan/model/AbsModel;->setDelayOptimized(Z)V

    const-string p1, "miui_update"

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

    const/4 v0, 0x1

    return v0
.end method

.method public getSummary()Ljava/lang/String;
    .locals 4

    invoke-virtual {p0}, Lcom/miui/securityscan/model/AbsModel;->getContext()Landroid/content/Context;

    move-result-object v0

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    iget-object v2, p0, Lcom/miui/securityscan/model/manualitem/MiuiUpdaterModel;->newVersion:Ljava/lang/String;

    const/4 v3, 0x0

    aput-object v2, v1, v3

    const v2, 0x7f1218c9

    invoke-virtual {v0, v2, v1}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getTitle()Ljava/lang/String;
    .locals 2

    invoke-virtual {p0}, Lcom/miui/securityscan/model/AbsModel;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f121a34

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public optimize(Landroid/content/Context;)V
    .locals 4

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    new-instance v1, Landroid/content/ComponentName;

    const-string v2, "com.android.updater"

    const-string v3, "com.android.updater.MainActivity"

    invoke-direct {v1, v2, v3}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    const/16 v1, 0x64

    invoke-static {p1, v0, v1}, Lx4/f1;->S(Landroid/content/Context;Landroid/content/Intent;I)Z

    move-result v0

    if-nez v0, :cond_0

    const v0, 0x7f120210

    invoke-static {p1, v0}, Lx4/y1;->j(Landroid/content/Context;I)V

    :cond_0
    return-void
.end method

.method public scan()V
    .locals 4

    invoke-virtual {p0}, Lcom/miui/securityscan/model/AbsModel;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lx4/a0;->B(Landroid/content/Context;)Z

    move-result v0

    invoke-static {}, Lpf/g;->m()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/miui/securityscan/model/manualitem/MiuiUpdaterModel;->newVersion:Ljava/lang/String;

    const-string v1, "MIUI_UPDATE"

    invoke-static {v1}, Leg/p;->d(Ljava/lang/String;)Z

    move-result v1

    if-eqz v0, :cond_0

    if-nez v1, :cond_0

    sget-object v0, Lcom/miui/securityscan/model/AbsModel$State;->DANGER:Lcom/miui/securityscan/model/AbsModel$State;

    goto :goto_0

    :cond_0
    sget-object v0, Lcom/miui/securityscan/model/AbsModel$State;->SAFE:Lcom/miui/securityscan/model/AbsModel$State;

    :goto_0
    invoke-virtual {p0, v0}, Lcom/miui/securityscan/model/AbsModel;->setSafe(Lcom/miui/securityscan/model/AbsModel$State;)V

    invoke-virtual {p0}, Lcom/miui/securityscan/model/AbsModel;->isSafe()Lcom/miui/securityscan/model/AbsModel$State;

    move-result-object v0

    sget-object v1, Lcom/miui/securityscan/model/AbsModel$State;->SAFE:Lcom/miui/securityscan/model/AbsModel$State;

    if-ne v0, v1, :cond_1

    new-instance v0, Lzf/e;

    invoke-virtual {p0}, Lcom/miui/securityscan/model/AbsModel;->getContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f121a35

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lzf/e;-><init>(Ljava/lang/String;Z)V

    invoke-static {}, Lzf/f;->c()Lzf/f;

    move-result-object v1

    sget-object v2, Lzf/f$a;->c:Lzf/f$a;

    invoke-virtual {p0}, Lcom/miui/securityscan/model/AbsModel;->getItemKey()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3, v0}, Lzf/f;->d(Lzf/f$a;Ljava/lang/String;Lzf/e;)V

    goto :goto_1

    :cond_1
    invoke-static {}, Lzf/f;->c()Lzf/f;

    move-result-object v0

    sget-object v1, Lzf/f$a;->c:Lzf/f$a;

    invoke-virtual {v0, v1}, Lzf/f;->b(Lzf/f$a;)Ljava/util/Map;

    move-result-object v0

    invoke-virtual {p0}, Lcom/miui/securityscan/model/AbsModel;->getItemKey()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-virtual {p0}, Lcom/miui/securityscan/model/AbsModel;->getItemKey()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_2
    :goto_1
    return-void
.end method
