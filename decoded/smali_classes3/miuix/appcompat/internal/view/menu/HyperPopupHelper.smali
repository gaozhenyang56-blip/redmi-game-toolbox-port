.class public Lmiuix/appcompat/internal/view/menu/HyperPopupHelper;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lmiuix/appcompat/widget/HyperPopupWindow$OnMenuItemClickListener;
.implements Landroid/view/View$OnKeyListener;
.implements Landroid/widget/PopupWindow$OnDismissListener;
.implements Lmiuix/appcompat/internal/view/menu/MenuPresenter;


# instance fields
.field private mAnchorView:Landroid/view/View;

.field private mContext:Landroid/content/Context;

.field private mFenceDecor:Landroid/view/View;

.field mForceShowIcon:Z

.field private mHyperMenuAdapter:Lmiuix/appcompat/view/menu/HyperMenuAdapter;

.field private mHyperPopup:Lmiuix/appcompat/widget/HyperPopupWindow;

.field private mMenu:Lmiuix/appcompat/internal/view/menu/MenuBuilder;

.field private mOverflowOnly:Z

.field private mPopupAnimationGravity:I

.field private mPopupHorizontalOffset:I

.field private mPopupMaxHeight:I

.field private mPopupVerticalOffset:I

.field private mPresenterCallback:Lmiuix/appcompat/internal/view/menu/MenuPresenter$Callback;

.field private mPrimaryCheckedMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private mSecondaryCheckedMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "[",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;Lmiuix/appcompat/internal/view/menu/MenuBuilder;)V
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-direct {p0, p1, p2, v0, v1}, Lmiuix/appcompat/internal/view/menu/HyperPopupHelper;-><init>(Landroid/content/Context;Lmiuix/appcompat/internal/view/menu/MenuBuilder;Landroid/view/View;Z)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lmiuix/appcompat/internal/view/menu/MenuBuilder;Landroid/view/View;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Lmiuix/appcompat/internal/view/menu/HyperPopupHelper;-><init>(Landroid/content/Context;Lmiuix/appcompat/internal/view/menu/MenuBuilder;Landroid/view/View;Z)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lmiuix/appcompat/internal/view/menu/MenuBuilder;Landroid/view/View;Landroid/view/View;Z)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lmiuix/appcompat/internal/view/menu/HyperPopupHelper;->mPopupHorizontalOffset:I

    const/4 v1, -0x1

    iput v1, p0, Lmiuix/appcompat/internal/view/menu/HyperPopupHelper;->mPopupAnimationGravity:I

    iput v0, p0, Lmiuix/appcompat/internal/view/menu/HyperPopupHelper;->mPopupMaxHeight:I

    iput-object p1, p0, Lmiuix/appcompat/internal/view/menu/HyperPopupHelper;->mContext:Landroid/content/Context;

    iput-object p2, p0, Lmiuix/appcompat/internal/view/menu/HyperPopupHelper;->mMenu:Lmiuix/appcompat/internal/view/menu/MenuBuilder;

    iput-boolean p5, p0, Lmiuix/appcompat/internal/view/menu/HyperPopupHelper;->mOverflowOnly:Z

    iput-object p3, p0, Lmiuix/appcompat/internal/view/menu/HyperPopupHelper;->mAnchorView:Landroid/view/View;

    iput-object p4, p0, Lmiuix/appcompat/internal/view/menu/HyperPopupHelper;->mFenceDecor:Landroid/view/View;

    invoke-virtual {p2, p0}, Lmiuix/appcompat/internal/view/menu/MenuBuilder;->addMenuPresenter(Lmiuix/appcompat/internal/view/menu/MenuPresenter;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lmiuix/appcompat/internal/view/menu/MenuBuilder;Landroid/view/View;Z)V
    .locals 6

    const/4 v4, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move v5, p4

    invoke-direct/range {v0 .. v5}, Lmiuix/appcompat/internal/view/menu/HyperPopupHelper;-><init>(Landroid/content/Context;Lmiuix/appcompat/internal/view/menu/MenuBuilder;Landroid/view/View;Landroid/view/View;Z)V

    return-void
.end method

.method public static synthetic a(Lmiuix/appcompat/internal/view/menu/HyperPopupHelper;)V
    .locals 0

    invoke-direct {p0}, Lmiuix/appcompat/internal/view/menu/HyperPopupHelper;->lambda$dismiss$0()V

    return-void
.end method

