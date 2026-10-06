.class public Lcom/miui/networkassistant/traffic/correction/impl/MiuiTrafficCorrectionWrapper$WebCorrectListener;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/miui/networkassistant/traffic/correction/ITrafficCorrection$TrafficCorrectionListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/networkassistant/traffic/correction/impl/MiuiTrafficCorrectionWrapper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "WebCorrectListener"
.end annotation


# instance fields
.field private launchFrom:I

.field private mIsBackground:Z

.field private mType:I

.field private slotNum:I

.field final synthetic this$0:Lcom/miui/networkassistant/traffic/correction/impl/MiuiTrafficCorrectionWrapper;


# direct methods
.method public constructor <init>(Lcom/miui/networkassistant/traffic/correction/impl/MiuiTrafficCorrectionWrapper;ZIII)V
    .locals 0

    iput-object p1, p0, Lcom/miui/networkassistant/traffic/correction/impl/MiuiTrafficCorrectionWrapper$WebCorrectListener;->this$0:Lcom/miui/networkassistant/traffic/correction/impl/MiuiTrafficCorrectionWrapper;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean p2, p0, Lcom/miui/networkassistant/traffic/correction/impl/MiuiTrafficCorrectionWrapper$WebCorrectListener;->mIsBackground:Z

    iput p4, p0, Lcom/miui/networkassistant/traffic/correction/impl/MiuiTrafficCorrectionWrapper$WebCorrectListener;->mType:I

    iput p5, p0, Lcom/miui/networkassistant/traffic/correction/impl/MiuiTrafficCorrectionWrapper$WebCorrectListener;->slotNum:I

    iput p3, p0, Lcom/miui/networkassistant/traffic/correction/impl/MiuiTrafficCorrectionWrapper$WebCorrectListener;->launchFrom:I

    return-void
.end method


# virtual methods
.method public getSlotNum()I
    .locals 1

    iget v0, p0, Lcom/miui/networkassistant/traffic/correction/impl/MiuiTrafficCorrectionWrapper$WebCorrectListener;->slotNum:I

    return v0
.end method

