.class Lcom/miui/apppredict/service/AppPredictService$g;
.super Landroid/database/ContentObserver;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/apppredict/service/AppPredictService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "g"
.end annotation


# instance fields
.field final synthetic a:Lcom/miui/apppredict/service/AppPredictService;


# direct methods
.method public constructor <init>(Lcom/miui/apppredict/service/AppPredictService;Landroid/os/Handler;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/apppredict/service/AppPredictService$g;->a:Lcom/miui/apppredict/service/AppPredictService;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 2

    invoke-super {p0, p1}, Landroid/database/ContentObserver;->onChange(Z)V

    const-string p1, "AppPredictService"

    const-string v0, "AppPredictService::onChange::Privacy app changed."

    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p1, p0, Lcom/miui/apppredict/service/AppPredictService$g;->a:Lcom/miui/apppredict/service/AppPredictService;

    invoke-static {p1}, Lcom/miui/apppredict/service/AppPredictService;->b(Lcom/miui/apppredict/service/AppPredictService;)Lcom/miui/apppredict/service/AppPredictService$d;

    move-result-object p1

    iget-object v0, p0, Lcom/miui/apppredict/service/AppPredictService$g;->a:Lcom/miui/apppredict/service/AppPredictService;

    invoke-static {v0}, Lcom/miui/apppredict/service/AppPredictService;->b(Lcom/miui/apppredict/service/AppPredictService;)Lcom/miui/apppredict/service/AppPredictService$d;

    move-result-object v0

    const/16 v1, 0x9

    invoke-virtual {v0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    invoke-static {}, Lp3/k;->c()Lp3/k;

    move-result-object p1

    invoke-virtual {p1}, Lp3/k;->f()V

    invoke-static {}, Lp3/e;->a()Lp3/e;

    move-result-object p1

    iget-object v0, p0, Lcom/miui/apppredict/service/AppPredictService$g;->a:Lcom/miui/apppredict/service/AppPredictService;

    invoke-static {v0}, Lcom/miui/apppredict/service/AppPredictService;->g(Lcom/miui/apppredict/service/AppPredictService;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p1, v0}, Lp3/e;->e(Landroid/content/Context;)V

    return-void
.end method
