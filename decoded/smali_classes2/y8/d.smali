.class public final Ly8/d;
.super Landroid/widget/FrameLayout;
.source "SourceFile"


# instance fields
.field private a:Ljf/h;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 7
    .param p1    # Landroid/content/Context;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lkotlin/jvm/JvmOverloads;
    .end annotation

    const-string v0, "context"

    invoke-static {p1, v0}, Lbk/m;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x6

    const/4 v6, 0x0

    move-object v1, p0

    move-object v2, p1

    invoke-direct/range {v1 .. v6}, Ly8/d;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;IILbk/g;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .param p1    # Landroid/content/Context;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Landroid/util/AttributeSet;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation build Lkotlin/jvm/JvmOverloads;
    .end annotation

    const-string v0, "context"

    invoke-static {p1, v0}, Lbk/m;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, p1, p2, p3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p1

    const/4 p2, 0x1

    invoke-static {p1, p0, p2}, Ljf/h;->b(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Ljf/h;

    move-result-object p1

    const-string p2, "inflate(LayoutInflater.from(context), this, true)"

    invoke-static {p1, p2}, Lbk/m;->d(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Ly8/d;->a:Ljf/h;

    return-void
.end method

.method public synthetic constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;IILbk/g;)V
    .locals 0

    and-int/lit8 p5, p4, 0x2

    if-eqz p5, :cond_0

    const/4 p2, 0x0

    :cond_0
    and-int/lit8 p4, p4, 0x4

    if-eqz p4, :cond_1

    const/4 p3, 0x0

    :cond_1
    invoke-direct {p0, p1, p2, p3}, Ly8/d;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public static synthetic a(Ly8/d;Lb9/a;ILandroid/view/View;)V
    .locals 0

    invoke-static {p0, p1, p2, p3}, Ly8/d;->f(Ly8/d;Lb9/a;ILandroid/view/View;)V

    return-void
.end method

.method public static synthetic b(Ly8/d;Lb9/a;ILandroid/view/View;)V
    .locals 0

    invoke-static {p0, p1, p2, p3}, Ly8/d;->g(Ly8/d;Lb9/a;ILandroid/view/View;)V

    return-void
.end method

.method public static synthetic c(Ly8/d;Lb9/a;ILandroid/view/View;)V
    .locals 0

    invoke-static {p0, p1, p2, p3}, Ly8/d;->e(Ly8/d;Lb9/a;ILandroid/view/View;)V

    return-void
.end method

.method private static final e(Ly8/d;Lb9/a;ILandroid/view/View;)V
    .locals 2

    const-string p3, "this$0"

    invoke-static {p0, p3}, Lbk/m;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p3, "$model"

    invoke-static {p1, p3}, Lbk/m;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p3

    invoke-virtual {p1}, Lb9/c;->j()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    invoke-static {p3, v0, v1}, Lve/e;->c(Landroid/content/Context;Ljava/lang/String;Z)V

    const-string p3, "\u4ecb\u7ecd"

    invoke-direct {p0, p1, p3, p2}, Ly8/d;->j(Lb9/a;Ljava/lang/String;I)V

    return-void
.end method

.method private static final f(Ly8/d;Lb9/a;ILandroid/view/View;)V
    .locals 2

    const-string p3, "this$0"

    invoke-static {p0, p3}, Lbk/m;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p3, "$model"

    invoke-static {p1, p3}, Lbk/m;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p3

    invoke-virtual {p1}, Lb9/c;->p()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    invoke-static {p3, v0, v1}, Lve/e;->c(Landroid/content/Context;Ljava/lang/String;Z)V

    const-string p3, "\u9690\u79c1"

    invoke-direct {p0, p1, p3, p2}, Ly8/d;->j(Lb9/a;Ljava/lang/String;I)V

    return-void
.end method

.method private static final g(Ly8/d;Lb9/a;ILandroid/view/View;)V
    .locals 2

    const-string p3, "this$0"

    invoke-static {p0, p3}, Lbk/m;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p3, "$model"

    invoke-static {p1, p3}, Lbk/m;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p3

    invoke-virtual {p1}, Lb9/c;->n()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    invoke-static {p3, v0, v1}, Lve/e;->c(Landroid/content/Context;Ljava/lang/String;Z)V

    const-string p3, "\u6743\u9650"

    invoke-direct {p0, p1, p3, p2}, Ly8/d;->j(Lb9/a;Ljava/lang/String;I)V

    return-void
.end method

.method private final h(I)I
    .locals 1

    const/4 v0, 0x1

    if-eq p1, v0, :cond_2

    const/4 v0, 0x2

    if-eq p1, v0, :cond_1

    const/4 v0, 0x3

    if-eq p1, v0, :cond_0

    const p1, 0x7f08080c

    goto :goto_0

    :cond_0
    const p1, 0x7f08080e

    goto :goto_0

    :cond_1
    const p1, 0x7f08080f

    goto :goto_0

    :cond_2
    const p1, 0x7f08080d

    :goto_0
    return p1
.end method

.method private final i(I)I
    .locals 2

    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const/4 v1, 0x1

    if-eq p1, v1, :cond_2

    const/4 v1, 0x2

    if-eq p1, v1, :cond_1

    const/4 v1, 0x3

    if-eq p1, v1, :cond_0

    const p1, 0x7f06033a

    goto :goto_0

    :cond_0
    const p1, 0x7f060339

    goto :goto_0

    :cond_1
    const p1, 0x7f060338

    goto :goto_0

    :cond_2
    const p1, 0x7f060337

    :goto_0
    const/4 v1, 0x0

    invoke-static {v0, p1, v1}, Landroidx/core/content/res/g;->d(Landroid/content/res/Resources;ILandroid/content/res/Resources$Theme;)I

    move-result p1

    return p1
.end method

.method private final j(Lb9/a;Ljava/lang/String;I)V
    .locals 2

    const-string v0, "\u6392\u884c\u699c"

    const-string v1, "1513.2.3.1.38804"

    invoke-static {p1, v0, p2, p3, v1}, Le9/a;->c(Lb9/c;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)V

    return-void
.end method


# virtual methods
.method public final d(Lb9/a;Lrh/c;I)V
    .locals 7
    .param p1    # Lb9/a;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lrh/c;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "model"

    invoke-static {p1, v0}, Lbk/m;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "imageOptions"

    invoke-static {p2, v0}, Lbk/m;->e(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Ly8/d;->a:Ljf/h;

    iget-object v0, v0, Ljf/h;->c:Landroid/widget/ImageView;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {p1}, Lb9/a;->A()I

    move-result v2

    invoke-direct {p0, v2}, Ly8/d;->h(I)I

    move-result v2

    invoke-static {v1, v2}, Lf/a;->b(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    iget-object v0, p0, Ly8/d;->a:Ljf/h;

    iget-object v1, v0, Ljf/h;->l:Lcom/miui/gamecenter/casual_game/GameBoxRangeTextView;

    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v2, 0x7f120a17

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    const-string v0, "resources.getString(R.st\u2026application_range_prefix)"

    invoke-static {v2, v0}, Lbk/m;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Lb9/a;->A()I

    move-result v3

    invoke-virtual {p1}, Lb9/a;->A()I

    move-result v0

    invoke-direct {p0, v0}, Ly8/d;->i(I)I

    move-result v4

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v5, 0x7f070a6c

    invoke-virtual {v0, v5}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v5

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v6, 0x7f070b63

    invoke-virtual {v0, v6}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v6

    invoke-virtual/range {v1 .. v6}, Lcom/miui/gamecenter/casual_game/GameBoxRangeTextView;->a(Ljava/lang/String;IIFF)V

    iget-object v0, p0, Ly8/d;->a:Ljf/h;

    iget-object v0, v0, Ljf/h;->l:Lcom/miui/gamecenter/casual_game/GameBoxRangeTextView;

    invoke-virtual {p1}, Lb9/a;->D()Z

    move-result v1

    const/16 v2, 0x8

    const/4 v3, 0x0

    if-eqz v1, :cond_0

    move v1, v3

    goto :goto_0

    :cond_0
    move v1, v2

    :goto_0
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Ly8/d;->a:Ljf/h;

    iget-object v0, v0, Ljf/h;->c:Landroid/widget/ImageView;

    invoke-virtual {p1}, Lb9/a;->D()Z

    move-result v1

    if-eqz v1, :cond_1

    move v1, v3

    goto :goto_1

    :cond_1
    move v1, v2

    :goto_1
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v0, p0, Ly8/d;->a:Ljf/h;

    iget-object v0, v0, Ljf/h;->f:Landroid/widget/TextView;

    invoke-virtual {p1}, Lb9/c;->c()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Ly8/d;->a:Ljf/h;

    iget-object v0, v0, Ljf/h;->j:Landroid/widget/TextView;

    invoke-virtual {p1}, Lb9/c;->r()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Ly8/d;->a:Ljf/h;

    iget-object v0, v0, Ljf/h;->e:Landroid/widget/TextView;

    new-instance v1, Ly8/a;

    invoke-direct {v1, p0, p1, p3}, Ly8/a;-><init>(Ly8/d;Lb9/a;I)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Ly8/d;->a:Ljf/h;

    iget-object v0, v0, Ljf/h;->h:Landroid/widget/TextView;

    new-instance v1, Ly8/b;

    invoke-direct {v1, p0, p1, p3}, Ly8/b;-><init>(Ly8/d;Lb9/a;I)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Ly8/d;->a:Ljf/h;

    iget-object v0, v0, Ljf/h;->g:Landroid/widget/TextView;

    new-instance v1, Ly8/c;

    invoke-direct {v1, p0, p1, p3}, Ly8/c;-><init>(Ly8/d;Lb9/a;I)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object p3, p0, Ly8/d;->a:Ljf/h;

    iget-object p3, p3, Ljf/h;->m:Landroid/widget/TextView;

    invoke-virtual {p1}, Lb9/a;->C()Z

    move-result v0

    if-eqz v0, :cond_2

    move v2, v3

    :cond_2
    invoke-virtual {p3, v2}, Landroid/view/View;->setVisibility(I)V

    iget-object p3, p0, Ly8/d;->a:Ljf/h;

    iget-object p3, p3, Ljf/h;->m:Landroid/widget/TextView;

    invoke-virtual {p1}, Lb9/a;->z()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object p3, p0, Ly8/d;->a:Ljf/h;

    iget-object p3, p3, Ljf/h;->k:Landroid/widget/TextView;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "context"

    invoke-static {v0, v1}, Lbk/m;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1, v0}, Lb9/c;->e(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object p3, p0, Ly8/d;->a:Ljf/h;

    iget-object p3, p3, Ljf/h;->j:Landroid/widget/TextView;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f1200cc

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {p1}, Lb9/c;->r()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object p3, p0, Ly8/d;->a:Ljf/h;

    iget-object p3, p3, Ljf/h;->g:Landroid/widget/TextView;

    invoke-virtual {p1}, Lb9/c;->m()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object p3, p0, Ly8/d;->a:Ljf/h;

    iget-object p3, p3, Ljf/h;->i:Landroid/widget/TextView;

    invoke-virtual {p1}, Lb9/c;->q()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object p3, p0, Ly8/d;->a:Ljf/h;

    iget-object p3, p3, Ljf/h;->h:Landroid/widget/TextView;

    invoke-virtual {p1}, Lb9/c;->o()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object p3, p0, Ly8/d;->a:Ljf/h;

    iget-object p3, p3, Ljf/h;->e:Landroid/widget/TextView;

    invoke-virtual {p1}, Lb9/c;->l()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {p1}, Lb9/c;->b()Ljava/lang/String;

    move-result-object p1

    iget-object p3, p0, Ly8/d;->a:Ljf/h;

    iget-object p3, p3, Ljf/h;->b:Lcom/miui/common/widgets/gif/GifImageView;

    invoke-static {p1, p3, p2}, Lx4/o0;->j(Ljava/lang/String;Landroid/widget/ImageView;Lrh/c;)V

    return-void
.end method

.method public final getBinding()Ljf/h;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object v0, p0, Ly8/d;->a:Ljf/h;

    return-object v0
.end method

.method public final setBinding(Ljf/h;)V
    .locals 1
    .param p1    # Ljf/h;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lbk/m;->e(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Ly8/d;->a:Ljf/h;

    return-void
.end method
