.class public Lcom/miui/securityscan/model/system/ChainStartModel;
.super Lcom/miui/securityscan/model/AbsModel;
.source "SourceFile"


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/Integer;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/miui/securityscan/model/AbsModel;-><init>(Ljava/lang/String;Ljava/lang/Integer;)V

    return-void
.end method


# virtual methods
.method public getDesc()Ljava/lang/String;
    .locals 2

    invoke-virtual {p0}, Lcom/miui/securityscan/model/AbsModel;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f120c8e

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getIndex()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getSummary()Ljava/lang/String;
    .locals 1

    const-string v0, ""

    return-object v0
.end method

.method public getTitle()Ljava/lang/String;
    .locals 2

    invoke-virtual {p0}, Lcom/miui/securityscan/model/AbsModel;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f1219fc

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public optimize(Landroid/content/Context;)V
    .locals 0

    return-void
.end method

.method public scan()V
    .locals 4

    invoke-virtual {p0}, Lcom/miui/securityscan/model/AbsModel;->isSafe()Lcom/miui/securityscan/model/AbsModel$State;

    move-result-object v0

    sget-object v1, Lcom/miui/securityscan/model/AbsModel$State;->SAFE:Lcom/miui/securityscan/model/AbsModel$State;

    if-ne v0, v1, :cond_0

    new-instance v0, Lzf/e;

    invoke-virtual {p0}, Lcom/miui/securityscan/model/system/ChainStartModel;->getTitle()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lzf/e;-><init>(Ljava/lang/String;Z)V

    invoke-static {}, Lzf/f;->c()Lzf/f;

    move-result-object v1

    sget-object v2, Lzf/f$a;->b:Lzf/f$a;

    invoke-virtual {p0}, Lcom/miui/securityscan/model/AbsModel;->getItemKey()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3, v0}, Lzf/f;->d(Lzf/f$a;Ljava/lang/String;Lzf/e;)V

    :cond_0
    return-void
.end method
