.class public Lmiuix/internal/widget/f;
.super Landroid/widget/PopupWindow;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lmiuix/internal/widget/f$g;,
        Lmiuix/internal/widget/f$f;
    }
.end annotation


# static fields
.field private static final OFFSET_X:F = 8.0f

.field private static final OFFSET_Y:F = 8.0f

.field private static final SHADOW_OFFSET_X:I = 0x0

.field private static final SHADOW_OFFSET_Y:I = 0x1a

.field private static final SHADOW_RADIUS:I = 0x20

.field private static final TAG:Ljava/lang/String; = "ListPopupWindow"


# instance fields
.field private mAdapter:Landroid/widget/ListAdapter;

.field private mAnchor:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field protected final mBackgroundPadding:Landroid/graphics/Rect;

.field private mContentSize:Lmiuix/internal/widget/f$g;

.field protected mContentView:Landroid/view/View;

.field private mContext:Landroid/content/Context;

.field private mDropDownGravity:I

.field protected mElevation:I

.field protected mElevationExtra:I

.field private mFenceDecor:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field private mHasShadow:Z

.field private mIsCustomContent:Z

.field private mListView:Landroid/widget/ListView;

.field protected mMaxAllowedHeight:I

.field private mMaxAllowedWidth:I

.field private mMinAllowedWidth:I

.field private mMinSafeInset:I

.field private mObserver:Landroid/database/DataSetObserver;

.field private mOffsetFromStatusBar:I

.field private mOffsetX:I

.field private mOffsetXSet:Z

.field private mOffsetY:I

.field private mOffsetYSet:Z

.field private mOnDismissListener:Landroid/widget/PopupWindow$OnDismissListener;

.field private mOnItemClickListener:Landroid/widget/AdapterView$OnItemClickListener;

.field private mPositionSafeInsets:Landroid/graphics/Rect;

.field protected mRootView:Landroid/widget/FrameLayout;

.field private mShadowColor:I

.field private mUserAnimationGravity:I

