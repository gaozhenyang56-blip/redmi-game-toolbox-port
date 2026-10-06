.class Lpd/c$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lpd/c;->y()V
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

    iput-object p1, p0, Lpd/c$b;->a:Lpd/c;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    :try_start_0
    iget-object v0, p0, Lpd/c$b;->a:Lpd/c;

    invoke-static {v0}, Lpd/c;->d(Lpd/c;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/miui/powercenter/continuity/PowerContinuityNoticeUtils;->d(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v1, p0, Lpd/c$b;->a:Lpd/c;

    invoke-static {v1}, Lpd/c;->e(Lpd/c;)V

    :cond_0
    iget-object v1, p0, Lpd/c$b;->a:Lpd/c;

    invoke-static {v1}, Lpd/c;->f(Lpd/c;)V

    iget-object v1, p0, Lpd/c$b;->a:Lpd/c;

    invoke-static {v1}, Lpd/c;->g(Lpd/c;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    invoke-static {}, Lx4/y;->s()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lpd/c$b;->a:Lpd/c;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lpd/c;->z(Lj4/b$a;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "power_channel_Manager"

    const-string v2, "registerContinuity error:"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_1
    :goto_0
    return-void
.end method
