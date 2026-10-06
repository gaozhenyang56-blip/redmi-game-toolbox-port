.class public Lmiuix/bottomsheet/BottomSheetBehavior;
.super Landroidx/coordinatorlayout/widget/CoordinatorLayout$c;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lmiuix/bottomsheet/BottomSheetBehavior$n;,
        Lmiuix/bottomsheet/BottomSheetBehavior$SavedState;,
        Lmiuix/bottomsheet/BottomSheetBehavior$p;,
        Lmiuix/bottomsheet/BottomSheetBehavior$m;,
        Lmiuix/bottomsheet/BottomSheetBehavior$j;,
        Lmiuix/bottomsheet/BottomSheetBehavior$o;,
        Lmiuix/bottomsheet/BottomSheetBehavior$k;,
        Lmiuix/bottomsheet/BottomSheetBehavior$l;,
        Lmiuix/bottomsheet/BottomSheetBehavior$h;,
        Lmiuix/bottomsheet/BottomSheetBehavior$SaveFlags;,
        Lmiuix/bottomsheet/BottomSheetBehavior$StableState;,
        Lmiuix/bottomsheet/BottomSheetBehavior$State;,
        Lmiuix/bottomsheet/BottomSheetBehavior$i;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<V:",
        "Landroid/view/View;",
        ">",
        "Landroidx/coordinatorlayout/widget/CoordinatorLayout$c<",
        "TV;>;"
    }
.end annotation


# static fields
.field private static final ANIM_END_THRESHOLD:I = 0xa

.field static final DEFAULT_SIGNIFICANT_VEL_THRESHOLD:I = 0x1f4
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation
.end field

.field public static final EXPANDED_OFFSET_AUTO:I = -0x1

.field private static final FOLME_KEY:Ljava/lang/String; = "folme_key"

.field private static final FOLME_TARGET_RELEASE:Ljava/lang/String; = "bottom_sheet_release"

.field private static final HIDE_FRICTION:F = 0.1f

.field private static final HIDE_THRESHOLD:F = 0.5f

.field private static final INSET_TOP_UNDEFINED:I = -0x1

.field private static final INVALID_POSITION:I = -0x1

.field private static final MAX_SPEED:I = 0x2710

.field private static final NO_MAX_SIZE:I = -0x1

.field public static final PEEK_HEIGHT_AUTO:I = -0x1

.field public static final SAVE_ALL:I = -0x1

.field public static final SAVE_FIT_TO_CONTENTS:I = 0x2

.field public static final SAVE_HIDEABLE:I = 0x4

.field public static final SAVE_NONE:I = 0x0

.field public static final SAVE_PEEK_HEIGHT:I = 0x1

.field public static final SAVE_SKIP_COLLAPSED:I = 0x8

.field public static final STATE_COLLAPSED:I = 0x4

.field public static final STATE_DRAGGING:I = 0x1

.field public static final STATE_EXPANDED:I = 0x3

.field public static final STATE_HALF_EXPANDED:I = 0x6

.field public static final STATE_HIDDEN:I = 0x5

.field public static final STATE_SETTLING:I = 0x2

.field private static final TAG:Ljava/lang/String; = "BottomSheetBehavior"

.field private static final THRESHOLD_FLOATING_WINDOW_HEIGHT_DP:I = 0x294

.field private static final THRESHOLD_FLOATING_WINDOW_WIDTH_DP:I = 0x29e

.field static final VIEW_INDEX_ACCESSIBILITY_DELEGATE_VIEW:I = 0x1
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation
.end field

.field private static final VIEW_INDEX_BOTTOM_SHEET:I


# instance fields
.field accessibilityDelegateViewRef:Ljava/lang/ref/WeakReference;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field activePointerId:I

.field private animInterruptible:Z

.field private animRunning:Z

.field private attrs:Landroid/util/AttributeSet;

.field private backgroundTint:Landroid/content/res/ColorStateList;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private bottomEnterAnimConfig:Lmiuix/animation/base/AnimConfig;

.field private bottomEnterAnimTransitionListener:Lmiuix/animation/listener/TransitionListener;

.field private bottomExitAnimConfig:Lmiuix/animation/base/AnimConfig;

.field private bottomExitAnimStateStyle:Lmiuix/animation/IStateStyle;

.field private bottomExitAnimTransitionListener:Lmiuix/animation/listener/TransitionListener;

.field private bottomModeMaxWidth:I

.field private final callbacks:Ljava/util/ArrayList;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lmiuix/bottomsheet/BottomSheetBehavior$i;",
            ">;"
        }
    .end annotation
.end field

.field private childHeight:I

.field private childYInWindow:I

.field collapsedOffset:I

.field private defaultExpandedOffset:I

.field private defaultHighExpandedOffset:I

.field private density:F

.field private final dragCallback:Landroidx/customview/widget/c$c;

.field private draggable:Z

.field elevation:F

.field final expandHalfwayActionIds:Landroid/util/SparseIntArray;
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation
.end field

.field expandedOffset:I

.field private extraHeight:I

.field private extraPaddingEnabled:Z

.field private extraPaddingPolicy:Lyk/b;

.field fitToContentsOffset:I

.field private fixedHeightRatio:F

.field private fixedHeightRatioEnabled:Z

.field private floatingEnterAnimConfig:Lmiuix/animation/base/AnimConfig;

.field private floatingEnterAnimTransitionListener:Lmiuix/animation/listener/TransitionListener;

.field private floatingExitAnimConfig:Lmiuix/animation/base/AnimConfig;

.field private floatingExitAnimTransitionListener:Lmiuix/animation/listener/TransitionListener;

.field private floatingExitSateStyle:Lmiuix/animation/IStateStyle;

.field private floatingModeDependsOnWindow:Z

.field private floatingModeHeight:I

.field private floatingModeHeightRatio:F

.field private floatingModeWidth:I

.field private forceFullHeight:Z

.field private fullHeightHighRatio:F

.field private fullHeightLowRatio:F

.field private fullHeightLowRatioThreshold:I

.field private fullHeightMiddleRatio:F

.field private fullHeightMiddleRatioThreshold:I

.field private fullHeightMode:Z

.field private gestureInsetBottom:I

.field private gestureInsetBottomIgnored:Z

.field halfExpandedOffset:I

.field halfExpandedRatio:F

.field halfExpandedRatioWhenFixHeightRatio:F

.field private hideFriction:F

.field hideable:Z

.field private highExpandedOffsetThreshold:I

.field private horizontalExtraPadding:I

.field private ignoreEvents:Z

.field private importantForAccessibilityMap:Ljava/util/Map;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Landroid/view/View;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private initialY:I

.field private insetBottom:I

.field private insetTop:I

.field private insetTopInMeasureStep:I

.field private internalDraggable:Z

.field private internalFixedHeightRatioEnabled:Z

.field private lastMode:I

.field private lastNestedScrollDy:I

.field lastStableState:I

.field private mDeviceType:I

.field private mRequestLayoutRunnable:Lmiuix/bottomsheet/BottomSheetBehavior$o;

.field private marginLeftSystemWindowInsets:Z

.field private marginRightSystemWindowInsets:Z

.field private maxHeight:I

.field private maxWidth:I

.field private maximumVelocity:F

.field private minHeight:I

.field private mode:I

.field private modeConfig:I

.field private nestedScrolled:Z

.field nestedScrollingChildRef:Ljava/lang/ref/WeakReference;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field private onExtraPaddingListener:Lmiuix/bottomsheet/BottomSheetBehavior$k;

.field private onModeChangeListener:Lmiuix/bottomsheet/BottomSheetBehavior$l;

.field private originalWindowInsetsEnabled:Z

.field private paddingBottomSystemWindowInsets:Z

.field private paddingLeftSystemWindowInsets:Z

.field private paddingRightSystemWindowInsets:Z

.field parentHeight:I

.field parentViewRef:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Landroidx/coordinatorlayout/widget/CoordinatorLayout;",
            ">;"
        }
    .end annotation
.end field

.field parentWidth:I

.field private peekHeight:I

.field private peekHeightAuto:Z

.field private peekHeightGestureInsetBuffer:I

.field private peekHeightMin:I

.field private releaseAnimConfig:Lmiuix/animation/base/AnimConfig;

.field private releaseAnimListener:Lmiuix/bottomsheet/BottomSheetBehavior$n;

.field private releaseAnimStateStyle:Lmiuix/animation/IStateStyle;

.field private releaseAnimTransitionListener:Lmiuix/animation/listener/TransitionListener;

.field private final releaseEndAnimState:Lmiuix/animation/controller/AnimState;

.field private final releaseStartAnimState:Lmiuix/animation/controller/AnimState;

.field private saveFlags:I

.field private significantVelocityThreshold:I

.field private skipCollapsed:Z

.field private skipHalfExpanded:Z

.field state:I

.field private final stateSettlingTracker:Lmiuix/bottomsheet/BottomSheetBehavior$p;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lmiuix/bottomsheet/BottomSheetBehavior<",
            "TV;>.p;"
        }
    .end annotation
.end field

.field touchingScrollingChild:Z

.field private updateImportantForAccessibilityOnSiblings:Z

