.class Lpd/c$g;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lpd/c;->F()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lpd/c;


# direct methods
.method constructor <init>(Lpd/c;)V
    .locals 0

    iput-object p1, p0, Lpd/c$g;->a:Lpd/c;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    iget-object v0, p0, Lpd/c$g;->a:Lpd/c;

    invoke-static {v0}, Lpd/c;->i(Lpd/c;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Lcom/xiaomi/continuity/ServiceName;

    iget-object v1, p0, Lpd/c$g;->a:Lpd/c;

    invoke-static {v1}, Lpd/c;->d(Lpd/c;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    const-string v2, "power_center"

    invoke-direct {v0, v1, v2}, Lcom/xiaomi/continuity/ServiceName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lpd/c$g;->a:Lpd/c;

    invoke-static {v1}, Lpd/c;->d(Lpd/c;)Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lj4/b;->d(Landroid/content/Context;)Lj4/b;

    move-result-object v1

    invoke-virtual {v1, v0}, Lj4/b;->f(Lcom/xiaomi/continuity/ServiceName;)V

    :cond_0
    iget-object v0, p0, Lpd/c$g;->a:Lpd/c;

    invoke-static {v0}, Lpd/c;->j(Lpd/c;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lpd/c$g;->a:Lpd/c;

    invoke-static {v0}, Lpd/c;->d(Lpd/c;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lj4/a;->d(Landroid/content/Context;)Lj4/a;

    move-result-object v0

    const-string v1, "topic.name:power"

    invoke-virtual {v0, v1}, Lj4/a;->f(Ljava/lang/String;)V

    :cond_1
    iget-object v0, p0, Lpd/c$g;->a:Lpd/c;

    invoke-virtual {v0}, Lpd/c;->q()V

    iget-object v0, p0, Lpd/c$g;->a:Lpd/c;

    invoke-static {v0}, Lpd/c;->j(Lpd/c;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    iget-object v0, p0, Lpd/c$g;->a:Lpd/c;

    invoke-static {v0}, Lpd/c;->i(Lpd/c;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    return-void
.end method
