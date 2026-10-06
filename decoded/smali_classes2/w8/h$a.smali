.class Lw8/h$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lw8/h;->h()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lw8/h;


# direct methods
.method constructor <init>(Lw8/h;)V
    .locals 0

    iput-object p1, p0, Lw8/h$a;->a:Lw8/h;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    iget-object v0, p0, Lw8/h$a;->a:Lw8/h;

    invoke-static {v0}, Lw8/h;->e(Lw8/h;)Landroid/content/Context;

    move-result-object v1

    const-string v2, "xunyou_support"

    invoke-static {v2, v1}, La8/y;->d(Ljava/lang/String;Landroid/content/Context;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-static {v0, v1}, Lw8/h;->d(Lw8/h;Ljava/util/List;)Ljava/util/List;

    iget-object v0, p0, Lw8/h$a;->a:Lw8/h;

    invoke-static {v0}, Lw8/h;->e(Lw8/h;)Landroid/content/Context;

    move-result-object v0

    const-string v1, "gamebooster"

    const-string v2, "xunyousupportlist"

    invoke-static {v1, v2, v0}, La8/y;->e(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;)Ljava/util/ArrayList;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x5

    if-le v1, v2, :cond_0

    iget-object v1, p0, Lw8/h$a;->a:Lw8/h;

    invoke-static {v1, v0}, Lw8/h;->d(Lw8/h;Ljava/util/List;)Ljava/util/List;

    :cond_0
    iget-object v0, p0, Lw8/h$a;->a:Lw8/h;

    invoke-static {v0}, Lw8/h;->c(Lw8/h;)Ljava/util/List;

    move-result-object v1

    if-nez v1, :cond_1

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    goto :goto_0

    :cond_1
    iget-object v1, p0, Lw8/h$a;->a:Lw8/h;

    invoke-static {v1}, Lw8/h;->c(Lw8/h;)Ljava/util/List;

    move-result-object v1

    :goto_0
    invoke-static {v0, v1}, Lw8/h;->d(Lw8/h;Ljava/util/List;)Ljava/util/List;

    iget-object v0, p0, Lw8/h$a;->a:Lw8/h;

    invoke-static {v0}, Lw8/h;->f(Lw8/h;)Ljava/util/Observable;

    move-result-object v0

    iget-object v1, p0, Lw8/h$a;->a:Lw8/h;

    invoke-static {v1}, Lw8/h;->c(Lw8/h;)Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/Observable;->notifyObservers(Ljava/lang/Object;)V

    return-void
.end method
