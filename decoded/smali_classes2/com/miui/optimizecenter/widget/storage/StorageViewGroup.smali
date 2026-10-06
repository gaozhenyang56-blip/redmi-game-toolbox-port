.class public Lcom/miui/optimizecenter/widget/storage/StorageViewGroup;
.super Landroid/widget/LinearLayout;
.source "SourceFile"

# interfaces
.implements Lcom/miui/optimizecenter/widget/storage/StorageColumnView$b;
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/optimizecenter/widget/storage/StorageViewGroup$c;,
        Lcom/miui/optimizecenter/widget/storage/StorageViewGroup$b;,
        Lcom/miui/optimizecenter/widget/storage/StorageViewGroup$a;
    }
.end annotation


# static fields
.field public static final o:[Lcom/miui/optimizecenter/widget/storage/a;


# instance fields
.field private a:Lra/k0;

.field private b:Lcom/miui/optimizecenter/widget/storage/StorageColumnView;

.field private c:Landroid/graphics/Path;

.field private d:Landroid/graphics/Path;

.field private e:Landroid/graphics/Paint;

.field private f:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Lcom/miui/optimizecenter/widget/storage/a;",
            "Lcom/miui/optimizecenter/widget/storage/StorageViewGroup$c;",
            ">;"
        }
    .end annotation
.end field

.field private g:Landroid/widget/LinearLayout;

.field private h:Leb/a;

.field private i:I

.field private j:I

.field private k:Landroid/animation/ValueAnimator;

.field private l:Landroid/animation/ValueAnimator;

.field private m:Lcom/miui/optimizecenter/widget/storage/a;

