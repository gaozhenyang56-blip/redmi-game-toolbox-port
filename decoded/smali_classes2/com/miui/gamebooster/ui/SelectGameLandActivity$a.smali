.class Lcom/miui/gamebooster/ui/SelectGameLandActivity$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/gamebooster/ui/SelectGameLandActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/miui/gamebooster/ui/SelectGameLandActivity;


# direct methods
.method constructor <init>(Lcom/miui/gamebooster/ui/SelectGameLandActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/gamebooster/ui/SelectGameLandActivity$a;->a:Lcom/miui/gamebooster/ui/SelectGameLandActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 0

    iget-object p1, p0, Lcom/miui/gamebooster/ui/SelectGameLandActivity$a;->a:Lcom/miui/gamebooster/ui/SelectGameLandActivity;

    invoke-static {p2}, Lcom/miui/gamebooster/service/IGameBooster$Stub;->asInterface(Landroid/os/IBinder;)Lcom/miui/gamebooster/service/IGameBooster;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/miui/gamebooster/ui/SelectGameLandActivity;->g0(Lcom/miui/gamebooster/ui/SelectGameLandActivity;Lcom/miui/gamebooster/service/IGameBooster;)Lcom/miui/gamebooster/service/IGameBooster;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "gameBooster :"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p2, p0, Lcom/miui/gamebooster/ui/SelectGameLandActivity$a;->a:Lcom/miui/gamebooster/ui/SelectGameLandActivity;

    invoke-static {p2}, Lcom/miui/gamebooster/ui/SelectGameLandActivity;->f0(Lcom/miui/gamebooster/ui/SelectGameLandActivity;)Lcom/miui/gamebooster/service/IGameBooster;

    move-result-object p2

    if-nez p2, :cond_0

    const/4 p2, 0x1

    goto :goto_0

    :cond_0
    const/4 p2, 0x0

    :goto_0
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "SelectGameLandActivity"

    invoke-static {p2, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p1, p0, Lcom/miui/gamebooster/ui/SelectGameLandActivity$a;->a:Lcom/miui/gamebooster/ui/SelectGameLandActivity;

    invoke-static {p1}, Lcom/miui/gamebooster/ui/SelectGameLandActivity;->f0(Lcom/miui/gamebooster/ui/SelectGameLandActivity;)Lcom/miui/gamebooster/service/IGameBooster;

    move-result-object p1

    if-eqz p1, :cond_1

    :try_start_0
    iget-object p1, p0, Lcom/miui/gamebooster/ui/SelectGameLandActivity$a;->a:Lcom/miui/gamebooster/ui/SelectGameLandActivity;

    invoke-static {p1}, Lcom/miui/gamebooster/ui/SelectGameLandActivity;->f0(Lcom/miui/gamebooster/ui/SelectGameLandActivity;)Lcom/miui/gamebooster/service/IGameBooster;

    move-result-object p1

    invoke-interface {p1}, Lcom/miui/gamebooster/service/IGameBooster;->s0()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    :goto_1
    return-void
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 1

    const-string p1, "SelectGameLandActivity"

    const-string v0, "onServiceDisconnected"

    invoke-static {p1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method
