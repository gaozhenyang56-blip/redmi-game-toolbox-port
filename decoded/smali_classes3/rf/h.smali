.class public Lrf/h;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lrf/i;


# instance fields
.field private final a:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Lcom/miui/securityscan/MainFragment;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/miui/securityscan/MainFragment;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lrf/h;->a:Ljava/lang/ref/WeakReference;

    return-void
.end method


# virtual methods
.method public b()V
    .locals 2

    iget-object v0, p0, Lrf/h;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/securityscan/MainFragment;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/miui/securityscan/MainFragment;->Z:Z

    :cond_0
    return-void
.end method

.method public h()V
    .locals 3

    iget-object v0, p0, Lrf/h;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/securityscan/MainFragment;

    if-eqz v0, :cond_0

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/miui/securityscan/MainFragment;->Z:Z

    iget-object v1, v0, Lcom/miui/securityscan/MainFragment;->h:Lzf/h;

    new-instance v2, Lrf/h$a;

    invoke-direct {v2, p0, v0}, Lrf/h$a;-><init>(Lrf/h;Lcom/miui/securityscan/MainFragment;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_0
    return-void
.end method

.method public i()V
    .locals 1

    iget-object v0, p0, Lrf/h;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/securityscan/MainFragment;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/miui/securityscan/MainFragment;->y1()V

    :cond_0
    return-void
.end method
