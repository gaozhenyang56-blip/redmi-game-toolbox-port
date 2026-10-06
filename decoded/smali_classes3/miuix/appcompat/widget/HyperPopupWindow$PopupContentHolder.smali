.class public Lmiuix/appcompat/widget/HyperPopupWindow$PopupContentHolder;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmiuix/appcompat/widget/HyperPopupWindow;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4
    name = "PopupContentHolder"
.end annotation


# instance fields
.field private mAdapter:Landroid/widget/ListAdapter;

.field private mAnchorHeight:I

.field private mAnchorPaddingBottom:I

.field private mAnchorPaddingTop:I

.field private final mBoundsRect:Landroid/graphics/Rect;

.field private mContentView:Lmiuix/smooth/SmoothFrameLayout2;

.field private mContext:Landroid/content/Context;

.field private mHeaderView:Landroid/view/View;

.field private mHeaderViewHeight:I

.field private mHeaderViewPaddingBottom:I

.field private mHeaderViewPaddingTop:I

.field private mIsInAnimation:Z

.field private mListView:Landroid/widget/ListView;

.field private mMinWidth:I

.field private mOnItemClickListener:Landroid/widget/AdapterView$OnItemClickListener;

.field private mPopupWindowSpec:Lmiuix/popupwidget/internal/strategy/PopupWindowSpec;

.field private mPopupWindowStrategy:Lmiuix/popupwidget/internal/strategy/IPopupWindowStrategy;

.field private mViewBounds:Lmiuix/appcompat/widget/HyperPopupWindow$ViewBounds;

.field final synthetic this$0:Lmiuix/appcompat/widget/HyperPopupWindow;


# direct methods
.method public constructor <init>(Lmiuix/appcompat/widget/HyperPopupWindow;Landroid/content/Context;Landroid/widget/ListAdapter;Lmiuix/popupwidget/internal/strategy/IPopupWindowStrategy;Lmiuix/popupwidget/internal/strategy/PopupWindowSpec;)V
    .locals 0

    iput-object p1, p0, Lmiuix/appcompat/widget/HyperPopupWindow$PopupContentHolder;->this$0:Lmiuix/appcompat/widget/HyperPopupWindow;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p1, -0x1

    iput p1, p0, Lmiuix/appcompat/widget/HyperPopupWindow$PopupContentHolder;->mMinWidth:I

    new-instance p1, Landroid/graphics/Rect;

    invoke-direct {p1}, Landroid/graphics/Rect;-><init>()V

    iput-object p1, p0, Lmiuix/appcompat/widget/HyperPopupWindow$PopupContentHolder;->mBoundsRect:Landroid/graphics/Rect;

    const/4 p1, 0x0

    iput-boolean p1, p0, Lmiuix/appcompat/widget/HyperPopupWindow$PopupContentHolder;->mIsInAnimation:Z

    iput-object p2, p0, Lmiuix/appcompat/widget/HyperPopupWindow$PopupContentHolder;->mContext:Landroid/content/Context;

    iput-object p3, p0, Lmiuix/appcompat/widget/HyperPopupWindow$PopupContentHolder;->mAdapter:Landroid/widget/ListAdapter;

    iput-object p4, p0, Lmiuix/appcompat/widget/HyperPopupWindow$PopupContentHolder;->mPopupWindowStrategy:Lmiuix/popupwidget/internal/strategy/IPopupWindowStrategy;

    iput-object p5, p0, Lmiuix/appcompat/widget/HyperPopupWindow$PopupContentHolder;->mPopupWindowSpec:Lmiuix/popupwidget/internal/strategy/PopupWindowSpec;

    return-void
.end method

.method public constructor <init>(Lmiuix/appcompat/widget/HyperPopupWindow;Landroid/content/Context;Lmiuix/popupwidget/internal/strategy/IPopupWindowStrategy;)V
    .locals 0

    iput-object p1, p0, Lmiuix/appcompat/widget/HyperPopupWindow$PopupContentHolder;->this$0:Lmiuix/appcompat/widget/HyperPopupWindow;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p1, -0x1

    iput p1, p0, Lmiuix/appcompat/widget/HyperPopupWindow$PopupContentHolder;->mMinWidth:I

    new-instance p1, Landroid/graphics/Rect;

    invoke-direct {p1}, Landroid/graphics/Rect;-><init>()V

    iput-object p1, p0, Lmiuix/appcompat/widget/HyperPopupWindow$PopupContentHolder;->mBoundsRect:Landroid/graphics/Rect;

    const/4 p1, 0x0

    iput-boolean p1, p0, Lmiuix/appcompat/widget/HyperPopupWindow$PopupContentHolder;->mIsInAnimation:Z

    iput-object p2, p0, Lmiuix/appcompat/widget/HyperPopupWindow$PopupContentHolder;->mContext:Landroid/content/Context;

    iput-object p3, p0, Lmiuix/appcompat/widget/HyperPopupWindow$PopupContentHolder;->mPopupWindowStrategy:Lmiuix/popupwidget/internal/strategy/IPopupWindowStrategy;

    return-void
