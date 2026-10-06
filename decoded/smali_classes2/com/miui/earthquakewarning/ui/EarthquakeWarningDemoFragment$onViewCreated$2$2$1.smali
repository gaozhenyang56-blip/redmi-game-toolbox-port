.class final Lcom/miui/earthquakewarning/ui/EarthquakeWarningDemoFragment$onViewCreated$2$2$1;
.super Lkotlin/coroutines/jvm/internal/j;
.source "SourceFile"

# interfaces
.implements Lak/p;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/earthquakewarning/ui/EarthquakeWarningDemoFragment$onViewCreated$2$2;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
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
    c = "com.miui.earthquakewarning.ui.EarthquakeWarningDemoFragment$onViewCreated$2$2$1"
    f = "EarthquakeWarningDemoFragment.kt"
    i = {}
    l = {
        0x6b
    }
    m = "invokeSuspend"
    n = {}
    s = {}
.end annotation


# instance fields
.field I$0:I

.field I$1:I

.field L$0:Ljava/lang/Object;

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
            "Lcom/miui/earthquakewarning/ui/EarthquakeWarningDemoFragment$onViewCreated$2$2$1;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/miui/earthquakewarning/ui/EarthquakeWarningDemoFragment$onViewCreated$2$2$1;->this$0:Lcom/miui/earthquakewarning/ui/EarthquakeWarningDemoFragment;

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

    new-instance p1, Lcom/miui/earthquakewarning/ui/EarthquakeWarningDemoFragment$onViewCreated$2$2$1;

    iget-object v0, p0, Lcom/miui/earthquakewarning/ui/EarthquakeWarningDemoFragment$onViewCreated$2$2$1;->this$0:Lcom/miui/earthquakewarning/ui/EarthquakeWarningDemoFragment;

    invoke-direct {p1, v0, p2}, Lcom/miui/earthquakewarning/ui/EarthquakeWarningDemoFragment$onViewCreated$2$2$1;-><init>(Lcom/miui/earthquakewarning/ui/EarthquakeWarningDemoFragment;Ltj/d;)V

    return-object p1
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Llk/i0;

    check-cast p2, Ltj/d;

    invoke-virtual {p0, p1, p2}, Lcom/miui/earthquakewarning/ui/EarthquakeWarningDemoFragment$onViewCreated$2$2$1;->invoke(Llk/i0;Ltj/d;)Ljava/lang/Object;

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

    invoke-virtual {p0, p1, p2}, Lcom/miui/earthquakewarning/ui/EarthquakeWarningDemoFragment$onViewCreated$2$2$1;->create(Ljava/lang/Object;Ltj/d;)Ltj/d;

    move-result-object p1

    check-cast p1, Lcom/miui/earthquakewarning/ui/EarthquakeWarningDemoFragment$onViewCreated$2$2$1;

    sget-object p2, Loj/t;->a:Loj/t;

    invoke-virtual {p1, p2}, Lcom/miui/earthquakewarning/ui/EarthquakeWarningDemoFragment$onViewCreated$2$2$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 10
    .param p1    # Ljava/lang/Object;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    invoke-static {}, Luj/b;->c()Ljava/lang/Object;

    move-result-object v0

    iget v1, p0, Lcom/miui/earthquakewarning/ui/EarthquakeWarningDemoFragment$onViewCreated$2$2$1;->label:I

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz v1, :cond_1

    if-ne v1, v3, :cond_0

    iget v1, p0, Lcom/miui/earthquakewarning/ui/EarthquakeWarningDemoFragment$onViewCreated$2$2$1;->I$1:I

    iget v4, p0, Lcom/miui/earthquakewarning/ui/EarthquakeWarningDemoFragment$onViewCreated$2$2$1;->I$0:I

    iget-object v5, p0, Lcom/miui/earthquakewarning/ui/EarthquakeWarningDemoFragment$onViewCreated$2$2$1;->L$0:Ljava/lang/Object;

    check-cast v5, Lcom/miui/earthquakewarning/ui/EarthquakeWarningDemoFragment;

    invoke-static {p1}, Loj/n;->b(Ljava/lang/Object;)V

    move-object p1, p0

    goto :goto_1

    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    invoke-static {p1}, Loj/n;->b(Ljava/lang/Object;)V

    iget-object p1, p0, Lcom/miui/earthquakewarning/ui/EarthquakeWarningDemoFragment$onViewCreated$2$2$1;->this$0:Lcom/miui/earthquakewarning/ui/EarthquakeWarningDemoFragment;

    const/16 v1, 0xa

    move-object v5, p1

    move v4, v1

    move v1, v2

    move-object p1, p0

    :goto_0
    if-ge v1, v4, :cond_3

    invoke-static {v5}, Lcom/miui/earthquakewarning/ui/EarthquakeWarningDemoFragment;->access$getBinding(Lcom/miui/earthquakewarning/ui/EarthquakeWarningDemoFragment;)Ljf/b;

    move-result-object v6

    iget-object v6, v6, Ljf/b;->f:Landroid/widget/Button;

    const v7, 0x7f120780

    new-array v8, v3, [Ljava/lang/Object;

    rsub-int/lit8 v9, v1, 0xa

    invoke-static {v9}, Lkotlin/coroutines/jvm/internal/b;->b(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v8, v2

    invoke-virtual {v5, v7, v8}, Landroidx/fragment/app/Fragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const-wide/16 v6, 0x3e8

    iput-object v5, p1, Lcom/miui/earthquakewarning/ui/EarthquakeWarningDemoFragment$onViewCreated$2$2$1;->L$0:Ljava/lang/Object;

    iput v4, p1, Lcom/miui/earthquakewarning/ui/EarthquakeWarningDemoFragment$onViewCreated$2$2$1;->I$0:I

    iput v1, p1, Lcom/miui/earthquakewarning/ui/EarthquakeWarningDemoFragment$onViewCreated$2$2$1;->I$1:I

    iput v3, p1, Lcom/miui/earthquakewarning/ui/EarthquakeWarningDemoFragment$onViewCreated$2$2$1;->label:I

    invoke-static {v6, v7, p1}, Llk/q0;->a(JLtj/d;)Ljava/lang/Object;

    move-result-object v6

    if-ne v6, v0, :cond_2

    return-object v0

    :cond_2
    :goto_1
    add-int/2addr v1, v3

    goto :goto_0

    :cond_3
    iget-object p1, p1, Lcom/miui/earthquakewarning/ui/EarthquakeWarningDemoFragment$onViewCreated$2$2$1;->this$0:Lcom/miui/earthquakewarning/ui/EarthquakeWarningDemoFragment;

    invoke-static {p1}, Lcom/miui/earthquakewarning/ui/EarthquakeWarningDemoFragment;->access$getBinding(Lcom/miui/earthquakewarning/ui/EarthquakeWarningDemoFragment;)Ljf/b;

    move-result-object p1

    iget-object p1, p1, Ljf/b;->f:Landroid/widget/Button;

    const v0, 0x7f12077f

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(I)V

    sget-object p1, Loj/t;->a:Loj/t;

    return-object p1
.end method
