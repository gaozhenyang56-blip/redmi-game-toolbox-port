.class Lvd/b$d;
.super Lcom/gzy/redmiport/compat/process/IActivityChangeListener$Stub;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lvd/b;->p()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lvd/b;


# direct methods
.method constructor <init>(Lvd/b;)V
    .locals 0

    iput-object p1, p0, Lvd/b$d;->a:Lvd/b;

    invoke-direct {p0}, Lcom/gzy/redmiport/compat/process/IActivityChangeListener$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public onActivityChanged(Landroid/content/ComponentName;Landroid/content/ComponentName;)V
    .locals 1

    iget-object p1, p0, Lvd/b$d;->a:Lvd/b;

    invoke-static {p1}, Lvd/b;->g(Lvd/b;)Ljava/lang/Object;

    move-result-object p1

    monitor-enter p1

    if-eqz p2, :cond_0

    :try_start_0
    iget-object v0, p0, Lvd/b$d;->a:Lvd/b;

    invoke-static {v0}, Lvd/b;->h(Lvd/b;)Ljava/util/List;

    move-result-object v0

    invoke-virtual {p2}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object p2

    invoke-interface {v0, p2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_0

    new-instance p2, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {p2, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-instance v0, Lvd/b$d$a;

    invoke-direct {v0, p0}, Lvd/b$d$a;-><init>(Lvd/b$d;)V

    invoke-virtual {p2, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_0
    monitor-exit p1

    return-void

    :catchall_0
    move-exception p2

    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p2
.end method
