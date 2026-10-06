.class final Lcom/miui/earthquakewarning/ui/EarthquakeWarningDemoFragment$onViewCreated$2$2;
.super Lkotlin/coroutines/jvm/internal/j;
.source "SourceFile"

# interfaces
.implements Lak/p;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/earthquakewarning/ui/EarthquakeWarningDemoFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
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
        "Loj/t;",
        ">;",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/coroutines/jvm/internal/DebugMetadata;
    c = "com.miui.earthquakewarning.ui.EarthquakeWarningDemoFragment$onViewCreated$2$2"
    f = "EarthquakeWarningDemoFragment.kt"
    i = {}
    l = {}
    m = "invokeSuspend"
    n = {}
    s = {}
.end annotation


# instance fields
.field private synthetic L$0:Ljava/lang/Object;

.field label:I

.field final synthetic this$0:Lcom/miui/earthquakewarning/ui/EarthquakeWarningDemoFragment;


# direct methods
.method constructor <init>(Lcom/miui/earthquakewarning/ui/EarthquakeWarningDemoFragment;Ltj/d;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/miui/earthquakewarning/ui/EarthquakeWarningDemoFragment;",
            "Ltj/d<",
            "-",
            "Lcom/miui/earthquakewarning/ui/EarthquakeWarningDemoFragment$onViewCreated$2$2;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/miui/earthquakewarning/ui/EarthquakeWarningDemoFragment$onViewCreated$2$2;->this$0:Lcom/miui/earthquakewarning/ui/EarthquakeWarningDemoFragment;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p2}, Lkotlin/coroutines/jvm/internal/j;-><init>(ILtj/d;)V

    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Ltj/d;)Ltj/d;
    .locals 2
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

    new-instance v0, Lcom/miui/earthquakewarning/ui/EarthquakeWarningDemoFragment$onViewCreated$2$2;

    iget-object v1, p0, Lcom/miui/earthquakewarning/ui/EarthquakeWarningDemoFragment$onViewCreated$2$2;->this$0:Lcom/miui/earthquakewarning/ui/EarthquakeWarningDemoFragment;

    invoke-direct {v0, v1, p2}, Lcom/miui/earthquakewarning/ui/EarthquakeWarningDemoFragment$onViewCreated$2$2;-><init>(Lcom/miui/earthquakewarning/ui/EarthquakeWarningDemoFragment;Ltj/d;)V

    iput-object p1, v0, Lcom/miui/earthquakewarning/ui/EarthquakeWarningDemoFragment$onViewCreated$2$2;->L$0:Ljava/lang/Object;

    return-object v0
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Llk/i0;

    check-cast p2, Ltj/d;

    invoke-virtual {p0, p1, p2}, Lcom/miui/earthquakewarning/ui/EarthquakeWarningDemoFragment$onViewCreated$2$2;->invoke(Llk/i0;Ltj/d;)Ljava/lang/Object;

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
            "Loj/t;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    invoke-virtual {p0, p1, p2}, Lcom/miui/earthquakewarning/ui/EarthquakeWarningDemoFragment$onViewCreated$2$2;->create(Ljava/lang/Object;Ltj/d;)Ltj/d;

    move-result-object p1

    check-cast p1, Lcom/miui/earthquakewarning/ui/EarthquakeWarningDemoFragment$onViewCreated$2$2;

    sget-object p2, Loj/t;->a:Loj/t;

    invoke-virtual {p1, p2}, Lcom/miui/earthquakewarning/ui/EarthquakeWarningDemoFragment$onViewCreated$2$2;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 8
    .param p1    # Ljava/lang/Object;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    invoke-static {}, Luj/b;->c()Ljava/lang/Object;

    iget v0, p0, Lcom/miui/earthquakewarning/ui/EarthquakeWarningDemoFragment$onViewCreated$2$2;->label:I

    if-nez v0, :cond_0

    invoke-static {p1}, Loj/n;->b(Ljava/lang/Object;)V

    iget-object p1, p0, Lcom/miui/earthquakewarning/ui/EarthquakeWarningDemoFragment$onViewCreated$2$2;->L$0:Ljava/lang/Object;

    check-cast p1, Llk/i0;

    iget-object v6, p0, Lcom/miui/earthquakewarning/ui/EarthquakeWarningDemoFragment$onViewCreated$2$2;->this$0:Lcom/miui/earthquakewarning/ui/EarthquakeWarningDemoFragment;

    const/4 v1, 0x0

    const/4 v2, 0x0

    new-instance v3, Lcom/miui/earthquakewarning/ui/EarthquakeWarningDemoFragment$onViewCreated$2$2$1;

    const/4 v7, 0x0

    invoke-direct {v3, v6, v7}, Lcom/miui/earthquakewarning/ui/EarthquakeWarningDemoFragment$onViewCreated$2$2$1;-><init>(Lcom/miui/earthquakewarning/ui/EarthquakeWarningDemoFragment;Ltj/d;)V

    const/4 v4, 0x3

    const/4 v5, 0x0

    move-object v0, p1

    invoke-static/range {v0 .. v5}, Llk/g;->b(Llk/i0;Ltj/g;Llk/k0;Lak/p;ILjava/lang/Object;)Llk/s1;

    move-result-object v0

    invoke-virtual {v6, v0}, Lcom/miui/earthquakewarning/ui/EarthquakeWarningDemoFragment;->setJob(Llk/s1;)V

    new-instance v3, Lcom/miui/earthquakewarning/ui/EarthquakeWarningDemoFragment$onViewCreated$2$2$2;

    invoke-direct {v3, v7}, Lcom/miui/earthquakewarning/ui/EarthquakeWarningDemoFragment$onViewCreated$2$2$2;-><init>(Ltj/d;)V

    move-object v0, p1

    invoke-static/range {v0 .. v5}, Llk/g;->b(Llk/i0;Ltj/g;Llk/k0;Lak/p;ILjava/lang/Object;)Llk/s1;

    sget-object p1, Loj/t;->a:Loj/t;

    return-object p1

    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
