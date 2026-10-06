.class public Lmiuix/appcompat/widget/HyperPopupMenu;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private mAdapter:Lmiuix/appcompat/view/menu/HyperMenuAdapter;

.field private final mAnchor:Landroid/view/View;

.field private final mContext:Landroid/content/Context;

.field private mHyperPopupWindow:Lmiuix/appcompat/widget/HyperPopupWindow;

.field private final mMenu:Lmiuix/appcompat/internal/view/menu/MenuBuilder;

.field private mPrimaryPreCheckedMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private mSecondaryPreCheckedMap:Ljava/util/Map;
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

    invoke-direct {p0, p1, p2, v0}, Lmiuix/appcompat/widget/HyperPopupMenu;-><init>(Landroid/content/Context;Landroid/view/View;I)V

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

    iput-object v0, p0, Lmiuix/appcompat/widget/HyperPopupMenu;->mContext:Landroid/content/Context;

    goto :goto_1

    :cond_1
    iput-object p1, p0, Lmiuix/appcompat/widget/HyperPopupMenu;->mContext:Landroid/content/Context;

    :goto_1
    iput-object p2, p0, Lmiuix/appcompat/widget/HyperPopupMenu;->mAnchor:Landroid/view/View;

    new-instance p2, Lmiuix/appcompat/internal/view/menu/MenuBuilder;

    iget-object p3, p0, Lmiuix/appcompat/widget/HyperPopupMenu;->mContext:Landroid/content/Context;

    invoke-direct {p2, p3}, Lmiuix/appcompat/internal/view/menu/MenuBuilder;-><init>(Landroid/content/Context;)V

    iput-object p2, p0, Lmiuix/appcompat/widget/HyperPopupMenu;->mMenu:Lmiuix/appcompat/internal/view/menu/MenuBuilder;

    new-instance p2, Lmiuix/appcompat/widget/HyperPopupWindow;

    invoke-direct {p2, p1}, Lmiuix/appcompat/widget/HyperPopupWindow;-><init>(Landroid/content/Context;)V

    iput-object p2, p0, Lmiuix/appcompat/widget/HyperPopupMenu;->mHyperPopupWindow:Lmiuix/appcompat/widget/HyperPopupWindow;

    return-void
.end method

.method private getDefaultMenuInflater()Landroid/view/MenuInflater;
    .locals 2

    new-instance v0, Landroidx/appcompat/view/g;

    iget-object v1, p0, Lmiuix/appcompat/widget/HyperPopupMenu;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroidx/appcompat/view/g;-><init>(Landroid/content/Context;)V

    return-object v0
.end method

.method private getHyperMenuInflater()Landroid/view/MenuInflater;
    .locals 2

    new-instance v0, Lmiuix/appcompat/view/menu/HyperMenuInflater;

    iget-object v1, p0, Lmiuix/appcompat/widget/HyperPopupMenu;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lmiuix/appcompat/view/menu/HyperMenuInflater;-><init>(Landroid/content/Context;)V

    return-object v0
.end method


# virtual methods
.method public getMenu()Landroid/view/Menu;
    .locals 1

    iget-object v0, p0, Lmiuix/appcompat/widget/HyperPopupMenu;->mMenu:Lmiuix/appcompat/internal/view/menu/MenuBuilder;

    return-object v0
.end method

