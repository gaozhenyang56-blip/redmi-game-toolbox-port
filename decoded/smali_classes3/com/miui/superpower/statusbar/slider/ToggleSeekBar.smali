.class public Lcom/miui/superpower/statusbar/slider/ToggleSeekBar;
.super Landroid/widget/SeekBar;
.source "SourceFile"


# instance fields
.field private a:Ljava/lang/String;

.field private b:Log/a;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/miui/superpower/statusbar/slider/ToggleSeekBar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Landroid/widget/SeekBar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    invoke-direct {p0}, Lcom/miui/superpower/statusbar/slider/ToggleSeekBar;->a()V

    return-void
.end method

.method private a()V
    .locals 2

    new-instance v0, Log/a;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Log/a;-><init>(Landroid/widget/SeekBar;Z)V

    iput-object v0, p0, Lcom/miui/superpower/statusbar/slider/ToggleSeekBar;->b:Log/a;

    return-void
.end method


# virtual methods
.method public onInitializeAccessibilityNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;)V
    .locals 1

    invoke-super {p0, p1}, Landroid/widget/SeekBar;->onInitializeAccessibilityNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;)V

    iget-object v0, p0, Lcom/miui/superpower/statusbar/slider/ToggleSeekBar;->a:Ljava/lang/String;

    if-eqz v0, :cond_0

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->setText(Ljava/lang/CharSequence;)V

    :cond_0
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 2

    invoke-virtual {p0}, Landroid/view/View;->isEnabled()Z

    move-result v0

    const/4 v1, 0x1

    if-nez v0, :cond_0

    invoke-virtual {p0, v1}, Landroid/view/View;->setEnabled(Z)V

    :cond_0
    iget-object v0, p0, Lcom/miui/superpower/statusbar/slider/ToggleSeekBar;->b:Log/a;

    if-eqz v0, :cond_1

    invoke-virtual {v0, p1}, Log/a;->b(Landroid/view/MotionEvent;)V

    :cond_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-nez v0, :cond_2

    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    invoke-interface {v0, v1}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    :cond_2
    invoke-super {p0, p1}, Landroid/widget/SeekBar;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1
.end method

.method public setAccessibilityLabel(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/superpower/statusbar/slider/ToggleSeekBar;->a:Ljava/lang/String;

    return-void
.end method
