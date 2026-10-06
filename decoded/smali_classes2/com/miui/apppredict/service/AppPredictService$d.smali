.class Lcom/miui/apppredict/service/AppPredictService$d;
.super Landroid/os/Handler;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/apppredict/service/AppPredictService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "d"
.end annotation


# instance fields
.field final synthetic a:Lcom/miui/apppredict/service/AppPredictService;


# direct methods
.method constructor <init>(Lcom/miui/apppredict/service/AppPredictService;Landroid/os/Looper;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/apppredict/service/AppPredictService$d;->a:Lcom/miui/apppredict/service/AppPredictService;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 2

    iget v0, p1, Landroid/os/Message;->what:I

    if-eqz v0, :cond_5

    const/4 v1, 0x1

    if-eq v0, v1, :cond_4

    const/4 v1, 0x2

    if-eq v0, v1, :cond_3

    const/4 v1, 0x3

    if-eq v0, v1, :cond_2

    const/4 p1, 0x6

    if-eq v0, p1, :cond_1

    const/4 p1, 0x7

    if-eq v0, p1, :cond_1

    const/16 p1, 0x9

    if-eq v0, p1, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p0, p1}, Landroid/os/Handler;->removeMessages(I)V

    iget-object p1, p0, Lcom/miui/apppredict/service/AppPredictService$d;->a:Lcom/miui/apppredict/service/AppPredictService;

    invoke-static {p1}, Lcom/miui/apppredict/service/AppPredictService;->h(Lcom/miui/apppredict/service/AppPredictService;)V

    goto :goto_0

    :cond_1
    iget-object p1, p0, Lcom/miui/apppredict/service/AppPredictService$d;->a:Lcom/miui/apppredict/service/AppPredictService;

    invoke-static {p1}, Lcom/miui/apppredict/service/AppPredictService;->f(Lcom/miui/apppredict/service/AppPredictService;)V

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/miui/apppredict/service/AppPredictService$d;->a:Lcom/miui/apppredict/service/AppPredictService;

    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lcom/miui/mlkit/mobilerec/bean/TrainPlanBean;

    invoke-static {v0, p1}, Lcom/miui/apppredict/service/AppPredictService;->e(Lcom/miui/apppredict/service/AppPredictService;Lcom/miui/mlkit/mobilerec/bean/TrainPlanBean;)V

    goto :goto_0

    :cond_3
    iget-object p1, p0, Lcom/miui/apppredict/service/AppPredictService$d;->a:Lcom/miui/apppredict/service/AppPredictService;

    invoke-static {p1}, Lcom/miui/apppredict/service/AppPredictService;->d(Lcom/miui/apppredict/service/AppPredictService;)V

    goto :goto_0

    :cond_4
    invoke-virtual {p0, v1}, Landroid/os/Handler;->removeMessages(I)V

    iget-object v0, p0, Lcom/miui/apppredict/service/AppPredictService$d;->a:Lcom/miui/apppredict/service/AppPredictService;

    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Ljava/lang/String;

    invoke-static {v0, p1}, Lcom/miui/apppredict/service/AppPredictService;->c(Lcom/miui/apppredict/service/AppPredictService;Ljava/lang/String;)V

    goto :goto_0

    :cond_5
    iget-object p1, p0, Lcom/miui/apppredict/service/AppPredictService$d;->a:Lcom/miui/apppredict/service/AppPredictService;

    invoke-static {p1}, Lcom/miui/apppredict/service/AppPredictService;->i(Lcom/miui/apppredict/service/AppPredictService;)V

    :goto_0
    return-void
.end method
