.class public abstract Lcom/miui/securityscan/model/AbsModel;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/securityscan/model/AbsModel$AbsModelDisplayListener;,
        Lcom/miui/securityscan/model/AbsModel$State;
    }
.end annotation


# static fields
.field public static final REQUEST_CODE_AUTO_ITEM:I = 0x65

.field public static final REQUEST_CODE_GARBAGE_CLEAN:I = 0x67

.field public static final REQUEST_CODE_MANUAL_ITEM:I = 0x64


# instance fields
.field private checked:Z

.field private delayOptimize:Z

.field private firstAidEventHandler:Landroid/os/Handler;

.field private handler:Landroid/os/Handler;

.field private isFixed:Z

.field private itemKey:Ljava/lang/String;

.field private onAbsModelDisplayListener:Lcom/miui/securityscan/model/AbsModel$AbsModelDisplayListener;

.field private safeState:Lcom/miui/securityscan/model/AbsModel$State;

.field private scanHide:Z

.field private score:Ljava/lang/Integer;

.field private trackIgnoreStr:Ljava/lang/String;

.field private trackStr:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/Integer;)V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/miui/securityscan/model/AbsModel;->delayOptimize:Z

    iput-boolean v0, p0, Lcom/miui/securityscan/model/AbsModel;->scanHide:Z

    sget-object v1, Lcom/miui/securityscan/model/AbsModel$State;->SAFE:Lcom/miui/securityscan/model/AbsModel$State;

    iput-object v1, p0, Lcom/miui/securityscan/model/AbsModel;->safeState:Lcom/miui/securityscan/model/AbsModel$State;

    new-instance v1, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v1, p0, Lcom/miui/securityscan/model/AbsModel;->handler:Landroid/os/Handler;

    iput-boolean v0, p0, Lcom/miui/securityscan/model/AbsModel;->isFixed:Z

    iput-boolean v0, p0, Lcom/miui/securityscan/model/AbsModel;->checked:Z

    iput-object p1, p0, Lcom/miui/securityscan/model/AbsModel;->itemKey:Ljava/lang/String;

    iput-object p2, p0, Lcom/miui/securityscan/model/AbsModel;->score:Ljava/lang/Integer;

    return-void
.end method


# virtual methods
.method public getButtonTitle()Ljava/lang/String;
    .locals 1

    const-string v0, ""

    return-object v0
.end method

.method protected getContext()Landroid/content/Context;
    .locals 1

    invoke-static {}, Lcom/miui/securitycenter/Application;->A()Lcom/miui/securitycenter/Application;

    move-result-object v0

    return-object v0
.end method

.method public abstract getDesc()Ljava/lang/String;
.end method

.method public getFirstAidEventHandler()Landroid/os/Handler;
    .locals 1

    iget-object v0, p0, Lcom/miui/securityscan/model/AbsModel;->firstAidEventHandler:Landroid/os/Handler;

    return-object v0
.end method

.method public abstract getIndex()I
.end method

.method public getItemKey()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/miui/securityscan/model/AbsModel;->itemKey:Ljava/lang/String;

    return-object v0
.end method

.method public getOnAbsModelDisplayListener()Lcom/miui/securityscan/model/AbsModel$AbsModelDisplayListener;
    .locals 1

    iget-object v0, p0, Lcom/miui/securityscan/model/AbsModel;->onAbsModelDisplayListener:Lcom/miui/securityscan/model/AbsModel$AbsModelDisplayListener;

    return-object v0
.end method

.method public getScore()I
    .locals 1

    iget-object v0, p0, Lcom/miui/securityscan/model/AbsModel;->score:Ljava/lang/Integer;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public getSpannedTitle()Landroid/text/Spanned;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public abstract getSummary()Ljava/lang/String;
.end method

.method public abstract getTitle()Ljava/lang/String;
.end method

.method public getTrackIgnoreStr()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/miui/securityscan/model/AbsModel;->trackIgnoreStr:Ljava/lang/String;

    return-object v0
.end method

.method public getTrackStr()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/miui/securityscan/model/AbsModel;->trackStr:Ljava/lang/String;

    return-object v0
.end method

.method public ignore()V
    .locals 0

    return-void
.end method

.method public isChecked()Z
    .locals 1

    iget-boolean v0, p0, Lcom/miui/securityscan/model/AbsModel;->checked:Z

    return v0
.end method

.method public isDelayOptimized()Z
    .locals 1

    iget-boolean v0, p0, Lcom/miui/securityscan/model/AbsModel;->delayOptimize:Z

    return v0
.end method

.method public isFixed()Z
    .locals 1

    iget-boolean v0, p0, Lcom/miui/securityscan/model/AbsModel;->isFixed:Z

    return v0
.end method

.method public isSafe()Lcom/miui/securityscan/model/AbsModel$State;
    .locals 1

    iget-object v0, p0, Lcom/miui/securityscan/model/AbsModel;->safeState:Lcom/miui/securityscan/model/AbsModel$State;

    return-object v0
.end method

.method public isScanHide()Z
    .locals 1

    iget-boolean v0, p0, Lcom/miui/securityscan/model/AbsModel;->scanHide:Z

    return v0
.end method

.method public abstract optimize(Landroid/content/Context;)V
.end method

.method protected runOnUiThread(Ljava/lang/Runnable;)V
    .locals 1

    iget-object v0, p0, Lcom/miui/securityscan/model/AbsModel;->handler:Landroid/os/Handler;

    invoke-virtual {v0, p1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method protected runOnUiThreadDelay(Ljava/lang/Runnable;J)V
    .locals 1

    iget-object v0, p0, Lcom/miui/securityscan/model/AbsModel;->handler:Landroid/os/Handler;

    invoke-virtual {v0, p1, p2, p3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method public abstract scan()V
.end method

.method public setChecked(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/miui/securityscan/model/AbsModel;->checked:Z

    return-void
.end method

.method protected setDelayOptimized(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/miui/securityscan/model/AbsModel;->delayOptimize:Z

    return-void
.end method

.method public setFirstAidEventHandler(Landroid/os/Handler;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/securityscan/model/AbsModel;->firstAidEventHandler:Landroid/os/Handler;

    return-void
.end method

.method public setFixed(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/miui/securityscan/model/AbsModel;->isFixed:Z

    return-void
.end method

.method public setOnAbsModelDisplayListener(Lcom/miui/securityscan/model/AbsModel$AbsModelDisplayListener;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/securityscan/model/AbsModel;->onAbsModelDisplayListener:Lcom/miui/securityscan/model/AbsModel$AbsModelDisplayListener;

    return-void
.end method

.method public setSafe(Lcom/miui/securityscan/model/AbsModel$State;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/securityscan/model/AbsModel;->safeState:Lcom/miui/securityscan/model/AbsModel$State;

    return-void
.end method

.method protected setScanHide(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/miui/securityscan/model/AbsModel;->scanHide:Z

    return-void
.end method

.method public setTrackIgnoreStr(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/securityscan/model/AbsModel;->trackIgnoreStr:Ljava/lang/String;

    return-void
.end method

.method protected setTrackStr(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/securityscan/model/AbsModel;->trackStr:Ljava/lang/String;

    return-void
.end method
