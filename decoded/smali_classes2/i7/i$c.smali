.class Li7/i$c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lk7/f$b;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Li7/i;->I()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/content/Context;

.field final synthetic b:Li7/i;


# direct methods
.method constructor <init>(Li7/i;Landroid/content/Context;)V
    .locals 0

    iput-object p1, p0, Li7/i$c;->b:Li7/i;

    iput-object p2, p0, Li7/i$c;->a:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public b(Ljava/util/Map;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lj7/a;",
            ">;)V"
        }
    .end annotation

    invoke-static {p1}, Lc7/c;->o(Ljava/util/Map;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const-string v0, "com.tencent.tmgp.pubgmhd"

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lj7/a;

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Lj7/a;->f()Z

    move-result p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Li7/i$c;->a:Landroid/content/Context;

    invoke-static {p1}, La8/l1;->k(Landroid/content/Context;)V

    iget-object p1, p0, Li7/i$c;->b:Li7/i;

    invoke-static {p1}, Li7/i;->h(Li7/i;)V

    :cond_1
    return-void
.end method

.method public c(Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Li7/a;",
            ">;)V"
        }
    .end annotation

    invoke-static {p1}, Lc7/c;->n(Ljava/util/Collection;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Li7/a;

    iget-object v1, v0, Li7/a;->a:Ljava/lang/String;

    const-string v2, "com.tencent.tmgp.pubgmhd"

    invoke-static {v2, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v0, v0, Li7/a;->d:Lj7/a;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lj7/a;->f()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object p1, p0, Li7/i$c;->a:Landroid/content/Context;

    invoke-static {p1}, La8/l1;->k(Landroid/content/Context;)V

    iget-object p1, p0, Li7/i$c;->b:Li7/i;

    invoke-static {p1}, Li7/i;->h(Li7/i;)V

    :cond_2
    return-void
.end method
