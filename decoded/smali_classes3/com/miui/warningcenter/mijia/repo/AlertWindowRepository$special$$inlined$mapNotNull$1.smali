.class public final Lcom/miui/warningcenter/mijia/repo/AlertWindowRepository$special$$inlined$mapNotNull$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lkotlinx/coroutines/flow/e;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/warningcenter/mijia/repo/AlertWindowRepository;-><init>(Lcom/miui/warningcenter/mijia/datasource/MijiaDatasource;Lcom/miui/warningcenter/mijia/api/MijiaRemoteApi;Llk/d0;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lkotlinx/coroutines/flow/e<",
        "Lcom/miui/warningcenter/mijia/pojo/MijiaAlertWarning;",
        ">;"
    }
.end annotation

.annotation build Lkotlin/jvm/internal/SourceDebugExtension;
    value = {
        "SMAP\nSafeCollector.common.kt\nKotlin\n*S Kotlin\n*F\n+ 1 SafeCollector.common.kt\nkotlinx/coroutines/flow/internal/SafeCollector_commonKt$unsafeFlow$1\n+ 2 Emitters.kt\nkotlinx/coroutines/flow/FlowKt__EmittersKt\n*L\n1#1,112:1\n51#2,5:113\n*E\n"
    }
.end annotation


# instance fields
.field final synthetic $this_unsafeTransform$inlined:Lkotlinx/coroutines/flow/e;


# direct methods
.method public constructor <init>(Lkotlinx/coroutines/flow/e;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/warningcenter/mijia/repo/AlertWindowRepository$special$$inlined$mapNotNull$1;->$this_unsafeTransform$inlined:Lkotlinx/coroutines/flow/e;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public collect(Lkotlinx/coroutines/flow/f;Ltj/d;)Ljava/lang/Object;
    .locals 2
    .param p1    # Lkotlinx/coroutines/flow/f;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Ltj/d;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    iget-object v0, p0, Lcom/miui/warningcenter/mijia/repo/AlertWindowRepository$special$$inlined$mapNotNull$1;->$this_unsafeTransform$inlined:Lkotlinx/coroutines/flow/e;

    new-instance v1, Lcom/miui/warningcenter/mijia/repo/AlertWindowRepository$special$$inlined$mapNotNull$1$2;

    invoke-direct {v1, p1}, Lcom/miui/warningcenter/mijia/repo/AlertWindowRepository$special$$inlined$mapNotNull$1$2;-><init>(Lkotlinx/coroutines/flow/f;)V

    invoke-interface {v0, v1, p2}, Lkotlinx/coroutines/flow/e;->collect(Lkotlinx/coroutines/flow/f;Ltj/d;)Ljava/lang/Object;

    move-result-object p1

    invoke-static {}, Luj/b;->c()Ljava/lang/Object;

    move-result-object p2

    if-ne p1, p2, :cond_0

    return-object p1

    :cond_0
    sget-object p1, Loj/t;->a:Loj/t;

    return-object p1
.end method