.method private synthetic lambda$dismiss$0()V
    .locals 0

    invoke-direct {p0}, Lmiuix/appcompat/internal/view/menu/HyperPopupHelper;->saveData()V

    return-void
.end method

.method private saveData()V
    .locals 2

    iget-object v0, p0, Lmiuix/appcompat/internal/view/menu/HyperPopupHelper;->mHyperMenuAdapter:Lmiuix/appcompat/view/menu/HyperMenuAdapter;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lmiuix/appcompat/internal/view/menu/HyperPopupHelper;->mPrimaryCheckedMap:Ljava/util/Map;

    invoke-virtual {v0, v1}, Lmiuix/appcompat/view/menu/HyperMenuAdapter;->copyPrimaryCheckedData(Ljava/util/Map;)V

    iget-object v0, p0, Lmiuix/appcompat/internal/view/menu/HyperPopupHelper;->mHyperMenuAdapter:Lmiuix/appcompat/view/menu/HyperMenuAdapter;

    iget-object v1, p0, Lmiuix/appcompat/internal/view/menu/HyperPopupHelper;->mSecondaryCheckedMap:Ljava/util/Map;

    invoke-virtual {v0, v1}, Lmiuix/appcompat/view/menu/HyperMenuAdapter;->copySecondaryCheckedData(Ljava/util/Map;)V

    :cond_0
    return-void
.end method


# virtual methods
.method public collapseItemActionView(Lmiuix/appcompat/internal/view/menu/MenuBuilder;Lmiuix/appcompat/internal/view/menu/MenuItemImpl;)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public dismiss(Z)V
    .locals 1

    invoke-virtual {p0}, Lmiuix/appcompat/internal/view/menu/HyperPopupHelper;->isShowing()Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lmiuix/appcompat/internal/view/menu/HyperPopupHelper;->mHyperPopup:Lmiuix/appcompat/widget/HyperPopupWindow;

    new-instance v0, Lmiuix/appcompat/internal/view/menu/a;

    invoke-direct {v0, p0}, Lmiuix/appcompat/internal/view/menu/a;-><init>(Lmiuix/appcompat/internal/view/menu/HyperPopupHelper;)V

    invoke-virtual {p1, v0}, Lmiuix/popupwidget/widget/PopupWindow;->setOnDismissListener(Landroid/widget/PopupWindow$OnDismissListener;)V

    iget-object p1, p0, Lmiuix/appcompat/internal/view/menu/HyperPopupHelper;->mHyperPopup:Lmiuix/appcompat/widget/HyperPopupWindow;

    invoke-virtual {p1}, Lmiuix/popupwidget/widget/PopupWindow;->dismiss()V

    :cond_0
    return-void
.end method