.method public onTrafficCorrected(Lcom/miui/networkassistant/model/TrafficUsedStatus;)V
    .locals 9

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/miui/networkassistant/model/TrafficUsedStatus;->getReturnCode()I

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/miui/networkassistant/traffic/correction/impl/MiuiTrafficCorrectionWrapper$WebCorrectListener;->this$0:Lcom/miui/networkassistant/traffic/correction/impl/MiuiTrafficCorrectionWrapper;

    invoke-static {v0, p1}, Lcom/miui/networkassistant/traffic/correction/impl/MiuiTrafficCorrectionWrapper;->access$100(Lcom/miui/networkassistant/traffic/correction/impl/MiuiTrafficCorrectionWrapper;Lcom/miui/networkassistant/model/TrafficUsedStatus;)V

    iget-object v0, p0, Lcom/miui/networkassistant/traffic/correction/impl/MiuiTrafficCorrectionWrapper$WebCorrectListener;->this$0:Lcom/miui/networkassistant/traffic/correction/impl/MiuiTrafficCorrectionWrapper;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/miui/networkassistant/traffic/correction/impl/MiuiTrafficCorrectionWrapper;->access$200(Lcom/miui/networkassistant/traffic/correction/impl/MiuiTrafficCorrectionWrapper;Z)V

    iget v2, p0, Lcom/miui/networkassistant/traffic/correction/impl/MiuiTrafficCorrectionWrapper$WebCorrectListener;->slotNum:I

    iget v3, p0, Lcom/miui/networkassistant/traffic/correction/impl/MiuiTrafficCorrectionWrapper$WebCorrectListener;->launchFrom:I

    iget-boolean v4, p0, Lcom/miui/networkassistant/traffic/correction/impl/MiuiTrafficCorrectionWrapper$WebCorrectListener;->mIsBackground:Z

    iget v5, p0, Lcom/miui/networkassistant/traffic/correction/impl/MiuiTrafficCorrectionWrapper$WebCorrectListener;->mType:I

    iget-object v0, p0, Lcom/miui/networkassistant/traffic/correction/impl/MiuiTrafficCorrectionWrapper$WebCorrectListener;->this$0:Lcom/miui/networkassistant/traffic/correction/impl/MiuiTrafficCorrectionWrapper;

    invoke-static {v0}, Lcom/miui/networkassistant/traffic/correction/impl/MiuiTrafficCorrectionWrapper;->access$300(Lcom/miui/networkassistant/traffic/correction/impl/MiuiTrafficCorrectionWrapper;)Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/networkassistant/traffic/correction/impl/MiuiTrafficCorrectionWrapper$WebCorrectListener;->this$0:Lcom/miui/networkassistant/traffic/correction/impl/MiuiTrafficCorrectionWrapper;

    invoke-static {v1}, Lcom/miui/networkassistant/traffic/correction/impl/MiuiTrafficCorrectionWrapper;->access$400(Lcom/miui/networkassistant/traffic/correction/impl/MiuiTrafficCorrectionWrapper;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/miui/networkassistant/config/SimUserInfo;->getInstance(Landroid/content/Context;Ljava/lang/String;)Lcom/miui/networkassistant/config/SimUserInfo;

    move-result-object v8

    move-object v6, p1

    move-object v7, p1

    invoke-static/range {v2 .. v8}, Lcom/miui/networkassistant/utils/AnalyticsHelperNew;->trackOverallCorrectionResult(IIZILcom/miui/networkassistant/model/TrafficUsedStatus;Lcom/miui/networkassistant/model/TrafficUsedStatus;Lcom/miui/networkassistant/config/SimUserInfo;)V

    invoke-virtual {p1}, Lcom/miui/networkassistant/model/TrafficUsedStatus;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "WebTrafficCorrection"

    invoke-static {v0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_0
    iget v1, p0, Lcom/miui/networkassistant/traffic/correction/impl/MiuiTrafficCorrectionWrapper$WebCorrectListener;->slotNum:I

    iget v2, p0, Lcom/miui/networkassistant/traffic/correction/impl/MiuiTrafficCorrectionWrapper$WebCorrectListener;->launchFrom:I

    iget-boolean v3, p0, Lcom/miui/networkassistant/traffic/correction/impl/MiuiTrafficCorrectionWrapper$WebCorrectListener;->mIsBackground:Z

    iget v4, p0, Lcom/miui/networkassistant/traffic/correction/impl/MiuiTrafficCorrectionWrapper$WebCorrectListener;->mType:I

    const/4 v5, 0x0

    const/4 v6, 0x0

    iget-object p1, p0, Lcom/miui/networkassistant/traffic/correction/impl/MiuiTrafficCorrectionWrapper$WebCorrectListener;->this$0:Lcom/miui/networkassistant/traffic/correction/impl/MiuiTrafficCorrectionWrapper;

    invoke-static {p1}, Lcom/miui/networkassistant/traffic/correction/impl/MiuiTrafficCorrectionWrapper;->access$300(Lcom/miui/networkassistant/traffic/correction/impl/MiuiTrafficCorrectionWrapper;)Landroid/content/Context;

    move-result-object p1

    iget-object v0, p0, Lcom/miui/networkassistant/traffic/correction/impl/MiuiTrafficCorrectionWrapper$WebCorrectListener;->this$0:Lcom/miui/networkassistant/traffic/correction/impl/MiuiTrafficCorrectionWrapper;

    invoke-static {v0}, Lcom/miui/networkassistant/traffic/correction/impl/MiuiTrafficCorrectionWrapper;->access$400(Lcom/miui/networkassistant/traffic/correction/impl/MiuiTrafficCorrectionWrapper;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/miui/networkassistant/config/SimUserInfo;->getInstance(Landroid/content/Context;Ljava/lang/String;)Lcom/miui/networkassistant/config/SimUserInfo;

    move-result-object v7

    invoke-static/range {v1 .. v7}, Lcom/miui/networkassistant/utils/AnalyticsHelperNew;->trackOverallCorrectionResult(IIZILcom/miui/networkassistant/model/TrafficUsedStatus;Lcom/miui/networkassistant/model/TrafficUsedStatus;Lcom/miui/networkassistant/config/SimUserInfo;)V

    iget-object p1, p0, Lcom/miui/networkassistant/traffic/correction/impl/MiuiTrafficCorrectionWrapper$WebCorrectListener;->this$0:Lcom/miui/networkassistant/traffic/correction/impl/MiuiTrafficCorrectionWrapper;

    iget-boolean v0, p0, Lcom/miui/networkassistant/traffic/correction/impl/MiuiTrafficCorrectionWrapper$WebCorrectListener;->mIsBackground:Z

    iget v1, p0, Lcom/miui/networkassistant/traffic/correction/impl/MiuiTrafficCorrectionWrapper$WebCorrectListener;->mType:I

    iget v2, p0, Lcom/miui/networkassistant/traffic/correction/impl/MiuiTrafficCorrectionWrapper$WebCorrectListener;->launchFrom:I

    invoke-static {p1, v0, v1, v2}, Lcom/miui/networkassistant/traffic/correction/impl/MiuiTrafficCorrectionWrapper;->access$500(Lcom/miui/networkassistant/traffic/correction/impl/MiuiTrafficCorrectionWrapper;ZII)V

    :goto_0
    return-void
.end method

.method public setCorrectionSlotNum(I)V
    .locals 1

    iget-object v0, p0, Lcom/miui/networkassistant/traffic/correction/impl/MiuiTrafficCorrectionWrapper$WebCorrectListener;->this$0:Lcom/miui/networkassistant/traffic/correction/impl/MiuiTrafficCorrectionWrapper;

    invoke-static {v0, p1}, Lcom/miui/networkassistant/traffic/correction/impl/MiuiTrafficCorrectionWrapper;->access$002(Lcom/miui/networkassistant/traffic/correction/impl/MiuiTrafficCorrectionWrapper;I)I

    return-void
.end method
