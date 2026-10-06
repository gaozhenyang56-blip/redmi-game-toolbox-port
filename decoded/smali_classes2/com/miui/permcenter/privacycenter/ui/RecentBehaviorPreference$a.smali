.class final Lcom/miui/permcenter/privacycenter/ui/RecentBehaviorPreference$a;
.super Lkotlin/coroutines/jvm/internal/j;
.source "SourceFile"

# interfaces
.implements Lak/p;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/permcenter/privacycenter/ui/RecentBehaviorPreference;->n()V
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
    c = "com.miui.permcenter.privacycenter.ui.RecentBehaviorPreference$bindData$1"
    f = "RecentBehaviorPreference.kt"
    i = {}
    l = {
        0x70
    }
    m = "invokeSuspend"
    n = {}
    s = {}
.end annotation


# instance fields
.field a:I

.field final synthetic b:Lcom/miui/permcenter/privacycenter/ui/RecentBehaviorPreference;


# direct methods
.method constructor <init>(Lcom/miui/permcenter/privacycenter/ui/RecentBehaviorPreference;Ltj/d;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/miui/permcenter/privacycenter/ui/RecentBehaviorPreference;",
            "Ltj/d<",
            "-",
            "Lcom/miui/permcenter/privacycenter/ui/RecentBehaviorPreference$a;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/miui/permcenter/privacycenter/ui/RecentBehaviorPreference$a;->b:Lcom/miui/permcenter/privacycenter/ui/RecentBehaviorPreference;

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

    new-instance p1, Lcom/miui/permcenter/privacycenter/ui/RecentBehaviorPreference$a;

    iget-object v0, p0, Lcom/miui/permcenter/privacycenter/ui/RecentBehaviorPreference$a;->b:Lcom/miui/permcenter/privacycenter/ui/RecentBehaviorPreference;

    invoke-direct {p1, v0, p2}, Lcom/miui/permcenter/privacycenter/ui/RecentBehaviorPreference$a;-><init>(Lcom/miui/permcenter/privacycenter/ui/RecentBehaviorPreference;Ltj/d;)V

    return-object p1
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Llk/i0;

    check-cast p2, Ltj/d;

    invoke-virtual {p0, p1, p2}, Lcom/miui/permcenter/privacycenter/ui/RecentBehaviorPreference$a;->invoke(Llk/i0;Ltj/d;)Ljava/lang/Object;

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

    invoke-virtual {p0, p1, p2}, Lcom/miui/permcenter/privacycenter/ui/RecentBehaviorPreference$a;->create(Ljava/lang/Object;Ltj/d;)Ltj/d;

    move-result-object p1

    check-cast p1, Lcom/miui/permcenter/privacycenter/ui/RecentBehaviorPreference$a;

    sget-object p2, Loj/t;->a:Loj/t;

    invoke-virtual {p1, p2}, Lcom/miui/permcenter/privacycenter/ui/RecentBehaviorPreference$a;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 7
    .param p1    # Ljava/lang/Object;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    invoke-static {}, Luj/b;->c()Ljava/lang/Object;

    move-result-object v0

    iget v1, p0, Lcom/miui/permcenter/privacycenter/ui/RecentBehaviorPreference$a;->a:I

    const-string v2, "context"

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-eqz v1, :cond_1

    if-ne v1, v3, :cond_0

    invoke-static {p1}, Loj/n;->b(Ljava/lang/Object;)V

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    invoke-static {p1}, Loj/n;->b(Ljava/lang/Object;)V

    iget-object p1, p0, Lcom/miui/permcenter/privacycenter/ui/RecentBehaviorPreference$a;->b:Lcom/miui/permcenter/privacycenter/ui/RecentBehaviorPreference;

    invoke-static {p1}, Lcom/miui/permcenter/privacycenter/ui/RecentBehaviorPreference;->f(Lcom/miui/permcenter/privacycenter/ui/RecentBehaviorPreference;)Landroid/content/Context;

    move-result-object p1

    if-nez p1, :cond_2

    invoke-static {v2}, Lbk/m;->r(Ljava/lang/String;)V

    move-object p1, v4

    :cond_2
    iput v3, p0, Lcom/miui/permcenter/privacycenter/ui/RecentBehaviorPreference$a;->a:I

    invoke-static {p1, p0}, Ljc/l;->k(Landroid/content/Context;Ltj/d;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v0, :cond_3

    return-object v0

    :cond_3
    :goto_0
    check-cast p1, [Ljava/lang/Integer;

    iget-object v0, p0, Lcom/miui/permcenter/privacycenter/ui/RecentBehaviorPreference$a;->b:Lcom/miui/permcenter/privacycenter/ui/RecentBehaviorPreference;

    invoke-static {v0}, Lcom/miui/permcenter/privacycenter/ui/RecentBehaviorPreference;->j(Lcom/miui/permcenter/privacycenter/ui/RecentBehaviorPreference;)Landroid/widget/TextView;

    move-result-object v0

    if-nez v0, :cond_4

    const-string v0, "mLocationCountTx"

    invoke-static {v0}, Lbk/m;->r(Ljava/lang/String;)V

    move-object v0, v4

    :cond_4
    const/4 v1, 0x0

    aget-object v5, p1, v1

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/miui/permcenter/privacycenter/ui/RecentBehaviorPreference$a;->b:Lcom/miui/permcenter/privacycenter/ui/RecentBehaviorPreference;

    invoke-static {v0}, Lcom/miui/permcenter/privacycenter/ui/RecentBehaviorPreference;->i(Lcom/miui/permcenter/privacycenter/ui/RecentBehaviorPreference;)Landroid/widget/TextView;

    move-result-object v0

    if-nez v0, :cond_5

    const-string v0, "mLocationCountTimes"

    invoke-static {v0}, Lbk/m;->r(Ljava/lang/String;)V

    move-object v0, v4

    :cond_5
    iget-object v5, p0, Lcom/miui/permcenter/privacycenter/ui/RecentBehaviorPreference$a;->b:Lcom/miui/permcenter/privacycenter/ui/RecentBehaviorPreference;

    invoke-static {v5}, Lcom/miui/permcenter/privacycenter/ui/RecentBehaviorPreference;->f(Lcom/miui/permcenter/privacycenter/ui/RecentBehaviorPreference;)Landroid/content/Context;

    move-result-object v5

    if-nez v5, :cond_6

    invoke-static {v2}, Lbk/m;->r(Ljava/lang/String;)V

    move-object v5, v4

    :cond_6
    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    aget-object v1, p1, v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    const v6, 0x7f1000f1

    invoke-virtual {v5, v6, v1}, Landroid/content/res/Resources;->getQuantityString(II)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/miui/permcenter/privacycenter/ui/RecentBehaviorPreference$a;->b:Lcom/miui/permcenter/privacycenter/ui/RecentBehaviorPreference;

    invoke-static {v0}, Lcom/miui/permcenter/privacycenter/ui/RecentBehaviorPreference;->l(Lcom/miui/permcenter/privacycenter/ui/RecentBehaviorPreference;)Landroid/widget/TextView;

    move-result-object v0

    if-nez v0, :cond_7

    const-string v0, "mMicCountTx"

    invoke-static {v0}, Lbk/m;->r(Ljava/lang/String;)V

    move-object v0, v4

    :cond_7
    aget-object v1, p1, v3

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/miui/permcenter/privacycenter/ui/RecentBehaviorPreference$a;->b:Lcom/miui/permcenter/privacycenter/ui/RecentBehaviorPreference;

    invoke-static {v0}, Lcom/miui/permcenter/privacycenter/ui/RecentBehaviorPreference;->k(Lcom/miui/permcenter/privacycenter/ui/RecentBehaviorPreference;)Landroid/widget/TextView;

    move-result-object v0

    if-nez v0, :cond_8

    const-string v0, "mMicCountTimes"

    invoke-static {v0}, Lbk/m;->r(Ljava/lang/String;)V

    move-object v0, v4

    :cond_8
    iget-object v1, p0, Lcom/miui/permcenter/privacycenter/ui/RecentBehaviorPreference$a;->b:Lcom/miui/permcenter/privacycenter/ui/RecentBehaviorPreference;

    invoke-static {v1}, Lcom/miui/permcenter/privacycenter/ui/RecentBehaviorPreference;->f(Lcom/miui/permcenter/privacycenter/ui/RecentBehaviorPreference;)Landroid/content/Context;

    move-result-object v1

    if-nez v1, :cond_9

    invoke-static {v2}, Lbk/m;->r(Ljava/lang/String;)V

    move-object v1, v4

    :cond_9
    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    aget-object v5, p1, v3

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    invoke-virtual {v1, v6, v5}, Landroid/content/res/Resources;->getQuantityString(II)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/miui/permcenter/privacycenter/ui/RecentBehaviorPreference$a;->b:Lcom/miui/permcenter/privacycenter/ui/RecentBehaviorPreference;

    invoke-static {v0}, Lcom/miui/permcenter/privacycenter/ui/RecentBehaviorPreference;->h(Lcom/miui/permcenter/privacycenter/ui/RecentBehaviorPreference;)Landroid/widget/TextView;

    move-result-object v0

    if-nez v0, :cond_a

    const-string v0, "mCameraCountTx"

    invoke-static {v0}, Lbk/m;->r(Ljava/lang/String;)V

    move-object v0, v4

    :cond_a
    const/4 v1, 0x2

    aget-object v5, p1, v1

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/miui/permcenter/privacycenter/ui/RecentBehaviorPreference$a;->b:Lcom/miui/permcenter/privacycenter/ui/RecentBehaviorPreference;

    invoke-static {v0}, Lcom/miui/permcenter/privacycenter/ui/RecentBehaviorPreference;->g(Lcom/miui/permcenter/privacycenter/ui/RecentBehaviorPreference;)Landroid/widget/TextView;

    move-result-object v0

    if-nez v0, :cond_b

    const-string v0, "mCameraCountTimes"

    invoke-static {v0}, Lbk/m;->r(Ljava/lang/String;)V

    move-object v0, v4

    :cond_b
    iget-object v5, p0, Lcom/miui/permcenter/privacycenter/ui/RecentBehaviorPreference$a;->b:Lcom/miui/permcenter/privacycenter/ui/RecentBehaviorPreference;

    invoke-static {v5}, Lcom/miui/permcenter/privacycenter/ui/RecentBehaviorPreference;->f(Lcom/miui/permcenter/privacycenter/ui/RecentBehaviorPreference;)Landroid/content/Context;

    move-result-object v5

    if-nez v5, :cond_c

    invoke-static {v2}, Lbk/m;->r(Ljava/lang/String;)V

    goto :goto_1

    :cond_c
    move-object v4, v5

    :goto_1
    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    aget-object p1, p1, v1

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-virtual {v2, v6, p1}, Landroid/content/res/Resources;->getQuantityString(II)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object p1, p0, Lcom/miui/permcenter/privacycenter/ui/RecentBehaviorPreference$a;->b:Lcom/miui/permcenter/privacycenter/ui/RecentBehaviorPreference;

    invoke-static {p1, v3}, Lcom/miui/permcenter/privacycenter/ui/RecentBehaviorPreference;->m(Lcom/miui/permcenter/privacycenter/ui/RecentBehaviorPreference;Z)V

    sget-object p1, Loj/t;->a:Loj/t;

    return-object p1
.end method