.method public inflate(I)V
    .locals 2
    .param p1    # I
        .annotation build Landroidx/annotation/MenuRes;
        .end annotation
    .end param

    invoke-direct {p0}, Lmiuix/appcompat/widget/HyperPopupMenu;->getDefaultMenuInflater()Landroid/view/MenuInflater;

    move-result-object v0

    iget-object v1, p0, Lmiuix/appcompat/widget/HyperPopupMenu;->mMenu:Lmiuix/appcompat/internal/view/menu/MenuBuilder;

    invoke-virtual {v0, p1, v1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    new-instance p1, Lmiuix/appcompat/view/menu/HyperMenuAdapter;

    iget-object v0, p0, Lmiuix/appcompat/widget/HyperPopupMenu;->mContext:Landroid/content/Context;

    invoke-direct {p1, v0}, Lmiuix/appcompat/view/menu/HyperMenuAdapter;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, Lmiuix/appcompat/widget/HyperPopupMenu;->mAdapter:Lmiuix/appcompat/view/menu/HyperMenuAdapter;

    iget-object v0, p0, Lmiuix/appcompat/widget/HyperPopupMenu;->mPrimaryPreCheckedMap:Ljava/util/Map;

    invoke-virtual {p1, v0}, Lmiuix/appcompat/view/menu/HyperMenuAdapter;->preCheckPrimaryItem(Ljava/util/Map;)V

    iget-object p1, p0, Lmiuix/appcompat/widget/HyperPopupMenu;->mAdapter:Lmiuix/appcompat/view/menu/HyperMenuAdapter;

    iget-object v0, p0, Lmiuix/appcompat/widget/HyperPopupMenu;->mSecondaryPreCheckedMap:Ljava/util/Map;

    invoke-virtual {p1, v0}, Lmiuix/appcompat/view/menu/HyperMenuAdapter;->preCheckSecondaryItem(Ljava/util/Map;)V

    iget-object p1, p0, Lmiuix/appcompat/widget/HyperPopupMenu;->mAdapter:Lmiuix/appcompat/view/menu/HyperMenuAdapter;

    iget-object v0, p0, Lmiuix/appcompat/widget/HyperPopupMenu;->mMenu:Lmiuix/appcompat/internal/view/menu/MenuBuilder;

    invoke-virtual {p1, v0}, Lmiuix/appcompat/view/menu/HyperMenuAdapter;->update(Lmiuix/appcompat/internal/view/menu/MenuBuilder;)V

    return-void
.end method

.method public inflate(IZ)V
    .locals 2
    .param p1    # I
        .annotation build Landroidx/annotation/MenuRes;
        .end annotation
    .end param

    invoke-direct {p0}, Lmiuix/appcompat/widget/HyperPopupMenu;->getHyperMenuInflater()Landroid/view/MenuInflater;

    move-result-object v0

    iget-object v1, p0, Lmiuix/appcompat/widget/HyperPopupMenu;->mMenu:Lmiuix/appcompat/internal/view/menu/MenuBuilder;

    invoke-virtual {v0, p1, v1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    new-instance p1, Lmiuix/appcompat/view/menu/HyperMenuAdapter;

    iget-object v0, p0, Lmiuix/appcompat/widget/HyperPopupMenu;->mContext:Landroid/content/Context;

    invoke-direct {p1, v0}, Lmiuix/appcompat/view/menu/HyperMenuAdapter;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, Lmiuix/appcompat/widget/HyperPopupMenu;->mAdapter:Lmiuix/appcompat/view/menu/HyperMenuAdapter;

    iget-object v0, p0, Lmiuix/appcompat/widget/HyperPopupMenu;->mPrimaryPreCheckedMap:Ljava/util/Map;

    invoke-virtual {p1, v0}, Lmiuix/appcompat/view/menu/HyperMenuAdapter;->preCheckPrimaryItem(Ljava/util/Map;)V

    iget-object p1, p0, Lmiuix/appcompat/widget/HyperPopupMenu;->mAdapter:Lmiuix/appcompat/view/menu/HyperMenuAdapter;

    iget-object v0, p0, Lmiuix/appcompat/widget/HyperPopupMenu;->mSecondaryPreCheckedMap:Ljava/util/Map;

    invoke-virtual {p1, v0}, Lmiuix/appcompat/view/menu/HyperMenuAdapter;->preCheckSecondaryItem(Ljava/util/Map;)V

    iget-object p1, p0, Lmiuix/appcompat/widget/HyperPopupMenu;->mAdapter:Lmiuix/appcompat/view/menu/HyperMenuAdapter;

    iget-object v0, p0, Lmiuix/appcompat/widget/HyperPopupMenu;->mMenu:Lmiuix/appcompat/internal/view/menu/MenuBuilder;

    invoke-virtual {p1, v0, p2}, Lmiuix/appcompat/view/menu/HyperMenuAdapter;->update(Lmiuix/appcompat/internal/view/menu/MenuBuilder;Z)V

    return-void
.end method

.method public notifyDataChanged()Z
    .locals 2

    iget-object v0, p0, Lmiuix/appcompat/widget/HyperPopupMenu;->mAdapter:Lmiuix/appcompat/view/menu/HyperMenuAdapter;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lmiuix/appcompat/widget/HyperPopupMenu;->mMenu:Lmiuix/appcompat/internal/view/menu/MenuBuilder;

    if-eqz v1, :cond_0

    invoke-virtual {v0, v1}, Lmiuix/appcompat/view/menu/HyperMenuAdapter;->update(Lmiuix/appcompat/internal/view/menu/MenuBuilder;)V

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public preCheckPrimaryItem(Ljava/util/Map;)V
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

    iput-object p1, p0, Lmiuix/appcompat/widget/HyperPopupMenu;->mPrimaryPreCheckedMap:Ljava/util/Map;

    return-void
.end method

.method public preCheckSecondaryItem(Ljava/util/Map;)V
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

    iput-object p1, p0, Lmiuix/appcompat/widget/HyperPopupMenu;->mSecondaryPreCheckedMap:Ljava/util/Map;

    return-void
.end method

.method public savePrimaryCheckedMap(Ljava/util/Map;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Boolean;",
            ">;)V"
        }
    .end annotation

    iget-object v0, p0, Lmiuix/appcompat/widget/HyperPopupMenu;->mAdapter:Lmiuix/appcompat/view/menu/HyperMenuAdapter;

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {v0, p1}, Lmiuix/appcompat/view/menu/HyperMenuAdapter;->copyPrimaryCheckedData(Ljava/util/Map;)V

    return-void
.end method

.method public saveSecondaryCheckedMap(Ljava/util/Map;)V
    .locals 1
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

    iget-object v0, p0, Lmiuix/appcompat/widget/HyperPopupMenu;->mAdapter:Lmiuix/appcompat/view/menu/HyperMenuAdapter;

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {v0, p1}, Lmiuix/appcompat/view/menu/HyperMenuAdapter;->copySecondaryCheckedData(Ljava/util/Map;)V

    return-void
.end method

.method public setOnDismissListener(Landroid/widget/PopupWindow$OnDismissListener;)V
    .locals 1
    .param p1    # Landroid/widget/PopupWindow$OnDismissListener;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    iget-object v0, p0, Lmiuix/appcompat/widget/HyperPopupMenu;->mHyperPopupWindow:Lmiuix/appcompat/widget/HyperPopupWindow;

    invoke-virtual {v0, p1}, Lmiuix/popupwidget/widget/PopupWindow;->setOnDismissListener(Landroid/widget/PopupWindow$OnDismissListener;)V

    return-void
.end method

.method public setOnMenuItemClickListener(Lmiuix/appcompat/widget/HyperPopupWindow$OnMenuItemClickListener;)V
    .locals 1
    .param p1    # Lmiuix/appcompat/widget/HyperPopupWindow$OnMenuItemClickListener;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    iget-object v0, p0, Lmiuix/appcompat/widget/HyperPopupMenu;->mHyperPopupWindow:Lmiuix/appcompat/widget/HyperPopupWindow;

    invoke-virtual {v0, p1}, Lmiuix/appcompat/widget/HyperPopupWindow;->setOnMenuItemClickListener(Lmiuix/appcompat/widget/HyperPopupWindow$OnMenuItemClickListener;)V

    return-void
.end method

.method public show()V
    .locals 2

    iget-object v0, p0, Lmiuix/appcompat/widget/HyperPopupMenu;->mHyperPopupWindow:Lmiuix/appcompat/widget/HyperPopupWindow;

    iget-object v1, p0, Lmiuix/appcompat/widget/HyperPopupMenu;->mAdapter:Lmiuix/appcompat/view/menu/HyperMenuAdapter;

    invoke-virtual {v0, v1}, Lmiuix/appcompat/widget/HyperPopupWindow;->setAdapter(Landroid/widget/ListAdapter;)V

    iget-object v0, p0, Lmiuix/appcompat/widget/HyperPopupMenu;->mHyperPopupWindow:Lmiuix/appcompat/widget/HyperPopupWindow;

    iget-object v1, p0, Lmiuix/appcompat/widget/HyperPopupMenu;->mAnchor:Landroid/view/View;

    invoke-virtual {v0, v1}, Lmiuix/appcompat/widget/HyperPopupWindow;->show(Landroid/view/View;)V

    return-void
.end method
