.class public Lg5/f;
.super Lg5/i;
.source "SourceFile"


# instance fields
.field private a:Lf5/d;

.field private volatile b:Landroid/graphics/Bitmap;

.field private final c:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lf5/d;)V
    .locals 1

    invoke-direct {p0}, Lg5/i;-><init>()V

    iput-object p1, p0, Lg5/f;->a:Lf5/d;

    invoke-static {}, Lcom/miui/securitycenter/Application;->A()Lcom/miui/securitycenter/Application;

    move-result-object v0

    iget-object p1, p1, Lf5/d;->b:Ljava/lang/String;

    invoke-static {v0, p1}, Lme/a;->a(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lg5/f;->c:Ljava/lang/String;

    return-void
.end method

.method public static synthetic c(Lg5/f;Landroidx/recyclerview/widget/RecyclerView$c0;)V
    .locals 0

    invoke-direct {p0, p1}, Lg5/f;->f(Landroidx/recyclerview/widget/RecyclerView$c0;)V

    return-void
.end method

.method private synthetic f(Landroidx/recyclerview/widget/RecyclerView$c0;)V
    .locals 6

    iget-object v0, p1, Landroidx/recyclerview/widget/RecyclerView$c0;->itemView:Landroid/view/View;

    iget-object v1, p0, Lg5/f;->a:Lf5/d;

    iget-object v2, v1, Lf5/d;->b:Ljava/lang/String;

    iget-object v3, v1, Lf5/d;->c:Ljava/lang/String;

    iget v1, v1, Lf5/d;->a:I

    const v4, 0x7f12098d

    invoke-static {v0, v2, v3, v4, v1}, La8/a0;->W(Landroid/view/View;Ljava/lang/String;Ljava/lang/String;II)V

    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$c0;->getAdapterPosition()I

    move-result p1

    invoke-static {}, Lcom/miui/securitycenter/Application;->A()Lcom/miui/securitycenter/Application;

    move-result-object v0

    invoke-static {v0}, Lm5/f;->g(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    add-int/lit8 p1, p1, -0x2

    :cond_0
    move v0, p1

    iget-object p1, p0, Lg5/f;->a:Lf5/d;

    iget-object v1, p1, Lf5/d;->b:Ljava/lang/String;

    const/4 v2, 0x0

    const/4 v3, 0x0

    iget v4, p1, Lf5/d;->e:I

    const-string v5, "app"

    invoke-static/range {v0 .. v5}, Ll5/b;->d(ILjava/lang/String;Ljava/lang/String;ZILjava/lang/String;)V

    return-void
.end method


# virtual methods
.method public a(Landroidx/recyclerview/widget/RecyclerView$c0;)V
    .locals 3

    instance-of v0, p1, Ld5/d$b;

    if-nez v0, :cond_0

    instance-of v0, p1, Lq6/i;

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p1, Landroidx/recyclerview/widget/RecyclerView$c0;->itemView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {}, Lcom/miui/common/a;->d()Z

    move-result v1

    if-nez v1, :cond_2

    iget-object v1, p0, Lg5/f;->a:Lf5/d;

    iget-object v2, v1, Lf5/d;->b:Ljava/lang/String;

    iget v1, v1, Lf5/d;->a:I

    invoke-static {v2, v1}, La8/a0;->D(Ljava/lang/String;I)Z

    move-result v1

    const-string v2, "DockAppModel"

    if-eqz v1, :cond_1

    const-string p1, "onClick: app isPinned"

    invoke-static {v2, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p1, p0, Lg5/f;->a:Lf5/d;

    iget-object v1, p1, Lf5/d;->b:Ljava/lang/String;

    iget p1, p1, Lf5/d;->a:I

    invoke-static {v0, v1, p1}, La8/a0;->K(Landroid/content/Context;Ljava/lang/String;I)V

    return-void

    :cond_1
    iget-object v0, p0, Lg5/f;->a:Lf5/d;

    iget-object v1, v0, Lf5/d;->b:Ljava/lang/String;

    iget v0, v0, Lf5/d;->a:I

    invoke-static {v1, v0}, La8/a0;->A(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_2

    const-string p1, "onClick: app isInFreeformOrSplit!!!"

    invoke-static {v2, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_2
    invoke-static {}, Lef/z;->d()Lef/z;

    move-result-object v0

    new-instance v1, Lg5/e;

    invoke-direct {v1, p0, p1}, Lg5/e;-><init>(Lg5/f;Landroidx/recyclerview/widget/RecyclerView$c0;)V

    invoke-virtual {v0, v1}, Lef/z;->b(Ljava/lang/Runnable;)V

    return-void
.end method

.method public b(Landroidx/recyclerview/widget/RecyclerView$c0;)V
    .locals 5

    instance-of v0, p1, Ld5/d$b;

    const-string v1, "pkg_icon_xspace://"

    const-string v2, "pkg_icon://"

    const/16 v3, 0x3e7

    if-eqz v0, :cond_2

    check-cast p1, Ld5/d$b;

    iget-object p1, p1, Ld5/d$b;->a:Landroid/widget/ImageView;

    invoke-virtual {p0}, Lg5/f;->e()Landroid/graphics/Bitmap;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lg5/f;->e()Landroid/graphics/Bitmap;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    goto :goto_1

    :cond_0
    iget-object v0, p0, Lg5/f;->a:Lf5/d;

    iget-object v0, v0, Lf5/d;->b:Ljava/lang/String;

    invoke-virtual {v2, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iget-object v2, p0, Lg5/f;->a:Lf5/d;

    iget v2, v2, Lf5/d;->a:I

    invoke-static {v2}, Lx4/z1;->m(I)I

    move-result v2

    if-ne v2, v3, :cond_1

    iget-object v0, p0, Lg5/f;->a:Lf5/d;

    iget-object v0, v0, Lf5/d;->b:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :cond_1
    sget-object v1, Lx4/o0;->f:Lrh/c;

    invoke-static {v0, p1, v1}, Lx4/o0;->d(Ljava/lang/String;Landroid/widget/ImageView;Lrh/c;)V

    goto :goto_1

    :cond_2
    instance-of v0, p1, Lq6/i;

    if-eqz v0, :cond_4

    check-cast p1, Lq6/i;

    const v0, 0x7f0b0530

    invoke-virtual {p1, v0}, Lq6/i;->e(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    iget-object v0, p0, Lg5/f;->a:Lf5/d;

    iget v0, v0, Lf5/d;->a:I

    invoke-static {v0}, Lx4/z1;->m(I)I

    move-result v0

    const v4, 0x7f0806a8

    if-ne v0, v3, :cond_3

    iget-object v0, p0, Lg5/f;->a:Lf5/d;

    iget-object v0, v0, Lf5/d;->b:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_3
    iget-object v0, p0, Lg5/f;->a:Lf5/d;

    iget-object v0, v0, Lf5/d;->b:Ljava/lang/String;

    invoke-virtual {v2, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_0
    sget-object v1, Lx4/o0;->f:Lrh/c;

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2, v4}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-static {v0, p1, v1, v2}, Lx4/o0;->f(Ljava/lang/String;Landroid/widget/ImageView;Lrh/c;Landroid/graphics/drawable/Drawable;)V

    goto :goto_1

    :cond_4
    const/4 p1, 0x0

    :goto_1
    if-eqz p1, :cond_5

    iget-object v0, p0, Lg5/f;->c:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    :cond_5
    return-void
.end method

.method public d()Lf5/d;
    .locals 1

    iget-object v0, p0, Lg5/f;->a:Lf5/d;

    return-object v0
.end method

.method public e()Landroid/graphics/Bitmap;
    .locals 1

    iget-object v0, p0, Lg5/f;->b:Landroid/graphics/Bitmap;

    return-object v0
.end method

.method public g(Landroid/graphics/Bitmap;)V
    .locals 0

    iput-object p1, p0, Lg5/f;->b:Landroid/graphics/Bitmap;

    return-void
.end method
