.class final Lcom/miui/permcenter/privacycenter/SecurityFragment$b;
.super Lkotlin/coroutines/jvm/internal/j;
.source "SourceFile"

# interfaces
.implements Lak/p;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/permcenter/privacycenter/SecurityFragment;->d0(Landroid/content/Context;Ltj/d;)Ljava/lang/Object;
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
        "Ljava/util/Map<",
        "Ljava/lang/String;",
        "+",
        "Ljava/lang/Boolean;",
        ">;>;",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/coroutines/jvm/internal/DebugMetadata;
    c = "com.miui.permcenter.privacycenter.SecurityFragment$getStatus$2"
    f = "SecurityFragment.kt"
    i = {}
    l = {}
    m = "invokeSuspend"
    n = {}
    s = {}
.end annotation


# instance fields
.field a:I

.field final synthetic b:Landroid/content/Context;


# direct methods
.method constructor <init>(Landroid/content/Context;Ltj/d;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ltj/d<",
            "-",
            "Lcom/miui/permcenter/privacycenter/SecurityFragment$b;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/miui/permcenter/privacycenter/SecurityFragment$b;->b:Landroid/content/Context;

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

    new-instance p1, Lcom/miui/permcenter/privacycenter/SecurityFragment$b;

    iget-object v0, p0, Lcom/miui/permcenter/privacycenter/SecurityFragment$b;->b:Landroid/content/Context;

    invoke-direct {p1, v0, p2}, Lcom/miui/permcenter/privacycenter/SecurityFragment$b;-><init>(Landroid/content/Context;Ltj/d;)V

    return-object p1
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Llk/i0;

    check-cast p2, Ltj/d;

    invoke-virtual {p0, p1, p2}, Lcom/miui/permcenter/privacycenter/SecurityFragment$b;->invoke(Llk/i0;Ltj/d;)Ljava/lang/Object;

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
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Boolean;",
            ">;>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    invoke-virtual {p0, p1, p2}, Lcom/miui/permcenter/privacycenter/SecurityFragment$b;->create(Ljava/lang/Object;Ltj/d;)Ltj/d;

    move-result-object p1

    check-cast p1, Lcom/miui/permcenter/privacycenter/SecurityFragment$b;

    sget-object p2, Loj/t;->a:Loj/t;

    invoke-virtual {p1, p2}, Lcom/miui/permcenter/privacycenter/SecurityFragment$b;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 11
    .param p1    # Ljava/lang/Object;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    invoke-static {}, Luj/b;->c()Ljava/lang/Object;

    iget v0, p0, Lcom/miui/permcenter/privacycenter/SecurityFragment$b;->a:I

    if-nez v0, :cond_4

    invoke-static {p1}, Loj/n;->b(Ljava/lang/Object;)V

    iget-object p1, p0, Lcom/miui/permcenter/privacycenter/SecurityFragment$b;->b:Landroid/content/Context;

    invoke-static {p1}, Lxc/p;->d(Landroid/content/Context;)Z

    move-result p1

    iget-object v0, p0, Lcom/miui/permcenter/privacycenter/SecurityFragment$b;->b:Landroid/content/Context;

    invoke-static {v0}, Lx4/r1;->d(Landroid/content/Context;)Z

    move-result v0

    iget-object v1, p0, Lcom/miui/permcenter/privacycenter/SecurityFragment$b;->b:Landroid/content/Context;

    invoke-static {v1}, Lcom/miui/simlock/c;->f(Landroid/content/Context;)Z

    move-result v1

    iget-object v2, p0, Lcom/miui/permcenter/privacycenter/SecurityFragment$b;->b:Landroid/content/Context;

    invoke-static {v2}, Lm2/a;->i(Landroid/content/Context;)Z

    move-result v2

    iget-object v3, p0, Lcom/miui/permcenter/privacycenter/SecurityFragment$b;->b:Landroid/content/Context;

    if-eqz v3, :cond_0

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    goto :goto_0

    :cond_0
    const/4 v3, 0x0

    :goto_0
    const-string v4, "full_security_protect_on"

    const/4 v5, 0x0

    invoke-static {v3, v4, v5}, Lam/a;->a(Landroid/content/ContentResolver;Ljava/lang/String;Z)Z

    move-result v3

    iget-object v4, p0, Lcom/miui/permcenter/privacycenter/SecurityFragment$b;->b:Landroid/content/Context;

    invoke-static {v4}, Lcom/miui/electricrisk/h;->l(Landroid/content/Context;)Z

    move-result v4

    const/4 v6, 0x1

    if-nez v4, :cond_3

    invoke-static {}, Lcom/miui/electricrisk/h;->f()Z

    move-result v4

    if-nez v4, :cond_3

    invoke-static {}, Lcom/miui/electricrisk/h;->b()Z

    move-result v4

    if-nez v4, :cond_3

    iget-object v4, p0, Lcom/miui/permcenter/privacycenter/SecurityFragment$b;->b:Landroid/content/Context;

    invoke-static {v4}, Lcom/miui/electricrisk/h;->q(Landroid/content/Context;)Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-static {}, Lcom/miui/electricrisk/h;->p()Z

    move-result v4

    if-nez v4, :cond_3

    :cond_1
    invoke-static {}, Lcom/miui/electricrisk/h;->o()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-static {}, Lcom/miui/electricrisk/h;->n()Z

    move-result v4

    if-eqz v4, :cond_2

    goto :goto_1

    :cond_2
    move v4, v5

    goto :goto_2

    :cond_3
    :goto_1
    move v4, v6

    :goto_2
    iget-object v7, p0, Lcom/miui/permcenter/privacycenter/SecurityFragment$b;->b:Landroid/content/Context;

    invoke-static {v7}, Lxc/p;->e(Landroid/content/Context;)Z

    move-result v7

    iget-object v8, p0, Lcom/miui/permcenter/privacycenter/SecurityFragment$b;->b:Landroid/content/Context;

    invoke-static {v8}, Lxc/p;->f(Landroid/content/Context;)Z

    move-result v8

    const/16 v9, 0x8

    new-array v9, v9, [Loj/l;

    invoke-static {p1}, Lkotlin/coroutines/jvm/internal/b;->a(Z)Ljava/lang/Boolean;

    move-result-object p1

    const-string v10, "mFindDevicePreference"

    invoke-static {v10, p1}, Loj/q;->a(Ljava/lang/Object;Ljava/lang/Object;)Loj/l;

    move-result-object p1

    aput-object p1, v9, v5

    invoke-static {v0}, Lkotlin/coroutines/jvm/internal/b;->a(Z)Ljava/lang/Boolean;

    move-result-object p1

    const-string v0, "mPowOffPasswordPreference"

    invoke-static {v0, p1}, Loj/q;->a(Ljava/lang/Object;Ljava/lang/Object;)Loj/l;

    move-result-object p1

    aput-object p1, v9, v6

    const/4 p1, 0x2

    invoke-static {v1}, Lkotlin/coroutines/jvm/internal/b;->a(Z)Ljava/lang/Boolean;

    move-result-object v0

    const-string v1, "mSimProtectPreference"

    invoke-static {v1, v0}, Loj/q;->a(Ljava/lang/Object;Ljava/lang/Object;)Loj/l;

    move-result-object v0

    aput-object v0, v9, p1

    const/4 p1, 0x3

    invoke-static {v2}, Lkotlin/coroutines/jvm/internal/b;->a(Z)Ljava/lang/Boolean;

    move-result-object v0

    const-string v1, "mAntispamSanPreference"

    invoke-static {v1, v0}, Loj/q;->a(Ljava/lang/Object;Ljava/lang/Object;)Loj/l;

    move-result-object v0

    aput-object v0, v9, p1

    const/4 p1, 0x4

    invoke-static {v3}, Lkotlin/coroutines/jvm/internal/b;->a(Z)Ljava/lang/Boolean;

    move-result-object v0

    const-string v1, "mFamilyGuardPreference"

    invoke-static {v1, v0}, Loj/q;->a(Ljava/lang/Object;Ljava/lang/Object;)Loj/l;

    move-result-object v0

    aput-object v0, v9, p1

    const/4 p1, 0x5

    invoke-static {v4}, Lkotlin/coroutines/jvm/internal/b;->a(Z)Ljava/lang/Boolean;

    move-result-object v0

    const-string v1, "mAntiFraudPreference"

    invoke-static {v1, v0}, Loj/q;->a(Ljava/lang/Object;Ljava/lang/Object;)Loj/l;

    move-result-object v0

    aput-object v0, v9, p1

    const/4 p1, 0x6

    invoke-static {v7}, Lkotlin/coroutines/jvm/internal/b;->a(Z)Ljava/lang/Boolean;

    move-result-object v0

    const-string v1, "mPaymentProtectPreference"

    invoke-static {v1, v0}, Loj/q;->a(Ljava/lang/Object;Ljava/lang/Object;)Loj/l;

    move-result-object v0

    aput-object v0, v9, p1

    const/4 p1, 0x7

    invoke-static {v8}, Lkotlin/coroutines/jvm/internal/b;->a(Z)Ljava/lang/Boolean;

    move-result-object v0

    const-string v1, "mSosPreference"

    invoke-static {v1, v0}, Loj/q;->a(Ljava/lang/Object;Ljava/lang/Object;)Loj/l;

    move-result-object v0

    aput-object v0, v9, p1

    invoke-static {v9}, Lqj/d0;->f([Loj/l;)Ljava/util/Map;

    move-result-object p1

    return-object p1

    :cond_4
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
