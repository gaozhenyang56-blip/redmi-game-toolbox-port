.class public final Lcom/miui/warningcenter/mijia/repo/AlertWindowRepository$special$$inlined$mapNotNull$1$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lkotlinx/coroutines/flow/f;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/warningcenter/mijia/repo/AlertWindowRepository$special$$inlined$mapNotNull$1;->collect(Lkotlinx/coroutines/flow/f;Ltj/d;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lkotlinx/coroutines/flow/f;"
    }
.end annotation

.annotation build Lkotlin/jvm/internal/SourceDebugExtension;
    value = {
        "SMAP\nEmitters.kt\nKotlin\n*S Kotlin\n*F\n+ 1 Emitters.kt\nkotlinx/coroutines/flow/FlowKt__EmittersKt$unsafeTransform$1$1\n+ 2 Transform.kt\nkotlinx/coroutines/flow/FlowKt__TransformKt\n+ 3 AlertWindowRepository.kt\ncom/miui/warningcenter/mijia/repo/AlertWindowRepository\n*L\n1#1,222:1\n55#2:223\n56#2:228\n21#3,4:224\n*E\n"
    }
.end annotation


# instance fields
.field final synthetic $this_unsafeFlow:Lkotlinx/coroutines/flow/f;


# direct methods
.method public constructor <init>(Lkotlinx/coroutines/flow/f;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/warningcenter/mijia/repo/AlertWindowRepository$special$$inlined$mapNotNull$1$2;->$this_unsafeFlow:Lkotlinx/coroutines/flow/f;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final emit(Ljava/lang/Object;Ltj/d;)Ljava/lang/Object;
    .locals 10
    .param p2    # Ltj/d;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    instance-of v0, p2, Lcom/miui/warningcenter/mijia/repo/AlertWindowRepository$special$$inlined$mapNotNull$1$2$1;

    if-eqz v0, :cond_0

    move-object v0, p2

    check-cast v0, Lcom/miui/warningcenter/mijia/repo/AlertWindowRepository$special$$inlined$mapNotNull$1$2$1;

    iget v1, v0, Lcom/miui/warningcenter/mijia/repo/AlertWindowRepository$special$$inlined$mapNotNull$1$2$1;->label:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_0

    sub-int/2addr v1, v2

    iput v1, v0, Lcom/miui/warningcenter/mijia/repo/AlertWindowRepository$special$$inlined$mapNotNull$1$2$1;->label:I

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/miui/warningcenter/mijia/repo/AlertWindowRepository$special$$inlined$mapNotNull$1$2$1;

    invoke-direct {v0, p0, p2}, Lcom/miui/warningcenter/mijia/repo/AlertWindowRepository$special$$inlined$mapNotNull$1$2$1;-><init>(Lcom/miui/warningcenter/mijia/repo/AlertWindowRepository$special$$inlined$mapNotNull$1$2;Ltj/d;)V

    :goto_0
    iget-object p2, v0, Lcom/miui/warningcenter/mijia/repo/AlertWindowRepository$special$$inlined$mapNotNull$1$2$1;->result:Ljava/lang/Object;

    invoke-static {}, Luj/b;->c()Ljava/lang/Object;

    move-result-object v1

    iget v2, v0, Lcom/miui/warningcenter/mijia/repo/AlertWindowRepository$special$$inlined$mapNotNull$1$2$1;->label:I

    const/4 v3, 0x1

    if-eqz v2, :cond_2

    if-ne v2, v3, :cond_1

    invoke-static {p2}, Loj/n;->b(Ljava/lang/Object;)V

    goto :goto_2

    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_2
    invoke-static {p2}, Loj/n;->b(Ljava/lang/Object;)V

    iget-object p2, p0, Lcom/miui/warningcenter/mijia/repo/AlertWindowRepository$special$$inlined$mapNotNull$1$2;->$this_unsafeFlow:Lkotlinx/coroutines/flow/f;

    check-cast p1, Lorg/json/JSONObject;

    const-string v2, "warning"

    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->opt(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    if-nez v4, :cond_3

    const/4 p1, 0x0

    goto :goto_1

    :cond_3
    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string p1, "mijiaPush.optString(\"warning\")"

    invoke-static {v4, p1}, Lbk/m;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v7, 0x0

    const/4 v8, 0x4

    const/4 v9, 0x0

    const-string v5, "\\"

    const-string v6, ""

    invoke-static/range {v4 .. v9}, Ljk/f;->s(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    new-instance v2, Lcom/google/gson/Gson;

    invoke-direct {v2}, Lcom/google/gson/Gson;-><init>()V

    const-class v4, Lcom/miui/warningcenter/mijia/pojo/MijiaAlertWarning;

    invoke-virtual {v2, p1, v4}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    :goto_1
    if-eqz p1, :cond_4

    iput v3, v0, Lcom/miui/warningcenter/mijia/repo/AlertWindowRepository$special$$inlined$mapNotNull$1$2$1;->label:I

    invoke-interface {p2, p1, v0}, Lkotlinx/coroutines/flow/f;->emit(Ljava/lang/Object;Ltj/d;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v1, :cond_4

    return-object v1

    :cond_4
    :goto_2
    sget-object p1, Loj/t;->a:Loj/t;

    return-object p1
.end method
