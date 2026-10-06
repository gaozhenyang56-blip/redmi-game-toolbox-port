.class Lmiuix/popupwidget/widget/DropDownPopupWindow$ContainerView;
.super Landroid/widget/FrameLayout;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmiuix/popupwidget/widget/DropDownPopupWindow;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ContainerView"
.end annotation


# instance fields
.field final synthetic this$0:Lmiuix/popupwidget/widget/DropDownPopupWindow;


# direct methods
.method public constructor <init>(Lmiuix/popupwidget/widget/DropDownPopupWindow;Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    iput-object p1, p0, Lmiuix/popupwidget/widget/DropDownPopupWindow$ContainerView;->this$0:Lmiuix/popupwidget/widget/DropDownPopupWindow;

    invoke-direct {p0, p2, p3, p4}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Landroid/view/ViewGroup;->setClipChildren(Z)V

    invoke-virtual {p0, p1}, Landroid/view/ViewGroup;->setClipToPadding(Z)V

    return-void
.end method


# virtual methods
.method protected onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 1

    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    iget-object v0, p0, Lmiuix/popupwidget/widget/DropDownPopupWindow$ContainerView;->this$0:Lmiuix/popupwidget/widget/DropDownPopupWindow;

    invoke-static {v0, p1}, Lmiuix/popupwidget/widget/DropDownPopupWindow;->access$800(Lmiuix/popupwidget/widget/DropDownPopupWindow;Landroid/content/res/Configuration;)V

    return-void
.end method

.method public onKeyPreIme(ILandroid/view/KeyEvent;)Z
    .locals 1

    const/4 v0, 0x4

    if-ne p1, v0, :cond_0

    invoke-virtual {p2}, Landroid/view/KeyEvent;->getAction()I

    move-result p1

    const/4 p2, 0x1

    if-ne p1, p2, :cond_0

    iget-object p1, p0, Lmiuix/popupwidget/widget/DropDownPopupWindow$ContainerView;->this$0:Lmiuix/popupwidget/widget/DropDownPopupWindow;

    invoke-virtual {p1}, Lmiuix/popupwidget/widget/DropDownPopupWindow;->dismiss()V

    return p2

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 2

    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    const/4 v1, 0x1

    if-nez v0, :cond_0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result p1

    if-ne p1, v1, :cond_0

    iget-object p1, p0, Lmiuix/popupwidget/widget/DropDownPopupWindow$ContainerView;->this$0:Lmiuix/popupwidget/widget/DropDownPopupWindow;

    invoke-virtual {p1}, Lmiuix/popupwidget/widget/DropDownPopupWindow;->dismiss()V

    :cond_0
    return v1
.end method
