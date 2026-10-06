.class Lcom/miui/apppredict/service/AppPredictService$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/miui/gamebooster/mutiwindow/b$b;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/apppredict/service/AppPredictService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private a:J

.field final synthetic b:Lcom/miui/apppredict/service/AppPredictService;


# direct methods
.method constructor <init>(Lcom/miui/apppredict/service/AppPredictService;)V
    .locals 2

    iput-object p1, p0, Lcom/miui/apppredict/service/AppPredictService$a;->b:Lcom/miui/apppredict/service/AppPredictService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/miui/apppredict/service/AppPredictService$a;->a:J

    return-void
.end method


# virtual methods
.method public getId()Lf7/e;
    .locals 1

    sget-object v0, Lf7/e;->e:Lf7/e;

    return-object v0
.end method

.method public onForegroundInfoChanged(Lcom/gzy/redmiport/compat/process/ForegroundInfo;)Z
    .locals 9

    iget-object v0, p0, Lcom/miui/apppredict/service/AppPredictService$a;->b:Lcom/miui/apppredict/service/AppPredictService;

    iget-object v1, p1, Lcom/gzy/redmiport/compat/process/ForegroundInfo;->mForegroundPackageName:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/miui/apppredict/service/AppPredictService;->a(Lcom/miui/apppredict/service/AppPredictService;Ljava/lang/String;)Ljava/lang/String;

    iget-object v0, p1, Lcom/gzy/redmiport/compat/process/ForegroundInfo;->mForegroundPackageName:Ljava/lang/String;

    iget p1, p1, Lcom/gzy/redmiport/compat/process/ForegroundInfo;->mForegroundUid:I

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 p1, 0x0

    return p1

    :cond_0
    invoke-static {p1}, Lx4/b2;->b(I)Z

    move-result p1

    if-eqz p1, :cond_1

    invoke-static {v0}, Lp3/i;->j(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :cond_1
    invoke-static {}, Lo3/c;->f()Lo3/c;

    move-result-object p1

    invoke-virtual {p1, v0}, Lo3/c;->c(Ljava/lang/String;)V

    iget-wide v1, p0, Lcom/miui/apppredict/service/AppPredictService$a;->a:J

    const-wide/16 v3, 0x0

    cmp-long p1, v1, v3

    const-wide/16 v1, 0xbb8

    const-string v3, "AppPredictService"

    const/4 v4, 0x1

    if-eqz p1, :cond_2

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    iget-wide v7, p0, Lcom/miui/apppredict/service/AppPredictService$a;->a:J

    sub-long/2addr v5, v7

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "difTIme = "

    invoke-virtual {p1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v3, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    cmp-long p1, v5, v1

    if-gez p1, :cond_2

    iget-object p1, p0, Lcom/miui/apppredict/service/AppPredictService$a;->b:Lcom/miui/apppredict/service/AppPredictService;

    invoke-static {p1}, Lcom/miui/apppredict/service/AppPredictService;->b(Lcom/miui/apppredict/service/AppPredictService;)Lcom/miui/apppredict/service/AppPredictService$d;

    move-result-object p1

    invoke-virtual {p1, v4}, Landroid/os/Handler;->removeMessages(I)V

    :cond_2
    iget-object p1, p0, Lcom/miui/apppredict/service/AppPredictService$a;->b:Lcom/miui/apppredict/service/AppPredictService;

    invoke-static {p1}, Lcom/miui/apppredict/service/AppPredictService;->g(Lcom/miui/apppredict/service/AppPredictService;)Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lp3/i;->k(Landroid/content/Context;)Z

    move-result p1

    if-nez p1, :cond_3

    iget-object v5, p0, Lcom/miui/apppredict/service/AppPredictService$a;->b:Lcom/miui/apppredict/service/AppPredictService;

    invoke-static {v5}, Lcom/miui/apppredict/service/AppPredictService;->b(Lcom/miui/apppredict/service/AppPredictService;)Lcom/miui/apppredict/service/AppPredictService$d;

    move-result-object v5

    if-eqz v5, :cond_6

    sget-object v5, Lp3/g;->b:Ljava/util/HashSet;

    invoke-virtual {v5, v0}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_6

    :cond_3
    if-eqz p1, :cond_4

    iget-object p1, p0, Lcom/miui/apppredict/service/AppPredictService$a;->b:Lcom/miui/apppredict/service/AppPredictService;

    invoke-static {p1}, Lcom/miui/apppredict/service/AppPredictService;->b(Lcom/miui/apppredict/service/AppPredictService;)Lcom/miui/apppredict/service/AppPredictService$d;

    move-result-object p1

    const/4 v5, 0x6

    invoke-virtual {p1, v5}, Landroid/os/Handler;->removeMessages(I)V

    iget-object p1, p0, Lcom/miui/apppredict/service/AppPredictService$a;->b:Lcom/miui/apppredict/service/AppPredictService;

    invoke-static {p1}, Lcom/miui/apppredict/service/AppPredictService;->b(Lcom/miui/apppredict/service/AppPredictService;)Lcom/miui/apppredict/service/AppPredictService$d;

    move-result-object p1

    iget-object v6, p0, Lcom/miui/apppredict/service/AppPredictService$a;->b:Lcom/miui/apppredict/service/AppPredictService;

    invoke-static {v6}, Lcom/miui/apppredict/service/AppPredictService;->b(Lcom/miui/apppredict/service/AppPredictService;)Lcom/miui/apppredict/service/AppPredictService$d;

    move-result-object v6

    invoke-virtual {v6, v5}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v5

    const-wide/16 v6, 0x1388

    invoke-virtual {p1, v5, v6, v7}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    :cond_4
    sget-object p1, Lp3/g;->c:Ljava/util/HashSet;

    invoke-virtual {p1, v0}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_5

    iget-object p1, p0, Lcom/miui/apppredict/service/AppPredictService$a;->b:Lcom/miui/apppredict/service/AppPredictService;

    invoke-static {p1}, Lcom/miui/apppredict/service/AppPredictService;->b(Lcom/miui/apppredict/service/AppPredictService;)Lcom/miui/apppredict/service/AppPredictService$d;

    move-result-object p1

    invoke-virtual {p1, v4}, Landroid/os/Handler;->removeMessages(I)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    iput-wide v5, p0, Lcom/miui/apppredict/service/AppPredictService$a;->a:J

    iget-object p1, p0, Lcom/miui/apppredict/service/AppPredictService$a;->b:Lcom/miui/apppredict/service/AppPredictService;

    invoke-static {p1}, Lcom/miui/apppredict/service/AppPredictService;->b(Lcom/miui/apppredict/service/AppPredictService;)Lcom/miui/apppredict/service/AppPredictService$d;

    move-result-object p1

    invoke-virtual {p1, v4}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object p1

    iput-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    iget-object v0, p0, Lcom/miui/apppredict/service/AppPredictService$a;->b:Lcom/miui/apppredict/service/AppPredictService;

    invoke-static {v0}, Lcom/miui/apppredict/service/AppPredictService;->b(Lcom/miui/apppredict/service/AppPredictService;)Lcom/miui/apppredict/service/AppPredictService$d;

    move-result-object v0

    invoke-virtual {v0, p1, v1, v2}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto :goto_0

    :cond_5
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onForegroundInfoChanged: "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " ignore predict"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v3, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_6
    :goto_0
    return v4
.end method
