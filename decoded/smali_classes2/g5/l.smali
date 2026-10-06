.class public Lg5/l;
.super Lg5/i;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lg5/i;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroidx/recyclerview/widget/RecyclerView$c0;)V
    .locals 1

    instance-of v0, p1, Ld5/d$b;

    if-nez v0, :cond_0

    instance-of v0, p1, Lq6/i;

    if-eqz v0, :cond_1

    :cond_0
    iget-object p1, p1, Landroidx/recyclerview/widget/RecyclerView$c0;->itemView:Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lm5/f;->h(Landroid/content/Context;)V

    invoke-static {}, Ll5/b;->r()V

    :cond_1
    return-void
.end method

.method public b(Landroidx/recyclerview/widget/RecyclerView$c0;)V
    .locals 3

    iget-object v0, p1, Landroidx/recyclerview/widget/RecyclerView$c0;->itemView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f071e0b

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    instance-of v1, p1, Ld5/d$b;

    if-eqz v1, :cond_0

    move-object v1, p1

    check-cast v1, Ld5/d$b;

    iget-object v1, v1, Ld5/d$b;->a:Landroid/widget/ImageView;

    goto :goto_0

    :cond_0
    instance-of v1, p1, Lq6/i;

    if-eqz v1, :cond_1

    move-object v1, p1

    check-cast v1, Lq6/i;

    const v2, 0x7f0b0530

    invoke-virtual {v1, v2}, Lq6/i;->e(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    :goto_0
    if-eqz v1, :cond_2

    const v2, 0x7f08077d

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    invoke-virtual {v1, v0, v0, v0, v0}, Landroid/view/View;->setPadding(IIII)V

    iget-object p1, p1, Landroidx/recyclerview/widget/RecyclerView$c0;->itemView:Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    const-string v0, "com.miui.notes"

    invoke-static {p1, v0}, Lme/a;->a(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    :cond_2
    return-void
.end method
