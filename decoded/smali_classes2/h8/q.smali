.class public Lh8/q;
.super Lh8/i;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lh8/q$a;
    }
.end annotation


# instance fields
.field private g:I


# direct methods
.method public constructor <init>(Ljava/lang/String;Lg8/b;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lh8/i;-><init>(Ljava/lang/String;Lg8/b;)V

    invoke-static {}, Lj8/p;->d()Z

    move-result p1

    xor-int/lit8 p1, p1, 0x1

    iput p1, p0, Lh8/q;->g:I

    return-void
.end method

.method public static synthetic t(Lh8/q;Ld8/m$b;Landroid/widget/RadioGroup;I)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lh8/q;->x(Ld8/m$b;Landroid/widget/RadioGroup;I)V

    return-void
.end method

.method public static synthetic u(Ld8/m$b;Landroid/view/View;)V
    .locals 0

    invoke-static {p0, p1}, Lh8/q;->y(Ld8/m$b;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic v(Ld8/m$b;Landroid/view/View;)V
    .locals 0

    invoke-static {p0, p1}, Lh8/q;->z(Ld8/m$b;Landroid/view/View;)V

    return-void
.end method

.method public static w()Z
    .locals 2

    invoke-static {}, Lh8/i;->m()Ljava/lang/String;

    move-result-object v0

    const-string v1, "zh"

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    return v0
.end method

.method private synthetic x(Ld8/m$b;Landroid/widget/RadioGroup;I)V
    .locals 4

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "mode tab change "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const-string v0, "VBFunctionGroupTheatre"

    invoke-static {v0, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/16 p2, 0x8

    const/4 v1, 0x0

    const v2, 0x7f0b02cb

    if-ne p3, v2, :cond_0

    const/4 v2, 0x1

    iput v2, p0, Lh8/q;->g:I

    iget-object v2, p1, Ld8/m$b;->l:Landroid/view/View;

    invoke-virtual {v2, p2}, Landroid/view/View;->setVisibility(I)V

    iget-object v2, p1, Ld8/m$b;->d:Landroid/widget/FrameLayout;

    invoke-virtual {v2, v1}, Landroid/view/View;->setVisibility(I)V

    iget-object v2, p1, Ld8/m$b;->b:Landroidx/viewpager/widget/ViewPager;

    invoke-virtual {v2}, Landroidx/viewpager/widget/ViewPager;->getAdapter()Landroidx/viewpager/widget/a;

    move-result-object v2

    instance-of v3, v2, Ld8/f;

    if-eqz v3, :cond_0

    const-string v3, "update CUSTOM MODE"

    invoke-static {v0, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    check-cast v2, Ld8/f;

    invoke-virtual {v2}, Ld8/f;->d()V

    :cond_0
    const v0, 0x7f0b0bb7

    if-ne p3, v0, :cond_3

    iput v1, p0, Lh8/q;->g:I

    iget-object p3, p1, Ld8/m$b;->l:Landroid/view/View;

    invoke-virtual {p3, v1}, Landroid/view/View;->setVisibility(I)V

    iget-object p3, p1, Ld8/m$b;->d:Landroid/widget/FrameLayout;

    invoke-virtual {p3, p2}, Landroid/view/View;->setVisibility(I)V

    invoke-static {}, Li8/c;->z()Z

    move-result p3

    iget-object v0, p1, Ld8/m$b;->n:Landroid/widget/TextView;

    if-eqz p3, :cond_1

    move v2, v1

    goto :goto_0

    :cond_1
    move v2, p2

    :goto_0
    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    iget-object p1, p1, Ld8/m$b;->m:Landroid/widget/TextView;

    if-eqz p3, :cond_2

    goto :goto_1

    :cond_2
    move p2, v1

    :goto_1
    invoke-virtual {p1, p2}, Landroid/view/View;->setVisibility(I)V

    :cond_3
    return-void
.end method

.method private static synthetic y(Ld8/m$b;Landroid/view/View;)V
    .locals 3

    invoke-static {}, Lj8/p;->q()V

    const/4 v0, 0x1

    invoke-static {v0}, Li8/c;->A0(Z)V

    const/4 v1, 0x0

    invoke-static {v1}, Li8/c;->q0(Z)V

    const/16 v2, 0x8

    invoke-virtual {p1, v2}, Landroid/view/View;->setVisibility(I)V

    iget-object p0, p0, Ld8/m$b;->n:Landroid/widget/TextView;

    invoke-virtual {p0, v1}, Landroid/view/View;->setVisibility(I)V

    invoke-static {v0}, Lcom/miui/gamebooster/utils/a$o;->f(Z)V

    return-void
.end method

.method private static synthetic z(Ld8/m$b;Landroid/view/View;)V
    .locals 2

    const/16 v0, 0x3ea

    invoke-static {v0}, Lj8/p;->l(I)V

    const/4 v0, 0x0

    invoke-static {v0}, Li8/c;->A0(Z)V

    const/16 v1, 0x8

    invoke-virtual {p1, v1}, Landroid/view/View;->setVisibility(I)V

    iget-object p0, p0, Ld8/m$b;->m:Landroid/widget/TextView;

    invoke-virtual {p0, v0}, Landroid/view/View;->setVisibility(I)V

    invoke-static {v0}, Lcom/miui/gamebooster/utils/a$o;->f(Z)V

    return-void
.end method


# virtual methods
.method public k(ILandroid/view/View;Lh8/b$a;)V
    .locals 16

    move-object/from16 v0, p0

    if-eqz p2, :cond_7

    invoke-virtual/range {p2 .. p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    if-nez v1, :cond_0

    goto/16 :goto_5

    :cond_0
    invoke-virtual/range {p2 .. p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ld8/m$b;

    iget-object v2, v1, Ld8/m$b;->i:Landroid/widget/RadioGroup;

    if-eqz v2, :cond_6

    iget-object v2, v1, Ld8/m$b;->j:Landroid/widget/RadioButton;

    if-eqz v2, :cond_6

    iget-object v2, v1, Ld8/m$b;->k:Landroid/widget/RadioButton;

    if-eqz v2, :cond_6

    iget-object v2, v1, Ld8/m$b;->l:Landroid/view/View;

    if-eqz v2, :cond_6

    iget-object v2, v1, Ld8/m$b;->d:Landroid/widget/FrameLayout;

    if-nez v2, :cond_1

    goto/16 :goto_4

    :cond_1
    invoke-super/range {p0 .. p3}, Lh8/i;->k(ILandroid/view/View;Lh8/b$a;)V

    iget v2, v0, Lh8/q;->g:I

    const/16 v3, 0x8

    const/4 v4, 0x1

    const/4 v5, 0x0

    if-nez v2, :cond_4

    iget-object v2, v1, Ld8/m$b;->j:Landroid/widget/RadioButton;

    invoke-virtual {v2, v4}, Landroid/widget/CompoundButton;->setChecked(Z)V

    iget-object v2, v1, Ld8/m$b;->l:Landroid/view/View;

    invoke-virtual {v2, v5}, Landroid/view/View;->setVisibility(I)V

    iget-object v2, v1, Ld8/m$b;->d:Landroid/widget/FrameLayout;

    invoke-virtual {v2, v3}, Landroid/view/View;->setVisibility(I)V

    invoke-static {}, Li8/c;->z()Z

    move-result v2

    iget-object v6, v1, Ld8/m$b;->n:Landroid/widget/TextView;

    if-eqz v2, :cond_2

    move v7, v5

    goto :goto_0

    :cond_2
    move v7, v3

    :goto_0
    invoke-virtual {v6, v7}, Landroid/view/View;->setVisibility(I)V

    iget-object v6, v1, Ld8/m$b;->m:Landroid/widget/TextView;

    if-eqz v2, :cond_3

    goto :goto_1

    :cond_3
    move v3, v5

    :goto_1
    invoke-virtual {v6, v3}, Landroid/view/View;->setVisibility(I)V

    goto :goto_2

    :cond_4
    iget-object v2, v1, Ld8/m$b;->k:Landroid/widget/RadioButton;

    invoke-virtual {v2, v4}, Landroid/widget/CompoundButton;->setChecked(Z)V

    iget-object v2, v1, Ld8/m$b;->l:Landroid/view/View;

    invoke-virtual {v2, v3}, Landroid/view/View;->setVisibility(I)V

    iget-object v2, v1, Ld8/m$b;->d:Landroid/widget/FrameLayout;

    invoke-virtual {v2, v5}, Landroid/view/View;->setVisibility(I)V

    :goto_2
    invoke-virtual/range {p2 .. p2}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f121b3c

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    iget-object v3, v1, Ld8/m$b;->l:Landroid/view/View;

    const v6, 0x7f0b0bb9

    invoke-virtual {v3, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    invoke-virtual/range {p2 .. p2}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f0706af

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v6

    invoke-static {}, Lh8/q;->w()Z

    move-result v7

    xor-int/2addr v7, v4

    invoke-virtual {v3, v7}, Landroid/widget/TextView;->setSingleLine(Z)V

    new-instance v7, Landroid/text/SpannableString;

    invoke-direct {v7, v2}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    new-instance v15, Landroid/graphics/LinearGradient;

    const/4 v9, 0x0

    const/4 v10, 0x0

    int-to-float v11, v6

    const/4 v12, 0x0

    const/4 v6, 0x3

    new-array v13, v6, [I

    invoke-virtual/range {p2 .. p2}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    const v14, 0x7f060e6a

    invoke-virtual {v8, v14}, Landroid/content/res/Resources;->getColor(I)I

    move-result v8

    aput v8, v13, v5

    invoke-virtual/range {p2 .. p2}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    const v14, 0x7f060e39

    invoke-virtual {v8, v14}, Landroid/content/res/Resources;->getColor(I)I

    move-result v8

    aput v8, v13, v4

    const/4 v4, 0x2

    invoke-virtual/range {p2 .. p2}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    const v14, 0x7f060e38

    invoke-virtual {v8, v14}, Landroid/content/res/Resources;->getColor(I)I

    move-result v8

    aput v8, v13, v4

    new-array v14, v6, [F

    fill-array-data v14, :array_0

    sget-object v4, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    move-object v8, v15

    move-object v6, v15

    move-object v15, v4

    invoke-direct/range {v8 .. v15}, Landroid/graphics/LinearGradient;-><init>(FFFF[I[FLandroid/graphics/Shader$TileMode;)V

    invoke-static {}, Lh8/q;->w()Z

    move-result v4

    const/16 v8, 0x21

    if-eqz v4, :cond_5

    new-instance v4, Lh8/q$a;

    invoke-direct {v4, v6}, Lh8/q$a;-><init>(Landroid/graphics/Shader;)V

    const/16 v9, 0xc

    invoke-virtual {v7, v4, v5, v9, v8}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    new-instance v4, Lh8/q$a;

    invoke-direct {v4, v6}, Lh8/q$a;-><init>(Landroid/graphics/Shader;)V

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    invoke-virtual {v7, v4, v9, v2, v8}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    goto :goto_3

    :cond_5
    new-instance v4, Lh8/q$a;

    invoke-direct {v4, v6}, Lh8/q$a;-><init>(Landroid/graphics/Shader;)V

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    invoke-virtual {v7, v4, v5, v2, v8}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    :goto_3
    invoke-virtual {v3, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v2, v1, Ld8/m$b;->i:Landroid/widget/RadioGroup;

    new-instance v3, Lh8/n;

    invoke-direct {v3, v0, v1}, Lh8/n;-><init>(Lh8/q;Ld8/m$b;)V

    invoke-virtual {v2, v3}, Landroid/widget/RadioGroup;->setOnCheckedChangeListener(Landroid/widget/RadioGroup$OnCheckedChangeListener;)V

    iget-object v2, v1, Ld8/m$b;->m:Landroid/widget/TextView;

    new-instance v3, Lh8/o;

    invoke-direct {v3, v1}, Lh8/o;-><init>(Ld8/m$b;)V

    invoke-virtual {v2, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v2, v1, Ld8/m$b;->n:Landroid/widget/TextView;

    new-instance v3, Lh8/p;

    invoke-direct {v3, v1}, Lh8/p;-><init>(Ld8/m$b;)V

    invoke-virtual {v2, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void

    :cond_6
    :goto_4
    const-string v1, "VBFunctionGroupTheatre"

    const-string v2, "NULL POINTER"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_7
    :goto_5
    return-void

    :array_0
    .array-data 4
        0x0
        0x3e99999a    # 0.3f
        0x3f19999a    # 0.6f
    .end array-data
.end method

.method public n()I
    .locals 1

    const v0, 0x7f0e052e

    return v0
.end method
