.class public Lcom/miui/gamebooster/beauty/BeautyTopPreference;
.super Landroidx/preference/Preference;
.source "SourceFile"


# instance fields
.field private a:Landroid/content/Context;

.field private b:Landroid/widget/ImageView;

.field private c:Landroid/widget/ImageView;

.field private d:Landroid/widget/ImageView;

.field private e:Landroid/widget/ImageView;

.field private f:Landroid/widget/Space;

.field private g:Landroid/widget/Space;

.field private h:Landroid/widget/Space;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0, p1}, Landroidx/preference/Preference;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, Lcom/miui/gamebooster/beauty/BeautyTopPreference;->a:Landroid/content/Context;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Landroidx/preference/Preference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    iput-object p1, p0, Lcom/miui/gamebooster/beauty/BeautyTopPreference;->a:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public onBindViewHolder(Landroidx/preference/h;)V
    .locals 4

    invoke-super {p0, p1}, Landroidx/preference/Preference;->onBindViewHolder(Landroidx/preference/h;)V

    iget-object v0, p1, Landroidx/recyclerview/widget/RecyclerView$c0;->itemView:Landroid/view/View;

    const v1, 0x7f0b03ff

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-static {}, Lx4/t;->E()Z

    move-result v1

    if-eqz v1, :cond_0

    const v1, 0x7f08068c

    goto :goto_0

    :cond_0
    const v1, 0x7f08068e

    :goto_0
    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundResource(I)V

    iget-object v0, p1, Landroidx/recyclerview/widget/RecyclerView$c0;->itemView:Landroid/view/View;

    const v1, 0x7f0b0ac2

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Space;

    iput-object v0, p0, Lcom/miui/gamebooster/beauty/BeautyTopPreference;->f:Landroid/widget/Space;

    iget-object v0, p1, Landroidx/recyclerview/widget/RecyclerView$c0;->itemView:Landroid/view/View;

    const v1, 0x7f0b0ac5

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Space;

    iput-object v0, p0, Lcom/miui/gamebooster/beauty/BeautyTopPreference;->g:Landroid/widget/Space;

    iget-object v0, p1, Landroidx/recyclerview/widget/RecyclerView$c0;->itemView:Landroid/view/View;

    const v1, 0x7f0b0ac3

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Space;

    iput-object v0, p0, Lcom/miui/gamebooster/beauty/BeautyTopPreference;->h:Landroid/widget/Space;

    iget-object v0, p1, Landroidx/recyclerview/widget/RecyclerView$c0;->itemView:Landroid/view/View;

    const v1, 0x7f0b05e3

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/miui/gamebooster/beauty/BeautyTopPreference;->b:Landroid/widget/ImageView;

    iget-object v0, p1, Landroidx/recyclerview/widget/RecyclerView$c0;->itemView:Landroid/view/View;

    const v1, 0x7f0b05e4

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/miui/gamebooster/beauty/BeautyTopPreference;->c:Landroid/widget/ImageView;

    iget-object v0, p1, Landroidx/recyclerview/widget/RecyclerView$c0;->itemView:Landroid/view/View;

    const v1, 0x7f0b05e6

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/miui/gamebooster/beauty/BeautyTopPreference;->d:Landroid/widget/ImageView;

    iget-object p1, p1, Landroidx/recyclerview/widget/RecyclerView$c0;->itemView:Landroid/view/View;

    const v0, 0x7f0b05e5

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    iput-object p1, p0, Lcom/miui/gamebooster/beauty/BeautyTopPreference;->e:Landroid/widget/ImageView;

    invoke-static {}, La8/p;->c()Z

    move-result p1

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-eqz p1, :cond_1

    new-array p1, v0, [Landroid/view/View;

    iget-object v0, p0, Lcom/miui/gamebooster/beauty/BeautyTopPreference;->c:Landroid/widget/ImageView;

    aput-object v0, p1, v1

    invoke-static {v1, p1}, Ldb/i;->m(I[Landroid/view/View;)V

    goto :goto_3

    :cond_1
    const/4 p1, 0x4

    new-array v2, p1, [Landroid/view/View;

    new-array p1, p1, [Landroid/view/View;

    invoke-static {}, Lw5/f;->G()Z

    move-result v3

    if-eqz v3, :cond_2

    iget-object v3, p0, Lcom/miui/gamebooster/beauty/BeautyTopPreference;->b:Landroid/widget/ImageView;

    aput-object v3, v2, v1

    iget-object v3, p0, Lcom/miui/gamebooster/beauty/BeautyTopPreference;->f:Landroid/widget/Space;

    aput-object v3, p1, v1

    goto :goto_1

    :cond_2
    move v0, v1

    :goto_1
    invoke-static {}, Lw5/f;->p()Lw5/f;

    move-result-object v3

    invoke-virtual {v3}, Lw5/f;->J()Z

    move-result v3

    if-eqz v3, :cond_3

    iget-object v3, p0, Lcom/miui/gamebooster/beauty/BeautyTopPreference;->c:Landroid/widget/ImageView;

    aput-object v3, v2, v0

    iget-object v3, p0, Lcom/miui/gamebooster/beauty/BeautyTopPreference;->g:Landroid/widget/Space;

    aput-object v3, p1, v0

    add-int/lit8 v0, v0, 0x1

    :cond_3
    invoke-static {}, Lw5/f;->a0()Z

    move-result v3

    if-eqz v3, :cond_4

    iget-object v3, p0, Lcom/miui/gamebooster/beauty/BeautyTopPreference;->d:Landroid/widget/ImageView;

    aput-object v3, v2, v0

    iget-object v3, p0, Lcom/miui/gamebooster/beauty/BeautyTopPreference;->h:Landroid/widget/Space;

    aput-object v3, p1, v0

    add-int/lit8 v0, v0, 0x1

    :cond_4
    invoke-static {}, Lw5/f;->Y()Z

    move-result v3

    if-eqz v3, :cond_5

    iget-object v3, p0, Lcom/miui/gamebooster/beauty/BeautyTopPreference;->e:Landroid/widget/ImageView;

    aput-object v3, v2, v0

    goto :goto_2

    :cond_5
    if-lez v0, :cond_6

    add-int/lit8 v0, v0, -0x1

    const/4 v3, 0x0

    aput-object v3, p1, v0

    :cond_6
    :goto_2
    invoke-static {v1, v2}, Ldb/i;->m(I[Landroid/view/View;)V

    invoke-static {v1, p1}, Ldb/i;->m(I[Landroid/view/View;)V

    :goto_3
    return-void
.end method
