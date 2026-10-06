.class final Lcom/miui/electricrisk/AiGuardSceneService$i$a$a;
.super Lkotlin/coroutines/jvm/internal/d;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/electricrisk/AiGuardSceneService$i$a;->a(Loj/l;Ltj/d;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation runtime Lkotlin/coroutines/jvm/internal/DebugMetadata;
    c = "com.miui.electricrisk.AiGuardSceneService$voipMonitor$3$1"
    f = "AiGuardSceneService.kt"
    i = {
        0x0,
        0x0,
        0x0,
        0x1,
        0x1
    }
    l = {
        0xf2,
        0xf7,
        0xfb
    }
    m = "emit"
    n = {
        "this",
        "last",
        "curr",
        "this",
        "curr"
    }
    s = {
        "L$0",
        "L$1",
        "L$2",
        "L$0",
        "L$1"
    }
.end annotation


# instance fields
.field a:Ljava/lang/Object;

.field b:Ljava/lang/Object;

.field c:Ljava/lang/Object;

.field synthetic d:Ljava/lang/Object;

.field final synthetic e:Lcom/miui/electricrisk/AiGuardSceneService$i$a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/miui/electricrisk/AiGuardSceneService$i$a<",
            "TT;>;"
        }
    .end annotation
.end field

.field f:I


# direct methods
.method constructor <init>(Lcom/miui/electricrisk/AiGuardSceneService$i$a;Ltj/d;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/miui/electricrisk/AiGuardSceneService$i$a<",
            "-TT;>;",
            "Ltj/d<",
            "-",
            "Lcom/miui/electricrisk/AiGuardSceneService$i$a$a;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/miui/electricrisk/AiGuardSceneService$i$a$a;->e:Lcom/miui/electricrisk/AiGuardSceneService$i$a;

    invoke-direct {p0, p2}, Lkotlin/coroutines/jvm/internal/d;-><init>(Ltj/d;)V

    return-void
.end method


# virtual methods
.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1    # Ljava/lang/Object;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    iput-object p1, p0, Lcom/miui/electricrisk/AiGuardSceneService$i$a$a;->d:Ljava/lang/Object;

    iget p1, p0, Lcom/miui/electricrisk/AiGuardSceneService$i$a$a;->f:I

    const/high16 v0, -0x80000000

    or-int/2addr p1, v0

    iput p1, p0, Lcom/miui/electricrisk/AiGuardSceneService$i$a$a;->f:I

    iget-object p1, p0, Lcom/miui/electricrisk/AiGuardSceneService$i$a$a;->e:Lcom/miui/electricrisk/AiGuardSceneService$i$a;

    const/4 v0, 0x0

    invoke-virtual {p1, v0, p0}, Lcom/miui/electricrisk/AiGuardSceneService$i$a;->a(Loj/l;Ltj/d;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method
