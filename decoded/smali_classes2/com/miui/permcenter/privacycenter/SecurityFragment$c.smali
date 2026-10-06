.class final Lcom/miui/permcenter/privacycenter/SecurityFragment$c;
.super Lkotlin/coroutines/jvm/internal/j;
.source "SourceFile"

# interfaces
.implements Lak/p;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/permcenter/privacycenter/SecurityFragment;->refreshStatus()V
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
    c = "com.miui.permcenter.privacycenter.SecurityFragment$refreshStatus$1"
    f = "SecurityFragment.kt"
    i = {}
    l = {
        0x86
    }
    m = "invokeSuspend"
    n = {}
    s = {}
.end annotation

.annotation build Lkotlin/jvm/internal/SourceDebugExtension;
    value = {
        "SMAP\nSecurityFragment.kt\nKotlin\n*S Kotlin\n*F\n+ 1 SecurityFragment.kt\ncom/miui/permcenter/privacycenter/SecurityFragment$refreshStatus$1\n+ 2 _Maps.kt\nkotlin/collections/MapsKt___MapsKt\n*L\n1#1,260:1\n215#2,2:261\n*S KotlinDebug\n*F\n+ 1 SecurityFragment.kt\ncom/miui/permcenter/privacycenter/SecurityFragment$refreshStatus$1\n*L\n134#1:261,2\n*E\n"
    }
.end annotation


# instance fields
.field a:I

.field final synthetic b:Lcom/miui/permcenter/privacycenter/SecurityFragment;


