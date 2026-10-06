.class public final Lcom/miui/permcenter/permissions/l;
.super Landroidx/lifecycle/r0;
.source "SourceFile"


# instance fields
.field private final a:Lcom/miui/securitycenter/Application;

.field private final b:Lcom/miui/permcenter/permissions/e;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final c:Landroidx/lifecycle/a0;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/lifecycle/a0<",
            "Ljava/util/LinkedHashMap<",
            "Ljava/lang/String;",
            "Lcom/miui/permcenter/AppPermissionInfo;",
            ">;>;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Landroidx/lifecycle/r0;-><init>()V

    invoke-static {}, Lcom/miui/securitycenter/Application;->A()Lcom/miui/securitycenter/Application;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/permcenter/permissions/l;->a:Lcom/miui/securitycenter/Application;

    sget-object v0, Lcom/miui/permcenter/permissions/e;->l:Lcom/miui/permcenter/permissions/e$a;

    invoke-virtual {v0}, Lcom/miui/permcenter/permissions/e$a;->a()Lcom/miui/permcenter/permissions/e;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/permcenter/permissions/e;->r()V

    iput-object v0, p0, Lcom/miui/permcenter/permissions/l;->b:Lcom/miui/permcenter/permissions/e;

    new-instance v0, Lcom/miui/permcenter/permissions/l$a;

    invoke-direct {v0, p0}, Lcom/miui/permcenter/permissions/l$a;-><init>(Lcom/miui/permcenter/permissions/l;)V

    iput-object v0, p0, Lcom/miui/permcenter/permissions/l;->c:Landroidx/lifecycle/a0;

    return-void
.end method

.method public static final synthetic a(Lcom/miui/permcenter/permissions/l;)Lcom/miui/securitycenter/Application;
    .locals 0

    iget-object p0, p0, Lcom/miui/permcenter/permissions/l;->a:Lcom/miui/securitycenter/Application;

    return-object p0
.end method

.method public static final synthetic b(Lcom/miui/permcenter/permissions/l;Ljava/util/List;Lxc/c;Ltj/d;)Ljava/lang/Object;
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/miui/permcenter/permissions/l;->e(Ljava/util/List;Lxc/c;Ltj/d;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method private final e(Ljava/util/List;Lxc/c;Ltj/d;)Ljava/lang/Object;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Long;",
            ">;",
            "Lxc/c<",
            "Landroid/content/pm/ApplicationInfo;",
            ">;",
            "Ltj/d<",
            "-",
            "Ljava/util/ArrayList<",
            "Lcom/miui/permcenter/AppPermissionInfo;",
            ">;>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    instance-of v0, p3, Lcom/miui/permcenter/permissions/l$b;

    if-eqz v0, :cond_0

    move-object v0, p3

    check-cast v0, Lcom/miui/permcenter/permissions/l$b;

    iget v1, v0, Lcom/miui/permcenter/permissions/l$b;->c:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_0

    sub-int/2addr v1, v2

    iput v1, v0, Lcom/miui/permcenter/permissions/l$b;->c:I

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/miui/permcenter/permissions/l$b;

    invoke-direct {v0, p0, p3}, Lcom/miui/permcenter/permissions/l$b;-><init>(Lcom/miui/permcenter/permissions/l;Ltj/d;)V

    :goto_0
    iget-object p3, v0, Lcom/miui/permcenter/permissions/l$b;->a:Ljava/lang/Object;

    invoke-static {}, Luj/b;->c()Ljava/lang/Object;

    move-result-object v1

    iget v2, v0, Lcom/miui/permcenter/permissions/l$b;->c:I

    const/4 v3, 0x1

    if-eqz v2, :cond_2

    if-ne v2, v3, :cond_1

    invoke-static {p3}, Loj/n;->b(Ljava/lang/Object;)V

    goto :goto_1

    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_2
    invoke-static {p3}, Loj/n;->b(Ljava/lang/Object;)V

    invoke-static {}, Llk/w0;->b()Llk/d0;

    move-result-object p3

    new-instance v2, Lcom/miui/permcenter/permissions/l$c;

    const/4 v4, 0x0

    invoke-direct {v2, p0, p1, p2, v4}, Lcom/miui/permcenter/permissions/l$c;-><init>(Lcom/miui/permcenter/permissions/l;Ljava/util/List;Lxc/c;Ltj/d;)V

    iput v3, v0, Lcom/miui/permcenter/permissions/l$b;->c:I

    invoke-static {p3, v2, v0}, Llk/g;->c(Ltj/g;Lak/p;Ltj/d;)Ljava/lang/Object;

    move-result-object p3

    if-ne p3, v1, :cond_3

    return-object v1

    :cond_3
    :goto_1
    const-string p1, "private suspend fun load\u2026          )\n            }"

    invoke-static {p3, p1}, Lbk/m;->d(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p3
.end method


# virtual methods
.method public final c()Landroidx/lifecycle/a0;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/lifecycle/a0<",
            "Ljava/util/LinkedHashMap<",
            "Ljava/lang/String;",
            "Lcom/miui/permcenter/AppPermissionInfo;",
            ">;>;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object v0, p0, Lcom/miui/permcenter/permissions/l;->c:Landroidx/lifecycle/a0;

    return-object v0
.end method

.method public final d()Lcom/miui/permcenter/permissions/e;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object v0, p0, Lcom/miui/permcenter/permissions/l;->b:Lcom/miui/permcenter/permissions/e;

    return-object v0
.end method

.method public final f(ILjava/util/List;Z)V
    .locals 8
    .param p2    # Ljava/util/List;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Ljava/lang/Long;",
            ">;Z)V"
        }
    .end annotation

    const-string v0, "permissionIds"

    invoke-static {p2, v0}, Lbk/m;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p0}, Landroidx/lifecycle/s0;->a(Landroidx/lifecycle/r0;)Llk/i0;

    move-result-object v1

    new-instance v0, Lcom/miui/permcenter/permissions/l$d;

    const/4 v7, 0x0

    move-object v2, v0

    move v3, p1

    move-object v4, p2

    move-object v5, p0

    move v6, p3

    invoke-direct/range {v2 .. v7}, Lcom/miui/permcenter/permissions/l$d;-><init>(ILjava/util/List;Lcom/miui/permcenter/permissions/l;ZLtj/d;)V

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v5, 0x3

    const/4 v6, 0x0

    move-object v4, v0

    invoke-static/range {v1 .. v6}, Llk/g;->b(Llk/i0;Ltj/g;Llk/k0;Lak/p;ILjava/lang/Object;)Llk/s1;

    return-void
.end method
