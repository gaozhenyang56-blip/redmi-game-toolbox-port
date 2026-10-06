.class Lcom/miui/ai/service/OperationListCollectService$a;
.super Landroid/telephony/PhoneStateListener;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/ai/service/OperationListCollectService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/miui/ai/service/OperationListCollectService;


# direct methods
.method constructor <init>(Lcom/miui/ai/service/OperationListCollectService;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/ai/service/OperationListCollectService$a;->a:Lcom/miui/ai/service/OperationListCollectService;

    invoke-direct {p0}, Landroid/telephony/PhoneStateListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onCallStateChanged(ILjava/lang/String;)V
    .locals 2

    invoke-super {p0, p1, p2}, Landroid/telephony/PhoneStateListener;->onCallStateChanged(ILjava/lang/String;)V

    const/4 p2, 0x2

    if-ne p1, p2, :cond_0

    invoke-static {}, Lu3/h;->y0()Lu3/h;

    move-result-object v0

    iput p1, v0, Lu3/h;->i:I

    invoke-static {}, Lu3/h;->y0()Lu3/h;

    move-result-object v0

    invoke-virtual {v0}, Lu3/h;->W()V

    :cond_0
    if-nez p1, :cond_1

    iget-object v0, p0, Lcom/miui/ai/service/OperationListCollectService$a;->a:Lcom/miui/ai/service/OperationListCollectService;

    invoke-static {v0}, Lcom/miui/ai/service/OperationListCollectService;->b(Lcom/miui/ai/service/OperationListCollectService;)I

    move-result v0

    if-ne v0, p2, :cond_1

    invoke-static {}, Lu3/h;->y0()Lu3/h;

    move-result-object p2

    iput p1, p2, Lu3/h;->i:I

    invoke-static {}, Lu3/h;->y0()Lu3/h;

    move-result-object p2

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p2, Lu3/h;->h:J

    invoke-static {}, Lu3/h;->y0()Lu3/h;

    move-result-object p2

    invoke-virtual {p2}, Lu3/h;->M()V

    :cond_1
    iget-object p2, p0, Lcom/miui/ai/service/OperationListCollectService$a;->a:Lcom/miui/ai/service/OperationListCollectService;

    invoke-static {p2, p1}, Lcom/miui/ai/service/OperationListCollectService;->c(Lcom/miui/ai/service/OperationListCollectService;I)I

    return-void
.end method
