.class public final Lz3/b;
.super Lz3/a;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lz3/a<",
        "Lcom/miui/autotask/bean/s;",
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation

.annotation build Lkotlin/jvm/internal/SourceDebugExtension;
    value = {
        "SMAP\nMiHomeTaskConditionMeetHandle.kt\nKotlin\n*S Kotlin\n*F\n+ 1 MiHomeTaskConditionMeetHandle.kt\ncom/miui/autotask/taskhandle/MiHomeTaskConditionMeetHandle\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,40:1\n766#2:41\n857#2,2:42\n*S KotlinDebug\n*F\n+ 1 MiHomeTaskConditionMeetHandle.kt\ncom/miui/autotask/taskhandle/MiHomeTaskConditionMeetHandle\n*L\n25#1:41\n25#1:42,2\n*E\n"
    }
.end annotation


# instance fields
.field private final h:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lz3/a;-><init>()V

    const-string v0, "MiHomeTaskHandle"

    iput-object v0, p0, Lz3/b;->h:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public bridge synthetic a(Lt3/e;)Ljava/lang/Object;
    .locals 0

    invoke-virtual {p0, p1}, Lz3/b;->n(Lt3/e;)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1
.end method

.method public n(Lt3/e;)Ljava/lang/Boolean;
    .locals 5
    .param p1    # Lt3/e;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lt3/e<",
            "Lcom/miui/autotask/bean/s;",
            "Ljava/lang/Boolean;",
            ">;)",
            "Ljava/lang/Boolean;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string v0, "chain"

    invoke-static {p1, v0}, Lbk/m;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {p1}, Lt3/e;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/autotask/bean/s;

    invoke-virtual {v0}, Lcom/miui/autotask/bean/s;->a()Ljava/lang/String;

    move-result-object v0

    const-string v1, "miHome"

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-interface {p1}, Lt3/e;->a()Ljava/lang/Object;

    move-result-object v0

    invoke-interface {p1, v0}, Lt3/e;->b(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Boolean;

    return-object p1

    :cond_0
    invoke-interface {p1}, Lt3/e;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/autotask/bean/s;

    invoke-virtual {v0}, Lcom/miui/autotask/bean/s;->b()Ljava/util/List;

    move-result-object v1

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_1
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    move-object v4, v3

    check-cast v4, Lcom/miui/autotask/taskitem/TaskItem;

    invoke-virtual {v4}, Lcom/miui/autotask/taskitem/TaskItem;->m()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v2, v3}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_2
    invoke-virtual {v0}, Lcom/miui/autotask/bean/s;->e()I

    move-result v1

    if-nez v1, :cond_3

    invoke-virtual {v0}, Lcom/miui/autotask/bean/s;->b()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    goto :goto_1

    :cond_3
    const/4 v1, 0x1

    :goto_1
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v3

    if-lt v3, v1, :cond_4

    invoke-virtual {v0}, Lcom/miui/autotask/bean/s;->b()Ljava/util/List;

    move-result-object v0

    invoke-virtual {p0, v0}, Lz3/a;->m(Ljava/util/List;)V

    invoke-interface {p1}, Lt3/e;->a()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/miui/autotask/bean/s;

    invoke-virtual {p0, p1, v2}, Lz3/a;->k(Lcom/miui/autotask/bean/s;Ljava/util/List;)V

    goto :goto_2

    :cond_4
    iget-object p1, p0, Lz3/b;->h:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "meet condition "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " , expect "

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " , triggerRule "

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lcom/miui/autotask/bean/s;->e()I

    move-result v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :goto_2
    sget-object p1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    return-object p1
.end method
