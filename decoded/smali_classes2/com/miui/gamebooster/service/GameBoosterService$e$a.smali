.class Lcom/miui/gamebooster/service/GameBoosterService$e$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/gamebooster/service/GameBoosterService$e;->a()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/miui/gamebooster/service/GameBoosterService$e;


# direct methods
.method constructor <init>(Lcom/miui/gamebooster/service/GameBoosterService$e;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/gamebooster/service/GameBoosterService$e$a;->a:Lcom/miui/gamebooster/service/GameBoosterService$e;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    iget-object v0, p0, Lcom/miui/gamebooster/service/GameBoosterService$e$a;->a:Lcom/miui/gamebooster/service/GameBoosterService$e;

    iget-object v0, v0, Lcom/miui/gamebooster/service/GameBoosterService$e;->a:Lcom/miui/gamebooster/service/GameBoosterService;

    invoke-static {v0}, Lcom/miui/gamebooster/service/GameBoosterService;->r(Lcom/miui/gamebooster/service/GameBoosterService;)Landroid/content/Context;

    move-result-object v0

    const-string v1, "activity"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/app/ActivityManager;->getRunningTasks(I)Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_2

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager$RunningTaskInfo;

    iget-object v0, v0, Landroid/app/ActivityManager$RunningTaskInfo;->topActivity:Landroid/content/ComponentName;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v0

    :goto_0
    const-string v1, "com.xiaomi.gamecenter"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    iget-object v1, p0, Lcom/miui/gamebooster/service/GameBoosterService$e$a;->a:Lcom/miui/gamebooster/service/GameBoosterService$e;

    iget-object v1, v1, Lcom/miui/gamebooster/service/GameBoosterService$e;->a:Lcom/miui/gamebooster/service/GameBoosterService;

    invoke-static {v1}, Lcom/miui/gamebooster/service/GameBoosterService;->r(Lcom/miui/gamebooster/service/GameBoosterService;)Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, La8/j0;->g(Landroid/content/Context;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    :cond_1
    return-void

    :cond_2
    iget-object v0, p0, Lcom/miui/gamebooster/service/GameBoosterService$e$a;->a:Lcom/miui/gamebooster/service/GameBoosterService$e;

    iget-object v0, v0, Lcom/miui/gamebooster/service/GameBoosterService$e;->a:Lcom/miui/gamebooster/service/GameBoosterService;

    invoke-static {v0}, Lcom/miui/gamebooster/service/GameBoosterService;->r(Lcom/miui/gamebooster/service/GameBoosterService;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lvg/a;->b(Landroid/content/Context;)V

    return-void
.end method
