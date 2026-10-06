.class public final Lcom/miui/electricrisk/AiGuardSceneService$a$b;
.super Landroid/telephony/PhoneStateListener;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/electricrisk/AiGuardSceneService$a;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/miui/electricrisk/AiGuardSceneService;

.field final synthetic b:Lnk/t;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lnk/t<",
            "Loj/l<",
            "Ljava/lang/Integer;",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lcom/miui/electricrisk/AiGuardSceneService;Lnk/t;Ljava/util/concurrent/Executor;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/miui/electricrisk/AiGuardSceneService;",
            "Lnk/t<",
            "-",
            "Loj/l<",
            "Ljava/lang/Integer;",
            "Ljava/lang/String;",
            ">;>;",
            "Ljava/util/concurrent/Executor;",
            ")V"
        }
    .end annotation

    iput-object p1, p0, Lcom/miui/electricrisk/AiGuardSceneService$a$b;->a:Lcom/miui/electricrisk/AiGuardSceneService;

    iput-object p2, p0, Lcom/miui/electricrisk/AiGuardSceneService$a$b;->b:Lnk/t;

    invoke-direct {p0, p3}, Landroid/telephony/PhoneStateListener;-><init>(Ljava/util/concurrent/Executor;)V

    return-void
.end method


# virtual methods
.method public onCallStateChanged(ILjava/lang/String;)V
    .locals 1
    .param p2    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    iget-object v0, p0, Lcom/miui/electricrisk/AiGuardSceneService$a$b;->a:Lcom/miui/electricrisk/AiGuardSceneService;

    invoke-static {v0}, Lcom/miui/electricrisk/AiGuardSceneService;->d(Lcom/miui/electricrisk/AiGuardSceneService;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/miui/electricrisk/AiGuardSceneService$a$b;->b:Lnk/t;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-static {p1, p2}, Loj/q;->a(Ljava/lang/Object;Ljava/lang/Object;)Loj/l;

    move-result-object p1

    invoke-interface {v0, p1}, Lnk/z;->m(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method
