.class public Lcom/miui/gamebooster/shoulderkey/ShoulderKeyLightEffectActivity;
.super Lcom/miui/gamebooster/ui/EntertainmentBaseActivity;
.source "SourceFile"

# interfaces
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# instance fields
.field private c:Lmiuix/slidingwidget/widget/SlidingButton;

.field private d:Landroid/view/View;

.field private e:Landroid/view/ViewGroup;

.field private f:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lq7/a;",
            ">;"
        }
    .end annotation
.end field

.field private g:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/miui/gamebooster/ui/EntertainmentBaseActivity;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/miui/gamebooster/shoulderkey/ShoulderKeyLightEffectActivity;->f:Ljava/util/List;

    return-void
.end method

.method static synthetic f0(Lcom/miui/gamebooster/shoulderkey/ShoulderKeyLightEffectActivity;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/miui/gamebooster/shoulderkey/ShoulderKeyLightEffectActivity;->g:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic g0(Lcom/miui/gamebooster/shoulderkey/ShoulderKeyLightEffectActivity;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    iput-object p1, p0, Lcom/miui/gamebooster/shoulderkey/ShoulderKeyLightEffectActivity;->g:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic h0(Lcom/miui/gamebooster/shoulderkey/ShoulderKeyLightEffectActivity;)V
    .locals 0

    invoke-direct {p0}, Lcom/miui/gamebooster/shoulderkey/ShoulderKeyLightEffectActivity;->o0()V

    return-void
.end method

.method private i0(Lq7/a;Z)V
    .locals 3

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f071d43

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v0

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v1

    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v2, v0, v1}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    new-instance v0, Landroid/widget/ImageButton;

    invoke-direct {v0, p0}, Landroid/widget/ImageButton;-><init>(Landroid/content/Context;)V

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    invoke-virtual {v0, p1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    new-instance v1, Lcom/miui/gamebooster/shoulderkey/ShoulderKeyLightEffectActivity$a;

    invoke-direct {v1, p0, p1}, Lcom/miui/gamebooster/shoulderkey/ShoulderKeyLightEffectActivity$a;-><init>(Lcom/miui/gamebooster/shoulderkey/ShoulderKeyLightEffectActivity;Lq7/a;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object p1, p0, Lcom/miui/gamebooster/shoulderkey/ShoulderKeyLightEffectActivity;->e:Landroid/view/ViewGroup;

    invoke-virtual {p1, v0, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    if-nez p2, :cond_0

    invoke-direct {p0}, Lcom/miui/gamebooster/shoulderkey/ShoulderKeyLightEffectActivity;->j0()V

    :cond_0
    invoke-direct {p0, v0}, Lcom/miui/gamebooster/shoulderkey/ShoulderKeyLightEffectActivity;->n0(Landroid/view/View;)V

    return-void
.end method

.method private j0()V
    .locals 3

    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v1, 0x0

    invoke-direct {v0, v1, v1}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    const/high16 v1, 0x3f800000    # 1.0f

    iput v1, v0, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    new-instance v1, Landroid/view/View;

    invoke-direct {v1, p0}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    iget-object v2, p0, Lcom/miui/gamebooster/shoulderkey/ShoulderKeyLightEffectActivity;->e:Landroid/view/ViewGroup;

    invoke-virtual {v2, v1, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method private k0()V
    .locals 5

    invoke-static {}, Lp7/d;->b()Lp7/d;

    move-result-object v0

    invoke-virtual {v0}, Lp7/d;->h()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/miui/gamebooster/shoulderkey/ShoulderKeyLightEffectActivity;->f:Ljava/util/List;

    invoke-static {v0}, Lc7/c;->n(Ljava/util/Collection;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_2

    :cond_0
    const/4 v0, 0x0

    move v1, v0

    :goto_0
    iget-object v2, p0, Lcom/miui/gamebooster/shoulderkey/ShoulderKeyLightEffectActivity;->f:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_2

    iget-object v2, p0, Lcom/miui/gamebooster/shoulderkey/ShoulderKeyLightEffectActivity;->f:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lq7/a;

    iget-object v3, p0, Lcom/miui/gamebooster/shoulderkey/ShoulderKeyLightEffectActivity;->f:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    const/4 v4, 0x1

    sub-int/2addr v3, v4

    if-ne v1, v3, :cond_1

    goto :goto_1

    :cond_1
    move v4, v0

    :goto_1
    invoke-direct {p0, v2, v4}, Lcom/miui/gamebooster/shoulderkey/ShoulderKeyLightEffectActivity;->i0(Lq7/a;Z)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    :goto_2
    return-void
.end method

.method private l0(Lq7/a;)Landroid/graphics/drawable/LayerDrawable;
    .locals 10

    new-instance v0, Landroid/graphics/drawable/GradientDrawable;

    invoke-direct {v0}, Landroid/graphics/drawable/GradientDrawable;-><init>()V

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/GradientDrawable;->setShape(I)V

    invoke-virtual {p1}, Lq7/a;->a()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/graphics/drawable/GradientDrawable;->setColor(I)V

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f071d43

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v2

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4, v3}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v3

    invoke-virtual {v0, v2, v3}, Landroid/graphics/drawable/GradientDrawable;->setSize(II)V

    new-instance v2, Landroid/graphics/drawable/GradientDrawable;

    invoke-direct {v2}, Landroid/graphics/drawable/GradientDrawable;-><init>()V

    invoke-virtual {v2, v1}, Landroid/graphics/drawable/GradientDrawable;->setShape(I)V

    const/high16 v3, -0x1000000

    invoke-virtual {v2, v3}, Landroid/graphics/drawable/GradientDrawable;->setColor(I)V

    new-instance v3, Landroid/graphics/drawable/GradientDrawable;

    invoke-direct {v3}, Landroid/graphics/drawable/GradientDrawable;-><init>()V

    invoke-virtual {v3, v1}, Landroid/graphics/drawable/GradientDrawable;->setShape(I)V

    invoke-virtual {p1}, Lq7/a;->a()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result p1

    invoke-virtual {v3, p1}, Landroid/graphics/drawable/GradientDrawable;->setColor(I)V

    const/4 p1, 0x3

    new-array p1, p1, [Landroid/graphics/drawable/Drawable;

    const/4 v4, 0x0

    aput-object v0, p1, v4

    aput-object v2, p1, v1

    const/4 v0, 0x2

    aput-object v3, p1, v0

    new-instance v0, Landroid/graphics/drawable/LayerDrawable;

    invoke-direct {v0, p1}, Landroid/graphics/drawable/LayerDrawable;-><init>([Landroid/graphics/drawable/Drawable;)V

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v1, 0x7f071e77

    invoke-virtual {p1, v1}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v9

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v1, 0x7f071d65

    invoke-virtual {p1, v1}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result p1

    const/4 v5, 0x1

    move-object v4, v0

    move v6, v9

    move v7, v9

    move v8, v9

    invoke-virtual/range {v4 .. v9}, Landroid/graphics/drawable/LayerDrawable;->setLayerInset(IIIII)V

    const/4 v5, 0x2

    move v6, p1

    move v7, p1

    move v8, p1

    move v9, p1

    invoke-virtual/range {v4 .. v9}, Landroid/graphics/drawable/LayerDrawable;->setLayerInset(IIIII)V

    return-object v0
.end method

.method private m0(Lq7/a;)Landroid/graphics/drawable/StateListDrawable;
    .locals 6

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return-object p1

    :cond_0
    invoke-direct {p0, p1}, Lcom/miui/gamebooster/shoulderkey/ShoulderKeyLightEffectActivity;->l0(Lq7/a;)Landroid/graphics/drawable/LayerDrawable;

    move-result-object v0

    new-instance v1, Landroid/graphics/drawable/GradientDrawable;

    invoke-direct {v1}, Landroid/graphics/drawable/GradientDrawable;-><init>()V

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/graphics/drawable/GradientDrawable;->setShape(I)V

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f071e78

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v3

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v5, v4}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v4

    invoke-virtual {v1, v3, v4}, Landroid/graphics/drawable/GradientDrawable;->setSize(II)V

    invoke-virtual {p1}, Lq7/a;->a()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result p1

    invoke-virtual {v1, p1}, Landroid/graphics/drawable/GradientDrawable;->setColor(I)V

    new-instance p1, Landroid/graphics/drawable/StateListDrawable;

    invoke-direct {p1}, Landroid/graphics/drawable/StateListDrawable;-><init>()V

    new-array v3, v2, [I

    const v4, 0x10100a1

    const/4 v5, 0x0

    aput v4, v3, v5

    invoke-virtual {p1, v3, v0}, Landroid/graphics/drawable/StateListDrawable;->addState([ILandroid/graphics/drawable/Drawable;)V

    new-array v0, v2, [I

    const v2, -0x10100a1

    aput v2, v0, v5

    invoke-virtual {p1, v0, v1}, Landroid/graphics/drawable/StateListDrawable;->addState([ILandroid/graphics/drawable/Drawable;)V

    return-object p1
.end method

.method private n0(Landroid/view/View;)V
    .locals 3

    instance-of v0, p1, Landroid/widget/ImageButton;

    if-eqz v0, :cond_0

    check-cast p1, Landroid/widget/ImageButton;

    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lq7/a;

    iget-object v1, p0, Lcom/miui/gamebooster/shoulderkey/ShoulderKeyLightEffectActivity;->g:Ljava/lang/String;

    invoke-virtual {v0}, Lq7/a;->a()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    invoke-virtual {p1, v1}, Landroid/view/View;->setSelected(Z)V

    invoke-virtual {p1}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    if-nez v1, :cond_0

    invoke-direct {p0, v0}, Lcom/miui/gamebooster/shoulderkey/ShoulderKeyLightEffectActivity;->m0(Lq7/a;)Landroid/graphics/drawable/StateListDrawable;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    :cond_0
    return-void
.end method

.method private o0()V
    .locals 4

    iget-object v0, p0, Lcom/miui/gamebooster/shoulderkey/ShoulderKeyLightEffectActivity;->e:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    if-gtz v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/miui/gamebooster/shoulderkey/ShoulderKeyLightEffectActivity;->e:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_2

    iget-object v2, p0, Lcom/miui/gamebooster/shoulderkey/ShoulderKeyLightEffectActivity;->e:Landroid/view/ViewGroup;

    invoke-virtual {v2, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    instance-of v3, v2, Landroid/widget/ImageButton;

    if-eqz v3, :cond_1

    invoke-direct {p0, v2}, Lcom/miui/gamebooster/shoulderkey/ShoulderKeyLightEffectActivity;->n0(Landroid/view/View;)V

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    return-void
.end method


# virtual methods
.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 3

    invoke-static {}, Lp7/d;->b()Lp7/d;

    move-result-object p1

    invoke-virtual {p1, p2}, Lp7/d;->m(Z)V

    iget-object p1, p0, Lcom/miui/gamebooster/shoulderkey/ShoulderKeyLightEffectActivity;->d:Landroid/view/View;

    const/16 v0, 0x8

    const/4 v1, 0x0

    if-eqz p2, :cond_0

    move v2, v1

    goto :goto_0

    :cond_0
    move v2, v0

    :goto_0
    invoke-virtual {p1, v2}, Landroid/view/View;->setVisibility(I)V

    iget-object p1, p0, Lcom/miui/gamebooster/shoulderkey/ShoulderKeyLightEffectActivity;->e:Landroid/view/ViewGroup;

    if-eqz p2, :cond_1

    move v0, v1

    :cond_1
    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    if-eqz p2, :cond_3

    iget-object p1, p0, Lcom/miui/gamebooster/shoulderkey/ShoulderKeyLightEffectActivity;->e:Landroid/view/ViewGroup;

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result p1

    if-gtz p1, :cond_2

    invoke-direct {p0}, Lcom/miui/gamebooster/shoulderkey/ShoulderKeyLightEffectActivity;->k0()V

    :cond_2
    invoke-static {}, Lp7/b;->f()Lp7/b;

    move-result-object p1

    iget-object p2, p0, Lcom/miui/gamebooster/shoulderkey/ShoulderKeyLightEffectActivity;->g:Ljava/lang/String;

    invoke-virtual {p1, v1, p2}, Lp7/b;->c(ILjava/lang/String;)V

    goto :goto_1

    :cond_3
    invoke-static {}, Lp7/b;->f()Lp7/b;

    move-result-object p1

    invoke-virtual {p1}, Lp7/b;->m()V

    :goto_1
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 4

    invoke-super {p0, p1}, Lcom/miui/gamebooster/ui/EntertainmentBaseActivity;->onCreate(Landroid/os/Bundle;)V

    const p1, 0x7f0e0048

    invoke-virtual {p0, p1}, Lcom/miui/common/base/BaseActivity;->setContentView(I)V

    invoke-virtual {p0}, Lmiuix/appcompat/app/AppCompatActivity;->getAppCompatActionBar()Lmiuix/appcompat/app/ActionBar;

    move-result-object p1

    if-eqz p1, :cond_0

    const v0, 0x7f120ab8

    invoke-virtual {p1, v0}, Landroidx/appcompat/app/ActionBar;->setSubtitle(I)V

    :cond_0
    const p1, 0x7f0b06c0

    invoke-virtual {p0, p1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lmiuix/slidingwidget/widget/SlidingButton;

    iput-object p1, p0, Lcom/miui/gamebooster/shoulderkey/ShoulderKeyLightEffectActivity;->c:Lmiuix/slidingwidget/widget/SlidingButton;

    invoke-static {}, Lp7/d;->b()Lp7/d;

    move-result-object v0

    invoke-virtual {v0}, Lp7/d;->h()Z

    move-result v0

    invoke-virtual {p1, v0}, Lmiuix/slidingwidget/widget/SlidingButton;->setChecked(Z)V

    iget-object p1, p0, Lcom/miui/gamebooster/shoulderkey/ShoulderKeyLightEffectActivity;->c:Lmiuix/slidingwidget/widget/SlidingButton;

    invoke-virtual {p1, p0}, Landroid/widget/CompoundButton;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    const p1, 0x7f0b0d84

    invoke-virtual {p0, p1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/miui/gamebooster/shoulderkey/ShoulderKeyLightEffectActivity;->d:Landroid/view/View;

    const p1, 0x7f0b0265

    invoke-virtual {p0, p1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/view/ViewGroup;

    iput-object p1, p0, Lcom/miui/gamebooster/shoulderkey/ShoulderKeyLightEffectActivity;->e:Landroid/view/ViewGroup;

    invoke-static {}, Lp7/d;->b()Lp7/d;

    move-result-object p1

    const-string v0, "#FF6C69"

    invoke-virtual {p1, v0}, Lp7/d;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/miui/gamebooster/shoulderkey/ShoulderKeyLightEffectActivity;->g:Ljava/lang/String;

    iget-object p1, p0, Lcom/miui/gamebooster/shoulderkey/ShoulderKeyLightEffectActivity;->f:Ljava/util/List;

    invoke-static {}, Lp7/b;->f()Lp7/b;

    move-result-object v0

    invoke-virtual {v0}, Lp7/b;->l()Ljava/util/List;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    invoke-static {}, Lp7/d;->b()Lp7/d;

    move-result-object p1

    invoke-virtual {p1}, Lp7/d;->h()Z

    move-result p1

    iget-object v0, p0, Lcom/miui/gamebooster/shoulderkey/ShoulderKeyLightEffectActivity;->d:Landroid/view/View;

    const/4 v1, 0x0

    const/16 v2, 0x8

    if-eqz p1, :cond_1

    move v3, v1

    goto :goto_0

    :cond_1
    move v3, v2

    :goto_0
    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/miui/gamebooster/shoulderkey/ShoulderKeyLightEffectActivity;->e:Landroid/view/ViewGroup;

    if-eqz p1, :cond_2

    goto :goto_1

    :cond_2
    move v1, v2

    :goto_1
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    invoke-direct {p0}, Lcom/miui/gamebooster/shoulderkey/ShoulderKeyLightEffectActivity;->k0()V

    return-void
.end method

.method protected onDestroy()V
    .locals 1

    invoke-super {p0}, Lcom/miui/gamebooster/ui/EntertainmentBaseActivity;->onDestroy()V

    invoke-static {}, Lp7/b;->f()Lp7/b;

    move-result-object v0

    invoke-virtual {v0}, Lp7/b;->m()V

    return-void
.end method

.method protected onResume()V
    .locals 3

    invoke-super {p0}, Landroidx/fragment/app/FragmentActivity;->onResume()V

    invoke-static {}, Lp7/d;->b()Lp7/d;

    move-result-object v0

    invoke-virtual {v0}, Lp7/d;->h()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lp7/b;->f()Lp7/b;

    move-result-object v0

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/miui/gamebooster/shoulderkey/ShoulderKeyLightEffectActivity;->g:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lp7/b;->c(ILjava/lang/String;)V

    :cond_0
    return-void
.end method

.method protected onStop()V
    .locals 1

    invoke-super {p0}, Lmiuix/appcompat/app/AppCompatActivity;->onStop()V

    invoke-static {}, Lp7/b;->f()Lp7/b;

    move-result-object v0

    invoke-virtual {v0}, Lp7/b;->j()V

    return-void
.end method
