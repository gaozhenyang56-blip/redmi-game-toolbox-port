.class public final Lcom/miui/permcenter/permissions/a$a;
.super Landroidx/lifecycle/a0;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/permcenter/permissions/a;-><init>()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroidx/lifecycle/a0<",
        "Lcom/miui/permcenter/permissions/c;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic m:Lcom/miui/permcenter/permissions/a;


# direct methods
.method constructor <init>(Lcom/miui/permcenter/permissions/a;)V
    .locals 2

    iput-object p1, p0, Lcom/miui/permcenter/permissions/a$a;->m:Lcom/miui/permcenter/permissions/a;

    invoke-direct {p0}, Landroidx/lifecycle/a0;-><init>()V

    invoke-virtual {p1}, Lcom/miui/permcenter/permissions/a;->d()Lcom/miui/permcenter/permissions/e;

    move-result-object p1

    new-instance v0, Lcom/miui/permcenter/permissions/a$a$a;

    invoke-direct {v0, p0}, Lcom/miui/permcenter/permissions/a$a$a;-><init>(Lcom/miui/permcenter/permissions/a$a;)V

    new-instance v1, Lcom/miui/permcenter/permissions/a$d;

    invoke-direct {v1, v0}, Lcom/miui/permcenter/permissions/a$d;-><init>(Lak/l;)V

    invoke-virtual {p0, p1, v1}, Landroidx/lifecycle/a0;->p(Landroidx/lifecycle/LiveData;Landroidx/lifecycle/d0;)V

    return-void
.end method

.method public static final synthetic q(Lcom/miui/permcenter/permissions/a$a;)V
    .locals 0

    invoke-direct {p0}, Lcom/miui/permcenter/permissions/a$a;->r()V

    return-void
.end method

.method private final r()V
    .locals 6

    iget-object v0, p0, Lcom/miui/permcenter/permissions/a$a;->m:Lcom/miui/permcenter/permissions/a;

    invoke-virtual {v0}, Lcom/miui/permcenter/permissions/a;->d()Lcom/miui/permcenter/permissions/e;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/lifecycle/LiveData;->f()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcc/g;

    if-eqz v0, :cond_5

    invoke-virtual {v0}, Lcc/g;->e()Z

    move-result v1

    if-nez v1, :cond_0

    goto :goto_3

    :cond_0
    invoke-virtual {p0}, Landroidx/lifecycle/LiveData;->f()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/miui/permcenter/permissions/c;

    if-eqz v1, :cond_5

    iget-object v2, v1, Lcom/miui/permcenter/permissions/c;->c:Ljava/util/HashMap;

    if-eqz v2, :cond_2

    invoke-interface {v2}, Ljava/util/Map;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_1

    goto :goto_0

    :cond_1
    const/4 v2, 0x0

    goto :goto_1

    :cond_2
    :goto_0
    const/4 v2, 0x1

    :goto_1
    if-eqz v2, :cond_3

    goto :goto_3

    :cond_3
    invoke-virtual {v0}, Lcc/g;->c()Landroid/util/ArrayMap;

    move-result-object v2

    invoke-virtual {v2}, Landroid/util/ArrayMap;->keySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_4
    :goto_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_5

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Long;

    iget-object v4, v1, Lcom/miui/permcenter/permissions/c;->c:Ljava/util/HashMap;

    invoke-virtual {v4, v3}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4

    iget-object v4, v1, Lcom/miui/permcenter/permissions/c;->c:Ljava/util/HashMap;

    const-string v5, "result.permissionToAction"

    invoke-static {v4, v5}, Lbk/m;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0}, Lcc/g;->c()Landroid/util/ArrayMap;

    move-result-object v5

    invoke-virtual {v5, v3}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    invoke-interface {v4, v3, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2

    :cond_5
    :goto_3
    return-void
.end method
