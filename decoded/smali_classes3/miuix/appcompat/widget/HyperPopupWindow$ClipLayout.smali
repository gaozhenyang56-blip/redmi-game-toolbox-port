.class public Lmiuix/appcompat/widget/HyperPopupWindow$ClipLayout;
.super Landroid/widget/FrameLayout;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmiuix/appcompat/widget/HyperPopupWindow;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "ClipLayout"
.end annotation


# instance fields
.field private backCallBack:Landroid/window/OnBackInvokedCallback;

.field dispatcher:Landroid/window/OnBackInvokedDispatcher;

.field private interceptedTouchEvent:Z

.field private mClipPath:Landroid/graphics/Path;

.field private mClipRoundRect:Landroid/graphics/RectF;

.field private mIsClip:Z

.field private mRadius:F

.field final synthetic this$0:Lmiuix/appcompat/widget/HyperPopupWindow;


# direct methods
.method public constructor <init>(Lmiuix/appcompat/widget/HyperPopupWindow;Landroid/content/Context;)V
    .locals 0
    .param p1    # Lmiuix/appcompat/widget/HyperPopupWindow;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    iput-object p1, p0, Lmiuix/appcompat/widget/HyperPopupWindow$ClipLayout;->this$0:Lmiuix/appcompat/widget/HyperPopupWindow;

    invoke-direct {p0, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    const/4 p1, 0x0

    iput-boolean p1, p0, Lmiuix/appcompat/widget/HyperPopupWindow$ClipLayout;->mIsClip:Z

    new-instance p2, Landroid/graphics/RectF;

    invoke-direct {p2}, Landroid/graphics/RectF;-><init>()V

    iput-object p2, p0, Lmiuix/appcompat/widget/HyperPopupWindow$ClipLayout;->mClipRoundRect:Landroid/graphics/RectF;

    new-instance p2, Landroid/graphics/Path;

    invoke-direct {p2}, Landroid/graphics/Path;-><init>()V

    iput-object p2, p0, Lmiuix/appcompat/widget/HyperPopupWindow$ClipLayout;->mClipPath:Landroid/graphics/Path;

    iput-boolean p1, p0, Lmiuix/appcompat/widget/HyperPopupWindow$ClipLayout;->interceptedTouchEvent:Z

    return-void
.end method

.method public constructor <init>(Lmiuix/appcompat/widget/HyperPopupWindow;Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .param p1    # Lmiuix/appcompat/widget/HyperPopupWindow;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroid/content/Context;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    iput-object p1, p0, Lmiuix/appcompat/widget/HyperPopupWindow$ClipLayout;->this$0:Lmiuix/appcompat/widget/HyperPopupWindow;

    invoke-direct {p0, p2, p3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 p1, 0x0

    iput-boolean p1, p0, Lmiuix/appcompat/widget/HyperPopupWindow$ClipLayout;->mIsClip:Z

    new-instance p2, Landroid/graphics/RectF;

    invoke-direct {p2}, Landroid/graphics/RectF;-><init>()V

    iput-object p2, p0, Lmiuix/appcompat/widget/HyperPopupWindow$ClipLayout;->mClipRoundRect:Landroid/graphics/RectF;

    new-instance p2, Landroid/graphics/Path;

    invoke-direct {p2}, Landroid/graphics/Path;-><init>()V

    iput-object p2, p0, Lmiuix/appcompat/widget/HyperPopupWindow$ClipLayout;->mClipPath:Landroid/graphics/Path;

    iput-boolean p1, p0, Lmiuix/appcompat/widget/HyperPopupWindow$ClipLayout;->interceptedTouchEvent:Z

    return-void
.end method

.method public constructor <init>(Lmiuix/appcompat/widget/HyperPopupWindow;Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0
    .param p1    # Lmiuix/appcompat/widget/HyperPopupWindow;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroid/content/Context;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    iput-object p1, p0, Lmiuix/appcompat/widget/HyperPopupWindow$ClipLayout;->this$0:Lmiuix/appcompat/widget/HyperPopupWindow;

    invoke-direct {p0, p2, p3, p4}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 p1, 0x0

    iput-boolean p1, p0, Lmiuix/appcompat/widget/HyperPopupWindow$ClipLayout;->mIsClip:Z

    new-instance p2, Landroid/graphics/RectF;

    invoke-direct {p2}, Landroid/graphics/RectF;-><init>()V

    iput-object p2, p0, Lmiuix/appcompat/widget/HyperPopupWindow$ClipLayout;->mClipRoundRect:Landroid/graphics/RectF;

    new-instance p2, Landroid/graphics/Path;

    invoke-direct {p2}, Landroid/graphics/Path;-><init>()V

    iput-object p2, p0, Lmiuix/appcompat/widget/HyperPopupWindow$ClipLayout;->mClipPath:Landroid/graphics/Path;

    iput-boolean p1, p0, Lmiuix/appcompat/widget/HyperPopupWindow$ClipLayout;->interceptedTouchEvent:Z

    return-void
.end method

.method public static synthetic a(Lmiuix/appcompat/widget/HyperPopupWindow;)V
    .locals 0

    invoke-static {p0}, Lmiuix/appcompat/widget/HyperPopupWindow$ClipLayout;->lambda$onAttachedToWindow$0(Lmiuix/appcompat/widget/HyperPopupWindow;)V

    return-void
.end method

.method private static synthetic lambda$onAttachedToWindow$0(Lmiuix/appcompat/widget/HyperPopupWindow;)V
    .locals 0

    invoke-static {p0}, Lmiuix/appcompat/widget/HyperPopupWindow;->access$900(Lmiuix/appcompat/widget/HyperPopupWindow;)V

    return-void
.end method


# virtual methods
.method public draw(Landroid/graphics/Canvas;)V
    .locals 1

    iget-boolean v0, p0, Lmiuix/appcompat/widget/HyperPopupWindow$ClipLayout;->mIsClip:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lmiuix/appcompat/widget/HyperPopupWindow$ClipLayout;->mClipPath:Landroid/graphics/Path;

    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->clipPath(Landroid/graphics/Path;)Z

    :cond_0
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->draw(Landroid/graphics/Canvas;)V

    return-void
.end method

.method protected onAttachedToWindow()V
    .locals 3

    invoke-super {p0}, Landroid/widget/FrameLayout;->onAttachedToWindow()V

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x21

    if-lt v0, v1, :cond_0

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->findOnBackInvokedDispatcher()Landroid/window/OnBackInvokedDispatcher;

    move-result-object v0

    iput-object v0, p0, Lmiuix/appcompat/widget/HyperPopupWindow$ClipLayout;->dispatcher:Landroid/window/OnBackInvokedDispatcher;

    iget-object v0, p0, Lmiuix/appcompat/widget/HyperPopupWindow$ClipLayout;->this$0:Lmiuix/appcompat/widget/HyperPopupWindow;

    new-instance v1, Lmiuix/appcompat/widget/c;

    invoke-direct {v1, v0}, Lmiuix/appcompat/widget/c;-><init>(Lmiuix/appcompat/widget/HyperPopupWindow;)V

    iput-object v1, p0, Lmiuix/appcompat/widget/HyperPopupWindow$ClipLayout;->backCallBack:Landroid/window/OnBackInvokedCallback;

    iget-object v0, p0, Lmiuix/appcompat/widget/HyperPopupWindow$ClipLayout;->dispatcher:Landroid/window/OnBackInvokedDispatcher;

    if-eqz v0, :cond_0

    const v2, 0xf4240

    invoke-interface {v0, v2, v1}, Landroid/window/OnBackInvokedDispatcher;->registerOnBackInvokedCallback(ILandroid/window/OnBackInvokedCallback;)V

    :cond_0
    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 2

    invoke-super {p0}, Landroid/widget/FrameLayout;->onDetachedFromWindow()V

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x21

    if-lt v0, v1, :cond_0

    iget-object v0, p0, Lmiuix/appcompat/widget/HyperPopupWindow$ClipLayout;->dispatcher:Landroid/window/OnBackInvokedDispatcher;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lmiuix/appcompat/widget/HyperPopupWindow$ClipLayout;->backCallBack:Landroid/window/OnBackInvokedCallback;

    invoke-interface {v0, v1}, Landroid/window/OnBackInvokedDispatcher;->unregisterOnBackInvokedCallback(Landroid/window/OnBackInvokedCallback;)V

    :cond_0
    return-void
.end method

.method public onInterceptHoverEvent(Landroid/view/MotionEvent;)Z
    .locals 0

    iget-boolean p1, p0, Lmiuix/appcompat/widget/HyperPopupWindow$ClipLayout;->interceptedTouchEvent:Z

    return p1
.end method

.method public refreshClipPath()V
    .locals 4

    iget-object v0, p0, Lmiuix/appcompat/widget/HyperPopupWindow$ClipLayout;->mClipPath:Landroid/graphics/Path;

    invoke-virtual {v0}, Landroid/graphics/Path;->reset()V

    iget-object v0, p0, Lmiuix/appcompat/widget/HyperPopupWindow$ClipLayout;->mClipPath:Landroid/graphics/Path;

    iget-object v1, p0, Lmiuix/appcompat/widget/HyperPopupWindow$ClipLayout;->mClipRoundRect:Landroid/graphics/RectF;

    iget v2, p0, Lmiuix/appcompat/widget/HyperPopupWindow$ClipLayout;->mRadius:F

    sget-object v3, Landroid/graphics/Path$Direction;->CW:Landroid/graphics/Path$Direction;

    invoke-virtual {v0, v1, v2, v2, v3}, Landroid/graphics/Path;->addRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Path$Direction;)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lmiuix/appcompat/widget/HyperPopupWindow$ClipLayout;->mIsClip:Z

    return-void
.end method

.method public setClipBounds(IIII)V
    .locals 1

    iget-object v0, p0, Lmiuix/appcompat/widget/HyperPopupWindow$ClipLayout;->mClipRoundRect:Landroid/graphics/RectF;

    int-to-float p1, p1

    int-to-float p2, p2

    int-to-float p3, p3

    int-to-float p4, p4

    invoke-virtual {v0, p1, p2, p3, p4}, Landroid/graphics/RectF;->set(FFFF)V

    return-void
.end method

.method public setRadius(F)V
    .locals 0

    iput p1, p0, Lmiuix/appcompat/widget/HyperPopupWindow$ClipLayout;->mRadius:F

    return-void
.end method
