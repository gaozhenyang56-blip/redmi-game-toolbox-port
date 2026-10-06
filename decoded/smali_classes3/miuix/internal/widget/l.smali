.class public Lmiuix/internal/widget/l;
.super Lmiuix/popupwidget/widget/PopupWindow;
.source "SourceFile"


# instance fields
.field private mAdapter:Lmiuix/internal/widget/h;

.field private mLastAnchor:Landroid/view/View;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0, p1}, Lmiuix/popupwidget/widget/PopupWindow;-><init>(Landroid/content/Context;)V

    new-instance v0, Lmiuix/internal/widget/h;

    invoke-direct {v0, p1}, Lmiuix/internal/widget/h;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lmiuix/internal/widget/l;->mAdapter:Lmiuix/internal/widget/h;

    invoke-virtual {p0, v0}, Lmiuix/popupwidget/widget/PopupWindow;->setAdapter(Landroid/widget/ListAdapter;)V

    new-instance p1, Lmiuix/internal/widget/i;

    invoke-direct {p1, p0}, Lmiuix/internal/widget/i;-><init>(Lmiuix/internal/widget/l;)V

    invoke-virtual {p0, p1}, Lmiuix/popupwidget/widget/PopupWindow;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    new-instance p1, Lmiuix/internal/widget/j;

    invoke-direct {p1, p0}, Lmiuix/internal/widget/j;-><init>(Lmiuix/internal/widget/l;)V

    invoke-virtual {p0, p1}, Lmiuix/popupwidget/widget/PopupWindow;->setOnDismissListener(Landroid/widget/PopupWindow$OnDismissListener;)V

    return-void
.end method

.method public static synthetic d(Lmiuix/internal/widget/l;Landroid/view/SubMenu;)V
    .locals 0

    invoke-direct {p0, p1}, Lmiuix/internal/widget/l;->lambda$new$0(Landroid/view/SubMenu;)V

    return-void
.end method

.method public static synthetic e(Lmiuix/internal/widget/l;Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 0

    invoke-direct/range {p0 .. p5}, Lmiuix/internal/widget/l;->lambda$new$1(Landroid/widget/AdapterView;Landroid/view/View;IJ)V

    return-void
.end method

.method private synthetic lambda$new$0(Landroid/view/SubMenu;)V
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lmiuix/popupwidget/widget/PopupWindow;->setOnDismissListener(Landroid/widget/PopupWindow$OnDismissListener;)V

    invoke-virtual {p0, p1}, Lmiuix/internal/widget/l;->update(Landroid/view/Menu;)V

    iget-object p1, p0, Lmiuix/internal/widget/l;->mLastAnchor:Landroid/view/View;

    invoke-virtual {p0, p1}, Lmiuix/internal/widget/l;->showAsDropDown(Landroid/view/View;)V

    return-void
.end method

.method private synthetic lambda$new$1(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 0

    iget-object p1, p0, Lmiuix/internal/widget/l;->mAdapter:Lmiuix/internal/widget/h;

    invoke-virtual {p1, p3}, Lmiuix/internal/widget/h;->getItem(I)Landroid/view/MenuItem;

    move-result-object p1

    invoke-interface {p1}, Landroid/view/MenuItem;->hasSubMenu()Z

    move-result p2

    if-eqz p2, :cond_0

    invoke-interface {p1}, Landroid/view/MenuItem;->getSubMenu()Landroid/view/SubMenu;

    move-result-object p1

    new-instance p2, Lmiuix/internal/widget/k;

    invoke-direct {p2, p0, p1}, Lmiuix/internal/widget/k;-><init>(Lmiuix/internal/widget/l;Landroid/view/SubMenu;)V

    invoke-virtual {p0, p2}, Lmiuix/popupwidget/widget/PopupWindow;->setOnDismissListener(Landroid/widget/PopupWindow$OnDismissListener;)V

    goto :goto_0

    :cond_0
    invoke-virtual {p0, p1}, Lmiuix/internal/widget/l;->onMenuItemClick(Landroid/view/MenuItem;)V

    :goto_0
    invoke-virtual {p0}, Lmiuix/popupwidget/widget/PopupWindow;->dismiss()V

    return-void
.end method


# virtual methods
.method protected onDismiss()V
    .locals 0

    return-void
.end method

.method protected onMenuItemClick(Landroid/view/MenuItem;)V
    .locals 0

    return-void
.end method

.method public show(Landroid/view/View;Landroid/view/ViewGroup;)V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    invoke-virtual {p0, p1}, Lmiuix/internal/widget/l;->showAsDropDown(Landroid/view/View;)V

    return-void
.end method

.method public showAsDropDown(Landroid/view/View;)V
    .locals 1
    .param p1    # Landroid/view/View;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    iput-object p1, p0, Lmiuix/internal/widget/l;->mLastAnchor:Landroid/view/View;

    invoke-virtual {p0, p1}, Lmiuix/popupwidget/widget/PopupWindow;->prepareShow(Landroid/view/View;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-super {p0, p1}, Lmiuix/popupwidget/widget/PopupWindow;->showAsDropDown(Landroid/view/View;)V

    :cond_0
    return-void
.end method

.method public update(Landroid/view/Menu;)V
    .locals 1

    iget-object v0, p0, Lmiuix/internal/widget/l;->mAdapter:Lmiuix/internal/widget/h;

    invoke-virtual {v0, p1}, Lmiuix/internal/widget/h;->update(Landroid/view/Menu;)V

    return-void
.end method
