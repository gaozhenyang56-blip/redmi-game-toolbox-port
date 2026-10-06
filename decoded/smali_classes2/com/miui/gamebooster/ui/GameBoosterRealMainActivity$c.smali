.class Lcom/miui/gamebooster/ui/GameBoosterRealMainActivity$c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lo4/a$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/gamebooster/ui/GameBoosterRealMainActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/miui/gamebooster/ui/GameBoosterRealMainActivity;


# direct methods
.method constructor <init>(Lcom/miui/gamebooster/ui/GameBoosterRealMainActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/gamebooster/ui/GameBoosterRealMainActivity$c;->a:Lcom/miui/gamebooster/ui/GameBoosterRealMainActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public v1(Landroid/os/IBinder;)Z
    .locals 3

    iget-object v0, p0, Lcom/miui/gamebooster/ui/GameBoosterRealMainActivity$c;->a:Lcom/miui/gamebooster/ui/GameBoosterRealMainActivity;

    invoke-static {p1}, Lcom/miui/gamebooster/service/IGameBooster$Stub;->asInterface(Landroid/os/IBinder;)Lcom/miui/gamebooster/service/IGameBooster;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/miui/gamebooster/ui/GameBoosterRealMainActivity;->j0(Lcom/miui/gamebooster/ui/GameBoosterRealMainActivity;Lcom/miui/gamebooster/service/IGameBooster;)Lcom/miui/gamebooster/service/IGameBooster;

    invoke-static {}, Lcom/miui/gamebooster/ui/GameBoosterRealMainActivity;->h0()Ljava/lang/String;

    move-result-object p1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "gameBooster :"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/miui/gamebooster/ui/GameBoosterRealMainActivity$c;->a:Lcom/miui/gamebooster/ui/GameBoosterRealMainActivity;

    invoke-static {v1}, Lcom/miui/gamebooster/ui/GameBoosterRealMainActivity;->i0(Lcom/miui/gamebooster/ui/GameBoosterRealMainActivity;)Lcom/miui/gamebooster/service/IGameBooster;

    move-result-object v1

    const/4 v2, 0x0

    if-nez v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    move v1, v2

    :goto_0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p1, p0, Lcom/miui/gamebooster/ui/GameBoosterRealMainActivity$c;->a:Lcom/miui/gamebooster/ui/GameBoosterRealMainActivity;

    invoke-static {p1}, Lcom/miui/gamebooster/ui/GameBoosterRealMainActivity;->i0(Lcom/miui/gamebooster/ui/GameBoosterRealMainActivity;)Lcom/miui/gamebooster/service/IGameBooster;

    move-result-object p1

    if-eqz p1, :cond_1

    :try_start_0
    iget-object p1, p0, Lcom/miui/gamebooster/ui/GameBoosterRealMainActivity$c;->a:Lcom/miui/gamebooster/ui/GameBoosterRealMainActivity;

    invoke-static {p1}, Lcom/miui/gamebooster/ui/GameBoosterRealMainActivity;->i0(Lcom/miui/gamebooster/ui/GameBoosterRealMainActivity;)Lcom/miui/gamebooster/service/IGameBooster;

    move-result-object p1

    invoke-interface {p1}, Lcom/miui/gamebooster/service/IGameBooster;->s0()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p1

    invoke-static {}, Lcom/miui/gamebooster/ui/GameBoosterRealMainActivity;->h0()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    :goto_1
    return v2
.end method