.field private final n:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lcom/miui/optimizecenter/widget/storage/a;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const/16 v0, 0x8

    new-array v0, v0, [Lcom/miui/optimizecenter/widget/storage/a;

    sget-object v1, Lcom/miui/optimizecenter/widget/storage/a;->o:Lcom/miui/optimizecenter/widget/storage/a;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    sget-object v1, Lcom/miui/optimizecenter/widget/storage/a;->n:Lcom/miui/optimizecenter/widget/storage/a;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    sget-object v1, Lcom/miui/optimizecenter/widget/storage/a;->m:Lcom/miui/optimizecenter/widget/storage/a;

    const/4 v2, 0x2

    aput-object v1, v0, v2

    sget-object v1, Lcom/miui/optimizecenter/widget/storage/a;->l:Lcom/miui/optimizecenter/widget/storage/a;

    const/4 v2, 0x3

    aput-object v1, v0, v2

    sget-object v1, Lcom/miui/optimizecenter/widget/storage/a;->k:Lcom/miui/optimizecenter/widget/storage/a;

    const/4 v2, 0x4

    aput-object v1, v0, v2

    sget-object v1, Lcom/miui/optimizecenter/widget/storage/a;->j:Lcom/miui/optimizecenter/widget/storage/a;

    const/4 v2, 0x5

    aput-object v1, v0, v2

    sget-object v1, Lcom/miui/optimizecenter/widget/storage/a;->i:Lcom/miui/optimizecenter/widget/storage/a;

    const/4 v2, 0x6

    aput-object v1, v0, v2

    sget-object v1, Lcom/miui/optimizecenter/widget/storage/a;->h:Lcom/miui/optimizecenter/widget/storage/a;

    const/4 v2, 0x7

    aput-object v1, v0, v2

    sput-object v0, Lcom/miui/optimizecenter/widget/storage/StorageViewGroup;->o:[Lcom/miui/optimizecenter/widget/storage/a;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroid/util/AttributeSet;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/miui/optimizecenter/widget/storage/StorageViewGroup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .param p1    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroid/util/AttributeSet;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    invoke-direct {p0, p1, p2, p3}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    sget-object p2, Lra/k0;->e:Lra/k0;

    iput-object p2, p0, Lcom/miui/optimizecenter/widget/storage/StorageViewGroup;->a:Lra/k0;

    new-instance p2, Landroid/graphics/Path;

    invoke-direct {p2}, Landroid/graphics/Path;-><init>()V

    iput-object p2, p0, Lcom/miui/optimizecenter/widget/storage/StorageViewGroup;->c:Landroid/graphics/Path;

    new-instance p2, Landroid/graphics/Path;

    invoke-direct {p2}, Landroid/graphics/Path;-><init>()V

    iput-object p2, p0, Lcom/miui/optimizecenter/widget/storage/StorageViewGroup;->d:Landroid/graphics/Path;

    new-instance p2, Ljava/util/HashMap;

    invoke-direct {p2}, Ljava/util/HashMap;-><init>()V

    iput-object p2, p0, Lcom/miui/optimizecenter/widget/storage/StorageViewGroup;->f:Ljava/util/HashMap;

    const/4 p2, 0x5

    iput p2, p0, Lcom/miui/optimizecenter/widget/storage/StorageViewGroup;->i:I

    const/16 p2, 0x46

    iput p2, p0, Lcom/miui/optimizecenter/widget/storage/StorageViewGroup;->j:I

    new-instance p2, Ljava/util/HashSet;

    invoke-direct {p2}, Ljava/util/HashSet;-><init>()V

    iput-object p2, p0, Lcom/miui/optimizecenter/widget/storage/StorageViewGroup;->n:Ljava/util/Set;

    new-instance p2, Landroid/graphics/Paint;

    const/4 p3, 0x1

    invoke-direct {p2, p3}, Landroid/graphics/Paint;-><init>(I)V

    iput-object p2, p0, Lcom/miui/optimizecenter/widget/storage/StorageViewGroup;->e:Landroid/graphics/Paint;

    iget v0, p0, Lcom/miui/optimizecenter/widget/storage/StorageViewGroup;->i:I

    int-to-float v0, v0

    invoke-virtual {p2, v0}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    iget-object p2, p0, Lcom/miui/optimizecenter/widget/storage/StorageViewGroup;->e:Landroid/graphics/Paint;

    sget-object v0, Landroid/graphics/Paint$Cap;->ROUND:Landroid/graphics/Paint$Cap;

    invoke-virtual {p2, v0}, Landroid/graphics/Paint;->setStrokeCap(Landroid/graphics/Paint$Cap;)V

    iget-object p2, p0, Lcom/miui/optimizecenter/widget/storage/StorageViewGroup;->e:Landroid/graphics/Paint;

    sget-object v0, Landroid/graphics/Paint$Join;->ROUND:Landroid/graphics/Paint$Join;

    invoke-virtual {p2, v0}, Landroid/graphics/Paint;->setStrokeJoin(Landroid/graphics/Paint$Join;)V

    iget-object p2, p0, Lcom/miui/optimizecenter/widget/storage/StorageViewGroup;->e:Landroid/graphics/Paint;

    sget-object v0, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {p2, v0}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    iget-object p2, p0, Lcom/miui/optimizecenter/widget/storage/StorageViewGroup;->e:Landroid/graphics/Paint;

    invoke-virtual {p2, p3}, Landroid/graphics/Paint;->setDither(Z)V

    const/4 p2, 0x0

    invoke-virtual {p0, p2}, Landroid/widget/LinearLayout;->setOrientation(I)V

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    const p3, 0x7f071bc3

    invoke-virtual {p2, p3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p2

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const p3, 0x7f071bbe

    invoke-virtual {p1, p3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    div-int/lit8 p1, p1, 0x2

    add-int/2addr p2, p1

    add-int/lit8 p2, p2, 0x2

    iput p2, p0, Lcom/miui/optimizecenter/widget/storage/StorageViewGroup;->j:I

    return-void
.end method

.method private c(Landroid/view/View;Landroid/view/View;)Landroid/graphics/Point;
    .locals 6

    const/4 v0, 0x2

    new-array v1, v0, [I

    invoke-virtual {p1, v1}, Landroid/view/View;->getLocationInWindow([I)V

    new-array v2, v0, [I

    invoke-virtual {p2, v2}, Landroid/view/View;->getLocationInWindow([I)V

    new-instance p2, Landroid/graphics/Point;

    const/4 v3, 0x0

    aget v4, v1, v3

    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v5

    div-int/2addr v5, v0

    add-int/2addr v4, v5

    aget v3, v2, v3

    sub-int/2addr v4, v3

    const/4 v3, 0x1

    aget v1, v1, v3

    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result p1

    div-int/2addr p1, v0

    add-int/2addr v1, p1

    aget p1, v2, v3

    sub-int/2addr v1, p1

    invoke-direct {p2, v4, v1}, Landroid/graphics/Point;-><init>(II)V

    return-object p2
.end method

.method private d()V
    .locals 12

    sget-object v0, Lcom/miui/optimizecenter/widget/storage/StorageViewGroup;->o:[Lcom/miui/optimizecenter/widget/storage/a;

    array-length v0, v0

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/miui/optimizecenter/widget/storage/StorageViewGroup;->g:Landroid/widget/LinearLayout;

    invoke-virtual {v2}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v2

    const/4 v3, 0x1

    sub-int/2addr v2, v3

    sub-int/2addr v0, v3

    :goto_0
    if-ltz v0, :cond_5

    sget-object v4, Lcom/miui/optimizecenter/widget/storage/StorageViewGroup;->o:[Lcom/miui/optimizecenter/widget/storage/a;

    aget-object v4, v4, v0

    iget-object v5, p0, Lcom/miui/optimizecenter/widget/storage/StorageViewGroup;->g:Landroid/widget/LinearLayout;

    sub-int v6, v2, v0

    invoke-virtual {v5, v6}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    new-instance v6, Lcom/miui/optimizecenter/widget/storage/StorageViewGroup$c;

    invoke-direct {v6, p0}, Lcom/miui/optimizecenter/widget/storage/StorageViewGroup$c;-><init>(Lcom/miui/optimizecenter/widget/storage/StorageViewGroup;)V

    iput-object v5, v6, Lcom/miui/optimizecenter/widget/storage/StorageViewGroup$c;->b:Landroid/view/View;

    const v7, 0x7f0b0d57

    invoke-virtual {v5, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    iput-object v7, v6, Lcom/miui/optimizecenter/widget/storage/StorageViewGroup$c;->c:Landroid/view/View;

    const v7, 0x7f0b05df

    invoke-virtual {v5, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/ImageView;

    iput-object v7, v6, Lcom/miui/optimizecenter/widget/storage/StorageViewGroup$c;->f:Landroid/widget/ImageView;

    const v7, 0x7f0b0cd2

    invoke-virtual {v5, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Lcom/miui/optimizecenter/widget/storage/SizeTextView;

    iput-object v7, v6, Lcom/miui/optimizecenter/widget/storage/StorageViewGroup$c;->e:Lcom/miui/optimizecenter/widget/storage/SizeTextView;

    const v7, 0x7f0b0cf3

    invoke-virtual {v5, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/TextView;

    iput-object v7, v6, Lcom/miui/optimizecenter/widget/storage/StorageViewGroup$c;->d:Landroid/widget/TextView;

    const v7, 0x7f0b0998

    invoke-virtual {v5, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    iput-object v7, v6, Lcom/miui/optimizecenter/widget/storage/StorageViewGroup$c;->h:Landroid/view/View;

    const v7, 0x7f0b09f2

    invoke-virtual {v5, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/ProgressBar;

    iput-object v7, v6, Lcom/miui/optimizecenter/widget/storage/StorageViewGroup$c;->g:Landroid/widget/ProgressBar;

    iput-object v4, v6, Lcom/miui/optimizecenter/widget/storage/StorageViewGroup$c;->a:Lcom/miui/optimizecenter/widget/storage/a;

    iget-object v7, v6, Lcom/miui/optimizecenter/widget/storage/StorageViewGroup$c;->b:Landroid/view/View;

    invoke-virtual {v7, v6}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    iget-object v7, v6, Lcom/miui/optimizecenter/widget/storage/StorageViewGroup$c;->b:Landroid/view/View;

    invoke-virtual {v7, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    sget-object v7, Lcom/miui/optimizecenter/widget/storage/a;->o:Lcom/miui/optimizecenter/widget/storage/a;

    if-eq v4, v7, :cond_0

    sget-object v7, Lcom/miui/optimizecenter/widget/storage/a;->n:Lcom/miui/optimizecenter/widget/storage/a;

    if-ne v4, v7, :cond_1

    :cond_0
    iget-object v7, v6, Lcom/miui/optimizecenter/widget/storage/StorageViewGroup$c;->f:Landroid/widget/ImageView;

    const/16 v8, 0x8

    invoke-virtual {v7, v8}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v7, v6, Lcom/miui/optimizecenter/widget/storage/StorageViewGroup$c;->b:Landroid/view/View;

    const/4 v8, 0x0

    invoke-virtual {v7, v8}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    iget-object v7, v6, Lcom/miui/optimizecenter/widget/storage/StorageViewGroup$c;->b:Landroid/view/View;

    invoke-virtual {v7, v8}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_1
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v8, 0x7f05000b

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v7

    if-eqz v7, :cond_2

    const/4 v7, -0x1

    goto :goto_1

    :cond_2
    const/high16 v7, -0x1000000

    :goto_1
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    const v9, 0x7f080fed

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v8

    invoke-virtual {v8, v3}, Landroid/graphics/drawable/Drawable;->setAutoMirrored(Z)V

    sget-object v9, Landroid/graphics/PorterDuff$Mode;->SRC_ATOP:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v8, v7, v9}, Landroid/graphics/drawable/Drawable;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    iget-object v7, v6, Lcom/miui/optimizecenter/widget/storage/StorageViewGroup$c;->f:Landroid/widget/ImageView;

    invoke-virtual {v7, v8}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    invoke-static {}, Ldb/c;->a()I

    move-result v7

    const/16 v8, 0x9

    const/4 v9, 0x0

    if-lt v7, v8, :cond_3

    const-string v7, "mipro-medium"

    invoke-static {v7, v9}, Landroid/graphics/Typeface;->create(Ljava/lang/String;I)Landroid/graphics/Typeface;

    move-result-object v7

    iget-object v8, v6, Lcom/miui/optimizecenter/widget/storage/StorageViewGroup$c;->e:Lcom/miui/optimizecenter/widget/storage/SizeTextView;

    invoke-virtual {v8, v7}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    :cond_3
    iget-object v7, v6, Lcom/miui/optimizecenter/widget/storage/StorageViewGroup$c;->d:Landroid/widget/TextView;

    invoke-virtual {v4, v1}, Lcom/miui/optimizecenter/widget/storage/a;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v7, v6, Lcom/miui/optimizecenter/widget/storage/StorageViewGroup$c;->e:Lcom/miui/optimizecenter/widget/storage/SizeTextView;

    const-wide/16 v10, 0x0

    invoke-virtual {v7, v10, v11}, Lcom/miui/optimizecenter/widget/storage/SizeTextView;->setSize(J)V

    invoke-static {}, Ldb/i;->c()Z

    move-result v7

    if-eqz v7, :cond_4

    const v7, 0x7f080f97

    invoke-virtual {v5, v7}, Landroid/view/View;->setBackgroundResource(I)V

    invoke-static {v5}, Ldb/a;->a(Landroid/view/View;)V

    goto :goto_2

    :cond_4
    const v7, 0x7f080f47

    invoke-virtual {v5, v7}, Landroid/view/View;->setBackgroundResource(I)V

    :goto_2
    iget-object v5, v6, Lcom/miui/optimizecenter/widget/storage/StorageViewGroup$c;->c:Landroid/view/View;

    invoke-virtual {v5}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v5

    check-cast v5, Landroid/graphics/drawable/GradientDrawable;

    invoke-virtual {v4, v1}, Lcom/miui/optimizecenter/widget/storage/a;->b(Landroid/content/Context;)I

    move-result v7

    invoke-virtual {v5, v7}, Landroid/graphics/drawable/GradientDrawable;->setColor(I)V

    iget-object v5, p0, Lcom/miui/optimizecenter/widget/storage/StorageViewGroup;->f:Ljava/util/HashMap;

    invoke-virtual {v5, v4, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v4, v6, Lcom/miui/optimizecenter/widget/storage/StorageViewGroup$c;->b:Landroid/view/View;

    invoke-virtual {v4, v9}, Landroid/view/View;->setEnabled(Z)V

    add-int/lit8 v0, v0, -0x1

    goto/16 :goto_0

    :cond_5
    invoke-direct {p0}, Lcom/miui/optimizecenter/widget/storage/StorageViewGroup;->j()V

    return-void
.end method

.method private e()Z
    .locals 2

    invoke-virtual {p0}, Landroid/view/View;->getLayoutDirection()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method private g(Lcom/miui/optimizecenter/widget/storage/a;IILandroid/view/View;)V
    .locals 2

    iget-object v0, p0, Lcom/miui/optimizecenter/widget/storage/StorageViewGroup;->e:Landroid/graphics/Paint;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {p1, v1}, Lcom/miui/optimizecenter/widget/storage/a;->b(Landroid/content/Context;)I

    move-result p1

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setColor(I)V

    invoke-direct {p0, p4, p0}, Lcom/miui/optimizecenter/widget/storage/StorageViewGroup;->c(Landroid/view/View;Landroid/view/View;)Landroid/graphics/Point;

    move-result-object p1

    iget-object p4, p0, Lcom/miui/optimizecenter/widget/storage/StorageViewGroup;->c:Landroid/graphics/Path;

    invoke-virtual {p4}, Landroid/graphics/Path;->reset()V

    iget-object p4, p0, Lcom/miui/optimizecenter/widget/storage/StorageViewGroup;->d:Landroid/graphics/Path;

    invoke-virtual {p4}, Landroid/graphics/Path;->reset()V

    iget-object p4, p0, Lcom/miui/optimizecenter/widget/storage/StorageViewGroup;->c:Landroid/graphics/Path;

    int-to-float p2, p2

    int-to-float p3, p3

    invoke-virtual {p4, p2, p3}, Landroid/graphics/Path;->moveTo(FF)V

    iget-object p4, p0, Lcom/miui/optimizecenter/widget/storage/StorageViewGroup;->c:Landroid/graphics/Path;

    invoke-virtual {p4, p2, p3}, Landroid/graphics/Path;->lineTo(FF)V

    iget-object p2, p0, Lcom/miui/optimizecenter/widget/storage/StorageViewGroup;->c:Landroid/graphics/Path;

    iget p3, p1, Landroid/graphics/Point;->x:I

    invoke-direct {p0}, Lcom/miui/optimizecenter/widget/storage/StorageViewGroup;->e()Z

    move-result p4

    if-eqz p4, :cond_0

    iget p4, p0, Lcom/miui/optimizecenter/widget/storage/StorageViewGroup;->j:I

    goto :goto_0

    :cond_0
    iget p4, p0, Lcom/miui/optimizecenter/widget/storage/StorageViewGroup;->j:I

    neg-int p4, p4

    :goto_0
    add-int/2addr p3, p4

    int-to-float p3, p3

    iget p4, p1, Landroid/graphics/Point;->y:I

    int-to-float p4, p4

    invoke-virtual {p2, p3, p4}, Landroid/graphics/Path;->lineTo(FF)V

    iget-object p2, p0, Lcom/miui/optimizecenter/widget/storage/StorageViewGroup;->d:Landroid/graphics/Path;

    iget p3, p1, Landroid/graphics/Point;->x:I

    invoke-direct {p0}, Lcom/miui/optimizecenter/widget/storage/StorageViewGroup;->e()Z

    move-result p4

    if-eqz p4, :cond_1

    iget p4, p0, Lcom/miui/optimizecenter/widget/storage/StorageViewGroup;->j:I

    goto :goto_1

    :cond_1
    iget p4, p0, Lcom/miui/optimizecenter/widget/storage/StorageViewGroup;->j:I

    neg-int p4, p4

    :goto_1
    add-int/2addr p3, p4

    int-to-float p3, p3

    iget p4, p1, Landroid/graphics/Point;->y:I

    int-to-float p4, p4

    invoke-virtual {p2, p3, p4}, Landroid/graphics/Path;->moveTo(FF)V

    iget-object p2, p0, Lcom/miui/optimizecenter/widget/storage/StorageViewGroup;->d:Landroid/graphics/Path;

    iget p3, p1, Landroid/graphics/Point;->x:I

    int-to-float p3, p3

    iget p1, p1, Landroid/graphics/Point;->y:I

    int-to-float p1, p1

    invoke-virtual {p2, p3, p1}, Landroid/graphics/Path;->lineTo(FF)V

    return-void
.end method

.method private h(ZLcom/miui/optimizecenter/widget/storage/a;)V
    .locals 3

    iget-object v0, p0, Lcom/miui/optimizecenter/widget/storage/StorageViewGroup;->k:Landroid/animation/ValueAnimator;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    :cond_0
    iget-object v0, p0, Lcom/miui/optimizecenter/widget/storage/StorageViewGroup;->l:Landroid/animation/ValueAnimator;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    :cond_1
    const/4 v0, 0x2

    new-array v0, v0, [F

    fill-array-data v0, :array_0

    invoke-static {v0}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/optimizecenter/widget/storage/StorageViewGroup;->k:Landroid/animation/ValueAnimator;

    const-wide/16 v1, 0xfa

    invoke-virtual {v0, v1, v2}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    iget-object v0, p0, Lcom/miui/optimizecenter/widget/storage/StorageViewGroup;->k:Landroid/animation/ValueAnimator;

    new-instance v1, Landroid/view/animation/DecelerateInterpolator;

    const/high16 v2, 0x40000000    # 2.0f

    invoke-direct {v1, v2}, Landroid/view/animation/DecelerateInterpolator;-><init>(F)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    iget-object v0, p0, Lcom/miui/optimizecenter/widget/storage/StorageViewGroup;->k:Landroid/animation/ValueAnimator;

    new-instance v1, Lcom/miui/optimizecenter/widget/storage/StorageViewGroup$b;

    invoke-direct {v1, p0, p1, p2}, Lcom/miui/optimizecenter/widget/storage/StorageViewGroup$b;-><init>(Lcom/miui/optimizecenter/widget/storage/StorageViewGroup;ZLcom/miui/optimizecenter/widget/storage/a;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    iget-object p1, p0, Lcom/miui/optimizecenter/widget/storage/StorageViewGroup;->k:Landroid/animation/ValueAnimator;

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->start()V

    return-void

    nop

    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method

.method private i(Lcom/miui/optimizecenter/widget/storage/a;Lcom/miui/optimizecenter/widget/storage/a;)V
    .locals 3

    iget-object v0, p0, Lcom/miui/optimizecenter/widget/storage/StorageViewGroup;->l:Landroid/animation/ValueAnimator;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    :cond_0
    iget-object v0, p0, Lcom/miui/optimizecenter/widget/storage/StorageViewGroup;->f:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/miui/optimizecenter/widget/storage/StorageViewGroup$c;

    iget-object v2, v1, Lcom/miui/optimizecenter/widget/storage/StorageViewGroup$c;->a:Lcom/miui/optimizecenter/widget/storage/a;

    if-eq v2, p1, :cond_1

    if-eq v2, p2, :cond_1

    iget-object v1, v1, Lcom/miui/optimizecenter/widget/storage/StorageViewGroup$c;->b:Landroid/view/View;

    const v2, 0x3e4ccccd    # 0.2f

    invoke-virtual {v1, v2}, Landroid/view/View;->setAlpha(F)V

    goto :goto_0

    :cond_2
    const/4 v0, 0x2

    new-array v0, v0, [F

    fill-array-data v0, :array_0

    invoke-static {v0}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/optimizecenter/widget/storage/StorageViewGroup;->l:Landroid/animation/ValueAnimator;

    const-wide/16 v1, 0xfa

    invoke-virtual {v0, v1, v2}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    iget-object v0, p0, Lcom/miui/optimizecenter/widget/storage/StorageViewGroup;->l:Landroid/animation/ValueAnimator;

    new-instance v1, Landroid/view/animation/DecelerateInterpolator;

    const/high16 v2, 0x40000000    # 2.0f

    invoke-direct {v1, v2}, Landroid/view/animation/DecelerateInterpolator;-><init>(F)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    iget-object v0, p0, Lcom/miui/optimizecenter/widget/storage/StorageViewGroup;->l:Landroid/animation/ValueAnimator;

    new-instance v1, Lcom/miui/optimizecenter/widget/storage/StorageViewGroup$a;

    invoke-direct {v1, p0, p1, p2}, Lcom/miui/optimizecenter/widget/storage/StorageViewGroup$a;-><init>(Lcom/miui/optimizecenter/widget/storage/StorageViewGroup;Lcom/miui/optimizecenter/widget/storage/a;Lcom/miui/optimizecenter/widget/storage/a;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    iget-object p1, p0, Lcom/miui/optimizecenter/widget/storage/StorageViewGroup;->l:Landroid/animation/ValueAnimator;

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->start()V

    return-void

    nop

    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method

.method private j()V
    .locals 8

    iget-object v0, p0, Lcom/miui/optimizecenter/widget/storage/StorageViewGroup;->a:Lra/k0;

    sget-object v1, Lra/k0;->a:Lra/k0;

    const/4 v2, 0x0

    if-eq v0, v1, :cond_1

    sget-object v1, Lra/k0;->c:Lra/k0;

    if-eq v0, v1, :cond_1

    sget-object v1, Lra/k0;->d:Lra/k0;

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    move v0, v2

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    invoke-virtual {p0}, Lcom/miui/optimizecenter/widget/storage/StorageViewGroup;->getScanFinishedSet()Ljava/util/Set;

    move-result-object v1

    iget-object v3, p0, Lcom/miui/optimizecenter/widget/storage/StorageViewGroup;->f:Ljava/util/HashMap;

    invoke-virtual {v3}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_2
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_8

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/miui/optimizecenter/widget/storage/a;

    iget-object v5, p0, Lcom/miui/optimizecenter/widget/storage/StorageViewGroup;->f:Ljava/util/HashMap;

    invoke-virtual {v5, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/miui/optimizecenter/widget/storage/StorageViewGroup$c;

    if-nez v5, :cond_2

    goto :goto_2

    :cond_2
    sget-object v6, Lcom/miui/optimizecenter/widget/storage/a;->h:Lcom/miui/optimizecenter/widget/storage/a;

    invoke-virtual {v6, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v6

    const/4 v7, 0x4

    if-eqz v6, :cond_3

    if-eqz v1, :cond_7

    sget-object v6, Lcom/miui/optimizecenter/widget/storage/a;->n:Lcom/miui/optimizecenter/widget/storage/a;

    invoke-interface {v1, v6}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_7

    invoke-interface {v1, v4}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_3

    goto :goto_4

    :cond_3
    if-eqz v1, :cond_7

    invoke-interface {v1, v4}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_4

    goto :goto_4

    :cond_4
    if-nez v0, :cond_6

    sget-object v6, Lcom/miui/optimizecenter/widget/storage/a;->o:Lcom/miui/optimizecenter/widget/storage/a;

    if-eq v4, v6, :cond_6

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-virtual {v4, v6}, Lcom/miui/optimizecenter/widget/storage/a;->c(Landroid/content/Context;)Z

    move-result v4

    if-nez v4, :cond_5

    goto :goto_3

    :cond_5
    iget-object v4, v5, Lcom/miui/optimizecenter/widget/storage/StorageViewGroup$c;->f:Landroid/widget/ImageView;

    invoke-static {v4, v2}, Ldb/i;->k(Landroid/view/View;I)V

    iget-object v4, v5, Lcom/miui/optimizecenter/widget/storage/StorageViewGroup$c;->g:Landroid/widget/ProgressBar;

    invoke-static {v4, v7}, Ldb/i;->k(Landroid/view/View;I)V

    iget-object v4, v5, Lcom/miui/optimizecenter/widget/storage/StorageViewGroup$c;->b:Landroid/view/View;

    invoke-static {v4, p0}, Ldb/i;->j(Landroid/view/View;Landroid/view/View$OnClickListener;)V

    goto :goto_2

    :cond_6
    :goto_3
    iget-object v4, v5, Lcom/miui/optimizecenter/widget/storage/StorageViewGroup$c;->f:Landroid/widget/ImageView;

    invoke-static {v4, v7}, Ldb/i;->k(Landroid/view/View;I)V

    iget-object v4, v5, Lcom/miui/optimizecenter/widget/storage/StorageViewGroup$c;->g:Landroid/widget/ProgressBar;

    invoke-static {v4, v7}, Ldb/i;->k(Landroid/view/View;I)V

    iget-object v4, v5, Lcom/miui/optimizecenter/widget/storage/StorageViewGroup$c;->b:Landroid/view/View;

    invoke-static {v4}, Ldb/i;->b(Landroid/view/View;)V

    iget-object v4, v5, Lcom/miui/optimizecenter/widget/storage/StorageViewGroup$c;->b:Landroid/view/View;

    invoke-static {v4}, Ldb/i;->a(Landroid/view/View;)V

    goto :goto_2

    :cond_7
    :goto_4
    iget-object v4, v5, Lcom/miui/optimizecenter/widget/storage/StorageViewGroup$c;->f:Landroid/widget/ImageView;

    invoke-static {v4, v7}, Ldb/i;->k(Landroid/view/View;I)V

    iget-object v4, v5, Lcom/miui/optimizecenter/widget/storage/StorageViewGroup$c;->g:Landroid/widget/ProgressBar;

    invoke-static {v4, v2}, Ldb/i;->k(Landroid/view/View;I)V

    iget-object v4, v5, Lcom/miui/optimizecenter/widget/storage/StorageViewGroup$c;->b:Landroid/view/View;

    invoke-static {v4}, Ldb/i;->b(Landroid/view/View;)V

    goto :goto_2

    :cond_8
    return-void
.end method


# virtual methods
.method public a(Lcom/miui/optimizecenter/widget/storage/a;II)V
    .locals 2

    if-eqz p1, :cond_3

    iget-object v0, p0, Lcom/miui/optimizecenter/widget/storage/StorageViewGroup;->f:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/optimizecenter/widget/storage/StorageViewGroup$c;

    iget-object v1, v0, Lcom/miui/optimizecenter/widget/storage/StorageViewGroup$c;->c:Landroid/view/View;

    invoke-direct {p0, p1, p2, p3, v1}, Lcom/miui/optimizecenter/widget/storage/StorageViewGroup;->g(Lcom/miui/optimizecenter/widget/storage/a;IILandroid/view/View;)V

    iget-object p2, p0, Lcom/miui/optimizecenter/widget/storage/StorageViewGroup;->m:Lcom/miui/optimizecenter/widget/storage/a;

    if-ne p2, p1, :cond_1

    iget-object p3, p0, Lcom/miui/optimizecenter/widget/storage/StorageViewGroup;->f:Ljava/util/HashMap;

    invoke-virtual {p3, p2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/miui/optimizecenter/widget/storage/StorageViewGroup$c;

    if-eqz p2, :cond_0

    iget-object p2, p2, Lcom/miui/optimizecenter/widget/storage/StorageViewGroup$c;->b:Landroid/view/View;

    const p3, 0x3e4ccccd    # 0.2f

    invoke-virtual {p2, p3}, Landroid/view/View;->setAlpha(F)V

    :cond_0
    iget-object p2, v0, Lcom/miui/optimizecenter/widget/storage/StorageViewGroup$c;->b:Landroid/view/View;

    const/high16 p3, 0x3f800000    # 1.0f

    invoke-virtual {p2, p3}, Landroid/view/View;->setAlpha(F)V

    goto :goto_0

    :cond_1
    if-eqz p2, :cond_2

    invoke-direct {p0, p1, p2}, Lcom/miui/optimizecenter/widget/storage/StorageViewGroup;->i(Lcom/miui/optimizecenter/widget/storage/a;Lcom/miui/optimizecenter/widget/storage/a;)V

    :cond_2
    :goto_0
    iput-object p1, p0, Lcom/miui/optimizecenter/widget/storage/StorageViewGroup;->m:Lcom/miui/optimizecenter/widget/storage/a;

    invoke-virtual {p0}, Landroid/view/View;->postInvalidate()V

    goto :goto_1

    :cond_3
    const/4 p1, 0x0

    iget-object p2, p0, Lcom/miui/optimizecenter/widget/storage/StorageViewGroup;->m:Lcom/miui/optimizecenter/widget/storage/a;

    invoke-direct {p0, p1, p2}, Lcom/miui/optimizecenter/widget/storage/StorageViewGroup;->h(ZLcom/miui/optimizecenter/widget/storage/a;)V

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/miui/optimizecenter/widget/storage/StorageViewGroup;->m:Lcom/miui/optimizecenter/widget/storage/a;

    :goto_1
    return-void
.end method

.method public b(Landroid/view/MotionEvent;Lcom/miui/optimizecenter/widget/storage/a;II)V
    .locals 1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result p1

    if-nez p1, :cond_0

    if-eqz p2, :cond_0

    iget-object p1, p0, Lcom/miui/optimizecenter/widget/storage/StorageViewGroup;->f:Ljava/util/HashMap;

    invoke-virtual {p1, p2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/miui/optimizecenter/widget/storage/StorageViewGroup$c;

    iget-object p1, p1, Lcom/miui/optimizecenter/widget/storage/StorageViewGroup$c;->c:Landroid/view/View;

    invoke-direct {p0, p2, p3, p4, p1}, Lcom/miui/optimizecenter/widget/storage/StorageViewGroup;->g(Lcom/miui/optimizecenter/widget/storage/a;IILandroid/view/View;)V

    iput-object p2, p0, Lcom/miui/optimizecenter/widget/storage/StorageViewGroup;->m:Lcom/miui/optimizecenter/widget/storage/a;

    const/4 p1, 0x1

    invoke-direct {p0, p1, p2}, Lcom/miui/optimizecenter/widget/storage/StorageViewGroup;->h(ZLcom/miui/optimizecenter/widget/storage/a;)V

    goto :goto_0

    :cond_0
    const/4 v0, 0x2

    if-ne p1, v0, :cond_1

    if-eqz p2, :cond_1

    iget-object p1, p0, Lcom/miui/optimizecenter/widget/storage/StorageViewGroup;->m:Lcom/miui/optimizecenter/widget/storage/a;

    if-eq p1, p2, :cond_2

    if-eqz p1, :cond_2

    iget-object p1, p0, Lcom/miui/optimizecenter/widget/storage/StorageViewGroup;->f:Ljava/util/HashMap;

    invoke-virtual {p1, p2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/miui/optimizecenter/widget/storage/StorageViewGroup$c;

    iget-object p1, p1, Lcom/miui/optimizecenter/widget/storage/StorageViewGroup$c;->c:Landroid/view/View;

    invoke-direct {p0, p2, p3, p4, p1}, Lcom/miui/optimizecenter/widget/storage/StorageViewGroup;->g(Lcom/miui/optimizecenter/widget/storage/a;IILandroid/view/View;)V

    iget-object p1, p0, Lcom/miui/optimizecenter/widget/storage/StorageViewGroup;->m:Lcom/miui/optimizecenter/widget/storage/a;

    invoke-direct {p0, p2, p1}, Lcom/miui/optimizecenter/widget/storage/StorageViewGroup;->i(Lcom/miui/optimizecenter/widget/storage/a;Lcom/miui/optimizecenter/widget/storage/a;)V

    iput-object p2, p0, Lcom/miui/optimizecenter/widget/storage/StorageViewGroup;->m:Lcom/miui/optimizecenter/widget/storage/a;

    invoke-virtual {p0}, Landroid/view/View;->postInvalidate()V

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    iget-object p2, p0, Lcom/miui/optimizecenter/widget/storage/StorageViewGroup;->m:Lcom/miui/optimizecenter/widget/storage/a;

    invoke-direct {p0, p1, p2}, Lcom/miui/optimizecenter/widget/storage/StorageViewGroup;->h(ZLcom/miui/optimizecenter/widget/storage/a;)V

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/miui/optimizecenter/widget/storage/StorageViewGroup;->m:Lcom/miui/optimizecenter/widget/storage/a;

    :cond_2
    :goto_0
    return-void
.end method

.method protected dispatchDraw(Landroid/graphics/Canvas;)V
    .locals 2

    iget-object v0, p0, Lcom/miui/optimizecenter/widget/storage/StorageViewGroup;->c:Landroid/graphics/Path;

    iget-object v1, p0, Lcom/miui/optimizecenter/widget/storage/StorageViewGroup;->e:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->dispatchDraw(Landroid/graphics/Canvas;)V

    iget-object v0, p0, Lcom/miui/optimizecenter/widget/storage/StorageViewGroup;->d:Landroid/graphics/Path;

    iget-object v1, p0, Lcom/miui/optimizecenter/widget/storage/StorageViewGroup;->e:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    return-void
.end method

.method public f(ZZ)V
    .locals 4

    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->densityDpi:I

    int-to-float v0, v0

    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f071bc9

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    invoke-static {}, Lx4/y;->s()Z

    move-result v2

    const v3, 0x7f070581

    if-eqz v2, :cond_0

    if-eqz p1, :cond_0

    const/16 p1, 0xdc

    int-to-float p1, p1

    cmpg-float p1, v0, p1

    if-gez p1, :cond_0

    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object p1

    iget p1, p1, Landroid/content/res/Configuration;->orientation:I

    const/4 p2, 0x1

    if-ne p1, p2, :cond_1

    goto :goto_0

    :cond_0
    invoke-static {}, Lx4/y;->t()Z

    move-result p1

    if-eqz p1, :cond_1

    if-eqz p2, :cond_1

    :goto_0
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    :cond_1
    iget-object p1, p0, Lcom/miui/optimizecenter/widget/storage/StorageViewGroup;->g:Landroid/widget/LinearLayout;

    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    check-cast p1, Landroid/widget/LinearLayout$LayoutParams;

    invoke-virtual {p1, v1}, Landroid/view/ViewGroup$MarginLayoutParams;->setMarginStart(I)V

    iget-object p2, p0, Lcom/miui/optimizecenter/widget/storage/StorageViewGroup;->g:Landroid/widget/LinearLayout;

    invoke-virtual {p2, p1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method public getScanFinishedSet()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Lcom/miui/optimizecenter/widget/storage/a;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/miui/optimizecenter/widget/storage/StorageViewGroup;->n:Ljava/util/Set;

    return-object v0
.end method

.method public k(Lcom/miui/optimizecenter/widget/storage/a;ZF)V
    .locals 5

    const v0, 0x3e4ccccd    # 0.2f

    const/high16 v1, 0x3f800000    # 1.0f

    if-nez p2, :cond_0

    move v2, v1

    goto :goto_0

    :cond_0
    move v2, v0

    move v0, v1

    :goto_0
    sub-float/2addr v2, v0

    mul-float/2addr v2, p3

    add-float/2addr v0, v2

    iget-object v2, p0, Lcom/miui/optimizecenter/widget/storage/StorageViewGroup;->f:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/miui/optimizecenter/widget/storage/StorageViewGroup$c;

    iget-object v4, v3, Lcom/miui/optimizecenter/widget/storage/StorageViewGroup$c;->b:Landroid/view/View;

    iget-object v3, v3, Lcom/miui/optimizecenter/widget/storage/StorageViewGroup$c;->a:Lcom/miui/optimizecenter/widget/storage/a;

    if-ne v3, p1, :cond_1

    move v3, v1

    goto :goto_2

    :cond_1
    move v3, v0

    :goto_2
    invoke-virtual {v4, v3}, Landroid/view/View;->setAlpha(F)V

    goto :goto_1

    :cond_2
    if-nez p2, :cond_3

    cmpl-float p1, p3, v1

    if-nez p1, :cond_3

    iget-object p1, p0, Lcom/miui/optimizecenter/widget/storage/StorageViewGroup;->c:Landroid/graphics/Path;

    invoke-virtual {p1}, Landroid/graphics/Path;->reset()V

    iget-object p1, p0, Lcom/miui/optimizecenter/widget/storage/StorageViewGroup;->d:Landroid/graphics/Path;

    invoke-virtual {p1}, Landroid/graphics/Path;->reset()V

    :cond_3
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method

.method public l(Leb/a;)V
    .locals 5

    if-nez p1, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/miui/optimizecenter/widget/storage/StorageViewGroup;->b:Lcom/miui/optimizecenter/widget/storage/StorageColumnView;

    invoke-virtual {v0, p1}, Lcom/miui/optimizecenter/widget/storage/StorageColumnView;->u(Leb/a;)V

    iget-object v0, p0, Lcom/miui/optimizecenter/widget/storage/StorageViewGroup;->f:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/miui/optimizecenter/widget/storage/a;

    iget-object v2, p0, Lcom/miui/optimizecenter/widget/storage/StorageViewGroup;->f:Ljava/util/HashMap;

    invoke-virtual {v2, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/miui/optimizecenter/widget/storage/StorageViewGroup$c;

    if-nez v1, :cond_1

    goto :goto_0

    :cond_1
    iget-object v2, v1, Lcom/miui/optimizecenter/widget/storage/StorageViewGroup$c;->e:Lcom/miui/optimizecenter/widget/storage/SizeTextView;

    iget-object v1, v1, Lcom/miui/optimizecenter/widget/storage/StorageViewGroup$c;->a:Lcom/miui/optimizecenter/widget/storage/a;

    iget-object v3, p0, Lcom/miui/optimizecenter/widget/storage/StorageViewGroup;->b:Lcom/miui/optimizecenter/widget/storage/StorageColumnView;

    invoke-virtual {v3}, Lcom/miui/optimizecenter/widget/storage/StorageColumnView;->getShowStyle()I

    move-result v3

    invoke-virtual {p1, v1, v3}, Leb/a;->i(Lcom/miui/optimizecenter/widget/storage/a;I)J

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Lcom/miui/optimizecenter/widget/storage/SizeTextView;->setSize(J)V

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/miui/optimizecenter/widget/storage/StorageViewGroup;->h:Leb/a;

    invoke-virtual {v0, p1}, Leb/a;->B(Leb/a;)V

    invoke-direct {p0}, Lcom/miui/optimizecenter/widget/storage/StorageViewGroup;->j()V

    return-void
.end method

.method public m(FLcom/miui/optimizecenter/widget/storage/a;Lcom/miui/optimizecenter/widget/storage/a;)V
    .locals 2

    const v0, 0x3f4ccccd    # 0.8f

    mul-float/2addr p1, v0

    const v0, 0x3e4ccccd    # 0.2f

    add-float/2addr v0, p1

    const/high16 v1, 0x3f800000    # 1.0f

    sub-float/2addr v1, p1

    iget-object p1, p0, Lcom/miui/optimizecenter/widget/storage/StorageViewGroup;->f:Ljava/util/HashMap;

    invoke-virtual {p1, p2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/miui/optimizecenter/widget/storage/StorageViewGroup$c;

    iget-object p2, p0, Lcom/miui/optimizecenter/widget/storage/StorageViewGroup;->f:Ljava/util/HashMap;

    invoke-virtual {p2, p3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/miui/optimizecenter/widget/storage/StorageViewGroup$c;

    if-eqz p1, :cond_0

    iget-object p1, p1, Lcom/miui/optimizecenter/widget/storage/StorageViewGroup$c;->b:Landroid/view/View;

    invoke-virtual {p1, v0}, Landroid/view/View;->setAlpha(F)V

    :cond_0
    if-eqz p2, :cond_1

    iget-object p1, p2, Lcom/miui/optimizecenter/widget/storage/StorageViewGroup$c;->b:Landroid/view/View;

    invoke-virtual {p1, v1}, Landroid/view/View;->setAlpha(F)V

    :cond_1
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 2

    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    instance-of v0, v0, Lcom/miui/optimizecenter/widget/storage/StorageViewGroup$c;

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/optimizecenter/widget/storage/StorageViewGroup$c;

    iget-object v0, v0, Lcom/miui/optimizecenter/widget/storage/StorageViewGroup$c;->a:Lcom/miui/optimizecenter/widget/storage/a;

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    instance-of v0, v0, Lcom/miui/optimizecenter/widget/storage/a;

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/optimizecenter/widget/storage/a;

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    if-nez v0, :cond_2

    return-void

    :cond_2
    iget-object v1, p0, Lcom/miui/optimizecenter/widget/storage/StorageViewGroup;->n:Ljava/util/Set;

    invoke-interface {v1, v0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/miui/optimizecenter/widget/storage/a;->d(Landroid/content/Context;)V

    sget-boolean p1, Lmiui/os/Build;->IS_GLOBAL_BUILD:Z

    if-eqz p1, :cond_3

    return-void

    :cond_3
    iget-object p1, p0, Lcom/miui/optimizecenter/widget/storage/StorageViewGroup;->h:Leb/a;

    const/4 v1, 0x0

    invoke-static {p1, v0, v1}, Ldb/f;->i(Leb/a;Lcom/miui/optimizecenter/widget/storage/a;Z)V

    :cond_4
    return-void
.end method

.method protected onFinishInflate()V
    .locals 1

    invoke-super {p0}, Landroid/widget/LinearLayout;->onFinishInflate()V

    const v0, 0x7f0b0a08

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/miui/optimizecenter/widget/storage/StorageColumnView;

    iput-object v0, p0, Lcom/miui/optimizecenter/widget/storage/StorageViewGroup;->b:Lcom/miui/optimizecenter/widget/storage/StorageColumnView;

    invoke-virtual {v0, p0}, Lcom/miui/optimizecenter/widget/storage/StorageColumnView;->setOnItemEventListener(Lcom/miui/optimizecenter/widget/storage/StorageColumnView$b;)V

    const v0, 0x7f0b06f1

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/miui/optimizecenter/widget/storage/StorageViewGroup;->g:Landroid/widget/LinearLayout;

    invoke-direct {p0}, Lcom/miui/optimizecenter/widget/storage/StorageViewGroup;->d()V

    return-void
.end method

.method public setScanFinished(Ljava/util/Set;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Lcom/miui/optimizecenter/widget/storage/a;",
            ">;)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/miui/optimizecenter/widget/storage/StorageViewGroup;->n:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->clear()V

    iget-object v0, p0, Lcom/miui/optimizecenter/widget/storage/StorageViewGroup;->n:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    sget-object v0, Lcom/miui/optimizecenter/widget/storage/StorageViewGroup;->o:[Lcom/miui/optimizecenter/widget/storage/a;

    array-length v0, v0

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    :goto_0
    if-ltz v0, :cond_1

    iget-object v2, p0, Lcom/miui/optimizecenter/widget/storage/StorageViewGroup;->f:Ljava/util/HashMap;

    sget-object v3, Lcom/miui/optimizecenter/widget/storage/StorageViewGroup;->o:[Lcom/miui/optimizecenter/widget/storage/a;

    aget-object v3, v3, v0

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/miui/optimizecenter/widget/storage/StorageViewGroup$c;

    if-nez v2, :cond_0

    goto :goto_1

    :cond_0
    iget-object v2, v2, Lcom/miui/optimizecenter/widget/storage/StorageViewGroup$c;->b:Landroid/view/View;

    invoke-virtual {v2, v1}, Landroid/view/View;->setEnabled(Z)V

    :goto_1
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/miui/optimizecenter/widget/storage/StorageViewGroup;->b:Lcom/miui/optimizecenter/widget/storage/StorageColumnView;

    invoke-virtual {v0, p1}, Lcom/miui/optimizecenter/widget/storage/StorageColumnView;->setScanFinished(Ljava/util/Set;)V

    invoke-direct {p0}, Lcom/miui/optimizecenter/widget/storage/StorageViewGroup;->j()V

    return-void
.end method

.method public setStorageInfo(Leb/a;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/optimizecenter/widget/storage/StorageViewGroup;->h:Leb/a;

    return-void
.end method

.method public setStorageStyle(Lra/k0;)V
    .locals 1

    if-eqz p1, :cond_2

    iget-object v0, p0, Lcom/miui/optimizecenter/widget/storage/StorageViewGroup;->a:Lra/k0;

    if-eq p1, v0, :cond_2

    iput-object p1, p0, Lcom/miui/optimizecenter/widget/storage/StorageViewGroup;->a:Lra/k0;

    sget-object v0, Lra/k0;->c:Lra/k0;

    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/miui/optimizecenter/widget/storage/StorageViewGroup;->b:Lcom/miui/optimizecenter/widget/storage/StorageColumnView;

    const/4 v0, 0x2

    :goto_0
    invoke-virtual {p1, v0}, Lcom/miui/optimizecenter/widget/storage/StorageColumnView;->setShowStyle(I)V

    goto :goto_1

    :cond_0
    sget-object p1, Lra/k0;->d:Lra/k0;

    iget-object v0, p0, Lcom/miui/optimizecenter/widget/storage/StorageViewGroup;->a:Lra/k0;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/miui/optimizecenter/widget/storage/StorageViewGroup;->b:Lcom/miui/optimizecenter/widget/storage/StorageColumnView;

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    iget-object p1, p0, Lcom/miui/optimizecenter/widget/storage/StorageViewGroup;->b:Lcom/miui/optimizecenter/widget/storage/StorageColumnView;

    const/4 v0, 0x0

    goto :goto_0

    :goto_1
    invoke-direct {p0}, Lcom/miui/optimizecenter/widget/storage/StorageViewGroup;->j()V

    :cond_2
    return-void
.end method
