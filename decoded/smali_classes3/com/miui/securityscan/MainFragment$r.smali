.class Lcom/miui/securityscan/MainFragment$r;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/MessageQueue$IdleHandler;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/securityscan/MainFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/miui/securityscan/MainFragment;


# direct methods
.method constructor <init>(Lcom/miui/securityscan/MainFragment;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/securityscan/MainFragment$r;->a:Lcom/miui/securityscan/MainFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public queueIdle()Z
    .locals 6

    iget-object v0, p0, Lcom/miui/securityscan/MainFragment$r;->a:Lcom/miui/securityscan/MainFragment;

    invoke-static {v0}, Lcom/miui/securityscan/MainFragment;->J0(Lcom/miui/securityscan/MainFragment;)Z

    move-result v1

    const/4 v2, 0x1

    xor-int/2addr v1, v2

    invoke-static {v0, v1}, Lcom/miui/securityscan/MainFragment;->W0(Lcom/miui/securityscan/MainFragment;Z)V

    iget-object v0, p0, Lcom/miui/securityscan/MainFragment$r;->a:Lcom/miui/securityscan/MainFragment;

    invoke-static {v0}, Lcom/miui/securityscan/MainFragment;->h1(Lcom/miui/securityscan/MainFragment;)Lwf/a;

    move-result-object v0

    invoke-interface {v0}, Lwf/a;->h()V

    iget-object v0, p0, Lcom/miui/securityscan/MainFragment$r;->a:Lcom/miui/securityscan/MainFragment;

    invoke-static {v0}, Lcom/miui/securityscan/MainFragment;->J0(Lcom/miui/securityscan/MainFragment;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lef/x;->z()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/securityscan/MainFragment$r;->a:Lcom/miui/securityscan/MainFragment;

    iget-object v1, v0, Lcom/miui/securityscan/MainFragment;->h:Lzf/h;

    new-instance v3, Lcom/miui/securityscan/MainFragment$z;

    invoke-direct {v3, v0, v2}, Lcom/miui/securityscan/MainFragment$z;-><init>(Lcom/miui/securityscan/MainFragment;I)V

    const-wide/16 v4, 0xc8

    invoke-virtual {v1, v3, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_0
    const/4 v0, 0x0

    return v0
.end method
