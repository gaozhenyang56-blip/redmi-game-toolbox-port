.class Lcom/miui/applicationlock/widget/u$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/miui/applicationlock/widget/LockPatternView$d;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/applicationlock/widget/u;->n()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/miui/applicationlock/widget/u;


# direct methods
.method constructor <init>(Lcom/miui/applicationlock/widget/u;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/applicationlock/widget/u$a;->a:Lcom/miui/applicationlock/widget/u;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/miui/applicationlock/widget/LockPatternView$b;",
            ">;)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/miui/applicationlock/widget/u$a;->a:Lcom/miui/applicationlock/widget/u;

    invoke-static {v0}, Lcom/miui/applicationlock/widget/u;->k(Lcom/miui/applicationlock/widget/u;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/applicationlock/widget/u$a;->a:Lcom/miui/applicationlock/widget/u;

    invoke-static {v0}, Lcom/miui/applicationlock/widget/u;->l(Lcom/miui/applicationlock/widget/u;)Lc3/g;

    move-result-object v0

    invoke-static {}, Lxg/d;->a()Lxg/d;

    move-result-object v1

    invoke-virtual {v1, p1}, Lxg/d;->b(Ljava/util/List;)Ljava/lang/String;

    move-result-object p1

    invoke-interface {v0, p1}, Lc3/g;->c(Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/miui/applicationlock/widget/u$a;->a:Lcom/miui/applicationlock/widget/u;

    invoke-static {}, Lxg/d;->a()Lxg/d;

    move-result-object v1

    invoke-virtual {v1, p1}, Lxg/d;->b(Ljava/util/List;)Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/miui/applicationlock/widget/u;->m(Lcom/miui/applicationlock/widget/u;Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method public b()V
    .locals 2

    iget-object v0, p0, Lcom/miui/applicationlock/widget/u$a;->a:Lcom/miui/applicationlock/widget/u;

    invoke-static {v0}, Lcom/miui/applicationlock/widget/u;->j(Lcom/miui/applicationlock/widget/u;)Lcom/miui/applicationlock/widget/LockPatternView;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/applicationlock/widget/u$a;->a:Lcom/miui/applicationlock/widget/u;

    invoke-static {v1}, Lcom/miui/applicationlock/widget/u;->i(Lcom/miui/applicationlock/widget/u;)Ljava/lang/Runnable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/View;->removeCallbacks(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public c(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/miui/applicationlock/widget/LockPatternView$b;",
            ">;)V"
        }
    .end annotation

    return-void
.end method

.method public d()V
    .locals 2

    iget-object v0, p0, Lcom/miui/applicationlock/widget/u$a;->a:Lcom/miui/applicationlock/widget/u;

    invoke-static {v0}, Lcom/miui/applicationlock/widget/u;->j(Lcom/miui/applicationlock/widget/u;)Lcom/miui/applicationlock/widget/LockPatternView;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/applicationlock/widget/u$a;->a:Lcom/miui/applicationlock/widget/u;

    invoke-static {v1}, Lcom/miui/applicationlock/widget/u;->i(Lcom/miui/applicationlock/widget/u;)Ljava/lang/Runnable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/View;->removeCallbacks(Ljava/lang/Runnable;)Z

    iget-object v0, p0, Lcom/miui/applicationlock/widget/u$a;->a:Lcom/miui/applicationlock/widget/u;

    invoke-static {v0}, Lcom/miui/applicationlock/widget/u;->k(Lcom/miui/applicationlock/widget/u;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/applicationlock/widget/u$a;->a:Lcom/miui/applicationlock/widget/u;

    invoke-static {v0}, Lcom/miui/applicationlock/widget/u;->l(Lcom/miui/applicationlock/widget/u;)Lc3/g;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lc3/g;->d(Landroid/text/Editable;)V

    :cond_0
    return-void
.end method
