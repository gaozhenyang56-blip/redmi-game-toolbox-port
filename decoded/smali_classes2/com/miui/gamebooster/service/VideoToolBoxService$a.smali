.class Lcom/miui/gamebooster/service/VideoToolBoxService$a;
.super Landroid/database/ContentObserver;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/gamebooster/service/VideoToolBoxService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/miui/gamebooster/service/VideoToolBoxService;


# direct methods
.method constructor <init>(Lcom/miui/gamebooster/service/VideoToolBoxService;Landroid/os/Handler;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/gamebooster/service/VideoToolBoxService$a;->a:Lcom/miui/gamebooster/service/VideoToolBoxService;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 1

    iget-object p1, p0, Lcom/miui/gamebooster/service/VideoToolBoxService$a;->a:Lcom/miui/gamebooster/service/VideoToolBoxService;

    invoke-static {p1}, Lcom/miui/gamebooster/service/VideoToolBoxService;->q(Lcom/miui/gamebooster/service/VideoToolBoxService;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Li8/c;->D(Landroid/content/Context;)Z

    move-result v0

    invoke-static {p1, v0}, Lcom/miui/gamebooster/service/VideoToolBoxService;->p(Lcom/miui/gamebooster/service/VideoToolBoxService;Z)Z

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "onChange "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/miui/gamebooster/service/VideoToolBoxService$a;->a:Lcom/miui/gamebooster/service/VideoToolBoxService;

    invoke-static {v0}, Lcom/miui/gamebooster/service/VideoToolBoxService;->o(Lcom/miui/gamebooster/service/VideoToolBoxService;)Z

    move-result v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v0, " "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/miui/gamebooster/service/VideoToolBoxService$a;->a:Lcom/miui/gamebooster/service/VideoToolBoxService;

    invoke-static {v0}, Lcom/miui/gamebooster/service/VideoToolBoxService;->s(Lcom/miui/gamebooster/service/VideoToolBoxService;)Landroid/os/Handler;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "VideoToolBoxService"

    invoke-static {v0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p1, p0, Lcom/miui/gamebooster/service/VideoToolBoxService$a;->a:Lcom/miui/gamebooster/service/VideoToolBoxService;

    invoke-static {p1}, Lcom/miui/gamebooster/service/VideoToolBoxService;->s(Lcom/miui/gamebooster/service/VideoToolBoxService;)Landroid/os/Handler;

    move-result-object p1

    if-eqz p1, :cond_2

    iget-object p1, p0, Lcom/miui/gamebooster/service/VideoToolBoxService$a;->a:Lcom/miui/gamebooster/service/VideoToolBoxService;

    invoke-static {p1}, Lcom/miui/gamebooster/service/VideoToolBoxService;->s(Lcom/miui/gamebooster/service/VideoToolBoxService;)Landroid/os/Handler;

    move-result-object p1

    iget-object v0, p0, Lcom/miui/gamebooster/service/VideoToolBoxService$a;->a:Lcom/miui/gamebooster/service/VideoToolBoxService;

    invoke-static {v0}, Lcom/miui/gamebooster/service/VideoToolBoxService;->o(Lcom/miui/gamebooster/service/VideoToolBoxService;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x7

    goto :goto_1

    :cond_1
    const/4 v0, 0x6

    :goto_1
    invoke-virtual {p1, v0}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    :cond_2
    return-void
.end method
