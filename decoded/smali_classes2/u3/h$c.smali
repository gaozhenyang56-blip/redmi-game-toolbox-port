.class Lu3/h$c;
.super Lu3/h$f;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lu3/h;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic c:Lu3/h;


# direct methods
.method constructor <init>(Lu3/h;)V
    .locals 1

    iput-object p1, p0, Lu3/h$c;->c:Lu3/h;

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lu3/h$f;-><init>(Lu3/h;Lu3/h$a;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    iget-object v0, p0, Lu3/h$f;->a:Ljava/util/List;

    if-eqz v0, :cond_1

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/miui/autotask/taskitem/AppUseConditionItem;

    iget-object v2, p0, Lu3/h$c;->c:Lu3/h;

    invoke-static {v2, v1}, Lu3/h;->l(Lu3/h;Lcom/miui/autotask/taskitem/AppUseConditionItem;)V

    iget-object v2, p0, Lu3/h$c;->c:Lu3/h;

    invoke-virtual {v1}, Lcom/miui/autotask/taskitem/TaskItem;->j()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lu3/h;->m(Lu3/h;Ljava/lang/String;)V

    invoke-virtual {v1}, Lcom/miui/autotask/taskitem/AppUseConditionItem;->A()Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lu3/h$c;->c:Lu3/h;

    invoke-virtual {v1}, Lcom/miui/autotask/taskitem/TaskItem;->j()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x1

    invoke-virtual {v2, v3, v4}, Lu3/h;->e1(Ljava/lang/String;Z)V

    iget-object v2, p0, Lu3/h$c;->c:Lu3/h;

    invoke-virtual {v1}, Lcom/miui/autotask/taskitem/TaskItem;->j()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Lu3/h;->n(Lu3/h;Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lu3/h$c;->c:Lu3/h;

    invoke-static {v0}, Lu3/h;->e(Lu3/h;)Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object v1

    invoke-static {v0, v1}, Lu3/h;->f(Lu3/h;Ljava/util/concurrent/ConcurrentHashMap;)V

    iget-object v0, p0, Lu3/h$c;->c:Lu3/h;

    invoke-virtual {v0}, Lu3/h;->Y0()V

    return-void
.end method
