.class Lkd/a$b;
.super Landroid/database/ContentObserver;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lkd/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lkd/a;


# direct methods
.method constructor <init>(Lkd/a;Landroid/os/Handler;)V
    .locals 0

    iput-object p1, p0, Lkd/a$b;->a:Lkd/a;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 2

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "alwaysModeOn: "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lkd/a$b;->a:Lkd/a;

    iget-boolean v0, v0, Lkd/a;->k:Z

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v0, " mConnectState: "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lkd/a$b;->a:Lkd/a;

    invoke-static {v0}, Lkd/a;->c(Lkd/a;)Z

    move-result v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "CameraHandleReceiver"

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p1, p0, Lkd/a$b;->a:Lkd/a;

    iget-boolean v0, p1, Lkd/a;->k:Z

    if-nez v0, :cond_0

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lkd/a;->b(Lkd/a;Z)Z

    iget-object p1, p0, Lkd/a$b;->a:Lkd/a;

    invoke-static {p1}, Lkd/a;->c(Lkd/a;)Z

    move-result v0

    iget-object v1, p0, Lkd/a$b;->a:Lkd/a;

    invoke-static {v1}, Lkd/a;->d(Lkd/a;)I

    move-result v1

    invoke-static {p1, v0, v1}, Lkd/a;->f(Lkd/a;ZI)V

    :cond_0
    return-void
.end method
