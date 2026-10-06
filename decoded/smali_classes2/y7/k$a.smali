.class Ly7/k$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lo4/a$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ly7/k;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ly7/k;


# direct methods
.method constructor <init>(Ly7/k;)V
    .locals 0

    iput-object p1, p0, Ly7/k$a;->a:Ly7/k;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public v1(Landroid/os/IBinder;)Z
    .locals 2

    iget-object v0, p0, Ly7/k$a;->a:Ly7/k;

    invoke-static {p1}, Lcom/miui/gamebooster/service/IGameBooster$Stub;->asInterface(Landroid/os/IBinder;)Lcom/miui/gamebooster/service/IGameBooster;

    move-result-object p1

    invoke-static {v0, p1}, Ly7/k;->K(Ly7/k;Lcom/miui/gamebooster/service/IGameBooster;)Lcom/miui/gamebooster/service/IGameBooster;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "gameBooster :"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Ly7/k$a;->a:Ly7/k;

    invoke-static {v0}, Ly7/k;->J(Ly7/k;)Lcom/miui/gamebooster/service/IGameBooster;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    move v0, v1

    :goto_0
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "StorageGameTask"

    invoke-static {v0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p1, p0, Ly7/k$a;->a:Ly7/k;

    invoke-static {p1}, Ly7/k;->J(Ly7/k;)Lcom/miui/gamebooster/service/IGameBooster;

    move-result-object p1

    if-eqz p1, :cond_1

    :try_start_0
    iget-object p1, p0, Ly7/k$a;->a:Ly7/k;

    invoke-static {p1}, Ly7/k;->J(Ly7/k;)Lcom/miui/gamebooster/service/IGameBooster;

    move-result-object p1

    invoke-interface {p1}, Lcom/miui/gamebooster/service/IGameBooster;->s0()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    :goto_1
    return v1
.end method