.method public expandItemActionView(Lmiuix/appcompat/internal/view/menu/MenuBuilder;Lmiuix/appcompat/internal/view/menu/MenuItemImpl;)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public flagActionItems()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getId()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getMenuView(Landroid/view/ViewGroup;)Lmiuix/appcompat/internal/view/menu/MenuView;
    .locals 1

    new-instance p1, Ljava/lang/UnsupportedOperationException;

    const-string v0, "MenuPopupHelpers manage their own views"

    invoke-direct {p1, v0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public initForMenu(Landroid/content/Context;Lmiuix/appcompat/internal/view/menu/MenuBuilder;)V
    .locals 0

    return-void
.end method

.method public isShowing()Z
    .locals 1

    iget-object v0, p0, Lmiuix/appcompat/internal/view/menu/HyperPopupHelper;->mHyperPopup:Lmiuix/appcompat/widget/HyperPopupWindow;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public onCloseMenu(Lmiuix/appcompat/internal/view/menu/MenuBuilder;Z)V
    .locals 1

    iget-object v0, p0, Lmiuix/appcompat/internal/view/menu/HyperPopupHelper;->mMenu:Lmiuix/appcompat/internal/view/menu/MenuBuilder;

    if-eq p1, v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lmiuix/appcompat/internal/view/menu/HyperPopupHelper;->dismiss(Z)V

    iget-object v0, p0, Lmiuix/appcompat/internal/view/menu/HyperPopupHelper;->mPresenterCallback:Lmiuix/appcompat/internal/view/menu/MenuPresenter$Callback;

    if-eqz v0, :cond_1

    invoke-interface {v0, p1, p2}, Lmiuix/appcompat/internal/view/menu/MenuPresenter$Callback;->onCloseMenu(Lmiuix/appcompat/internal/view/menu/MenuBuilder;Z)V

    :cond_1
    return-void
.end method

.method public onDismiss()V
    .locals 1

    invoke-direct {p0}, Lmiuix/appcompat/internal/view/menu/HyperPopupHelper;->saveData()V

    const/4 v0, 0x0

    iput-object v0, p0, Lmiuix/appcompat/internal/view/menu/HyperPopupHelper;->mHyperPopup:Lmiuix/appcompat/widget/HyperPopupWindow;

    iget-object v0, p0, Lmiuix/appcompat/internal/view/menu/HyperPopupHelper;->mMenu:Lmiuix/appcompat/internal/view/menu/MenuBuilder;

    invoke-virtual {v0}, Lmiuix/appcompat/internal/view/menu/MenuBuilder;->close()V

    return-void
.end method

.method public onKey(Landroid/view/View;ILandroid/view/KeyEvent;)Z
    .locals 1

    invoke-virtual {p3}, Landroid/view/KeyEvent;->getAction()I

    move-result p1

    const/4 p3, 0x0

    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    const/16 p1, 0x52

    if-ne p2, p1, :cond_0

    invoke-virtual {p0, p3}, Lmiuix/appcompat/internal/view/menu/HyperPopupHelper;->dismiss(Z)V

    return v0

    :cond_0
    return p3
.end method

.method public onMenuItemClick(Landroid/view/MenuItem;)V
    .locals 2

    iget-object v0, p0, Lmiuix/appcompat/internal/view/menu/HyperPopupHelper;->mMenu:Lmiuix/appcompat/internal/view/menu/MenuBuilder;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Lmiuix/appcompat/internal/view/menu/MenuBuilder;->performItemAction(Landroid/view/MenuItem;I)Z

    return-void
.end method

.method public onRestoreInstanceState(Landroid/os/Parcelable;)V
    .locals 0

    return-void
.end method

.method public onSaveInstanceState()Landroid/os/Parcelable;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public onSubMenuSelected(Lmiuix/appcompat/internal/view/menu/SubMenuBuilder;)Z
    .locals 0

    const/4 p1, 0x1

    return p1
.end method

.method public restoreHyperMenuPrimaryCheckedData(Ljava/util/Map;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Boolean;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lmiuix/appcompat/internal/view/menu/HyperPopupHelper;->mPrimaryCheckedMap:Ljava/util/Map;

    return-void
.end method

.method public restoreHyperMenuSecondaryCheckedData(Ljava/util/Map;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "[",
            "Ljava/lang/Boolean;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lmiuix/appcompat/internal/view/menu/HyperPopupHelper;->mSecondaryCheckedMap:Ljava/util/Map;

    return-void
.end method

.method public setAnchorView(Landroid/view/View;)V
    .locals 0

    iput-object p1, p0, Lmiuix/appcompat/internal/view/menu/HyperPopupHelper;->mAnchorView:Landroid/view/View;

    return-void
.end method

.method public setAnimationGravity(I)V
    .locals 0

    iput p1, p0, Lmiuix/appcompat/internal/view/menu/HyperPopupHelper;->mPopupAnimationGravity:I

    return-void
.end method

.method public setCallback(Lmiuix/appcompat/internal/view/menu/MenuPresenter$Callback;)V
    .locals 0

    iput-object p1, p0, Lmiuix/appcompat/internal/view/menu/HyperPopupHelper;->mPresenterCallback:Lmiuix/appcompat/internal/view/menu/MenuPresenter$Callback;

    return-void
.end method

.method public setFenceDecor(Landroid/view/View;)V
    .locals 0

    iput-object p1, p0, Lmiuix/appcompat/internal/view/menu/HyperPopupHelper;->mFenceDecor:Landroid/view/View;

    return-void
.end method

.method public setForceShowIcon(Z)V
    .locals 0

    iput-boolean p1, p0, Lmiuix/appcompat/internal/view/menu/HyperPopupHelper;->mForceShowIcon:Z

    return-void
.end method

.method public setPopupMaxHeight(I)V
    .locals 0

    iput p1, p0, Lmiuix/appcompat/internal/view/menu/HyperPopupHelper;->mPopupMaxHeight:I

    return-void
.end method

.method public setVerticalOffset(I)V
    .locals 0

    iput p1, p0, Lmiuix/appcompat/internal/view/menu/HyperPopupHelper;->mPopupVerticalOffset:I

    return-void
.end method

.method public show()V
    .locals 2

    invoke-virtual {p0}, Lmiuix/appcompat/internal/view/menu/HyperPopupHelper;->tryShow()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "MenuPopupHelper cannot be used without an anchor"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public tryShow()Z
    .locals 4

    new-instance v0, Lmiuix/appcompat/widget/HyperPopupWindow;

    iget-object v1, p0, Lmiuix/appcompat/internal/view/menu/HyperPopupHelper;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lmiuix/appcompat/internal/view/menu/HyperPopupHelper;->mFenceDecor:Landroid/view/View;

    invoke-direct {v0, v1, v2}, Lmiuix/appcompat/widget/HyperPopupWindow;-><init>(Landroid/content/Context;Landroid/view/View;)V

    iput-object v0, p0, Lmiuix/appcompat/internal/view/menu/HyperPopupHelper;->mHyperPopup:Lmiuix/appcompat/widget/HyperPopupWindow;

    const v1, 0x800055

    invoke-virtual {v0, v1}, Lmiuix/popupwidget/widget/PopupWindow;->setDropDownGravity(I)V

    iget-object v0, p0, Lmiuix/appcompat/internal/view/menu/HyperPopupHelper;->mHyperPopup:Lmiuix/appcompat/widget/HyperPopupWindow;

    invoke-virtual {v0, p0}, Lmiuix/popupwidget/widget/PopupWindow;->setOnDismissListener(Landroid/widget/PopupWindow$OnDismissListener;)V

    iget-object v0, p0, Lmiuix/appcompat/internal/view/menu/HyperPopupHelper;->mHyperPopup:Lmiuix/appcompat/widget/HyperPopupWindow;

    invoke-virtual {v0, p0}, Lmiuix/appcompat/widget/HyperPopupWindow;->setOnMenuItemClickListener(Lmiuix/appcompat/widget/HyperPopupWindow$OnMenuItemClickListener;)V

    new-instance v0, Lmiuix/appcompat/view/menu/HyperMenuAdapter;

    iget-object v1, p0, Lmiuix/appcompat/internal/view/menu/HyperPopupHelper;->mContext:Landroid/content/Context;

    iget-boolean v2, p0, Lmiuix/appcompat/internal/view/menu/HyperPopupHelper;->mOverflowOnly:Z

    const/4 v3, 0x0

    invoke-direct {v0, v1, v3, v2}, Lmiuix/appcompat/view/menu/HyperMenuAdapter;-><init>(Landroid/content/Context;Lmiuix/appcompat/internal/view/menu/MenuBuilder;Z)V

    iput-object v0, p0, Lmiuix/appcompat/internal/view/menu/HyperPopupHelper;->mHyperMenuAdapter:Lmiuix/appcompat/view/menu/HyperMenuAdapter;

    iget-object v1, p0, Lmiuix/appcompat/internal/view/menu/HyperPopupHelper;->mMenu:Lmiuix/appcompat/internal/view/menu/MenuBuilder;

    invoke-virtual {v1}, Lmiuix/appcompat/internal/view/menu/MenuBuilder;->getOptionalIconsVisible()Z

    move-result v1

    invoke-virtual {v0, v1}, Lmiuix/appcompat/view/menu/HyperBaseAdapter;->setOptionalIconsVisible(Z)V

    iget-object v0, p0, Lmiuix/appcompat/internal/view/menu/HyperPopupHelper;->mPrimaryCheckedMap:Ljava/util/Map;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lmiuix/appcompat/internal/view/menu/HyperPopupHelper;->mHyperMenuAdapter:Lmiuix/appcompat/view/menu/HyperMenuAdapter;

    invoke-virtual {v1, v0}, Lmiuix/appcompat/view/menu/HyperMenuAdapter;->preCheckPrimaryItem(Ljava/util/Map;)V

    :cond_0
    iget-object v0, p0, Lmiuix/appcompat/internal/view/menu/HyperPopupHelper;->mSecondaryCheckedMap:Ljava/util/Map;

    if-eqz v0, :cond_1

    iget-object v1, p0, Lmiuix/appcompat/internal/view/menu/HyperPopupHelper;->mHyperMenuAdapter:Lmiuix/appcompat/view/menu/HyperMenuAdapter;

    invoke-virtual {v1, v0}, Lmiuix/appcompat/view/menu/HyperMenuAdapter;->preCheckSecondaryItem(Ljava/util/Map;)V

    :cond_1
    iget-object v0, p0, Lmiuix/appcompat/internal/view/menu/HyperPopupHelper;->mHyperMenuAdapter:Lmiuix/appcompat/view/menu/HyperMenuAdapter;

    iget-object v1, p0, Lmiuix/appcompat/internal/view/menu/HyperPopupHelper;->mMenu:Lmiuix/appcompat/internal/view/menu/MenuBuilder;

    invoke-virtual {v0, v1}, Lmiuix/appcompat/view/menu/HyperMenuAdapter;->update(Lmiuix/appcompat/internal/view/menu/MenuBuilder;)V

    iget-object v0, p0, Lmiuix/appcompat/internal/view/menu/HyperPopupHelper;->mHyperPopup:Lmiuix/appcompat/widget/HyperPopupWindow;

    iget-object v1, p0, Lmiuix/appcompat/internal/view/menu/HyperPopupHelper;->mHyperMenuAdapter:Lmiuix/appcompat/view/menu/HyperMenuAdapter;

    invoke-virtual {v0, v1}, Lmiuix/appcompat/widget/HyperPopupWindow;->setAdapter(Landroid/widget/ListAdapter;)V

    iget-object v0, p0, Lmiuix/appcompat/internal/view/menu/HyperPopupHelper;->mHyperPopup:Lmiuix/appcompat/widget/HyperPopupWindow;

    iget v1, p0, Lmiuix/appcompat/internal/view/menu/HyperPopupHelper;->mPopupHorizontalOffset:I

    invoke-virtual {v0, v1}, Lmiuix/popupwidget/widget/PopupWindow;->setHorizontalOffset(I)V

    iget-object v0, p0, Lmiuix/appcompat/internal/view/menu/HyperPopupHelper;->mHyperPopup:Lmiuix/appcompat/widget/HyperPopupWindow;

    iget v1, p0, Lmiuix/appcompat/internal/view/menu/HyperPopupHelper;->mPopupVerticalOffset:I

    invoke-virtual {v0, v1}, Lmiuix/popupwidget/widget/PopupWindow;->setVerticalOffset(I)V

    iget v0, p0, Lmiuix/appcompat/internal/view/menu/HyperPopupHelper;->mPopupMaxHeight:I

    if-lez v0, :cond_2

    iget-object v1, p0, Lmiuix/appcompat/internal/view/menu/HyperPopupHelper;->mHyperPopup:Lmiuix/appcompat/widget/HyperPopupWindow;

    invoke-virtual {v1, v0}, Lmiuix/popupwidget/widget/PopupWindow;->setMaxAllowedHeight(I)V

    :cond_2
    iget-object v0, p0, Lmiuix/appcompat/internal/view/menu/HyperPopupHelper;->mHyperPopup:Lmiuix/appcompat/widget/HyperPopupWindow;

    iget-object v1, p0, Lmiuix/appcompat/internal/view/menu/HyperPopupHelper;->mAnchorView:Landroid/view/View;

    invoke-virtual {v0, v1}, Lmiuix/popupwidget/widget/PopupWindow;->prepareShow(Landroid/view/View;)Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lmiuix/appcompat/internal/view/menu/HyperPopupHelper;->mHyperPopup:Lmiuix/appcompat/widget/HyperPopupWindow;

    iget-object v1, p0, Lmiuix/appcompat/internal/view/menu/HyperPopupHelper;->mAnchorView:Landroid/view/View;

    invoke-virtual {v0, v1, v3}, Lmiuix/popupwidget/widget/PopupWindow;->show(Landroid/view/View;Landroid/view/ViewGroup;)V

    iget-object v0, p0, Lmiuix/appcompat/internal/view/menu/HyperPopupHelper;->mHyperPopup:Lmiuix/appcompat/widget/HyperPopupWindow;

    invoke-virtual {v0}, Lmiuix/popupwidget/widget/PopupWindow;->getListView()Landroid/widget/ListView;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    :cond_3
    const/4 v0, 0x1

    return v0
.end method

.method public updateMenuView(Z)V
    .locals 0

    iget-object p1, p0, Lmiuix/appcompat/internal/view/menu/HyperPopupHelper;->mHyperMenuAdapter:Lmiuix/appcompat/view/menu/HyperMenuAdapter;

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    :cond_0
    return-void
.end method
