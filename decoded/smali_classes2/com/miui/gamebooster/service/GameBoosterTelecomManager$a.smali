.class Lcom/miui/gamebooster/service/GameBoosterTelecomManager$a;
.super Lcom/miui/gamebooster/service/IGameBoosterTelecomeManager$Stub;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/gamebooster/service/GameBoosterTelecomManager;->onBind(Landroid/content/Intent;)Landroid/os/IBinder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/miui/gamebooster/service/GameBoosterTelecomManager;


# direct methods
.method constructor <init>(Lcom/miui/gamebooster/service/GameBoosterTelecomManager;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/gamebooster/service/GameBoosterTelecomManager$a;->a:Lcom/miui/gamebooster/service/GameBoosterTelecomManager;

    invoke-direct {p0}, Lcom/miui/gamebooster/service/IGameBoosterTelecomeManager$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public O7()V
    .locals 2

    iget-object v0, p0, Lcom/miui/gamebooster/service/GameBoosterTelecomManager$a;->a:Lcom/miui/gamebooster/service/GameBoosterTelecomManager;

    invoke-static {v0}, Lcom/miui/gamebooster/service/GameBoosterTelecomManager;->a(Lcom/miui/gamebooster/service/GameBoosterTelecomManager;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/miui/gamebooster/service/GameBoosterTelecomManager$a$a;

    invoke-direct {v1, p0}, Lcom/miui/gamebooster/service/GameBoosterTelecomManager$a$a;-><init>(Lcom/miui/gamebooster/service/GameBoosterTelecomManager$a;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public t2()V
    .locals 2

    iget-object v0, p0, Lcom/miui/gamebooster/service/GameBoosterTelecomManager$a;->a:Lcom/miui/gamebooster/service/GameBoosterTelecomManager;

    invoke-static {v0}, Lcom/miui/gamebooster/service/GameBoosterTelecomManager;->a(Lcom/miui/gamebooster/service/GameBoosterTelecomManager;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/miui/gamebooster/service/GameBoosterTelecomManager$a$b;

    invoke-direct {v1, p0}, Lcom/miui/gamebooster/service/GameBoosterTelecomManager$a$b;-><init>(Lcom/miui/gamebooster/service/GameBoosterTelecomManager$a;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method
