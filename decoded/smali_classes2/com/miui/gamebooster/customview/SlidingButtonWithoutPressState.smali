.class public Lcom/miui/gamebooster/customview/SlidingButtonWithoutPressState;
.super Lmiuix/slidingwidget/widget/SlidingButton;
.source "SourceFile"


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lmiuix/slidingwidget/widget/SlidingButton;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method


# virtual methods
.method public setPressed(Z)V
    .locals 1

    invoke-virtual {p0}, Landroid/view/View;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-super {p0, p1}, Lmiuix/slidingwidget/widget/SlidingButton;->setPressed(Z)V

    :cond_0
    return-void
.end method