.end method

.method public static synthetic a(Lmiuix/appcompat/widget/HyperPopupWindow$PopupContentHolder;Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 0

    invoke-direct/range {p0 .. p5}, Lmiuix/appcompat/widget/HyperPopupWindow$PopupContentHolder;->lambda$inflate$0(Landroid/widget/AdapterView;Landroid/view/View;IJ)V

    return-void
.end method

.method static synthetic access$000(Lmiuix/appcompat/widget/HyperPopupWindow$PopupContentHolder;)Lmiuix/popupwidget/internal/strategy/PopupWindowSpec;
    .locals 0

    iget-object p0, p0, Lmiuix/appcompat/widget/HyperPopupWindow$PopupContentHolder;->mPopupWindowSpec:Lmiuix/popupwidget/internal/strategy/PopupWindowSpec;

    return-object p0
.end method

.method static synthetic access$002(Lmiuix/appcompat/widget/HyperPopupWindow$PopupContentHolder;Lmiuix/popupwidget/internal/strategy/PopupWindowSpec;)Lmiuix/popupwidget/internal/strategy/PopupWindowSpec;
    .locals 0

    iput-object p1, p0, Lmiuix/appcompat/widget/HyperPopupWindow$PopupContentHolder;->mPopupWindowSpec:Lmiuix/popupwidget/internal/strategy/PopupWindowSpec;

    return-object p1
.end method

.method static synthetic access$1000(Lmiuix/appcompat/widget/HyperPopupWindow$PopupContentHolder;)Landroid/graphics/Rect;
    .locals 0

    iget-object p0, p0, Lmiuix/appcompat/widget/HyperPopupWindow$PopupContentHolder;->mBoundsRect:Landroid/graphics/Rect;

    return-object p0
.end method

.method static synthetic access$1100(Lmiuix/appcompat/widget/HyperPopupWindow$PopupContentHolder;)Lmiuix/smooth/SmoothFrameLayout2;
    .locals 0

    iget-object p0, p0, Lmiuix/appcompat/widget/HyperPopupWindow$PopupContentHolder;->mContentView:Lmiuix/smooth/SmoothFrameLayout2;

    return-object p0
.end method

.method static synthetic access$1200(Lmiuix/appcompat/widget/HyperPopupWindow$PopupContentHolder;)Lmiuix/appcompat/widget/HyperPopupWindow$ViewBounds;
    .locals 0

    iget-object p0, p0, Lmiuix/appcompat/widget/HyperPopupWindow$PopupContentHolder;->mViewBounds:Lmiuix/appcompat/widget/HyperPopupWindow$ViewBounds;

    return-object p0
.end method

.method static synthetic access$1300(Lmiuix/appcompat/widget/HyperPopupWindow$PopupContentHolder;)Landroid/view/View;
    .locals 0

    iget-object p0, p0, Lmiuix/appcompat/widget/HyperPopupWindow$PopupContentHolder;->mHeaderView:Landroid/view/View;

    return-object p0
.end method

.method static synthetic access$1302(Lmiuix/appcompat/widget/HyperPopupWindow$PopupContentHolder;Landroid/view/View;)Landroid/view/View;
    .locals 0

    iput-object p1, p0, Lmiuix/appcompat/widget/HyperPopupWindow$PopupContentHolder;->mHeaderView:Landroid/view/View;

    return-object p1
.end method

.method static synthetic access$1400(Lmiuix/appcompat/widget/HyperPopupWindow$PopupContentHolder;)I
    .locals 0

    iget p0, p0, Lmiuix/appcompat/widget/HyperPopupWindow$PopupContentHolder;->mHeaderViewHeight:I

    return p0
.end method

.method static synthetic access$1402(Lmiuix/appcompat/widget/HyperPopupWindow$PopupContentHolder;I)I
    .locals 0

    iput p1, p0, Lmiuix/appcompat/widget/HyperPopupWindow$PopupContentHolder;->mHeaderViewHeight:I

    return p1
.end method

.method static synthetic access$1500(Lmiuix/appcompat/widget/HyperPopupWindow$PopupContentHolder;)I
    .locals 0

    iget p0, p0, Lmiuix/appcompat/widget/HyperPopupWindow$PopupContentHolder;->mAnchorHeight:I

    return p0
.end method

.method static synthetic access$1502(Lmiuix/appcompat/widget/HyperPopupWindow$PopupContentHolder;I)I
    .locals 0

    iput p1, p0, Lmiuix/appcompat/widget/HyperPopupWindow$PopupContentHolder;->mAnchorHeight:I

    return p1
.end method

.method static synthetic access$1600(Lmiuix/appcompat/widget/HyperPopupWindow$PopupContentHolder;)I
    .locals 0

    iget p0, p0, Lmiuix/appcompat/widget/HyperPopupWindow$PopupContentHolder;->mHeaderViewPaddingTop:I

    return p0
.end method

.method static synthetic access$1602(Lmiuix/appcompat/widget/HyperPopupWindow$PopupContentHolder;I)I
    .locals 0

    iput p1, p0, Lmiuix/appcompat/widget/HyperPopupWindow$PopupContentHolder;->mHeaderViewPaddingTop:I

    return p1
.end method

.method static synthetic access$1700(Lmiuix/appcompat/widget/HyperPopupWindow$PopupContentHolder;)I
    .locals 0

    iget p0, p0, Lmiuix/appcompat/widget/HyperPopupWindow$PopupContentHolder;->mAnchorPaddingTop:I

    return p0
.end method

.method static synthetic access$1702(Lmiuix/appcompat/widget/HyperPopupWindow$PopupContentHolder;I)I
    .locals 0

    iput p1, p0, Lmiuix/appcompat/widget/HyperPopupWindow$PopupContentHolder;->mAnchorPaddingTop:I

    return p1
.end method

.method static synthetic access$1800(Lmiuix/appcompat/widget/HyperPopupWindow$PopupContentHolder;)I
    .locals 0

    iget p0, p0, Lmiuix/appcompat/widget/HyperPopupWindow$PopupContentHolder;->mHeaderViewPaddingBottom:I

    return p0
.end method

.method static synthetic access$1802(Lmiuix/appcompat/widget/HyperPopupWindow$PopupContentHolder;I)I
    .locals 0

    iput p1, p0, Lmiuix/appcompat/widget/HyperPopupWindow$PopupContentHolder;->mHeaderViewPaddingBottom:I

    return p1
.end method

.method static synthetic access$1900(Lmiuix/appcompat/widget/HyperPopupWindow$PopupContentHolder;)I
    .locals 0

    iget p0, p0, Lmiuix/appcompat/widget/HyperPopupWindow$PopupContentHolder;->mAnchorPaddingBottom:I

    return p0
.end method

.method static synthetic access$1902(Lmiuix/appcompat/widget/HyperPopupWindow$PopupContentHolder;I)I
    .locals 0

    iput p1, p0, Lmiuix/appcompat/widget/HyperPopupWindow$PopupContentHolder;->mAnchorPaddingBottom:I

    return p1
.end method

.method static synthetic access$200(Lmiuix/appcompat/widget/HyperPopupWindow$PopupContentHolder;)Landroid/widget/ListAdapter;
    .locals 0

    iget-object p0, p0, Lmiuix/appcompat/widget/HyperPopupWindow$PopupContentHolder;->mAdapter:Landroid/widget/ListAdapter;

    return-object p0
.end method

.method static synthetic access$2000(Lmiuix/appcompat/widget/HyperPopupWindow$PopupContentHolder;)Landroid/widget/ListView;
    .locals 0

    iget-object p0, p0, Lmiuix/appcompat/widget/HyperPopupWindow$PopupContentHolder;->mListView:Landroid/widget/ListView;

    return-object p0
.end method

.method static synthetic access$2100(Lmiuix/appcompat/widget/HyperPopupWindow$PopupContentHolder;)Z
    .locals 0

    iget-boolean p0, p0, Lmiuix/appcompat/widget/HyperPopupWindow$PopupContentHolder;->mIsInAnimation:Z

    return p0
.end method

.method static synthetic access$2102(Lmiuix/appcompat/widget/HyperPopupWindow$PopupContentHolder;Z)Z
    .locals 0

    iput-boolean p1, p0, Lmiuix/appcompat/widget/HyperPopupWindow$PopupContentHolder;->mIsInAnimation:Z

    return p1
.end method

.method static synthetic access$2700(Lmiuix/appcompat/widget/HyperPopupWindow$PopupContentHolder;)Lmiuix/popupwidget/internal/strategy/IPopupWindowStrategy;
    .locals 0

    iget-object p0, p0, Lmiuix/appcompat/widget/HyperPopupWindow$PopupContentHolder;->mPopupWindowStrategy:Lmiuix/popupwidget/internal/strategy/IPopupWindowStrategy;

    return-object p0
.end method

.method private synthetic lambda$inflate$0(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 7

    iget-object v0, p0, Lmiuix/appcompat/widget/HyperPopupWindow$PopupContentHolder;->mListView:Landroid/widget/ListView;

    invoke-virtual {v0}, Landroid/widget/ListView;->getHeaderViewsCount()I

    move-result v0

    sub-int v4, p3, v0

    iget-object p3, p0, Lmiuix/appcompat/widget/HyperPopupWindow$PopupContentHolder;->mOnItemClickListener:Landroid/widget/AdapterView$OnItemClickListener;

    if-eqz p3, :cond_0

    if-ltz v4, :cond_0

    iget-object p3, p0, Lmiuix/appcompat/widget/HyperPopupWindow$PopupContentHolder;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {p3}, Landroid/widget/Adapter;->getCount()I

    move-result p3

    if-ge v4, p3, :cond_0

    iget-object v1, p0, Lmiuix/appcompat/widget/HyperPopupWindow$PopupContentHolder;->mOnItemClickListener:Landroid/widget/AdapterView$OnItemClickListener;

    move-object v2, p1

    move-object v3, p2

    move-wide v5, p4

    invoke-interface/range {v1 .. v6}, Landroid/widget/AdapterView$OnItemClickListener;->onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V

    :cond_0
    return-void
.end method


# virtual methods
.method inflate()V
    .locals 3

    iget-object v0, p0, Lmiuix/appcompat/widget/HyperPopupWindow$PopupContentHolder;->mContentView:Lmiuix/smooth/SmoothFrameLayout2;

    if-nez v0, :cond_1

    iget-object v0, p0, Lmiuix/appcompat/widget/HyperPopupWindow$PopupContentHolder;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    sget v1, Lmiuix/appcompat/R$layout;->miuix_appcompat_hyper_popup_list:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lmiuix/smooth/SmoothFrameLayout2;

    iput-object v0, p0, Lmiuix/appcompat/widget/HyperPopupWindow$PopupContentHolder;->mContentView:Lmiuix/smooth/SmoothFrameLayout2;

    iget-object v0, p0, Lmiuix/appcompat/widget/HyperPopupWindow$PopupContentHolder;->mContext:Landroid/content/Context;

    sget v1, Lmiuix/appcompat/R$attr;->immersionWindowBackground:I

    invoke-static {v0, v1}, Lpl/d;->h(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v1, p0, Lmiuix/appcompat/widget/HyperPopupWindow$PopupContentHolder;->mContentView:Lmiuix/smooth/SmoothFrameLayout2;

    invoke-virtual {v1, v0}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    :cond_0
    iget-object v0, p0, Lmiuix/appcompat/widget/HyperPopupWindow$PopupContentHolder;->mContentView:Lmiuix/smooth/SmoothFrameLayout2;

    sget v1, Lmiuix/appcompat/R$id;->spring_back:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iget-object v1, p0, Lmiuix/appcompat/widget/HyperPopupWindow$PopupContentHolder;->mContentView:Lmiuix/smooth/SmoothFrameLayout2;

    new-instance v2, Lmiuix/appcompat/widget/HyperPopupWindow$PopupContentHolder$1;

    invoke-direct {v2, p0, v0}, Lmiuix/appcompat/widget/HyperPopupWindow$PopupContentHolder$1;-><init>(Lmiuix/appcompat/widget/HyperPopupWindow$PopupContentHolder;Landroid/view/View;)V

    invoke-virtual {v1, v2}, Landroid/view/View;->addOnLayoutChangeListener(Landroid/view/View$OnLayoutChangeListener;)V

    :cond_1
    iget-object v0, p0, Lmiuix/appcompat/widget/HyperPopupWindow$PopupContentHolder;->mContentView:Lmiuix/smooth/SmoothFrameLayout2;

    const v1, 0x102000a

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    iput-object v0, p0, Lmiuix/appcompat/widget/HyperPopupWindow$PopupContentHolder;->mListView:Landroid/widget/ListView;

    if-eqz v0, :cond_2

    new-instance v1, Lmiuix/appcompat/widget/HyperPopupWindow$PopupContentHolder$2;

    invoke-direct {v1, p0}, Lmiuix/appcompat/widget/HyperPopupWindow$PopupContentHolder$2;-><init>(Lmiuix/appcompat/widget/HyperPopupWindow$PopupContentHolder;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    iget-object v0, p0, Lmiuix/appcompat/widget/HyperPopupWindow$PopupContentHolder;->mListView:Landroid/widget/ListView;

    new-instance v1, Lmiuix/appcompat/widget/d;

    invoke-direct {v1, p0}, Lmiuix/appcompat/widget/d;-><init>(Lmiuix/appcompat/widget/HyperPopupWindow$PopupContentHolder;)V

    invoke-virtual {v0, v1}, Landroid/widget/AdapterView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    iget-object v0, p0, Lmiuix/appcompat/widget/HyperPopupWindow$PopupContentHolder;->mListView:Landroid/widget/ListView;

    iget-object v1, p0, Lmiuix/appcompat/widget/HyperPopupWindow$PopupContentHolder;->mAdapter:Landroid/widget/ListAdapter;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    :cond_2
    return-void
.end method

.method setAdapter(Landroid/widget/ListAdapter;)V
    .locals 0

    iput-object p1, p0, Lmiuix/appcompat/widget/HyperPopupWindow$PopupContentHolder;->mAdapter:Landroid/widget/ListAdapter;

    return-void
.end method

.method setItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V
    .locals 0

    iput-object p1, p0, Lmiuix/appcompat/widget/HyperPopupWindow$PopupContentHolder;->mOnItemClickListener:Landroid/widget/AdapterView$OnItemClickListener;

    return-void
.end method

.method protected setMinWidth(I)V
    .locals 0

    iput p1, p0, Lmiuix/appcompat/widget/HyperPopupWindow$PopupContentHolder;->mMinWidth:I

    return-void
.end method

.method show(Landroid/view/View;Landroid/view/ViewGroup;Landroid/graphics/Rect;Z)Z
    .locals 25

    move-object/from16 v3, p0

    move-object/from16 v0, p2

    move-object/from16 v1, p3

    iget-object v5, v3, Lmiuix/appcompat/widget/HyperPopupWindow$PopupContentHolder;->mPopupWindowSpec:Lmiuix/popupwidget/internal/strategy/PopupWindowSpec;

    iget-object v2, v5, Lmiuix/popupwidget/internal/strategy/PopupWindowSpec;->mAnchorViewBounds:Landroid/graphics/Rect;

    iget-object v4, v3, Lmiuix/appcompat/widget/HyperPopupWindow$PopupContentHolder;->mAdapter:Landroid/widget/ListAdapter;

    iget-object v6, v3, Lmiuix/appcompat/widget/HyperPopupWindow$PopupContentHolder;->mListView:Landroid/widget/ListView;

    iget-object v7, v3, Lmiuix/appcompat/widget/HyperPopupWindow$PopupContentHolder;->mContext:Landroid/content/Context;

    iget v8, v5, Lmiuix/popupwidget/internal/strategy/PopupWindowSpec;->mMaxWidth:I

    iget v9, v3, Lmiuix/appcompat/widget/HyperPopupWindow$PopupContentHolder;->mMinWidth:I

    invoke-static {v4, v6, v7, v8, v9}, Lmiuix/appcompat/widget/HyperPopupWindow;->access$2800(Landroid/widget/ListAdapter;Landroid/view/ViewGroup;Landroid/content/Context;II)[[I

    move-result-object v4

    iput-object v4, v5, Lmiuix/popupwidget/internal/strategy/PopupWindowSpec;->mItemViewBounds:[[I

    iget-object v4, v3, Lmiuix/appcompat/widget/HyperPopupWindow$PopupContentHolder;->mPopupWindowStrategy:Lmiuix/popupwidget/internal/strategy/IPopupWindowStrategy;

    invoke-interface {v4, v5}, Lmiuix/popupwidget/internal/strategy/IPopupWindowStrategy;->measureContentSize(Lmiuix/popupwidget/internal/strategy/PopupWindowSpec;)V

    iget-object v4, v3, Lmiuix/appcompat/widget/HyperPopupWindow$PopupContentHolder;->mPopupWindowStrategy:Lmiuix/popupwidget/internal/strategy/IPopupWindowStrategy;

    invoke-interface {v4, v5}, Lmiuix/popupwidget/internal/strategy/IPopupWindowStrategy;->getXInWindow(Lmiuix/popupwidget/internal/strategy/PopupWindowSpec;)I

    move-result v13

    iget-object v4, v3, Lmiuix/appcompat/widget/HyperPopupWindow$PopupContentHolder;->mPopupWindowStrategy:Lmiuix/popupwidget/internal/strategy/IPopupWindowStrategy;

    invoke-interface {v4, v5}, Lmiuix/popupwidget/internal/strategy/IPopupWindowStrategy;->getYInWindow(Lmiuix/popupwidget/internal/strategy/PopupWindowSpec;)I

    move-result v15

    iget v14, v5, Lmiuix/popupwidget/internal/strategy/PopupWindowSpec;->mFinalPopupWidth:I

    iget v10, v5, Lmiuix/popupwidget/internal/strategy/PopupWindowSpec;->mFinalPopupHeight:I

    iget-object v4, v3, Lmiuix/appcompat/widget/HyperPopupWindow$PopupContentHolder;->mBoundsRect:Landroid/graphics/Rect;

    add-int v12, v13, v14

    add-int v11, v15, v10

    invoke-virtual {v4, v13, v15, v12, v11}, Landroid/graphics/Rect;->set(IIII)V

    iget-object v4, v3, Lmiuix/appcompat/widget/HyperPopupWindow$PopupContentHolder;->this$0:Lmiuix/appcompat/widget/HyperPopupWindow;

    move v6, v13

    move v7, v15

    move v8, v14

    move v9, v10

    invoke-static/range {v4 .. v9}, Lmiuix/appcompat/widget/HyperPopupWindow;->access$2900(Lmiuix/appcompat/widget/HyperPopupWindow;Lmiuix/popupwidget/internal/strategy/PopupWindowSpec;IIII)V

    const/4 v9, 0x1

    if-nez p4, :cond_2

    iget-object v4, v3, Lmiuix/appcompat/widget/HyperPopupWindow$PopupContentHolder;->mContentView:Lmiuix/smooth/SmoothFrameLayout2;

    div-int/lit8 v12, v12, 0x2

    invoke-virtual {v2}, Landroid/graphics/Rect;->centerX()I

    move-result v5

    const/4 v6, 0x0

    if-le v12, v5, :cond_0

    move v5, v6

    goto :goto_0

    :cond_0
    int-to-float v5, v14

    :goto_0
    invoke-virtual {v4, v5}, Landroid/view/View;->setPivotX(F)V

    iget-object v4, v3, Lmiuix/appcompat/widget/HyperPopupWindow$PopupContentHolder;->mContentView:Lmiuix/smooth/SmoothFrameLayout2;

    iget v2, v2, Landroid/graphics/Rect;->top:I

    if-le v15, v2, :cond_1

    goto :goto_1

    :cond_1
    int-to-float v6, v10

    :goto_1
    invoke-virtual {v4, v6}, Landroid/view/View;->setPivotY(F)V

    new-instance v2, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v2, v14, v10}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    iget v4, v1, Landroid/graphics/Rect;->left:I

    sub-int/2addr v13, v4

    iput v13, v2, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    iget v1, v1, Landroid/graphics/Rect;->top:I

    sub-int/2addr v15, v1

    iput v15, v2, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    iget-object v1, v3, Lmiuix/appcompat/widget/HyperPopupWindow$PopupContentHolder;->mContentView:Lmiuix/smooth/SmoothFrameLayout2;

    invoke-virtual {v1, v2}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v1, v3, Lmiuix/appcompat/widget/HyperPopupWindow$PopupContentHolder;->mContentView:Lmiuix/smooth/SmoothFrameLayout2;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    move/from16 v20, v9

    goto/16 :goto_2

    :cond_2
    iget-object v4, v3, Lmiuix/appcompat/widget/HyperPopupWindow$PopupContentHolder;->this$0:Lmiuix/appcompat/widget/HyperPopupWindow;

    invoke-static {v4}, Lmiuix/appcompat/widget/HyperPopupWindow;->access$100(Lmiuix/appcompat/widget/HyperPopupWindow;)Lmiuix/appcompat/widget/HyperPopupWindow$PopupContentHolder;

    move-result-object v4

    iget-object v5, v4, Lmiuix/appcompat/widget/HyperPopupWindow$PopupContentHolder;->mBoundsRect:Landroid/graphics/Rect;

    iget-object v4, v3, Lmiuix/appcompat/widget/HyperPopupWindow$PopupContentHolder;->mBoundsRect:Landroid/graphics/Rect;

    invoke-static {v5, v4}, Lmiuix/appcompat/widget/HyperPopupWindow;->access$3000(Landroid/graphics/Rect;Landroid/graphics/Rect;)Landroid/graphics/Rect;

    move-result-object v7

    iget-object v4, v3, Lmiuix/appcompat/widget/HyperPopupWindow$PopupContentHolder;->this$0:Lmiuix/appcompat/widget/HyperPopupWindow;

    new-instance v6, Lmiuix/appcompat/widget/HyperPopupWindow$ClipLayout;

    iget-object v8, v3, Lmiuix/appcompat/widget/HyperPopupWindow$PopupContentHolder;->this$0:Lmiuix/appcompat/widget/HyperPopupWindow;

    iget-object v10, v3, Lmiuix/appcompat/widget/HyperPopupWindow$PopupContentHolder;->mContext:Landroid/content/Context;

    invoke-direct {v6, v8, v10}, Lmiuix/appcompat/widget/HyperPopupWindow$ClipLayout;-><init>(Lmiuix/appcompat/widget/HyperPopupWindow;Landroid/content/Context;)V

    invoke-static {v4, v6}, Lmiuix/appcompat/widget/HyperPopupWindow;->access$2202(Lmiuix/appcompat/widget/HyperPopupWindow;Lmiuix/appcompat/widget/HyperPopupWindow$ClipLayout;)Lmiuix/appcompat/widget/HyperPopupWindow$ClipLayout;

    iget-object v4, v3, Lmiuix/appcompat/widget/HyperPopupWindow$PopupContentHolder;->this$0:Lmiuix/appcompat/widget/HyperPopupWindow;

    invoke-static {v4}, Lmiuix/appcompat/widget/HyperPopupWindow;->access$2200(Lmiuix/appcompat/widget/HyperPopupWindow;)Lmiuix/appcompat/widget/HyperPopupWindow$ClipLayout;

    move-result-object v4

    const/4 v6, 0x0

    invoke-virtual {v4, v6}, Landroid/view/View;->setBackgroundColor(I)V

    iget-object v4, v3, Lmiuix/appcompat/widget/HyperPopupWindow$PopupContentHolder;->this$0:Lmiuix/appcompat/widget/HyperPopupWindow;

    invoke-static {v4}, Lmiuix/appcompat/widget/HyperPopupWindow;->access$2200(Lmiuix/appcompat/widget/HyperPopupWindow;)Lmiuix/appcompat/widget/HyperPopupWindow$ClipLayout;

    move-result-object v4

    iget-object v6, v3, Lmiuix/appcompat/widget/HyperPopupWindow$PopupContentHolder;->this$0:Lmiuix/appcompat/widget/HyperPopupWindow;

    invoke-static {v6}, Lmiuix/appcompat/widget/HyperPopupWindow;->access$3100(Lmiuix/appcompat/widget/HyperPopupWindow;)F

    move-result v6

    invoke-virtual {v4, v6}, Lmiuix/appcompat/widget/HyperPopupWindow$ClipLayout;->setRadius(F)V

    iget v4, v5, Landroid/graphics/Rect;->left:I

    iget v6, v7, Landroid/graphics/Rect;->left:I

    sub-int v10, v4, v6

    move v4, v10

    iget v6, v5, Landroid/graphics/Rect;->top:I

    iget v8, v7, Landroid/graphics/Rect;->top:I

    sub-int v8, v6, v8

    move v6, v8

    invoke-virtual {v5}, Landroid/graphics/Rect;->width()I

    move-result v16

    move-object/from16 p4, v7

    add-int v7, v10, v16

    move/from16 v16, v12

    move v12, v8

    move v8, v7

    invoke-virtual {v5}, Landroid/graphics/Rect;->height()I

    move-result v5

    add-int/2addr v5, v12

    move/from16 v20, v10

    move v10, v5

    const/16 v17, 0x0

    move/from16 v21, v5

    move/from16 v5, v17

    move-object/from16 v18, p4

    move v5, v7

    move/from16 v7, v17

    invoke-virtual/range {v18 .. v18}, Landroid/graphics/Rect;->width()I

    move-result v17

    move v7, v9

    move/from16 v9, v17

    invoke-virtual/range {v18 .. v18}, Landroid/graphics/Rect;->height()I

    move-result v17

    move/from16 v19, v11

    move/from16 v11, v17

    iget-object v7, v3, Lmiuix/appcompat/widget/HyperPopupWindow$PopupContentHolder;->this$0:Lmiuix/appcompat/widget/HyperPopupWindow;

    invoke-static {v7}, Lmiuix/appcompat/widget/HyperPopupWindow;->access$2200(Lmiuix/appcompat/widget/HyperPopupWindow;)Lmiuix/appcompat/widget/HyperPopupWindow$ClipLayout;

    move-result-object v7

    move/from16 v17, v14

    move/from16 v14, v20

    move/from16 v20, v4

    move/from16 v4, v21

    invoke-virtual {v7, v14, v12, v5, v4}, Lmiuix/appcompat/widget/HyperPopupWindow$ClipLayout;->setClipBounds(IIII)V

    iget-object v4, v3, Lmiuix/appcompat/widget/HyperPopupWindow$PopupContentHolder;->this$0:Lmiuix/appcompat/widget/HyperPopupWindow;

    invoke-static {v4}, Lmiuix/appcompat/widget/HyperPopupWindow;->access$2200(Lmiuix/appcompat/widget/HyperPopupWindow;)Lmiuix/appcompat/widget/HyperPopupWindow$ClipLayout;

    move-result-object v4

    invoke-virtual {v4}, Lmiuix/appcompat/widget/HyperPopupWindow$ClipLayout;->refreshClipPath()V

    new-instance v4, Landroid/widget/FrameLayout$LayoutParams;

    invoke-virtual/range {v18 .. v18}, Landroid/graphics/Rect;->width()I

    move-result v5

    invoke-virtual/range {v18 .. v18}, Landroid/graphics/Rect;->height()I

    move-result v7

    invoke-direct {v4, v5, v7}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    move-object/from16 v5, v18

    iget v7, v5, Landroid/graphics/Rect;->left:I

    iget v12, v1, Landroid/graphics/Rect;->left:I

    sub-int/2addr v7, v12

    iput v7, v4, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    iget v7, v5, Landroid/graphics/Rect;->top:I

    iget v1, v1, Landroid/graphics/Rect;->top:I

    sub-int/2addr v7, v1

    iput v7, v4, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    iget-object v1, v3, Lmiuix/appcompat/widget/HyperPopupWindow$PopupContentHolder;->this$0:Lmiuix/appcompat/widget/HyperPopupWindow;

    invoke-static {v1}, Lmiuix/appcompat/widget/HyperPopupWindow;->access$2200(Lmiuix/appcompat/widget/HyperPopupWindow;)Lmiuix/appcompat/widget/HyperPopupWindow$ClipLayout;

    move-result-object v1

    invoke-virtual {v1, v4}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v1, v3, Lmiuix/appcompat/widget/HyperPopupWindow$PopupContentHolder;->this$0:Lmiuix/appcompat/widget/HyperPopupWindow;

    invoke-static {v1}, Lmiuix/appcompat/widget/HyperPopupWindow;->access$2200(Lmiuix/appcompat/widget/HyperPopupWindow;)Lmiuix/appcompat/widget/HyperPopupWindow$ClipLayout;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    new-instance v0, Landroid/widget/FrameLayout$LayoutParams;

    invoke-virtual {v2}, Landroid/graphics/Rect;->width()I

    move-result v1

    invoke-virtual {v2}, Landroid/graphics/Rect;->height()I

    move-result v4

    invoke-direct {v0, v1, v4}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    iget v1, v2, Landroid/graphics/Rect;->left:I

    iget v4, v5, Landroid/graphics/Rect;->left:I

    sub-int/2addr v1, v4

    iput v1, v0, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    iget v1, v2, Landroid/graphics/Rect;->top:I

    iget v4, v5, Landroid/graphics/Rect;->top:I

    sub-int/2addr v1, v4

    iput v1, v0, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    iget-object v1, v3, Lmiuix/appcompat/widget/HyperPopupWindow$PopupContentHolder;->mContentView:Lmiuix/smooth/SmoothFrameLayout2;

    invoke-virtual {v1, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v0, v3, Lmiuix/appcompat/widget/HyperPopupWindow$PopupContentHolder;->this$0:Lmiuix/appcompat/widget/HyperPopupWindow;

    invoke-static {v0}, Lmiuix/appcompat/widget/HyperPopupWindow;->access$2200(Lmiuix/appcompat/widget/HyperPopupWindow;)Lmiuix/appcompat/widget/HyperPopupWindow$ClipLayout;

    move-result-object v0

    iget-object v1, v3, Lmiuix/appcompat/widget/HyperPopupWindow$PopupContentHolder;->mContentView:Lmiuix/smooth/SmoothFrameLayout2;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    iget v0, v2, Landroid/graphics/Rect;->left:I

    iget v1, v5, Landroid/graphics/Rect;->left:I

    sub-int v12, v0, v1

    move/from16 v0, v16

    iget v4, v2, Landroid/graphics/Rect;->top:I

    iget v5, v5, Landroid/graphics/Rect;->top:I

    sub-int v14, v4, v5

    move/from16 v4, v17

    iget v7, v2, Landroid/graphics/Rect;->right:I

    sub-int v16, v7, v1

    iget v7, v2, Landroid/graphics/Rect;->bottom:I

    sub-int v18, v7, v5

    sub-int/2addr v13, v1

    sub-int/2addr v15, v5

    sub-int v17, v0, v1

    sub-int v19, v19, v5

    new-instance v0, Lmiuix/appcompat/widget/HyperPopupWindow$ViewBounds;

    iget-object v1, v3, Lmiuix/appcompat/widget/HyperPopupWindow$PopupContentHolder;->mContentView:Lmiuix/smooth/SmoothFrameLayout2;

    invoke-direct {v0, v1}, Lmiuix/appcompat/widget/HyperPopupWindow$ViewBounds;-><init>(Landroid/view/View;)V

    iput-object v0, v3, Lmiuix/appcompat/widget/HyperPopupWindow$PopupContentHolder;->mViewBounds:Lmiuix/appcompat/widget/HyperPopupWindow$ViewBounds;

    invoke-virtual {v0, v4}, Lmiuix/appcompat/widget/HyperPopupWindow$ViewBounds;->setMeasureWidth(I)V

    iget-object v0, v3, Lmiuix/appcompat/widget/HyperPopupWindow$PopupContentHolder;->this$0:Lmiuix/appcompat/widget/HyperPopupWindow;

    invoke-static {v0}, Lmiuix/appcompat/widget/HyperPopupWindow;->access$100(Lmiuix/appcompat/widget/HyperPopupWindow;)Lmiuix/appcompat/widget/HyperPopupWindow$PopupContentHolder;

    move-result-object v0

    const/4 v4, 0x1

    iput-boolean v4, v0, Lmiuix/appcompat/widget/HyperPopupWindow$PopupContentHolder;->mIsInAnimation:Z

    iget-object v0, v3, Lmiuix/appcompat/widget/HyperPopupWindow$PopupContentHolder;->this$0:Lmiuix/appcompat/widget/HyperPopupWindow;

    invoke-static {v0}, Lmiuix/appcompat/widget/HyperPopupWindow;->access$400(Lmiuix/appcompat/widget/HyperPopupWindow;)Lmiuix/appcompat/widget/HyperPopupWindow$PopupContentHolder;

    move-result-object v0

    iput-boolean v4, v0, Lmiuix/appcompat/widget/HyperPopupWindow$PopupContentHolder;->mIsInAnimation:Z

    iget-object v0, v3, Lmiuix/appcompat/widget/HyperPopupWindow$PopupContentHolder;->mContentView:Lmiuix/smooth/SmoothFrameLayout2;

    invoke-virtual {v0}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v5

    new-instance v7, Lmiuix/appcompat/widget/HyperPopupWindow$PopupContentHolder$3;

    move-object v0, v7

    move-object/from16 v1, p0

    move-object/from16 v3, p1

    move-object/from16 v23, v5

    move-object/from16 v22, v7

    const/4 v5, 0x0

    const/4 v7, 0x0

    move/from16 v24, v20

    move/from16 v20, v4

    move/from16 v4, v24

    invoke-direct/range {v0 .. v19}, Lmiuix/appcompat/widget/HyperPopupWindow$PopupContentHolder$3;-><init>(Lmiuix/appcompat/widget/HyperPopupWindow$PopupContentHolder;Landroid/graphics/Rect;Landroid/view/View;IIIIIIIIIIIIIIII)V

    move-object/from16 v0, v22

    move-object/from16 v1, v23

    invoke-virtual {v1, v0}, Landroid/view/ViewTreeObserver;->addOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    :goto_2
    return v20
.end method
