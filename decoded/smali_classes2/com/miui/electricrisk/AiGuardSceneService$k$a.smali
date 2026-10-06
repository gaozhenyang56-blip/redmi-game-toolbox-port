.class final Lcom/miui/electricrisk/AiGuardSceneService$k$a;
.super Lbk/n;
.source "SourceFile"

# interfaces
.implements Lak/a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/electricrisk/AiGuardSceneService$k;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lbk/n;",
        "Lak/a<",
        "Loj/t;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/miui/electricrisk/AiGuardSceneService;

.field final synthetic b:Lcom/miui/electricrisk/AiGuardSceneService$k$b;


# direct methods
.method constructor <init>(Lcom/miui/electricrisk/AiGuardSceneService;Lcom/miui/electricrisk/AiGuardSceneService$k$b;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/electricrisk/AiGuardSceneService$k$a;->a:Lcom/miui/electricrisk/AiGuardSceneService;

    iput-object p2, p0, Lcom/miui/electricrisk/AiGuardSceneService$k$a;->b:Lcom/miui/electricrisk/AiGuardSceneService$k$b;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lbk/n;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke()Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0}, Lcom/miui/electricrisk/AiGuardSceneService$k$a;->invoke()V

    sget-object v0, Loj/t;->a:Loj/t;

    return-object v0
.end method

.method public final invoke()V
    .locals 2

    iget-object v0, p0, Lcom/miui/electricrisk/AiGuardSceneService$k$a;->a:Lcom/miui/electricrisk/AiGuardSceneService;

    iget-object v1, p0, Lcom/miui/electricrisk/AiGuardSceneService$k$a;->b:Lcom/miui/electricrisk/AiGuardSceneService$k$b;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    return-void
.end method
