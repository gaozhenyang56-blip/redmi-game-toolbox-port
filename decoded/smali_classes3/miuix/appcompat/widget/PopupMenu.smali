.class public Lmiuix/appcompat/widget/PopupMenu;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lmiuix/appcompat/widget/PopupMenu$OnDismissListener;,
        Lmiuix/appcompat/widget/PopupMenu$OnMenuItemClickListener;
    }
.end annotation


# instance fields
.field private final mAnchor:Landroid/view/View;

.field private final mContext:Landroid/content/Context;

.field private final mMenu:Lmiuix/appcompat/internal/view/menu/MenuBuilder;

.field private mMenuItemClickListener:Lmiuix/appcompat/widget/PopupMenu$OnMenuItemClickListener;

.field private mOnDismissListener:Lmiuix/appcompat/widget/PopupMenu$OnDismissListener;

.field private mPopupMenu:Lmiuix/internal/widget/l;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/view/View;)V
    .locals 1
    .param p1    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroid/view/View;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lmiuix/appcompat/widget/PopupMenu;-><init>(Landroid/content/Context;Landroid/view/View;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/view/View;I)V
    .locals 3
    .param p1    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroid/view/View;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-nez p3, :cond_0

    const/4 p3, 0x0

    sget-object v0, Lmiuix/appcompat/R$styleable;->miuiPopupMenu:[I

    sget v1, Lmiuix/appcompat/R$attr;->miuiPopupMenuStyle:I

    const/4 v2, 0x0

    invoke-virtual {p1, p3, v0, v1, v2}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object p3

    :try_start_0
    sget v0, Lmiuix/appcompat/R$styleable;->miuiPopupMenu_miuiPopupTheme:I

    invoke-virtual {p3, v0, v2}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {p3}, Landroid/content/res/TypedArray;->recycle()V

    move p3, v0

    goto :goto_0

    :catchall_0
    move-exception p1

    invoke-virtual {p3}, Landroid/content/res/TypedArray;->recycle()V

    throw p1

    :cond_0
    :goto_0
    if-eqz p3, :cond_1

    new-instance v0, Landroid/view/ContextThemeWrapper;

    invoke-direct {v0, p1, p3}, Landroid/view/ContextThemeWrapper;-><init>(Landroid/content/Context;I)V

    iput-object v0, p0, Lmiuix/appcompat/widget/PopupMenu;->mContext:Landroid/content/Context;

    goto :goto_1

    :cond_1
    iput-object p1, p0, Lmiuix/appcompat/widget/PopupMenu;->mContext:Landroid/content/Context;

    :goto_1
    iput-object p2, p0, Lmiuix/appcompat/widget/PopupMenu;->mAnchor:Landroid/view/View;

    new-instance p1, Lmiuix/appcompat/internal/view/menu/MenuBuilder;

    iget-object p2, p0, Lmiuix/appcompat/widget/PopupMenu;->mContext:Landroid/content/Context;

    invoke-direct {p1, p2}, Lmiuix/appcompat/internal/view/menu/MenuBuilder;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, Lmiuix/appcompat/widget/PopupMenu;->mMenu:Lmiuix/appcompat/internal/view/menu/MenuBuilder;

    new-instance p1, Lmiuix/appcompat/widget/PopupMenu$1;

    iget-object p2, p0, Lmiuix/appcompat/widget/PopupMenu;->mContext:Landroid/content/Context;

    invoke-direct {p1, p0, p2}, Lmiuix/appcompat/widget/PopupMenu$1;-><init>(Lmiuix/appcompat/widget/PopupMenu;Landroid/content/Context;)V

    iput-object p1, p0, Lmiuix/appcompat/widget/PopupMenu;->mPopupMenu:Lmiuix/internal/widget/l;

    return-void
.end method

.method static synthetic access$000(Lmiuix/appcompat/widget/PopupMenu;)Lmiuix/appcompat/widget/PopupMenu$OnMenuItemClickListener;
    .locals 0

    iget-object p0, p0, Lmiuix/appcompat/widget/PopupMenu;->mMenuItemClickListener:Lmiuix/appcompat/widget/PopupMenu$OnMenuItemClickListener;

    return-object p0
.end method

.method static synthetic access$100(Lmiuix/appcompat/widget/PopupMenu;)Lmiuix/appcompat/widget/PopupMenu$OnDismissListener;
    .locals 0

    iget-object p0, p0, Lmiuix/appcompat/widget/PopupMenu;->mOnDismissListener:Lmiuix/appcompat/widget/PopupMenu$OnDismissListener;

    return-object p0
.end method

.method private getMenuInflater()Landroid/view/MenuInflater;
    .locals 2

    new-instance v0, Landroidx/appcompat/view/g;

    iget-object v1, p0, Lmiuix/appcompat/widget/PopupMenu;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroidx/appcompat/view/g;-><init>(Landroid/content/Context;)V

    return-object v0
.end method


# virtual methods
.method public dismiss()V
    .locals 1

    iget-object v0, p0, Lmiuix/appcompat/widget/PopupMenu;->mPopupMenu:Lmiuix/internal/widget/l;

    invoke-virtual {v0}, Lmiuix/popupwidget/widget/PopupWindow;->dismiss()V

    return-void
.end method

.method public getDimAmount()F
    .locals 1

    iget-object v0, p0, Lmiuix/appcompat/widget/PopupMenu;->mPopupMenu:Lmiuix/internal/widget/l;

    invoke-virtual {v0}, Lmiuix/popupwidget/widget/PopupWindow;->getDimAmount()F

    move-result v0

    return v0
.end method

.method public getMenu()Landroid/view/Menu;
    .locals 1

    iget-object v0, p0, Lmiuix/appcompat/widget/PopupMenu;->mMenu:Lmiuix/appcompat/internal/view/menu/MenuBuilder;

    return-object v0
.end method

.method public getWindowManagerFlags()I
    .locals 1

    iget-object v0, p0, Lmiuix/appcompat/widget/PopupMenu;->mPopupMenu:Lmiuix/internal/widget/l;

    invoke-virtual {v0}, Lmiuix/popupwidget/widget/PopupWindow;->getWindowManagerFlags()I

    move-result v0

    return v0
.end method

.method public inflate(I)V
    .locals 2
    .param p1    # I
        .annotation build Landroidx/annotation/MenuRes;
        .end annotation
    .end param

    invoke-direct {p0}, Lmiuix/appcompat/widget/PopupMenu;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v0

    iget-object v1, p0, Lmiuix/appcompat/widget/PopupMenu;->mMenu:Lmiuix/appcompat/internal/view/menu/MenuBuilder;

    invoke-virtual {v0, p1, v1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    return-void
.end method

.method public isShowing()Z
    .locals 1

    iget-object v0, p0, Lmiuix/appcompat/widget/PopupMenu;->mPopupMenu:Lmiuix/internal/widget/l;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return v0

    :cond_0
    invoke-virtual {v0}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result v0

    return v0
.end method

.method public setDimAmount(F)V
    .locals 1

    iget-object v0, p0, Lmiuix/appcompat/widget/PopupMenu;->mPopupMenu:Lmiuix/internal/widget/l;

    invoke-virtual {v0, p1}, Lmiuix/popupwidget/widget/PopupWindow;->setDimAmount(F)V

    return-void
.end method

.method public setOnDismissListener(Lmiuix/appcompat/widget/PopupMenu$OnDismissListener;)V
    .locals 0
    .param p1    # Lmiuix/appcompat/widget/PopupMenu$OnDismissListener;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    iput-object p1, p0, Lmiuix/appcompat/widget/PopupMenu;->mOnDismissListener:Lmiuix/appcompat/widget/PopupMenu$OnDismissListener;

    return-void
.end method

.method public setOnMenuItemClickListener(Lmiuix/appcompat/widget/PopupMenu$OnMenuItemClickListener;)V
    .locals 0
    .param p1    # Lmiuix/appcompat/widget/PopupMenu$OnMenuItemClickListener;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    iput-object p1, p0, Lmiuix/appcompat/widget/PopupMenu;->mMenuItemClickListener:Lmiuix/appcompat/widget/PopupMenu$OnMenuItemClickListener;

    return-void
.end method

.method public setStrategy(Lmiuix/popupwidget/internal/strategy/IPopupWindowStrategy;)V
    .locals 1

    iget-object v0, p0, Lmiuix/appcompat/widget/PopupMenu;->mPopupMenu:Lmiuix/internal/widget/l;

    invoke-virtual {v0, p1}, Lmiuix/popupwidget/widget/PopupWindow;->setPopupWindowStrategy(Lmiuix/popupwidget/internal/strategy/IPopupWindowStrategy;)V

    return-void
.end method

.method public setWindowManagerFlags(I)V
    .locals 1

    iget-object v0, p0, Lmiuix/appcompat/widget/PopupMenu;->mPopupMenu:Lmiuix/internal/widget/l;

    invoke-virtual {v0, p1}, Lmiuix/popupwidget/widget/PopupWindow;->setWindowManagerFlags(I)V

    return-void
.end method

.method public show()V
    .locals 2

    iget-object v0, p0, Lmiuix/appcompat/widget/PopupMenu;->mPopupMenu:Lmiuix/internal/widget/l;

    iget-object v1, p0, Lmiuix/appcompat/widget/PopupMenu;->mMenu:Lmiuix/appcompat/internal/view/menu/MenuBuilder;

    invoke-virtual {v0, v1}, Lmiuix/internal/widget/l;->update(Landroid/view/Menu;)V

    iget-object v0, p0, Lmiuix/appcompat/widget/PopupMenu;->mPopupMenu:Lmiuix/internal/widget/l;

    iget-object v1, p0, Lmiuix/appcompat/widget/PopupMenu;->mAnchor:Landroid/view/View;

    invoke-virtual {v0, v1}, Lmiuix/internal/widget/l;->showAsDropDown(Landroid/view/View;)V

    return-void
.end method

.method public showAsDropDown(II)V
    .locals 2

    iget-object v0, p0, Lmiuix/appcompat/widget/PopupMenu;->mPopupMenu:Lmiuix/internal/widget/l;

    iget-object v1, p0, Lmiuix/appcompat/widget/PopupMenu;->mMenu:Lmiuix/appcompat/internal/view/menu/MenuBuilder;

    invoke-virtual {v0, v1}, Lmiuix/internal/widget/l;->update(Landroid/view/Menu;)V

    iget-object v0, p0, Lmiuix/appcompat/widget/PopupMenu;->mPopupMenu:Lmiuix/internal/widget/l;

    invoke-virtual {v0, p1}, Lmiuix/popupwidget/widget/PopupWindow;->setHorizontalOffset(I)V

    iget-object p1, p0, Lmiuix/appcompat/widget/PopupMenu;->mPopupMenu:Lmiuix/internal/widget/l;

    invoke-virtual {p1, p2}, Lmiuix/popupwidget/widget/PopupWindow;->setVerticalOffset(I)V

    iget-object p1, p0, Lmiuix/appcompat/widget/PopupMenu;->mPopupMenu:Lmiuix/internal/widget/l;

    iget-object p2, p0, Lmiuix/appcompat/widget/PopupMenu;->mAnchor:Landroid/view/View;

    invoke-virtual {p1, p2}, Lmiuix/internal/widget/l;->showAsDropDown(Landroid/view/View;)V

    return-void
.end method
