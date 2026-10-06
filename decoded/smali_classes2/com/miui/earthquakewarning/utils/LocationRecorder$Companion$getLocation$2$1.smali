.class final Lcom/miui/earthquakewarning/utils/LocationRecorder$Companion$getLocation$2$1;
.super Lkotlin/coroutines/jvm/internal/j;
.source "SourceFile"

# interfaces
.implements Lak/p;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/earthquakewarning/utils/LocationRecorder$Companion$getLocation$2;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/coroutines/jvm/internal/j;",
        "Lak/p<",
        "Llk/i0;",
        "Ltj/d<",
        "-",
        "Landroid/location/Location;",
        ">;",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/coroutines/jvm/internal/DebugMetadata;
    c = "com.miui.earthquakewarning.utils.LocationRecorder$Companion$getLocation$2$1"
    f = "LocationRecorder.kt"
    i = {}
    l = {
        0x2b
    }
    m = "invokeSuspend"
    n = {}
    s = {}
.end annotation

.annotation build Lkotlin/jvm/internal/SourceDebugExtension;
    value = {
        "SMAP\nLocationRecorder.kt\nKotlin\n*S Kotlin\n*F\n+ 1 LocationRecorder.kt\ncom/miui/earthquakewarning/utils/LocationRecorder$Companion$getLocation$2$1\n+ 2 CancellableContinuation.kt\nkotlinx/coroutines/CancellableContinuationKt\n*L\n1#1,42:1\n314#2,11:43\n*S KotlinDebug\n*F\n+ 1 LocationRecorder.kt\ncom/miui/earthquakewarning/utils/LocationRecorder$Companion$getLocation$2$1\n*L\n28#1:43,11\n*E\n"
    }
.end annotation


# instance fields
.field final synthetic $context:Landroid/content/Context;

.field L$0:Ljava/lang/Object;

.field label:I


# direct methods
.method constructor <init>(Landroid/content/Context;Ltj/d;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ltj/d<",
            "-",
            "Lcom/miui/earthquakewarning/utils/LocationRecorder$Companion$getLocation$2$1;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/miui/earthquakewarning/utils/LocationRecorder$Companion$getLocation$2$1;->$context:Landroid/content/Context;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p2}, Lkotlin/coroutines/jvm/internal/j;-><init>(ILtj/d;)V

    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Ltj/d;)Ltj/d;
    .locals 1
    .param p1    # Ljava/lang/Object;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p2    # Ltj/d;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Ltj/d<",
            "*>;)",
            "Ltj/d<",
            "Loj/t;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    new-instance p1, Lcom/miui/earthquakewarning/utils/LocationRecorder$Companion$getLocation$2$1;

    iget-object v0, p0, Lcom/miui/earthquakewarning/utils/LocationRecorder$Companion$getLocation$2$1;->$context:Landroid/content/Context;

    invoke-direct {p1, v0, p2}, Lcom/miui/earthquakewarning/utils/LocationRecorder$Companion$getLocation$2$1;-><init>(Landroid/content/Context;Ltj/d;)V

    return-object p1
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Llk/i0;

    check-cast p2, Ltj/d;

    invoke-virtual {p0, p1, p2}, Lcom/miui/earthquakewarning/utils/LocationRecorder$Companion$getLocation$2$1;->invoke(Llk/i0;Ltj/d;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invoke(Llk/i0;Ltj/d;)Ljava/lang/Object;
    .locals 0
    .param p1    # Llk/i0;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Ltj/d;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Llk/i0;",
            "Ltj/d<",
            "-",
            "Landroid/location/Location;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    invoke-virtual {p0, p1, p2}, Lcom/miui/earthquakewarning/utils/LocationRecorder$Companion$getLocation$2$1;->create(Ljava/lang/Object;Ltj/d;)Ltj/d;

    move-result-object p1

    check-cast p1, Lcom/miui/earthquakewarning/utils/LocationRecorder$Companion$getLocation$2$1;

    sget-object p2, Loj/t;->a:Loj/t;

    invoke-virtual {p1, p2}, Lcom/miui/earthquakewarning/utils/LocationRecorder$Companion$getLocation$2$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 6
    .param p1    # Ljava/lang/Object;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    invoke-static {}, Luj/b;->c()Ljava/lang/Object;

    move-result-object v0

    iget v1, p0, Lcom/miui/earthquakewarning/utils/LocationRecorder$Companion$getLocation$2$1;->label:I

    const/4 v2, 0x1

    if-eqz v1, :cond_1

    if-ne v1, v2, :cond_0

    iget-object v0, p0, Lcom/miui/earthquakewarning/utils/LocationRecorder$Companion$getLocation$2$1;->L$0:Ljava/lang/Object;

    check-cast v0, Landroid/content/Context;

    invoke-static {p1}, Loj/n;->b(Ljava/lang/Object;)V

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    invoke-static {p1}, Loj/n;->b(Ljava/lang/Object;)V

    iget-object p1, p0, Lcom/miui/earthquakewarning/utils/LocationRecorder$Companion$getLocation$2$1;->$context:Landroid/content/Context;

    iput-object p1, p0, Lcom/miui/earthquakewarning/utils/LocationRecorder$Companion$getLocation$2$1;->L$0:Ljava/lang/Object;

    iput v2, p0, Lcom/miui/earthquakewarning/utils/LocationRecorder$Companion$getLocation$2$1;->label:I

    new-instance v1, Llk/m;

    invoke-static {p0}, Luj/b;->b(Ltj/d;)Ltj/d;

    move-result-object v3

    invoke-direct {v1, v3, v2}, Llk/m;-><init>(Ltj/d;I)V

    invoke-virtual {v1}, Llk/m;->A()V

    new-instance v2, Lz/c;

    invoke-direct {v2}, Lz/c;-><init>()V

    const-class v3, Landroid/location/LocationManager;

    invoke-virtual {p1, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/location/LocationManager;

    new-instance v3, Landroidx/profileinstaller/g;

    invoke-direct {v3}, Landroidx/profileinstaller/g;-><init>()V

    new-instance v4, Lcom/miui/earthquakewarning/utils/LocationRecorder$Companion$getLocation$2$1$1$2;

    invoke-direct {v4, v1}, Lcom/miui/earthquakewarning/utils/LocationRecorder$Companion$getLocation$2$1$1$2;-><init>(Llk/l;)V

    const-string v5, "network"

    invoke-static {p1, v5, v2, v3, v4}, Landroidx/core/location/i;->c(Landroid/location/LocationManager;Ljava/lang/String;Lz/c;Ljava/util/concurrent/Executor;Lb0/a;)V

    new-instance p1, Lcom/miui/earthquakewarning/utils/LocationRecorder$Companion$getLocation$2$1$1$3;

    invoke-direct {p1, v2}, Lcom/miui/earthquakewarning/utils/LocationRecorder$Companion$getLocation$2$1$1$3;-><init>(Lz/c;)V

    invoke-interface {v1, p1}, Llk/l;->h(Lak/l;)V

    invoke-virtual {v1}, Llk/m;->w()Ljava/lang/Object;

    move-result-object p1

    invoke-static {}, Luj/b;->c()Ljava/lang/Object;

    move-result-object v1

    if-ne p1, v1, :cond_2

    invoke-static {p0}, Lkotlin/coroutines/jvm/internal/g;->c(Ltj/d;)V

    :cond_2
    if-ne p1, v0, :cond_3

    return-object v0

    :cond_3
    :goto_0
    return-object p1
.end method
