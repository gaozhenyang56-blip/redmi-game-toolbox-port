.class public final Lcom/miui/gamebooster/service/z;
.super Landroid/app/TaskStackListener;
.source "SourceFile"


# instance fields
.field private final a:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private b:Z

.field private c:Lcom/miui/gamebooster/service/u;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/miui/gamebooster/service/u;)V
    .locals 1
    .param p1    # Lcom/miui/gamebooster/service/u;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "service"

    invoke-static {p1, v0}, Lbk/m;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Landroid/app/TaskStackListener;-><init>()V

    const-string v0, "SCTaskStackListener"

    iput-object v0, p0, Lcom/miui/gamebooster/service/z;->a:Ljava/lang/String;

    invoke-static {}, La8/s1;->a()Z

    move-result v0

    iput-boolean v0, p0, Lcom/miui/gamebooster/service/z;->b:Z

    iput-object p1, p0, Lcom/miui/gamebooster/service/z;->c:Lcom/miui/gamebooster/service/u;

    return-void
.end method


# virtual methods
.method public onTaskStackChanged()V
    .locals 4

    invoke-static {}, La8/s1;->a()Z

    move-result v0

    iget-object v1, p0, Lcom/miui/gamebooster/service/z;->a:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onTaskStackChanged! inSplit = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-boolean v1, p0, Lcom/miui/gamebooster/service/z;->b:Z

    if-eq v1, v0, :cond_0

    invoke-static {}, Lcom/miui/gamebooster/service/u;->d()Lcom/gzy/redmiport/compat/process/ForegroundInfo;

    move-result-object v1

    iget-object v2, p0, Lcom/miui/gamebooster/service/z;->c:Lcom/miui/gamebooster/service/u;

    invoke-virtual {v2}, Lcom/miui/gamebooster/service/u;->e()Lcom/miui/gamebooster/mutiwindow/b$b;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-interface {v2, v1}, Lcom/miui/gamebooster/mutiwindow/b$b;->onForegroundInfoChanged(Lcom/gzy/redmiport/compat/process/ForegroundInfo;)Z

    :cond_0
    iput-boolean v0, p0, Lcom/miui/gamebooster/service/z;->b:Z

    return-void
.end method
