.class public La6/e;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lq6/b;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lq6/b<",
        "Lc6/d;",
        ">;"
    }
.end annotation


# instance fields
.field private final a:Lb6/b;

.field private b:Z


# direct methods
.method public constructor <init>(Lb6/b;Z)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, La6/e;->a:Lb6/b;

    iput-boolean p2, p0, La6/e;->b:Z

    return-void
.end method

.method public static synthetic f(La6/e;Lc6/d;ILandroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, La6/e;->i(Lc6/d;ILandroid/view/View;)V

    return-void
.end method

.method private synthetic i(Lc6/d;ILandroid/view/View;)V
    .locals 1

    iget-object v0, p0, La6/e;->a:Lb6/b;

    if-eqz v0, :cond_0

    invoke-interface {v0, p1, p3, p2}, Lb6/b;->e(Lc6/a;Landroid/view/View;I)V

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

    const v0, 0x7f0e0104

    return v0
.end method

.method public bridge synthetic c(Lq6/i;Ljava/lang/Object;I)V
    .locals 0

    check-cast p2, Lc6/d;

    invoke-virtual {p0, p1, p2, p3}, La6/e;->g(Lq6/i;Lc6/d;I)V

    return-void
.end method

.method public bridge synthetic d(Ljava/lang/Object;I)Z
    .locals 0

    check-cast p1, Lc6/d;

    invoke-virtual {p0, p1, p2}, La6/e;->h(Lc6/d;I)Z

    move-result p1

    return p1
.end method

.method public synthetic e()Landroid/view/View;
    .locals 1

    invoke-static {p0}, Lq6/a;->c(Lq6/b;)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public g(Lq6/i;Lc6/d;I)V
    .locals 5

    iget-object v0, p1, Landroidx/recyclerview/widget/RecyclerView$c0;->itemView:Landroid/view/View;

    iget-boolean v1, p0, La6/e;->b:Z

    invoke-virtual {v0, v1}, Landroid/view/View;->setEnabled(Z)V

    const v0, 0x7f0b055a

    invoke-virtual {p1, v0}, Lq6/i;->e(I)Landroid/view/View;

    move-result-object v1

    iget-boolean v2, p0, La6/e;->b:Z

    invoke-virtual {v1, v2}, Landroid/view/View;->setEnabled(Z)V

    const v1, 0x7f0b0cf3

    invoke-virtual {p1, v1}, Lq6/i;->e(I)Landroid/view/View;

    move-result-object v2

    iget-boolean v3, p0, La6/e;->b:Z

    invoke-virtual {v2, v3}, Landroid/view/View;->setEnabled(Z)V

    iget-boolean v2, p0, La6/e;->b:Z

    const v3, 0x7f0b060c

    if-eqz v2, :cond_0

    invoke-virtual {p1, v3}, Lq6/i;->e(I)Landroid/view/View;

    move-result-object v2

    const/high16 v4, 0x3f800000    # 1.0f

    goto :goto_0

    :cond_0
    invoke-virtual {p1, v3}, Lq6/i;->e(I)Landroid/view/View;

    move-result-object v2

    const v4, 0x3e99999a    # 0.3f

    :goto_0
    invoke-virtual {v2, v4}, Landroid/view/View;->setAlpha(F)V

    invoke-virtual {p2}, Lc6/d;->c()Z

    move-result v2

    iget-object v4, p1, Landroidx/recyclerview/widget/RecyclerView$c0;->itemView:Landroid/view/View;

    invoke-virtual {v4, v2}, Landroid/view/View;->setSelected(Z)V

    invoke-virtual {p1, v0}, Lq6/i;->e(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/View;->setSelected(Z)V

    invoke-virtual {p1, v1}, Lq6/i;->e(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/View;->setSelected(Z)V

    invoke-virtual {p1, v3}, Lq6/i;->e(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    invoke-virtual {p2}, Lc6/d;->a()I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    invoke-virtual {p1, v1}, Lq6/i;->e(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-virtual {p2}, Lc6/d;->d()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    iget-object p1, p1, Landroidx/recyclerview/widget/RecyclerView$c0;->itemView:Landroid/view/View;

    new-instance v0, La6/d;

    invoke-direct {v0, p0, p2, p3}, La6/d;-><init>(La6/e;Lc6/d;I)V

    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public h(Lc6/d;I)Z
    .locals 0

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public j(Z)V
    .locals 0

    iput-boolean p1, p0, La6/e;->b:Z

    return-void
.end method
