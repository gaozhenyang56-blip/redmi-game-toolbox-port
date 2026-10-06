.class public final Lcom/miui/electricrisk/AiGuardSceneService$k$b;
.super Landroid/content/BroadcastReceiver;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/electricrisk/AiGuardSceneService$k;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation build Lkotlin/jvm/internal/SourceDebugExtension;
    value = {
        "SMAP\nAiGuardSceneService.kt\nKotlin\n*S Kotlin\n*F\n+ 1 AiGuardSceneService.kt\ncom/miui/electricrisk/AiGuardSceneService$voipStartMonitor$1$cb$1\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,421:1\n1#2:422\n*E\n"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/miui/electricrisk/AiGuardSceneService;

.field final synthetic b:Lnk/t;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lnk/t<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lcom/miui/electricrisk/AiGuardSceneService;Lnk/t;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/miui/electricrisk/AiGuardSceneService;",
            "Lnk/t<",
            "-",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/miui/electricrisk/AiGuardSceneService$k$b;->a:Lcom/miui/electricrisk/AiGuardSceneService;

    iput-object p2, p0, Lcom/miui/electricrisk/AiGuardSceneService$k$b;->b:Lnk/t;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 0
    .param p1    # Landroid/content/Context;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p2    # Landroid/content/Intent;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    iget-object p1, p0, Lcom/miui/electricrisk/AiGuardSceneService$k$b;->a:Lcom/miui/electricrisk/AiGuardSceneService;

    invoke-static {p1}, Lcom/miui/electricrisk/AiGuardSceneService;->d(Lcom/miui/electricrisk/AiGuardSceneService;)Z

    move-result p1

    if-eqz p1, :cond_0

    return-void

    :cond_0
    if-eqz p2, :cond_1

    const-string p1, "pkg"

    invoke-virtual {p2, p1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_1

    iget-object p2, p0, Lcom/miui/electricrisk/AiGuardSceneService$k$b;->b:Lnk/t;

    invoke-interface {p2, p1}, Lnk/z;->m(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    invoke-static {p1}, Lnk/j;->b(Ljava/lang/Object;)Lnk/j;

    :cond_1
    return-void
.end method
