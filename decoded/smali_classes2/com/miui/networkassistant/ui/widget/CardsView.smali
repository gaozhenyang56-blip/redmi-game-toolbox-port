.class public final Lcom/miui/networkassistant/ui/widget/CardsView;
.super Landroid/widget/LinearLayout;
.source "SourceFile"

# interfaces
.implements Lcom/miui/networkassistant/ui/widget/expose/ExposeNodeInterface;


# annotations
.annotation build Lkotlin/jvm/internal/SourceDebugExtension;
    value = {
        "SMAP\nCardsView.kt\nKotlin\n*S Kotlin\n*F\n+ 1 CardsView.kt\ncom/miui/networkassistant/ui/widget/CardsView\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,325:1\n1#2:326\n*E\n"
    }
.end annotation


# instance fields
.field private final divLineHeight:F

.field private mActivityData:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/miui/networkassistant/ui/bean/CardSData;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private mAdapter:Lcom/miui/networkassistant/ui/adapter/CardsAdapter;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private mAgree:Z

.field private mBindToNumber:Z

.field private mCommonLines:I

.field private mExpandAnimator:Landroid/animation/ValueAnimator;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field public mLayoutManager:Landroidx/recyclerview/widget/GridLayoutManager;

.field private mNormal:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/miui/networkassistant/ui/bean/CardSData;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private mNotice:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private mSpanCount:I

.field private originSpanCount:I

.field private final rvGrid$delegate:Loj/f;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private spanAutoFix:Z

.field private stateExpanded:Z

