.class final Lcom/miui/permcenter/provision/c$a$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lkotlinx/coroutines/flow/f;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/permcenter/provision/c$a;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
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


# instance fields
.field final synthetic a:Lcom/miui/permcenter/provision/c;


# direct methods
.method constructor <init>(Lcom/miui/permcenter/provision/c;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/permcenter/provision/c$a$a;->a:Lcom/miui/permcenter/provision/c;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(ZLtj/d;)Ljava/lang/Object;
    .locals 2
    .param p2    # Ltj/d;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z",
            "Ltj/d<",
            "-",
            "Loj/t;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    if-eqz p1, :cond_1

    sget-object p1, Lqc/e;->a:Lqc/e;

    invoke-virtual {p1}, Lqc/e;->q()Ljava/util/ArrayList;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    const/4 v1, 0x1

    xor-int/2addr v0, v1

    if-eqz v0, :cond_1

    invoke-virtual {p1, v1}, Lqc/e;->C(Z)V

    iget-object v0, p0, Lcom/miui/permcenter/provision/c$a$a;->a:Lcom/miui/permcenter/provision/c;

    invoke-static {v0}, Lcom/miui/permcenter/provision/c;->a(Lcom/miui/permcenter/provision/c;)Lkotlinx/coroutines/flow/r;

    move-result-object v0

    new-instance v1, Lcom/miui/permcenter/provision/e$b;

    invoke-virtual {p1}, Lqc/e;->q()Ljava/util/ArrayList;

    move-result-object p1

    invoke-direct {v1, p1}, Lcom/miui/permcenter/provision/e$b;-><init>(Ljava/util/List;)V

    invoke-interface {v0, v1, p2}, Lkotlinx/coroutines/flow/r;->emit(Ljava/lang/Object;Ltj/d;)Ljava/lang/Object;

    move-result-object p1

    invoke-static {}, Luj/b;->c()Ljava/lang/Object;

    move-result-object p2

    if-ne p1, p2, :cond_0

    return-object p1

    :cond_0
    sget-object p1, Loj/t;->a:Loj/t;

    return-object p1

    :cond_1
    iget-object p1, p0, Lcom/miui/permcenter/provision/c$a$a;->a:Lcom/miui/permcenter/provision/c;

    invoke-static {p1}, Lcom/miui/permcenter/provision/c;->a(Lcom/miui/permcenter/provision/c;)Lkotlinx/coroutines/flow/r;

    move-result-object p1

    sget-object v0, Lcom/miui/permcenter/provision/e$a;->a:Lcom/miui/permcenter/provision/e$a;

    invoke-interface {p1, v0, p2}, Lkotlinx/coroutines/flow/r;->emit(Ljava/lang/Object;Ltj/d;)Ljava/lang/Object;

    move-result-object p1

    invoke-static {}, Luj/b;->c()Ljava/lang/Object;

    move-result-object p2

    if-ne p1, p2, :cond_2

    return-object p1

    :cond_2
    sget-object p1, Loj/t;->a:Loj/t;

    return-object p1
.end method

.method public bridge synthetic emit(Ljava/lang/Object;Ltj/d;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    invoke-virtual {p0, p1, p2}, Lcom/miui/permcenter/provision/c$a$a;->a(ZLtj/d;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method
