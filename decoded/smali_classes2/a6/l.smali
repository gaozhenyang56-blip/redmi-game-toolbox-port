.class public La6/l;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lq6/b;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lq6/b<",
        "Lc6/h;",
        ">;"
    }
.end annotation


# instance fields
.field private final a:Lb6/b;

.field private b:Lcom/miui/gamebooster/customview/ConstrainLayoutWithCoolTime$a;


# direct methods
.method public constructor <init>(Lb6/b;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, La6/l;-><init>(Lb6/b;Lcom/miui/gamebooster/customview/ConstrainLayoutWithCoolTime$a;)V

    return-void
.end method

.method public constructor <init>(Lb6/b;Lcom/miui/gamebooster/customview/ConstrainLayoutWithCoolTime$a;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, La6/l;->a:Lb6/b;

    iput-object p2, p0, La6/l;->b:Lcom/miui/gamebooster/customview/ConstrainLayoutWithCoolTime$a;

    return-void
.end method

.method public static synthetic f(La6/l;Lc6/h;ILandroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, La6/l;->j(Lc6/h;ILandroid/view/View;)V

    return-void
.end method

.method public static synthetic g(Lq6/i;)V
    .locals 0

    invoke-static {p0}, La6/l;->k(Lq6/i;)V

    return-void
.end method

.method private synthetic j(Lc6/h;ILandroid/view/View;)V
    .locals 1

    iget-object v0, p0, La6/l;->a:Lb6/b;

    if-eqz v0, :cond_0

    invoke-interface {v0, p1, p3, p2}, Lb6/b;->e(Lc6/a;Landroid/view/View;I)V

    :cond_0
    return-void
.end method

.method private static synthetic k(Lq6/i;)V
    .locals 1

    invoke-static {}, Lx5/p;->q0()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lq6/i;->d()Landroid/content/Context;

    move-result-object p0

    invoke-static {p0}, Lx5/b;->j(Landroid/content/Context;)V

    :cond_0
    return-void
.end method


# virtual methods
.method public a()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public b()I
    .locals 1

    const v0, 0x7f0e0106

    return v0
.end method

.method public bridge synthetic c(Lq6/i;Ljava/lang/Object;I)V
    .locals 0

    check-cast p2, Lc6/h;

    invoke-virtual {p0, p1, p2, p3}, La6/l;->h(Lq6/i;Lc6/h;I)V

    return-void
.end method

.method public bridge synthetic d(Ljava/lang/Object;I)Z
    .locals 0

    check-cast p1, Lc6/h;

    invoke-virtual {p0, p1, p2}, La6/l;->i(Lc6/h;I)Z

    move-result p1

    return p1
.end method

.method public synthetic e()Landroid/view/View;
    .locals 1

    invoke-static {p0}, Lq6/a;->c(Lq6/b;)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public h(Lq6/i;Lc6/h;I)V
    .locals 5

    invoke-virtual {p2}, Lc6/h;->b()Z

    move-result v0

    iget-object v1, p1, Landroidx/recyclerview/widget/RecyclerView$c0;->itemView:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->setEnabled(Z)V

    const v1, 0x7f0b055a

    invoke-virtual {p1, v1}, Lq6/i;->e(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/view/View;->setEnabled(Z)V

    const v2, 0x7f0b0cf3

    invoke-virtual {p1, v2}, Lq6/i;->e(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3, v0}, Landroid/view/View;->setEnabled(Z)V

    const v3, 0x7f0b0c59

    invoke-virtual {p1, v3}, Lq6/i;->e(I)Landroid/view/View;

    move-result-object v4

    invoke-virtual {v4, v0}, Landroid/view/View;->setEnabled(Z)V

    invoke-virtual {p2}, Lc6/h;->d()Z

    move-result v0

    iget-object v4, p1, Landroidx/recyclerview/widget/RecyclerView$c0;->itemView:Landroid/view/View;

    invoke-virtual {v4, v0}, Landroid/view/View;->setSelected(Z)V

    invoke-virtual {p1, v1}, Lq6/i;->e(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/View;->setSelected(Z)V

    invoke-virtual {p1, v2}, Lq6/i;->e(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/View;->setSelected(Z)V

    invoke-virtual {p1, v3}, Lq6/i;->e(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/View;->setSelected(Z)V

    invoke-virtual {p1, v2}, Lq6/i;->e(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-virtual {p2}, Lc6/h;->e()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    invoke-virtual {p1, v3}, Lq6/i;->e(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-virtual {p2}, Lc6/h;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p1, Landroidx/recyclerview/widget/RecyclerView$c0;->itemView:Landroid/view/View;

    new-instance v1, La6/j;

    invoke-direct {v1, p0, p2, p3}, La6/j;-><init>(La6/l;Lc6/h;I)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object p3, p1, Landroidx/recyclerview/widget/RecyclerView$c0;->itemView:Landroid/view/View;

    instance-of v0, p3, Lcom/miui/gamebooster/customview/ConstrainLayoutWithCoolTime;

    if-eqz v0, :cond_1

    iget-object v0, p0, La6/l;->b:Lcom/miui/gamebooster/customview/ConstrainLayoutWithCoolTime$a;

    if-eqz v0, :cond_0

    check-cast p3, Lcom/miui/gamebooster/customview/ConstrainLayoutWithCoolTime;

    invoke-virtual {p3, v0}, Lcom/miui/gamebooster/customview/ConstrainLayoutWithCoolTime;->setDefaultIntervalProvider(Lcom/miui/gamebooster/customview/ConstrainLayoutWithCoolTime$a;)V

    iget-object p3, p1, Landroidx/recyclerview/widget/RecyclerView$c0;->itemView:Landroid/view/View;

    check-cast p3, Lcom/miui/gamebooster/customview/ConstrainLayoutWithCoolTime;

    const-wide/16 v0, 0x1f4

    invoke-virtual {p3, v0, v1}, Lcom/miui/gamebooster/customview/ConstrainLayoutWithCoolTime;->setClickInterval(J)V

    :cond_0
    invoke-virtual {p2}, Lc6/h;->c()Lc6/h$a;

    move-result-object p2

    sget-object p3, Lc6/h$a;->e:Lc6/h$a;

    if-ne p2, p3, :cond_1

    iget-object p2, p1, Landroidx/recyclerview/widget/RecyclerView$c0;->itemView:Landroid/view/View;

    check-cast p2, Lcom/miui/gamebooster/customview/ConstrainLayoutWithCoolTime;

    new-instance p3, La6/k;

    invoke-direct {p3, p1}, La6/k;-><init>(Lq6/i;)V

    invoke-virtual {p2, p3}, Lcom/miui/gamebooster/customview/ConstrainLayoutWithCoolTime;->setOnViewDisableTouchListener(Lcom/miui/gamebooster/customview/m;)V

    :cond_1
    return-void
.end method

.method public i(Lc6/h;I)Z
    .locals 0

    instance-of p1, p1, Lc6/e;

    return p1
.end method