.field private mWindowDecorBounds:Landroid/graphics/Rect;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lmiuix/internal/widget/f;-><init>(Landroid/content/Context;Landroid/view/View;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/view/View;)V
    .locals 10

    invoke-direct {p0, p1}, Landroid/widget/PopupWindow;-><init>(Landroid/content/Context;)V

    const v0, 0x800035

    iput v0, p0, Lmiuix/internal/widget/f;->mDropDownGravity:I

    const/4 v0, -0x1

    iput v0, p0, Lmiuix/internal/widget/f;->mUserAnimationGravity:I

    const/4 v0, 0x0

    iput v0, p0, Lmiuix/internal/widget/f;->mOffsetFromStatusBar:I

    const/4 v1, 0x1

    iput-boolean v1, p0, Lmiuix/internal/widget/f;->mHasShadow:Z

    iput v0, p0, Lmiuix/internal/widget/f;->mShadowColor:I

    iput-boolean v0, p0, Lmiuix/internal/widget/f;->mIsCustomContent:Z

    new-instance v2, Lmiuix/internal/widget/f$a;

    invoke-direct {v2, p0}, Lmiuix/internal/widget/f$a;-><init>(Lmiuix/internal/widget/f;)V

    iput-object v2, p0, Lmiuix/internal/widget/f;->mObserver:Landroid/database/DataSetObserver;

    iput-object p1, p0, Lmiuix/internal/widget/f;->mContext:Landroid/content/Context;

    const/4 v2, 0x0

    invoke-virtual {p0, v2}, Landroid/widget/PopupWindow;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    const/4 v3, -0x2

    invoke-virtual {p0, v3}, Landroid/widget/PopupWindow;->setHeight(I)V

    new-instance v3, Ljava/lang/ref/WeakReference;

    invoke-direct {v3, p2}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v3, p0, Lmiuix/internal/widget/f;->mFenceDecor:Ljava/lang/ref/WeakReference;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    iget-object v4, p0, Lmiuix/internal/widget/f;->mContext:Landroid/content/Context;

    invoke-static {v4}, Lbl/c;->i(Landroid/content/Context;)Lbl/o;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "new windowInfo w "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, v4, Lbl/o;->c:Landroid/graphics/Point;

    iget v6, v6, Landroid/graphics/Point;->x:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, " h "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, v4, Lbl/o;->c:Landroid/graphics/Point;

    iget v6, v6, Landroid/graphics/Point;->y:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const-string v6, "ListPopup"

    invoke-static {v6, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    sget v6, Lmiuix/appcompat/R$dimen;->miuix_appcompat_context_menu_window_margin_screen:I

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v5

    iput v5, p0, Lmiuix/internal/widget/f;->mMinSafeInset:I

    new-instance v5, Landroid/graphics/Rect;

    invoke-direct {v5}, Landroid/graphics/Rect;-><init>()V

    iput-object v5, p0, Lmiuix/internal/widget/f;->mPositionSafeInsets:Landroid/graphics/Rect;

    iget v6, p0, Lmiuix/internal/widget/f;->mMinSafeInset:I

    invoke-virtual {v5, v6, v6, v6, v6}, Landroid/graphics/Rect;->set(IIII)V

    if-eqz p2, :cond_0

    new-instance v5, Landroid/graphics/Rect;

    invoke-direct {v5}, Landroid/graphics/Rect;-><init>()V

    invoke-static {p2, v5}, Lpl/j;->c(Landroid/view/View;Landroid/graphics/Rect;)V

    new-instance v6, Landroid/graphics/Rect;

    iget-object v7, v4, Lbl/o;->c:Landroid/graphics/Point;

    iget v8, v7, Landroid/graphics/Point;->x:I

    iget v7, v7, Landroid/graphics/Point;->y:I

    invoke-direct {v6, v0, v0, v8, v7}, Landroid/graphics/Rect;-><init>(IIII)V

    new-instance v7, Landroid/graphics/Rect;

    iget-object v8, v4, Lbl/o;->c:Landroid/graphics/Point;

    iget v9, v8, Landroid/graphics/Point;->x:I

    iget v8, v8, Landroid/graphics/Point;->y:I

    invoke-direct {v7, v0, v0, v9, v8}, Landroid/graphics/Rect;-><init>(IIII)V

    invoke-direct {p0, p2, v5, v6, v7}, Lmiuix/internal/widget/f;->updateSafeInsetsByDecor(Landroid/view/View;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;)V

    :cond_0
    if-eqz p2, :cond_1

    invoke-virtual {p2}, Landroid/view/View;->getWidth()I

    move-result v5

    goto :goto_0

    :cond_1
    iget-object v5, v4, Lbl/o;->c:Landroid/graphics/Point;

    iget v5, v5, Landroid/graphics/Point;->x:I

    :goto_0
    if-eqz p2, :cond_2

    invoke-virtual {p2}, Landroid/view/View;->getHeight()I

    move-result p2

    goto :goto_1

    :cond_2
    iget-object p2, v4, Lbl/o;->c:Landroid/graphics/Point;

    iget p2, p2, Landroid/graphics/Point;->y:I

    :goto_1
    sget v4, Lmiuix/appcompat/R$dimen;->miuix_appcompat_popup_menu_max_width:I

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v4

    invoke-static {v5, v4}, Ljava/lang/Math;->min(II)I

    move-result v4

    iput v4, p0, Lmiuix/internal/widget/f;->mMaxAllowedWidth:I

    sget v4, Lmiuix/appcompat/R$dimen;->miuix_appcompat_popup_menu_min_width:I

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v4

    invoke-static {v5, v4}, Ljava/lang/Math;->min(II)I

    move-result v4

    iput v4, p0, Lmiuix/internal/widget/f;->mMinAllowedWidth:I

    sget v4, Lmiuix/appcompat/R$dimen;->miuix_appcompat_popup_menu_max_height:I

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    invoke-static {p2, v3}, Ljava/lang/Math;->min(II)I

    move-result p2

    iput p2, p0, Lmiuix/internal/widget/f;->mMaxAllowedHeight:I

    iget-object p2, p0, Lmiuix/internal/widget/f;->mContext:Landroid/content/Context;

    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    invoke-virtual {p2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p2

    iget p2, p2, Landroid/util/DisplayMetrics;->density:F

    const/high16 v3, 0x41000000    # 8.0f

    mul-float/2addr v3, p2

    float-to-int v3, v3

    iput v3, p0, Lmiuix/internal/widget/f;->mOffsetX:I

    iput v3, p0, Lmiuix/internal/widget/f;->mOffsetY:I

    new-instance v3, Landroid/graphics/Rect;

    invoke-direct {v3}, Landroid/graphics/Rect;-><init>()V

    iput-object v3, p0, Lmiuix/internal/widget/f;->mBackgroundPadding:Landroid/graphics/Rect;

    new-instance v3, Lmiuix/internal/widget/f$g;

    invoke-direct {v3, v2}, Lmiuix/internal/widget/f$g;-><init>(Lmiuix/internal/widget/f$a;)V

    iput-object v3, p0, Lmiuix/internal/widget/f;->mContentSize:Lmiuix/internal/widget/f$g;

    invoke-virtual {p0, v1}, Landroid/widget/PopupWindow;->setFocusable(Z)V

    invoke-virtual {p0, v1}, Landroid/widget/PopupWindow;->setOutsideTouchable(Z)V

    new-instance v1, Lmiuix/internal/widget/f$f;

    invoke-direct {v1, p0, p1}, Lmiuix/internal/widget/f$f;-><init>(Lmiuix/internal/widget/f;Landroid/content/Context;)V

    iput-object v1, p0, Lmiuix/internal/widget/f;->mRootView:Landroid/widget/FrameLayout;

    invoke-virtual {v1, v0}, Landroid/view/ViewGroup;->setClipChildren(Z)V

    iget-object v1, p0, Lmiuix/internal/widget/f;->mRootView:Landroid/widget/FrameLayout;

    invoke-virtual {v1, v0}, Landroid/view/ViewGroup;->setClipToPadding(Z)V

    iget-object v0, p0, Lmiuix/internal/widget/f;->mRootView:Landroid/widget/FrameLayout;

    new-instance v1, Lmiuix/internal/widget/c;

    invoke-direct {v1, p0}, Lmiuix/internal/widget/c;-><init>(Lmiuix/internal/widget/f;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-virtual {p0, p1}, Lmiuix/internal/widget/f;->prepareContentView(Landroid/content/Context;)V

    sget v0, Lmiuix/appcompat/R$style;->Animation_PopupWindow_ImmersionMenu:I

    invoke-virtual {p0, v0}, Landroid/widget/PopupWindow;->setAnimationStyle(I)V

    new-instance v0, Lmiuix/internal/widget/d;

    invoke-direct {v0, p0}, Lmiuix/internal/widget/d;-><init>(Lmiuix/internal/widget/f;)V

    invoke-super {p0, v0}, Landroid/widget/PopupWindow;->setOnDismissListener(Landroid/widget/PopupWindow$OnDismissListener;)V

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lmiuix/appcompat/R$dimen;->miuix_appcompat_context_menu_window_margin_statusbar:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lmiuix/internal/widget/f;->mOffsetFromStatusBar:I

    iget-object v0, p0, Lmiuix/internal/widget/f;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lmiuix/appcompat/R$color;->miuix_appcompat_drop_down_menu_spot_shadow_color:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    iput v0, p0, Lmiuix/internal/widget/f;->mShadowColor:I

    sget-boolean v0, Lbl/g;->a:Z

    if-eqz v0, :cond_3

    const/high16 p1, 0x42000000    # 32.0f

    mul-float/2addr p2, p1

    float-to-int p1, p2

    iput p1, p0, Lmiuix/internal/widget/f;->mElevation:I

    goto :goto_2

    :cond_3
    iget-object p2, p0, Lmiuix/internal/widget/f;->mContext:Landroid/content/Context;

    sget v0, Lmiuix/appcompat/R$attr;->popupWindowElevation:I

    invoke-static {p2, v0}, Lpl/d;->g(Landroid/content/Context;I)I

    move-result p2

    iput p2, p0, Lmiuix/internal/widget/f;->mElevation:I

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget p2, Lmiuix/appcompat/R$dimen;->miuix_appcompat_menu_popup_extra_elevation:I

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    iput p1, p0, Lmiuix/internal/widget/f;->mElevationExtra:I

    :goto_2
    return-void
.end method

.method public static synthetic a(Lmiuix/internal/widget/f;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lmiuix/internal/widget/f;->lambda$new$0(Landroid/view/View;)V

    return-void
.end method

.method static synthetic access$000(Lmiuix/internal/widget/f;)Lmiuix/internal/widget/f$g;
    .locals 0

    iget-object p0, p0, Lmiuix/internal/widget/f;->mContentSize:Lmiuix/internal/widget/f$g;

    return-object p0
.end method

.method static synthetic access$100(Lmiuix/internal/widget/f;)Landroid/view/View;
    .locals 0

    invoke-direct {p0}, Lmiuix/internal/widget/f;->getAnchor()Landroid/view/View;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$200(Lmiuix/internal/widget/f;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lmiuix/internal/widget/f;->updatePosition(Landroid/view/View;)V

    return-void
.end method

.method static synthetic access$400(Lmiuix/internal/widget/f;Landroid/content/res/Configuration;)V
    .locals 0

    invoke-direct {p0, p1}, Lmiuix/internal/widget/f;->configurationChanged(Landroid/content/res/Configuration;)V

    return-void
.end method

.method static synthetic access$500(Lmiuix/internal/widget/f;)Ljava/lang/ref/WeakReference;
    .locals 0

    iget-object p0, p0, Lmiuix/internal/widget/f;->mAnchor:Ljava/lang/ref/WeakReference;

    return-object p0
.end method

.method static synthetic access$600(Lmiuix/internal/widget/f;)Landroid/widget/ListView;
    .locals 0

    iget-object p0, p0, Lmiuix/internal/widget/f;->mListView:Landroid/widget/ListView;

    return-object p0
.end method

.method static synthetic access$700(Lmiuix/internal/widget/f;Landroid/view/View;)Landroid/view/View;
    .locals 0

    invoke-direct {p0, p1}, Lmiuix/internal/widget/f;->getDecorView(Landroid/view/View;)Landroid/view/View;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$800(Lmiuix/internal/widget/f;)Landroid/content/Context;
    .locals 0

    iget-object p0, p0, Lmiuix/internal/widget/f;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method public static synthetic b(Lmiuix/internal/widget/f;Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 0

    invoke-direct/range {p0 .. p5}, Lmiuix/internal/widget/f;->lambda$prepareShow$2(Landroid/widget/AdapterView;Landroid/view/View;IJ)V

    return-void
.end method

.method public static synthetic c(Lmiuix/internal/widget/f;)V
    .locals 0

    invoke-direct {p0}, Lmiuix/internal/widget/f;->lambda$new$1()V

    return-void
.end method

.method private calculateXoffset(ILandroid/graphics/Rect;Landroid/graphics/Rect;)I
    .locals 1

    iget v0, p0, Lmiuix/internal/widget/f;->mDropDownGravity:I

    invoke-static {v0, p1}, Landroid/view/Gravity;->getAbsoluteGravity(II)I

    move-result p1

    and-int/lit8 p1, p1, 0x7

    const/4 v0, 0x1

    if-eq p1, v0, :cond_1

    const/4 v0, 0x5

    if-eq p1, v0, :cond_0

    invoke-direct {p0, p2, p3}, Lmiuix/internal/widget/f;->calculateXoffsetAlignLeft(Landroid/graphics/Rect;Landroid/graphics/Rect;)I

    move-result p1

    return p1

    :cond_0
    invoke-direct {p0, p2, p3}, Lmiuix/internal/widget/f;->calculateXoffsetAlignRight(Landroid/graphics/Rect;Landroid/graphics/Rect;)I

    move-result p1

    return p1

    :cond_1
    invoke-direct {p0, p2, p3}, Lmiuix/internal/widget/f;->calculateXoffsetAlignCenterHorizontal(Landroid/graphics/Rect;Landroid/graphics/Rect;)I

    move-result p1

    return p1
.end method

.method private calculateXoffsetAlignCenterHorizontal(Landroid/graphics/Rect;Landroid/graphics/Rect;)I
    .locals 9

    invoke-virtual {p1}, Landroid/graphics/Rect;->centerX()I

    move-result v0

    iget p1, p1, Landroid/graphics/Rect;->left:I

    iget-object v1, p0, Lmiuix/internal/widget/f;->mContentSize:Lmiuix/internal/widget/f$g;

    iget v1, v1, Lmiuix/internal/widget/f$g;->a:I

    add-int v2, p1, v1

    div-int/lit8 v1, v1, 0x2

    add-int/2addr v1, p1

    iget v3, p2, Landroid/graphics/Rect;->right:I

    iget-object v4, p0, Lmiuix/internal/widget/f;->mPositionSafeInsets:Landroid/graphics/Rect;

    iget v5, v4, Landroid/graphics/Rect;->right:I

    sub-int v6, v3, v5

    const/4 v7, 0x0

    if-le v2, v6, :cond_0

    sub-int/2addr v3, v5

    sub-int v7, v3, v2

    const/4 v2, 0x1

    move v8, v7

    move v7, v2

    move v2, v8

    goto :goto_0

    :cond_0
    move v2, v7

    :goto_0
    if-nez v7, :cond_1

    sub-int/2addr v0, v1

    add-int/2addr p1, v0

    iget p2, p2, Landroid/graphics/Rect;->left:I

    iget v1, v4, Landroid/graphics/Rect;->left:I

    add-int/2addr p2, v1

    if-lt p1, p2, :cond_1

    move v2, v0

    :cond_1
    return v2
.end method

.method private calculateXoffsetAlignLeft(Landroid/graphics/Rect;Landroid/graphics/Rect;)I
    .locals 7

    iget p1, p1, Landroid/graphics/Rect;->left:I

    iget-boolean v0, p0, Lmiuix/internal/widget/f;->mOffsetXSet:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    iget v2, p0, Lmiuix/internal/widget/f;->mOffsetX:I

    goto :goto_0

    :cond_0
    move v2, v1

    :goto_0
    add-int/2addr v2, p1

    iget-object v3, p0, Lmiuix/internal/widget/f;->mContentSize:Lmiuix/internal/widget/f$g;

    iget v3, v3, Lmiuix/internal/widget/f$g;->a:I

    add-int/2addr v2, v3

    iget v3, p2, Landroid/graphics/Rect;->right:I

    iget-object v4, p0, Lmiuix/internal/widget/f;->mPositionSafeInsets:Landroid/graphics/Rect;

    iget v5, v4, Landroid/graphics/Rect;->right:I

    sub-int v6, v3, v5

    if-le v2, v6, :cond_1

    sub-int/2addr v3, v5

    sub-int/2addr v3, v2

    const/4 v2, 0x1

    goto :goto_1

    :cond_1
    move v2, v1

    move v3, v2

    :goto_1
    if-nez v2, :cond_4

    if-eqz v0, :cond_2

    iget v1, p0, Lmiuix/internal/widget/f;->mOffsetX:I

    :cond_2
    add-int/2addr p1, v1

    iget p2, p2, Landroid/graphics/Rect;->left:I

    iget v0, v4, Landroid/graphics/Rect;->left:I

    add-int v2, p2, v0

    if-ge p1, v2, :cond_3

    add-int/2addr p2, v0

    sub-int/2addr p2, p1

    move v3, p2

    goto :goto_2

    :cond_3
    move v3, v1

    :goto_2
    if-eqz v3, :cond_4

    iget-object p1, p0, Lmiuix/internal/widget/f;->mBackgroundPadding:Landroid/graphics/Rect;

    iget p1, p1, Landroid/graphics/Rect;->left:I

    sub-int/2addr v3, p1

    :cond_4
    return v3
.end method

.method private calculateXoffsetAlignRight(Landroid/graphics/Rect;Landroid/graphics/Rect;)I
    .locals 7

    iget p1, p1, Landroid/graphics/Rect;->right:I

    iget-boolean v0, p0, Lmiuix/internal/widget/f;->mOffsetXSet:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    iget v2, p0, Lmiuix/internal/widget/f;->mOffsetX:I

    goto :goto_0

    :cond_0
    move v2, v1

    :goto_0
    add-int/2addr v2, p1

    iget-object v3, p0, Lmiuix/internal/widget/f;->mContentSize:Lmiuix/internal/widget/f$g;

    iget v3, v3, Lmiuix/internal/widget/f$g;->a:I

    sub-int/2addr v2, v3

    iget v3, p2, Landroid/graphics/Rect;->left:I

    iget-object v4, p0, Lmiuix/internal/widget/f;->mPositionSafeInsets:Landroid/graphics/Rect;

    iget v5, v4, Landroid/graphics/Rect;->left:I

    add-int v6, v3, v5

    if-ge v2, v6, :cond_1

    add-int/2addr v3, v5

    sub-int/2addr v3, v2

    const/4 v2, 0x1

    goto :goto_1

    :cond_1
    move v2, v1

    move v3, v2

    :goto_1
    if-nez v2, :cond_4

    if-eqz v0, :cond_2

    iget v1, p0, Lmiuix/internal/widget/f;->mOffsetX:I

    :cond_2
    add-int/2addr p1, v1

    iget p2, p2, Landroid/graphics/Rect;->right:I

    iget v0, v4, Landroid/graphics/Rect;->right:I

    sub-int v2, p2, v0

    if-le p1, v2, :cond_3

    sub-int/2addr p2, v0

    sub-int/2addr p2, p1

    move v3, p2

    goto :goto_2

    :cond_3
    move v3, v1

    :goto_2
    if-eqz v3, :cond_4

    iget-object p1, p0, Lmiuix/internal/widget/f;->mBackgroundPadding:Landroid/graphics/Rect;

    iget p1, p1, Landroid/graphics/Rect;->right:I

    add-int/2addr v3, p1

    :cond_4
    return v3
.end method

.method private calculateYoffset(Landroid/graphics/Rect;Landroid/graphics/Rect;)I
    .locals 5

    iget-boolean v0, p0, Lmiuix/internal/widget/f;->mOffsetYSet:Z

    if-eqz v0, :cond_0

    iget v0, p0, Lmiuix/internal/widget/f;->mOffsetY:I

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    move-result v0

    neg-int v0, v0

    iget-object v1, p0, Lmiuix/internal/widget/f;->mBackgroundPadding:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->top:I

    sub-int/2addr v0, v1

    :goto_0
    invoke-virtual {p0, p2}, Lmiuix/internal/widget/f;->checkMaxHeight(Landroid/graphics/Rect;)I

    move-result v1

    if-lez v1, :cond_1

    iget-object v2, p0, Lmiuix/internal/widget/f;->mContentSize:Lmiuix/internal/widget/f$g;

    iget v2, v2, Lmiuix/internal/widget/f$g;->b:I

    invoke-static {v2, v1}, Ljava/lang/Math;->min(II)I

    move-result v1

    goto :goto_1

    :cond_1
    iget-object v1, p0, Lmiuix/internal/widget/f;->mContentSize:Lmiuix/internal/widget/f$g;

    iget v1, v1, Lmiuix/internal/widget/f$g;->b:I

    :goto_1
    iget v2, p2, Landroid/graphics/Rect;->bottom:I

    iget-object v3, p0, Lmiuix/internal/widget/f;->mPositionSafeInsets:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v2, v3

    iget v4, p1, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v2, v4

    iget v4, p1, Landroid/graphics/Rect;->top:I

    sub-int/2addr v4, v3

    iget v3, p2, Landroid/graphics/Rect;->top:I

    sub-int/2addr v4, v3

    add-int v3, v1, v0

    if-le v3, v2, :cond_5

    const/4 v3, 0x0

    if-lt v2, v4, :cond_2

    iget-boolean v2, p0, Lmiuix/internal/widget/f;->mOffsetYSet:Z

    if-eqz v2, :cond_4

    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    move-result v3

    goto :goto_2

    :cond_2
    iget-boolean v2, p0, Lmiuix/internal/widget/f;->mOffsetYSet:Z

    if-eqz v2, :cond_3

    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    move-result v3

    :cond_3
    add-int/2addr v3, v1

    :cond_4
    :goto_2
    sub-int/2addr v0, v3

    :cond_5
    iget p1, p1, Landroid/graphics/Rect;->bottom:I

    add-int/2addr p1, v0

    iget v2, p2, Landroid/graphics/Rect;->top:I

    iget-object v3, p0, Lmiuix/internal/widget/f;->mPositionSafeInsets:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->top:I

    add-int v4, v2, v3

    if-ge p1, v4, :cond_6

    add-int/2addr v2, v3

    sub-int/2addr v2, p1

    sub-int v3, v1, v2

    invoke-virtual {p0, v3}, Landroid/widget/PopupWindow;->setHeight(I)V

    add-int/2addr v0, v2

    :cond_6
    add-int/2addr p1, v1

    iget p2, p2, Landroid/graphics/Rect;->bottom:I

    iget-object v2, p0, Lmiuix/internal/widget/f;->mPositionSafeInsets:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->bottom:I

    sub-int v3, p2, v2

    if-le p1, v3, :cond_7

    sub-int/2addr p2, v2

    sub-int/2addr p1, p2

    sub-int/2addr v1, p1

    invoke-virtual {p0, v1}, Landroid/widget/PopupWindow;->setHeight(I)V

    :cond_7
    return v0
.end method

.method public static changeWindowBackground(Landroid/view/View;)V
    .locals 3

    if-nez p0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager$LayoutParams;

    if-nez v0, :cond_1

    return-void

    :cond_1
    iget v1, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    or-int/lit8 v1, v1, 0x2

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lpl/j;->g(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_2

    sget v1, Ltm/f;->b:F

    goto :goto_0

    :cond_2
    sget v1, Ltm/f;->a:F

    :goto_0
    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->dimAmount:F

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "window"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/WindowManager;

    invoke-interface {v1, p0, v0}, Landroid/view/ViewManager;->updateViewLayout(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method private configurationChanged(Landroid/content/res/Configuration;)V
    .locals 1

    iget-object p1, p0, Lmiuix/internal/widget/f;->mRootView:Landroid/widget/FrameLayout;

    new-instance v0, Lmiuix/internal/widget/f$b;

    invoke-direct {v0, p0}, Lmiuix/internal/widget/f$b;-><init>(Lmiuix/internal/widget/f;)V

    invoke-virtual {p1, v0}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method private getAnchor()Landroid/view/View;
    .locals 1

    iget-object v0, p0, Lmiuix/internal/widget/f;->mAnchor:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method private getDecorView(Landroid/view/View;)Landroid/view/View;
    .locals 1
    .param p1    # Landroid/view/View;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    iget-object v0, p0, Lmiuix/internal/widget/f;->mFenceDecor:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getRootView()Landroid/view/View;

    move-result-object p1

    return-object p1
.end method

.method private getWindowDecorVisibleBounds(Landroid/view/View;)Landroid/graphics/Rect;
    .locals 2
    .param p1    # Landroid/view/View;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    invoke-virtual {p1}, Landroid/view/View;->getRootView()Landroid/view/View;

    move-result-object v1

    if-eqz v1, :cond_0

    move-object p1, v1

    :cond_0
    invoke-virtual {p1, v0}, Landroid/view/View;->getWindowVisibleDisplayFrame(Landroid/graphics/Rect;)V

    return-object v0
.end method

.method private synthetic lambda$new$0(Landroid/view/View;)V
    .locals 0

    invoke-virtual {p0}, Lmiuix/internal/widget/f;->dismiss()V

    return-void
.end method

.method private synthetic lambda$new$1()V
    .locals 1

    iget-object v0, p0, Lmiuix/internal/widget/f;->mOnDismissListener:Landroid/widget/PopupWindow$OnDismissListener;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Landroid/widget/PopupWindow$OnDismissListener;->onDismiss()V

    :cond_0
    return-void
.end method

.method private synthetic lambda$prepareShow$2(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 7

    iget-object v0, p0, Lmiuix/internal/widget/f;->mListView:Landroid/widget/ListView;

    invoke-virtual {v0}, Landroid/widget/ListView;->getHeaderViewsCount()I

    move-result v0

    sub-int v4, p3, v0

    iget-object p3, p0, Lmiuix/internal/widget/f;->mOnItemClickListener:Landroid/widget/AdapterView$OnItemClickListener;

    if-eqz p3, :cond_0

    if-ltz v4, :cond_0

    iget-object p3, p0, Lmiuix/internal/widget/f;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {p3}, Landroid/widget/Adapter;->getCount()I

    move-result p3

    if-ge v4, p3, :cond_0

    iget-object v1, p0, Lmiuix/internal/widget/f;->mOnItemClickListener:Landroid/widget/AdapterView$OnItemClickListener;

    move-object v2, p1

    move-object v3, p2

    move-wide v5, p4

    invoke-interface/range {v1 .. v6}, Landroid/widget/AdapterView$OnItemClickListener;->onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V

    :cond_0
    return-void
.end method

.method private measureContentSize(Landroid/widget/ListAdapter;Landroid/view/ViewGroup;Landroid/content/Context;I)V
    .locals 10

    const/4 v0, 0x0

    invoke-static {v0, v0}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v1

    invoke-static {v0, v0}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v2

    invoke-interface {p1}, Landroid/widget/Adapter;->getCount()I

    move-result v3

    const/4 v4, 0x0

    move v5, v0

    move v6, v5

    move v7, v6

    move-object v8, v4

    :goto_0
    if-ge v0, v3, :cond_5

    invoke-interface {p1, v0}, Landroid/widget/Adapter;->getItemViewType(I)I

    move-result v9

    if-eq v9, v5, :cond_0

    move-object v8, v4

    move v5, v9

    :cond_0
    if-nez p2, :cond_1

    new-instance p2, Landroid/widget/FrameLayout;

    invoke-direct {p2, p3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    :cond_1
    invoke-interface {p1, v0, v8, p2}, Landroid/widget/Adapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v8

    invoke-virtual {v8, v1, v2}, Landroid/view/View;->measure(II)V

    invoke-virtual {v8}, Landroid/view/View;->getMeasuredHeight()I

    move-result v9

    add-int/2addr v7, v9

    iget-object v9, p0, Lmiuix/internal/widget/f;->mContentSize:Lmiuix/internal/widget/f$g;

    iget-boolean v9, v9, Lmiuix/internal/widget/f$g;->c:Z

    if-eqz v9, :cond_2

    goto :goto_1

    :cond_2
    invoke-virtual {v8}, Landroid/view/View;->getMeasuredWidth()I

    move-result v9

    if-lt v9, p4, :cond_3

    iget-object v9, p0, Lmiuix/internal/widget/f;->mContentSize:Lmiuix/internal/widget/f$g;

    invoke-virtual {v9, p4}, Lmiuix/internal/widget/f$g;->a(I)V

    goto :goto_1

    :cond_3
    if-le v9, v6, :cond_4

    move v6, v9

    :cond_4
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_5
    iget-object p1, p0, Lmiuix/internal/widget/f;->mContentSize:Lmiuix/internal/widget/f$g;

    iget-boolean p2, p1, Lmiuix/internal/widget/f$g;->c:Z

    if-nez p2, :cond_6

    invoke-virtual {p1, v6}, Lmiuix/internal/widget/f$g;->a(I)V

    :cond_6
    iget-object p1, p0, Lmiuix/internal/widget/f;->mContentSize:Lmiuix/internal/widget/f$g;

    iput v7, p1, Lmiuix/internal/widget/f$g;->b:I

    return-void
.end method

.method private setAnimationStyleByGravity(I)V
    .locals 2

    sget v0, Lmiuix/appcompat/R$style;->Animation_PopupWindow_ImmersionMenu:I

    const/16 v1, 0x33

    if-ne p1, v1, :cond_0

    sget v0, Lmiuix/appcompat/R$style;->Animation_PopupWindow_ImmersionMenu_LeftTop:I

    goto :goto_0

    :cond_0
    const/16 v1, 0x53

    if-ne p1, v1, :cond_1

    sget v0, Lmiuix/appcompat/R$style;->Animation_PopupWindow_ImmersionMenu_LeftBottom:I

    goto :goto_0

    :cond_1
    const/16 v1, 0x35

    if-ne p1, v1, :cond_2

    sget v0, Lmiuix/appcompat/R$style;->Animation_PopupWindow_ImmersionMenu_RightTop:I

    goto :goto_0

    :cond_2
    const/16 v1, 0x55

    if-ne p1, v1, :cond_3

    sget v0, Lmiuix/appcompat/R$style;->Animation_PopupWindow_ImmersionMenu_RightBottom:I

    goto :goto_0

    :cond_3
    const/16 v1, 0x30

    if-ne p1, v1, :cond_4

    sget v0, Lmiuix/appcompat/R$style;->Animation_PopupWindow_ImmersionMenu_Top:I

    goto :goto_0

    :cond_4
    const/16 v1, 0x50

    if-ne p1, v1, :cond_5

    sget v0, Lmiuix/appcompat/R$style;->Animation_PopupWindow_ImmersionMenu_Bottom:I

    goto :goto_0

    :cond_5
    const/16 v1, 0x11

    if-ne p1, v1, :cond_6

    sget v0, Lmiuix/appcompat/R$style;->Animation_PopupWindow_ImmersionMenu_Center:I

    :cond_6
    :goto_0
    invoke-virtual {p0, v0}, Landroid/widget/PopupWindow;->setAnimationStyle(I)V

    return-void
.end method

.method private shouldSetElevation()Z
    .locals 2

    iget-boolean v0, p0, Lmiuix/internal/widget/f;->mHasShadow:Z

    if-eqz v0, :cond_1

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1d

    if-gt v0, v1, :cond_0

    iget-object v0, p0, Lmiuix/internal/widget/f;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lpl/a;->a(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private showWithAnchor(Landroid/view/View;Landroid/graphics/Rect;)V
    .locals 8

    const/4 v0, 0x2

    new-array v0, v0, [I

    invoke-virtual {p1, v0}, Landroid/view/View;->getLocationInWindow([I)V

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    invoke-static {p1, v0}, Lpl/j;->c(Landroid/view/View;Landroid/graphics/Rect;)V

    invoke-direct {p0, v0, p2}, Lmiuix/internal/widget/f;->calculateYoffset(Landroid/graphics/Rect;Landroid/graphics/Rect;)I

    move-result v1

    invoke-virtual {p1}, Landroid/view/View;->getLayoutDirection()I

    move-result v2

    invoke-direct {p0, v2, v0, p2}, Lmiuix/internal/widget/f;->calculateXoffset(ILandroid/graphics/Rect;Landroid/graphics/Rect;)I

    move-result p2

    invoke-virtual {p0}, Landroid/widget/PopupWindow;->getWidth()I

    move-result v2

    if-lez v2, :cond_0

    invoke-virtual {p0}, Landroid/widget/PopupWindow;->getWidth()I

    move-result v2

    goto :goto_0

    :cond_0
    iget-object v2, p0, Lmiuix/internal/widget/f;->mContentSize:Lmiuix/internal/widget/f$g;

    iget v2, v2, Lmiuix/internal/widget/f$g;->a:I

    :goto_0
    invoke-virtual {p0}, Landroid/widget/PopupWindow;->getHeight()I

    move-result v3

    if-lez v3, :cond_1

    invoke-virtual {p0}, Landroid/widget/PopupWindow;->getHeight()I

    move-result v3

    goto :goto_1

    :cond_1
    iget-object v3, p0, Lmiuix/internal/widget/f;->mContentSize:Lmiuix/internal/widget/f$g;

    iget v3, v3, Lmiuix/internal/widget/f$g;->b:I

    :goto_1
    new-instance v4, Landroid/graphics/Rect;

    invoke-direct {v4}, Landroid/graphics/Rect;-><init>()V

    const/4 v5, 0x0

    invoke-virtual {v4, v5, v5, v2, v3}, Landroid/graphics/Rect;->set(IIII)V

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "showWithAnchor getWidth "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Landroid/widget/PopupWindow;->getWidth()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " getHeight "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Landroid/widget/PopupWindow;->getHeight()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "ListPopup"

    invoke-static {v3, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget v2, p0, Lmiuix/internal/widget/f;->mDropDownGravity:I

    invoke-virtual {p1}, Landroid/view/View;->getLayoutDirection()I

    move-result v3

    invoke-static {v2, v3}, Landroid/view/Gravity;->getAbsoluteGravity(II)I

    move-result v2

    and-int/lit8 v3, v2, 0x70

    and-int/lit8 v2, v2, 0x7

    const/4 v5, 0x5

    if-ne v2, v5, :cond_2

    iget v2, v0, Landroid/graphics/Rect;->right:I

    add-int/2addr v2, p2

    invoke-virtual {v4}, Landroid/graphics/Rect;->width()I

    move-result v5

    sub-int/2addr v2, v5

    goto :goto_2

    :cond_2
    iget v2, v0, Landroid/graphics/Rect;->left:I

    add-int/2addr v2, p2

    :goto_2
    iget v5, v0, Landroid/graphics/Rect;->bottom:I

    add-int/2addr v5, v1

    invoke-virtual {v4, v2, v5}, Landroid/graphics/Rect;->offsetTo(II)V

    invoke-virtual {v4}, Landroid/graphics/Rect;->centerY()I

    move-result v2

    invoke-virtual {v0}, Landroid/graphics/Rect;->centerY()I

    move-result v5

    sub-int/2addr v2, v5

    invoke-static {v2}, Ljava/lang/Math;->abs(I)I

    move-result v2

    const/16 v5, 0x30

    const/16 v6, 0xa

    const/16 v7, 0x50

    if-le v2, v6, :cond_3

    invoke-virtual {v4}, Landroid/graphics/Rect;->centerY()I

    move-result v2

    invoke-virtual {v0}, Landroid/graphics/Rect;->centerY()I

    move-result v3

    if-le v2, v3, :cond_4

    goto :goto_3

    :cond_3
    if-eq v3, v7, :cond_4

    goto :goto_3

    :cond_4
    move v5, v7

    :goto_3
    invoke-virtual {v4}, Landroid/graphics/Rect;->centerX()I

    move-result v2

    invoke-virtual {v0}, Landroid/graphics/Rect;->centerX()I

    move-result v3

    sub-int/2addr v2, v3

    invoke-static {v2}, Ljava/lang/Math;->abs(I)I

    move-result v2

    if-le v2, v6, :cond_6

    invoke-virtual {v4}, Landroid/graphics/Rect;->centerX()I

    move-result v2

    invoke-virtual {v0}, Landroid/graphics/Rect;->centerX()I

    move-result v0

    if-le v2, v0, :cond_5

    or-int/lit8 v5, v5, 0x3

    goto :goto_4

    :cond_5
    or-int/lit8 v5, v5, 0x5

    :cond_6
    :goto_4
    iget v0, p0, Lmiuix/internal/widget/f;->mUserAnimationGravity:I

    const/4 v2, -0x1

    if-eq v0, v2, :cond_7

    invoke-direct {p0, v0}, Lmiuix/internal/widget/f;->setAnimationStyleByGravity(I)V

    goto :goto_5

    :cond_7
    invoke-direct {p0, v5}, Lmiuix/internal/widget/f;->setAnimationStyleByGravity(I)V

    :goto_5
    invoke-virtual {p0}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result v0

    if-nez v0, :cond_8

    sget v0, Lmiuix/view/i;->A:I

    sget v2, Lmiuix/view/i;->n:I

    invoke-static {p1, v0, v2}, Lmiuix/view/HapticCompat;->f(Landroid/view/View;II)Z

    :cond_8
    iget v0, p0, Lmiuix/internal/widget/f;->mDropDownGravity:I

    invoke-virtual {p0, p1, p2, v1, v0}, Lmiuix/internal/widget/f;->showAsDropDown(Landroid/view/View;III)V

    iget-object p1, p0, Lmiuix/internal/widget/f;->mRootView:Landroid/widget/FrameLayout;

    invoke-virtual {p1}, Landroid/view/View;->getRootView()Landroid/view/View;

    move-result-object p1

    invoke-static {p1}, Lmiuix/internal/widget/f;->changeWindowBackground(Landroid/view/View;)V

    return-void
.end method

.method private updatePosition(Landroid/view/View;)V
    .locals 8

    if-nez p1, :cond_0

    return-void

    :cond_0
    invoke-direct {p0, p1}, Lmiuix/internal/widget/f;->getDecorView(Landroid/view/View;)Landroid/view/View;

    move-result-object v0

    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    invoke-static {v0, v1}, Lpl/j;->c(Landroid/view/View;Landroid/graphics/Rect;)V

    invoke-direct {p0, p1}, Lmiuix/internal/widget/f;->getWindowDecorVisibleBounds(Landroid/view/View;)Landroid/graphics/Rect;

    move-result-object v2

    invoke-virtual {p0}, Lmiuix/internal/widget/f;->getWindowDecorActualBounds()Landroid/graphics/Rect;

    move-result-object v3

    invoke-direct {p0, v0, v1, v3, v2}, Lmiuix/internal/widget/f;->updateSafeInsetsByDecor(Landroid/view/View;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;)V

    invoke-virtual {p0, v1}, Lmiuix/internal/widget/f;->checkMaxHeight(Landroid/graphics/Rect;)I

    move-result v0

    invoke-virtual {p0, v1}, Lmiuix/internal/widget/f;->computePopupContentWidth(Landroid/graphics/Rect;)I

    move-result v6

    iget-object v2, p0, Lmiuix/internal/widget/f;->mContentSize:Lmiuix/internal/widget/f$g;

    iget v2, v2, Lmiuix/internal/widget/f$g;->b:I

    if-lez v0, :cond_1

    if-le v2, v0, :cond_1

    move v7, v0

    goto :goto_0

    :cond_1
    move v7, v2

    :goto_0
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    invoke-static {p1, v0}, Lpl/j;->c(Landroid/view/View;Landroid/graphics/Rect;)V

    invoke-virtual {p1}, Landroid/view/View;->getLayoutDirection()I

    move-result v2

    invoke-direct {p0, v2, v0, v1}, Lmiuix/internal/widget/f;->calculateXoffset(ILandroid/graphics/Rect;Landroid/graphics/Rect;)I

    move-result v4

    invoke-direct {p0, v0, v1}, Lmiuix/internal/widget/f;->calculateYoffset(Landroid/graphics/Rect;Landroid/graphics/Rect;)I

    move-result v5

    move-object v2, p0

    move-object v3, p1

    invoke-virtual/range {v2 .. v7}, Landroid/widget/PopupWindow;->update(Landroid/view/View;IIII)V

    return-void
.end method

.method private updateSafeInsetsByDecor(Landroid/view/View;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;)V
    .locals 8

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    invoke-virtual {p1}, Landroid/view/View;->getRootWindowInsets()Landroid/view/WindowInsets;

    move-result-object p1

    const/16 v1, 0x1e

    if-eqz p1, :cond_2

    if-lt v0, v1, :cond_0

    invoke-static {}, Landroid/view/WindowInsets$Type;->systemBars()I

    move-result v2

    invoke-static {}, Landroid/view/WindowInsets$Type;->displayCutout()I

    move-result v3

    or-int/2addr v2, v3

    invoke-static {p1, v2}, Landroidx/core/view/n3;->a(Landroid/view/WindowInsets;I)Landroid/graphics/Insets;

    move-result-object p1

    iget-object v2, p0, Lmiuix/internal/widget/f;->mPositionSafeInsets:Landroid/graphics/Rect;

    iget v3, p1, Landroid/graphics/Insets;->left:I

    iget v4, p1, Landroid/graphics/Insets;->top:I

    iget v5, p1, Landroid/graphics/Insets;->right:I

    iget p1, p1, Landroid/graphics/Insets;->bottom:I

    invoke-virtual {v2, v3, v4, v5, p1}, Landroid/graphics/Rect;->set(IIII)V

    goto :goto_0

    :cond_0
    new-instance v2, Landroid/graphics/Rect;

    invoke-direct {v2}, Landroid/graphics/Rect;-><init>()V

    const/16 v3, 0x1c

    if-lt v0, v3, :cond_1

    invoke-static {p1}, Landroidx/core/view/g3;->a(Landroid/view/WindowInsets;)Landroid/view/DisplayCutout;

    move-result-object v3

    if-eqz v3, :cond_1

    invoke-virtual {v3}, Landroid/view/DisplayCutout;->getSafeInsetLeft()I

    move-result v4

    invoke-virtual {v3}, Landroid/view/DisplayCutout;->getSafeInsetTop()I

    move-result v5

    invoke-virtual {v3}, Landroid/view/DisplayCutout;->getSafeInsetRight()I

    move-result v6

    invoke-virtual {v3}, Landroid/view/DisplayCutout;->getSafeInsetBottom()I

    move-result v3

    invoke-virtual {v2, v4, v5, v6, v3}, Landroid/graphics/Rect;->set(IIII)V

    :cond_1
    iget-object v3, p0, Lmiuix/internal/widget/f;->mPositionSafeInsets:Landroid/graphics/Rect;

    iget v4, v2, Landroid/graphics/Rect;->left:I

    invoke-virtual {p1}, Landroid/view/WindowInsets;->getSystemWindowInsetLeft()I

    move-result v5

    invoke-static {v4, v5}, Ljava/lang/Math;->max(II)I

    move-result v4

    iget v5, v2, Landroid/graphics/Rect;->top:I

    invoke-virtual {p1}, Landroid/view/WindowInsets;->getSystemWindowInsetTop()I

    move-result v6

    invoke-static {v5, v6}, Ljava/lang/Math;->max(II)I

    move-result v5

    iget v6, v2, Landroid/graphics/Rect;->right:I

    invoke-virtual {p1}, Landroid/view/WindowInsets;->getSystemWindowInsetRight()I

    move-result v7

    invoke-static {v6, v7}, Ljava/lang/Math;->max(II)I

    move-result v6

    iget v2, v2, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {p1}, Landroid/view/WindowInsets;->getSystemWindowInsetBottom()I

    move-result p1

    invoke-static {v2, p1}, Ljava/lang/Math;->max(II)I

    move-result p1

    invoke-virtual {v3, v4, v5, v6, p1}, Landroid/graphics/Rect;->set(IIII)V

    :cond_2
    :goto_0
    const/4 p1, 0x0

    if-lt v0, v1, :cond_3

    iget v0, p4, Landroid/graphics/Rect;->left:I

    iget v1, p3, Landroid/graphics/Rect;->left:I

    sub-int/2addr v0, v1

    iget v1, p3, Landroid/graphics/Rect;->right:I

    iget v2, p4, Landroid/graphics/Rect;->right:I

    sub-int/2addr v1, v2

    iget v2, p4, Landroid/graphics/Rect;->top:I

    iget v3, p3, Landroid/graphics/Rect;->top:I

    sub-int/2addr v2, v3

    iget p3, p3, Landroid/graphics/Rect;->bottom:I

    iget v3, p4, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr p3, v3

    goto :goto_1

    :cond_3
    move p3, p1

    move v0, p3

    move v1, v0

    move v2, v1

    :goto_1
    iget-object v3, p0, Lmiuix/internal/widget/f;->mPositionSafeInsets:Landroid/graphics/Rect;

    iget v4, p0, Lmiuix/internal/widget/f;->mMinSafeInset:I

    iget v5, v3, Landroid/graphics/Rect;->left:I

    iget v6, p2, Landroid/graphics/Rect;->left:I

    sub-int/2addr v5, v6

    sub-int/2addr v5, v0

    invoke-static {v4, v5}, Ljava/lang/Math;->max(II)I

    move-result v0

    iput v0, v3, Landroid/graphics/Rect;->left:I

    iget-object v0, p0, Lmiuix/internal/widget/f;->mPositionSafeInsets:Landroid/graphics/Rect;

    iget v3, p0, Lmiuix/internal/widget/f;->mMinSafeInset:I

    iget v4, v0, Landroid/graphics/Rect;->right:I

    invoke-virtual {p4}, Landroid/graphics/Rect;->width()I

    move-result v5

    iget v6, p2, Landroid/graphics/Rect;->right:I

    sub-int/2addr v5, v6

    invoke-static {p1, v5}, Ljava/lang/Math;->max(II)I

    move-result v5

    sub-int/2addr v4, v5

    sub-int/2addr v4, v1

    invoke-static {v3, v4}, Ljava/lang/Math;->max(II)I

    move-result v1

    iput v1, v0, Landroid/graphics/Rect;->right:I

    iget-object v0, p0, Lmiuix/internal/widget/f;->mPositionSafeInsets:Landroid/graphics/Rect;

    iget v1, p0, Lmiuix/internal/widget/f;->mMinSafeInset:I

    iget v3, v0, Landroid/graphics/Rect;->top:I

    iget v4, p2, Landroid/graphics/Rect;->top:I

    sub-int/2addr v3, v4

    sub-int/2addr v3, v2

    invoke-static {v1, v3}, Ljava/lang/Math;->max(II)I

    move-result v1

    iput v1, v0, Landroid/graphics/Rect;->top:I

    iget-object v0, p0, Lmiuix/internal/widget/f;->mPositionSafeInsets:Landroid/graphics/Rect;

    iget v1, p0, Lmiuix/internal/widget/f;->mMinSafeInset:I

    iget v2, v0, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {p4}, Landroid/graphics/Rect;->height()I

    move-result p4

    iget p2, p2, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr p4, p2

    invoke-static {p1, p4}, Ljava/lang/Math;->max(II)I

    move-result p1

    sub-int/2addr v2, p1

    sub-int/2addr v2, p3

    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    move-result p1

    iput p1, v0, Landroid/graphics/Rect;->bottom:I

    return-void
.end method


# virtual methods
.method protected checkMaxHeight(Landroid/graphics/Rect;)I
    .locals 3

    iget v0, p0, Lmiuix/internal/widget/f;->mMaxAllowedHeight:I

    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    move-result p1

    iget-object v1, p0, Lmiuix/internal/widget/f;->mPositionSafeInsets:Landroid/graphics/Rect;

    iget v2, v1, Landroid/graphics/Rect;->top:I

    sub-int/2addr p1, v2

    iget v1, v1, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr p1, v1

    invoke-static {v0, p1}, Ljava/lang/Math;->min(II)I

    move-result p1

    return p1
.end method

.method protected checkMaxWidth(Landroid/graphics/Rect;)I
    .locals 3

    iget v0, p0, Lmiuix/internal/widget/f;->mMaxAllowedWidth:I

    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    move-result p1

    iget-object v1, p0, Lmiuix/internal/widget/f;->mPositionSafeInsets:Landroid/graphics/Rect;

    iget v2, v1, Landroid/graphics/Rect;->left:I

    sub-int/2addr p1, v2

    iget v1, v1, Landroid/graphics/Rect;->right:I

    sub-int/2addr p1, v1

    invoke-static {v0, p1}, Ljava/lang/Math;->min(II)I

    move-result p1

    return p1
.end method

.method protected checkMinWidth(Landroid/graphics/Rect;)I
    .locals 3

    iget v0, p0, Lmiuix/internal/widget/f;->mMinAllowedWidth:I

    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    move-result p1

    iget-object v1, p0, Lmiuix/internal/widget/f;->mPositionSafeInsets:Landroid/graphics/Rect;

    iget v2, v1, Landroid/graphics/Rect;->left:I

    sub-int/2addr p1, v2

    iget v1, v1, Landroid/graphics/Rect;->right:I

    sub-int/2addr p1, v1

    invoke-static {v0, p1}, Ljava/lang/Math;->min(II)I

    move-result p1

    return p1
.end method

.method protected computePopupContentWidth(Landroid/graphics/Rect;)I
    .locals 4

    iget-object v0, p0, Lmiuix/internal/widget/f;->mContentSize:Lmiuix/internal/widget/f$g;

    iget-boolean v0, v0, Lmiuix/internal/widget/f$g;->c:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lmiuix/internal/widget/f;->mAdapter:Landroid/widget/ListAdapter;

    const/4 v1, 0x0

    iget-object v2, p0, Lmiuix/internal/widget/f;->mContext:Landroid/content/Context;

    invoke-virtual {p0, p1}, Lmiuix/internal/widget/f;->checkMaxWidth(Landroid/graphics/Rect;)I

    move-result v3

    invoke-direct {p0, v0, v1, v2, v3}, Lmiuix/internal/widget/f;->measureContentSize(Landroid/widget/ListAdapter;Landroid/view/ViewGroup;Landroid/content/Context;I)V

    :cond_0
    iget-object v0, p0, Lmiuix/internal/widget/f;->mContentSize:Lmiuix/internal/widget/f$g;

    iget v0, v0, Lmiuix/internal/widget/f$g;->a:I

    invoke-virtual {p0, p1}, Lmiuix/internal/widget/f;->checkMinWidth(Landroid/graphics/Rect;)I

    move-result p1

    invoke-static {v0, p1}, Ljava/lang/Math;->max(II)I

    move-result p1

    iget-object v0, p0, Lmiuix/internal/widget/f;->mBackgroundPadding:Landroid/graphics/Rect;

    iget v1, v0, Landroid/graphics/Rect;->left:I

    add-int/2addr p1, v1

    iget v0, v0, Landroid/graphics/Rect;->right:I

    add-int/2addr p1, v0

    iget-object v0, p0, Lmiuix/internal/widget/f;->mContentSize:Lmiuix/internal/widget/f$g;

    invoke-virtual {v0, p1}, Lmiuix/internal/widget/f$g;->a(I)V

    return p1
.end method

.method public dismiss()V
    .locals 1

    invoke-super {p0}, Landroid/widget/PopupWindow;->dismiss()V

    iget-object v0, p0, Lmiuix/internal/widget/f;->mContext:Landroid/content/Context;

    invoke-static {v0, p0}, Lmiuix/popupwidget/internal/util/SinglePopControl;->hidePop(Landroid/content/Context;Ljava/lang/Object;)V

    return-void
.end method

.method public fastShow(Landroid/view/View;Landroid/view/ViewGroup;)V
    .locals 2
    .param p1    # Landroid/view/View;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    invoke-direct {p0, p1}, Lmiuix/internal/widget/f;->getDecorView(Landroid/view/View;)Landroid/view/View;

    move-result-object p2

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    invoke-static {p2, v0}, Lpl/j;->c(Landroid/view/View;Landroid/graphics/Rect;)V

    invoke-virtual {p0, v0}, Lmiuix/internal/widget/f;->computePopupContentWidth(Landroid/graphics/Rect;)I

    move-result p2

    invoke-virtual {p0, p2}, Landroid/widget/PopupWindow;->setWidth(I)V

    iget-object p2, p0, Lmiuix/internal/widget/f;->mContentSize:Lmiuix/internal/widget/f$g;

    iget p2, p2, Lmiuix/internal/widget/f$g;->b:I

    invoke-virtual {p0, v0}, Lmiuix/internal/widget/f;->checkMaxHeight(Landroid/graphics/Rect;)I

    move-result v1

    if-le p2, v1, :cond_0

    move p2, v1

    :cond_0
    invoke-virtual {p0, p2}, Landroid/widget/PopupWindow;->setHeight(I)V

    invoke-direct {p0, p1, v0}, Lmiuix/internal/widget/f;->showWithAnchor(Landroid/view/View;Landroid/graphics/Rect;)V

    return-void
.end method

.method public getHorizontalOffset()I
    .locals 1

    iget v0, p0, Lmiuix/internal/widget/f;->mOffsetX:I

    return v0
.end method

.method public getListView()Landroid/widget/ListView;
    .locals 1

    iget-object v0, p0, Lmiuix/internal/widget/f;->mListView:Landroid/widget/ListView;

    return-object v0
.end method

.method public getMinMarginScreen()I
    .locals 1

    iget v0, p0, Lmiuix/internal/widget/f;->mMinSafeInset:I

    return v0
.end method

.method public getOffsetFromStatusBar()I
    .locals 1

    iget v0, p0, Lmiuix/internal/widget/f;->mOffsetFromStatusBar:I

    return v0
.end method

.method public getPositionSafeInsets()Landroid/graphics/Rect;
    .locals 1

    iget-object v0, p0, Lmiuix/internal/widget/f;->mPositionSafeInsets:Landroid/graphics/Rect;

    return-object v0
.end method

.method public getVerticalOffset()I
    .locals 1

    iget v0, p0, Lmiuix/internal/widget/f;->mOffsetY:I

    return v0
.end method

.method protected getWindowDecorActualBounds()Landroid/graphics/Rect;
    .locals 3

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iget-object v1, p0, Lmiuix/internal/widget/f;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lbl/p;->g(Landroid/content/Context;)Landroid/view/WindowManager;

    move-result-object v1

    iget-object v2, p0, Lmiuix/internal/widget/f;->mContext:Landroid/content/Context;

    invoke-static {v1, v2, v0}, Lbl/p;->e(Landroid/view/WindowManager;Landroid/content/Context;Landroid/graphics/Rect;)V

    return-object v0
.end method

.method protected isNeedScroll(ILandroid/graphics/Rect;)Z
    .locals 1

    invoke-virtual {p0, p2}, Lmiuix/internal/widget/f;->checkMaxHeight(Landroid/graphics/Rect;)I

    move-result p2

    iget-object v0, p0, Lmiuix/internal/widget/f;->mContentSize:Lmiuix/internal/widget/f$g;

    iget v0, v0, Lmiuix/internal/widget/f$g;->b:I

    if-gt v0, p1, :cond_1

    if-le v0, p2, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p1, 0x1

    :goto_1
    return p1
.end method

.method protected prepareContentView(Landroid/content/Context;)V
    .locals 0

    iget-object p1, p0, Lmiuix/internal/widget/f;->mRootView:Landroid/widget/FrameLayout;

    invoke-super {p0, p1}, Landroid/widget/PopupWindow;->setContentView(Landroid/view/View;)V

    return-void
.end method

.method protected prepareShow(Landroid/view/View;Landroid/view/ViewGroup;Landroid/graphics/Rect;)Z
    .locals 5

    const-string p2, "ListPopupWindow"

    const/4 v0, 0x0

    if-nez p1, :cond_0

    const-string p1, "show: anchor is null"

    :goto_0
    invoke-static {p2, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v0

    :cond_0
    const-string v1, "ListPopup"

    const-string v2, "prepareShow"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0}, Lmiuix/internal/widget/f;->shouldSetElevation()Z

    move-result v1

    if-eqz v1, :cond_1

    iget v1, p0, Lmiuix/internal/widget/f;->mElevation:I

    iget v2, p0, Lmiuix/internal/widget/f;->mElevationExtra:I

    add-int/2addr v1, v2

    int-to-float v1, v1

    invoke-virtual {p0, v1}, Landroid/widget/PopupWindow;->setElevation(F)V

    :cond_1
    iget-object v1, p0, Lmiuix/internal/widget/f;->mContentView:Landroid/view/View;

    if-nez v1, :cond_3

    iget-object v1, p0, Lmiuix/internal/widget/f;->mContext:Landroid/content/Context;

    invoke-static {v1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    sget v2, Lmiuix/appcompat/R$layout;->miuix_appcompat_list_popup_list:I

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lmiuix/internal/widget/f;->mContentView:Landroid/view/View;

    iget-object v1, p0, Lmiuix/internal/widget/f;->mContext:Landroid/content/Context;

    sget v2, Lmiuix/appcompat/R$attr;->immersionWindowBackground:I

    invoke-static {v1, v2}, Lpl/d;->h(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    if-eqz v1, :cond_2

    iget-object v2, p0, Lmiuix/internal/widget/f;->mBackgroundPadding:Landroid/graphics/Rect;

    invoke-virtual {v1, v2}, Landroid/graphics/drawable/Drawable;->getPadding(Landroid/graphics/Rect;)Z

    iget-object v2, p0, Lmiuix/internal/widget/f;->mContentView:Landroid/view/View;

    invoke-virtual {v2, v1}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    :cond_2
    iget-object v1, p0, Lmiuix/internal/widget/f;->mContentView:Landroid/view/View;

    new-instance v2, Lmiuix/internal/widget/f$c;

    invoke-direct {v2, p0}, Lmiuix/internal/widget/f$c;-><init>(Lmiuix/internal/widget/f;)V

    invoke-virtual {v1, v2}, Landroid/view/View;->addOnLayoutChangeListener(Landroid/view/View$OnLayoutChangeListener;)V

    iput-boolean v0, p0, Lmiuix/internal/widget/f;->mIsCustomContent:Z

    :cond_3
    iget-object v1, p0, Lmiuix/internal/widget/f;->mRootView:Landroid/widget/FrameLayout;

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v1

    const/4 v2, -0x2

    const/4 v3, 0x1

    if-ne v1, v3, :cond_4

    iget-object v1, p0, Lmiuix/internal/widget/f;->mRootView:Landroid/widget/FrameLayout;

    invoke-virtual {v1, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    iget-object v4, p0, Lmiuix/internal/widget/f;->mContentView:Landroid/view/View;

    if-eq v1, v4, :cond_5

    :cond_4
    iget-object v1, p0, Lmiuix/internal/widget/f;->mRootView:Landroid/widget/FrameLayout;

    invoke-virtual {v1}, Landroid/view/ViewGroup;->removeAllViews()V

    iget-object v1, p0, Lmiuix/internal/widget/f;->mRootView:Landroid/widget/FrameLayout;

    iget-object v4, p0, Lmiuix/internal/widget/f;->mContentView:Landroid/view/View;

    invoke-virtual {v1, v4}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    iget-boolean v1, p0, Lmiuix/internal/widget/f;->mIsCustomContent:Z

    if-eqz v1, :cond_5

    iget-object v1, p0, Lmiuix/internal/widget/f;->mContentView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v4, -0x1

    iput v4, v1, Landroid/widget/FrameLayout$LayoutParams;->width:I

    iput v2, v1, Landroid/widget/FrameLayout$LayoutParams;->height:I

    const/16 v4, 0x10

    iput v4, v1, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    :cond_5
    iget-object v1, p0, Lmiuix/internal/widget/f;->mContentView:Landroid/view/View;

    const v4, 0x102000a

    invoke-virtual {v1, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ListView;

    iput-object v1, p0, Lmiuix/internal/widget/f;->mListView:Landroid/widget/ListView;

    if-nez v1, :cond_6

    const-string p1, "list not found"

    goto/16 :goto_0

    :cond_6
    new-instance p2, Lmiuix/internal/widget/f$d;

    invoke-direct {p2, p0}, Lmiuix/internal/widget/f$d;-><init>(Lmiuix/internal/widget/f;)V

    invoke-virtual {v1, p2}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    iget-object p2, p0, Lmiuix/internal/widget/f;->mListView:Landroid/widget/ListView;

    new-instance v1, Lmiuix/internal/widget/b;

    invoke-direct {v1, p0}, Lmiuix/internal/widget/b;-><init>(Lmiuix/internal/widget/f;)V

    invoke-virtual {p2, v1}, Landroid/widget/AdapterView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    iget-object p2, p0, Lmiuix/internal/widget/f;->mListView:Landroid/widget/ListView;

    iget-object v1, p0, Lmiuix/internal/widget/f;->mAdapter:Landroid/widget/ListAdapter;

    invoke-virtual {p2, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    invoke-virtual {p0, p3}, Lmiuix/internal/widget/f;->computePopupContentWidth(Landroid/graphics/Rect;)I

    move-result p2

    invoke-virtual {p0, p2}, Landroid/widget/PopupWindow;->setWidth(I)V

    invoke-virtual {p0, p3}, Lmiuix/internal/widget/f;->checkMaxHeight(Landroid/graphics/Rect;)I

    move-result p2

    if-lez p2, :cond_7

    iget-object p3, p0, Lmiuix/internal/widget/f;->mContentSize:Lmiuix/internal/widget/f$g;

    iget p3, p3, Lmiuix/internal/widget/f$g;->b:I

    invoke-static {p3, p2}, Ljava/lang/Math;->min(II)I

    move-result v2

    :cond_7
    invoke-virtual {p0, v2}, Landroid/widget/PopupWindow;->setHeight(I)V

    iget-object p2, p0, Lmiuix/internal/widget/f;->mContext:Landroid/content/Context;

    invoke-virtual {p2}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p2

    const-string p3, "input_method"

    invoke-virtual {p2, p3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/view/inputmethod/InputMethodManager;

    invoke-virtual {p1}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object p1

    invoke-virtual {p2, p1, v0}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    return v3
.end method

.method protected prepareWindowElevation(Landroid/view/View;I)V
    .locals 3

    invoke-direct {p0}, Lmiuix/internal/widget/f;->shouldSetElevation()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    sget-boolean v0, Lbl/g;->a:Z

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    invoke-virtual {p2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p2

    iget p2, p2, Landroid/util/DisplayMetrics;->density:F

    iget v0, p0, Lmiuix/internal/widget/f;->mShadowColor:I

    const/4 v1, 0x0

    mul-float/2addr v1, p2

    const/high16 v2, 0x41d00000    # 26.0f

    mul-float/2addr p2, v2

    iget v2, p0, Lmiuix/internal/widget/f;->mElevation:I

    int-to-float v2, v2

    invoke-static {p1, v0, v1, p2, v2}, Lbl/g;->b(Landroid/view/View;IFFF)V

    goto :goto_0

    :cond_1
    int-to-float p2, p2

    invoke-virtual {p1, p2}, Landroid/view/View;->setElevation(F)V

    invoke-virtual {p0, p1}, Lmiuix/internal/widget/f;->setPopupShadowAlpha(Landroid/view/View;)V

    :goto_0
    return-void
.end method

.method public setAdapter(Landroid/widget/ListAdapter;)V
    .locals 2

    iget-object v0, p0, Lmiuix/internal/widget/f;->mAdapter:Landroid/widget/ListAdapter;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lmiuix/internal/widget/f;->mObserver:Landroid/database/DataSetObserver;

    invoke-interface {v0, v1}, Landroid/widget/Adapter;->unregisterDataSetObserver(Landroid/database/DataSetObserver;)V

    :cond_0
    iput-object p1, p0, Lmiuix/internal/widget/f;->mAdapter:Landroid/widget/ListAdapter;

    if-eqz p1, :cond_1

    iget-object v0, p0, Lmiuix/internal/widget/f;->mObserver:Landroid/database/DataSetObserver;

    invoke-interface {p1, v0}, Landroid/widget/Adapter;->registerDataSetObserver(Landroid/database/DataSetObserver;)V

    :cond_1
    return-void
.end method

.method public setAnimationGravity(I)V
    .locals 0

    iput p1, p0, Lmiuix/internal/widget/f;->mUserAnimationGravity:I

    return-void
.end method

.method public setContentHeight(I)V
    .locals 1

    iget-object v0, p0, Lmiuix/internal/widget/f;->mContentSize:Lmiuix/internal/widget/f$g;

    iput p1, v0, Lmiuix/internal/widget/f$g;->b:I

    return-void
.end method

.method public setContentWidth(I)V
    .locals 1

    iget-object v0, p0, Lmiuix/internal/widget/f;->mContentSize:Lmiuix/internal/widget/f$g;

    invoke-virtual {v0, p1}, Lmiuix/internal/widget/f$g;->a(I)V

    return-void
.end method

.method public setDropDownGravity(I)V
    .locals 0

    iput p1, p0, Lmiuix/internal/widget/f;->mDropDownGravity:I

    return-void
.end method

.method public setFenceDecor(Landroid/view/View;)V
    .locals 1

    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lmiuix/internal/widget/f;->mFenceDecor:Ljava/lang/ref/WeakReference;

    return-void
.end method

.method public setHasShadow(Z)V
    .locals 0

    iput-boolean p1, p0, Lmiuix/internal/widget/f;->mHasShadow:Z

    return-void
.end method

.method public setHorizontalOffset(I)V
    .locals 0

    iput p1, p0, Lmiuix/internal/widget/f;->mOffsetX:I

    const/4 p1, 0x1

    iput-boolean p1, p0, Lmiuix/internal/widget/f;->mOffsetXSet:Z

    return-void
.end method

.method public setMaxAllowedHeight(I)V
    .locals 0

    iput p1, p0, Lmiuix/internal/widget/f;->mMaxAllowedHeight:I

    return-void
.end method

.method public setOnDismissListener(Landroid/widget/PopupWindow$OnDismissListener;)V
    .locals 0

    iput-object p1, p0, Lmiuix/internal/widget/f;->mOnDismissListener:Landroid/widget/PopupWindow$OnDismissListener;

    return-void
.end method

.method public setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V
    .locals 0

    iput-object p1, p0, Lmiuix/internal/widget/f;->mOnItemClickListener:Landroid/widget/AdapterView$OnItemClickListener;

    return-void
.end method

.method protected setPopupShadowAlpha(Landroid/view/View;)V
    .locals 2

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    iget-object v1, p0, Lmiuix/internal/widget/f;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lbl/c;->n(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/view/View;->setOutlineProvider(Landroid/view/ViewOutlineProvider;)V

    goto :goto_0

    :cond_0
    new-instance v1, Lmiuix/internal/widget/f$e;

    invoke-direct {v1, p0}, Lmiuix/internal/widget/f$e;-><init>(Lmiuix/internal/widget/f;)V

    invoke-virtual {p1, v1}, Landroid/view/View;->setOutlineProvider(Landroid/view/ViewOutlineProvider;)V

    const/16 v1, 0x1c

    if-lt v0, v1, :cond_1

    iget-object v0, p0, Lmiuix/internal/widget/f;->mContext:Landroid/content/Context;

    sget v1, Lmiuix/appcompat/R$color;->miuix_appcompat_drop_down_menu_spot_shadow_color:I

    invoke-virtual {v0, v1}, Landroid/content/Context;->getColor(I)I

    move-result v0

    invoke-static {p1, v0}, Lmiuix/internal/widget/a;->a(Landroid/view/View;I)V

    :cond_1
    :goto_0
    return-void
.end method

.method protected setPopupWindowContentView(Landroid/view/View;)V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lmiuix/internal/widget/f;->mIsCustomContent:Z

    invoke-super {p0, p1}, Landroid/widget/PopupWindow;->setContentView(Landroid/view/View;)V

    return-void
.end method

.method public setVerticalOffset(I)V
    .locals 0

    iput p1, p0, Lmiuix/internal/widget/f;->mOffsetY:I

    const/4 p1, 0x1

    iput-boolean p1, p0, Lmiuix/internal/widget/f;->mOffsetYSet:Z

    return-void
.end method

.method public show(Landroid/view/View;Landroid/view/ViewGroup;)V
    .locals 4

    if-nez p1, :cond_0

    return-void

    :cond_0
    invoke-direct {p0, p1}, Lmiuix/internal/widget/f;->getDecorView(Landroid/view/View;)Landroid/view/View;

    move-result-object v0

    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    invoke-static {v0, v1}, Lpl/j;->c(Landroid/view/View;Landroid/graphics/Rect;)V

    invoke-direct {p0, p1}, Lmiuix/internal/widget/f;->getWindowDecorVisibleBounds(Landroid/view/View;)Landroid/graphics/Rect;

    move-result-object v2

    invoke-virtual {p0}, Lmiuix/internal/widget/f;->getWindowDecorActualBounds()Landroid/graphics/Rect;

    move-result-object v3

    invoke-direct {p0, v0, v1, v3, v2}, Lmiuix/internal/widget/f;->updateSafeInsetsByDecor(Landroid/view/View;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;)V

    invoke-virtual {p0, p1, p2, v1}, Lmiuix/internal/widget/f;->prepareShow(Landroid/view/View;Landroid/view/ViewGroup;Landroid/graphics/Rect;)Z

    move-result p2

    if-eqz p2, :cond_1

    invoke-direct {p0, p1, v1}, Lmiuix/internal/widget/f;->showWithAnchor(Landroid/view/View;Landroid/graphics/Rect;)V

    :cond_1
    iget-object p1, p0, Lmiuix/internal/widget/f;->mContentView:Landroid/view/View;

    iget p2, p0, Lmiuix/internal/widget/f;->mElevation:I

    iget v0, p0, Lmiuix/internal/widget/f;->mElevationExtra:I

    add-int/2addr p2, v0

    invoke-virtual {p0, p1, p2}, Lmiuix/internal/widget/f;->prepareWindowElevation(Landroid/view/View;I)V

    iget-object p1, p0, Lmiuix/internal/widget/f;->mRootView:Landroid/widget/FrameLayout;

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Landroid/view/View;->setElevation(F)V

    return-void
.end method

.method public showAsDropDown(Landroid/view/View;III)V
    .locals 0

    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/PopupWindow;->showAsDropDown(Landroid/view/View;III)V

    new-instance p2, Ljava/lang/ref/WeakReference;

    invoke-direct {p2, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object p2, p0, Lmiuix/internal/widget/f;->mAnchor:Ljava/lang/ref/WeakReference;

    iget-object p1, p0, Lmiuix/internal/widget/f;->mContext:Landroid/content/Context;

    invoke-static {p1, p0}, Lmiuix/popupwidget/internal/util/SinglePopControl;->showPop(Landroid/content/Context;Ljava/lang/Object;)V

    return-void
.end method

.method public showAtLocation(Landroid/view/View;III)V
    .locals 7

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    invoke-virtual {p1, v0}, Landroid/view/View;->getGlobalVisibleRect(Landroid/graphics/Rect;)Z

    invoke-virtual {p0}, Landroid/widget/PopupWindow;->getWidth()I

    move-result v1

    if-lez v1, :cond_0

    invoke-virtual {p0}, Landroid/widget/PopupWindow;->getWidth()I

    move-result v1

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lmiuix/internal/widget/f;->mContentSize:Lmiuix/internal/widget/f$g;

    iget v1, v1, Lmiuix/internal/widget/f$g;->a:I

    :goto_0
    invoke-virtual {p0}, Landroid/widget/PopupWindow;->getHeight()I

    move-result v2

    if-lez v2, :cond_1

    invoke-virtual {p0}, Landroid/widget/PopupWindow;->getHeight()I

    move-result v2

    goto :goto_1

    :cond_1
    iget-object v2, p0, Lmiuix/internal/widget/f;->mContentSize:Lmiuix/internal/widget/f$g;

    iget v2, v2, Lmiuix/internal/widget/f$g;->b:I

    :goto_1
    new-instance v3, Landroid/graphics/Rect;

    invoke-direct {v3}, Landroid/graphics/Rect;-><init>()V

    add-int/2addr v1, p3

    add-int/2addr v2, p4

    invoke-virtual {v3, p3, p4, v1, v2}, Landroid/graphics/Rect;->set(IIII)V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "showAtLocation getWidth "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Landroid/widget/PopupWindow;->getWidth()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " getHeight "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Landroid/widget/PopupWindow;->getHeight()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "ListPopup"

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget v1, v3, Landroid/graphics/Rect;->top:I

    invoke-virtual {v0}, Landroid/graphics/Rect;->centerY()I

    move-result v2

    if-le v1, v2, :cond_2

    const/16 v1, 0x30

    goto :goto_2

    :cond_2
    iget v1, v3, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {v0}, Landroid/graphics/Rect;->centerY()I

    move-result v2

    if-gt v1, v2, :cond_3

    const/16 v1, 0x50

    goto :goto_2

    :cond_3
    const/4 v1, 0x0

    :goto_2
    iget v2, v3, Landroid/graphics/Rect;->left:I

    iget v4, v0, Landroid/graphics/Rect;->left:I

    if-lt v2, v4, :cond_4

    iget v5, v3, Landroid/graphics/Rect;->right:I

    iget v6, v0, Landroid/graphics/Rect;->right:I

    if-le v5, v6, :cond_4

    or-int/lit8 v1, v1, 0x3

    goto :goto_3

    :cond_4
    iget v5, v3, Landroid/graphics/Rect;->right:I

    iget v6, v0, Landroid/graphics/Rect;->right:I

    if-gt v5, v6, :cond_5

    if-ge v2, v4, :cond_5

    or-int/lit8 v1, v1, 0x5

    :cond_5
    :goto_3
    if-nez v1, :cond_6

    invoke-virtual {v0, v3}, Landroid/graphics/Rect;->contains(Landroid/graphics/Rect;)Z

    move-result v0

    if-eqz v0, :cond_6

    const/16 v1, 0x11

    :cond_6
    iget v0, p0, Lmiuix/internal/widget/f;->mUserAnimationGravity:I

    const/4 v2, -0x1

    if-eq v0, v2, :cond_7

    invoke-direct {p0, v0}, Lmiuix/internal/widget/f;->setAnimationStyleByGravity(I)V

    goto :goto_4

    :cond_7
    invoke-direct {p0, v1}, Lmiuix/internal/widget/f;->setAnimationStyleByGravity(I)V

    :goto_4
    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/PopupWindow;->showAtLocation(Landroid/view/View;III)V

    iget-object p1, p0, Lmiuix/internal/widget/f;->mContentView:Landroid/view/View;

    iget p2, p0, Lmiuix/internal/widget/f;->mElevation:I

    iget p3, p0, Lmiuix/internal/widget/f;->mElevationExtra:I

    add-int/2addr p2, p3

    invoke-virtual {p0, p1, p2}, Lmiuix/internal/widget/f;->prepareWindowElevation(Landroid/view/View;I)V

    iget-object p1, p0, Lmiuix/internal/widget/f;->mRootView:Landroid/widget/FrameLayout;

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Landroid/view/View;->setElevation(F)V

    iget-object p1, p0, Lmiuix/internal/widget/f;->mContext:Landroid/content/Context;

    invoke-static {p1, p0}, Lmiuix/popupwidget/internal/util/SinglePopControl;->showPop(Landroid/content/Context;Ljava/lang/Object;)V

    return-void
.end method

.method public update(IIIIZ)V
    .locals 4

    invoke-direct {p0}, Lmiuix/internal/widget/f;->getAnchor()Landroid/view/View;

    move-result-object v0

    instance-of v1, v0, Lmiuix/animation/ViewHoverListener;

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz v1, :cond_0

    move-object v1, v0

    check-cast v1, Lmiuix/animation/ViewHoverListener;

    invoke-interface {v1}, Lmiuix/animation/ViewHoverListener;->isHover()Z

    move-result v1

    if-eqz v1, :cond_0

    new-array p1, v3, [Ljava/lang/Object;

    aput-object v0, p1, v2

    const-string p2, "popupWindow update return"

    invoke-static {p2, p1}, Lmiuix/animation/utils/LogUtils;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void

    :cond_0
    new-array v1, v3, [Ljava/lang/Object;

    aput-object v0, v1, v2

    const-string v0, "popupWindow update execute"

    invoke-static {v0, v1}, Lmiuix/animation/utils/LogUtils;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-super/range {p0 .. p5}, Landroid/widget/PopupWindow;->update(IIIIZ)V

    return-void
.end method
