.class final Lcom/miui/permcenter/provision/PrivacyExtraProvisionFragment$c$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lkotlinx/coroutines/flow/f;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/permcenter/provision/PrivacyExtraProvisionFragment$c;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
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
.field final synthetic a:Lcom/miui/permcenter/provision/PrivacyExtraProvisionFragment;


# direct methods
.method constructor <init>(Lcom/miui/permcenter/provision/PrivacyExtraProvisionFragment;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/permcenter/provision/PrivacyExtraProvisionFragment$c$a;->a:Lcom/miui/permcenter/provision/PrivacyExtraProvisionFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lcom/miui/permcenter/provision/e;Ltj/d;)Ljava/lang/Object;
    .locals 3
    .param p1    # Lcom/miui/permcenter/provision/e;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Ltj/d;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/miui/permcenter/provision/e;",
            "Ltj/d<",
            "-",
            "Loj/t;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    instance-of p2, p1, Lcom/miui/permcenter/provision/e$b;

    if-eqz p2, :cond_2

    iget-object p2, p0, Lcom/miui/permcenter/provision/PrivacyExtraProvisionFragment$c$a;->a:Lcom/miui/permcenter/provision/PrivacyExtraProvisionFragment;

    invoke-static {p2}, Lcom/miui/permcenter/provision/PrivacyExtraProvisionFragment;->c0(Lcom/miui/permcenter/provision/PrivacyExtraProvisionFragment;)Lcom/miui/permcenter/provision/b;

    move-result-object p2

    const/4 v0, 0x0

    const-string v1, "mAdapter"

    if-nez p2, :cond_0

    invoke-static {v1}, Lbk/m;->r(Ljava/lang/String;)V

    move-object p2, v0

    :cond_0
    invoke-virtual {p2}, Lcom/miui/permcenter/provision/b;->getData()Ljava/util/ArrayList;

    move-result-object p2

    check-cast p1, Lcom/miui/permcenter/provision/e$b;

    invoke-virtual {p1}, Lcom/miui/permcenter/provision/e$b;->a()Ljava/util/List;

    move-result-object v2

    invoke-virtual {p2, v2}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    iget-object p2, p0, Lcom/miui/permcenter/provision/PrivacyExtraProvisionFragment$c$a;->a:Lcom/miui/permcenter/provision/PrivacyExtraProvisionFragment;

    invoke-static {p2}, Lcom/miui/permcenter/provision/PrivacyExtraProvisionFragment;->c0(Lcom/miui/permcenter/provision/PrivacyExtraProvisionFragment;)Lcom/miui/permcenter/provision/b;

    move-result-object p2

    if-nez p2, :cond_1

    invoke-static {v1}, Lbk/m;->r(Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    move-object v0, p2

    :goto_0
    const/4 p2, 0x0

    invoke-virtual {p1}, Lcom/miui/permcenter/provision/e$b;->a()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    invoke-virtual {v0, p2, p1}, Landroidx/recyclerview/widget/RecyclerView$h;->notifyItemRangeInserted(II)V

    :cond_2
    sget-object p1, Loj/t;->a:Loj/t;

    return-object p1
.end method

.method public bridge synthetic emit(Ljava/lang/Object;Ltj/d;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lcom/miui/permcenter/provision/e;

    invoke-virtual {p0, p1, p2}, Lcom/miui/permcenter/provision/PrivacyExtraProvisionFragment$c$a;->a(Lcom/miui/permcenter/provision/e;Ltj/d;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method
