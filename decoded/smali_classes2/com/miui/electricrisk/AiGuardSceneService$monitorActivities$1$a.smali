.class final Lcom/miui/electricrisk/AiGuardSceneService$monitorActivities$1$a;
.super Lbk/n;
.source "SourceFile"

# interfaces
.implements Lak/a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/electricrisk/AiGuardSceneService$monitorActivities$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
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
.field final synthetic a:Ljava/lang/reflect/Method;

.field final synthetic b:Lcom/miui/electricrisk/AiGuardSceneService$monitorActivities$1$cb$1;


# direct methods
.method constructor <init>(Ljava/lang/reflect/Method;Lcom/miui/electricrisk/AiGuardSceneService$monitorActivities$1$cb$1;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/electricrisk/AiGuardSceneService$monitorActivities$1$a;->a:Ljava/lang/reflect/Method;

    iput-object p2, p0, Lcom/miui/electricrisk/AiGuardSceneService$monitorActivities$1$a;->b:Lcom/miui/electricrisk/AiGuardSceneService$monitorActivities$1$cb$1;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lbk/n;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke()Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0}, Lcom/miui/electricrisk/AiGuardSceneService$monitorActivities$1$a;->invoke()V

    sget-object v0, Loj/t;->a:Loj/t;

    return-object v0
.end method

.method public final invoke()V
    .locals 4

    iget-object v0, p0, Lcom/miui/electricrisk/AiGuardSceneService$monitorActivities$1$a;->a:Ljava/lang/reflect/Method;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    iget-object v2, p0, Lcom/miui/electricrisk/AiGuardSceneService$monitorActivities$1$a;->b:Lcom/miui/electricrisk/AiGuardSceneService$monitorActivities$1$cb$1;

    const/4 v3, 0x0

    aput-object v2, v1, v3

    const/4 v2, 0x0

    invoke-virtual {v0, v2, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method
