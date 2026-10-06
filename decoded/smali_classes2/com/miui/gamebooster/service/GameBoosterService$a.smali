.class Lcom/miui/gamebooster/service/GameBoosterService$a;
.super Landroid/database/ContentObserver;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/gamebooster/service/GameBoosterService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/miui/gamebooster/service/GameBoosterService;


# direct methods
.method constructor <init>(Lcom/miui/gamebooster/service/GameBoosterService;Landroid/os/Handler;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/gamebooster/service/GameBoosterService$a;->a:Lcom/miui/gamebooster/service/GameBoosterService;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 1

    iget-object p1, p0, Lcom/miui/gamebooster/service/GameBoosterService$a;->a:Lcom/miui/gamebooster/service/GameBoosterService;

    invoke-static {p1}, Lcom/miui/gamebooster/service/GameBoosterService;->r(Lcom/miui/gamebooster/service/GameBoosterService;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lm6/a;->e(Landroid/content/Context;)Lm6/a;

    move-result-object v0

    invoke-virtual {v0}, Lm6/a;->x()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/miui/gamebooster/service/GameBoosterService;->q(Lcom/miui/gamebooster/service/GameBoosterService;Ljava/lang/Boolean;)Ljava/lang/Boolean;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "onChange: "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/miui/gamebooster/service/GameBoosterService$a;->a:Lcom/miui/gamebooster/service/GameBoosterService;

    invoke-static {v0}, Lcom/miui/gamebooster/service/GameBoosterService;->p(Lcom/miui/gamebooster/service/GameBoosterService;)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "GameBoosterService"

    invoke-static {v0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method