# direct methods
.method constructor <init>(Lcom/miui/permcenter/privacycenter/SecurityFragment;Ltj/d;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/miui/permcenter/privacycenter/SecurityFragment;",
            "Ltj/d<",
            "-",
            "Lcom/miui/permcenter/privacycenter/SecurityFragment$c;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/miui/permcenter/privacycenter/SecurityFragment$c;->b:Lcom/miui/permcenter/privacycenter/SecurityFragment;

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

    new-instance p1, Lcom/miui/permcenter/privacycenter/SecurityFragment$c;

    iget-object v0, p0, Lcom/miui/permcenter/privacycenter/SecurityFragment$c;->b:Lcom/miui/permcenter/privacycenter/SecurityFragment;

    invoke-direct {p1, v0, p2}, Lcom/miui/permcenter/privacycenter/SecurityFragment$c;-><init>(Lcom/miui/permcenter/privacycenter/SecurityFragment;Ltj/d;)V

    return-object p1
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Llk/i0;

    check-cast p2, Ltj/d;

    invoke-virtual {p0, p1, p2}, Lcom/miui/permcenter/privacycenter/SecurityFragment$c;->invoke(Llk/i0;Ltj/d;)Ljava/lang/Object;

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

    invoke-virtual {p0, p1, p2}, Lcom/miui/permcenter/privacycenter/SecurityFragment$c;->create(Ljava/lang/Object;Ltj/d;)Ltj/d;

    move-result-object p1

    check-cast p1, Lcom/miui/permcenter/privacycenter/SecurityFragment$c;

    sget-object p2, Loj/t;->a:Loj/t;

    invoke-virtual {p1, p2}, Lcom/miui/permcenter/privacycenter/SecurityFragment$c;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

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

    iget v1, p0, Lcom/miui/permcenter/privacycenter/SecurityFragment$c;->a:I

    const/4 v2, 0x1

    if-eqz v1, :cond_1

    if-ne v1, v2, :cond_0

    invoke-static {p1}, Loj/n;->b(Ljava/lang/Object;)V

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    invoke-static {p1}, Loj/n;->b(Ljava/lang/Object;)V

    iget-object p1, p0, Lcom/miui/permcenter/privacycenter/SecurityFragment$c;->b:Lcom/miui/permcenter/privacycenter/SecurityFragment;

    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v1

    iput v2, p0, Lcom/miui/permcenter/privacycenter/SecurityFragment$c;->a:I

    invoke-static {p1, v1, p0}, Lcom/miui/permcenter/privacycenter/SecurityFragment;->c0(Lcom/miui/permcenter/privacycenter/SecurityFragment;Landroid/content/Context;Ltj/d;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v0, :cond_2

    return-object v0

    :cond_2
    :goto_0
    check-cast p1, Ljava/util/Map;

    iget-object v0, p0, Lcom/miui/permcenter/privacycenter/SecurityFragment$c;->b:Lcom/miui/permcenter/privacycenter/SecurityFragment;

    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_3
    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_c

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v3

    if-eqz v3, :cond_3

    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v3

    invoke-static {v3}, Lbk/m;->b(Ljava/lang/Object;)V

    invoke-virtual {v3}, Landroid/app/Activity;->isFinishing()Z

    move-result v3

    if-nez v3, :cond_3

    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v3

    invoke-static {v3}, Lbk/m;->b(Ljava/lang/Object;)V

    invoke-virtual {v3}, Landroid/app/Activity;->isDestroyed()Z

    move-result v3

    if-eqz v3, :cond_4

    goto :goto_1

    :cond_4
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    const-string v4, "mFamilyGuardPreference"

    invoke-static {v4, v3}, Lbk/m;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    const v4, 0x7f121274

    const v5, 0x7f121273

    if-eqz v3, :cond_a

    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Lxc/p;->g(Landroid/content/Context;)Z

    move-result v3

    const/4 v6, 0x0

    if-eqz v3, :cond_7

    invoke-static {v0}, Lcom/miui/permcenter/privacycenter/SecurityFragment;->a0(Lcom/miui/permcenter/privacycenter/SecurityFragment;)Ljava/util/Map;

    move-result-object v3

    if-eqz v3, :cond_5

    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v6

    invoke-interface {v3, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    move-object v6, v3

    check-cast v6, Lmiuix/preference/TextPreference;

    :cond_5
    if-nez v6, :cond_6

    goto :goto_2

    :cond_6
    const v3, 0x7f1216f7

    invoke-virtual {v0, v3}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v6, v3}, Landroidx/preference/Preference;->setTitle(Ljava/lang/CharSequence;)V

    :goto_2
    invoke-static {v0}, Lcom/miui/permcenter/privacycenter/SecurityFragment;->a0(Lcom/miui/permcenter/privacycenter/SecurityFragment;)Ljava/util/Map;

    move-result-object v3

    if-eqz v3, :cond_3

    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v6

    invoke-interface {v3, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lmiuix/preference/TextPreference;

    if-eqz v3, :cond_3

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_b

    goto :goto_4

    :cond_7
    invoke-static {v0}, Lcom/miui/permcenter/privacycenter/SecurityFragment;->a0(Lcom/miui/permcenter/privacycenter/SecurityFragment;)Ljava/util/Map;

    move-result-object v3

    if-eqz v3, :cond_8

    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    move-object v6, v3

    check-cast v6, Lmiuix/preference/TextPreference;

    :cond_8
    if-nez v6, :cond_9

    goto :goto_3

    :cond_9
    const v3, 0x7f121724

    invoke-virtual {v0, v3}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v6, v3}, Landroidx/preference/Preference;->setTitle(Ljava/lang/CharSequence;)V

    :goto_3
    invoke-static {v0}, Lcom/miui/permcenter/privacycenter/SecurityFragment;->a0(Lcom/miui/permcenter/privacycenter/SecurityFragment;)Ljava/util/Map;

    move-result-object v3

    if-eqz v3, :cond_3

    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    invoke-interface {v3, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lmiuix/preference/TextPreference;

    if-eqz v1, :cond_3

    const-string v3, ""

    invoke-virtual {v1, v3}, Lmiuix/preference/TextPreference;->setText(Ljava/lang/String;)V

    goto/16 :goto_1

    :cond_a
    invoke-static {v0}, Lcom/miui/permcenter/privacycenter/SecurityFragment;->a0(Lcom/miui/permcenter/privacycenter/SecurityFragment;)Ljava/util/Map;

    move-result-object v3

    if-eqz v3, :cond_3

    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v6

    invoke-interface {v3, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lmiuix/preference/TextPreference;

    if-eqz v3, :cond_3

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_b

    goto :goto_4

    :cond_b
    move v4, v5

    :goto_4
    invoke-virtual {v3, v4}, Lmiuix/preference/TextPreference;->setText(I)V

    goto/16 :goto_1

    :cond_c
    iget-object p1, p0, Lcom/miui/permcenter/privacycenter/SecurityFragment$c;->b:Lcom/miui/permcenter/privacycenter/SecurityFragment;

    invoke-static {p1}, Lcom/miui/permcenter/privacycenter/SecurityFragment;->b0(Lcom/miui/permcenter/privacycenter/SecurityFragment;)Lmiuix/preference/TextPreference;

    move-result-object p1

    if-nez p1, :cond_d

    goto :goto_6

    :cond_d
    sget-boolean v0, Lcom/miui/common/i;->a:Z

    if-eqz v0, :cond_e

    iget-object v0, p0, Lcom/miui/permcenter/privacycenter/SecurityFragment$c;->b:Lcom/miui/permcenter/privacycenter/SecurityFragment;

    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "com.miui.securitymanager"

    invoke-static {v0, v1}, Lx4/g1;->a(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_e

    goto :goto_5

    :cond_e
    const/4 v2, 0x0

    :goto_5
    invoke-virtual {p1, v2}, Landroidx/preference/Preference;->setVisible(Z)V

    :goto_6
    sget-object p1, Loj/t;->a:Loj/t;

    return-object p1
.end method
