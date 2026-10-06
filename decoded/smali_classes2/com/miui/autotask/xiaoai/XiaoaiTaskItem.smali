.class public abstract Lcom/miui/autotask/xiaoai/XiaoaiTaskItem;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field public code:I

.field private uuid:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public canDelete()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public getCode()I
    .locals 1

    iget v0, p0, Lcom/miui/autotask/xiaoai/XiaoaiTaskItem;->code:I

    return v0
.end method

.method public abstract getGreyIconResId()I
.end method

.method public abstract getIconResId()I
.end method

.method public abstract getKey()Ljava/lang/String;
.end method

.method protected getString(I)Ljava/lang/String;
    .locals 1

    invoke-static {}, Lcom/miui/securitycenter/Application;->A()Lcom/miui/securitycenter/Application;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public abstract getSummary()Ljava/lang/String;
.end method

.method public abstract getTitle()Ljava/lang/String;
.end method

.method public abstract getTranIconResId()I
.end method

.method public getUUID()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/miui/autotask/xiaoai/XiaoaiTaskItem;->uuid:Ljava/lang/String;

    return-object v0
.end method

.method public isCheck()Z
    .locals 2

    iget v0, p0, Lcom/miui/autotask/xiaoai/XiaoaiTaskItem;->code:I

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public abstract isSetFinish()Z
.end method

.method public meetTheCondition()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public performOperation()V
    .locals 0

    return-void
.end method

.method public resetOperation()V
    .locals 0

    return-void
.end method

.method public setCheck(Z)V
    .locals 0

    if-eqz p1, :cond_0

    const/4 p1, 0x4

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    iput p1, p0, Lcom/miui/autotask/xiaoai/XiaoaiTaskItem;->code:I

    return-void
.end method

.method public setCode(I)V
    .locals 0

    iput p1, p0, Lcom/miui/autotask/xiaoai/XiaoaiTaskItem;->code:I

    return-void
.end method

.method public setUUID(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/autotask/xiaoai/XiaoaiTaskItem;->uuid:Ljava/lang/String;

    return-void
.end method