.field private velocityTracker:Landroid/view/VelocityTracker;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field viewDragHelper:Landroidx/customview/widget/c;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field viewRef:Ljava/lang/ref/WeakReference;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "TV;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 5

    invoke-direct {p0}, Landroidx/coordinatorlayout/widget/CoordinatorLayout$c;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lmiuix/bottomsheet/BottomSheetBehavior;->saveFlags:I

    iput-boolean v0, p0, Lmiuix/bottomsheet/BottomSheetBehavior;->updateImportantForAccessibilityOnSiblings:Z

    const/4 v1, -0x1

    iput v1, p0, Lmiuix/bottomsheet/BottomSheetBehavior;->maxWidth:I

    iput v1, p0, Lmiuix/bottomsheet/BottomSheetBehavior;->maxHeight:I

    iput v1, p0, Lmiuix/bottomsheet/BottomSheetBehavior;->insetTop:I

    new-instance v2, Lmiuix/bottomsheet/BottomSheetBehavior$p;

    const/4 v3, 0x0

    invoke-direct {v2, p0, v3}, Lmiuix/bottomsheet/BottomSheetBehavior$p;-><init>(Lmiuix/bottomsheet/BottomSheetBehavior;Lmiuix/bottomsheet/BottomSheetBehavior$a;)V

    iput-object v2, p0, Lmiuix/bottomsheet/BottomSheetBehavior;->stateSettlingTracker:Lmiuix/bottomsheet/BottomSheetBehavior$p;

    const/high16 v2, 0x3f000000    # 0.5f

    iput v2, p0, Lmiuix/bottomsheet/BottomSheetBehavior;->halfExpandedRatio:F

    const v2, 0x3f333333    # 0.7f

    iput v2, p0, Lmiuix/bottomsheet/BottomSheetBehavior;->halfExpandedRatioWhenFixHeightRatio:F

    const/high16 v3, -0x40800000    # -1.0f

    iput v3, p0, Lmiuix/bottomsheet/BottomSheetBehavior;->elevation:F

    const/4 v3, 0x1

    iput-boolean v3, p0, Lmiuix/bottomsheet/BottomSheetBehavior;->draggable:Z

    const/4 v4, 0x4

    iput v4, p0, Lmiuix/bottomsheet/BottomSheetBehavior;->state:I

    iput v4, p0, Lmiuix/bottomsheet/BottomSheetBehavior;->lastStableState:I

    const v4, 0x3dcccccd    # 0.1f

    iput v4, p0, Lmiuix/bottomsheet/BottomSheetBehavior;->hideFriction:F

    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    iput-object v4, p0, Lmiuix/bottomsheet/BottomSheetBehavior;->callbacks:Ljava/util/ArrayList;

    iput v1, p0, Lmiuix/bottomsheet/BottomSheetBehavior;->initialY:I

    new-instance v4, Landroid/util/SparseIntArray;

    invoke-direct {v4}, Landroid/util/SparseIntArray;-><init>()V

    iput-object v4, p0, Lmiuix/bottomsheet/BottomSheetBehavior;->expandHalfwayActionIds:Landroid/util/SparseIntArray;

    iput v0, p0, Lmiuix/bottomsheet/BottomSheetBehavior;->modeConfig:I

    iput v0, p0, Lmiuix/bottomsheet/BottomSheetBehavior;->mode:I

    iput v1, p0, Lmiuix/bottomsheet/BottomSheetBehavior;->lastMode:I

    iput-boolean v0, p0, Lmiuix/bottomsheet/BottomSheetBehavior;->fullHeightMode:Z

    const v1, 0x3f4ccccd    # 0.8f

    iput v1, p0, Lmiuix/bottomsheet/BottomSheetBehavior;->fullHeightHighRatio:F

    iput v2, p0, Lmiuix/bottomsheet/BottomSheetBehavior;->fullHeightMiddleRatio:F

    const/4 v1, 0x0

    iput v1, p0, Lmiuix/bottomsheet/BottomSheetBehavior;->fullHeightLowRatio:F

    iput-boolean v0, p0, Lmiuix/bottomsheet/BottomSheetBehavior;->skipHalfExpanded:Z

    iput-boolean v0, p0, Lmiuix/bottomsheet/BottomSheetBehavior;->forceFullHeight:Z

    iput-boolean v0, p0, Lmiuix/bottomsheet/BottomSheetBehavior;->fixedHeightRatioEnabled:Z

    iput-boolean v0, p0, Lmiuix/bottomsheet/BottomSheetBehavior;->internalFixedHeightRatioEnabled:Z

    iput v2, p0, Lmiuix/bottomsheet/BottomSheetBehavior;->fixedHeightRatio:F

    iput-boolean v0, p0, Lmiuix/bottomsheet/BottomSheetBehavior;->originalWindowInsetsEnabled:Z

    iput-boolean v3, p0, Lmiuix/bottomsheet/BottomSheetBehavior;->internalDraggable:Z

    iput-boolean v0, p0, Lmiuix/bottomsheet/BottomSheetBehavior;->animRunning:Z

    iput-boolean v0, p0, Lmiuix/bottomsheet/BottomSheetBehavior;->animInterruptible:Z

    iput v0, p0, Lmiuix/bottomsheet/BottomSheetBehavior;->horizontalExtraPadding:I

    iput-boolean v3, p0, Lmiuix/bottomsheet/BottomSheetBehavior;->extraPaddingEnabled:Z

    new-instance v0, Lmiuix/animation/controller/AnimState;

    invoke-direct {v0}, Lmiuix/animation/controller/AnimState;-><init>()V

    iput-object v0, p0, Lmiuix/bottomsheet/BottomSheetBehavior;->releaseStartAnimState:Lmiuix/animation/controller/AnimState;

    new-instance v0, Lmiuix/animation/controller/AnimState;

    invoke-direct {v0}, Lmiuix/animation/controller/AnimState;-><init>()V

    iput-object v0, p0, Lmiuix/bottomsheet/BottomSheetBehavior;->releaseEndAnimState:Lmiuix/animation/controller/AnimState;

    new-instance v0, Lmiuix/bottomsheet/BottomSheetBehavior$f;

    invoke-direct {v0, p0}, Lmiuix/bottomsheet/BottomSheetBehavior$f;-><init>(Lmiuix/bottomsheet/BottomSheetBehavior;)V

    iput-object v0, p0, Lmiuix/bottomsheet/BottomSheetBehavior;->dragCallback:Landroidx/customview/widget/c$c;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 9
    .param p1    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroid/util/AttributeSet;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    invoke-direct {p0, p1, p2}, Landroidx/coordinatorlayout/widget/CoordinatorLayout$c;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 v0, 0x0

    iput v0, p0, Lmiuix/bottomsheet/BottomSheetBehavior;->saveFlags:I

    iput-boolean v0, p0, Lmiuix/bottomsheet/BottomSheetBehavior;->updateImportantForAccessibilityOnSiblings:Z

    const/4 v1, -0x1

    iput v1, p0, Lmiuix/bottomsheet/BottomSheetBehavior;->maxWidth:I

    iput v1, p0, Lmiuix/bottomsheet/BottomSheetBehavior;->maxHeight:I

    iput v1, p0, Lmiuix/bottomsheet/BottomSheetBehavior;->insetTop:I

    new-instance v2, Lmiuix/bottomsheet/BottomSheetBehavior$p;

    const/4 v3, 0x0

    invoke-direct {v2, p0, v3}, Lmiuix/bottomsheet/BottomSheetBehavior$p;-><init>(Lmiuix/bottomsheet/BottomSheetBehavior;Lmiuix/bottomsheet/BottomSheetBehavior$a;)V

    iput-object v2, p0, Lmiuix/bottomsheet/BottomSheetBehavior;->stateSettlingTracker:Lmiuix/bottomsheet/BottomSheetBehavior$p;

    const/high16 v2, 0x3f000000    # 0.5f

    iput v2, p0, Lmiuix/bottomsheet/BottomSheetBehavior;->halfExpandedRatio:F

    const v3, 0x3f333333    # 0.7f

    iput v3, p0, Lmiuix/bottomsheet/BottomSheetBehavior;->halfExpandedRatioWhenFixHeightRatio:F

    const/high16 v4, -0x40800000    # -1.0f

    iput v4, p0, Lmiuix/bottomsheet/BottomSheetBehavior;->elevation:F

    const/4 v4, 0x1

    iput-boolean v4, p0, Lmiuix/bottomsheet/BottomSheetBehavior;->draggable:Z

    const/4 v5, 0x4

    iput v5, p0, Lmiuix/bottomsheet/BottomSheetBehavior;->state:I

    iput v5, p0, Lmiuix/bottomsheet/BottomSheetBehavior;->lastStableState:I

    const v5, 0x3dcccccd    # 0.1f

    iput v5, p0, Lmiuix/bottomsheet/BottomSheetBehavior;->hideFriction:F

    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    iput-object v5, p0, Lmiuix/bottomsheet/BottomSheetBehavior;->callbacks:Ljava/util/ArrayList;

    iput v1, p0, Lmiuix/bottomsheet/BottomSheetBehavior;->initialY:I

    new-instance v5, Landroid/util/SparseIntArray;

    invoke-direct {v5}, Landroid/util/SparseIntArray;-><init>()V

    iput-object v5, p0, Lmiuix/bottomsheet/BottomSheetBehavior;->expandHalfwayActionIds:Landroid/util/SparseIntArray;

    iput v0, p0, Lmiuix/bottomsheet/BottomSheetBehavior;->modeConfig:I

    iput v0, p0, Lmiuix/bottomsheet/BottomSheetBehavior;->mode:I

    iput v1, p0, Lmiuix/bottomsheet/BottomSheetBehavior;->lastMode:I

    iput-boolean v0, p0, Lmiuix/bottomsheet/BottomSheetBehavior;->fullHeightMode:Z

    const v1, 0x3f4ccccd    # 0.8f

    iput v1, p0, Lmiuix/bottomsheet/BottomSheetBehavior;->fullHeightHighRatio:F

    iput v3, p0, Lmiuix/bottomsheet/BottomSheetBehavior;->fullHeightMiddleRatio:F

    const/4 v5, 0x0

    iput v5, p0, Lmiuix/bottomsheet/BottomSheetBehavior;->fullHeightLowRatio:F

    iput-boolean v0, p0, Lmiuix/bottomsheet/BottomSheetBehavior;->skipHalfExpanded:Z

    iput-boolean v0, p0, Lmiuix/bottomsheet/BottomSheetBehavior;->forceFullHeight:Z

    iput-boolean v0, p0, Lmiuix/bottomsheet/BottomSheetBehavior;->fixedHeightRatioEnabled:Z

    iput-boolean v0, p0, Lmiuix/bottomsheet/BottomSheetBehavior;->internalFixedHeightRatioEnabled:Z

    iput v3, p0, Lmiuix/bottomsheet/BottomSheetBehavior;->fixedHeightRatio:F

    iput-boolean v0, p0, Lmiuix/bottomsheet/BottomSheetBehavior;->originalWindowInsetsEnabled:Z

    iput-boolean v4, p0, Lmiuix/bottomsheet/BottomSheetBehavior;->internalDraggable:Z

    iput-boolean v0, p0, Lmiuix/bottomsheet/BottomSheetBehavior;->animRunning:Z

    iput-boolean v0, p0, Lmiuix/bottomsheet/BottomSheetBehavior;->animInterruptible:Z

    iput v0, p0, Lmiuix/bottomsheet/BottomSheetBehavior;->horizontalExtraPadding:I

    iput-boolean v4, p0, Lmiuix/bottomsheet/BottomSheetBehavior;->extraPaddingEnabled:Z

    new-instance v6, Lmiuix/animation/controller/AnimState;

    invoke-direct {v6}, Lmiuix/animation/controller/AnimState;-><init>()V

    iput-object v6, p0, Lmiuix/bottomsheet/BottomSheetBehavior;->releaseStartAnimState:Lmiuix/animation/controller/AnimState;

    new-instance v6, Lmiuix/animation/controller/AnimState;

    invoke-direct {v6}, Lmiuix/animation/controller/AnimState;-><init>()V

    iput-object v6, p0, Lmiuix/bottomsheet/BottomSheetBehavior;->releaseEndAnimState:Lmiuix/animation/controller/AnimState;

    new-instance v6, Lmiuix/bottomsheet/BottomSheetBehavior$f;

    invoke-direct {v6, p0}, Lmiuix/bottomsheet/BottomSheetBehavior$f;-><init>(Lmiuix/bottomsheet/BottomSheetBehavior;)V

    iput-object v6, p0, Lmiuix/bottomsheet/BottomSheetBehavior;->dragCallback:Landroidx/customview/widget/c$c;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v6

    iget v6, v6, Landroid/util/DisplayMetrics;->density:F

    iput v6, p0, Lmiuix/bottomsheet/BottomSheetBehavior;->density:F

    iput-object p2, p0, Lmiuix/bottomsheet/BottomSheetBehavior;->attrs:Landroid/util/AttributeSet;

    sget-object v6, Lmiuix/bottomsheet/r;->S:[I

    invoke-virtual {p1, p2, v6}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v6

    sget v7, Lmiuix/bottomsheet/r;->h0:I

    invoke-virtual {v6, v7}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v8

    if-eqz v8, :cond_0

    invoke-static {p1, v6, v7}, Lmiuix/bottomsheet/BottomSheetBehavior;->getColorStateList(Landroid/content/Context;Landroid/content/res/TypedArray;I)Landroid/content/res/ColorStateList;

    move-result-object v7

    iput-object v7, p0, Lmiuix/bottomsheet/BottomSheetBehavior;->backgroundTint:Landroid/content/res/ColorStateList;

    :cond_0
    sget v7, Lmiuix/bottomsheet/r;->q0:I

    invoke-virtual {v6, v7, v0}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v7

    invoke-virtual {p0, v7}, Lmiuix/bottomsheet/BottomSheetBehavior;->setHideable(Z)V

    sget v7, Lmiuix/bottomsheet/r;->b0:I

    invoke-virtual {v6, v7, v0}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v7

    invoke-virtual {p0, v7}, Lmiuix/bottomsheet/BottomSheetBehavior;->setGestureInsetBottomIgnored(Z)V

    sget v7, Lmiuix/bottomsheet/r;->l0:I

    invoke-virtual {v6, v7, v0}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v7

    invoke-virtual {p0, v7}, Lmiuix/bottomsheet/BottomSheetBehavior;->setForceFullHeight(Z)V

    sget v7, Lmiuix/bottomsheet/r;->u0:I

    invoke-virtual {v6, v7, v0}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v7

    invoke-virtual {p0, v7}, Lmiuix/bottomsheet/BottomSheetBehavior;->setSkipCollapsed(Z)V

    sget v7, Lmiuix/bottomsheet/r;->i0:I

    invoke-virtual {v6, v7, v4}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v7

    invoke-virtual {p0, v7}, Lmiuix/bottomsheet/BottomSheetBehavior;->setDraggable(Z)V

    sget v7, Lmiuix/bottomsheet/r;->s0:I

    invoke-virtual {v6, v7, v0}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v7

    invoke-virtual {p0, v7}, Lmiuix/bottomsheet/BottomSheetBehavior;->setSaveFlags(I)V

    sget v7, Lmiuix/bottomsheet/r;->p0:I

    invoke-virtual {v6, v7, v2}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v2

    invoke-virtual {p0, v2}, Lmiuix/bottomsheet/BottomSheetBehavior;->setHalfExpandedRatio(F)V

    sget v2, Lmiuix/bottomsheet/r;->t0:I

    const/16 v7, 0x1f4

    invoke-virtual {v6, v2, v7}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v2

    invoke-virtual {p0, v2}, Lmiuix/bottomsheet/BottomSheetBehavior;->setSignificantVelocityThreshold(I)V

    sget v2, Lmiuix/bottomsheet/r;->e0:I

    invoke-virtual {v6, v2, v4}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v2

    iput-boolean v2, p0, Lmiuix/bottomsheet/BottomSheetBehavior;->paddingBottomSystemWindowInsets:Z

    sget v2, Lmiuix/bottomsheet/r;->f0:I

    invoke-virtual {v6, v2, v0}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v2

    iput-boolean v2, p0, Lmiuix/bottomsheet/BottomSheetBehavior;->paddingLeftSystemWindowInsets:Z

    sget v2, Lmiuix/bottomsheet/r;->g0:I

    invoke-virtual {v6, v2, v0}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v2

    iput-boolean v2, p0, Lmiuix/bottomsheet/BottomSheetBehavior;->paddingRightSystemWindowInsets:Z

    sget v2, Lmiuix/bottomsheet/r;->c0:I

    invoke-virtual {v6, v2, v4}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v2

    iput-boolean v2, p0, Lmiuix/bottomsheet/BottomSheetBehavior;->marginLeftSystemWindowInsets:Z

    sget v2, Lmiuix/bottomsheet/r;->d0:I

    invoke-virtual {v6, v2, v4}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v2

    iput-boolean v2, p0, Lmiuix/bottomsheet/BottomSheetBehavior;->marginRightSystemWindowInsets:Z

    sget v2, Lmiuix/bottomsheet/r;->v0:I

    invoke-virtual {v6, v2, v0}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v0

    iput v0, p0, Lmiuix/bottomsheet/BottomSheetBehavior;->modeConfig:I

    sget v0, Lmiuix/bottomsheet/r;->Z:I

    invoke-virtual {v6, v0, v1}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v0

    iput v0, p0, Lmiuix/bottomsheet/BottomSheetBehavior;->floatingModeHeightRatio:F

    sget v0, Lmiuix/bottomsheet/r;->m0:I

    invoke-virtual {v6, v0, v1}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v0

    iput v0, p0, Lmiuix/bottomsheet/BottomSheetBehavior;->fullHeightHighRatio:F

    sget v0, Lmiuix/bottomsheet/r;->o0:I

    invoke-virtual {v6, v0, v3}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v0

    iput v0, p0, Lmiuix/bottomsheet/BottomSheetBehavior;->fullHeightMiddleRatio:F

    sget v0, Lmiuix/bottomsheet/r;->n0:I

    invoke-virtual {v6, v0, v5}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v0

    iput v0, p0, Lmiuix/bottomsheet/BottomSheetBehavior;->fullHeightLowRatio:F

    sget v0, Lmiuix/bottomsheet/r;->k0:I

    invoke-virtual {v6, v0, v3}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v0

    iput v0, p0, Lmiuix/bottomsheet/BottomSheetBehavior;->fixedHeightRatio:F

    iput v0, p0, Lmiuix/bottomsheet/BottomSheetBehavior;->halfExpandedRatioWhenFixHeightRatio:F

    sget v0, Lmiuix/bottomsheet/r;->X:I

    invoke-virtual {v6, v0, v4}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v0

    invoke-virtual {p0, v0}, Lmiuix/bottomsheet/BottomSheetBehavior;->setFloatingModeDependsOnWindow(Z)V

    invoke-virtual {v6}, Landroid/content/res/TypedArray;->recycle()V

    invoke-direct {p0, p1, p2}, Lmiuix/bottomsheet/BottomSheetBehavior;->updateSizeConfig(Landroid/content/Context;Landroid/util/AttributeSet;)V

    invoke-static {p1}, Lsl/b;->a(Landroid/content/Context;)I

    move-result p2

    iput p2, p0, Lmiuix/bottomsheet/BottomSheetBehavior;->mDeviceType:I

    invoke-static {p1}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/ViewConfiguration;->getScaledMaximumFlingVelocity()I

    move-result p1

    int-to-float p1, p1

    iput p1, p0, Lmiuix/bottomsheet/BottomSheetBehavior;->maximumVelocity:F

    return-void
.end method

.method public static synthetic a(Lmiuix/bottomsheet/BottomSheetBehavior;Landroid/view/View;ZLandroid/view/View;Landroidx/core/view/WindowInsetsCompat;Lpl/j$d;)Landroidx/core/view/WindowInsetsCompat;
    .locals 0

    invoke-direct/range {p0 .. p5}, Lmiuix/bottomsheet/BottomSheetBehavior;->lambda$setWindowInsetsListener$1(Landroid/view/View;ZLandroid/view/View;Landroidx/core/view/WindowInsetsCompat;Lpl/j$d;)Landroidx/core/view/WindowInsetsCompat;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$1000(Lmiuix/bottomsheet/BottomSheetBehavior;Landroid/view/View;IZ)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lmiuix/bottomsheet/BottomSheetBehavior;->startSettling(Landroid/view/View;IZ)V

    return-void
.end method

.method static synthetic access$102(Lmiuix/bottomsheet/BottomSheetBehavior;Z)Z
    .locals 0

    iput-boolean p1, p0, Lmiuix/bottomsheet/BottomSheetBehavior;->animRunning:Z

    return p1
.end method

.method static synthetic access$1100(Lmiuix/bottomsheet/BottomSheetBehavior;)Z
    .locals 0

    invoke-direct {p0}, Lmiuix/bottomsheet/BottomSheetBehavior;->canBeHiddenByDragging()Z

    move-result p0

    return p0
.end method

.method static synthetic access$1400(Lmiuix/bottomsheet/BottomSheetBehavior;)I
    .locals 0

    iget p0, p0, Lmiuix/bottomsheet/BottomSheetBehavior;->peekHeight:I

    return p0
.end method

.method static synthetic access$1500(Lmiuix/bottomsheet/BottomSheetBehavior;)Z
    .locals 0

    iget-boolean p0, p0, Lmiuix/bottomsheet/BottomSheetBehavior;->skipCollapsed:Z

    return p0
.end method

.method static synthetic access$200(Lmiuix/bottomsheet/BottomSheetBehavior;)Lmiuix/animation/IStateStyle;
    .locals 0

    iget-object p0, p0, Lmiuix/bottomsheet/BottomSheetBehavior;->bottomExitAnimStateStyle:Lmiuix/animation/IStateStyle;

    return-object p0
.end method

.method static synthetic access$300(Lmiuix/bottomsheet/BottomSheetBehavior;)Z
    .locals 0

    invoke-direct {p0}, Lmiuix/bottomsheet/BottomSheetBehavior;->shouldBottomExitAnimEnd()Z

    move-result p0

    return p0
.end method

.method static synthetic access$400(Lmiuix/bottomsheet/BottomSheetBehavior;)Lmiuix/animation/IStateStyle;
    .locals 0

    iget-object p0, p0, Lmiuix/bottomsheet/BottomSheetBehavior;->floatingExitSateStyle:Lmiuix/animation/IStateStyle;

    return-object p0
.end method

.method static synthetic access$500(Lmiuix/bottomsheet/BottomSheetBehavior;)Z
    .locals 0

    invoke-direct {p0}, Lmiuix/bottomsheet/BottomSheetBehavior;->shouldFloatingExitAnimEnd()Z

    move-result p0

    return p0
.end method

.method static synthetic access$600(Lmiuix/bottomsheet/BottomSheetBehavior;)Lmiuix/bottomsheet/BottomSheetBehavior$n;
    .locals 0

    iget-object p0, p0, Lmiuix/bottomsheet/BottomSheetBehavior;->releaseAnimListener:Lmiuix/bottomsheet/BottomSheetBehavior$n;

    return-object p0
.end method

.method static synthetic access$700(Lmiuix/bottomsheet/BottomSheetBehavior;)Lmiuix/animation/IStateStyle;
    .locals 0

    iget-object p0, p0, Lmiuix/bottomsheet/BottomSheetBehavior;->releaseAnimStateStyle:Lmiuix/animation/IStateStyle;

    return-object p0
.end method

.method static synthetic access$800(Lmiuix/bottomsheet/BottomSheetBehavior;)Z
    .locals 0

    iget-boolean p0, p0, Lmiuix/bottomsheet/BottomSheetBehavior;->draggable:Z

    return p0
.end method

.method static synthetic access$900(Lmiuix/bottomsheet/BottomSheetBehavior;)I
    .locals 0

    iget p0, p0, Lmiuix/bottomsheet/BottomSheetBehavior;->significantVelocityThreshold:I

    return p0
.end method

.method private addAccessibilityActionForState(Landroid/view/View;II)I
    .locals 1
    .param p2    # I
        .annotation build Landroidx/annotation/StringRes;
        .end annotation
    .end param

    invoke-virtual {p1}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p2

    invoke-direct {p0, p3}, Lmiuix/bottomsheet/BottomSheetBehavior;->createAccessibilityViewCommandForState(I)Lc0/q;

    move-result-object p3

    invoke-static {p1, p2, p3}, Landroidx/core/view/ViewCompat;->c(Landroid/view/View;Ljava/lang/CharSequence;Lc0/q;)I

    move-result p1

    return p1
.end method

.method private applyWindowInsets(Landroid/view/View;ZZZZZ)V
    .locals 9

    if-eqz p1, :cond_1

    instance-of v0, p1, Lmiuix/view/m;

    if-eqz v0, :cond_0

    move-object v1, p1

    check-cast v1, Lmiuix/view/m;

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    move v6, p6

    invoke-interface/range {v1 .. v6}, Lmiuix/view/m;->applyWindowInsets(ZZZZZ)V

    :cond_0
    instance-of v0, p1, Landroid/view/ViewGroup;

    if-eqz v0, :cond_1

    check-cast p1, Landroid/view/ViewGroup;

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    invoke-virtual {p1, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    move-object v2, p0

    move v4, p2

    move v5, p3

    move v6, p4

    move v7, p5

    move v8, p6

    invoke-direct/range {v2 .. v8}, Lmiuix/bottomsheet/BottomSheetBehavior;->applyWindowInsets(Landroid/view/View;ZZZZZ)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public static synthetic b(Lmiuix/bottomsheet/BottomSheetBehavior;Landroid/view/View;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lmiuix/bottomsheet/BottomSheetBehavior;->lambda$setState$0(Landroid/view/View;I)V

    return-void
.end method

.method private calculateCollapsedOffset()V
    .locals 2

    invoke-direct {p0}, Lmiuix/bottomsheet/BottomSheetBehavior;->calculatePeekHeight()I

    move-result v0

    iget v1, p0, Lmiuix/bottomsheet/BottomSheetBehavior;->parentHeight:I

    sub-int/2addr v1, v0

    iget v0, p0, Lmiuix/bottomsheet/BottomSheetBehavior;->fitToContentsOffset:I

    invoke-static {v1, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    iput v0, p0, Lmiuix/bottomsheet/BottomSheetBehavior;->collapsedOffset:I

    return-void
.end method

.method private calculateExpandedOffset(II)I
    .locals 1

    const/4 v0, -0x1

    if-ne p2, v0, :cond_0

    const/4 p1, 0x0

    goto :goto_1

    :cond_0
    iget p2, p0, Lmiuix/bottomsheet/BottomSheetBehavior;->highExpandedOffsetThreshold:I

    if-lt p1, p2, :cond_1

    iget p1, p0, Lmiuix/bottomsheet/BottomSheetBehavior;->defaultHighExpandedOffset:I

    goto :goto_0

    :cond_1
    iget p1, p0, Lmiuix/bottomsheet/BottomSheetBehavior;->defaultExpandedOffset:I

    :goto_0
    iget p2, p0, Lmiuix/bottomsheet/BottomSheetBehavior;->insetTop:I

    if-le p2, p1, :cond_2

    move p1, p2

    :cond_2
    :goto_1
    return p1
.end method

.method private calculateHalfExpandedOffset()V
    .locals 3

    iget-boolean v0, p0, Lmiuix/bottomsheet/BottomSheetBehavior;->internalFixedHeightRatioEnabled:Z

    if-eqz v0, :cond_0

    iget v0, p0, Lmiuix/bottomsheet/BottomSheetBehavior;->halfExpandedRatioWhenFixHeightRatio:F

    goto :goto_0

    :cond_0
    iget v0, p0, Lmiuix/bottomsheet/BottomSheetBehavior;->halfExpandedRatio:F

    :goto_0
    iget v1, p0, Lmiuix/bottomsheet/BottomSheetBehavior;->parentHeight:I

    int-to-float v1, v1

    const/high16 v2, 0x3f800000    # 1.0f

    sub-float/2addr v2, v0

    mul-float/2addr v1, v2

    float-to-int v0, v1

    iput v0, p0, Lmiuix/bottomsheet/BottomSheetBehavior;->halfExpandedOffset:I

    return-void
.end method

.method private calculatePeekHeight()I
    .locals 3

    iget-boolean v0, p0, Lmiuix/bottomsheet/BottomSheetBehavior;->peekHeightAuto:Z

    if-eqz v0, :cond_0

    iget v0, p0, Lmiuix/bottomsheet/BottomSheetBehavior;->peekHeightMin:I

    iget v1, p0, Lmiuix/bottomsheet/BottomSheetBehavior;->parentHeight:I

    iget v2, p0, Lmiuix/bottomsheet/BottomSheetBehavior;->parentWidth:I

    mul-int/lit8 v2, v2, 0x9

    div-int/lit8 v2, v2, 0x10

    sub-int/2addr v1, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    iget v1, p0, Lmiuix/bottomsheet/BottomSheetBehavior;->childHeight:I

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    iget v1, p0, Lmiuix/bottomsheet/BottomSheetBehavior;->insetBottom:I

    add-int/2addr v0, v1

    return v0

    :cond_0
    iget-boolean v0, p0, Lmiuix/bottomsheet/BottomSheetBehavior;->gestureInsetBottomIgnored:Z

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lmiuix/bottomsheet/BottomSheetBehavior;->paddingBottomSystemWindowInsets:Z

    if-nez v0, :cond_1

    iget v0, p0, Lmiuix/bottomsheet/BottomSheetBehavior;->gestureInsetBottom:I

    if-lez v0, :cond_1

    iget v1, p0, Lmiuix/bottomsheet/BottomSheetBehavior;->peekHeight:I

    iget v2, p0, Lmiuix/bottomsheet/BottomSheetBehavior;->peekHeightGestureInsetBuffer:I

    add-int/2addr v0, v2

    invoke-static {v1, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    return v0

    :cond_1
    iget v0, p0, Lmiuix/bottomsheet/BottomSheetBehavior;->peekHeight:I

    iget v1, p0, Lmiuix/bottomsheet/BottomSheetBehavior;->insetBottom:I

    add-int/2addr v0, v1

    return v0
.end method

.method private calculateSlideOffsetWithTop(I)F
    .locals 2

    iget v0, p0, Lmiuix/bottomsheet/BottomSheetBehavior;->collapsedOffset:I

    if-gt p1, v0, :cond_1

    invoke-virtual {p0}, Lmiuix/bottomsheet/BottomSheetBehavior;->getExpandedOffset()I

    move-result v1

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    iget v0, p0, Lmiuix/bottomsheet/BottomSheetBehavior;->collapsedOffset:I

    sub-int p1, v0, p1

    int-to-float p1, p1

    invoke-virtual {p0}, Lmiuix/bottomsheet/BottomSheetBehavior;->getExpandedOffset()I

    move-result v1

    sub-int/2addr v0, v1

    int-to-float v0, v0

    goto :goto_1

    :cond_1
    :goto_0
    iget v0, p0, Lmiuix/bottomsheet/BottomSheetBehavior;->collapsedOffset:I

    sub-int p1, v0, p1

    int-to-float p1, p1

    iget v1, p0, Lmiuix/bottomsheet/BottomSheetBehavior;->parentHeight:I

    sub-int/2addr v1, v0

    int-to-float v0, v1

    :goto_1
    div-float/2addr p1, v0

    return p1
.end method

.method private canBeHiddenByDragging()Z
    .locals 1

    invoke-virtual {p0}, Lmiuix/bottomsheet/BottomSheetBehavior;->isHideable()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lmiuix/bottomsheet/BottomSheetBehavior;->isHideableWhenDragging()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private clearAccessibilityAction(Landroid/view/View;I)V
    .locals 2

    if-nez p1, :cond_0

    return-void

    :cond_0
    const/high16 v0, 0x80000

    invoke-static {p1, v0}, Landroidx/core/view/ViewCompat;->j0(Landroid/view/View;I)V

    const/high16 v0, 0x40000

    invoke-static {p1, v0}, Landroidx/core/view/ViewCompat;->j0(Landroid/view/View;I)V

    const/high16 v0, 0x100000

    invoke-static {p1, v0}, Landroidx/core/view/ViewCompat;->j0(Landroid/view/View;I)V

    iget-object v0, p0, Lmiuix/bottomsheet/BottomSheetBehavior;->expandHalfwayActionIds:Landroid/util/SparseIntArray;

    const/4 v1, -0x1

    invoke-virtual {v0, p2, v1}, Landroid/util/SparseIntArray;->get(II)I

    move-result v0

    if-eq v0, v1, :cond_1

    invoke-static {p1, v0}, Landroidx/core/view/ViewCompat;->j0(Landroid/view/View;I)V

    iget-object p1, p0, Lmiuix/bottomsheet/BottomSheetBehavior;->expandHalfwayActionIds:Landroid/util/SparseIntArray;

    invoke-virtual {p1, p2}, Landroid/util/SparseIntArray;->delete(I)V

    :cond_1
    return-void
.end method

.method private createAccessibilityViewCommandForState(I)Lc0/q;
    .locals 1

    new-instance v0, Lmiuix/bottomsheet/BottomSheetBehavior$g;

    invoke-direct {v0, p0, p1}, Lmiuix/bottomsheet/BottomSheetBehavior$g;-><init>(Lmiuix/bottomsheet/BottomSheetBehavior;I)V

    return-object v0
.end method

.method private fixStateInFloatingMode(I)I
    .locals 2

    iget v0, p0, Lmiuix/bottomsheet/BottomSheetBehavior;->mode:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    const/4 v0, 0x4

    if-eq p1, v0, :cond_0

    const/4 v0, 0x6

    if-ne p1, v0, :cond_1

    :cond_0
    const/4 p1, 0x3

    :cond_1
    return p1
.end method

.method public static from(Landroid/view/View;)Lmiuix/bottomsheet/BottomSheetBehavior;
    .locals 1
    .param p0    # Landroid/view/View;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<V:",
            "Landroid/view/View;",
            ">(TV;)",
            "Lmiuix/bottomsheet/BottomSheetBehavior<",
            "TV;>;"
        }
    .end annotation

    invoke-virtual {p0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p0

    instance-of v0, p0, Landroidx/coordinatorlayout/widget/CoordinatorLayout$e;

    if-eqz v0, :cond_1

    check-cast p0, Landroidx/coordinatorlayout/widget/CoordinatorLayout$e;

    invoke-virtual {p0}, Landroidx/coordinatorlayout/widget/CoordinatorLayout$e;->f()Landroidx/coordinatorlayout/widget/CoordinatorLayout$c;

    move-result-object p0

    instance-of v0, p0, Lmiuix/bottomsheet/BottomSheetBehavior;

    if-eqz v0, :cond_0

    check-cast p0, Lmiuix/bottomsheet/BottomSheetBehavior;

    return-object p0

    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "The view is not associated with BottomSheetBehavior"

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "The view is not a child of CoordinatorLayout"

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private getChildMeasureSpec(IIII)I
    .locals 0

    invoke-static {p1, p2, p4}, Landroid/view/ViewGroup;->getChildMeasureSpec(III)I

    move-result p1

    const/4 p2, -0x1

    if-ne p3, p2, :cond_0

    return p1

    :cond_0
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result p2

    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result p1

    const/high16 p4, 0x40000000    # 2.0f

    if-eq p2, p4, :cond_2

    if-nez p1, :cond_1

    goto :goto_0

    :cond_1
    invoke-static {p1, p3}, Ljava/lang/Math;->min(II)I

    move-result p3

    :goto_0
    const/high16 p1, -0x80000000

    invoke-static {p3, p1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p1

    return p1

    :cond_2
    invoke-static {p1, p3}, Ljava/lang/Math;->min(II)I

    move-result p1

    invoke-static {p1, p4}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p1

    return p1
.end method

.method private static getColorStateList(Landroid/content/Context;Landroid/content/res/TypedArray;I)Landroid/content/res/ColorStateList;
    .locals 1
    .param p0    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p1    # Landroid/content/res/TypedArray;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # I
        .annotation build Landroidx/annotation/StyleableRes;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    invoke-virtual {p1, p2}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {p0, v0}, Lf/a;->a(Landroid/content/Context;I)Landroid/content/res/ColorStateList;

    move-result-object p0

    if-eqz p0, :cond_0

    return-object p0

    :cond_0
    invoke-virtual {p1, p2}, Landroid/content/res/TypedArray;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object p0

    return-object p0
.end method

.method private getFullHeightRatio(I)F
    .locals 1

    iget v0, p0, Lmiuix/bottomsheet/BottomSheetBehavior;->fullHeightLowRatioThreshold:I

    if-gt p1, v0, :cond_0

    iget p1, p0, Lmiuix/bottomsheet/BottomSheetBehavior;->fullHeightLowRatio:F

    return p1

    :cond_0
    iget v0, p0, Lmiuix/bottomsheet/BottomSheetBehavior;->fullHeightMiddleRatioThreshold:I

    if-gt p1, v0, :cond_1

    iget p1, p0, Lmiuix/bottomsheet/BottomSheetBehavior;->fullHeightMiddleRatio:F

    return p1

    :cond_1
    iget p1, p0, Lmiuix/bottomsheet/BottomSheetBehavior;->fullHeightHighRatio:F

    return p1
.end method

.method private getMaxHeight(I)I
    .locals 2

    iget v0, p0, Lmiuix/bottomsheet/BottomSheetBehavior;->expandedOffset:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    iget v0, p0, Lmiuix/bottomsheet/BottomSheetBehavior;->insetTop:I

    invoke-direct {p0, p1, v0}, Lmiuix/bottomsheet/BottomSheetBehavior;->calculateExpandedOffset(II)I

    move-result v0

    sub-int/2addr p1, v0

    return p1

    :cond_0
    sub-int/2addr p1, v0

    return p1
.end method

.method private getStateDescription(I)Ljava/lang/String;
    .locals 1

    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    const-string p1, "STATE_DRAGGING"

    return-object p1

    :cond_0
    const/4 v0, 0x2

    if-ne p1, v0, :cond_1

    const-string p1, "STATE_SETTLING"

    return-object p1

    :cond_1
    const/4 v0, 0x3

    if-ne p1, v0, :cond_2

    const-string p1, "STATE_EXPANDED"

    return-object p1

    :cond_2
    const/4 v0, 0x4

    if-ne p1, v0, :cond_3

    const-string p1, "STATE_COLLAPSED"

    return-object p1

    :cond_3
    const/4 v0, 0x5

    if-ne p1, v0, :cond_4

    const-string p1, "STATE_HIDDEN"

    return-object p1

    :cond_4
    const/4 v0, 0x6

    if-ne p1, v0, :cond_5

    const-string p1, "STATE_HALF_EXPANDED"

    return-object p1

    :cond_5
    const-string p1, "Unknown State"

    return-object p1
.end method

.method private getTopOffsetForState(I)I
    .locals 3

    const/4 v0, 0x3

    if-eq p1, v0, :cond_3

    const/4 v0, 0x4

    if-eq p1, v0, :cond_2

    const/4 v0, 0x5

    if-eq p1, v0, :cond_1

    const/4 v0, 0x6

    if-ne p1, v0, :cond_0

    iget p1, p0, Lmiuix/bottomsheet/BottomSheetBehavior;->halfExpandedOffset:I

    return p1

    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid state to get top offset: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    iget p1, p0, Lmiuix/bottomsheet/BottomSheetBehavior;->parentHeight:I

    return p1

    :cond_2
    iget p1, p0, Lmiuix/bottomsheet/BottomSheetBehavior;->collapsedOffset:I

    return p1

    :cond_3
    invoke-virtual {p0}, Lmiuix/bottomsheet/BottomSheetBehavior;->getExpandedOffset()I

    move-result p1

    return p1
.end method

.method private getYVelocity()F
    .locals 3

    iget-object v0, p0, Lmiuix/bottomsheet/BottomSheetBehavior;->velocityTracker:Landroid/view/VelocityTracker;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return v0

    :cond_0
    const/16 v1, 0x3e8

    iget v2, p0, Lmiuix/bottomsheet/BottomSheetBehavior;->maximumVelocity:F

    invoke-virtual {v0, v1, v2}, Landroid/view/VelocityTracker;->computeCurrentVelocity(IF)V

    iget-object v0, p0, Lmiuix/bottomsheet/BottomSheetBehavior;->velocityTracker:Landroid/view/VelocityTracker;

    iget v1, p0, Lmiuix/bottomsheet/BottomSheetBehavior;->activePointerId:I

    invoke-virtual {v0, v1}, Landroid/view/VelocityTracker;->getYVelocity(I)F

    move-result v0

    return v0
.end method

.method private isInternalDraggable()Z
    .locals 1

    iget-boolean v0, p0, Lmiuix/bottomsheet/BottomSheetBehavior;->draggable:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lmiuix/bottomsheet/BottomSheetBehavior;->internalDraggable:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private isLayouting(Landroid/view/View;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TV;)Z"
        }
    .end annotation

    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-interface {v0}, Landroid/view/ViewParent;->isLayoutRequested()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {p1}, Landroidx/core/view/ViewCompat;->S(Landroid/view/View;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method private synthetic lambda$setState$0(Landroid/view/View;I)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lmiuix/bottomsheet/BottomSheetBehavior;->startSettling(Landroid/view/View;IZ)V

    return-void
.end method

.method private synthetic lambda$setWindowInsetsListener$1(Landroid/view/View;ZLandroid/view/View;Landroidx/core/view/WindowInsetsCompat;Lpl/j$d;)Landroidx/core/view/WindowInsetsCompat;
    .locals 8

    iget-boolean v0, p0, Lmiuix/bottomsheet/BottomSheetBehavior;->originalWindowInsetsEnabled:Z

    if-eqz v0, :cond_0

    invoke-virtual {p3}, Landroid/view/View;->getRootWindowInsets()Landroid/view/WindowInsets;

    move-result-object p4

    invoke-static {p4}, Landroidx/core/view/WindowInsetsCompat;->x(Landroid/view/WindowInsets;)Landroidx/core/view/WindowInsetsCompat;

    move-result-object p4

    :cond_0
    iget v0, p0, Lmiuix/bottomsheet/BottomSheetBehavior;->mode:I

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-ne v0, v1, :cond_2

    iget-boolean p2, p0, Lmiuix/bottomsheet/BottomSheetBehavior;->paddingBottomSystemWindowInsets:Z

    if-eqz p2, :cond_1

    invoke-static {}, Landroidx/core/view/WindowInsetsCompat$Type;->c()I

    move-result p2

    invoke-virtual {p4, p2}, Landroidx/core/view/WindowInsetsCompat;->f(I)Landroidx/core/graphics/e;

    move-result-object p2

    iget p2, p2, Landroidx/core/graphics/e;->d:I

    if-lez p2, :cond_1

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lbl/c;->i(Landroid/content/Context;)Lbl/o;

    move-result-object p1

    iget-object p1, p1, Lbl/o;->c:Landroid/graphics/Point;

    iget p1, p1, Landroid/graphics/Point;->y:I

    iget v0, p0, Lmiuix/bottomsheet/BottomSheetBehavior;->childYInWindow:I

    invoke-virtual {p3}, Landroid/view/View;->getHeight()I

    move-result v1

    add-int/2addr v0, v1

    sub-int/2addr p1, v0

    sub-int/2addr p2, p1

    invoke-static {v2, p2}, Ljava/lang/Math;->max(II)I

    move-result v2

    :cond_1
    iget p1, p5, Lpl/j$d;->b:I

    iget p2, p5, Lpl/j$d;->c:I

    iget v0, p5, Lpl/j$d;->d:I

    iget p5, p5, Lpl/j$d;->e:I

    add-int/2addr p5, v2

    invoke-virtual {p3, p1, p2, v0, p5}, Landroid/view/View;->setPaddingRelative(IIII)V

    return-object p4

    :cond_2
    invoke-static {}, Landroidx/core/view/WindowInsetsCompat$Type;->g()I

    move-result v0

    invoke-static {}, Landroidx/core/view/WindowInsetsCompat$Type;->b()I

    move-result v3

    or-int/2addr v0, v3

    invoke-virtual {p4, v0}, Landroidx/core/view/WindowInsetsCompat;->f(I)Landroidx/core/graphics/e;

    move-result-object v0

    invoke-static {}, Landroidx/core/view/WindowInsetsCompat$Type;->e()I

    move-result v3

    invoke-virtual {p4, v3}, Landroidx/core/view/WindowInsetsCompat;->f(I)Landroidx/core/graphics/e;

    move-result-object v3

    iget v4, v0, Landroidx/core/graphics/e;->b:I

    iput v4, p0, Lmiuix/bottomsheet/BottomSheetBehavior;->insetTop:I

    iget v5, p0, Lmiuix/bottomsheet/BottomSheetBehavior;->insetTopInMeasureStep:I

    if-eq v4, v5, :cond_4

    iget-object v4, p0, Lmiuix/bottomsheet/BottomSheetBehavior;->mRequestLayoutRunnable:Lmiuix/bottomsheet/BottomSheetBehavior$o;

    if-nez v4, :cond_3

    new-instance v4, Lmiuix/bottomsheet/BottomSheetBehavior$o;

    invoke-direct {v4, p1}, Lmiuix/bottomsheet/BottomSheetBehavior$o;-><init>(Landroid/view/View;)V

    iput-object v4, p0, Lmiuix/bottomsheet/BottomSheetBehavior;->mRequestLayoutRunnable:Lmiuix/bottomsheet/BottomSheetBehavior$o;

    :cond_3
    iget-object p1, p0, Lmiuix/bottomsheet/BottomSheetBehavior;->mRequestLayoutRunnable:Lmiuix/bottomsheet/BottomSheetBehavior$o;

    invoke-virtual {p3, p1}, Landroid/view/View;->removeCallbacks(Ljava/lang/Runnable;)Z

    iget-object p1, p0, Lmiuix/bottomsheet/BottomSheetBehavior;->mRequestLayoutRunnable:Lmiuix/bottomsheet/BottomSheetBehavior$o;

    iget v4, p0, Lmiuix/bottomsheet/BottomSheetBehavior;->insetTop:I

    iput v4, p1, Lmiuix/bottomsheet/BottomSheetBehavior$o;->a:I

    invoke-virtual {p3, p1}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    :cond_4
    invoke-static {p3}, Lpl/j;->f(Landroid/view/View;)Z

    move-result p1

    invoke-virtual {p3}, Landroid/view/View;->getPaddingBottom()I

    move-result v4

    invoke-virtual {p3}, Landroid/view/View;->getPaddingLeft()I

    move-result v5

    invoke-virtual {p3}, Landroid/view/View;->getPaddingRight()I

    move-result v6

    iget-boolean v7, p0, Lmiuix/bottomsheet/BottomSheetBehavior;->paddingBottomSystemWindowInsets:Z

    if-eqz v7, :cond_5

    invoke-virtual {p4}, Landroidx/core/view/WindowInsetsCompat;->j()I

    move-result v4

    iput v4, p0, Lmiuix/bottomsheet/BottomSheetBehavior;->insetBottom:I

    iget v7, p5, Lpl/j$d;->e:I

    add-int/2addr v4, v7

    :cond_5
    iget-boolean v7, p0, Lmiuix/bottomsheet/BottomSheetBehavior;->paddingLeftSystemWindowInsets:Z

    if-eqz v7, :cond_7

    if-eqz p1, :cond_6

    iget v5, p5, Lpl/j$d;->d:I

    goto :goto_0

    :cond_6
    iget v5, p5, Lpl/j$d;->b:I

    :goto_0
    iget v7, v0, Landroidx/core/graphics/e;->a:I

    add-int/2addr v5, v7

    :cond_7
    iget-boolean v7, p0, Lmiuix/bottomsheet/BottomSheetBehavior;->paddingRightSystemWindowInsets:Z

    if-eqz v7, :cond_9

    if-eqz p1, :cond_8

    iget p1, p5, Lpl/j$d;->b:I

    goto :goto_1

    :cond_8
    iget p1, p5, Lpl/j$d;->d:I

    :goto_1
    iget p5, v0, Landroidx/core/graphics/e;->c:I

    add-int v6, p1, p5

    :cond_9
    invoke-virtual {p3}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    check-cast p1, Landroid/view/ViewGroup$MarginLayoutParams;

    iget-boolean p5, p0, Lmiuix/bottomsheet/BottomSheetBehavior;->marginLeftSystemWindowInsets:Z

    if-eqz p5, :cond_a

    iget p5, p1, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    iget v7, v0, Landroidx/core/graphics/e;->a:I

    if-eq p5, v7, :cond_a

    iput v7, p1, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    move p5, v1

    goto :goto_2

    :cond_a
    move p5, v2

    :goto_2
    iget-boolean v7, p0, Lmiuix/bottomsheet/BottomSheetBehavior;->marginRightSystemWindowInsets:Z

    if-eqz v7, :cond_b

    iget v7, p1, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    iget v0, v0, Landroidx/core/graphics/e;->c:I

    if-eq v7, v0, :cond_b

    iput v0, p1, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    goto :goto_3

    :cond_b
    move v1, p5

    :goto_3
    if-eqz v1, :cond_c

    invoke-virtual {p3, p1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :cond_c
    invoke-virtual {p3}, Landroid/view/View;->getPaddingTop()I

    move-result p1

    invoke-virtual {p3, v5, p1, v6, v4}, Landroid/view/View;->setPadding(IIII)V

    if-eqz p2, :cond_d

    iget p1, v3, Landroidx/core/graphics/e;->d:I

    iput p1, p0, Lmiuix/bottomsheet/BottomSheetBehavior;->gestureInsetBottom:I

    :cond_d
    iget-boolean p1, p0, Lmiuix/bottomsheet/BottomSheetBehavior;->paddingBottomSystemWindowInsets:Z

    if-nez p1, :cond_e

    if-eqz p2, :cond_f

    :cond_e
    invoke-direct {p0, v2}, Lmiuix/bottomsheet/BottomSheetBehavior;->updatePeekHeight(Z)V

    :cond_f
    return-object p4
.end method

.method private replaceAccessibilityActionForState(Landroid/view/View;Lc0/k$a;I)V
    .locals 1

    invoke-direct {p0, p3}, Lmiuix/bottomsheet/BottomSheetBehavior;->createAccessibilityViewCommandForState(I)Lc0/q;

    move-result-object p3

    const/4 v0, 0x0

    invoke-static {p1, p2, v0, p3}, Landroidx/core/view/ViewCompat;->l0(Landroid/view/View;Lc0/k$a;Ljava/lang/CharSequence;Lc0/q;)V

    return-void
.end method

.method private reset()V
    .locals 1

    const/4 v0, -0x1

    iput v0, p0, Lmiuix/bottomsheet/BottomSheetBehavior;->activePointerId:I

    iput v0, p0, Lmiuix/bottomsheet/BottomSheetBehavior;->initialY:I

    iget-object v0, p0, Lmiuix/bottomsheet/BottomSheetBehavior;->velocityTracker:Landroid/view/VelocityTracker;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/view/VelocityTracker;->recycle()V

    const/4 v0, 0x0

    iput-object v0, p0, Lmiuix/bottomsheet/BottomSheetBehavior;->velocityTracker:Landroid/view/VelocityTracker;

    :cond_0
    return-void
.end method

.method private restoreOptionalState(Lmiuix/bottomsheet/BottomSheetBehavior$SavedState;)V
    .locals 4
    .param p1    # Lmiuix/bottomsheet/BottomSheetBehavior$SavedState;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    iget v0, p0, Lmiuix/bottomsheet/BottomSheetBehavior;->saveFlags:I

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v1, -0x1

    if-eq v0, v1, :cond_1

    and-int/lit8 v2, v0, 0x1

    const/4 v3, 0x1

    if-ne v2, v3, :cond_2

    :cond_1
    iget v2, p1, Lmiuix/bottomsheet/BottomSheetBehavior$SavedState;->peekHeight:I

    iput v2, p0, Lmiuix/bottomsheet/BottomSheetBehavior;->peekHeight:I

    :cond_2
    if-eq v0, v1, :cond_3

    and-int/lit8 v2, v0, 0x4

    const/4 v3, 0x4

    if-ne v2, v3, :cond_4

    :cond_3
    iget-boolean v2, p1, Lmiuix/bottomsheet/BottomSheetBehavior$SavedState;->hideable:Z

    iput-boolean v2, p0, Lmiuix/bottomsheet/BottomSheetBehavior;->hideable:Z

    :cond_4
    if-eq v0, v1, :cond_5

    const/16 v1, 0x8

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_6

    :cond_5
    iget-boolean p1, p1, Lmiuix/bottomsheet/BottomSheetBehavior$SavedState;->skipCollapsed:Z

    iput-boolean p1, p0, Lmiuix/bottomsheet/BottomSheetBehavior;->skipCollapsed:Z

    :cond_6
    return-void
.end method

.method private runAfterLayout(Landroid/view/View;Ljava/lang/Runnable;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TV;",
            "Ljava/lang/Runnable;",
            ")V"
        }
    .end annotation

    invoke-direct {p0, p1}, Lmiuix/bottomsheet/BottomSheetBehavior;->isLayouting(Landroid/view/View;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p1, p2}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    goto :goto_0

    :cond_0
    invoke-interface {p2}, Ljava/lang/Runnable;->run()V

    :goto_0
    return-void
.end method

.method private setInternalDraggable(Z)V
    .locals 0

    iput-boolean p1, p0, Lmiuix/bottomsheet/BottomSheetBehavior;->internalDraggable:Z

    return-void
.end method

.method private setWindowInsetsListener(Landroid/view/View;)V
    .locals 2
    .param p1    # Landroid/view/View;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1d

    if-lt v0, v1, :cond_0

    invoke-virtual {p0}, Lmiuix/bottomsheet/BottomSheetBehavior;->isGestureInsetBottomIgnored()Z

    move-result v0

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lmiuix/bottomsheet/BottomSheetBehavior;->peekHeightAuto:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iget-boolean v1, p0, Lmiuix/bottomsheet/BottomSheetBehavior;->paddingBottomSystemWindowInsets:Z

    if-nez v1, :cond_1

    iget-boolean v1, p0, Lmiuix/bottomsheet/BottomSheetBehavior;->paddingLeftSystemWindowInsets:Z

    if-nez v1, :cond_1

    iget-boolean v1, p0, Lmiuix/bottomsheet/BottomSheetBehavior;->paddingRightSystemWindowInsets:Z

    if-nez v1, :cond_1

    iget-boolean v1, p0, Lmiuix/bottomsheet/BottomSheetBehavior;->marginLeftSystemWindowInsets:Z

    if-nez v1, :cond_1

    iget-boolean v1, p0, Lmiuix/bottomsheet/BottomSheetBehavior;->marginRightSystemWindowInsets:Z

    if-nez v1, :cond_1

    if-nez v0, :cond_1

    return-void

    :cond_1
    new-instance v1, Lmiuix/bottomsheet/b;

    invoke-direct {v1, p0, p1, v0}, Lmiuix/bottomsheet/b;-><init>(Lmiuix/bottomsheet/BottomSheetBehavior;Landroid/view/View;Z)V

    invoke-static {p1, v1}, Lpl/j;->a(Landroid/view/View;Lpl/j$c;)V

    return-void
.end method

.method private shouldBottomExitAnimEnd()Z
    .locals 4

    iget-object v0, p0, Lmiuix/bottomsheet/BottomSheetBehavior;->parentViewRef:Ljava/lang/ref/WeakReference;

    const/4 v1, 0x1

    if-eqz v0, :cond_2

    iget-object v2, p0, Lmiuix/bottomsheet/BottomSheetBehavior;->viewRef:Ljava/lang/ref/WeakReference;

    if-nez v2, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    iget-object v2, p0, Lmiuix/bottomsheet/BottomSheetBehavior;->viewRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v2}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/View;

    if-eqz v0, :cond_2

    if-eqz v2, :cond_2

    invoke-virtual {v0}, Landroid/view/View;->getTranslationY()F

    move-result v3

    invoke-virtual {v2}, Landroid/view/View;->getTop()I

    move-result v2

    int-to-float v2, v2

    add-float/2addr v3, v2

    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    move-result v0

    add-int/lit8 v0, v0, -0xa

    int-to-float v0, v0

    cmpl-float v0, v3, v0

    if-lez v0, :cond_1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    :cond_2
    :goto_0
    return v1
.end method

.method private shouldFloatingExitAnimEnd()Z
    .locals 3

    iget-object v0, p0, Lmiuix/bottomsheet/BottomSheetBehavior;->viewRef:Ljava/lang/ref/WeakReference;

    const/4 v1, 0x1

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/view/View;->getTop()I

    move-result v2

    int-to-float v2, v2

    invoke-virtual {v0}, Landroid/view/View;->getTranslationY()F

    move-result v0

    add-float/2addr v2, v0

    iget v0, p0, Lmiuix/bottomsheet/BottomSheetBehavior;->parentHeight:I

    add-int/lit8 v0, v0, -0xa

    int-to-float v0, v0

    cmpl-float v0, v2, v0

    if-lez v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :cond_1
    :goto_0
    return v1
.end method

.method private shouldHandleDraggingWithHelper()Z
    .locals 2

    iget-object v0, p0, Lmiuix/bottomsheet/BottomSheetBehavior;->viewDragHelper:Landroidx/customview/widget/c;

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lmiuix/bottomsheet/BottomSheetBehavior;->isInternalDraggable()Z

    move-result v0

    if-nez v0, :cond_1

    iget v0, p0, Lmiuix/bottomsheet/BottomSheetBehavior;->state:I

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :cond_1
    :goto_0
    return v1
.end method

.method private startBottomEnterAnim(Lmiuix/bottomsheet/BottomSheetBehavior$h;Landroid/view/View;Landroid/view/View;Z)V
    .locals 7

    iget-object v0, p0, Lmiuix/bottomsheet/BottomSheetBehavior;->bottomEnterAnimConfig:Lmiuix/animation/base/AnimConfig;

    if-nez v0, :cond_0

    new-instance v0, Lmiuix/animation/base/AnimConfig;

    invoke-direct {v0}, Lmiuix/animation/base/AnimConfig;-><init>()V

    iput-object v0, p0, Lmiuix/bottomsheet/BottomSheetBehavior;->bottomEnterAnimConfig:Lmiuix/animation/base/AnimConfig;

    :cond_0
    iget-object v0, p0, Lmiuix/bottomsheet/BottomSheetBehavior;->bottomEnterAnimTransitionListener:Lmiuix/animation/listener/TransitionListener;

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_1

    iget-object v3, p0, Lmiuix/bottomsheet/BottomSheetBehavior;->bottomEnterAnimConfig:Lmiuix/animation/base/AnimConfig;

    new-array v4, v2, [Lmiuix/animation/listener/TransitionListener;

    aput-object v0, v4, v1

    invoke-virtual {v3, v4}, Lmiuix/animation/base/AnimConfig;->removeListeners([Lmiuix/animation/listener/TransitionListener;)Lmiuix/animation/base/AnimConfig;

    :cond_1
    new-instance v0, Lmiuix/bottomsheet/BottomSheetBehavior$a;

    invoke-direct {v0, p0, p2, p1}, Lmiuix/bottomsheet/BottomSheetBehavior$a;-><init>(Lmiuix/bottomsheet/BottomSheetBehavior;Landroid/view/View;Lmiuix/bottomsheet/BottomSheetBehavior$h;)V

    iput-object v0, p0, Lmiuix/bottomsheet/BottomSheetBehavior;->bottomEnterAnimTransitionListener:Lmiuix/animation/listener/TransitionListener;

    iget-object v3, p0, Lmiuix/bottomsheet/BottomSheetBehavior;->bottomEnterAnimConfig:Lmiuix/animation/base/AnimConfig;

    new-array v4, v2, [Lmiuix/animation/listener/TransitionListener;

    aput-object v0, v4, v1

    invoke-virtual {v3, v4}, Lmiuix/animation/base/AnimConfig;->addListeners([Lmiuix/animation/listener/TransitionListener;)Lmiuix/animation/base/AnimConfig;

    const/4 v0, 0x0

    invoke-virtual {p3, v0}, Landroid/view/View;->setTranslationY(F)V

    new-instance v3, Lmiuix/animation/controller/AnimState;

    invoke-direct {v3}, Lmiuix/animation/controller/AnimState;-><init>()V

    sget-object v4, Lmiuix/animation/property/ViewProperty;->TRANSLATION_Y:Lmiuix/animation/property/ViewProperty;

    const-wide/16 v5, 0x0

    invoke-virtual {v3, v4, v5, v6}, Lmiuix/animation/controller/AnimState;->add(Ljava/lang/Object;D)Lmiuix/animation/controller/AnimState;

    move-result-object v3

    if-eqz p4, :cond_2

    iput-boolean v2, p0, Lmiuix/bottomsheet/BottomSheetBehavior;->animRunning:Z

    invoke-interface {p1}, Lmiuix/bottomsheet/BottomSheetBehavior$h;->a()V

    invoke-virtual {p3, v0}, Landroid/view/View;->setTranslationY(F)V

    invoke-virtual {p2, v0}, Landroid/view/View;->setTranslationY(F)V

    invoke-interface {p1}, Lmiuix/bottomsheet/BottomSheetBehavior$h;->onAnimationEnd()V

    iput-boolean v1, p0, Lmiuix/bottomsheet/BottomSheetBehavior;->animRunning:Z

    goto :goto_0

    :cond_2
    iget-boolean p1, p0, Lmiuix/bottomsheet/BottomSheetBehavior;->animInterruptible:Z

    if-eqz p1, :cond_4

    invoke-virtual {p2}, Landroid/view/View;->getTranslationY()F

    move-result p1

    cmpl-float p1, p1, v0

    if-nez p1, :cond_3

    invoke-virtual {p2}, Landroid/view/View;->getHeight()I

    move-result p1

    int-to-float p1, p1

    invoke-virtual {p2, p1}, Landroid/view/View;->setTranslationY(F)V

    :cond_3
    new-array p1, v2, [Landroid/view/View;

    aput-object p2, p1, v1

    invoke-static {p1}, Lmiuix/animation/Folme;->useAt([Landroid/view/View;)Lmiuix/animation/IFolme;

    move-result-object p1

    invoke-interface {p1}, Lmiuix/animation/IFolme;->state()Lmiuix/animation/IStateStyle;

    move-result-object p1

    new-array p2, v2, [Lmiuix/animation/base/AnimConfig;

    iget-object p3, p0, Lmiuix/bottomsheet/BottomSheetBehavior;->bottomEnterAnimConfig:Lmiuix/animation/base/AnimConfig;

    aput-object p3, p2, v1

    invoke-interface {p1, v3, p2}, Lmiuix/animation/IStateStyle;->to(Ljava/lang/Object;[Lmiuix/animation/base/AnimConfig;)Lmiuix/animation/IStateStyle;

    goto :goto_0

    :cond_4
    new-array p1, v2, [Landroid/view/View;

    aput-object p2, p1, v1

    invoke-static {p1}, Lmiuix/animation/Folme;->useAt([Landroid/view/View;)Lmiuix/animation/IFolme;

    move-result-object p1

    invoke-interface {p1}, Lmiuix/animation/IFolme;->state()Lmiuix/animation/IStateStyle;

    move-result-object p1

    const/4 p3, 0x2

    new-array p3, p3, [Ljava/lang/Object;

    aput-object v4, p3, v1

    invoke-virtual {p2}, Landroid/view/View;->getHeight()I

    move-result p2

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    aput-object p2, p3, v2

    invoke-interface {p1, p3}, Lmiuix/animation/IStateStyle;->setTo([Ljava/lang/Object;)Lmiuix/animation/IStateStyle;

    move-result-object p1

    new-array p2, v2, [Lmiuix/animation/base/AnimConfig;

    iget-object p3, p0, Lmiuix/bottomsheet/BottomSheetBehavior;->bottomEnterAnimConfig:Lmiuix/animation/base/AnimConfig;

    aput-object p3, p2, v1

    invoke-interface {p1, v3, p2}, Lmiuix/animation/IStateStyle;->to(Ljava/lang/Object;[Lmiuix/animation/base/AnimConfig;)Lmiuix/animation/IStateStyle;

    :goto_0
    return-void
.end method

.method private startBottomExitAnimation(Lmiuix/bottomsheet/BottomSheetBehavior$h;Landroid/view/View;Landroid/view/View;Z)V
    .locals 5

    iget-object p3, p0, Lmiuix/bottomsheet/BottomSheetBehavior;->bottomExitAnimConfig:Lmiuix/animation/base/AnimConfig;

    if-nez p3, :cond_0

    new-instance p3, Lmiuix/animation/base/AnimConfig;

    invoke-direct {p3}, Lmiuix/animation/base/AnimConfig;-><init>()V

    iput-object p3, p0, Lmiuix/bottomsheet/BottomSheetBehavior;->bottomExitAnimConfig:Lmiuix/animation/base/AnimConfig;

    :cond_0
    iget-object p3, p0, Lmiuix/bottomsheet/BottomSheetBehavior;->bottomExitAnimTransitionListener:Lmiuix/animation/listener/TransitionListener;

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-eqz p3, :cond_1

    iget-object v2, p0, Lmiuix/bottomsheet/BottomSheetBehavior;->bottomExitAnimConfig:Lmiuix/animation/base/AnimConfig;

    new-array v3, v0, [Lmiuix/animation/listener/TransitionListener;

    aput-object p3, v3, v1

    invoke-virtual {v2, v3}, Lmiuix/animation/base/AnimConfig;->removeListeners([Lmiuix/animation/listener/TransitionListener;)Lmiuix/animation/base/AnimConfig;

    :cond_1
    new-instance p3, Lmiuix/bottomsheet/BottomSheetBehavior$c;

    invoke-direct {p3, p0, p2, p1}, Lmiuix/bottomsheet/BottomSheetBehavior$c;-><init>(Lmiuix/bottomsheet/BottomSheetBehavior;Landroid/view/View;Lmiuix/bottomsheet/BottomSheetBehavior$h;)V

    iput-object p3, p0, Lmiuix/bottomsheet/BottomSheetBehavior;->bottomExitAnimTransitionListener:Lmiuix/animation/listener/TransitionListener;

    iget-object v2, p0, Lmiuix/bottomsheet/BottomSheetBehavior;->bottomExitAnimConfig:Lmiuix/animation/base/AnimConfig;

    new-array v3, v0, [Lmiuix/animation/listener/TransitionListener;

    aput-object p3, v3, v1

    invoke-virtual {v2, v3}, Lmiuix/animation/base/AnimConfig;->addListeners([Lmiuix/animation/listener/TransitionListener;)Lmiuix/animation/base/AnimConfig;

    new-instance p3, Lmiuix/animation/controller/AnimState;

    invoke-direct {p3}, Lmiuix/animation/controller/AnimState;-><init>()V

    sget-object v2, Lmiuix/animation/property/ViewProperty;->TRANSLATION_Y:Lmiuix/animation/property/ViewProperty;

    invoke-virtual {p2}, Landroid/view/View;->getHeight()I

    move-result v3

    int-to-double v3, v3

    invoke-virtual {p3, v2, v3, v4}, Lmiuix/animation/controller/AnimState;->add(Ljava/lang/Object;D)Lmiuix/animation/controller/AnimState;

    move-result-object p3

    if-eqz p4, :cond_2

    iput-boolean v0, p0, Lmiuix/bottomsheet/BottomSheetBehavior;->animRunning:Z

    invoke-interface {p1}, Lmiuix/bottomsheet/BottomSheetBehavior$h;->a()V

    invoke-virtual {p2}, Landroid/view/View;->getHeight()I

    move-result p3

    int-to-float p3, p3

    invoke-virtual {p2, p3}, Landroid/view/View;->setTranslationY(F)V

    invoke-interface {p1}, Lmiuix/bottomsheet/BottomSheetBehavior$h;->onAnimationEnd()V

    iput-boolean v1, p0, Lmiuix/bottomsheet/BottomSheetBehavior;->animRunning:Z

    goto :goto_0

    :cond_2
    iget-boolean p1, p0, Lmiuix/bottomsheet/BottomSheetBehavior;->animInterruptible:Z

    if-eqz p1, :cond_3

    new-array p1, v0, [Landroid/view/View;

    aput-object p2, p1, v1

    invoke-static {p1}, Lmiuix/animation/Folme;->useAt([Landroid/view/View;)Lmiuix/animation/IFolme;

    move-result-object p1

    invoke-interface {p1}, Lmiuix/animation/IFolme;->state()Lmiuix/animation/IStateStyle;

    move-result-object p1

    iput-object p1, p0, Lmiuix/bottomsheet/BottomSheetBehavior;->bottomExitAnimStateStyle:Lmiuix/animation/IStateStyle;

    new-array p2, v0, [Lmiuix/animation/base/AnimConfig;

    iget-object p4, p0, Lmiuix/bottomsheet/BottomSheetBehavior;->bottomExitAnimConfig:Lmiuix/animation/base/AnimConfig;

    aput-object p4, p2, v1

    invoke-interface {p1, p3, p2}, Lmiuix/animation/IStateStyle;->to(Ljava/lang/Object;[Lmiuix/animation/base/AnimConfig;)Lmiuix/animation/IStateStyle;

    goto :goto_0

    :cond_3
    new-array p1, v0, [Landroid/view/View;

    aput-object p2, p1, v1

    invoke-static {p1}, Lmiuix/animation/Folme;->useAt([Landroid/view/View;)Lmiuix/animation/IFolme;

    move-result-object p1

    invoke-interface {p1}, Lmiuix/animation/IFolme;->state()Lmiuix/animation/IStateStyle;

    move-result-object p1

    iput-object p1, p0, Lmiuix/bottomsheet/BottomSheetBehavior;->bottomExitAnimStateStyle:Lmiuix/animation/IStateStyle;

    const/4 p2, 0x2

    new-array p2, p2, [Ljava/lang/Object;

    aput-object v2, p2, v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p4

    aput-object p4, p2, v0

    invoke-interface {p1, p2}, Lmiuix/animation/IStateStyle;->setTo([Ljava/lang/Object;)Lmiuix/animation/IStateStyle;

    move-result-object p1

    new-array p2, v0, [Lmiuix/animation/base/AnimConfig;

    iget-object p4, p0, Lmiuix/bottomsheet/BottomSheetBehavior;->bottomExitAnimConfig:Lmiuix/animation/base/AnimConfig;

    aput-object p4, p2, v1

    invoke-interface {p1, p3, p2}, Lmiuix/animation/IStateStyle;->to(Ljava/lang/Object;[Lmiuix/animation/base/AnimConfig;)Lmiuix/animation/IStateStyle;

    :goto_0
    return-void
.end method

.method private startFloatingEnterAnim(Lmiuix/bottomsheet/BottomSheetBehavior$h;Landroid/view/View;Landroid/view/View;Z)V
    .locals 8

    invoke-direct {p0, p3}, Lmiuix/bottomsheet/BottomSheetBehavior;->updateChildY(Landroid/view/View;)V

    iget-object v0, p0, Lmiuix/bottomsheet/BottomSheetBehavior;->floatingEnterAnimConfig:Lmiuix/animation/base/AnimConfig;

    if-nez v0, :cond_0

    new-instance v0, Lmiuix/animation/base/AnimConfig;

    invoke-direct {v0}, Lmiuix/animation/base/AnimConfig;-><init>()V

    const v1, 0x3f6147ae    # 0.88f

    const v2, 0x3ec28f5c    # 0.38f

    invoke-static {v1, v2}, Lmiuix/animation/a;->M(FF)Lmiuix/animation/utils/EaseManager$EaseStyle;

    move-result-object v1

    invoke-virtual {v0, v1}, Lmiuix/animation/base/AnimConfig;->setEase(Lmiuix/animation/utils/EaseManager$EaseStyle;)Lmiuix/animation/base/AnimConfig;

    move-result-object v0

    iput-object v0, p0, Lmiuix/bottomsheet/BottomSheetBehavior;->floatingEnterAnimConfig:Lmiuix/animation/base/AnimConfig;

    :cond_0
    iget-object v0, p0, Lmiuix/bottomsheet/BottomSheetBehavior;->floatingEnterAnimTransitionListener:Lmiuix/animation/listener/TransitionListener;

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_1

    iget-object v3, p0, Lmiuix/bottomsheet/BottomSheetBehavior;->floatingEnterAnimConfig:Lmiuix/animation/base/AnimConfig;

    new-array v4, v2, [Lmiuix/animation/listener/TransitionListener;

    aput-object v0, v4, v1

    invoke-virtual {v3, v4}, Lmiuix/animation/base/AnimConfig;->removeListeners([Lmiuix/animation/listener/TransitionListener;)Lmiuix/animation/base/AnimConfig;

    :cond_1
    new-instance v0, Lmiuix/bottomsheet/BottomSheetBehavior$b;

    invoke-direct {v0, p0, p2, p1}, Lmiuix/bottomsheet/BottomSheetBehavior$b;-><init>(Lmiuix/bottomsheet/BottomSheetBehavior;Landroid/view/View;Lmiuix/bottomsheet/BottomSheetBehavior$h;)V

    iput-object v0, p0, Lmiuix/bottomsheet/BottomSheetBehavior;->floatingEnterAnimTransitionListener:Lmiuix/animation/listener/TransitionListener;

    iget-object v3, p0, Lmiuix/bottomsheet/BottomSheetBehavior;->floatingEnterAnimConfig:Lmiuix/animation/base/AnimConfig;

    new-array v4, v2, [Lmiuix/animation/listener/TransitionListener;

    aput-object v0, v4, v1

    invoke-virtual {v3, v4}, Lmiuix/animation/base/AnimConfig;->addListeners([Lmiuix/animation/listener/TransitionListener;)Lmiuix/animation/base/AnimConfig;

    invoke-virtual {p2}, Landroid/view/View;->getHeight()I

    move-result v0

    int-to-float v0, v0

    const/high16 v3, 0x40000000    # 2.0f

    div-float/2addr v0, v3

    invoke-virtual {p3}, Landroid/view/View;->getHeight()I

    move-result v4

    int-to-float v4, v4

    div-float/2addr v4, v3

    add-float/2addr v0, v4

    float-to-int v0, v0

    const/4 v3, 0x0

    invoke-virtual {p2, v3}, Landroid/view/View;->setTranslationY(F)V

    new-instance v4, Lmiuix/animation/controller/AnimState;

    invoke-direct {v4}, Lmiuix/animation/controller/AnimState;-><init>()V

    sget-object v5, Lmiuix/animation/property/ViewProperty;->TRANSLATION_Y:Lmiuix/animation/property/ViewProperty;

    const-wide/16 v6, 0x0

    invoke-virtual {v4, v5, v6, v7}, Lmiuix/animation/controller/AnimState;->add(Ljava/lang/Object;D)Lmiuix/animation/controller/AnimState;

    move-result-object v4

    if-eqz p4, :cond_2

    iput-boolean v2, p0, Lmiuix/bottomsheet/BottomSheetBehavior;->animRunning:Z

    invoke-interface {p1}, Lmiuix/bottomsheet/BottomSheetBehavior$h;->a()V

    invoke-virtual {p3, v3}, Landroid/view/View;->setTranslationY(F)V

    invoke-virtual {p2, v3}, Landroid/view/View;->setTranslationY(F)V

    invoke-interface {p1}, Lmiuix/bottomsheet/BottomSheetBehavior$h;->onAnimationEnd()V

    iput-boolean v1, p0, Lmiuix/bottomsheet/BottomSheetBehavior;->animRunning:Z

    goto :goto_0

    :cond_2
    iget-boolean p1, p0, Lmiuix/bottomsheet/BottomSheetBehavior;->animInterruptible:Z

    if-eqz p1, :cond_4

    invoke-virtual {p3}, Landroid/view/View;->getTranslationY()F

    move-result p1

    cmpl-float p1, p1, v3

    if-nez p1, :cond_3

    int-to-float p1, v0

    invoke-virtual {p3, p1}, Landroid/view/View;->setTranslationY(F)V

    :cond_3
    new-array p1, v2, [Landroid/view/View;

    aput-object p3, p1, v1

    invoke-static {p1}, Lmiuix/animation/Folme;->useAt([Landroid/view/View;)Lmiuix/animation/IFolme;

    move-result-object p1

    invoke-interface {p1}, Lmiuix/animation/IFolme;->state()Lmiuix/animation/IStateStyle;

    move-result-object p1

    new-array p2, v2, [Lmiuix/animation/base/AnimConfig;

    iget-object p3, p0, Lmiuix/bottomsheet/BottomSheetBehavior;->floatingEnterAnimConfig:Lmiuix/animation/base/AnimConfig;

    aput-object p3, p2, v1

    invoke-interface {p1, v4, p2}, Lmiuix/animation/IStateStyle;->to(Ljava/lang/Object;[Lmiuix/animation/base/AnimConfig;)Lmiuix/animation/IStateStyle;

    goto :goto_0

    :cond_4
    new-array p1, v2, [Landroid/view/View;

    aput-object p3, p1, v1

    invoke-static {p1}, Lmiuix/animation/Folme;->useAt([Landroid/view/View;)Lmiuix/animation/IFolme;

    move-result-object p1

    invoke-interface {p1}, Lmiuix/animation/IFolme;->state()Lmiuix/animation/IStateStyle;

    move-result-object p1

    const/4 p2, 0x2

    new-array p2, p2, [Ljava/lang/Object;

    aput-object v5, p2, v1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    aput-object p3, p2, v2

    invoke-interface {p1, p2}, Lmiuix/animation/IStateStyle;->setTo([Ljava/lang/Object;)Lmiuix/animation/IStateStyle;

    move-result-object p1

    new-array p2, v2, [Lmiuix/animation/base/AnimConfig;

    iget-object p3, p0, Lmiuix/bottomsheet/BottomSheetBehavior;->floatingEnterAnimConfig:Lmiuix/animation/base/AnimConfig;

    aput-object p3, p2, v1

    invoke-interface {p1, v4, p2}, Lmiuix/animation/IStateStyle;->to(Ljava/lang/Object;[Lmiuix/animation/base/AnimConfig;)Lmiuix/animation/IStateStyle;

    :goto_0
    return-void
.end method

.method private startFloatingExitAnim(Lmiuix/bottomsheet/BottomSheetBehavior$h;Landroid/view/View;Landroid/view/View;Z)V
    .locals 6

    iget-object v0, p0, Lmiuix/bottomsheet/BottomSheetBehavior;->floatingExitAnimConfig:Lmiuix/animation/base/AnimConfig;

    if-nez v0, :cond_0

    new-instance v0, Lmiuix/animation/base/AnimConfig;

    invoke-direct {v0}, Lmiuix/animation/base/AnimConfig;-><init>()V

    const v1, 0x3f733333    # 0.95f

    const v2, 0x3e99999a    # 0.3f

    invoke-static {v1, v2}, Lmiuix/animation/a;->M(FF)Lmiuix/animation/utils/EaseManager$EaseStyle;

    move-result-object v1

    invoke-virtual {v0, v1}, Lmiuix/animation/base/AnimConfig;->setEase(Lmiuix/animation/utils/EaseManager$EaseStyle;)Lmiuix/animation/base/AnimConfig;

    move-result-object v0

    iput-object v0, p0, Lmiuix/bottomsheet/BottomSheetBehavior;->floatingExitAnimConfig:Lmiuix/animation/base/AnimConfig;

    :cond_0
    iget-object v0, p0, Lmiuix/bottomsheet/BottomSheetBehavior;->floatingExitAnimTransitionListener:Lmiuix/animation/listener/TransitionListener;

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_1

    iget-object v3, p0, Lmiuix/bottomsheet/BottomSheetBehavior;->floatingExitAnimConfig:Lmiuix/animation/base/AnimConfig;

    new-array v4, v1, [Lmiuix/animation/listener/TransitionListener;

    aput-object v0, v4, v2

    invoke-virtual {v3, v4}, Lmiuix/animation/base/AnimConfig;->removeListeners([Lmiuix/animation/listener/TransitionListener;)Lmiuix/animation/base/AnimConfig;

    :cond_1
    new-instance v0, Lmiuix/bottomsheet/BottomSheetBehavior$d;

    invoke-direct {v0, p0, p2, p1}, Lmiuix/bottomsheet/BottomSheetBehavior$d;-><init>(Lmiuix/bottomsheet/BottomSheetBehavior;Landroid/view/View;Lmiuix/bottomsheet/BottomSheetBehavior$h;)V

    iput-object v0, p0, Lmiuix/bottomsheet/BottomSheetBehavior;->floatingExitAnimTransitionListener:Lmiuix/animation/listener/TransitionListener;

    iget-object v3, p0, Lmiuix/bottomsheet/BottomSheetBehavior;->floatingExitAnimConfig:Lmiuix/animation/base/AnimConfig;

    new-array v4, v1, [Lmiuix/animation/listener/TransitionListener;

    aput-object v0, v4, v2

    invoke-virtual {v3, v4}, Lmiuix/animation/base/AnimConfig;->addListeners([Lmiuix/animation/listener/TransitionListener;)Lmiuix/animation/base/AnimConfig;

    invoke-virtual {p2}, Landroid/view/View;->getHeight()I

    move-result p2

    int-to-float p2, p2

    const/high16 v0, 0x40000000    # 2.0f

    div-float/2addr p2, v0

    invoke-virtual {p3}, Landroid/view/View;->getHeight()I

    move-result v3

    int-to-float v3, v3

    div-float/2addr v3, v0

    add-float/2addr p2, v3

    float-to-int p2, p2

    new-instance v0, Lmiuix/animation/controller/AnimState;

    invoke-direct {v0}, Lmiuix/animation/controller/AnimState;-><init>()V

    sget-object v3, Lmiuix/animation/property/ViewProperty;->TRANSLATION_Y:Lmiuix/animation/property/ViewProperty;

    int-to-double v4, p2

    invoke-virtual {v0, v3, v4, v5}, Lmiuix/animation/controller/AnimState;->add(Ljava/lang/Object;D)Lmiuix/animation/controller/AnimState;

    move-result-object v0

    if-eqz p4, :cond_2

    iput-boolean v1, p0, Lmiuix/bottomsheet/BottomSheetBehavior;->animRunning:Z

    invoke-interface {p1}, Lmiuix/bottomsheet/BottomSheetBehavior$h;->a()V

    int-to-float p2, p2

    invoke-virtual {p3, p2}, Landroid/view/View;->setTranslationY(F)V

    invoke-interface {p1}, Lmiuix/bottomsheet/BottomSheetBehavior$h;->onAnimationEnd()V

    iput-boolean v2, p0, Lmiuix/bottomsheet/BottomSheetBehavior;->animRunning:Z

    goto :goto_0

    :cond_2
    iget-boolean p1, p0, Lmiuix/bottomsheet/BottomSheetBehavior;->animInterruptible:Z

    if-eqz p1, :cond_3

    new-array p1, v1, [Landroid/view/View;

    aput-object p3, p1, v2

    invoke-static {p1}, Lmiuix/animation/Folme;->useAt([Landroid/view/View;)Lmiuix/animation/IFolme;

    move-result-object p1

    invoke-interface {p1}, Lmiuix/animation/IFolme;->state()Lmiuix/animation/IStateStyle;

    move-result-object p1

    iput-object p1, p0, Lmiuix/bottomsheet/BottomSheetBehavior;->floatingExitSateStyle:Lmiuix/animation/IStateStyle;

    new-array p2, v1, [Lmiuix/animation/base/AnimConfig;

    iget-object p3, p0, Lmiuix/bottomsheet/BottomSheetBehavior;->floatingExitAnimConfig:Lmiuix/animation/base/AnimConfig;

    aput-object p3, p2, v2

    invoke-interface {p1, v0, p2}, Lmiuix/animation/IStateStyle;->to(Ljava/lang/Object;[Lmiuix/animation/base/AnimConfig;)Lmiuix/animation/IStateStyle;

    goto :goto_0

    :cond_3
    new-array p1, v1, [Landroid/view/View;

    aput-object p3, p1, v2

    invoke-static {p1}, Lmiuix/animation/Folme;->useAt([Landroid/view/View;)Lmiuix/animation/IFolme;

    move-result-object p1

    invoke-interface {p1}, Lmiuix/animation/IFolme;->state()Lmiuix/animation/IStateStyle;

    move-result-object p1

    iput-object p1, p0, Lmiuix/bottomsheet/BottomSheetBehavior;->floatingExitSateStyle:Lmiuix/animation/IStateStyle;

    const/4 p2, 0x2

    new-array p2, p2, [Ljava/lang/Object;

    aput-object v3, p2, v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    aput-object p3, p2, v1

    invoke-interface {p1, p2}, Lmiuix/animation/IStateStyle;->setTo([Ljava/lang/Object;)Lmiuix/animation/IStateStyle;

    move-result-object p1

    new-array p2, v1, [Lmiuix/animation/base/AnimConfig;

    iget-object p3, p0, Lmiuix/bottomsheet/BottomSheetBehavior;->floatingExitAnimConfig:Lmiuix/animation/base/AnimConfig;

    aput-object p3, p2, v2

    invoke-interface {p1, v0, p2}, Lmiuix/animation/IStateStyle;->to(Ljava/lang/Object;[Lmiuix/animation/base/AnimConfig;)Lmiuix/animation/IStateStyle;

    :goto_0
    return-void
.end method

.method private startSettling(Landroid/view/View;IZ)V
    .locals 4

    invoke-direct {p0, p2}, Lmiuix/bottomsheet/BottomSheetBehavior;->getTopOffsetForState(I)I

    move-result p3

    iget-object v0, p0, Lmiuix/bottomsheet/BottomSheetBehavior;->releaseStartAnimState:Lmiuix/animation/controller/AnimState;

    invoke-virtual {p1}, Landroid/view/View;->getTop()I

    move-result v1

    const-string v2, "folme_key"

    invoke-virtual {v0, v2, v1}, Lmiuix/animation/controller/AnimState;->add(Ljava/lang/String;I)Lmiuix/animation/controller/AnimState;

    iget-object v0, p0, Lmiuix/bottomsheet/BottomSheetBehavior;->releaseEndAnimState:Lmiuix/animation/controller/AnimState;

    invoke-virtual {v0, v2, p3}, Lmiuix/animation/controller/AnimState;->add(Ljava/lang/String;I)Lmiuix/animation/controller/AnimState;

    iget-object p3, p0, Lmiuix/bottomsheet/BottomSheetBehavior;->viewDragHelper:Landroidx/customview/widget/c;

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-eqz p3, :cond_0

    move p3, v0

    goto :goto_0

    :cond_0
    move p3, v1

    :goto_0
    if-eqz p3, :cond_3

    const/4 p3, 0x2

    invoke-virtual {p0, p3}, Lmiuix/bottomsheet/BottomSheetBehavior;->setStateInternal(I)V

    iget-object p3, p0, Lmiuix/bottomsheet/BottomSheetBehavior;->releaseAnimConfig:Lmiuix/animation/base/AnimConfig;

    if-nez p3, :cond_1

    new-instance p3, Lmiuix/animation/base/AnimConfig;

    invoke-direct {p3}, Lmiuix/animation/base/AnimConfig;-><init>()V

    iput-object p3, p0, Lmiuix/bottomsheet/BottomSheetBehavior;->releaseAnimConfig:Lmiuix/animation/base/AnimConfig;

    const v2, 0x3f59999a    # 0.85f

    const v3, 0x3ecccccd    # 0.4f

    invoke-static {v2, v3}, Lmiuix/animation/a;->M(FF)Lmiuix/animation/utils/EaseManager$EaseStyle;

    move-result-object v2

    invoke-virtual {p3, v2}, Lmiuix/animation/base/AnimConfig;->setEase(Lmiuix/animation/utils/EaseManager$EaseStyle;)Lmiuix/animation/base/AnimConfig;

    :cond_1
    iget-object p3, p0, Lmiuix/bottomsheet/BottomSheetBehavior;->releaseAnimTransitionListener:Lmiuix/animation/listener/TransitionListener;

    if-eqz p3, :cond_2

    iget-object v2, p0, Lmiuix/bottomsheet/BottomSheetBehavior;->releaseAnimConfig:Lmiuix/animation/base/AnimConfig;

    new-array v3, v0, [Lmiuix/animation/listener/TransitionListener;

    aput-object p3, v3, v1

    invoke-virtual {v2, v3}, Lmiuix/animation/base/AnimConfig;->removeListeners([Lmiuix/animation/listener/TransitionListener;)Lmiuix/animation/base/AnimConfig;

    :cond_2
    new-instance p3, Lmiuix/bottomsheet/BottomSheetBehavior$e;

    invoke-direct {p3, p0, p2, p1}, Lmiuix/bottomsheet/BottomSheetBehavior$e;-><init>(Lmiuix/bottomsheet/BottomSheetBehavior;ILandroid/view/View;)V

    iput-object p3, p0, Lmiuix/bottomsheet/BottomSheetBehavior;->releaseAnimTransitionListener:Lmiuix/animation/listener/TransitionListener;

    iget-object p1, p0, Lmiuix/bottomsheet/BottomSheetBehavior;->releaseAnimConfig:Lmiuix/animation/base/AnimConfig;

    new-array p2, v0, [Lmiuix/animation/listener/TransitionListener;

    aput-object p3, p2, v1

    invoke-virtual {p1, p2}, Lmiuix/animation/base/AnimConfig;->addListeners([Lmiuix/animation/listener/TransitionListener;)Lmiuix/animation/base/AnimConfig;

    const p1, 0x461c4000    # 10000.0f

    const p2, -0x39e3c000    # -10000.0f

    invoke-direct {p0}, Lmiuix/bottomsheet/BottomSheetBehavior;->getYVelocity()F

    move-result p3

    invoke-static {p2, p3}, Ljava/lang/Math;->max(FF)F

    move-result p2

    invoke-static {p1, p2}, Ljava/lang/Math;->min(FF)F

    move-result p1

    iget-object p2, p0, Lmiuix/bottomsheet/BottomSheetBehavior;->releaseAnimConfig:Lmiuix/animation/base/AnimConfig;

    invoke-virtual {p2, p1}, Lmiuix/animation/base/AnimConfig;->setFromSpeed(F)Lmiuix/animation/base/AnimConfig;

    new-array p1, v0, [Ljava/lang/Object;

    const-string p2, "bottom_sheet_release"

    aput-object p2, p1, v1

    invoke-static {p1}, Lmiuix/animation/Folme;->useValue([Ljava/lang/Object;)Lmiuix/animation/IStateStyle;

    move-result-object p1

    iput-object p1, p0, Lmiuix/bottomsheet/BottomSheetBehavior;->releaseAnimStateStyle:Lmiuix/animation/IStateStyle;

    if-eqz p1, :cond_4

    const-wide/16 p2, 0x1

    invoke-interface {p1, p2, p3}, Lmiuix/animation/IStateStyle;->setFlags(J)Lmiuix/animation/IStateStyle;

    move-result-object p1

    iget-object p2, p0, Lmiuix/bottomsheet/BottomSheetBehavior;->releaseStartAnimState:Lmiuix/animation/controller/AnimState;

    invoke-interface {p1, p2}, Lmiuix/animation/IStateStyle;->setTo(Ljava/lang/Object;)Lmiuix/animation/IStateStyle;

    move-result-object p1

    iget-object p2, p0, Lmiuix/bottomsheet/BottomSheetBehavior;->releaseEndAnimState:Lmiuix/animation/controller/AnimState;

    new-array p3, v0, [Lmiuix/animation/base/AnimConfig;

    iget-object v0, p0, Lmiuix/bottomsheet/BottomSheetBehavior;->releaseAnimConfig:Lmiuix/animation/base/AnimConfig;

    aput-object v0, p3, v1

    invoke-interface {p1, p2, p3}, Lmiuix/animation/IStateStyle;->to(Ljava/lang/Object;[Lmiuix/animation/base/AnimConfig;)Lmiuix/animation/IStateStyle;

    goto :goto_1

    :cond_3
    invoke-virtual {p0, p2}, Lmiuix/bottomsheet/BottomSheetBehavior;->setStateInternal(I)V

    :cond_4
    :goto_1
    return-void
.end method

.method private supportFloatingMode(FII)Z
    .locals 3

    iget v0, p0, Lmiuix/bottomsheet/BottomSheetBehavior;->mDeviceType:I

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_0

    return v1

    :cond_0
    int-to-float p2, p2

    invoke-static {p1, p2}, Lbl/i;->t(FF)I

    move-result p2

    const/16 v0, 0x29e

    if-le p2, v0, :cond_1

    int-to-float p2, p3

    invoke-static {p1, p2}, Lbl/i;->t(FF)I

    move-result p1

    const/16 p2, 0x294

    if-le p1, p2, :cond_1

    move v1, v2

    :cond_1
    return v1
.end method

.method private supportFloatingMode(Landroid/content/Context;)Z
    .locals 4

    instance-of v0, p1, Landroid/app/Activity;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    move-object v0, p1

    check-cast v0, Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-static {v0}, Lbl/f;->b(Landroid/content/Intent;)Z

    move-result v0

    goto :goto_0

    :cond_0
    move v0, v1

    :goto_0
    if-nez v0, :cond_1

    instance-of v2, p1, Landroid/content/ContextWrapper;

    if-eqz v2, :cond_1

    move-object v2, p1

    check-cast v2, Landroid/content/ContextWrapper;

    invoke-virtual {v2}, Landroid/content/ContextWrapper;->getBaseContext()Landroid/content/Context;

    move-result-object v2

    instance-of v3, v2, Landroid/app/Activity;

    if-eqz v3, :cond_1

    check-cast v2, Landroid/app/Activity;

    invoke-virtual {v2}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-static {v0}, Lbl/f;->b(Landroid/content/Intent;)Z

    move-result v0

    :cond_1
    if-eqz v0, :cond_2

    return v1

    :cond_2
    iget v0, p0, Lmiuix/bottomsheet/BottomSheetBehavior;->mDeviceType:I

    const/4 v2, 0x3

    if-eq v0, v2, :cond_5

    const/4 v2, 0x5

    if-ne v0, v2, :cond_3

    goto :goto_1

    :cond_3
    const/4 v2, 0x2

    if-ne v0, v2, :cond_4

    invoke-static {p1}, Lmiuix/bottomsheet/BottomSheetBehavior$m;->a(Landroid/content/Context;)Z

    move-result p1

    return p1

    :cond_4
    return v1

    :cond_5
    :goto_1
    invoke-static {p1}, Lmiuix/bottomsheet/BottomSheetBehavior$j;->a(Landroid/content/Context;)Z

    move-result p1

    return p1
.end method

.method private supportFloatingMode(ZLandroid/content/Context;FII)Z
    .locals 0

    if-eqz p1, :cond_0

    invoke-direct {p0, p2}, Lmiuix/bottomsheet/BottomSheetBehavior;->supportFloatingMode(Landroid/content/Context;)Z

    move-result p1

    return p1

    :cond_0
    invoke-direct {p0, p3, p4, p5}, Lmiuix/bottomsheet/BottomSheetBehavior;->supportFloatingMode(FII)Z

    move-result p1

    return p1
.end method

.method private updateAccessibilityActions()V
    .locals 2

    iget-object v0, p0, Lmiuix/bottomsheet/BottomSheetBehavior;->viewRef:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lmiuix/bottomsheet/BottomSheetBehavior;->updateAccessibilityActions(Landroid/view/View;I)V

    :cond_0
    iget-object v0, p0, Lmiuix/bottomsheet/BottomSheetBehavior;->accessibilityDelegateViewRef:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1}, Lmiuix/bottomsheet/BottomSheetBehavior;->updateAccessibilityActions(Landroid/view/View;I)V

    :cond_1
    return-void
.end method

.method private updateAccessibilityActions(Landroid/view/View;I)V
    .locals 3

    if-nez p1, :cond_0

    return-void

    :cond_0
    invoke-direct {p0, p1, p2}, Lmiuix/bottomsheet/BottomSheetBehavior;->clearAccessibilityAction(Landroid/view/View;I)V

    invoke-virtual {p0}, Lmiuix/bottomsheet/BottomSheetBehavior;->shouldSkipHalfExpanded()Z

    move-result v0

    const/4 v1, 0x6

    if-nez v0, :cond_1

    iget v0, p0, Lmiuix/bottomsheet/BottomSheetBehavior;->state:I

    if-eq v0, v1, :cond_1

    iget-object v0, p0, Lmiuix/bottomsheet/BottomSheetBehavior;->expandHalfwayActionIds:Landroid/util/SparseIntArray;

    sget v2, Lmiuix/bottomsheet/p;->c:I

    invoke-direct {p0, p1, v2, v1}, Lmiuix/bottomsheet/BottomSheetBehavior;->addAccessibilityActionForState(Landroid/view/View;II)I

    move-result v2

    invoke-virtual {v0, p2, v2}, Landroid/util/SparseIntArray;->put(II)V

    :cond_1
    iget-boolean p2, p0, Lmiuix/bottomsheet/BottomSheetBehavior;->hideable:Z

    if-eqz p2, :cond_2

    invoke-virtual {p0}, Lmiuix/bottomsheet/BottomSheetBehavior;->isHideableWhenDragging()Z

    move-result p2

    if-eqz p2, :cond_2

    iget p2, p0, Lmiuix/bottomsheet/BottomSheetBehavior;->state:I

    const/4 v0, 0x5

    if-eq p2, v0, :cond_2

    sget-object p2, Lc0/k$a;->y:Lc0/k$a;

    invoke-direct {p0, p1, p2, v0}, Lmiuix/bottomsheet/BottomSheetBehavior;->replaceAccessibilityActionForState(Landroid/view/View;Lc0/k$a;I)V

    :cond_2
    iget p2, p0, Lmiuix/bottomsheet/BottomSheetBehavior;->state:I

    const/4 v0, 0x4

    const/4 v2, 0x3

    if-eq p2, v2, :cond_6

    if-eq p2, v0, :cond_4

    if-eq p2, v1, :cond_3

    goto :goto_1

    :cond_3
    sget-object p2, Lc0/k$a;->x:Lc0/k$a;

    invoke-direct {p0, p1, p2, v0}, Lmiuix/bottomsheet/BottomSheetBehavior;->replaceAccessibilityActionForState(Landroid/view/View;Lc0/k$a;I)V

    sget-object p2, Lc0/k$a;->w:Lc0/k$a;

    invoke-direct {p0, p1, p2, v2}, Lmiuix/bottomsheet/BottomSheetBehavior;->replaceAccessibilityActionForState(Landroid/view/View;Lc0/k$a;I)V

    goto :goto_1

    :cond_4
    invoke-virtual {p0}, Lmiuix/bottomsheet/BottomSheetBehavior;->shouldSkipHalfExpanded()Z

    move-result p2

    if-eqz p2, :cond_5

    move v1, v2

    :cond_5
    sget-object p2, Lc0/k$a;->w:Lc0/k$a;

    goto :goto_0

    :cond_6
    invoke-virtual {p0}, Lmiuix/bottomsheet/BottomSheetBehavior;->shouldSkipHalfExpanded()Z

    move-result p2

    if-eqz p2, :cond_7

    move v1, v0

    :cond_7
    sget-object p2, Lc0/k$a;->x:Lc0/k$a;

    :goto_0
    invoke-direct {p0, p1, p2, v1}, Lmiuix/bottomsheet/BottomSheetBehavior;->replaceAccessibilityActionForState(Landroid/view/View;Lc0/k$a;I)V

    :goto_1
    return-void
.end method

.method private updateChildY(Landroid/view/View;)V
    .locals 2

    iget-boolean v0, p0, Lmiuix/bottomsheet/BottomSheetBehavior;->floatingModeDependsOnWindow:Z

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Landroid/view/View;->getTop()I

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x2

    new-array v0, v0, [I

    invoke-virtual {p1, v0}, Landroid/view/View;->getLocationInWindow([I)V

    const/4 v1, 0x1

    aget v0, v0, v1

    :goto_0
    iput v0, p0, Lmiuix/bottomsheet/BottomSheetBehavior;->childYInWindow:I

    iget v0, p0, Lmiuix/bottomsheet/BottomSheetBehavior;->childYInWindow:I

    if-gtz v0, :cond_1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, "==\u300bchildYInWindow <= 0 ! It\'s probably a bad time to get the location."

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "BottomSheetBehavior"

    invoke-static {v0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    return-void
.end method

.method private updateImportantForAccessibility(Z)V
    .locals 6

    iget-object v0, p0, Lmiuix/bottomsheet/BottomSheetBehavior;->viewRef:Ljava/lang/ref/WeakReference;

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    instance-of v1, v0, Landroidx/coordinatorlayout/widget/CoordinatorLayout;

    if-nez v1, :cond_1

    return-void

    :cond_1
    check-cast v0, Landroidx/coordinatorlayout/widget/CoordinatorLayout;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v1

    if-eqz p1, :cond_3

    iget-object v2, p0, Lmiuix/bottomsheet/BottomSheetBehavior;->importantForAccessibilityMap:Ljava/util/Map;

    if-nez v2, :cond_2

    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2, v1}, Ljava/util/HashMap;-><init>(I)V

    iput-object v2, p0, Lmiuix/bottomsheet/BottomSheetBehavior;->importantForAccessibilityMap:Ljava/util/Map;

    goto :goto_0

    :cond_2
    return-void

    :cond_3
    :goto_0
    const/4 v2, 0x0

    :goto_1
    if-ge v2, v1, :cond_7

    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    iget-object v4, p0, Lmiuix/bottomsheet/BottomSheetBehavior;->viewRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v4}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v4

    if-ne v3, v4, :cond_4

    goto :goto_3

    :cond_4
    if-eqz p1, :cond_5

    iget-object v4, p0, Lmiuix/bottomsheet/BottomSheetBehavior;->importantForAccessibilityMap:Ljava/util/Map;

    invoke-virtual {v3}, Landroid/view/View;->getImportantForAccessibility()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v4, v3, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-boolean v4, p0, Lmiuix/bottomsheet/BottomSheetBehavior;->updateImportantForAccessibilityOnSiblings:Z

    if-eqz v4, :cond_6

    const/4 v4, 0x4

    :goto_2
    invoke-static {v3, v4}, Landroidx/core/view/ViewCompat;->A0(Landroid/view/View;I)V

    goto :goto_3

    :cond_5
    iget-boolean v4, p0, Lmiuix/bottomsheet/BottomSheetBehavior;->updateImportantForAccessibilityOnSiblings:Z

    if-eqz v4, :cond_6

    iget-object v4, p0, Lmiuix/bottomsheet/BottomSheetBehavior;->importantForAccessibilityMap:Ljava/util/Map;

    if-eqz v4, :cond_6

    invoke-interface {v4, v3}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_6

    iget-object v4, p0, Lmiuix/bottomsheet/BottomSheetBehavior;->importantForAccessibilityMap:Ljava/util/Map;

    invoke-interface {v4, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    goto :goto_2

    :cond_6
    :goto_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_7
    if-nez p1, :cond_8

    const/4 p1, 0x0

    iput-object p1, p0, Lmiuix/bottomsheet/BottomSheetBehavior;->importantForAccessibilityMap:Ljava/util/Map;

    goto :goto_4

    :cond_8
    iget-boolean p1, p0, Lmiuix/bottomsheet/BottomSheetBehavior;->updateImportantForAccessibilityOnSiblings:Z

    if-eqz p1, :cond_9

    iget-object p1, p0, Lmiuix/bottomsheet/BottomSheetBehavior;->viewRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {p1}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/view/View;

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/view/View;->sendAccessibilityEvent(I)V

    :cond_9
    :goto_4
    return-void
.end method

.method private updatePeekHeight(Z)V
    .locals 2

    iget-object v0, p0, Lmiuix/bottomsheet/BottomSheetBehavior;->viewRef:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_1

    invoke-direct {p0}, Lmiuix/bottomsheet/BottomSheetBehavior;->calculateCollapsedOffset()V

    iget v0, p0, Lmiuix/bottomsheet/BottomSheetBehavior;->state:I

    const/4 v1, 0x4

    if-ne v0, v1, :cond_1

    iget-object v0, p0, Lmiuix/bottomsheet/BottomSheetBehavior;->viewRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    if-eqz v0, :cond_1

    if-eqz p1, :cond_0

    invoke-virtual {p0, v1}, Lmiuix/bottomsheet/BottomSheetBehavior;->setState(I)V

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Landroid/view/View;->requestLayout()V

    :cond_1
    :goto_0
    return-void
.end method

.method private updateSizeConfig(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 6

    if-nez p1, :cond_0

    return-void

    :cond_0
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lmiuix/bottomsheet/m;->n:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lmiuix/bottomsheet/BottomSheetBehavior;->peekHeightGestureInsetBuffer:I

    sget v1, Lmiuix/bottomsheet/m;->k:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lmiuix/bottomsheet/BottomSheetBehavior;->minHeight:I

    sget v1, Lmiuix/bottomsheet/m;->a:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lmiuix/bottomsheet/BottomSheetBehavior;->defaultExpandedOffset:I

    sget v1, Lmiuix/bottomsheet/m;->b:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lmiuix/bottomsheet/BottomSheetBehavior;->defaultHighExpandedOffset:I

    sget v1, Lmiuix/bottomsheet/m;->j:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lmiuix/bottomsheet/BottomSheetBehavior;->highExpandedOffsetThreshold:I

    sget v1, Lmiuix/bottomsheet/m;->h:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lmiuix/bottomsheet/BottomSheetBehavior;->fullHeightLowRatioThreshold:I

    sget v1, Lmiuix/bottomsheet/m;->i:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lmiuix/bottomsheet/BottomSheetBehavior;->fullHeightMiddleRatioThreshold:I

    sget v1, Lmiuix/bottomsheet/m;->d:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lmiuix/bottomsheet/BottomSheetBehavior;->extraHeight:I

    if-nez p2, :cond_1

    return-void

    :cond_1
    sget-object v1, Lmiuix/bottomsheet/r;->S:[I

    invoke-virtual {p1, p2, v1}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object p2

    sget v1, Lmiuix/bottomsheet/r;->V:I

    const/high16 v2, -0x40800000    # -1.0f

    invoke-virtual {p2, v1, v2}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v1

    iput v1, p0, Lmiuix/bottomsheet/BottomSheetBehavior;->elevation:F

    sget v1, Lmiuix/bottomsheet/r;->T:I

    invoke-virtual {p2, v1}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v2

    const/4 v3, -0x1

    if-eqz v2, :cond_2

    invoke-virtual {p2, v1, v3}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v1

    invoke-virtual {p0, v1}, Lmiuix/bottomsheet/BottomSheetBehavior;->setMaxWidth(I)V

    :cond_2
    sget v1, Lmiuix/bottomsheet/r;->U:I

    invoke-virtual {p2, v1}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-virtual {p2, v1, v3}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v1

    invoke-virtual {p0, v1}, Lmiuix/bottomsheet/BottomSheetBehavior;->setMaxHeight(I)V

    :cond_3
    sget v1, Lmiuix/bottomsheet/r;->r0:I

    invoke-virtual {p2, v1}, Landroid/content/res/TypedArray;->peekValue(I)Landroid/util/TypedValue;

    move-result-object v2

    if-eqz v2, :cond_4

    iget v2, v2, Landroid/util/TypedValue;->data:I

    if-ne v2, v3, :cond_4

    invoke-virtual {p0, v2}, Lmiuix/bottomsheet/BottomSheetBehavior;->setPeekHeight(I)V

    goto :goto_0

    :cond_4
    invoke-virtual {p2, v1, v3}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v1

    invoke-virtual {p0, v1}, Lmiuix/bottomsheet/BottomSheetBehavior;->setPeekHeight(I)V

    :goto_0
    sget v1, Lmiuix/bottomsheet/r;->j0:I

    invoke-virtual {p2, v1}, Landroid/content/res/TypedArray;->peekValue(I)Landroid/util/TypedValue;

    move-result-object v2

    if-eqz v2, :cond_5

    iget v4, v2, Landroid/util/TypedValue;->type:I

    const/16 v5, 0x10

    if-ne v4, v5, :cond_5

    iget v1, v2, Landroid/util/TypedValue;->data:I

    goto :goto_1

    :cond_5
    invoke-virtual {p2, v1, v3}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    move-result v1

    :goto_1
    invoke-virtual {p0, v1}, Lmiuix/bottomsheet/BottomSheetBehavior;->setExpandedOffset(I)V

    sget v1, Lmiuix/bottomsheet/r;->a0:I

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lmiuix/bottomsheet/m;->g:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    invoke-virtual {p2, v1, v2}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v1

    iput v1, p0, Lmiuix/bottomsheet/BottomSheetBehavior;->floatingModeWidth:I

    sget v1, Lmiuix/bottomsheet/r;->Y:I

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget v2, Lmiuix/bottomsheet/m;->e:I

    invoke-virtual {p1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    invoke-virtual {p2, v1, p1}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result p1

    iput p1, p0, Lmiuix/bottomsheet/BottomSheetBehavior;->floatingModeHeight:I

    sget p1, Lmiuix/bottomsheet/r;->W:I

    sget v1, Lmiuix/bottomsheet/m;->c:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    invoke-virtual {p2, p1, v0}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result p1

    invoke-virtual {p0, p1}, Lmiuix/bottomsheet/BottomSheetBehavior;->setBottomModeMaxWidth(I)V

    invoke-virtual {p2}, Landroid/content/res/TypedArray;->recycle()V

    return-void
.end method


# virtual methods
.method public addBottomSheetCallback(Lmiuix/bottomsheet/BottomSheetBehavior$i;)V
    .locals 1
    .param p1    # Lmiuix/bottomsheet/BottomSheetBehavior$i;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    iget-object v0, p0, Lmiuix/bottomsheet/BottomSheetBehavior;->callbacks:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lmiuix/bottomsheet/BottomSheetBehavior;->callbacks:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method

.method public calculateSlideOffset()F
    .locals 1

    iget-object v0, p0, Lmiuix/bottomsheet/BottomSheetBehavior;->viewRef:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lmiuix/bottomsheet/BottomSheetBehavior;->viewRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getTop()I

    move-result v0

    invoke-direct {p0, v0}, Lmiuix/bottomsheet/BottomSheetBehavior;->calculateSlideOffsetWithTop(I)F

    move-result v0

    return v0

    :cond_1
    :goto_0
    const/high16 v0, -0x40800000    # -1.0f

    return v0
.end method

.method dispatchOnSlide(I)V
    .locals 3

    iget-object v0, p0, Lmiuix/bottomsheet/BottomSheetBehavior;->viewRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lmiuix/bottomsheet/BottomSheetBehavior;->callbacks:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-direct {p0, p1}, Lmiuix/bottomsheet/BottomSheetBehavior;->calculateSlideOffsetWithTop(I)F

    move-result p1

    const/4 v1, 0x0

    :goto_0
    iget-object v2, p0, Lmiuix/bottomsheet/BottomSheetBehavior;->callbacks:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_0

    iget-object v2, p0, Lmiuix/bottomsheet/BottomSheetBehavior;->callbacks:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lmiuix/bottomsheet/BottomSheetBehavior$i;

    invoke-virtual {v2, v0, p1}, Lmiuix/bottomsheet/BottomSheetBehavior$i;->b(Landroid/view/View;F)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method findScrollingChild(Landroid/view/View;)Landroid/view/View;
    .locals 4
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    invoke-virtual {p1}, Landroid/view/View;->getVisibility()I

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return-object v1

    :cond_0
    invoke-static {p1}, Landroidx/core/view/ViewCompat;->U(Landroid/view/View;)Z

    move-result v0

    if-eqz v0, :cond_1

    return-object p1

    :cond_1
    instance-of v0, p1, Landroid/view/ViewGroup;

    if-eqz v0, :cond_3

    check-cast p1, Landroid/view/ViewGroup;

    const/4 v0, 0x0

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v2

    :goto_0
    if-ge v0, v2, :cond_3

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {p0, v3}, Lmiuix/bottomsheet/BottomSheetBehavior;->findScrollingChild(Landroid/view/View;)Landroid/view/View;

    move-result-object v3

    if-eqz v3, :cond_2

    return-object v3

    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_3
    return-object v1
.end method

.method public getBottomModeMaxWidth()I
    .locals 1

    iget v0, p0, Lmiuix/bottomsheet/BottomSheetBehavior;->bottomModeMaxWidth:I

    return v0
.end method

.method public getExpandedOffset()I
    .locals 1

    iget v0, p0, Lmiuix/bottomsheet/BottomSheetBehavior;->fitToContentsOffset:I

    return v0
.end method

.method public getHalfExpandedRatio()F
    .locals 1
    .annotation build Landroidx/annotation/FloatRange;
        from = 0.0
        to = 1.0
    .end annotation

    iget v0, p0, Lmiuix/bottomsheet/BottomSheetBehavior;->halfExpandedRatio:F

    return v0
.end method

.method public getHideFriction()F
    .locals 1

    iget v0, p0, Lmiuix/bottomsheet/BottomSheetBehavior;->hideFriction:F

    return v0
.end method

.method public getLastStableState()I
    .locals 1
    .annotation build Landroidx/annotation/RestrictTo;
        value = {
            .enum Landroidx/annotation/RestrictTo$a;->b:Landroidx/annotation/RestrictTo$a;
        }
    .end annotation

    iget v0, p0, Lmiuix/bottomsheet/BottomSheetBehavior;->lastStableState:I

    return v0
.end method

.method public getMaxHeight()I
    .locals 1
    .annotation build Landroidx/annotation/Px;
    .end annotation

    iget v0, p0, Lmiuix/bottomsheet/BottomSheetBehavior;->maxHeight:I

    return v0
.end method

.method public getMaxWidth()I
    .locals 1
    .annotation build Landroidx/annotation/Px;
    .end annotation

    iget v0, p0, Lmiuix/bottomsheet/BottomSheetBehavior;->maxWidth:I

    return v0
.end method

.method public getPeekHeight()I
    .locals 1

    iget-boolean v0, p0, Lmiuix/bottomsheet/BottomSheetBehavior;->peekHeightAuto:Z

    if-eqz v0, :cond_0

    const/4 v0, -0x1

    goto :goto_0

    :cond_0
    iget v0, p0, Lmiuix/bottomsheet/BottomSheetBehavior;->peekHeight:I

    :goto_0
    return v0
.end method

.method getPeekHeightMin()I
    .locals 1
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    iget v0, p0, Lmiuix/bottomsheet/BottomSheetBehavior;->peekHeightMin:I

    return v0
.end method

.method public getSaveFlags()I
    .locals 1

    iget v0, p0, Lmiuix/bottomsheet/BottomSheetBehavior;->saveFlags:I

    return v0
.end method

.method public getSignificantVelocityThreshold()I
    .locals 1

    iget v0, p0, Lmiuix/bottomsheet/BottomSheetBehavior;->significantVelocityThreshold:I

    return v0
.end method

.method public getSkipCollapsed()Z
    .locals 1

    iget-boolean v0, p0, Lmiuix/bottomsheet/BottomSheetBehavior;->skipCollapsed:Z

    return v0
.end method

.method public getState()I
    .locals 1

    iget v0, p0, Lmiuix/bottomsheet/BottomSheetBehavior;->state:I

    return v0
.end method

.method isAnimationInterruptible()Z
    .locals 1

    iget-boolean v0, p0, Lmiuix/bottomsheet/BottomSheetBehavior;->animInterruptible:Z

    return v0
.end method

.method public isDraggable()Z
    .locals 1

    iget-boolean v0, p0, Lmiuix/bottomsheet/BottomSheetBehavior;->draggable:Z

    return v0
.end method

.method public isFixedHeightRatioEnabled()Z
    .locals 1

    iget-boolean v0, p0, Lmiuix/bottomsheet/BottomSheetBehavior;->fixedHeightRatioEnabled:Z

    return v0
.end method

.method public isFloatingModeDependsOnWindow()Z
    .locals 1

    iget-boolean v0, p0, Lmiuix/bottomsheet/BottomSheetBehavior;->floatingModeDependsOnWindow:Z

    return v0
.end method

.method public isForceFullHeight()Z
    .locals 1

    iget-boolean v0, p0, Lmiuix/bottomsheet/BottomSheetBehavior;->forceFullHeight:Z

    return v0
.end method

.method public isGestureInsetBottomIgnored()Z
    .locals 1

    iget-boolean v0, p0, Lmiuix/bottomsheet/BottomSheetBehavior;->gestureInsetBottomIgnored:Z

    return v0
.end method

.method public isHideable()Z
    .locals 1

    iget-boolean v0, p0, Lmiuix/bottomsheet/BottomSheetBehavior;->hideable:Z

    return v0
.end method

.method public isHideableWhenDragging()Z
    .locals 1
    .annotation build Landroidx/annotation/RestrictTo;
        value = {
            .enum Landroidx/annotation/RestrictTo$a;->b:Landroidx/annotation/RestrictTo$a;
        }
    .end annotation

    const/4 v0, 0x1

    return v0
.end method

.method public isNestedScrollingCheckEnabled()Z
    .locals 1
    .annotation build Landroidx/annotation/RestrictTo;
        value = {
            .enum Landroidx/annotation/RestrictTo$a;->b:Landroidx/annotation/RestrictTo$a;
        }
    .end annotation

    const/4 v0, 0x1

    return v0
.end method

.method public onAttachedToLayoutParams(Landroidx/coordinatorlayout/widget/CoordinatorLayout$e;)V
    .locals 0
    .param p1    # Landroidx/coordinatorlayout/widget/CoordinatorLayout$e;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    invoke-super {p0, p1}, Landroidx/coordinatorlayout/widget/CoordinatorLayout$c;->onAttachedToLayoutParams(Landroidx/coordinatorlayout/widget/CoordinatorLayout$e;)V

    const/4 p1, 0x0

    iput-object p1, p0, Lmiuix/bottomsheet/BottomSheetBehavior;->viewRef:Ljava/lang/ref/WeakReference;

    iput-object p1, p0, Lmiuix/bottomsheet/BottomSheetBehavior;->viewDragHelper:Landroidx/customview/widget/c;

    iput-object p1, p0, Lmiuix/bottomsheet/BottomSheetBehavior;->parentViewRef:Ljava/lang/ref/WeakReference;

    return-void
.end method

.method public onDetachedFromLayoutParams()V
    .locals 1

    invoke-super {p0}, Landroidx/coordinatorlayout/widget/CoordinatorLayout$c;->onDetachedFromLayoutParams()V

    const/4 v0, 0x0

    iput-object v0, p0, Lmiuix/bottomsheet/BottomSheetBehavior;->viewRef:Ljava/lang/ref/WeakReference;

    iput-object v0, p0, Lmiuix/bottomsheet/BottomSheetBehavior;->viewDragHelper:Landroidx/customview/widget/c;

    iput-object v0, p0, Lmiuix/bottomsheet/BottomSheetBehavior;->parentViewRef:Ljava/lang/ref/WeakReference;

    return-void
.end method

.method public onInterceptTouchEvent(Landroidx/coordinatorlayout/widget/CoordinatorLayout;Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 9
    .param p1    # Landroidx/coordinatorlayout/widget/CoordinatorLayout;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroid/view/View;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # Landroid/view/MotionEvent;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/coordinatorlayout/widget/CoordinatorLayout;",
            "TV;",
            "Landroid/view/MotionEvent;",
            ")Z"
        }
    .end annotation

    invoke-virtual {p2}, Landroid/view/View;->isShown()Z

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_c

    invoke-direct {p0}, Lmiuix/bottomsheet/BottomSheetBehavior;->isInternalDraggable()Z

    move-result v0

    if-nez v0, :cond_0

    goto/16 :goto_3

    :cond_0
    invoke-virtual {p3}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    if-nez v0, :cond_1

    invoke-direct {p0}, Lmiuix/bottomsheet/BottomSheetBehavior;->reset()V

    :cond_1
    iget-object v3, p0, Lmiuix/bottomsheet/BottomSheetBehavior;->velocityTracker:Landroid/view/VelocityTracker;

    if-nez v3, :cond_2

    invoke-static {}, Landroid/view/VelocityTracker;->obtain()Landroid/view/VelocityTracker;

    move-result-object v3

    iput-object v3, p0, Lmiuix/bottomsheet/BottomSheetBehavior;->velocityTracker:Landroid/view/VelocityTracker;

    :cond_2
    iget-object v3, p0, Lmiuix/bottomsheet/BottomSheetBehavior;->velocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v3, p3}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    const/4 v3, 0x0

    const/4 v4, 0x2

    const/4 v5, -0x1

    if-eqz v0, :cond_4

    if-eq v0, v2, :cond_3

    const/4 p2, 0x3

    if-eq v0, p2, :cond_3

    goto :goto_2

    :cond_3
    iput-boolean v1, p0, Lmiuix/bottomsheet/BottomSheetBehavior;->touchingScrollingChild:Z

    iput v5, p0, Lmiuix/bottomsheet/BottomSheetBehavior;->activePointerId:I

    iget-boolean p2, p0, Lmiuix/bottomsheet/BottomSheetBehavior;->ignoreEvents:Z

    if-eqz p2, :cond_8

    iput-boolean v1, p0, Lmiuix/bottomsheet/BottomSheetBehavior;->ignoreEvents:Z

    return v1

    :cond_4
    invoke-virtual {p3}, Landroid/view/MotionEvent;->getX()F

    move-result v6

    float-to-int v6, v6

    invoke-virtual {p3}, Landroid/view/MotionEvent;->getY()F

    move-result v7

    float-to-int v7, v7

    iput v7, p0, Lmiuix/bottomsheet/BottomSheetBehavior;->initialY:I

    iget v7, p0, Lmiuix/bottomsheet/BottomSheetBehavior;->state:I

    if-eq v7, v4, :cond_6

    iget-object v7, p0, Lmiuix/bottomsheet/BottomSheetBehavior;->nestedScrollingChildRef:Ljava/lang/ref/WeakReference;

    if-eqz v7, :cond_5

    invoke-virtual {v7}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/view/View;

    goto :goto_0

    :cond_5
    move-object v7, v3

    :goto_0
    if-eqz v7, :cond_6

    iget v8, p0, Lmiuix/bottomsheet/BottomSheetBehavior;->initialY:I

    invoke-virtual {p1, v7, v6, v8}, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->isPointInChildBounds(Landroid/view/View;II)Z

    move-result v7

    if-eqz v7, :cond_6

    invoke-virtual {p3}, Landroid/view/MotionEvent;->getActionIndex()I

    move-result v7

    invoke-virtual {p3, v7}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v7

    iput v7, p0, Lmiuix/bottomsheet/BottomSheetBehavior;->activePointerId:I

    iput-boolean v2, p0, Lmiuix/bottomsheet/BottomSheetBehavior;->touchingScrollingChild:Z

    :cond_6
    iget v7, p0, Lmiuix/bottomsheet/BottomSheetBehavior;->activePointerId:I

    if-ne v7, v5, :cond_7

    iget v7, p0, Lmiuix/bottomsheet/BottomSheetBehavior;->initialY:I

    invoke-virtual {p1, p2, v6, v7}, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->isPointInChildBounds(Landroid/view/View;II)Z

    move-result p2

    if-nez p2, :cond_7

    move p2, v2

    goto :goto_1

    :cond_7
    move p2, v1

    :goto_1
    iput-boolean p2, p0, Lmiuix/bottomsheet/BottomSheetBehavior;->ignoreEvents:Z

    :cond_8
    :goto_2
    iget-boolean p2, p0, Lmiuix/bottomsheet/BottomSheetBehavior;->ignoreEvents:Z

    if-nez p2, :cond_9

    iget-object p2, p0, Lmiuix/bottomsheet/BottomSheetBehavior;->viewDragHelper:Landroidx/customview/widget/c;

    if-eqz p2, :cond_9

    invoke-virtual {p2, p3}, Landroidx/customview/widget/c;->P(Landroid/view/MotionEvent;)Z

    move-result p2

    if-eqz p2, :cond_9

    return v2

    :cond_9
    iget-object p2, p0, Lmiuix/bottomsheet/BottomSheetBehavior;->nestedScrollingChildRef:Ljava/lang/ref/WeakReference;

    if-eqz p2, :cond_a

    invoke-virtual {p2}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object p2

    move-object v3, p2

    check-cast v3, Landroid/view/View;

    :cond_a
    if-ne v0, v4, :cond_b

    if-eqz v3, :cond_b

    iget-boolean p2, p0, Lmiuix/bottomsheet/BottomSheetBehavior;->ignoreEvents:Z

    if-nez p2, :cond_b

    iget p2, p0, Lmiuix/bottomsheet/BottomSheetBehavior;->state:I

    if-eq p2, v2, :cond_b

    invoke-virtual {p3}, Landroid/view/MotionEvent;->getX()F

    move-result p2

    float-to-int p2, p2

    invoke-virtual {p3}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    float-to-int v0, v0

    invoke-virtual {p1, v3, p2, v0}, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->isPointInChildBounds(Landroid/view/View;II)Z

    move-result p1

    if-nez p1, :cond_b

    iget-object p1, p0, Lmiuix/bottomsheet/BottomSheetBehavior;->viewDragHelper:Landroidx/customview/widget/c;

    if-eqz p1, :cond_b

    iget p1, p0, Lmiuix/bottomsheet/BottomSheetBehavior;->initialY:I

    if-eq p1, v5, :cond_b

    int-to-float p1, p1

    invoke-virtual {p3}, Landroid/view/MotionEvent;->getY()F

    move-result p2

    sub-float/2addr p1, p2

    invoke-static {p1}, Ljava/lang/Math;->abs(F)F

    move-result p1

    iget-object p2, p0, Lmiuix/bottomsheet/BottomSheetBehavior;->viewDragHelper:Landroidx/customview/widget/c;

    invoke-virtual {p2}, Landroidx/customview/widget/c;->z()I

    move-result p2

    int-to-float p2, p2

    cmpl-float p1, p1, p2

    if-lez p1, :cond_b

    move v1, v2

    :cond_b
    return v1

    :cond_c
    :goto_3
    iput-boolean v2, p0, Lmiuix/bottomsheet/BottomSheetBehavior;->ignoreEvents:Z

    return v1
.end method

.method public onLayoutChild(Landroidx/coordinatorlayout/widget/CoordinatorLayout;Landroid/view/View;I)Z
    .locals 10
    .param p1    # Landroidx/coordinatorlayout/widget/CoordinatorLayout;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroid/view/View;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/coordinatorlayout/widget/CoordinatorLayout;",
            "TV;I)Z"
        }
    .end annotation

    invoke-static {p1}, Landroidx/core/view/ViewCompat;->x(Landroid/view/View;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    invoke-static {p2}, Landroidx/core/view/ViewCompat;->x(Landroid/view/View;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p2, v1}, Landroid/view/View;->setFitsSystemWindows(Z)V

    :cond_0
    iget-object v0, p0, Lmiuix/bottomsheet/BottomSheetBehavior;->viewRef:Ljava/lang/ref/WeakReference;

    if-nez v0, :cond_2

    invoke-virtual {p1}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v2, Lmiuix/bottomsheet/m;->l:I

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lmiuix/bottomsheet/BottomSheetBehavior;->peekHeightMin:I

    invoke-direct {p0, p2}, Lmiuix/bottomsheet/BottomSheetBehavior;->setWindowInsetsListener(Landroid/view/View;)V

    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p2}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lmiuix/bottomsheet/BottomSheetBehavior;->viewRef:Ljava/lang/ref/WeakReference;

    iget-object v0, p0, Lmiuix/bottomsheet/BottomSheetBehavior;->backgroundTint:Landroid/content/res/ColorStateList;

    if-eqz v0, :cond_1

    invoke-static {p2, v0}, Landroidx/core/view/ViewCompat;->u0(Landroid/view/View;Landroid/content/res/ColorStateList;)V

    :cond_1
    invoke-direct {p0}, Lmiuix/bottomsheet/BottomSheetBehavior;->updateAccessibilityActions()V

    invoke-static {p2}, Landroidx/core/view/ViewCompat;->y(Landroid/view/View;)I

    move-result v0

    if-nez v0, :cond_2

    invoke-static {p2, v1}, Landroidx/core/view/ViewCompat;->A0(Landroid/view/View;I)V

    :cond_2
    iget-object v0, p0, Lmiuix/bottomsheet/BottomSheetBehavior;->parentViewRef:Ljava/lang/ref/WeakReference;

    if-nez v0, :cond_3

    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lmiuix/bottomsheet/BottomSheetBehavior;->parentViewRef:Ljava/lang/ref/WeakReference;

    :cond_3
    iget-object v0, p0, Lmiuix/bottomsheet/BottomSheetBehavior;->viewDragHelper:Landroidx/customview/widget/c;

    if-nez v0, :cond_4

    iget-object v0, p0, Lmiuix/bottomsheet/BottomSheetBehavior;->dragCallback:Landroidx/customview/widget/c$c;

    invoke-static {p1, v0}, Landroidx/customview/widget/c;->p(Landroid/view/ViewGroup;Landroidx/customview/widget/c$c;)Landroidx/customview/widget/c;

    move-result-object v0

    iput-object v0, p0, Lmiuix/bottomsheet/BottomSheetBehavior;->viewDragHelper:Landroidx/customview/widget/c;

    :cond_4
    invoke-virtual {p2}, Landroid/view/View;->getTop()I

    move-result v0

    invoke-virtual {p1, p2, p3}, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->onLayoutChild(Landroid/view/View;I)V

    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result p3

    iput p3, p0, Lmiuix/bottomsheet/BottomSheetBehavior;->parentWidth:I

    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result p1

    iput p1, p0, Lmiuix/bottomsheet/BottomSheetBehavior;->parentHeight:I

    iget p1, p0, Lmiuix/bottomsheet/BottomSheetBehavior;->mode:I

    if-ne p1, v1, :cond_5

    invoke-virtual {p2}, Landroid/view/View;->getHeight()I

    move-result p1

    goto :goto_0

    :cond_5
    invoke-virtual {p2}, Landroid/view/View;->getHeight()I

    move-result p1

    iget p3, p0, Lmiuix/bottomsheet/BottomSheetBehavior;->extraHeight:I

    sub-int/2addr p1, p3

    :goto_0
    iput p1, p0, Lmiuix/bottomsheet/BottomSheetBehavior;->childHeight:I

    iget p1, p0, Lmiuix/bottomsheet/BottomSheetBehavior;->parentHeight:I

    iget p3, p0, Lmiuix/bottomsheet/BottomSheetBehavior;->childHeight:I

    sub-int p3, p1, p3

    iget v2, p0, Lmiuix/bottomsheet/BottomSheetBehavior;->insetTop:I

    if-ge p3, v2, :cond_6

    sub-int/2addr p1, v2

    iput p1, p0, Lmiuix/bottomsheet/BottomSheetBehavior;->childHeight:I

    :cond_6
    iget p1, p0, Lmiuix/bottomsheet/BottomSheetBehavior;->mode:I

    const/4 p3, 0x2

    const/4 v2, 0x0

    if-ne p1, v1, :cond_7

    invoke-direct {p0, v2}, Lmiuix/bottomsheet/BottomSheetBehavior;->setInternalDraggable(Z)V

    iget p1, p0, Lmiuix/bottomsheet/BottomSheetBehavior;->parentHeight:I

    iget v3, p0, Lmiuix/bottomsheet/BottomSheetBehavior;->childHeight:I

    sub-int/2addr p1, v3

    div-int/2addr p1, p3

    invoke-static {v2, p1}, Ljava/lang/Math;->max(II)I

    move-result p1

    iput p1, p0, Lmiuix/bottomsheet/BottomSheetBehavior;->fitToContentsOffset:I

    iget p1, p0, Lmiuix/bottomsheet/BottomSheetBehavior;->state:I

    invoke-direct {p0, p1}, Lmiuix/bottomsheet/BottomSheetBehavior;->fixStateInFloatingMode(I)I

    move-result p1

    invoke-virtual {p0, p1}, Lmiuix/bottomsheet/BottomSheetBehavior;->setStateInternal(I)V

    goto :goto_1

    :cond_7
    invoke-direct {p0, v1}, Lmiuix/bottomsheet/BottomSheetBehavior;->setInternalDraggable(Z)V

    iget p1, p0, Lmiuix/bottomsheet/BottomSheetBehavior;->parentHeight:I

    iget v3, p0, Lmiuix/bottomsheet/BottomSheetBehavior;->childHeight:I

    sub-int/2addr p1, v3

    invoke-static {v2, p1}, Ljava/lang/Math;->max(II)I

    move-result p1

    iput p1, p0, Lmiuix/bottomsheet/BottomSheetBehavior;->fitToContentsOffset:I

    :goto_1
    invoke-direct {p0}, Lmiuix/bottomsheet/BottomSheetBehavior;->calculateHalfExpandedOffset()V

    invoke-direct {p0}, Lmiuix/bottomsheet/BottomSheetBehavior;->calculateCollapsedOffset()V

    iget p1, p0, Lmiuix/bottomsheet/BottomSheetBehavior;->state:I

    const/4 v3, 0x3

    if-ne p1, v3, :cond_8

    invoke-virtual {p0}, Lmiuix/bottomsheet/BottomSheetBehavior;->getExpandedOffset()I

    move-result p1

    :goto_2
    invoke-static {p2, p1}, Landroidx/core/view/ViewCompat;->a0(Landroid/view/View;I)V

    goto :goto_3

    :cond_8
    const/4 v3, 0x6

    if-ne p1, v3, :cond_9

    iget p1, p0, Lmiuix/bottomsheet/BottomSheetBehavior;->halfExpandedOffset:I

    goto :goto_2

    :cond_9
    iget-boolean v3, p0, Lmiuix/bottomsheet/BottomSheetBehavior;->hideable:Z

    if-eqz v3, :cond_a

    const/4 v3, 0x5

    if-ne p1, v3, :cond_a

    iget p1, p0, Lmiuix/bottomsheet/BottomSheetBehavior;->parentHeight:I

    goto :goto_2

    :cond_a
    const/4 v3, 0x4

    if-ne p1, v3, :cond_b

    iget p1, p0, Lmiuix/bottomsheet/BottomSheetBehavior;->collapsedOffset:I

    goto :goto_2

    :cond_b
    if-eq p1, v1, :cond_c

    if-ne p1, p3, :cond_d

    :cond_c
    invoke-virtual {p2}, Landroid/view/View;->getTop()I

    move-result p1

    sub-int/2addr v0, p1

    invoke-static {p2, v0}, Landroidx/core/view/ViewCompat;->a0(Landroid/view/View;I)V

    :cond_d
    :goto_3
    invoke-direct {p0, p2}, Lmiuix/bottomsheet/BottomSheetBehavior;->updateChildY(Landroid/view/View;)V

    new-instance p1, Ljava/lang/ref/WeakReference;

    invoke-virtual {p0, p2}, Lmiuix/bottomsheet/BottomSheetBehavior;->findScrollingChild(Landroid/view/View;)Landroid/view/View;

    move-result-object p3

    invoke-direct {p1, p3}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object p1, p0, Lmiuix/bottomsheet/BottomSheetBehavior;->nestedScrollingChildRef:Ljava/lang/ref/WeakReference;

    move p1, v2

    :goto_4
    iget-object p3, p0, Lmiuix/bottomsheet/BottomSheetBehavior;->callbacks:Ljava/util/ArrayList;

    invoke-virtual {p3}, Ljava/util/ArrayList;->size()I

    move-result p3

    if-ge p1, p3, :cond_e

    iget-object p3, p0, Lmiuix/bottomsheet/BottomSheetBehavior;->callbacks:Ljava/util/ArrayList;

    invoke-virtual {p3, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lmiuix/bottomsheet/BottomSheetBehavior$i;

    invoke-virtual {p3, p2}, Lmiuix/bottomsheet/BottomSheetBehavior$i;->a(Landroid/view/View;)V

    add-int/lit8 p1, p1, 0x1

    goto :goto_4

    :cond_e
    iget-object p1, p0, Lmiuix/bottomsheet/BottomSheetBehavior;->onModeChangeListener:Lmiuix/bottomsheet/BottomSheetBehavior$l;

    if-eqz p1, :cond_f

    iget p3, p0, Lmiuix/bottomsheet/BottomSheetBehavior;->mode:I

    iget v0, p0, Lmiuix/bottomsheet/BottomSheetBehavior;->lastMode:I

    if-eq p3, v0, :cond_f

    invoke-interface {p1, p3, p2}, Lmiuix/bottomsheet/BottomSheetBehavior$l;->a(ILandroid/view/View;)V

    :cond_f
    iget p1, p0, Lmiuix/bottomsheet/BottomSheetBehavior;->mode:I

    iput p1, p0, Lmiuix/bottomsheet/BottomSheetBehavior;->lastMode:I

    iget-object p1, p0, Lmiuix/bottomsheet/BottomSheetBehavior;->onExtraPaddingListener:Lmiuix/bottomsheet/BottomSheetBehavior$k;

    if-eqz p1, :cond_10

    iget-object p1, p0, Lmiuix/bottomsheet/BottomSheetBehavior;->extraPaddingPolicy:Lyk/b;

    if-nez p1, :cond_10

    iget p1, p0, Lmiuix/bottomsheet/BottomSheetBehavior;->mDeviceType:I

    sget p3, Ltm/e;->d:I

    sget v0, Ltm/e;->e:I

    invoke-static {p1, p3, v0}, Lyk/b$a;->b(III)Lyk/b;

    move-result-object p1

    iput-object p1, p0, Lmiuix/bottomsheet/BottomSheetBehavior;->extraPaddingPolicy:Lyk/b;

    if-eqz p1, :cond_10

    iget-boolean p3, p0, Lmiuix/bottomsheet/BottomSheetBehavior;->extraPaddingEnabled:Z

    invoke-virtual {p1, p3}, Lyk/b;->j(Z)V

    :cond_10
    iget-object p1, p0, Lmiuix/bottomsheet/BottomSheetBehavior;->onExtraPaddingListener:Lmiuix/bottomsheet/BottomSheetBehavior$k;

    if-eqz p1, :cond_13

    iget-object p1, p0, Lmiuix/bottomsheet/BottomSheetBehavior;->extraPaddingPolicy:Lyk/b;

    if-eqz p1, :cond_13

    iget-boolean p3, p0, Lmiuix/bottomsheet/BottomSheetBehavior;->extraPaddingEnabled:Z

    invoke-virtual {p1, p3}, Lyk/b;->j(Z)V

    iget-object p1, p0, Lmiuix/bottomsheet/BottomSheetBehavior;->extraPaddingPolicy:Lyk/b;

    invoke-virtual {p1}, Lyk/b;->h()Z

    move-result p1

    if-eqz p1, :cond_12

    invoke-virtual {p2}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lbl/c;->i(Landroid/content/Context;)Lbl/o;

    move-result-object p3

    iget-object p3, p3, Lbl/o;->d:Landroid/graphics/Point;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p1

    iget p1, p1, Landroid/util/DisplayMetrics;->density:F

    iget-object v3, p0, Lmiuix/bottomsheet/BottomSheetBehavior;->extraPaddingPolicy:Lyk/b;

    iget v4, p3, Landroid/graphics/Point;->x:I

    iget v5, p3, Landroid/graphics/Point;->y:I

    invoke-virtual {p2}, Landroid/view/View;->getWidth()I

    move-result v6

    invoke-virtual {p2}, Landroid/view/View;->getHeight()I

    move-result v7

    iget p2, p0, Lmiuix/bottomsheet/BottomSheetBehavior;->mode:I

    if-ne p2, v1, :cond_11

    move v9, v1

    goto :goto_5

    :cond_11
    move v9, v2

    :goto_5
    move v8, p1

    invoke-virtual/range {v3 .. v9}, Lyk/b;->i(IIIIFZ)V

    iget-object p2, p0, Lmiuix/bottomsheet/BottomSheetBehavior;->extraPaddingPolicy:Lyk/b;

    invoke-virtual {p2}, Lyk/b;->f()I

    move-result p2

    int-to-float p2, p2

    mul-float/2addr p2, p1

    float-to-int v2, p2

    :cond_12
    iget p1, p0, Lmiuix/bottomsheet/BottomSheetBehavior;->horizontalExtraPadding:I

    if-eq v2, p1, :cond_13

    iput v2, p0, Lmiuix/bottomsheet/BottomSheetBehavior;->horizontalExtraPadding:I

    iget-object p1, p0, Lmiuix/bottomsheet/BottomSheetBehavior;->onExtraPaddingListener:Lmiuix/bottomsheet/BottomSheetBehavior$k;

    invoke-interface {p1, v2}, Lmiuix/bottomsheet/BottomSheetBehavior$k;->onExtraPaddingChanged(I)V

    :cond_13
    return v1
.end method

.method public onMeasureChild(Landroidx/coordinatorlayout/widget/CoordinatorLayout;Landroid/view/View;IIII)Z
    .locals 17
    .param p1    # Landroidx/coordinatorlayout/widget/CoordinatorLayout;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroid/view/View;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/coordinatorlayout/widget/CoordinatorLayout;",
            "TV;IIII)Z"
        }
    .end annotation

    move-object/from16 v7, p0

    move-object/from16 v8, p2

    const/4 v9, 0x0

    iput-boolean v9, v7, Lmiuix/bottomsheet/BottomSheetBehavior;->fullHeightMode:Z

    iput v9, v7, Lmiuix/bottomsheet/BottomSheetBehavior;->extraHeight:I

    invoke-static/range {p5 .. p5}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v10

    invoke-static/range {p3 .. p3}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v11

    invoke-static/range {p5 .. p5}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v0

    const-string v12, "BottomSheetBehavior"

    const/high16 v13, 0x40000000    # 2.0f

    if-eq v0, v13, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v14, p1

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " measure spec mode is not MeasureSpec.EXACTLY! Usually layout_height should be match_parent."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v12, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_0
    move-object/from16 v14, p1

    :goto_0
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v15

    invoke-virtual {v15}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v3, v0, Landroid/util/DisplayMetrics;->density:F

    iget v0, v7, Lmiuix/bottomsheet/BottomSheetBehavior;->density:F

    cmpl-float v0, v3, v0

    if-eqz v0, :cond_1

    iput v3, v7, Lmiuix/bottomsheet/BottomSheetBehavior;->density:F

    iget-object v0, v7, Lmiuix/bottomsheet/BottomSheetBehavior;->attrs:Landroid/util/AttributeSet;

    invoke-direct {v7, v15, v0}, Lmiuix/bottomsheet/BottomSheetBehavior;->updateSizeConfig(Landroid/content/Context;Landroid/util/AttributeSet;)V

    :cond_1
    iget v0, v7, Lmiuix/bottomsheet/BottomSheetBehavior;->modeConfig:I

    const/4 v6, 0x1

    if-nez v0, :cond_2

    iget-boolean v1, v7, Lmiuix/bottomsheet/BottomSheetBehavior;->floatingModeDependsOnWindow:Z

    move-object/from16 v0, p0

    move-object v2, v15

    move v4, v11

    move v5, v10

    invoke-direct/range {v0 .. v5}, Lmiuix/bottomsheet/BottomSheetBehavior;->supportFloatingMode(ZLandroid/content/Context;FII)Z

    move-result v0

    if-eqz v0, :cond_3

    :goto_1
    iput v6, v7, Lmiuix/bottomsheet/BottomSheetBehavior;->mode:I

    goto :goto_2

    :cond_2
    if-ne v0, v6, :cond_4

    :cond_3
    iput v9, v7, Lmiuix/bottomsheet/BottomSheetBehavior;->mode:I

    goto :goto_2

    :cond_4
    const/4 v1, 0x2

    if-ne v0, v1, :cond_17

    goto :goto_1

    :goto_2
    iget v0, v7, Lmiuix/bottomsheet/BottomSheetBehavior;->mode:I

    if-ne v0, v6, :cond_a

    instance-of v0, v8, Lmiuix/bottomsheet/BottomSheetView;

    if-eqz v0, :cond_5

    move-object v14, v8

    check-cast v14, Lmiuix/bottomsheet/BottomSheetView;

    const/4 v2, 0x1

    const/4 v3, 0x1

    const/4 v4, 0x1

    const/4 v5, 0x1

    const/16 v16, 0x1

    move-object/from16 v0, p0

    move-object v1, v14

    move/from16 v6, v16

    invoke-direct/range {v0 .. v6}, Lmiuix/bottomsheet/BottomSheetBehavior;->applyWindowInsets(Landroid/view/View;ZZZZZ)V

    iget v0, v7, Lmiuix/bottomsheet/BottomSheetBehavior;->mode:I

    invoke-virtual {v14, v0}, Lmiuix/bottomsheet/BottomSheetView;->setBottomSheetMode(I)V

    invoke-virtual {v14}, Lmiuix/bottomsheet/BottomSheetView;->g()V

    invoke-virtual {v14, v9}, Lmiuix/bottomsheet/BottomSheetView;->setExtraHeightEnabled(Z)V

    :cond_5
    iget v0, v7, Lmiuix/bottomsheet/BottomSheetBehavior;->floatingModeWidth:I

    if-le v0, v11, :cond_6

    const-string v0, "Width in the floating mode bigger than parent width, fix it to be same with parent width!"

    invoke-static {v12, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3

    :cond_6
    move v11, v0

    :goto_3
    invoke-virtual/range {p2 .. p2}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lbl/p;->m(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_7

    iget v0, v7, Lmiuix/bottomsheet/BottomSheetBehavior;->floatingModeHeight:I

    goto :goto_4

    :cond_7
    iget-boolean v0, v7, Lmiuix/bottomsheet/BottomSheetBehavior;->floatingModeDependsOnWindow:Z

    if-eqz v0, :cond_8

    invoke-static {v15}, Lbl/c;->i(Landroid/content/Context;)Lbl/o;

    move-result-object v0

    iget v1, v7, Lmiuix/bottomsheet/BottomSheetBehavior;->floatingModeHeightRatio:F

    iget-object v0, v0, Lbl/o;->c:Landroid/graphics/Point;

    iget v0, v0, Landroid/graphics/Point;->y:I

    int-to-float v0, v0

    mul-float/2addr v1, v0

    float-to-int v0, v1

    goto :goto_4

    :cond_8
    iget v0, v7, Lmiuix/bottomsheet/BottomSheetBehavior;->floatingModeHeightRatio:F

    int-to-float v1, v10

    mul-float/2addr v0, v1

    float-to-int v0, v0

    :goto_4
    if-le v0, v10, :cond_9

    const-string v0, "Height in the floating mode bigger than parent height, fix it to be same with parent height!"

    invoke-static {v12, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_5

    :cond_9
    move v10, v0

    :goto_5
    invoke-static {v11, v13}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v0

    invoke-static {v10, v13}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v1

    invoke-virtual {v8, v0, v1}, Landroid/view/View;->measure(II)V

    const/4 v0, 0x1

    goto/16 :goto_a

    :cond_a
    instance-of v0, v8, Lmiuix/bottomsheet/BottomSheetView;

    if-eqz v0, :cond_c

    move-object v11, v8

    check-cast v11, Lmiuix/bottomsheet/BottomSheetView;

    const/4 v2, 0x0

    const/4 v3, 0x1

    const/4 v4, 0x1

    const/4 v5, 0x1

    iget-boolean v6, v7, Lmiuix/bottomsheet/BottomSheetBehavior;->paddingBottomSystemWindowInsets:Z

    move-object/from16 v0, p0

    move-object v1, v11

    invoke-direct/range {v0 .. v6}, Lmiuix/bottomsheet/BottomSheetBehavior;->applyWindowInsets(Landroid/view/View;ZZZZZ)V

    iget v0, v7, Lmiuix/bottomsheet/BottomSheetBehavior;->mode:I

    invoke-virtual {v11, v0}, Lmiuix/bottomsheet/BottomSheetView;->setBottomSheetMode(I)V

    invoke-virtual {v11}, Lmiuix/bottomsheet/BottomSheetView;->j()Z

    move-result v0

    if-eqz v0, :cond_b

    invoke-virtual {v11}, Lmiuix/bottomsheet/BottomSheetView;->m()V

    goto :goto_6

    :cond_b
    invoke-virtual {v11}, Lmiuix/bottomsheet/BottomSheetView;->g()V

    :goto_6
    const/4 v0, 0x1

    invoke-virtual {v11, v0}, Lmiuix/bottomsheet/BottomSheetView;->setExtraHeightEnabled(Z)V

    goto :goto_7

    :cond_c
    const/4 v0, 0x1

    :goto_7
    invoke-virtual/range {p2 .. p2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup$MarginLayoutParams;

    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getPaddingLeft()I

    move-result v2

    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getPaddingRight()I

    move-result v3

    add-int/2addr v2, v3

    iget v3, v1, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    add-int/2addr v2, v3

    iget v3, v1, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    add-int/2addr v2, v3

    add-int v2, v2, p4

    iget v3, v7, Lmiuix/bottomsheet/BottomSheetBehavior;->maxWidth:I

    iget v4, v1, Landroid/view/ViewGroup$MarginLayoutParams;->width:I

    move/from16 v5, p3

    invoke-direct {v7, v5, v2, v3, v4}, Lmiuix/bottomsheet/BottomSheetBehavior;->getChildMeasureSpec(IIII)I

    move-result v2

    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getPaddingTop()I

    move-result v3

    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getPaddingBottom()I

    move-result v4

    add-int/2addr v3, v4

    iget v4, v1, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    add-int/2addr v3, v4

    iget v4, v1, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    add-int/2addr v3, v4

    add-int v3, v3, p6

    iget v4, v7, Lmiuix/bottomsheet/BottomSheetBehavior;->maxHeight:I

    iget v1, v1, Landroid/view/ViewGroup$MarginLayoutParams;->height:I

    move/from16 v5, p5

    invoke-direct {v7, v5, v3, v4, v1}, Lmiuix/bottomsheet/BottomSheetBehavior;->getChildMeasureSpec(IIII)I

    move-result v1

    invoke-virtual {v8, v2, v1}, Landroid/view/View;->measure(II)V

    instance-of v3, v8, Lmiuix/bottomsheet/BottomSheetView;

    if-eqz v3, :cond_d

    move-object v3, v8

    check-cast v3, Lmiuix/bottomsheet/BottomSheetView;

    invoke-virtual {v3}, Lmiuix/bottomsheet/BottomSheetView;->getExtraHeight()I

    move-result v3

    iput v3, v7, Lmiuix/bottomsheet/BottomSheetBehavior;->extraHeight:I

    :cond_d
    iget-boolean v3, v7, Lmiuix/bottomsheet/BottomSheetBehavior;->fixedHeightRatioEnabled:Z

    if-eqz v3, :cond_e

    iget v3, v7, Lmiuix/bottomsheet/BottomSheetBehavior;->fullHeightLowRatioThreshold:I

    if-le v10, v3, :cond_e

    move v6, v0

    goto :goto_8

    :cond_e
    move v6, v9

    :goto_8
    iput-boolean v6, v7, Lmiuix/bottomsheet/BottomSheetBehavior;->internalFixedHeightRatioEnabled:Z

    if-eqz v6, :cond_f

    int-to-float v1, v10

    iget v3, v7, Lmiuix/bottomsheet/BottomSheetBehavior;->fixedHeightRatio:F

    mul-float/2addr v1, v3

    iget v3, v7, Lmiuix/bottomsheet/BottomSheetBehavior;->extraHeight:I

    int-to-float v3, v3

    add-float/2addr v1, v3

    float-to-int v1, v1

    invoke-static {v1, v13}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v1

    invoke-virtual {v8, v2, v1}, Landroid/view/View;->measure(II)V

    :cond_f
    invoke-virtual/range {p2 .. p2}, Landroid/view/View;->getMeasuredHeight()I

    move-result v3

    iget v4, v7, Lmiuix/bottomsheet/BottomSheetBehavior;->extraHeight:I

    sub-int/2addr v3, v4

    invoke-virtual/range {p2 .. p2}, Landroid/view/View;->getMeasuredWidth()I

    move-result v4

    iget-boolean v5, v7, Lmiuix/bottomsheet/BottomSheetBehavior;->forceFullHeight:Z

    if-nez v5, :cond_10

    int-to-float v5, v3

    int-to-float v6, v10

    invoke-direct {v7, v10}, Lmiuix/bottomsheet/BottomSheetBehavior;->getFullHeightRatio(I)F

    move-result v11

    mul-float/2addr v6, v11

    cmpl-float v5, v5, v6

    if-lez v5, :cond_11

    :cond_10
    iput-boolean v0, v7, Lmiuix/bottomsheet/BottomSheetBehavior;->fullHeightMode:Z

    :cond_11
    iget v5, v7, Lmiuix/bottomsheet/BottomSheetBehavior;->bottomModeMaxWidth:I

    if-le v4, v5, :cond_12

    invoke-static {v5, v13}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v2

    move v9, v0

    :cond_12
    iget v4, v7, Lmiuix/bottomsheet/BottomSheetBehavior;->insetTop:I

    iput v4, v7, Lmiuix/bottomsheet/BottomSheetBehavior;->insetTopInMeasureStep:I

    iget-object v5, v7, Lmiuix/bottomsheet/BottomSheetBehavior;->mRequestLayoutRunnable:Lmiuix/bottomsheet/BottomSheetBehavior$o;

    if-eqz v5, :cond_13

    iput v4, v5, Lmiuix/bottomsheet/BottomSheetBehavior$o;->b:I

    :cond_13
    iget-boolean v4, v7, Lmiuix/bottomsheet/BottomSheetBehavior;->fullHeightMode:Z

    if-eqz v4, :cond_14

    invoke-direct {v7, v10}, Lmiuix/bottomsheet/BottomSheetBehavior;->getMaxHeight(I)I

    move-result v1

    iget v3, v7, Lmiuix/bottomsheet/BottomSheetBehavior;->extraHeight:I

    add-int/2addr v1, v3

    invoke-static {v1, v13}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v1

    :goto_9
    invoke-virtual {v8, v2, v1}, Landroid/view/View;->measure(II)V

    goto :goto_a

    :cond_14
    iget v4, v7, Lmiuix/bottomsheet/BottomSheetBehavior;->minHeight:I

    if-gt v3, v4, :cond_15

    iget v1, v7, Lmiuix/bottomsheet/BottomSheetBehavior;->extraHeight:I

    add-int/2addr v4, v1

    invoke-static {v4, v13}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v1

    goto :goto_9

    :cond_15
    if-eqz v9, :cond_16

    goto :goto_9

    :cond_16
    :goto_a
    return v0

    :cond_17
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unexpected mode config: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, v7, Lmiuix/bottomsheet/BottomSheetBehavior;->modeConfig:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public onNestedPreFling(Landroidx/coordinatorlayout/widget/CoordinatorLayout;Landroid/view/View;Landroid/view/View;FF)Z
    .locals 3
    .param p1    # Landroidx/coordinatorlayout/widget/CoordinatorLayout;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroid/view/View;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # Landroid/view/View;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/coordinatorlayout/widget/CoordinatorLayout;",
            "TV;",
            "Landroid/view/View;",
            "FF)Z"
        }
    .end annotation

    invoke-virtual {p0}, Lmiuix/bottomsheet/BottomSheetBehavior;->isNestedScrollingCheckEnabled()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lmiuix/bottomsheet/BottomSheetBehavior;->nestedScrollingChildRef:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v0

    if-ne p3, v0, :cond_1

    iget v0, p0, Lmiuix/bottomsheet/BottomSheetBehavior;->state:I

    const/4 v2, 0x3

    if-ne v0, v2, :cond_0

    invoke-super/range {p0 .. p5}, Landroidx/coordinatorlayout/widget/CoordinatorLayout$c;->onNestedPreFling(Landroidx/coordinatorlayout/widget/CoordinatorLayout;Landroid/view/View;Landroid/view/View;FF)Z

    move-result p1

    if-eqz p1, :cond_1

    :cond_0
    const/4 v1, 0x1

    :cond_1
    return v1
.end method

.method public onNestedPreScroll(Landroidx/coordinatorlayout/widget/CoordinatorLayout;Landroid/view/View;Landroid/view/View;II[II)V
    .locals 1
    .param p1    # Landroidx/coordinatorlayout/widget/CoordinatorLayout;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroid/view/View;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # Landroid/view/View;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p6    # [I
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/coordinatorlayout/widget/CoordinatorLayout;",
            "TV;",
            "Landroid/view/View;",
            "II[II)V"
        }
    .end annotation

    const/4 p1, 0x1

    if-ne p7, p1, :cond_0

    return-void

    :cond_0
    iget-object p4, p0, Lmiuix/bottomsheet/BottomSheetBehavior;->nestedScrollingChildRef:Ljava/lang/ref/WeakReference;

    if-eqz p4, :cond_1

    invoke-virtual {p4}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object p4

    check-cast p4, Landroid/view/View;

    goto :goto_0

    :cond_1
    const/4 p4, 0x0

    :goto_0
    invoke-virtual {p0}, Lmiuix/bottomsheet/BottomSheetBehavior;->isNestedScrollingCheckEnabled()Z

    move-result p7

    if-eqz p7, :cond_2

    if-eq p3, p4, :cond_2

    return-void

    :cond_2
    invoke-virtual {p2}, Landroid/view/View;->getTop()I

    move-result p4

    sub-int p7, p4, p5

    if-lez p5, :cond_5

    invoke-virtual {p0}, Lmiuix/bottomsheet/BottomSheetBehavior;->getExpandedOffset()I

    move-result p3

    if-ge p7, p3, :cond_3

    invoke-virtual {p0}, Lmiuix/bottomsheet/BottomSheetBehavior;->getExpandedOffset()I

    move-result p3

    sub-int/2addr p4, p3

    aput p4, p6, p1

    neg-int p3, p4

    invoke-static {p2, p3}, Landroidx/core/view/ViewCompat;->a0(Landroid/view/View;I)V

    const/4 p3, 0x3

    :goto_1
    invoke-virtual {p0, p3}, Lmiuix/bottomsheet/BottomSheetBehavior;->setStateInternal(I)V

    goto :goto_4

    :cond_3
    invoke-direct {p0}, Lmiuix/bottomsheet/BottomSheetBehavior;->isInternalDraggable()Z

    move-result p3

    if-nez p3, :cond_4

    return-void

    :cond_4
    aput p5, p6, p1

    :goto_2
    neg-int p3, p5

    invoke-static {p2, p3}, Landroidx/core/view/ViewCompat;->a0(Landroid/view/View;I)V

    invoke-virtual {p0, p1}, Lmiuix/bottomsheet/BottomSheetBehavior;->setStateInternal(I)V

    goto :goto_4

    :cond_5
    if-gez p5, :cond_9

    const/4 v0, -0x1

    invoke-virtual {p3, v0}, Landroid/view/View;->canScrollVertically(I)Z

    move-result p3

    if-nez p3, :cond_9

    iget p3, p0, Lmiuix/bottomsheet/BottomSheetBehavior;->collapsedOffset:I

    if-le p7, p3, :cond_7

    invoke-direct {p0}, Lmiuix/bottomsheet/BottomSheetBehavior;->canBeHiddenByDragging()Z

    move-result p3

    if-eqz p3, :cond_6

    goto :goto_3

    :cond_6
    iget p3, p0, Lmiuix/bottomsheet/BottomSheetBehavior;->collapsedOffset:I

    sub-int/2addr p4, p3

    aput p4, p6, p1

    neg-int p3, p4

    invoke-static {p2, p3}, Landroidx/core/view/ViewCompat;->a0(Landroid/view/View;I)V

    const/4 p3, 0x4

    goto :goto_1

    :cond_7
    :goto_3
    invoke-direct {p0}, Lmiuix/bottomsheet/BottomSheetBehavior;->isInternalDraggable()Z

    move-result p3

    if-nez p3, :cond_8

    return-void

    :cond_8
    aput p5, p6, p1

    goto :goto_2

    :cond_9
    :goto_4
    invoke-virtual {p2}, Landroid/view/View;->getTop()I

    move-result p2

    invoke-virtual {p0, p2}, Lmiuix/bottomsheet/BottomSheetBehavior;->dispatchOnSlide(I)V

    iput p5, p0, Lmiuix/bottomsheet/BottomSheetBehavior;->lastNestedScrollDy:I

    iput-boolean p1, p0, Lmiuix/bottomsheet/BottomSheetBehavior;->nestedScrolled:Z

    return-void
.end method

.method public onNestedScroll(Landroidx/coordinatorlayout/widget/CoordinatorLayout;Landroid/view/View;Landroid/view/View;IIIII[I)V
    .locals 0
    .param p1    # Landroidx/coordinatorlayout/widget/CoordinatorLayout;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroid/view/View;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # Landroid/view/View;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p9    # [I
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/coordinatorlayout/widget/CoordinatorLayout;",
            "TV;",
            "Landroid/view/View;",
            "IIIII[I)V"
        }
    .end annotation

    return-void
.end method

.method public onRestoreInstanceState(Landroidx/coordinatorlayout/widget/CoordinatorLayout;Landroid/view/View;Landroid/os/Parcelable;)V
    .locals 1
    .param p1    # Landroidx/coordinatorlayout/widget/CoordinatorLayout;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroid/view/View;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # Landroid/os/Parcelable;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/coordinatorlayout/widget/CoordinatorLayout;",
            "TV;",
            "Landroid/os/Parcelable;",
            ")V"
        }
    .end annotation

    check-cast p3, Lmiuix/bottomsheet/BottomSheetBehavior$SavedState;

    invoke-virtual {p3}, Landroidx/customview/view/AbsSavedState;->getSuperState()Landroid/os/Parcelable;

    move-result-object v0

    invoke-super {p0, p1, p2, v0}, Landroidx/coordinatorlayout/widget/CoordinatorLayout$c;->onRestoreInstanceState(Landroidx/coordinatorlayout/widget/CoordinatorLayout;Landroid/view/View;Landroid/os/Parcelable;)V

    invoke-direct {p0, p3}, Lmiuix/bottomsheet/BottomSheetBehavior;->restoreOptionalState(Lmiuix/bottomsheet/BottomSheetBehavior$SavedState;)V

    iget p1, p3, Lmiuix/bottomsheet/BottomSheetBehavior$SavedState;->state:I

    const/4 p2, 0x1

    if-eq p1, p2, :cond_0

    const/4 p2, 0x2

    if-ne p1, p2, :cond_1

    :cond_0
    const/4 p1, 0x4

    :cond_1
    iput p1, p0, Lmiuix/bottomsheet/BottomSheetBehavior;->state:I

    iput p1, p0, Lmiuix/bottomsheet/BottomSheetBehavior;->lastStableState:I

    return-void
.end method

.method public onSaveInstanceState(Landroidx/coordinatorlayout/widget/CoordinatorLayout;Landroid/view/View;)Landroid/os/Parcelable;
    .locals 1
    .param p1    # Landroidx/coordinatorlayout/widget/CoordinatorLayout;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroid/view/View;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/coordinatorlayout/widget/CoordinatorLayout;",
            "TV;)",
            "Landroid/os/Parcelable;"
        }
    .end annotation

    new-instance v0, Lmiuix/bottomsheet/BottomSheetBehavior$SavedState;

    invoke-super {p0, p1, p2}, Landroidx/coordinatorlayout/widget/CoordinatorLayout$c;->onSaveInstanceState(Landroidx/coordinatorlayout/widget/CoordinatorLayout;Landroid/view/View;)Landroid/os/Parcelable;

    move-result-object p1

    invoke-direct {v0, p1, p0}, Lmiuix/bottomsheet/BottomSheetBehavior$SavedState;-><init>(Landroid/os/Parcelable;Lmiuix/bottomsheet/BottomSheetBehavior;)V

    return-object v0
.end method

.method public onStartNestedScroll(Landroidx/coordinatorlayout/widget/CoordinatorLayout;Landroid/view/View;Landroid/view/View;Landroid/view/View;II)Z
    .locals 0
    .param p1    # Landroidx/coordinatorlayout/widget/CoordinatorLayout;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroid/view/View;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # Landroid/view/View;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p4    # Landroid/view/View;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/coordinatorlayout/widget/CoordinatorLayout;",
            "TV;",
            "Landroid/view/View;",
            "Landroid/view/View;",
            "II)Z"
        }
    .end annotation

    const/4 p1, 0x0

    iput p1, p0, Lmiuix/bottomsheet/BottomSheetBehavior;->lastNestedScrollDy:I

    iput-boolean p1, p0, Lmiuix/bottomsheet/BottomSheetBehavior;->nestedScrolled:Z

    and-int/lit8 p2, p5, 0x2

    if-eqz p2, :cond_0

    const/4 p1, 0x1

    :cond_0
    return p1
.end method

.method public onStopNestedScroll(Landroidx/coordinatorlayout/widget/CoordinatorLayout;Landroid/view/View;Landroid/view/View;I)V
    .locals 2
    .param p1    # Landroidx/coordinatorlayout/widget/CoordinatorLayout;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroid/view/View;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # Landroid/view/View;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/coordinatorlayout/widget/CoordinatorLayout;",
            "TV;",
            "Landroid/view/View;",
            "I)V"
        }
    .end annotation

    invoke-virtual {p2}, Landroid/view/View;->getTop()I

    move-result p1

    invoke-virtual {p0}, Lmiuix/bottomsheet/BottomSheetBehavior;->getExpandedOffset()I

    move-result p4

    const/4 v0, 0x3

    if-ne p1, p4, :cond_0

    invoke-virtual {p0, v0}, Lmiuix/bottomsheet/BottomSheetBehavior;->setStateInternal(I)V

    return-void

    :cond_0
    invoke-virtual {p0}, Lmiuix/bottomsheet/BottomSheetBehavior;->isNestedScrollingCheckEnabled()Z

    move-result p1

    if-eqz p1, :cond_2

    iget-object p1, p0, Lmiuix/bottomsheet/BottomSheetBehavior;->nestedScrollingChildRef:Ljava/lang/ref/WeakReference;

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object p1

    if-ne p3, p1, :cond_1

    iget-boolean p1, p0, Lmiuix/bottomsheet/BottomSheetBehavior;->nestedScrolled:Z

    if-nez p1, :cond_2

    :cond_1
    return-void

    :cond_2
    iget p1, p0, Lmiuix/bottomsheet/BottomSheetBehavior;->lastNestedScrollDy:I

    const/4 p3, 0x6

    const/4 p4, 0x4

    if-lez p1, :cond_4

    invoke-virtual {p0}, Lmiuix/bottomsheet/BottomSheetBehavior;->shouldSkipHalfExpanded()Z

    move-result p1

    if-eqz p1, :cond_3

    goto/16 :goto_2

    :cond_3
    invoke-virtual {p2}, Landroid/view/View;->getTop()I

    move-result p1

    iget p4, p0, Lmiuix/bottomsheet/BottomSheetBehavior;->halfExpandedOffset:I

    if-le p1, p4, :cond_d

    goto/16 :goto_1

    :cond_4
    iget-boolean p1, p0, Lmiuix/bottomsheet/BottomSheetBehavior;->hideable:Z

    if-eqz p1, :cond_5

    invoke-direct {p0}, Lmiuix/bottomsheet/BottomSheetBehavior;->getYVelocity()F

    move-result p1

    invoke-virtual {p0, p2, p1}, Lmiuix/bottomsheet/BottomSheetBehavior;->shouldHide(Landroid/view/View;F)Z

    move-result p1

    if-eqz p1, :cond_5

    const/4 v0, 0x5

    goto :goto_2

    :cond_5
    iget p1, p0, Lmiuix/bottomsheet/BottomSheetBehavior;->lastNestedScrollDy:I

    if-nez p1, :cond_9

    invoke-virtual {p2}, Landroid/view/View;->getTop()I

    move-result p1

    invoke-virtual {p0}, Lmiuix/bottomsheet/BottomSheetBehavior;->shouldSkipHalfExpanded()Z

    move-result v1

    if-eqz v1, :cond_6

    iget p3, p0, Lmiuix/bottomsheet/BottomSheetBehavior;->fitToContentsOffset:I

    sub-int p3, p1, p3

    invoke-static {p3}, Ljava/lang/Math;->abs(I)I

    move-result p3

    iget v1, p0, Lmiuix/bottomsheet/BottomSheetBehavior;->collapsedOffset:I

    sub-int/2addr p1, v1

    invoke-static {p1}, Ljava/lang/Math;->abs(I)I

    move-result p1

    if-ge p3, p1, :cond_a

    goto :goto_2

    :cond_6
    iget v1, p0, Lmiuix/bottomsheet/BottomSheetBehavior;->halfExpandedOffset:I

    if-ge p1, v1, :cond_8

    iget v1, p0, Lmiuix/bottomsheet/BottomSheetBehavior;->collapsedOffset:I

    sub-int v1, p1, v1

    invoke-static {v1}, Ljava/lang/Math;->abs(I)I

    move-result v1

    if-ge p1, v1, :cond_7

    goto :goto_2

    :cond_7
    invoke-virtual {p0}, Lmiuix/bottomsheet/BottomSheetBehavior;->shouldSkipHalfExpandedStateWhenDragging()Z

    move-result p1

    if-eqz p1, :cond_c

    goto :goto_0

    :cond_8
    sub-int v0, p1, v1

    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v0

    iget v1, p0, Lmiuix/bottomsheet/BottomSheetBehavior;->collapsedOffset:I

    sub-int/2addr p1, v1

    invoke-static {p1}, Ljava/lang/Math;->abs(I)I

    move-result p1

    if-ge v0, p1, :cond_a

    goto :goto_1

    :cond_9
    invoke-virtual {p0}, Lmiuix/bottomsheet/BottomSheetBehavior;->shouldSkipHalfExpanded()Z

    move-result p1

    if-eqz p1, :cond_b

    :cond_a
    :goto_0
    move v0, p4

    goto :goto_2

    :cond_b
    invoke-virtual {p2}, Landroid/view/View;->getTop()I

    move-result p1

    iget v0, p0, Lmiuix/bottomsheet/BottomSheetBehavior;->halfExpandedOffset:I

    sub-int v0, p1, v0

    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v0

    iget v1, p0, Lmiuix/bottomsheet/BottomSheetBehavior;->collapsedOffset:I

    sub-int/2addr p1, v1

    invoke-static {p1}, Ljava/lang/Math;->abs(I)I

    move-result p1

    if-ge v0, p1, :cond_a

    :cond_c
    :goto_1
    move v0, p3

    :cond_d
    :goto_2
    const/4 p1, 0x0

    invoke-direct {p0, p2, v0, p1}, Lmiuix/bottomsheet/BottomSheetBehavior;->startSettling(Landroid/view/View;IZ)V

    iput-boolean p1, p0, Lmiuix/bottomsheet/BottomSheetBehavior;->nestedScrolled:Z

    return-void
.end method

.method public onTouchEvent(Landroidx/coordinatorlayout/widget/CoordinatorLayout;Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 2
    .param p1    # Landroidx/coordinatorlayout/widget/CoordinatorLayout;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroid/view/View;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # Landroid/view/MotionEvent;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/coordinatorlayout/widget/CoordinatorLayout;",
            "TV;",
            "Landroid/view/MotionEvent;",
            ")Z"
        }
    .end annotation

    invoke-virtual {p2}, Landroid/view/View;->isShown()Z

    move-result p1

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return p1

    :cond_0
    invoke-virtual {p3}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result p1

    iget v0, p0, Lmiuix/bottomsheet/BottomSheetBehavior;->state:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    if-nez p1, :cond_1

    return v1

    :cond_1
    invoke-direct {p0}, Lmiuix/bottomsheet/BottomSheetBehavior;->shouldHandleDraggingWithHelper()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lmiuix/bottomsheet/BottomSheetBehavior;->viewDragHelper:Landroidx/customview/widget/c;

    invoke-virtual {v0, p3}, Landroidx/customview/widget/c;->F(Landroid/view/MotionEvent;)V

    :cond_2
    if-nez p1, :cond_3

    invoke-direct {p0}, Lmiuix/bottomsheet/BottomSheetBehavior;->reset()V

    :cond_3
    iget-object v0, p0, Lmiuix/bottomsheet/BottomSheetBehavior;->velocityTracker:Landroid/view/VelocityTracker;

    if-nez v0, :cond_4

    invoke-static {}, Landroid/view/VelocityTracker;->obtain()Landroid/view/VelocityTracker;

    move-result-object v0

    iput-object v0, p0, Lmiuix/bottomsheet/BottomSheetBehavior;->velocityTracker:Landroid/view/VelocityTracker;

    :cond_4
    iget-object v0, p0, Lmiuix/bottomsheet/BottomSheetBehavior;->velocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v0, p3}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    invoke-direct {p0}, Lmiuix/bottomsheet/BottomSheetBehavior;->shouldHandleDraggingWithHelper()Z

    move-result v0

    if-eqz v0, :cond_5

    const/4 v0, 0x2

    if-ne p1, v0, :cond_5

    iget-boolean p1, p0, Lmiuix/bottomsheet/BottomSheetBehavior;->ignoreEvents:Z

    if-nez p1, :cond_5

    iget p1, p0, Lmiuix/bottomsheet/BottomSheetBehavior;->initialY:I

    int-to-float p1, p1

    invoke-virtual {p3}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    sub-float/2addr p1, v0

    invoke-static {p1}, Ljava/lang/Math;->abs(F)F

    move-result p1

    iget-object v0, p0, Lmiuix/bottomsheet/BottomSheetBehavior;->viewDragHelper:Landroidx/customview/widget/c;

    invoke-virtual {v0}, Landroidx/customview/widget/c;->z()I

    move-result v0

    int-to-float v0, v0

    cmpl-float p1, p1, v0

    if-lez p1, :cond_5

    iget-object p1, p0, Lmiuix/bottomsheet/BottomSheetBehavior;->viewDragHelper:Landroidx/customview/widget/c;

    invoke-virtual {p3}, Landroid/view/MotionEvent;->getActionIndex()I

    move-result v0

    invoke-virtual {p3, v0}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result p3

    invoke-virtual {p1, p2, p3}, Landroidx/customview/widget/c;->c(Landroid/view/View;I)V

    :cond_5
    iget-boolean p1, p0, Lmiuix/bottomsheet/BottomSheetBehavior;->ignoreEvents:Z

    xor-int/2addr p1, v1

    return p1
.end method

.method public removeBottomSheetCallback(Lmiuix/bottomsheet/BottomSheetBehavior$i;)V
    .locals 1
    .param p1    # Lmiuix/bottomsheet/BottomSheetBehavior$i;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    iget-object v0, p0, Lmiuix/bottomsheet/BottomSheetBehavior;->callbacks:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    return-void
.end method

.method setAccessibilityDelegateView(Landroid/view/View;)V
    .locals 2
    .param p1    # Landroid/view/View;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    const/4 v0, 0x1

    if-nez p1, :cond_0

    iget-object v1, p0, Lmiuix/bottomsheet/BottomSheetBehavior;->accessibilityDelegateViewRef:Ljava/lang/ref/WeakReference;

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/view/View;

    invoke-direct {p0, p1, v0}, Lmiuix/bottomsheet/BottomSheetBehavior;->clearAccessibilityAction(Landroid/view/View;I)V

    const/4 p1, 0x0

    iput-object p1, p0, Lmiuix/bottomsheet/BottomSheetBehavior;->accessibilityDelegateViewRef:Ljava/lang/ref/WeakReference;

    return-void

    :cond_0
    new-instance v1, Ljava/lang/ref/WeakReference;

    invoke-direct {v1, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v1, p0, Lmiuix/bottomsheet/BottomSheetBehavior;->accessibilityDelegateViewRef:Ljava/lang/ref/WeakReference;

    invoke-direct {p0, p1, v0}, Lmiuix/bottomsheet/BottomSheetBehavior;->updateAccessibilityActions(Landroid/view/View;I)V

    return-void
.end method

.method setAnimationInterruptible(Z)V
    .locals 0

    iput-boolean p1, p0, Lmiuix/bottomsheet/BottomSheetBehavior;->animInterruptible:Z

    return-void
.end method

.method public setBottomModeMaxWidth(I)V
    .locals 0

    iput p1, p0, Lmiuix/bottomsheet/BottomSheetBehavior;->bottomModeMaxWidth:I

    return-void
.end method

.method public setBottomSheetCallback(Lmiuix/bottomsheet/BottomSheetBehavior$i;)V
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const-string v0, "BottomSheetBehavior"

    const-string v1, "BottomSheetBehavior now supports multiple callbacks. `setBottomSheetCallback()` removes all existing callbacks, including ones set internally by library authors, which may result in unintended behavior. This may change in the future. Please use `addBottomSheetCallback()` and `removeBottomSheetCallback()` instead to set your own callbacks."

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lmiuix/bottomsheet/BottomSheetBehavior;->callbacks:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    if-eqz p1, :cond_0

    iget-object v0, p0, Lmiuix/bottomsheet/BottomSheetBehavior;->callbacks:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method

.method public setDraggable(Z)V
    .locals 0

    iput-boolean p1, p0, Lmiuix/bottomsheet/BottomSheetBehavior;->draggable:Z

    return-void
.end method

.method public setExpandedOffset(I)V
    .locals 1

    if-gez p1, :cond_1

    const/4 v0, -0x1

    if-ne p1, v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "offset must be greater than or equal to 0"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    :goto_0
    iput p1, p0, Lmiuix/bottomsheet/BottomSheetBehavior;->expandedOffset:I

    return-void
.end method

.method public setExtraPaddingEnabled(Z)V
    .locals 1

    iput-boolean p1, p0, Lmiuix/bottomsheet/BottomSheetBehavior;->extraPaddingEnabled:Z

    iget-object v0, p0, Lmiuix/bottomsheet/BottomSheetBehavior;->extraPaddingPolicy:Lyk/b;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lyk/b;->j(Z)V

    :cond_0
    return-void
.end method

.method public setExtraPaddingPolicy(Lyk/b;)V
    .locals 0

    iput-object p1, p0, Lmiuix/bottomsheet/BottomSheetBehavior;->extraPaddingPolicy:Lyk/b;

    return-void
.end method

.method public setFixedHeightRatioEnabled(Z)V
    .locals 0

    iput-boolean p1, p0, Lmiuix/bottomsheet/BottomSheetBehavior;->fixedHeightRatioEnabled:Z

    return-void
.end method

.method public setFloatingModeDependsOnWindow(Z)V
    .locals 0

    iput-boolean p1, p0, Lmiuix/bottomsheet/BottomSheetBehavior;->floatingModeDependsOnWindow:Z

    return-void
.end method

.method public setForceFullHeight(Z)V
    .locals 0

    iput-boolean p1, p0, Lmiuix/bottomsheet/BottomSheetBehavior;->forceFullHeight:Z

    return-void
.end method

.method public setGestureInsetBottomIgnored(Z)V
    .locals 0

    iput-boolean p1, p0, Lmiuix/bottomsheet/BottomSheetBehavior;->gestureInsetBottomIgnored:Z

    return-void
.end method

.method public setHalfExpandedRatio(F)V
    .locals 1
    .param p1    # F
        .annotation build Landroidx/annotation/FloatRange;
            from = 0.0
            fromInclusive = false
            to = 1.0
            toInclusive = false
        .end annotation
    .end param

    const/4 v0, 0x0

    cmpg-float v0, p1, v0

    if-lez v0, :cond_1

    const/high16 v0, 0x3f800000    # 1.0f

    cmpl-float v0, p1, v0

    if-gez v0, :cond_1

    iput p1, p0, Lmiuix/bottomsheet/BottomSheetBehavior;->halfExpandedRatio:F

    iget-object p1, p0, Lmiuix/bottomsheet/BottomSheetBehavior;->viewRef:Ljava/lang/ref/WeakReference;

    if-eqz p1, :cond_0

    invoke-direct {p0}, Lmiuix/bottomsheet/BottomSheetBehavior;->calculateHalfExpandedOffset()V

    :cond_0
    return-void

    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "ratio must be a float value between 0 and 1"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public setHideFriction(F)V
    .locals 0

    iput p1, p0, Lmiuix/bottomsheet/BottomSheetBehavior;->hideFriction:F

    return-void
.end method

.method public setHideable(Z)V
    .locals 1

    iget-boolean v0, p0, Lmiuix/bottomsheet/BottomSheetBehavior;->hideable:Z

    if-eq v0, p1, :cond_1

    iput-boolean p1, p0, Lmiuix/bottomsheet/BottomSheetBehavior;->hideable:Z

    if-nez p1, :cond_0

    iget p1, p0, Lmiuix/bottomsheet/BottomSheetBehavior;->state:I

    const/4 v0, 0x5

    if-ne p1, v0, :cond_0

    const/4 p1, 0x4

    invoke-virtual {p0, p1}, Lmiuix/bottomsheet/BottomSheetBehavior;->setState(I)V

    :cond_0
    invoke-direct {p0}, Lmiuix/bottomsheet/BottomSheetBehavior;->updateAccessibilityActions()V

    :cond_1
    return-void
.end method

.method public setHideableInternal(Z)V
    .locals 0
    .annotation build Landroidx/annotation/RestrictTo;
        value = {
            .enum Landroidx/annotation/RestrictTo$a;->b:Landroidx/annotation/RestrictTo$a;
        }
    .end annotation

    iput-boolean p1, p0, Lmiuix/bottomsheet/BottomSheetBehavior;->hideable:Z

    return-void
.end method

.method public setMaxHeight(I)V
    .locals 0
    .param p1    # I
        .annotation build Landroidx/annotation/Px;
        .end annotation
    .end param

    iput p1, p0, Lmiuix/bottomsheet/BottomSheetBehavior;->maxHeight:I

    return-void
.end method

.method public setMaxWidth(I)V
    .locals 0
    .param p1    # I
        .annotation build Landroidx/annotation/Px;
        .end annotation
    .end param

    iput p1, p0, Lmiuix/bottomsheet/BottomSheetBehavior;->maxWidth:I

    return-void
.end method

.method public setModeConfig(I)V
    .locals 1

    iget v0, p0, Lmiuix/bottomsheet/BottomSheetBehavior;->modeConfig:I

    if-eq v0, p1, :cond_0

    iput p1, p0, Lmiuix/bottomsheet/BottomSheetBehavior;->modeConfig:I

    :cond_0
    return-void
.end method

.method public setOnExtraPaddingListener(Lmiuix/bottomsheet/BottomSheetBehavior$k;)V
    .locals 0

    iput-object p1, p0, Lmiuix/bottomsheet/BottomSheetBehavior;->onExtraPaddingListener:Lmiuix/bottomsheet/BottomSheetBehavior$k;

    return-void
.end method

.method public setOnModeChangeListener(Lmiuix/bottomsheet/BottomSheetBehavior$l;)V
    .locals 0

    iput-object p1, p0, Lmiuix/bottomsheet/BottomSheetBehavior;->onModeChangeListener:Lmiuix/bottomsheet/BottomSheetBehavior$l;

    return-void
.end method

.method setOriginalWindowInsetsEnabled(Z)V
    .locals 0
    .annotation build Landroidx/annotation/RestrictTo;
        value = {
            .enum Landroidx/annotation/RestrictTo$a;->b:Landroidx/annotation/RestrictTo$a;
        }
    .end annotation

    iput-boolean p1, p0, Lmiuix/bottomsheet/BottomSheetBehavior;->originalWindowInsetsEnabled:Z

    return-void
.end method

.method public setPeekHeight(I)V
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lmiuix/bottomsheet/BottomSheetBehavior;->setPeekHeight(IZ)V

    return-void
.end method

.method public final setPeekHeight(IZ)V
    .locals 3

    const/4 v0, 0x1

    const/4 v1, 0x0

    const/4 v2, -0x1

    if-ne p1, v2, :cond_0

    iget-boolean p1, p0, Lmiuix/bottomsheet/BottomSheetBehavior;->peekHeightAuto:Z

    if-nez p1, :cond_1

    iput-boolean v0, p0, Lmiuix/bottomsheet/BottomSheetBehavior;->peekHeightAuto:Z

    goto :goto_1

    :cond_0
    iget-boolean v2, p0, Lmiuix/bottomsheet/BottomSheetBehavior;->peekHeightAuto:Z

    if-nez v2, :cond_2

    iget v2, p0, Lmiuix/bottomsheet/BottomSheetBehavior;->peekHeight:I

    if-eq v2, p1, :cond_1

    goto :goto_0

    :cond_1
    move v0, v1

    goto :goto_1

    :cond_2
    :goto_0
    iput-boolean v1, p0, Lmiuix/bottomsheet/BottomSheetBehavior;->peekHeightAuto:Z

    invoke-static {v1, p1}, Ljava/lang/Math;->max(II)I

    move-result p1

    iput p1, p0, Lmiuix/bottomsheet/BottomSheetBehavior;->peekHeight:I

    :goto_1
    if-eqz v0, :cond_3

    invoke-direct {p0, p2}, Lmiuix/bottomsheet/BottomSheetBehavior;->updatePeekHeight(Z)V

    :cond_3
    return-void
.end method

.method setReleaseAnimListener(Lmiuix/bottomsheet/BottomSheetBehavior$n;)V
    .locals 0

    iput-object p1, p0, Lmiuix/bottomsheet/BottomSheetBehavior;->releaseAnimListener:Lmiuix/bottomsheet/BottomSheetBehavior$n;

    return-void
.end method

.method public setSaveFlags(I)V
    .locals 0

    iput p1, p0, Lmiuix/bottomsheet/BottomSheetBehavior;->saveFlags:I

    return-void
.end method

.method public setSignificantVelocityThreshold(I)V
    .locals 0

    iput p1, p0, Lmiuix/bottomsheet/BottomSheetBehavior;->significantVelocityThreshold:I

    return-void
.end method

.method public setSkipCollapsed(Z)V
    .locals 0

    iput-boolean p1, p0, Lmiuix/bottomsheet/BottomSheetBehavior;->skipCollapsed:Z

    return-void
.end method

.method public setSkipHalfExpanded(Z)V
    .locals 0

    iput-boolean p1, p0, Lmiuix/bottomsheet/BottomSheetBehavior;->skipHalfExpanded:Z

    return-void
.end method

.method public setState(I)V
    .locals 4

    const/4 v0, 0x1

    if-eq p1, v0, :cond_5

    const/4 v1, 0x2

    if-ne p1, v1, :cond_0

    goto :goto_3

    :cond_0
    iget-boolean v0, p0, Lmiuix/bottomsheet/BottomSheetBehavior;->hideable:Z

    if-nez v0, :cond_1

    const/4 v0, 0x5

    if-ne p1, v0, :cond_1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Cannot set state: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "BottomSheetBehavior"

    invoke-static {v0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_1
    invoke-direct {p0, p1}, Lmiuix/bottomsheet/BottomSheetBehavior;->fixStateInFloatingMode(I)I

    move-result p1

    const/4 v0, 0x6

    if-ne p1, v0, :cond_2

    invoke-virtual {p0}, Lmiuix/bottomsheet/BottomSheetBehavior;->shouldSkipHalfExpanded()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-direct {p0, p1}, Lmiuix/bottomsheet/BottomSheetBehavior;->getTopOffsetForState(I)I

    move-result v0

    iget v1, p0, Lmiuix/bottomsheet/BottomSheetBehavior;->fitToContentsOffset:I

    if-gt v0, v1, :cond_2

    const/4 v0, 0x3

    goto :goto_0

    :cond_2
    move v0, p1

    :goto_0
    iget-object v1, p0, Lmiuix/bottomsheet/BottomSheetBehavior;->viewRef:Ljava/lang/ref/WeakReference;

    if-eqz v1, :cond_4

    invoke-virtual {v1}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v1

    if-nez v1, :cond_3

    goto :goto_1

    :cond_3
    iget-object v1, p0, Lmiuix/bottomsheet/BottomSheetBehavior;->viewRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->isLaidOut()Z

    move-result v2

    if-eqz v2, :cond_4

    new-instance p1, Lmiuix/bottomsheet/a;

    invoke-direct {p1, p0, v1, v0}, Lmiuix/bottomsheet/a;-><init>(Lmiuix/bottomsheet/BottomSheetBehavior;Landroid/view/View;I)V

    invoke-direct {p0, v1, p1}, Lmiuix/bottomsheet/BottomSheetBehavior;->runAfterLayout(Landroid/view/View;Ljava/lang/Runnable;)V

    goto :goto_2

    :cond_4
    :goto_1
    invoke-virtual {p0, p1}, Lmiuix/bottomsheet/BottomSheetBehavior;->setStateInternal(I)V

    :goto_2
    return-void

    :cond_5
    :goto_3
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "STATE_"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-ne p1, v0, :cond_6

    const-string p1, "DRAGGING"

    goto :goto_4

    :cond_6
    const-string p1, "SETTLING"

    :goto_4
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " should not be set externally."

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v1, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method setStateInternal(I)V
    .locals 6

    iget v0, p0, Lmiuix/bottomsheet/BottomSheetBehavior;->state:I

    if-ne v0, p1, :cond_0

    return-void

    :cond_0
    iput p1, p0, Lmiuix/bottomsheet/BottomSheetBehavior;->state:I

    const/4 v0, 0x5

    const/4 v1, 0x6

    const/4 v2, 0x3

    const/4 v3, 0x4

    if-eq p1, v3, :cond_1

    if-eq p1, v2, :cond_1

    if-eq p1, v1, :cond_1

    iget-boolean v4, p0, Lmiuix/bottomsheet/BottomSheetBehavior;->hideable:Z

    if-eqz v4, :cond_2

    if-ne p1, v0, :cond_2

    :cond_1
    iput p1, p0, Lmiuix/bottomsheet/BottomSheetBehavior;->lastStableState:I

    :cond_2
    iget-object v4, p0, Lmiuix/bottomsheet/BottomSheetBehavior;->viewRef:Ljava/lang/ref/WeakReference;

    if-nez v4, :cond_3

    return-void

    :cond_3
    invoke-virtual {v4}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/view/View;

    if-nez v4, :cond_4

    return-void

    :cond_4
    const/4 v5, 0x0

    if-ne p1, v2, :cond_5

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lmiuix/bottomsheet/BottomSheetBehavior;->updateImportantForAccessibility(Z)V

    goto :goto_0

    :cond_5
    if-eq p1, v1, :cond_6

    if-eq p1, v0, :cond_6

    if-ne p1, v3, :cond_7

    :cond_6
    invoke-direct {p0, v5}, Lmiuix/bottomsheet/BottomSheetBehavior;->updateImportantForAccessibility(Z)V

    :cond_7
    :goto_0
    iget-object v0, p0, Lmiuix/bottomsheet/BottomSheetBehavior;->callbacks:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v5, v0, :cond_8

    iget-object v0, p0, Lmiuix/bottomsheet/BottomSheetBehavior;->callbacks:Ljava/util/ArrayList;

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lmiuix/bottomsheet/BottomSheetBehavior$i;

    invoke-virtual {v0, v4, p1}, Lmiuix/bottomsheet/BottomSheetBehavior$i;->c(Landroid/view/View;I)V

    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    :cond_8
    invoke-direct {p0}, Lmiuix/bottomsheet/BottomSheetBehavior;->updateAccessibilityActions()V

    return-void
.end method

.method public setUpdateImportantForAccessibilityOnSiblings(Z)V
    .locals 0

    iput-boolean p1, p0, Lmiuix/bottomsheet/BottomSheetBehavior;->updateImportantForAccessibilityOnSiblings:Z

    return-void
.end method

.method public shouldExpandOnUpwardDrag(JF)Z
    .locals 0
    .param p3    # F
        .annotation build Landroidx/annotation/FloatRange;
            from = 0.0
            to = 100.0
        .end annotation
    .end param
    .annotation build Landroidx/annotation/RestrictTo;
        value = {
            .enum Landroidx/annotation/RestrictTo$a;->b:Landroidx/annotation/RestrictTo$a;
        }
    .end annotation

    const/4 p1, 0x0

    return p1
.end method

.method shouldHide(Landroid/view/View;F)Z
    .locals 4
    .param p1    # Landroid/view/View;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    iget-boolean v0, p0, Lmiuix/bottomsheet/BottomSheetBehavior;->skipCollapsed:Z

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    return v1

    :cond_0
    invoke-virtual {p0}, Lmiuix/bottomsheet/BottomSheetBehavior;->isHideableWhenDragging()Z

    move-result v0

    const/4 v2, 0x0

    if-nez v0, :cond_1

    return v2

    :cond_1
    invoke-virtual {p1}, Landroid/view/View;->getTop()I

    move-result v0

    iget v3, p0, Lmiuix/bottomsheet/BottomSheetBehavior;->collapsedOffset:I

    if-ge v0, v3, :cond_2

    return v2

    :cond_2
    invoke-direct {p0}, Lmiuix/bottomsheet/BottomSheetBehavior;->calculatePeekHeight()I

    move-result v0

    invoke-virtual {p1}, Landroid/view/View;->getTop()I

    move-result p1

    int-to-float p1, p1

    iget v3, p0, Lmiuix/bottomsheet/BottomSheetBehavior;->hideFriction:F

    mul-float/2addr p2, v3

    add-float/2addr p1, p2

    iget p2, p0, Lmiuix/bottomsheet/BottomSheetBehavior;->collapsedOffset:I

    int-to-float p2, p2

    sub-float/2addr p1, p2

    invoke-static {p1}, Ljava/lang/Math;->abs(F)F

    move-result p1

    int-to-float p2, v0

    div-float/2addr p1, p2

    const/high16 p2, 0x3f000000    # 0.5f

    cmpl-float p1, p1, p2

    if-lez p1, :cond_3

    goto :goto_0

    :cond_3
    move v1, v2

    :goto_0
    return v1
.end method

.method public shouldSkipHalfExpanded()Z
    .locals 2

    iget-boolean v0, p0, Lmiuix/bottomsheet/BottomSheetBehavior;->skipHalfExpanded:Z

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    return v1

    :cond_0
    iget-boolean v0, p0, Lmiuix/bottomsheet/BottomSheetBehavior;->fullHeightMode:Z

    xor-int/2addr v0, v1

    return v0
.end method

.method public shouldSkipHalfExpandedStateWhenDragging()Z
    .locals 1
    .annotation build Landroidx/annotation/RestrictTo;
        value = {
            .enum Landroidx/annotation/RestrictTo$a;->b:Landroidx/annotation/RestrictTo$a;
        }
    .end annotation

    const/4 v0, 0x0

    return v0
.end method

.method public shouldSkipSmoothAnimation()Z
    .locals 1
    .annotation build Landroidx/annotation/RestrictTo;
        value = {
            .enum Landroidx/annotation/RestrictTo$a;->b:Landroidx/annotation/RestrictTo$a;
        }
    .end annotation

    const/4 v0, 0x1

    return v0
.end method

.method startEnterAnimation(Lmiuix/bottomsheet/BottomSheetBehavior$h;)Z
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lmiuix/bottomsheet/BottomSheetBehavior;->startEnterAnimation(Lmiuix/bottomsheet/BottomSheetBehavior$h;Z)Z

    move-result p1

    return p1
.end method

.method startEnterAnimation(Lmiuix/bottomsheet/BottomSheetBehavior$h;Z)Z
    .locals 3

    iget-boolean v0, p0, Lmiuix/bottomsheet/BottomSheetBehavior;->animInterruptible:Z

    const/4 v1, 0x0

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lmiuix/bottomsheet/BottomSheetBehavior;->animRunning:Z

    if-eqz v0, :cond_0

    return v1

    :cond_0
    iget-object v0, p0, Lmiuix/bottomsheet/BottomSheetBehavior;->parentViewRef:Ljava/lang/ref/WeakReference;

    if-nez v0, :cond_1

    return v1

    :cond_1
    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/coordinatorlayout/widget/CoordinatorLayout;

    if-nez v0, :cond_2

    return v1

    :cond_2
    iget-object v2, p0, Lmiuix/bottomsheet/BottomSheetBehavior;->viewRef:Ljava/lang/ref/WeakReference;

    if-nez v2, :cond_3

    return v1

    :cond_3
    invoke-virtual {v2}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/View;

    if-nez v2, :cond_4

    return v1

    :cond_4
    iget v1, p0, Lmiuix/bottomsheet/BottomSheetBehavior;->mode:I

    if-nez v1, :cond_5

    invoke-direct {p0, p1, v0, v2, p2}, Lmiuix/bottomsheet/BottomSheetBehavior;->startBottomEnterAnim(Lmiuix/bottomsheet/BottomSheetBehavior$h;Landroid/view/View;Landroid/view/View;Z)V

    goto :goto_0

    :cond_5
    invoke-direct {p0, p1, v0, v2, p2}, Lmiuix/bottomsheet/BottomSheetBehavior;->startFloatingEnterAnim(Lmiuix/bottomsheet/BottomSheetBehavior$h;Landroid/view/View;Landroid/view/View;Z)V

    :goto_0
    const/4 p1, 0x1

    return p1
.end method

.method startExitAnimation(Lmiuix/bottomsheet/BottomSheetBehavior$h;)Z
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lmiuix/bottomsheet/BottomSheetBehavior;->startExitAnimation(Lmiuix/bottomsheet/BottomSheetBehavior$h;Z)Z

    move-result p1

    return p1
.end method

.method startExitAnimation(Lmiuix/bottomsheet/BottomSheetBehavior$h;Z)Z
    .locals 3

    iget-boolean v0, p0, Lmiuix/bottomsheet/BottomSheetBehavior;->animInterruptible:Z

    const/4 v1, 0x0

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lmiuix/bottomsheet/BottomSheetBehavior;->animRunning:Z

    if-eqz v0, :cond_0

    return v1

    :cond_0
    iget-object v0, p0, Lmiuix/bottomsheet/BottomSheetBehavior;->parentViewRef:Ljava/lang/ref/WeakReference;

    if-nez v0, :cond_1

    return v1

    :cond_1
    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    if-nez v0, :cond_2

    return v1

    :cond_2
    iget-object v2, p0, Lmiuix/bottomsheet/BottomSheetBehavior;->viewRef:Ljava/lang/ref/WeakReference;

    if-nez v2, :cond_3

    return v1

    :cond_3
    invoke-virtual {v2}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/View;

    if-nez v2, :cond_4

    return v1

    :cond_4
    iget v1, p0, Lmiuix/bottomsheet/BottomSheetBehavior;->mode:I

    if-nez v1, :cond_5

    invoke-direct {p0, p1, v0, v2, p2}, Lmiuix/bottomsheet/BottomSheetBehavior;->startBottomExitAnimation(Lmiuix/bottomsheet/BottomSheetBehavior$h;Landroid/view/View;Landroid/view/View;Z)V

    goto :goto_0

    :cond_5
    invoke-direct {p0, p1, v0, v2, p2}, Lmiuix/bottomsheet/BottomSheetBehavior;->startFloatingExitAnim(Lmiuix/bottomsheet/BottomSheetBehavior$h;Landroid/view/View;Landroid/view/View;Z)V

    :goto_0
    const/4 p1, 0x1

    return p1
.end method