.field private final tvMore$delegate:Loj/f;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final tvName$delegate:Loj/f;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1    # Landroid/content/Context;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "context"

    invoke-static {p1, v0}, Lbk/m;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/miui/networkassistant/ui/widget/CardsView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1    # Landroid/content/Context;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Landroid/util/AttributeSet;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    const-string v0, "context"

    invoke-static {p1, v0}, Lbk/m;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/miui/networkassistant/ui/widget/CardsView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 11
    .param p1    # Landroid/content/Context;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Landroid/util/AttributeSet;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    const-string v0, "context"

    invoke-static {p1, v0}, Lbk/m;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, p1, p2, p3}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/16 v1, 0x14

    iput v1, p0, Lcom/miui/networkassistant/ui/widget/CardsView;->originSpanCount:I

    iput v1, p0, Lcom/miui/networkassistant/ui/widget/CardsView;->mSpanCount:I

    const/4 v1, 0x1

    iput v1, p0, Lcom/miui/networkassistant/ui/widget/CardsView;->mCommonLines:I

    const v2, 0x41ae7ae1    # 21.81f

    iput v2, p0, Lcom/miui/networkassistant/ui/widget/CardsView;->divLineHeight:F

    new-instance v3, Lcom/miui/networkassistant/ui/widget/CardsView$rvGrid$2;

    invoke-direct {v3, p0}, Lcom/miui/networkassistant/ui/widget/CardsView$rvGrid$2;-><init>(Lcom/miui/networkassistant/ui/widget/CardsView;)V

    invoke-static {v3}, Loj/g;->a(Lak/a;)Loj/f;

    move-result-object v3

    iput-object v3, p0, Lcom/miui/networkassistant/ui/widget/CardsView;->rvGrid$delegate:Loj/f;

    new-instance v3, Lcom/miui/networkassistant/ui/widget/CardsView$tvName$2;

    invoke-direct {v3, p0}, Lcom/miui/networkassistant/ui/widget/CardsView$tvName$2;-><init>(Lcom/miui/networkassistant/ui/widget/CardsView;)V

    invoke-static {v3}, Loj/g;->a(Lak/a;)Loj/f;

    move-result-object v3

    iput-object v3, p0, Lcom/miui/networkassistant/ui/widget/CardsView;->tvName$delegate:Loj/f;

    new-instance v3, Lcom/miui/networkassistant/ui/widget/CardsView$tvMore$2;

    invoke-direct {v3, p0}, Lcom/miui/networkassistant/ui/widget/CardsView$tvMore$2;-><init>(Lcom/miui/networkassistant/ui/widget/CardsView;)V

    invoke-static {v3}, Loj/g;->a(Lak/a;)Loj/f;

    move-result-object v3

    iput-object v3, p0, Lcom/miui/networkassistant/ui/widget/CardsView;->tvMore$delegate:Loj/f;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v3

    const v4, 0x7f0e00c8

    invoke-static {v3, v4, p0}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    new-instance v3, Lcom/miui/networkassistant/ui/adapter/CardsAdapter;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-static {v6, v0}, Lbk/m;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x6

    const/4 v10, 0x0

    move-object v5, v3

    invoke-direct/range {v5 .. v10}, Lcom/miui/networkassistant/ui/adapter/CardsAdapter;-><init>(Landroid/content/Context;Lcom/miui/networkassistant/viewholder/CardOnClickListener;Lcom/miui/networkassistant/viewholder/NoPhoneNumCardOnClickListener;ILbk/g;)V

    iput-object v3, p0, Lcom/miui/networkassistant/ui/widget/CardsView;->mAdapter:Lcom/miui/networkassistant/ui/adapter/CardsAdapter;

    invoke-direct {p0}, Lcom/miui/networkassistant/ui/widget/CardsView;->getRvGrid()Lcom/miui/networkassistant/ui/widget/RecyclerViewCompat;

    move-result-object v0

    iget-object v3, p0, Lcom/miui/networkassistant/ui/widget/CardsView;->mAdapter:Lcom/miui/networkassistant/ui/adapter/CardsAdapter;

    invoke-virtual {v0, v3}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$h;)V

    invoke-direct {p0}, Lcom/miui/networkassistant/ui/widget/CardsView;->getRvGrid()Lcom/miui/networkassistant/ui/widget/RecyclerViewCompat;

    move-result-object v0

    new-instance v3, Lcom/miui/networkassistant/ui/widget/GridSpacesItemDecoration;

    sget-object v4, Lcom/miui/networkassistant/utils/DisplayUtil;->INSTANCE:Lcom/miui/networkassistant/utils/DisplayUtil;

    invoke-virtual {v4, v2}, Lcom/miui/networkassistant/utils/DisplayUtil;->dip2px(F)I

    move-result v2

    invoke-direct {v3, v2}, Lcom/miui/networkassistant/ui/widget/GridSpacesItemDecoration;-><init>(I)V

    invoke-virtual {v0, v3}, Landroidx/recyclerview/widget/RecyclerView;->addItemDecoration(Landroidx/recyclerview/widget/RecyclerView$m;)V

    invoke-direct {p0}, Lcom/miui/networkassistant/ui/widget/CardsView;->getTvMore()Landroid/widget/TextView;

    move-result-object v0

    invoke-static {v0}, Lcom/miui/networkassistant/utils/FolmeHelper;->onDefaultViewPress(Landroid/view/View;)V

    invoke-direct {p0}, Lcom/miui/networkassistant/ui/widget/CardsView;->getTvMore()Landroid/widget/TextView;

    move-result-object v0

    new-instance v2, Lcom/miui/networkassistant/ui/widget/b;

    invoke-direct {v2, p0}, Lcom/miui/networkassistant/ui/widget/b;-><init>(Lcom/miui/networkassistant/ui/widget/CardsView;)V

    invoke-virtual {v0, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    sget-object v0, Lef/y;->C:[I

    const/4 v2, 0x0

    invoke-virtual {p1, p2, v0, p3, v2}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object p2

    invoke-direct {p0}, Lcom/miui/networkassistant/ui/widget/CardsView;->getTvMore()Landroid/widget/TextView;

    move-result-object p3

    const/4 v0, 0x4

    invoke-virtual {p2, v0}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const/4 p3, 0x6

    invoke-virtual {p2, p3, v1}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result p3

    iput p3, p0, Lcom/miui/networkassistant/ui/widget/CardsView;->originSpanCount:I

    const/4 p3, 0x5

    invoke-virtual {p2, p3, v2}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result p3

    iput-boolean p3, p0, Lcom/miui/networkassistant/ui/widget/CardsView;->spanAutoFix:Z

    iget p3, p0, Lcom/miui/networkassistant/ui/widget/CardsView;->originSpanCount:I

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v3, 0x7f0c0011

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    add-int/2addr p3, v0

    invoke-static {}, Lx4/t;->r()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/miui/networkassistant/ui/widget/CardsView;->spanAutoFix:Z

    if-eqz v0, :cond_0

    if-lez p3, :cond_0

    goto :goto_0

    :cond_0
    iget p3, p0, Lcom/miui/networkassistant/ui/widget/CardsView;->originSpanCount:I

    :goto_0
    iput p3, p0, Lcom/miui/networkassistant/ui/widget/CardsView;->mSpanCount:I

    invoke-virtual {p2, v1, v1}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result p3

    iput p3, p0, Lcom/miui/networkassistant/ui/widget/CardsView;->mCommonLines:I

    const/4 p3, 0x7

    invoke-virtual {p2, p3}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object p3

    if-nez p3, :cond_1

    invoke-direct {p0}, Lcom/miui/networkassistant/ui/widget/CardsView;->getTvName()Landroid/widget/TextView;

    move-result-object p3

    const-string v0, ""

    invoke-virtual {p3, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_1
    invoke-direct {p0}, Lcom/miui/networkassistant/ui/widget/CardsView;->getTvName()Landroid/widget/TextView;

    move-result-object p3

    invoke-direct {p0}, Lcom/miui/networkassistant/ui/widget/CardsView;->getTvName()Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/16 v3, 0x8

    if-eqz v0, :cond_2

    move v2, v3

    :cond_2
    invoke-virtual {p3, v2}, Landroid/view/View;->setVisibility(I)V

    new-instance p3, Landroidx/recyclerview/widget/GridLayoutManager;

    iget v0, p0, Lcom/miui/networkassistant/ui/widget/CardsView;->mSpanCount:I

    invoke-direct {p3, p1, v0}, Landroidx/recyclerview/widget/GridLayoutManager;-><init>(Landroid/content/Context;I)V

    invoke-virtual {p0, p3}, Lcom/miui/networkassistant/ui/widget/CardsView;->setMLayoutManager(Landroidx/recyclerview/widget/GridLayoutManager;)V

    invoke-direct {p0}, Lcom/miui/networkassistant/ui/widget/CardsView;->getRvGrid()Lcom/miui/networkassistant/ui/widget/RecyclerViewCompat;

    move-result-object p1

    invoke-virtual {p0}, Lcom/miui/networkassistant/ui/widget/CardsView;->getMLayoutManager()Landroidx/recyclerview/widget/GridLayoutManager;

    move-result-object p3

    invoke-virtual {p1, p3}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$n;)V

    iget-object p1, p0, Lcom/miui/networkassistant/ui/widget/CardsView;->mAdapter:Lcom/miui/networkassistant/ui/adapter/CardsAdapter;

    const p3, 0x7f06055a

    if-eqz p1, :cond_3

    const/4 v0, 0x2

    invoke-virtual {p2, v0, p3}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/miui/networkassistant/ui/adapter/CardsAdapter;->setItemColor(I)V

    :cond_3
    iget-object p1, p0, Lcom/miui/networkassistant/ui/widget/CardsView;->mAdapter:Lcom/miui/networkassistant/ui/adapter/CardsAdapter;

    if-eqz p1, :cond_4

    const/4 v0, 0x3

    invoke-virtual {p2, v0, p3}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result p3

    invoke-virtual {p1, p3}, Lcom/miui/networkassistant/ui/adapter/CardsAdapter;->setItemDisableColor(I)V

    :cond_4
    iget-object p1, p0, Lcom/miui/networkassistant/ui/widget/CardsView;->mAdapter:Lcom/miui/networkassistant/ui/adapter/CardsAdapter;

    if-eqz p1, :cond_5

    invoke-virtual {p2, v3, v1}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result p3

    invoke-virtual {p1, p3}, Lcom/miui/networkassistant/ui/adapter/CardsAdapter;->setType(I)V

    :cond_5
    invoke-virtual {p2}, Landroid/content/res/TypedArray;->recycle()V

    return-void
.end method

.method private static final _init_$lambda$3(Lcom/miui/networkassistant/ui/widget/CardsView;Landroid/view/View;)V
    .locals 10

    const-string p1, "this$0"

    invoke-static {p0, p1}, Lbk/m;->e(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance p1, Lbk/w;

    invoke-direct {p1}, Lbk/w;-><init>()V

    iget-boolean v0, p0, Lcom/miui/networkassistant/ui/widget/CardsView;->stateExpanded:Z

    const/4 v1, 0x1

    const/4 v2, 0x0

    const/4 v3, 0x0

    if-eqz v0, :cond_1

    iput-boolean v3, p0, Lcom/miui/networkassistant/ui/widget/CardsView;->stateExpanded:Z

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    const v4, 0x7f080477

    invoke-virtual {v0, v4}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v4

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v5

    invoke-virtual {v0, v3, v3, v4, v5}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    goto :goto_2

    :cond_0
    move-object v0, v2

    goto :goto_2

    :cond_1
    iput-boolean v1, p0, Lcom/miui/networkassistant/ui/widget/CardsView;->stateExpanded:Z

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    const v4, 0x7f080478

    invoke-virtual {v0, v4}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v4

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v5

    invoke-virtual {v0, v3, v3, v4, v5}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    goto :goto_0

    :cond_2
    move-object v0, v2

    :goto_0
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    iget-object v4, p0, Lcom/miui/networkassistant/ui/widget/CardsView;->mNormal:Ljava/util/List;

    if-eqz v4, :cond_3

    invoke-static {v4}, Lbk/m;->b(Ljava/lang/Object;)V

    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    :cond_3
    iget-object v4, p0, Lcom/miui/networkassistant/ui/widget/CardsView;->mActivityData:Ljava/util/List;

    if-eqz v4, :cond_5

    if-eqz v4, :cond_4

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    goto :goto_1

    :cond_4
    move-object v4, v2

    :goto_1
    invoke-static {v4}, Lbk/m;->b(Ljava/lang/Object;)V

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    iput v4, p1, Lbk/w;->a:I

    iget-object v4, p0, Lcom/miui/networkassistant/ui/widget/CardsView;->mActivityData:Ljava/util/List;

    invoke-static {v4}, Lbk/m;->b(Ljava/lang/Object;)V

    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    :cond_5
    iget-object v4, p0, Lcom/miui/networkassistant/ui/widget/CardsView;->mAdapter:Lcom/miui/networkassistant/ui/adapter/CardsAdapter;

    if-eqz v4, :cond_6

    iget v6, p1, Lbk/w;->a:I

    const/4 v7, 0x0

    const/4 v8, 0x4

    const/4 v9, 0x0

    invoke-static/range {v4 .. v9}, Lcom/miui/networkassistant/ui/adapter/CardsAdapter;->setData$default(Lcom/miui/networkassistant/ui/adapter/CardsAdapter;Ljava/util/List;ILjava/lang/String;ILjava/lang/Object;)V

    :cond_6
    :goto_2
    iget-object v4, p0, Lcom/miui/networkassistant/ui/widget/CardsView;->mExpandAnimator:Landroid/animation/ValueAnimator;

    if-nez v4, :cond_b

    iget-object v4, p0, Lcom/miui/networkassistant/ui/widget/CardsView;->mNormal:Ljava/util/List;

    if-eqz v4, :cond_7

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    goto :goto_3

    :cond_7
    move v4, v3

    :goto_3
    iget-object v5, p0, Lcom/miui/networkassistant/ui/widget/CardsView;->mActivityData:Ljava/util/List;

    if-eqz v5, :cond_8

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    goto :goto_4

    :cond_8
    move v5, v3

    :goto_4
    add-int/2addr v4, v5

    int-to-float v4, v4

    iget v5, p0, Lcom/miui/networkassistant/ui/widget/CardsView;->mSpanCount:I

    int-to-float v5, v5

    div-float/2addr v4, v5

    float-to-double v4, v4

    invoke-static {v4, v5}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v4

    double-to-float v4, v4

    iget v5, p0, Lcom/miui/networkassistant/ui/widget/CardsView;->mCommonLines:I

    int-to-float v5, v5

    sub-float/2addr v4, v5

    new-instance v5, Lbk/w;

    invoke-direct {v5}, Lbk/w;-><init>()V

    new-instance v6, Lbk/w;

    invoke-direct {v6}, Lbk/w;-><init>()V

    iget-boolean v7, p0, Lcom/miui/networkassistant/ui/widget/CardsView;->stateExpanded:Z

    const/4 v8, 0x0

    if-nez v7, :cond_9

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v7

    invoke-direct {p0}, Lcom/miui/networkassistant/ui/widget/CardsView;->getTvName()Landroid/widget/TextView;

    move-result-object v9

    invoke-virtual {v9}, Landroid/view/View;->getHeight()I

    move-result v9

    sub-int/2addr v7, v9

    invoke-direct {p0}, Lcom/miui/networkassistant/ui/widget/CardsView;->getTvMore()Landroid/widget/TextView;

    move-result-object v9

    invoke-virtual {v9}, Landroid/view/View;->getHeight()I

    move-result v9

    sub-int/2addr v7, v9

    iput v7, v6, Lbk/w;->a:I

    sget-object v9, Lcom/miui/networkassistant/utils/DisplayUtil;->INSTANCE:Lcom/miui/networkassistant/utils/DisplayUtil;

    invoke-virtual {v9, v8}, Lcom/miui/networkassistant/utils/DisplayUtil;->dip2px(F)I

    move-result v8

    add-int/2addr v7, v8

    int-to-float v7, v7

    iget v8, p0, Lcom/miui/networkassistant/ui/widget/CardsView;->mCommonLines:I

    int-to-float v8, v8

    add-float/2addr v8, v4

    div-float/2addr v7, v8

    iget v8, v6, Lbk/w;->a:I

    int-to-float v8, v8

    mul-float/2addr v7, v4

    sub-float/2addr v8, v7

    float-to-int v4, v8

    iput v4, v5, Lbk/w;->a:I

    goto :goto_5

    :cond_9
    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v7

    invoke-direct {p0}, Lcom/miui/networkassistant/ui/widget/CardsView;->getTvName()Landroid/widget/TextView;

    move-result-object v9

    invoke-virtual {v9}, Landroid/view/View;->getHeight()I

    move-result v9

    sub-int/2addr v7, v9

    invoke-direct {p0}, Lcom/miui/networkassistant/ui/widget/CardsView;->getTvMore()Landroid/widget/TextView;

    move-result-object v9

    invoke-virtual {v9}, Landroid/view/View;->getHeight()I

    move-result v9

    sub-int/2addr v7, v9

    iput v7, v5, Lbk/w;->a:I

    sget-object v9, Lcom/miui/networkassistant/utils/DisplayUtil;->INSTANCE:Lcom/miui/networkassistant/utils/DisplayUtil;

    invoke-virtual {v9, v8}, Lcom/miui/networkassistant/utils/DisplayUtil;->dip2px(F)I

    move-result v8

    add-int/2addr v7, v8

    iget v8, p0, Lcom/miui/networkassistant/ui/widget/CardsView;->mCommonLines:I

    div-int/2addr v7, v8

    iget v8, v5, Lbk/w;->a:I

    int-to-float v8, v8

    int-to-float v7, v7

    mul-float/2addr v7, v4

    add-float/2addr v8, v7

    float-to-int v4, v8

    iput v4, v6, Lbk/w;->a:I

    :goto_5
    const/4 v4, 0x2

    new-array v4, v4, [I

    iget v7, v5, Lbk/w;->a:I

    aput v7, v4, v3

    iget v3, v6, Lbk/w;->a:I

    aput v3, v4, v1

    invoke-static {v4}, Landroid/animation/ValueAnimator;->ofInt([I)Landroid/animation/ValueAnimator;

    move-result-object v1

    iput-object v1, p0, Lcom/miui/networkassistant/ui/widget/CardsView;->mExpandAnimator:Landroid/animation/ValueAnimator;

    if-nez v1, :cond_a

    goto :goto_6

    :cond_a
    const-wide/16 v3, 0xc8

    invoke-virtual {v1, v3, v4}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    :goto_6
    iget-object v1, p0, Lcom/miui/networkassistant/ui/widget/CardsView;->mExpandAnimator:Landroid/animation/ValueAnimator;

    if-eqz v1, :cond_b

    new-instance v3, Lcom/miui/networkassistant/ui/widget/a;

    invoke-direct {v3, p0, v5, v6, p1}, Lcom/miui/networkassistant/ui/widget/a;-><init>(Lcom/miui/networkassistant/ui/widget/CardsView;Lbk/w;Lbk/w;Lbk/w;)V

    invoke-virtual {v1, v3}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    :cond_b
    iget-object p1, p0, Lcom/miui/networkassistant/ui/widget/CardsView;->mExpandAnimator:Landroid/animation/ValueAnimator;

    if-eqz p1, :cond_c

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->start()V

    :cond_c
    invoke-direct {p0}, Lcom/miui/networkassistant/ui/widget/CardsView;->getTvMore()Landroid/widget/TextView;

    move-result-object p0

    invoke-virtual {p0, v2, v2, v0, v2}, Landroid/widget/TextView;->setCompoundDrawables(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method public static synthetic a(Lcom/miui/networkassistant/ui/widget/CardsView;Landroid/view/View;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/miui/networkassistant/ui/widget/CardsView;->_init_$lambda$3(Lcom/miui/networkassistant/ui/widget/CardsView;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic b(Lcom/miui/networkassistant/ui/widget/CardsView;Lbk/w;Lbk/w;Lbk/w;Landroid/animation/ValueAnimator;)V
    .locals 0

    invoke-static {p0, p1, p2, p3, p4}, Lcom/miui/networkassistant/ui/widget/CardsView;->lambda$3$lambda$2(Lcom/miui/networkassistant/ui/widget/CardsView;Lbk/w;Lbk/w;Lbk/w;Landroid/animation/ValueAnimator;)V

    return-void
.end method

.method private final getRvGrid()Lcom/miui/networkassistant/ui/widget/RecyclerViewCompat;
    .locals 2

    iget-object v0, p0, Lcom/miui/networkassistant/ui/widget/CardsView;->rvGrid$delegate:Loj/f;

    invoke-interface {v0}, Loj/f;->getValue()Ljava/lang/Object;

    move-result-object v0

    const-string v1, "<get-rvGrid>(...)"

    invoke-static {v0, v1}, Lbk/m;->d(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Lcom/miui/networkassistant/ui/widget/RecyclerViewCompat;

    return-object v0
.end method

.method private final getTvMore()Landroid/widget/TextView;
    .locals 2

    iget-object v0, p0, Lcom/miui/networkassistant/ui/widget/CardsView;->tvMore$delegate:Loj/f;

    invoke-interface {v0}, Loj/f;->getValue()Ljava/lang/Object;

    move-result-object v0

    const-string v1, "<get-tvMore>(...)"

    invoke-static {v0, v1}, Lbk/m;->d(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Landroid/widget/TextView;

    return-object v0
.end method

.method private final getTvName()Landroid/widget/TextView;
    .locals 2

    iget-object v0, p0, Lcom/miui/networkassistant/ui/widget/CardsView;->tvName$delegate:Loj/f;

    invoke-interface {v0}, Loj/f;->getValue()Ljava/lang/Object;

    move-result-object v0

    const-string v1, "<get-tvName>(...)"

    invoke-static {v0, v1}, Lbk/m;->d(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Landroid/widget/TextView;

    return-object v0
.end method

.method private static final lambda$3$lambda$2(Lcom/miui/networkassistant/ui/widget/CardsView;Lbk/w;Lbk/w;Lbk/w;Landroid/animation/ValueAnimator;)V
    .locals 7

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lbk/m;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "$shrinkHeight"

    invoke-static {p1, v0}, Lbk/m;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "$expandHeight"

    invoke-static {p2, v0}, Lbk/m;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "$activityCount"

    invoke-static {p3, v0}, Lbk/m;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "it"

    invoke-static {p4, v0}, Lbk/m;->e(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p4, p0, Lcom/miui/networkassistant/ui/widget/CardsView;->mExpandAnimator:Landroid/animation/ValueAnimator;

    const/4 v0, 0x0

    if-eqz p4, :cond_0

    invoke-virtual {p4}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p4

    goto :goto_0

    :cond_0
    move-object p4, v0

    :goto_0
    const-string v1, "null cannot be cast to non-null type kotlin.Int"

    invoke-static {p4, v1}, Lbk/m;->c(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p4, Ljava/lang/Integer;

    invoke-virtual {p4}, Ljava/lang/Integer;->intValue()I

    move-result p4

    iget-boolean v1, p0, Lcom/miui/networkassistant/ui/widget/CardsView;->stateExpanded:Z

    if-nez v1, :cond_8

    iget p1, p1, Lbk/w;->a:I

    iget p2, p2, Lbk/w;->a:I

    add-int/2addr p2, p1

    sub-int p4, p2, p4

    if-ne p4, p1, :cond_8

    iget-object p1, p0, Lcom/miui/networkassistant/ui/widget/CardsView;->mAdapter:Lcom/miui/networkassistant/ui/adapter/CardsAdapter;

    const/4 p2, 0x0

    if-eqz p1, :cond_3

    invoke-virtual {p1}, Lcom/miui/networkassistant/ui/adapter/CardsAdapter;->getData()Ljava/util/List;

    move-result-object p1

    if-eqz p1, :cond_3

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    iget-object v1, p0, Lcom/miui/networkassistant/ui/widget/CardsView;->mNormal:Ljava/util/List;

    if-eqz v1, :cond_1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    goto :goto_1

    :cond_1
    move v1, p2

    :goto_1
    iget-object v2, p0, Lcom/miui/networkassistant/ui/widget/CardsView;->mActivityData:Ljava/util/List;

    if-eqz v2, :cond_2

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    goto :goto_2

    :cond_2
    move v2, p2

    :goto_2
    add-int/2addr v1, v2

    if-ne p1, v1, :cond_3

    const/4 p1, 0x1

    goto :goto_3

    :cond_3
    move p1, p2

    :goto_3
    if-eqz p1, :cond_8

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iget-object p1, p0, Lcom/miui/networkassistant/ui/widget/CardsView;->mActivityData:Ljava/util/List;

    if-nez p1, :cond_5

    iget-object p1, p0, Lcom/miui/networkassistant/ui/widget/CardsView;->mNormal:Ljava/util/List;

    if-eqz p1, :cond_4

    iget v0, p0, Lcom/miui/networkassistant/ui/widget/CardsView;->mSpanCount:I

    iget v1, p0, Lcom/miui/networkassistant/ui/widget/CardsView;->mCommonLines:I

    mul-int/2addr v0, v1

    invoke-interface {p1, p2, v0}, Ljava/util/List;->subList(II)Ljava/util/List;

    move-result-object v0

    :cond_4
    invoke-static {v0}, Lbk/m;->b(Ljava/lang/Object;)V

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    goto :goto_5

    :cond_5
    if-eqz p1, :cond_6

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    goto :goto_4

    :cond_6
    move-object p1, v0

    :goto_4
    invoke-static {p1}, Lbk/m;->b(Ljava/lang/Object;)V

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    iput p1, p3, Lbk/w;->a:I

    iget-object v1, p0, Lcom/miui/networkassistant/ui/widget/CardsView;->mNormal:Ljava/util/List;

    if-eqz v1, :cond_7

    iget v0, p0, Lcom/miui/networkassistant/ui/widget/CardsView;->mSpanCount:I

    iget v3, p0, Lcom/miui/networkassistant/ui/widget/CardsView;->mCommonLines:I

    mul-int/2addr v0, v3

    sub-int/2addr v0, p1

    invoke-interface {v1, p2, v0}, Ljava/util/List;->subList(II)Ljava/util/List;

    move-result-object v0

    :cond_7
    invoke-static {v0}, Lbk/m;->b(Ljava/lang/Object;)V

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    iget-object p1, p0, Lcom/miui/networkassistant/ui/widget/CardsView;->mActivityData:Ljava/util/List;

    invoke-static {p1}, Lbk/m;->b(Ljava/lang/Object;)V

    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    :goto_5
    iget-object v1, p0, Lcom/miui/networkassistant/ui/widget/CardsView;->mAdapter:Lcom/miui/networkassistant/ui/adapter/CardsAdapter;

    if-eqz v1, :cond_8

    iget v3, p3, Lbk/w;->a:I

    const/4 v4, 0x0

    const/4 v5, 0x4

    const/4 v6, 0x0

    invoke-static/range {v1 .. v6}, Lcom/miui/networkassistant/ui/adapter/CardsAdapter;->setData$default(Lcom/miui/networkassistant/ui/adapter/CardsAdapter;Ljava/util/List;ILjava/lang/String;ILjava/lang/Object;)V

    :cond_8
    invoke-direct {p0}, Lcom/miui/networkassistant/ui/widget/CardsView;->getRvGrid()Lcom/miui/networkassistant/ui/widget/RecyclerViewCompat;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    iput p4, p1, Landroid/view/ViewGroup$LayoutParams;->height:I

    invoke-direct {p0}, Lcom/miui/networkassistant/ui/widget/CardsView;->getRvGrid()Lcom/miui/networkassistant/ui/widget/RecyclerViewCompat;

    move-result-object p0

    invoke-virtual {p0, p1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method public static synthetic setData$default(Lcom/miui/networkassistant/ui/widget/CardsView;Ljava/util/List;Ljava/util/List;Ljava/lang/String;Ljava/lang/Boolean;ILjava/lang/Object;)V
    .locals 1

    and-int/lit8 p6, p5, 0x4

    const/4 v0, 0x0

    if-eqz p6, :cond_0

    move-object p3, v0

    :cond_0
    and-int/lit8 p5, p5, 0x8

    if-eqz p5, :cond_1

    move-object p4, v0

    :cond_1
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/miui/networkassistant/ui/widget/CardsView;->setData(Ljava/util/List;Ljava/util/List;Ljava/lang/String;Ljava/lang/Boolean;)V

    return-void
.end method

.method public static synthetic setOnCardClick$default(Lcom/miui/networkassistant/ui/widget/CardsView;Lcom/miui/networkassistant/viewholder/CardOnClickListener;ILjava/lang/Object;)Lcom/miui/networkassistant/ui/widget/CardsView;
    .locals 0

    and-int/lit8 p2, p2, 0x1

    if-eqz p2, :cond_0

    const/4 p1, 0x0

    :cond_0
    invoke-virtual {p0, p1}, Lcom/miui/networkassistant/ui/widget/CardsView;->setOnCardClick(Lcom/miui/networkassistant/viewholder/CardOnClickListener;)Lcom/miui/networkassistant/ui/widget/CardsView;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic setOnNoNumCardClick$default(Lcom/miui/networkassistant/ui/widget/CardsView;Lcom/miui/networkassistant/viewholder/NoPhoneNumCardOnClickListener;ILjava/lang/Object;)Lcom/miui/networkassistant/ui/widget/CardsView;
    .locals 0

    and-int/lit8 p2, p2, 0x1

    if-eqz p2, :cond_0

    const/4 p1, 0x0

    :cond_0
    invoke-virtual {p0, p1}, Lcom/miui/networkassistant/ui/widget/CardsView;->setOnNoNumCardClick(Lcom/miui/networkassistant/viewholder/NoPhoneNumCardOnClickListener;)Lcom/miui/networkassistant/ui/widget/CardsView;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic setTitle$default(Lcom/miui/networkassistant/ui/widget/CardsView;Ljava/lang/String;ZLjava/lang/Float;Ljava/lang/Integer;IILjava/lang/Object;)Lcom/miui/networkassistant/ui/widget/CardsView;
    .locals 7

    and-int/lit8 p7, p6, 0x2

    const/4 v0, 0x0

    if-eqz p7, :cond_0

    move v3, v0

    goto :goto_0

    :cond_0
    move v3, p2

    :goto_0
    and-int/lit8 p2, p6, 0x4

    const/4 p7, 0x0

    if-eqz p2, :cond_1

    move-object v4, p7

    goto :goto_1

    :cond_1
    move-object v4, p3

    :goto_1
    and-int/lit8 p2, p6, 0x8

    if-eqz p2, :cond_2

    move-object v5, p7

    goto :goto_2

    :cond_2
    move-object v5, p4

    :goto_2
    and-int/lit8 p2, p6, 0x10

    if-eqz p2, :cond_3

    move v6, v0

    goto :goto_3

    :cond_3
    move v6, p5

    :goto_3
    move-object v1, p0

    move-object v2, p1

    invoke-virtual/range {v1 .. v6}, Lcom/miui/networkassistant/ui/widget/CardsView;->setTitle(Ljava/lang/String;ZLjava/lang/Float;Ljava/lang/Integer;I)Lcom/miui/networkassistant/ui/widget/CardsView;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final disable()V
    .locals 2

    iget-boolean v0, p0, Lcom/miui/networkassistant/ui/widget/CardsView;->mBindToNumber:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/miui/networkassistant/ui/widget/CardsView;->mAdapter:Lcom/miui/networkassistant/ui/adapter/CardsAdapter;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/miui/networkassistant/ui/adapter/CardsAdapter;->disable()V

    :cond_0
    invoke-direct {p0}, Lcom/miui/networkassistant/ui/widget/CardsView;->getTvMore()Landroid/widget/TextView;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setEnabled(Z)V

    :cond_1
    return-void
.end method

.method public final enable()V
    .locals 2

    iget-boolean v0, p0, Lcom/miui/networkassistant/ui/widget/CardsView;->mBindToNumber:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/miui/networkassistant/ui/widget/CardsView;->mAdapter:Lcom/miui/networkassistant/ui/adapter/CardsAdapter;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/miui/networkassistant/ui/adapter/CardsAdapter;->enable()V

    :cond_0
    invoke-direct {p0}, Lcom/miui/networkassistant/ui/widget/CardsView;->getTvMore()Landroid/widget/TextView;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setEnabled(Z)V

    :cond_1
    return-void
.end method

.method public final getMLayoutManager()Landroidx/recyclerview/widget/GridLayoutManager;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object v0, p0, Lcom/miui/networkassistant/ui/widget/CardsView;->mLayoutManager:Landroidx/recyclerview/widget/GridLayoutManager;

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    const-string v0, "mLayoutManager"

    invoke-static {v0}, Lbk/m;->r(Ljava/lang/String;)V

    const/4 v0, 0x0

    return-object v0
.end method

.method public final getSpanAutoFix()Z
    .locals 1

    iget-boolean v0, p0, Lcom/miui/networkassistant/ui/widget/CardsView;->spanAutoFix:Z

    return v0
.end method

.method protected onDetachedFromWindow()V
    .locals 2

    :try_start_0
    sget-object v0, Loj/m;->b:Loj/m$a;

    iget-object v0, p0, Lcom/miui/networkassistant/ui/widget/CardsView;->mExpandAnimator:Landroid/animation/ValueAnimator;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/animation/Animator;->removeAllListeners()V

    :cond_0
    iget-object v0, p0, Lcom/miui/networkassistant/ui/widget/CardsView;->mExpandAnimator:Landroid/animation/ValueAnimator;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    sget-object v0, Loj/t;->a:Loj/t;

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    invoke-static {v0}, Loj/m;->b(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception v0

    sget-object v1, Loj/m;->b:Loj/m$a;

    invoke-static {v0}, Loj/n;->a(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Loj/m;->b(Ljava/lang/Object;)Ljava/lang/Object;

    :goto_1
    invoke-super {p0}, Landroid/widget/LinearLayout;->onDetachedFromWindow()V

    return-void
.end method

.method public final refreshData()V
    .locals 7

    iget v0, p0, Lcom/miui/networkassistant/ui/widget/CardsView;->originSpanCount:I

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0c0011

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    add-int/2addr v0, v1

    invoke-static {}, Lx4/t;->r()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-boolean v1, p0, Lcom/miui/networkassistant/ui/widget/CardsView;->spanAutoFix:Z

    if-eqz v1, :cond_0

    if-lez v0, :cond_0

    goto :goto_0

    :cond_0
    iget v0, p0, Lcom/miui/networkassistant/ui/widget/CardsView;->originSpanCount:I

    :goto_0
    iput v0, p0, Lcom/miui/networkassistant/ui/widget/CardsView;->mSpanCount:I

    invoke-virtual {p0}, Lcom/miui/networkassistant/ui/widget/CardsView;->getMLayoutManager()Landroidx/recyclerview/widget/GridLayoutManager;

    move-result-object v0

    iget v1, p0, Lcom/miui/networkassistant/ui/widget/CardsView;->mSpanCount:I

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/GridLayoutManager;->s(I)V

    iget-object v0, p0, Lcom/miui/networkassistant/ui/widget/CardsView;->mNormal:Ljava/util/List;

    if-eqz v0, :cond_d

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    iget-object v1, p0, Lcom/miui/networkassistant/ui/widget/CardsView;->mActivityData:Ljava/util/List;

    const/4 v2, 0x0

    if-eqz v1, :cond_1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    goto :goto_1

    :cond_1
    move v1, v2

    :goto_1
    add-int/2addr v0, v1

    invoke-direct {p0}, Lcom/miui/networkassistant/ui/widget/CardsView;->getTvMore()Landroid/widget/TextView;

    move-result-object v1

    iget v3, p0, Lcom/miui/networkassistant/ui/widget/CardsView;->mCommonLines:I

    iget v4, p0, Lcom/miui/networkassistant/ui/widget/CardsView;->mSpanCount:I

    mul-int/2addr v3, v4

    if-le v0, v3, :cond_2

    move v0, v2

    goto :goto_2

    :cond_2
    const/4 v0, 0x4

    :goto_2
    invoke-virtual {v1, v0}, Landroid/view/View;->setVisibility(I)V

    invoke-direct {p0}, Lcom/miui/networkassistant/ui/widget/CardsView;->getTvMore()Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-nez v0, :cond_3

    invoke-direct {p0}, Lcom/miui/networkassistant/ui/widget/CardsView;->getTvMore()Landroid/widget/TextView;

    move-result-object v0

    const/16 v1, 0x3c

    const/16 v3, 0x46

    invoke-virtual {v0, v2, v1, v2, v3}, Landroid/widget/TextView;->setPadding(IIII)V

    :cond_3
    invoke-direct {p0}, Lcom/miui/networkassistant/ui/widget/CardsView;->getTvMore()Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-boolean v3, p0, Lcom/miui/networkassistant/ui/widget/CardsView;->stateExpanded:Z

    if-nez v3, :cond_4

    const v3, 0x7f080477

    goto :goto_3

    :cond_4
    const v3, 0x7f080478

    :goto_3
    invoke-virtual {v1, v3}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    const/4 v3, 0x0

    if-eqz v1, :cond_5

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v4

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v5

    invoke-virtual {v1, v2, v2, v4, v5}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    sget-object v4, Loj/t;->a:Loj/t;

    goto :goto_4

    :cond_5
    move-object v1, v3

    :goto_4
    invoke-virtual {v0, v3, v3, v1, v3}, Landroid/widget/TextView;->setCompoundDrawables(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iget-boolean v1, p0, Lcom/miui/networkassistant/ui/widget/CardsView;->stateExpanded:Z

    if-eqz v1, :cond_6

    const/16 v1, 0x64

    goto :goto_5

    :cond_6
    iget v1, p0, Lcom/miui/networkassistant/ui/widget/CardsView;->mCommonLines:I

    :goto_5
    iget-object v4, p0, Lcom/miui/networkassistant/ui/widget/CardsView;->mActivityData:Ljava/util/List;

    if-nez v4, :cond_8

    iget-object v3, p0, Lcom/miui/networkassistant/ui/widget/CardsView;->mNormal:Ljava/util/List;

    if-eqz v3, :cond_c

    iget v4, p0, Lcom/miui/networkassistant/ui/widget/CardsView;->mSpanCount:I

    mul-int/2addr v4, v1

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v1

    if-le v1, v4, :cond_7

    invoke-interface {v3, v2, v4}, Ljava/util/List;->subList(II)Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    goto :goto_7

    :cond_7
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    goto :goto_7

    :cond_8
    if-eqz v4, :cond_9

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    :cond_9
    invoke-static {v3}, Lbk/m;->b(Ljava/lang/Object;)V

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    iget-object v4, p0, Lcom/miui/networkassistant/ui/widget/CardsView;->mNormal:Ljava/util/List;

    if-eqz v4, :cond_b

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v5

    iget v6, p0, Lcom/miui/networkassistant/ui/widget/CardsView;->mSpanCount:I

    mul-int/2addr v6, v1

    sub-int/2addr v6, v3

    if-le v5, v6, :cond_a

    invoke-interface {v4, v2, v6}, Ljava/util/List;->subList(II)Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    goto :goto_6

    :cond_a
    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    :cond_b
    :goto_6
    iget-object v1, p0, Lcom/miui/networkassistant/ui/widget/CardsView;->mActivityData:Ljava/util/List;

    invoke-static {v1}, Lbk/m;->b(Ljava/lang/Object;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    move v2, v3

    :cond_c
    :goto_7
    iget-object v1, p0, Lcom/miui/networkassistant/ui/widget/CardsView;->mAdapter:Lcom/miui/networkassistant/ui/adapter/CardsAdapter;

    if-eqz v1, :cond_d

    iget-object v3, p0, Lcom/miui/networkassistant/ui/widget/CardsView;->mNotice:Ljava/lang/String;

    invoke-virtual {v1, v0, v2, v3}, Lcom/miui/networkassistant/ui/adapter/CardsAdapter;->setData(Ljava/util/List;ILjava/lang/String;)V

    :cond_d
    return-void
.end method

.method public final setActBgId(I)Lcom/miui/networkassistant/ui/widget/CardsView;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object v0, p0, Lcom/miui/networkassistant/ui/widget/CardsView;->mAdapter:Lcom/miui/networkassistant/ui/adapter/CardsAdapter;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lcom/miui/networkassistant/ui/adapter/CardsAdapter;->setActBgId(I)V

    :cond_0
    return-object p0
.end method

.method public final setBgId(I)V
    .locals 1

    iget-object v0, p0, Lcom/miui/networkassistant/ui/widget/CardsView;->mAdapter:Lcom/miui/networkassistant/ui/adapter/CardsAdapter;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lcom/miui/networkassistant/ui/adapter/CardsAdapter;->setBgId(I)V

    :cond_0
    return-void
.end method

.method public final setBindToNumber(Z)Lcom/miui/networkassistant/ui/widget/CardsView;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iput-boolean p1, p0, Lcom/miui/networkassistant/ui/widget/CardsView;->mBindToNumber:Z

    return-object p0
.end method

.method public final setCommonLines(I)Lcom/miui/networkassistant/ui/widget/CardsView;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iput p1, p0, Lcom/miui/networkassistant/ui/widget/CardsView;->mCommonLines:I

    return-object p0
.end method

.method public final setData(Ljava/util/List;Ljava/util/List;Ljava/lang/String;Ljava/lang/Boolean;)V
    .locals 0
    .param p1    # Ljava/util/List;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p2    # Ljava/util/List;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p3    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p4    # Ljava/lang/Boolean;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/miui/networkassistant/ui/bean/CardSData;",
            ">;",
            "Ljava/util/List<",
            "Lcom/miui/networkassistant/ui/bean/CardSData;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/lang/Boolean;",
            ")V"
        }
    .end annotation

    iput-object p1, p0, Lcom/miui/networkassistant/ui/widget/CardsView;->mNormal:Ljava/util/List;

    iput-object p2, p0, Lcom/miui/networkassistant/ui/widget/CardsView;->mActivityData:Ljava/util/List;

    iput-object p3, p0, Lcom/miui/networkassistant/ui/widget/CardsView;->mNotice:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/miui/networkassistant/ui/widget/CardsView;->refreshData()V

    return-void
.end method

.method public final setItemColor(I)Lcom/miui/networkassistant/ui/widget/CardsView;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object v0, p0, Lcom/miui/networkassistant/ui/widget/CardsView;->mAdapter:Lcom/miui/networkassistant/ui/adapter/CardsAdapter;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lcom/miui/networkassistant/ui/adapter/CardsAdapter;->setItemColor(I)V

    :cond_0
    return-object p0
.end method

.method public final setItemDisableColor(I)Lcom/miui/networkassistant/ui/widget/CardsView;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object v0, p0, Lcom/miui/networkassistant/ui/widget/CardsView;->mAdapter:Lcom/miui/networkassistant/ui/adapter/CardsAdapter;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lcom/miui/networkassistant/ui/adapter/CardsAdapter;->setItemDisableColor(I)V

    :cond_0
    return-object p0
.end method

.method public final setMLayoutManager(Landroidx/recyclerview/widget/GridLayoutManager;)V
    .locals 1
    .param p1    # Landroidx/recyclerview/widget/GridLayoutManager;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lbk/m;->e(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/miui/networkassistant/ui/widget/CardsView;->mLayoutManager:Landroidx/recyclerview/widget/GridLayoutManager;

    return-void
.end method

.method public final setOnCardClick(Lcom/miui/networkassistant/viewholder/CardOnClickListener;)Lcom/miui/networkassistant/ui/widget/CardsView;
    .locals 1
    .param p1    # Lcom/miui/networkassistant/viewholder/CardOnClickListener;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object v0, p0, Lcom/miui/networkassistant/ui/widget/CardsView;->mAdapter:Lcom/miui/networkassistant/ui/adapter/CardsAdapter;

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {v0, p1}, Lcom/miui/networkassistant/ui/adapter/CardsAdapter;->setCardOnClickListener(Lcom/miui/networkassistant/viewholder/CardOnClickListener;)V

    :goto_0
    return-object p0
.end method

.method public final setOnNoNumCardClick(Lcom/miui/networkassistant/viewholder/NoPhoneNumCardOnClickListener;)Lcom/miui/networkassistant/ui/widget/CardsView;
    .locals 1
    .param p1    # Lcom/miui/networkassistant/viewholder/NoPhoneNumCardOnClickListener;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object v0, p0, Lcom/miui/networkassistant/ui/widget/CardsView;->mAdapter:Lcom/miui/networkassistant/ui/adapter/CardsAdapter;

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {v0, p1}, Lcom/miui/networkassistant/ui/adapter/CardsAdapter;->setNoPhoneNumListener(Lcom/miui/networkassistant/viewholder/NoPhoneNumCardOnClickListener;)V

    :goto_0
    return-object p0
.end method

.method public final setPhoneNumber(Ljava/lang/String;)Lcom/miui/networkassistant/ui/widget/CardsView;
    .locals 1
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object v0, p0, Lcom/miui/networkassistant/ui/widget/CardsView;->mAdapter:Lcom/miui/networkassistant/ui/adapter/CardsAdapter;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lcom/miui/networkassistant/ui/adapter/CardsAdapter;->setPhoneNumber(Ljava/lang/String;)V

    :cond_0
    return-object p0
.end method

.method public final setPolicy(ZLjava/lang/String;)Lcom/miui/networkassistant/ui/widget/CardsView;
    .locals 1
    .param p2    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object v0, p0, Lcom/miui/networkassistant/ui/widget/CardsView;->mAdapter:Lcom/miui/networkassistant/ui/adapter/CardsAdapter;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lcom/miui/networkassistant/ui/adapter/CardsAdapter;->setAgree(Z)V

    :cond_0
    if-eqz p2, :cond_1

    iget-object p1, p0, Lcom/miui/networkassistant/ui/widget/CardsView;->mAdapter:Lcom/miui/networkassistant/ui/adapter/CardsAdapter;

    if-eqz p1, :cond_1

    invoke-virtual {p1, p2}, Lcom/miui/networkassistant/ui/adapter/CardsAdapter;->setText(Ljava/lang/String;)V

    :cond_1
    return-object p0
.end method

.method public final setSpanAutoFix(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/miui/networkassistant/ui/widget/CardsView;->spanAutoFix:Z

    return-void
.end method

.method public final setTitle(Ljava/lang/String;ZLjava/lang/Float;Ljava/lang/Integer;I)Lcom/miui/networkassistant/ui/widget/CardsView;
    .locals 2
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p3    # Ljava/lang/Float;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p4    # Ljava/lang/Integer;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string v0, "title"

    invoke-static {p1, v0}, Lbk/m;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/miui/networkassistant/ui/widget/CardsView;->getTvName()Landroid/widget/TextView;

    move-result-object p1

    const/16 p2, 0x8

    invoke-virtual {p1, p2}, Landroid/view/View;->setVisibility(I)V

    return-object p0

    :cond_0
    invoke-direct {p0}, Lcom/miui/networkassistant/ui/widget/CardsView;->getTvName()Landroid/widget/TextView;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    invoke-direct {p0}, Lcom/miui/networkassistant/ui/widget/CardsView;->getTvName()Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const/4 p1, 0x1

    if-eqz p3, :cond_1

    invoke-virtual {p3}, Ljava/lang/Number;->floatValue()F

    move-result p3

    invoke-direct {p0}, Lcom/miui/networkassistant/ui/widget/CardsView;->getTvName()Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0, p1, p3}, Landroid/widget/TextView;->setTextSize(IF)V

    :cond_1
    if-eqz p4, :cond_2

    invoke-virtual {p4}, Ljava/lang/Number;->intValue()I

    move-result p3

    invoke-direct {p0}, Lcom/miui/networkassistant/ui/widget/CardsView;->getTvName()Landroid/widget/TextView;

    move-result-object p4

    invoke-virtual {p4, p3}, Landroid/widget/TextView;->setTextColor(I)V

    :cond_2
    if-eqz p2, :cond_3

    invoke-direct {p0}, Lcom/miui/networkassistant/ui/widget/CardsView;->getTvName()Landroid/widget/TextView;

    move-result-object p2

    sget-object p3, Landroid/graphics/Typeface;->DEFAULT_BOLD:Landroid/graphics/Typeface;

    invoke-virtual {p2, p3}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    :cond_3
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object p2

    invoke-static {p2}, Landroid/text/TextUtils;->getLayoutDirectionFromLocale(Ljava/util/Locale;)I

    move-result p2

    if-ne p2, p1, :cond_4

    invoke-direct {p0}, Lcom/miui/networkassistant/ui/widget/CardsView;->getTvName()Landroid/widget/TextView;

    move-result-object p1

    invoke-direct {p0}, Lcom/miui/networkassistant/ui/widget/CardsView;->getTvName()Landroid/widget/TextView;

    move-result-object p2

    invoke-virtual {p2}, Landroid/view/View;->getPaddingLeft()I

    move-result p2

    invoke-direct {p0}, Lcom/miui/networkassistant/ui/widget/CardsView;->getTvName()Landroid/widget/TextView;

    move-result-object p3

    invoke-virtual {p3}, Landroid/view/View;->getPaddingTop()I

    move-result p3

    invoke-direct {p0}, Lcom/miui/networkassistant/ui/widget/CardsView;->getTvName()Landroid/widget/TextView;

    move-result-object p4

    invoke-virtual {p4}, Landroid/view/View;->getPaddingBottom()I

    move-result p4

    invoke-virtual {p1, p2, p3, p5, p4}, Landroid/widget/TextView;->setPadding(IIII)V

    goto :goto_0

    :cond_4
    invoke-direct {p0}, Lcom/miui/networkassistant/ui/widget/CardsView;->getTvName()Landroid/widget/TextView;

    move-result-object p1

    invoke-direct {p0}, Lcom/miui/networkassistant/ui/widget/CardsView;->getTvName()Landroid/widget/TextView;

    move-result-object p2

    invoke-virtual {p2}, Landroid/view/View;->getPaddingTop()I

    move-result p2

    invoke-direct {p0}, Lcom/miui/networkassistant/ui/widget/CardsView;->getTvName()Landroid/widget/TextView;

    move-result-object p3

    invoke-virtual {p3}, Landroid/view/View;->getPaddingRight()I

    move-result p3

    invoke-direct {p0}, Lcom/miui/networkassistant/ui/widget/CardsView;->getTvName()Landroid/widget/TextView;

    move-result-object p4

    invoke-virtual {p4}, Landroid/view/View;->getPaddingBottom()I

    move-result p4

    invoke-virtual {p1, p5, p2, p3, p4}, Landroid/widget/TextView;->setPadding(IIII)V

    :goto_0
    return-object p0
.end method

.method public final setTitleTextColor(I)V
    .locals 1

    invoke-direct {p0}, Lcom/miui/networkassistant/ui/widget/CardsView;->getTvName()Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setTextColor(I)V

    return-void
.end method

.method public final setType(I)Lcom/miui/networkassistant/ui/widget/CardsView;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object v0, p0, Lcom/miui/networkassistant/ui/widget/CardsView;->mAdapter:Lcom/miui/networkassistant/ui/adapter/CardsAdapter;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lcom/miui/networkassistant/ui/adapter/CardsAdapter;->setType(I)V

    :cond_0
    return-object p0
.end method

.method public final setValid(Z)Lcom/miui/networkassistant/ui/widget/CardsView;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object v0, p0, Lcom/miui/networkassistant/ui/widget/CardsView;->mAdapter:Lcom/miui/networkassistant/ui/adapter/CardsAdapter;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lcom/miui/networkassistant/ui/adapter/CardsAdapter;->setValid(Z)V

    :cond_0
    return-object p0
.end method
