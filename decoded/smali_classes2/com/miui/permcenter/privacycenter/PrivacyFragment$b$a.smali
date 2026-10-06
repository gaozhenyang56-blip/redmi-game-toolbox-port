.class final Lcom/miui/permcenter/privacycenter/PrivacyFragment$b$a;
.super Lkotlin/coroutines/jvm/internal/j;
.source "SourceFile"

# interfaces
.implements Lak/p;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/permcenter/privacycenter/PrivacyFragment$b;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
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
    c = "com.miui.permcenter.privacycenter.PrivacyFragment$permissionPreferencesInit$1$1"
    f = "PrivacyFragment.kt"
    i = {}
    l = {
        0x63
    }
    m = "invokeSuspend"
    n = {}
    s = {}
.end annotation

.annotation build Lkotlin/jvm/internal/SourceDebugExtension;
    value = {
        "SMAP\nPrivacyFragment.kt\nKotlin\n*S Kotlin\n*F\n+ 1 PrivacyFragment.kt\ncom/miui/permcenter/privacycenter/PrivacyFragment$permissionPreferencesInit$1$1\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,285:1\n766#2:286\n857#2,2:287\n766#2:289\n857#2,2:290\n*S KotlinDebug\n*F\n+ 1 PrivacyFragment.kt\ncom/miui/permcenter/privacycenter/PrivacyFragment$permissionPreferencesInit$1$1\n*L\n97#1:286\n97#1:287,2\n98#1:289\n98#1:290,2\n*E\n"
    }
.end annotation


# instance fields
.field a:I

.field final synthetic b:Lcom/miui/permcenter/privacycenter/PrivacyFragment;


# direct methods
.method constructor <init>(Lcom/miui/permcenter/privacycenter/PrivacyFragment;Ltj/d;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/miui/permcenter/privacycenter/PrivacyFragment;",
            "Ltj/d<",
            "-",
            "Lcom/miui/permcenter/privacycenter/PrivacyFragment$b$a;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/miui/permcenter/privacycenter/PrivacyFragment$b$a;->b:Lcom/miui/permcenter/privacycenter/PrivacyFragment;

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

    new-instance p1, Lcom/miui/permcenter/privacycenter/PrivacyFragment$b$a;

    iget-object v0, p0, Lcom/miui/permcenter/privacycenter/PrivacyFragment$b$a;->b:Lcom/miui/permcenter/privacycenter/PrivacyFragment;

    invoke-direct {p1, v0, p2}, Lcom/miui/permcenter/privacycenter/PrivacyFragment$b$a;-><init>(Lcom/miui/permcenter/privacycenter/PrivacyFragment;Ltj/d;)V

    return-object p1
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Llk/i0;

    check-cast p2, Ltj/d;

    invoke-virtual {p0, p1, p2}, Lcom/miui/permcenter/privacycenter/PrivacyFragment$b$a;->invoke(Llk/i0;Ltj/d;)Ljava/lang/Object;

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

    invoke-virtual {p0, p1, p2}, Lcom/miui/permcenter/privacycenter/PrivacyFragment$b$a;->create(Ljava/lang/Object;Ltj/d;)Ltj/d;

    move-result-object p1

    check-cast p1, Lcom/miui/permcenter/privacycenter/PrivacyFragment$b$a;

    sget-object p2, Loj/t;->a:Loj/t;

    invoke-virtual {p1, p2}, Lcom/miui/permcenter/privacycenter/PrivacyFragment$b$a;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

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

    iget v1, p0, Lcom/miui/permcenter/privacycenter/PrivacyFragment$b$a;->a:I

    const/4 v2, 0x1

    if-eqz v1, :cond_1

    if-ne v1, v2, :cond_0

    invoke-static {p1}, Loj/n;->b(Ljava/lang/Object;)V

    goto :goto_2

    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    invoke-static {p1}, Loj/n;->b(Ljava/lang/Object;)V

    invoke-static {}, Lhc/a;->c()Ljava/util/List;

    move-result-object p1

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_2
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    move-object v5, v4

    check-cast v5, Lcom/miui/permission/PermissionGroupInfo;

    invoke-virtual {v5}, Lcom/miui/permission/PermissionGroupInfo;->isShowInFirstPage()Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-interface {v1, v4}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_3
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_4
    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_5

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    move-object v5, v4

    check-cast v5, Lcom/miui/permission/PermissionGroupInfo;

    invoke-virtual {v5}, Lcom/miui/permission/PermissionGroupInfo;->isShowInSecondPage()Z

    move-result v5

    if-eqz v5, :cond_4

    invoke-interface {v3, v4}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_5
    invoke-static {}, Llk/w0;->c()Llk/d2;

    move-result-object p1

    new-instance v4, Lcom/miui/permcenter/privacycenter/PrivacyFragment$b$a$a;

    iget-object v5, p0, Lcom/miui/permcenter/privacycenter/PrivacyFragment$b$a;->b:Lcom/miui/permcenter/privacycenter/PrivacyFragment;

    const/4 v6, 0x0

    invoke-direct {v4, v5, v1, v3, v6}, Lcom/miui/permcenter/privacycenter/PrivacyFragment$b$a$a;-><init>(Lcom/miui/permcenter/privacycenter/PrivacyFragment;Ljava/util/List;Ljava/util/List;Ltj/d;)V

    iput v2, p0, Lcom/miui/permcenter/privacycenter/PrivacyFragment$b$a;->a:I

    invoke-static {p1, v4, p0}, Llk/g;->c(Ltj/g;Lak/p;Ltj/d;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v0, :cond_6

    return-object v0

    :cond_6
    :goto_2
    sget-object p1, Loj/t;->a:Loj/t;

    return-object p1
.end method
