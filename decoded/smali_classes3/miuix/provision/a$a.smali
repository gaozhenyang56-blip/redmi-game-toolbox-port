.class Lmiuix/provision/a$a;
.super Lcom/android/provision/IAnimCallback$Stub;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmiuix/provision/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lmiuix/provision/a;


# direct methods
.method constructor <init>(Lmiuix/provision/a;)V
    .locals 0

    iput-object p1, p0, Lmiuix/provision/a$a;->a:Lmiuix/provision/a;

    invoke-direct {p0}, Lcom/android/provision/IAnimCallback$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public j()V
    .locals 4

    const-string v0, "OobeUtil2"

    const-string v1, "onBackAnimStart"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lmiuix/provision/a$a;->a:Lmiuix/provision/a;

    invoke-static {v0}, Lmiuix/provision/a;->b(Lmiuix/provision/a;)Landroid/os/Handler;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lmiuix/provision/a$a;->a:Lmiuix/provision/a;

    invoke-static {v0}, Lmiuix/provision/a;->b(Lmiuix/provision/a;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lmiuix/provision/a$a$b;

    invoke-direct {v1, p0}, Lmiuix/provision/a$a$b;-><init>(Lmiuix/provision/a$a;)V

    const-wide/16 v2, 0x1e

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method public y()V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onNextAminStart:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lmiuix/provision/a$a;->a:Lmiuix/provision/a;

    invoke-static {v1}, Lmiuix/provision/a;->a(Lmiuix/provision/a;)I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "OobeUtil2"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lmiuix/provision/a$a;->a:Lmiuix/provision/a;

    invoke-static {v0}, Lmiuix/provision/a;->b(Lmiuix/provision/a;)Landroid/os/Handler;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lmiuix/provision/a$a;->a:Lmiuix/provision/a;

    invoke-static {v0}, Lmiuix/provision/a;->b(Lmiuix/provision/a;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lmiuix/provision/a$a$a;

    invoke-direct {v1, p0}, Lmiuix/provision/a$a$a;-><init>(Lmiuix/provision/a$a;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method
