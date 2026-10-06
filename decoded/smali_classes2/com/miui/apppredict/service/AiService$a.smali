.class Lcom/miui/apppredict/service/AiService$a;
.super Lcom/miui/apppredict/IAppPredict$Stub;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/apppredict/service/AiService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "a"
.end annotation


# instance fields
.field private final a:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0}, Lcom/miui/apppredict/IAppPredict$Stub;-><init>()V

    iput-object p1, p0, Lcom/miui/apppredict/service/AiService$a;->a:Landroid/content/Context;

    return-void
.end method

.method private synthetic o8(Lcom/miui/apppredict/IAppPredictCallBack;Ljava/lang/String;)V
    .locals 3

    const-string v0, "AiService"

    if-eqz p1, :cond_2

    invoke-virtual {p2}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_2

    :cond_0
    iget-object v1, p0, Lcom/miui/apppredict/service/AiService$a;->a:Landroid/content/Context;

    invoke-static {v1}, Lp3/c;->d(Landroid/content/Context;)Lp3/c;

    move-result-object v1

    invoke-virtual {v1, p2}, Lp3/c;->e(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "label = "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, " is not register"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    :goto_0
    invoke-static {v0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_1
    :try_start_0
    invoke-static {}, Lp3/f;->d()Ljava/util/List;

    move-result-object p2

    invoke-static {p2}, Lp3/d;->a(Ljava/util/List;)Ljava/lang/String;

    move-result-object p2

    invoke-interface {p1, p2}, Lcom/miui/apppredict/IAppPredictCallBack;->j5(Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    :goto_1
    return-void

    :cond_2
    :goto_2
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "callback = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, " label = "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    goto :goto_0
.end method

.method public static synthetic v1(Lcom/miui/apppredict/service/AiService$a;Lcom/miui/apppredict/IAppPredictCallBack;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/miui/apppredict/service/AiService$a;->o8(Lcom/miui/apppredict/IAppPredictCallBack;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public c1(Ljava/lang/String;)V
    .locals 1

    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/miui/apppredict/service/AiService$a;->a:Landroid/content/Context;

    invoke-static {v0}, Lp3/c;->d(Landroid/content/Context;)Lp3/c;

    move-result-object v0

    invoke-virtual {v0, p1}, Lp3/c;->h(Ljava/lang/String;)V

    return-void
.end method

.method public k3(Ljava/lang/String;)V
    .locals 1

    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/miui/apppredict/service/AiService$a;->a:Landroid/content/Context;

    invoke-static {v0}, Lp3/c;->d(Landroid/content/Context;)Lp3/c;

    move-result-object v0

    invoke-virtual {v0, p1}, Lp3/c;->c(Ljava/lang/String;)V

    return-void
.end method

.method public n1(Ljava/lang/String;Lcom/miui/apppredict/IAppPredictCallBack;)V
    .locals 2

    invoke-static {}, Lef/z;->d()Lef/z;

    move-result-object v0

    new-instance v1, Lcom/miui/apppredict/service/a;

    invoke-direct {v1, p0, p2, p1}, Lcom/miui/apppredict/service/a;-><init>(Lcom/miui/apppredict/service/AiService$a;Lcom/miui/apppredict/IAppPredictCallBack;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lef/z;->b(Ljava/lang/Runnable;)V

    return-void
.end method
