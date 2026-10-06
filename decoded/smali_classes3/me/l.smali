.class public Lme/l;
.super Ljava/util/Observable;
.source "SourceFile"


# static fields
.field private static volatile b:Lme/l;


# instance fields
.field private a:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Landroid/content/Context;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/util/Observable;-><init>()V

    return-void
.end method

.method public static d()Lme/l;
    .locals 2

    sget-object v0, Lme/l;->b:Lme/l;

    if-nez v0, :cond_1

    const-class v0, Lme/l;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lme/l;->b:Lme/l;

    if-nez v1, :cond_0

    new-instance v1, Lme/l;

    invoke-direct {v1}, Lme/l;-><init>()V

    sput-object v1, Lme/l;->b:Lme/l;

    :cond_0
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    :cond_1
    :goto_0
    sget-object v0, Lme/l;->b:Lme/l;

    return-object v0
.end method


# virtual methods
.method public a(Landroid/content/Context;)V
    .locals 1

    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lme/l;->a:Ljava/lang/ref/WeakReference;

    return-void
.end method

.method public b()V
    .locals 0

    invoke-virtual {p0}, Ljava/util/Observable;->deleteObservers()V

    return-void
.end method

.method public c(Landroid/content/Context;)V
    .locals 1

    iget-object v0, p0, Lme/l;->a:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v0

    if-ne p1, v0, :cond_0

    const/4 p1, 0x0

    iput-object p1, p0, Lme/l;->a:Ljava/lang/ref/WeakReference;

    :cond_0
    return-void
.end method

.method public e(Landroid/os/Message;)V
    .locals 2

    iget-object v0, p0, Lme/l;->a:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_1

    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v0

    if-eq v1, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    iput-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-virtual {p0}, Ljava/util/Observable;->setChanged()V

    invoke-virtual {p0, p1}, Ljava/util/Observable;->notifyObservers(Ljava/lang/Object;)V

    :cond_1
    :goto_0
    return-void
.end method
