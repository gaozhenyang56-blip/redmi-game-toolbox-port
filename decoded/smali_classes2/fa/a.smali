.class public Lfa/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lea/b;


# instance fields
.field public final a:Lla/a;

.field public final b:Lha/a;

.field public final c:Lka/b;

.field public final d:Lia/j;

.field public final e:Lia/b;

.field public final f:Lia/f;

.field public g:Ljava/lang/String;

.field public h:Lga/b;

.field public i:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/content/res/Resources;Ljava/lang/String;Ljava/util/HashMap;Ljava/util/HashMap;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Landroid/content/res/Resources;",
            "Ljava/lang/String;",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;",
            "Ljava/util/HashMap<",
            "Ljava/lang/Integer;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lla/a;

    invoke-direct {v0}, Lla/a;-><init>()V

    iput-object v0, p0, Lfa/a;->a:Lla/a;

    new-instance v0, Lha/a;

    invoke-direct {v0}, Lha/a;-><init>()V

    iput-object v0, p0, Lfa/a;->b:Lha/a;

    new-instance v0, Lka/b;

    invoke-direct {v0}, Lka/b;-><init>()V

    iput-object v0, p0, Lfa/a;->c:Lka/b;

    new-instance v0, Lia/j;

    move-object v1, v0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    invoke-direct/range {v1 .. v6}, Lia/j;-><init>(Landroid/content/Context;Landroid/content/res/Resources;Ljava/lang/String;Ljava/util/HashMap;Ljava/util/HashMap;)V

    iput-object v0, p0, Lfa/a;->d:Lia/j;

    new-instance p1, Lia/b;

    invoke-direct {p1}, Lia/b;-><init>()V

    iput-object p1, p0, Lfa/a;->e:Lia/b;

    new-instance p1, Lia/f;

    invoke-direct {p1}, Lia/f;-><init>()V

    iput-object p1, p0, Lfa/a;->f:Lia/f;

    iput-object p3, p0, Lfa/a;->g:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public a(Ljava/util/List;)Lcom/miui/mlkit/mobilerec/bean/ResultWithMetrics;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/miui/mlkit/mobilerec/bean/PredictApp;",
            ">;)",
            "Lcom/miui/mlkit/mobilerec/bean/ResultWithMetrics;"
        }
    .end annotation

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    const/4 v1, 0x1

    if-nez v0, :cond_0

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    sub-int/2addr v0, v1

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/mlkit/mobilerec/bean/PredictApp;

    iget-object v2, p0, Lfa/a;->a:Lla/a;

    invoke-virtual {v2, v0}, Lla/a;->a(Lga/a;)V

    iget-object v2, p0, Lfa/a;->a:Lla/a;

    invoke-virtual {v2, v0}, Lla/a;->d(Lga/a;)V

    :cond_0
    iget-object v0, p0, Lfa/a;->c:Lka/b;

    iget-object v2, p0, Lfa/a;->a:Lla/a;

    invoke-virtual {v0, v2}, Lka/b;->b(Lla/a;)Lga/b;

    move-result-object v0

    iput-object v0, p0, Lfa/a;->h:Lga/b;

    iget-object v0, v0, Lga/b;->a:Ljava/util/List;

    iget-object v2, p0, Lfa/a;->a:Lla/a;

    iget-object v2, v2, Lla/a;->b:Ljava/util/LinkedList;

    invoke-virtual {v2}, Ljava/util/AbstractCollection;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object v0, p0, Lfa/a;->b:Lha/a;

    iget-object v0, v0, Lha/a;->a:Ljava/util/List;

    iput-object v0, p0, Lfa/a;->i:Ljava/util/List;

    goto :goto_2

    :cond_1
    new-instance v2, Ljava/util/ArrayList;

    iget-object v3, p0, Lfa/a;->a:Lla/a;

    iget-object v3, v3, Lla/a;->b:Ljava/util/LinkedList;

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v2, p0, Lfa/a;->i:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_2
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    iget-object v4, p0, Lfa/a;->i:Ljava/util/List;

    invoke-interface {v4, v3}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_2

    iget-object v4, p0, Lfa/a;->i:Ljava/util/List;

    invoke-interface {v4, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_3
    iget-object v2, p0, Lfa/a;->i:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    const/16 v3, 0xd

    if-ge v2, v3, :cond_5

    iget-object v2, p0, Lfa/a;->b:Lha/a;

    iget-object v2, v2, Lha/a;->a:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_4
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_5

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-interface {v0, v3}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_4

    iget-object v4, p0, Lfa/a;->a:Lla/a;

    iget-object v4, v4, Lla/a;->b:Ljava/util/LinkedList;

    invoke-virtual {v4, v3}, Ljava/util/LinkedList;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_4

    iget-object v4, p0, Lfa/a;->i:Ljava/util/List;

    invoke-interface {v4, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_5
    :goto_2
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    :try_start_0
    iget-object v2, p0, Lfa/a;->d:Lia/j;

    iget-object v3, p0, Lfa/a;->i:Ljava/util/List;

    iget-object v4, p0, Lfa/a;->h:Lga/b;

    iget-object v5, p0, Lfa/a;->a:Lla/a;

    invoke-virtual {v2, p1, v3, v4, v5}, Lia/j;->e(Ljava/util/List;Ljava/util/List;Lga/b;Lla/a;)Ljava/util/List;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_3

    :catch_0
    move-exception v2

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "RecMNNModel"

    invoke-static {v3, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_3
    iget-object v2, p0, Lfa/a;->e:Lia/b;

    invoke-virtual {v2, p1}, Lia/b;->d(Ljava/util/List;)Ljava/util/List;

    move-result-object v2

    iget-object v3, p0, Lfa/a;->f:Lia/f;

    invoke-virtual {v3, p1}, Lia/f;->e(Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    const/4 v3, 0x0

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    invoke-static {v3, v4, v2, p1}, Lia/d;->c(Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/util/List;)Ljava/util/List;

    move-result-object v3

    new-instance v4, Lcom/miui/mlkit/mobilerec/bean/ResultWithMetrics;

    invoke-direct {v4}, Lcom/miui/mlkit/mobilerec/bean/ResultWithMetrics;-><init>()V

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    invoke-virtual {v4, v0}, Lcom/miui/mlkit/mobilerec/bean/ResultWithMetrics;->setMnnapps(Ljava/util/List;)V

    invoke-virtual {v4, v2}, Lcom/miui/mlkit/mobilerec/bean/ResultWithMetrics;->setBayesapps(Ljava/util/List;)V

    invoke-virtual {v4, p1}, Lcom/miui/mlkit/mobilerec/bean/ResultWithMetrics;->setPbbapps(Ljava/util/List;)V

    invoke-virtual {v4, v3}, Lcom/miui/mlkit/mobilerec/bean/ResultWithMetrics;->setApps(Ljava/util/List;)V

    return-object v4
.end method

.method public b()I
    .locals 1

    iget-object v0, p0, Lfa/a;->d:Lia/j;

    iget v0, v0, Lia/j;->n:I

    return v0
.end method

.method public c(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/miui/mlkit/mobilerec/bean/PredictApp;",
            ">;)V"
        }
    .end annotation

    iget-object v0, p0, Lfa/a;->a:Lla/a;

    invoke-virtual {v0, p1}, Lla/a;->b(Ljava/util/List;)V

    iget-object p1, p0, Lfa/a;->e:Lia/b;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {p1, v0}, Lia/b;->f(Ljava/util/List;)Lorg/json/JSONObject;

    iget-object p1, p0, Lfa/a;->f:Lia/f;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {p1, v0}, Lia/f;->g(Ljava/util/List;)Lorg/json/JSONObject;

    return-void
.end method

.method public d(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    iget-object v0, p0, Lfa/a;->b:Lha/a;

    invoke-virtual {v0, p1}, Lha/a;->a(Ljava/util/List;)V

    return-void
.end method

.method public e(Ljava/util/List;Lea/a;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/miui/mlkit/mobilerec/bean/PredictApp;",
            ">;",
            "Lea/a;",
            ")V"
        }
    .end annotation

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/miui/mlkit/mobilerec/bean/PredictApp;

    iget-object v2, p0, Lfa/a;->a:Lla/a;

    invoke-virtual {v2, v1}, Lla/a;->a(Lga/a;)V

    iget-object v2, p0, Lfa/a;->a:Lla/a;

    invoke-virtual {v2, v1}, Lla/a;->d(Lga/a;)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lfa/a;->e:Lia/b;

    invoke-virtual {v0, p1}, Lia/b;->f(Ljava/util/List;)Lorg/json/JSONObject;

    move-result-object v0

    iget-object v1, p0, Lfa/a;->f:Lia/f;

    invoke-virtual {v1, p1}, Lia/f;->g(Ljava/util/List;)Lorg/json/JSONObject;

    move-result-object p1

    if-eqz p2, :cond_1

    const/4 v1, 0x0

    invoke-interface {p2, v1, v0, p1}, Lea/a;->a(Lorg/json/JSONObject;Lorg/json/JSONObject;Lorg/json/JSONObject;)V

    :cond_1
    return-void
.end method

.method public f(Ljava/util/List;Lcom/miui/mlkit/mobilerec/bean/TrainPlanBean;Lea/a;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/miui/mlkit/mobilerec/bean/PredictApp;",
            ">;",
            "Lcom/miui/mlkit/mobilerec/bean/TrainPlanBean;",
            "Lea/a;",
            ")V"
        }
    .end annotation

    iget-object v0, p0, Lfa/a;->d:Lia/j;

    invoke-virtual {v0, p1, p2}, Lia/j;->f(Ljava/util/List;Lcom/miui/mlkit/mobilerec/bean/TrainPlanBean;)Lorg/json/JSONObject;

    move-result-object p1

    if-eqz p3, :cond_0

    const/4 p2, 0x0

    invoke-interface {p3, p1, p2, p2}, Lea/a;->a(Lorg/json/JSONObject;Lorg/json/JSONObject;Lorg/json/JSONObject;)V

    :cond_0
    return-void
.end method

.method public g()I
    .locals 1

    iget-object v0, p0, Lfa/a;->d:Lia/j;

    iget v0, v0, Lia/j;->m:I

    return v0
.end method
