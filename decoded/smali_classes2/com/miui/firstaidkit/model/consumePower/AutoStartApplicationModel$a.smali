.class Lcom/miui/firstaidkit/model/consumePower/AutoStartApplicationModel$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/concurrent/Callable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/firstaidkit/model/consumePower/AutoStartApplicationModel;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/concurrent/Callable<",
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation


# instance fields
.field a:Landroid/content/Context;

.field final synthetic b:Lcom/miui/firstaidkit/model/consumePower/AutoStartApplicationModel;


# direct methods
.method public constructor <init>(Lcom/miui/firstaidkit/model/consumePower/AutoStartApplicationModel;Landroid/content/Context;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/firstaidkit/model/consumePower/AutoStartApplicationModel$a;->b:Lcom/miui/firstaidkit/model/consumePower/AutoStartApplicationModel;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/miui/firstaidkit/model/consumePower/AutoStartApplicationModel$a;->a:Landroid/content/Context;

    return-void
.end method

.method public static synthetic a(Lcom/miui/firstaidkit/model/consumePower/AutoStartApplicationModel$a;Landroid/content/pm/PackageInfo;)Ljava/lang/Boolean;
    .locals 0

    invoke-direct {p0, p1}, Lcom/miui/firstaidkit/model/consumePower/AutoStartApplicationModel$a;->c(Landroid/content/pm/PackageInfo;)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0
.end method

.method private synthetic c(Landroid/content/pm/PackageInfo;)Ljava/lang/Boolean;
    .locals 2

    iget-object v0, p0, Lcom/miui/firstaidkit/model/consumePower/AutoStartApplicationModel$a;->a:Landroid/content/Context;

    const/4 v1, 0x1

    invoke-static {v0, p1, v1}, Lcom/miui/permcenter/l;->m(Landroid/content/Context;Landroid/content/pm/PackageInfo;Z)Z

    move-result p1

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1
.end method


# virtual methods
.method public b()Ljava/lang/Boolean;
    .locals 7

    iget-object v0, p0, Lcom/miui/firstaidkit/model/consumePower/AutoStartApplicationModel$a;->a:Landroid/content/Context;

    invoke-static {v0}, Lx4/f1;->y(Landroid/content/Context;)Ljava/util/List;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    iget-object v0, p0, Lcom/miui/firstaidkit/model/consumePower/AutoStartApplicationModel$a;->a:Landroid/content/Context;

    const-wide/16 v1, 0x4000

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    new-instance v3, Lcom/miui/firstaidkit/model/consumePower/a;

    invoke-direct {v3, p0}, Lcom/miui/firstaidkit/model/consumePower/a;-><init>(Lcom/miui/firstaidkit/model/consumePower/AutoStartApplicationModel$a;)V

    const/4 v4, 0x1

    const/4 v5, 0x0

    invoke-static {v0, v4, v2, v5, v3}, Lcom/miui/permcenter/n;->z(Landroid/content/Context;ZLjava/util/List;Lxc/c;Lak/l;)Ljava/util/ArrayList;

    move-result-object v0

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/miui/permcenter/AppPermissionInfo;

    invoke-virtual {v3}, Lcom/miui/permcenter/AppPermissionInfo;->getPermissionToAction()Ljava/util/HashMap;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    if-eqz v5, :cond_0

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    const/4 v6, 0x3

    if-ne v5, v6, :cond_0

    invoke-virtual {v3, v4}, Lcom/miui/permcenter/AppPermissionInfo;->setIsAllowStartByWakePath(Z)V

    invoke-virtual {v3}, Lcom/miui/permcenter/AppPermissionInfo;->isSystem()Z

    move-result v5

    if-eqz v5, :cond_1

    goto :goto_0

    :cond_1
    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_2
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x5

    if-le v0, v1, :cond_3

    const/4 v4, 0x0

    :cond_3
    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic call()Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0}, Lcom/miui/firstaidkit/model/consumePower/AutoStartApplicationModel$a;->b()Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method
