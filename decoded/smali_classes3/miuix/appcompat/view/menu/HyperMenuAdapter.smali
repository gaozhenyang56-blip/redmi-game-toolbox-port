.class public Lmiuix/appcompat/view/menu/HyperMenuAdapter;
.super Lmiuix/appcompat/view/menu/HyperBaseAdapter;
.source "SourceFile"


# static fields
.field private static final DEFAULT_FOREIGN_KEY:I = -0x1


# instance fields
.field private mGroupedMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Ljava/util/ArrayList<",
            "Lmiuix/appcompat/view/menu/HyperMenuContract$HyperMenuItem;",
            ">;>;"
        }
    .end annotation
.end field

.field private mOverflowOnly:Z

.field private mPrimaryItemCheckedMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private mPrimaryMenuItems:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lmiuix/appcompat/view/menu/HyperMenuContract$HyperMenuItem;",
            ">;"
        }
    .end annotation
.end field

.field private mSecondaryItemCheckedMap:Ljava/util/Map;
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

.field private mSecondaryMenuMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Landroid/widget/BaseAdapter;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-direct {p0, p1, v0, v1}, Lmiuix/appcompat/view/menu/HyperMenuAdapter;-><init>(Landroid/content/Context;Lmiuix/appcompat/internal/view/menu/MenuBuilder;Z)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lmiuix/appcompat/internal/view/menu/MenuBuilder;Z)V
    .locals 1

    invoke-direct {p0}, Lmiuix/appcompat/view/menu/HyperBaseAdapter;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lmiuix/appcompat/view/menu/HyperMenuAdapter;->mPrimaryMenuItems:Ljava/util/List;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lmiuix/appcompat/view/menu/HyperMenuAdapter;->mSecondaryMenuMap:Ljava/util/Map;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lmiuix/appcompat/view/menu/HyperMenuAdapter;->mGroupedMap:Ljava/util/Map;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lmiuix/appcompat/view/menu/HyperMenuAdapter;->mPrimaryItemCheckedMap:Ljava/util/Map;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lmiuix/appcompat/view/menu/HyperMenuAdapter;->mSecondaryItemCheckedMap:Ljava/util/Map;

    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p1

    iput-object p1, p0, Lmiuix/appcompat/view/menu/HyperBaseAdapter;->mInflater:Landroid/view/LayoutInflater;

    iget-object p1, p0, Lmiuix/appcompat/view/menu/HyperMenuAdapter;->mPrimaryMenuItems:Ljava/util/List;

    iput-object p1, p0, Lmiuix/appcompat/view/menu/HyperBaseAdapter;->mMenuItemList:Ljava/util/List;

    iput-boolean p3, p0, Lmiuix/appcompat/view/menu/HyperMenuAdapter;->mOverflowOnly:Z

    if-eqz p2, :cond_0

    invoke-direct {p0, p2}, Lmiuix/appcompat/view/menu/HyperMenuAdapter;->buildGroupedMenuItems(Lmiuix/appcompat/internal/view/menu/MenuBuilder;)V

    :cond_0
    return-void
.end method

.method private assembleGroupData(Ljava/util/Map;Ljava/util/ArrayList;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Ljava/util/ArrayList<",
            "Lmiuix/appcompat/view/menu/HyperMenuContract$HyperMenuItem;",
            ">;>;",
            "Ljava/util/ArrayList<",
            "Lmiuix/appcompat/internal/view/menu/MenuItemImpl;",
            ">;)V"
        }
    .end annotation

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_3

    invoke-virtual {p2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lmiuix/appcompat/internal/view/menu/MenuItemImpl;

    invoke-virtual {v2}, Lmiuix/appcompat/internal/view/menu/MenuItemImpl;->getGroupId()I

    move-result v3

    invoke-virtual {v2}, Lmiuix/appcompat/internal/view/menu/MenuItemImpl;->getIntent()Landroid/content/Intent;

    move-result-object v4

    const/4 v5, -0x1

    if-eqz v4, :cond_0

    invoke-virtual {v2}, Lmiuix/appcompat/internal/view/menu/MenuItemImpl;->getGroupId()I

    move-result v3

    const-string v6, "miuix:hyperMenu:groupId"

    invoke-virtual {v4, v6, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v3

    const-string v6, "miuix:hyperMenu:itemForeignKey"

    invoke-virtual {v4, v6, v5}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v4

    goto :goto_1

    :cond_0
    move v4, v5

    :goto_1
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-interface {p1, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/ArrayList;

    if-nez v6, :cond_1

    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    :cond_1
    new-instance v7, Lmiuix/appcompat/view/menu/HyperMenuContract$HyperMenuTextItem;

    invoke-direct {v7, v2}, Lmiuix/appcompat/view/menu/HyperMenuContract$HyperMenuTextItem;-><init>(Lmiuix/appcompat/internal/view/menu/MenuItemImpl;)V

    if-eq v4, v5, :cond_2

    const/4 v2, 0x1

    iput-boolean v2, v7, Lmiuix/appcompat/view/menu/HyperMenuContract$HyperMenuTextItem;->isExpandable:Z

    iput v4, v7, Lmiuix/appcompat/view/menu/HyperMenuContract$HyperMenuTextItem;->itemForeignKey:I

    goto :goto_2

    :cond_2
    iput-boolean v0, v7, Lmiuix/appcompat/view/menu/HyperMenuContract$HyperMenuTextItem;->isExpandable:Z

    iput v5, v7, Lmiuix/appcompat/view/menu/HyperMenuContract$HyperMenuTextItem;->itemForeignKey:I

    :goto_2
    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {p1, v2, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_3
    return-void
.end method

.method private assembleSecondaryMenu(Ljava/util/Map;Ljava/util/ArrayList;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Ljava/util/ArrayList<",
            "Lmiuix/appcompat/view/menu/HyperMenuContract$HyperMenuItem;",
            ">;>;",
            "Ljava/util/ArrayList<",
            "Lmiuix/appcompat/internal/view/menu/MenuItemImpl;",
            ">;)V"
        }
    .end annotation

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_4

    invoke-virtual {p2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lmiuix/appcompat/internal/view/menu/MenuItemImpl;

    invoke-virtual {v2}, Lmiuix/appcompat/internal/view/menu/MenuItemImpl;->getIntent()Landroid/content/Intent;

    move-result-object v3

    const/4 v4, -0x1

    if-eqz v3, :cond_0

    const-string v5, "miuix:hyperMenu:groupForeignKey"

    invoke-virtual {v3, v5, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v3

    goto :goto_1

    :cond_0
    move v3, v4

    :goto_1
    if-ne v3, v4, :cond_1

    goto :goto_3

    :cond_1
    invoke-virtual {v2}, Lmiuix/appcompat/internal/view/menu/MenuItemImpl;->getGroupId()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {p1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/ArrayList;

    iget-object v4, p0, Lmiuix/appcompat/view/menu/HyperMenuAdapter;->mPrimaryMenuItems:Ljava/util/List;

    invoke-direct {p0, v4, v3}, Lmiuix/appcompat/view/menu/HyperMenuAdapter;->findPrimaryItemByForeignKey(Ljava/util/List;I)Lmiuix/appcompat/view/menu/HyperMenuContract$HyperMenuItem;

    move-result-object v3

    const/4 v4, 0x1

    if-eqz v2, :cond_2

    if-eqz v3, :cond_2

    move v5, v4

    goto :goto_2

    :cond_2
    move v5, v0

    :goto_2
    if-eqz v5, :cond_3

    invoke-virtual {v3}, Lmiuix/appcompat/view/menu/HyperMenuContract$HyperMenuItem;->getMenuItem()Lmiuix/appcompat/internal/view/menu/MenuItemImpl;

    move-result-object v5

    if-eqz v5, :cond_3

    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-virtual {v3}, Lmiuix/appcompat/view/menu/HyperMenuContract$HyperMenuItem;->getMenuItem()Lmiuix/appcompat/internal/view/menu/MenuItemImpl;

    move-result-object v2

    invoke-virtual {v2}, Lmiuix/appcompat/internal/view/menu/MenuItemImpl;->getItemId()I

    move-result v2

    invoke-direct {p0, v5, v0, v2}, Lmiuix/appcompat/view/menu/HyperMenuAdapter;->handleDefaultCheckedStatus(Ljava/util/List;ZI)V

    new-instance v2, Lmiuix/appcompat/view/menu/HyperMenuContract$HyperMenuTextItem;

    invoke-virtual {v3}, Lmiuix/appcompat/view/menu/HyperMenuContract$HyperMenuItem;->getMenuItem()Lmiuix/appcompat/internal/view/menu/MenuItemImpl;

    move-result-object v6

    invoke-direct {v2, v6}, Lmiuix/appcompat/view/menu/HyperMenuContract$HyperMenuTextItem;-><init>(Lmiuix/appcompat/internal/view/menu/MenuItemImpl;)V

    iput-boolean v4, v2, Lmiuix/appcompat/view/menu/HyperMenuContract$HyperMenuTextItem;->isHeaderItem:Z

    invoke-virtual {v5, v0, v2}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    new-instance v2, Lmiuix/appcompat/view/menu/HyperMenuContract$HyperMenuDivider;

    invoke-direct {v2}, Lmiuix/appcompat/view/menu/HyperMenuContract$HyperMenuDivider;-><init>()V

    invoke-virtual {v5, v4, v2}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    new-instance v2, Lmiuix/appcompat/view/menu/HyperSecondaryAdapter;

    iget-object v4, p0, Lmiuix/appcompat/view/menu/HyperBaseAdapter;->mInflater:Landroid/view/LayoutInflater;

    iget-object v6, p0, Lmiuix/appcompat/view/menu/HyperMenuAdapter;->mSecondaryItemCheckedMap:Ljava/util/Map;

    invoke-direct {v2, v4, v5, v6}, Lmiuix/appcompat/view/menu/HyperSecondaryAdapter;-><init>(Landroid/view/LayoutInflater;Ljava/util/List;Ljava/util/Map;)V

    iget-object v4, p0, Lmiuix/appcompat/view/menu/HyperMenuAdapter;->mSecondaryMenuMap:Ljava/util/Map;

    invoke-virtual {v3}, Lmiuix/appcompat/view/menu/HyperMenuContract$HyperMenuItem;->getItemId()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v4, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_3
    :goto_3
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_0

    :cond_4
    return-void
.end method

.method private buildDefaultSecondaryMenuData(Ljava/util/Map;Ljava/util/ArrayList;Ljava/util/ArrayList;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Ljava/util/ArrayList<",
            "Lmiuix/appcompat/view/menu/HyperMenuContract$HyperMenuItem;",
            ">;>;",
            "Ljava/util/ArrayList<",
            "Lmiuix/appcompat/internal/view/menu/MenuItemImpl;",
            ">;",
            "Ljava/util/ArrayList<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_4

    invoke-virtual {p2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lmiuix/appcompat/internal/view/menu/MenuItemImpl;

    invoke-virtual {v2}, Lmiuix/appcompat/internal/view/menu/MenuItemImpl;->getGroupId()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {p3, v4}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {p3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_0
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {p1, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/ArrayList;

    if-nez v4, :cond_1

    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    :cond_1
    invoke-virtual {v2}, Lmiuix/appcompat/internal/view/menu/MenuItemImpl;->hasSubMenu()Z

    move-result v5

    new-instance v6, Lmiuix/appcompat/view/menu/HyperMenuContract$HyperMenuTextItem;

    invoke-direct {v6, v2}, Lmiuix/appcompat/view/menu/HyperMenuContract$HyperMenuTextItem;-><init>(Lmiuix/appcompat/internal/view/menu/MenuItemImpl;)V

    iput-boolean v5, v6, Lmiuix/appcompat/view/menu/HyperMenuContract$HyperMenuTextItem;->isExpandable:Z

    invoke-virtual {v4, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {p1, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v3, 0x0

    if-eqz v5, :cond_2

    invoke-virtual {v2}, Lmiuix/appcompat/internal/view/menu/MenuItemImpl;->getSubMenu()Landroid/view/SubMenu;

    move-result-object v4

    instance-of v4, v4, Lmiuix/appcompat/internal/view/menu/SubMenuBuilder;

    if-eqz v4, :cond_2

    invoke-virtual {v2}, Lmiuix/appcompat/internal/view/menu/MenuItemImpl;->getSubMenu()Landroid/view/SubMenu;

    move-result-object v3

    check-cast v3, Lmiuix/appcompat/internal/view/menu/SubMenuBuilder;

    invoke-virtual {v2}, Lmiuix/appcompat/internal/view/menu/MenuItemImpl;->getItemId()I

    move-result v4

    invoke-direct {p0, v3, v4}, Lmiuix/appcompat/view/menu/HyperMenuAdapter;->buildDefaultSubMenuData(Lmiuix/appcompat/internal/view/menu/SubMenuBuilder;I)Ljava/util/ArrayList;

    move-result-object v3

    :cond_2
    if-eqz v3, :cond_3

    new-instance v4, Lmiuix/appcompat/view/menu/HyperMenuContract$HyperMenuTextItem;

    invoke-direct {v4, v2}, Lmiuix/appcompat/view/menu/HyperMenuContract$HyperMenuTextItem;-><init>(Lmiuix/appcompat/internal/view/menu/MenuItemImpl;)V

    const/4 v5, 0x1

    iput-boolean v5, v4, Lmiuix/appcompat/view/menu/HyperMenuContract$HyperMenuTextItem;->isHeaderItem:Z

    invoke-virtual {v3, v0, v4}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    new-instance v4, Lmiuix/appcompat/view/menu/HyperMenuContract$HyperMenuDivider;

    invoke-direct {v4}, Lmiuix/appcompat/view/menu/HyperMenuContract$HyperMenuDivider;-><init>()V

    invoke-virtual {v3, v5, v4}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    iget-object v4, p0, Lmiuix/appcompat/view/menu/HyperMenuAdapter;->mSecondaryMenuMap:Ljava/util/Map;

    invoke-virtual {v2}, Lmiuix/appcompat/internal/view/menu/MenuItemImpl;->getItemId()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    new-instance v5, Lmiuix/appcompat/view/menu/HyperSecondaryAdapter;

    iget-object v6, p0, Lmiuix/appcompat/view/menu/HyperBaseAdapter;->mInflater:Landroid/view/LayoutInflater;

    iget-object v7, p0, Lmiuix/appcompat/view/menu/HyperMenuAdapter;->mSecondaryItemCheckedMap:Ljava/util/Map;

    invoke-direct {v5, v6, v3, v7}, Lmiuix/appcompat/view/menu/HyperSecondaryAdapter;-><init>(Landroid/view/LayoutInflater;Ljava/util/List;Ljava/util/Map;)V

    invoke-interface {v4, v2, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_0

    :cond_4
    return-void
.end method

.method private buildDefaultSubMenuData(Lmiuix/appcompat/internal/view/menu/SubMenuBuilder;I)Ljava/util/ArrayList;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lmiuix/appcompat/internal/view/menu/SubMenuBuilder;",
            "I)",
            "Ljava/util/ArrayList<",
            "Lmiuix/appcompat/view/menu/HyperMenuContract$HyperMenuItem;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x0

    if-eqz p1, :cond_6

    const/4 v1, -0x1

    if-ne p2, v1, :cond_0

    goto/16 :goto_2

    :cond_0
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {p1}, Lmiuix/appcompat/internal/view/menu/MenuBuilder;->getVisibleItems()Ljava/util/ArrayList;

    move-result-object p1

    if-eqz p1, :cond_6

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-nez v2, :cond_1

    goto :goto_2

    :cond_1
    iget-object v0, p0, Lmiuix/appcompat/view/menu/HyperMenuAdapter;->mSecondaryItemCheckedMap:Ljava/util/Map;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/Boolean;

    const/4 v2, 0x0

    if-nez v0, :cond_2

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    new-array v0, v0, [Ljava/lang/Boolean;

    const/4 v3, 0x1

    goto :goto_0

    :cond_2
    move v3, v2

    :goto_0
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ge v2, v4, :cond_5

    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lmiuix/appcompat/internal/view/menu/MenuItemImpl;

    if-eqz v3, :cond_3

    invoke-virtual {v4}, Lmiuix/appcompat/internal/view/menu/MenuItemImpl;->isChecked()Z

    move-result v5

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    aput-object v5, v0, v2

    :cond_3
    new-instance v5, Lmiuix/appcompat/view/menu/HyperMenuContract$HyperMenuTextItem;

    invoke-direct {v5, v4}, Lmiuix/appcompat/view/menu/HyperMenuContract$HyperMenuTextItem;-><init>(Lmiuix/appcompat/internal/view/menu/MenuItemImpl;)V

    sget-object v6, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    aget-object v7, v0, v2

    invoke-virtual {v6, v7}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_4

    sget-object v6, Lmiuix/appcompat/view/menu/HyperMenuContract$CheckableType;->CHECKED:Lmiuix/appcompat/view/menu/HyperMenuContract$CheckableType;

    goto :goto_1

    :cond_4
    sget-object v6, Lmiuix/appcompat/view/menu/HyperMenuContract$CheckableType;->NOT_CHECKED:Lmiuix/appcompat/view/menu/HyperMenuContract$CheckableType;

    :goto_1
    iput-object v6, v5, Lmiuix/appcompat/view/menu/HyperMenuContract$HyperMenuTextItem;->checkStatus:Lmiuix/appcompat/view/menu/HyperMenuContract$CheckableType;

    invoke-virtual {v5}, Lmiuix/appcompat/view/menu/HyperMenuContract$HyperMenuTextItem;->isChecked()Z

    move-result v6

    invoke-virtual {v4, v6}, Lmiuix/appcompat/internal/view/menu/MenuItemImpl;->setChecked(Z)Landroid/view/MenuItem;

    invoke-virtual {v1, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_5
    iget-object p1, p0, Lmiuix/appcompat/view/menu/HyperMenuAdapter;->mSecondaryItemCheckedMap:Ljava/util/Map;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-interface {p1, p2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object v1

    :cond_6
    :goto_2
    return-object v0
.end method

.method private buildGroupedMenuItems(Lmiuix/appcompat/internal/view/menu/MenuBuilder;)V
    .locals 2

    if-eqz p1, :cond_3

    iget-object v0, p0, Lmiuix/appcompat/view/menu/HyperMenuAdapter;->mSecondaryMenuMap:Ljava/util/Map;

    if-eqz v0, :cond_3

    iget-object v1, p0, Lmiuix/appcompat/view/menu/HyperMenuAdapter;->mPrimaryMenuItems:Ljava/util/List;

    if-eqz v1, :cond_3

    iget-object v1, p0, Lmiuix/appcompat/view/menu/HyperMenuAdapter;->mGroupedMap:Ljava/util/Map;

    if-nez v1, :cond_0

    goto :goto_1

    :cond_0
    invoke-interface {v0}, Ljava/util/Map;->clear()V

    iget-object v0, p0, Lmiuix/appcompat/view/menu/HyperMenuAdapter;->mPrimaryMenuItems:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    iget-object v0, p0, Lmiuix/appcompat/view/menu/HyperMenuAdapter;->mGroupedMap:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    iget-boolean v0, p0, Lmiuix/appcompat/view/menu/HyperMenuAdapter;->mOverflowOnly:Z

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Lmiuix/appcompat/internal/view/menu/MenuBuilder;->getNonActionItems()Ljava/util/ArrayList;

    move-result-object p1

    goto :goto_0

    :cond_1
    invoke-virtual {p1}, Lmiuix/appcompat/internal/view/menu/MenuBuilder;->getVisibleItems()Ljava/util/ArrayList;

    move-result-object p1

    :goto_0
    if-eqz p1, :cond_2

    iget-object v0, p0, Lmiuix/appcompat/view/menu/HyperMenuAdapter;->mGroupedMap:Ljava/util/Map;

    invoke-direct {p0, v0, p1}, Lmiuix/appcompat/view/menu/HyperMenuAdapter;->assembleGroupData(Ljava/util/Map;Ljava/util/ArrayList;)V

    :cond_2
    iget-object v0, p0, Lmiuix/appcompat/view/menu/HyperMenuAdapter;->mGroupedMap:Ljava/util/Map;

    invoke-direct {p0, v0}, Lmiuix/appcompat/view/menu/HyperMenuAdapter;->selectPrimaryMenu(Ljava/util/Map;)V

    if-eqz p1, :cond_3

    iget-object v0, p0, Lmiuix/appcompat/view/menu/HyperMenuAdapter;->mGroupedMap:Ljava/util/Map;

    invoke-direct {p0, v0, p1}, Lmiuix/appcompat/view/menu/HyperMenuAdapter;->assembleSecondaryMenu(Ljava/util/Map;Ljava/util/ArrayList;)V

    :cond_3
    :goto_1
    return-void
.end method

.method private buildMenuItems(Lmiuix/appcompat/internal/view/menu/MenuBuilder;)V
    .locals 4

    if-eqz p1, :cond_4

    iget-object v0, p0, Lmiuix/appcompat/view/menu/HyperMenuAdapter;->mSecondaryMenuMap:Ljava/util/Map;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lmiuix/appcompat/view/menu/HyperMenuAdapter;->mPrimaryMenuItems:Ljava/util/List;

    if-eqz v0, :cond_4

    iget-object v1, p0, Lmiuix/appcompat/view/menu/HyperMenuAdapter;->mGroupedMap:Ljava/util/Map;

    if-nez v1, :cond_0

    goto :goto_2

    :cond_0
    invoke-interface {v0}, Ljava/util/List;->clear()V

    iget-object v0, p0, Lmiuix/appcompat/view/menu/HyperMenuAdapter;->mSecondaryMenuMap:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    iget-object v0, p0, Lmiuix/appcompat/view/menu/HyperMenuAdapter;->mGroupedMap:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    iget-boolean v0, p0, Lmiuix/appcompat/view/menu/HyperMenuAdapter;->mOverflowOnly:Z

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Lmiuix/appcompat/internal/view/menu/MenuBuilder;->getNonActionItems()Ljava/util/ArrayList;

    move-result-object p1

    goto :goto_0

    :cond_1
    invoke-virtual {p1}, Lmiuix/appcompat/internal/view/menu/MenuBuilder;->getVisibleItems()Ljava/util/ArrayList;

    move-result-object p1

    :goto_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    if-eqz p1, :cond_2

    iget-object v1, p0, Lmiuix/appcompat/view/menu/HyperMenuAdapter;->mGroupedMap:Ljava/util/Map;

    invoke-direct {p0, v1, p1, v0}, Lmiuix/appcompat/view/menu/HyperMenuAdapter;->buildDefaultSecondaryMenuData(Ljava/util/Map;Ljava/util/ArrayList;Ljava/util/ArrayList;)V

    :cond_2
    const/4 p1, 0x0

    :goto_1
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge p1, v1, :cond_3

    iget-object v1, p0, Lmiuix/appcompat/view/menu/HyperMenuAdapter;->mGroupedMap:Ljava/util/Map;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/ArrayList;

    iget-object v2, p0, Lmiuix/appcompat/view/menu/HyperMenuAdapter;->mPrimaryMenuItems:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v3

    invoke-interface {v2, v3, v1}, Ljava/util/List;->addAll(ILjava/util/Collection;)Z

    iget-object v1, p0, Lmiuix/appcompat/view/menu/HyperMenuAdapter;->mPrimaryMenuItems:Ljava/util/List;

    new-instance v2, Lmiuix/appcompat/view/menu/HyperMenuContract$HyperMenuDivider;

    invoke-direct {v2}, Lmiuix/appcompat/view/menu/HyperMenuContract$HyperMenuDivider;-><init>()V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 p1, p1, 0x1

    goto :goto_1

    :cond_3
    iget-object p1, p0, Lmiuix/appcompat/view/menu/HyperMenuAdapter;->mPrimaryMenuItems:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    invoke-interface {p1, v0}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    iget-object p1, p0, Lmiuix/appcompat/view/menu/HyperMenuAdapter;->mPrimaryMenuItems:Ljava/util/List;

    const/4 v0, -0x1

    invoke-direct {p0, p1, v1, v0}, Lmiuix/appcompat/view/menu/HyperMenuAdapter;->handleDefaultCheckedStatus(Ljava/util/List;ZI)V

    :cond_4
    :goto_2
    return-void
.end method

.method private findPrimaryItemByForeignKey(Ljava/util/List;I)Lmiuix/appcompat/view/menu/HyperMenuContract$HyperMenuItem;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lmiuix/appcompat/view/menu/HyperMenuContract$HyperMenuItem;",
            ">;I)",
            "Lmiuix/appcompat/view/menu/HyperMenuContract$HyperMenuItem;"
        }
    .end annotation

    const/4 v0, 0x0

    :goto_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x0

    if-ge v0, v1, :cond_3

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lmiuix/appcompat/view/menu/HyperMenuContract$HyperMenuItem;

    invoke-virtual {v1}, Lmiuix/appcompat/view/menu/HyperMenuContract$HyperMenuItem;->getMenuItem()Lmiuix/appcompat/internal/view/menu/MenuItemImpl;

    move-result-object v3

    if-eqz v3, :cond_0

    invoke-virtual {v1}, Lmiuix/appcompat/view/menu/HyperMenuContract$HyperMenuItem;->getMenuItem()Lmiuix/appcompat/internal/view/menu/MenuItemImpl;

    move-result-object v2

    invoke-virtual {v2}, Lmiuix/appcompat/internal/view/menu/MenuItemImpl;->getIntent()Landroid/content/Intent;

    move-result-object v2

    :cond_0
    const/4 v3, -0x1

    if-eqz v2, :cond_1

    const-string v4, "miuix:hyperMenu:itemForeignKey"

    invoke-virtual {v2, v4, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    goto :goto_1

    :cond_1
    move v2, v3

    :goto_1
    if-eq v2, v3, :cond_2

    if-ne v2, p2, :cond_2

    return-object v1

    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_3
    return-object v2
.end method

.method private handleDefaultCheckedStatus(Ljava/util/List;ZI)V
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lmiuix/appcompat/view/menu/HyperMenuContract$HyperMenuItem;",
            ">;ZI)V"
        }
    .end annotation

    if-eqz p1, :cond_d

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_0

    goto/16 :goto_a

    :cond_0
    const/4 v0, 0x1

    const/4 v1, 0x0

    if-nez p2, :cond_1

    const/4 v2, -0x1

    if-eq p3, v2, :cond_1

    move v2, v0

    goto :goto_0

    :cond_1
    move v2, v1

    :goto_0
    const/4 v3, 0x0

    if-eqz v2, :cond_2

    iget-object v4, p0, Lmiuix/appcompat/view/menu/HyperMenuAdapter;->mSecondaryItemCheckedMap:Ljava/util/Map;

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v4, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [Ljava/lang/Boolean;

    goto :goto_1

    :cond_2
    move-object v4, v3

    :goto_1
    if-eqz v2, :cond_3

    if-nez v4, :cond_3

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v4

    new-array v4, v4, [Ljava/lang/Boolean;

    move v5, v0

    goto :goto_2

    :cond_3
    move v5, v1

    :goto_2
    move v6, v1

    :goto_3
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v7

    if-ge v6, v7, :cond_c

    invoke-interface {p1, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lmiuix/appcompat/view/menu/HyperMenuContract$HyperMenuItem;

    instance-of v8, v7, Lmiuix/appcompat/view/menu/HyperMenuContract$HyperMenuTextItem;

    if-eqz v8, :cond_4

    invoke-virtual {v7}, Lmiuix/appcompat/view/menu/HyperMenuContract$HyperMenuItem;->getMenuItem()Lmiuix/appcompat/internal/view/menu/MenuItemImpl;

    move-result-object v8

    goto :goto_4

    :cond_4
    move-object v8, v3

    :goto_4
    if-eqz v8, :cond_5

    invoke-virtual {v8}, Lmiuix/appcompat/internal/view/menu/MenuItemImpl;->isCheckable()Z

    move-result v9

    if-eqz v9, :cond_5

    move v9, v0

    goto :goto_5

    :cond_5
    move v9, v1

    :goto_5
    if-eqz v9, :cond_a

    if-eqz p2, :cond_7

    iget-object v9, p0, Lmiuix/appcompat/view/menu/HyperMenuAdapter;->mPrimaryItemCheckedMap:Ljava/util/Map;

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-interface {v9, v10}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/Boolean;

    if-eqz v9, :cond_6

    invoke-virtual {v9}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v8

    goto :goto_6

    :cond_6
    invoke-virtual {v8}, Lmiuix/appcompat/internal/view/menu/MenuItemImpl;->isChecked()Z

    move-result v8

    :goto_6
    iget-object v9, p0, Lmiuix/appcompat/view/menu/HyperMenuAdapter;->mPrimaryItemCheckedMap:Ljava/util/Map;

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-static {v8}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v8

    invoke-interface {v9, v10, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    check-cast v7, Lmiuix/appcompat/view/menu/HyperMenuContract$HyperMenuTextItem;

    sget-object v8, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    iget-object v9, p0, Lmiuix/appcompat/view/menu/HyperMenuAdapter;->mPrimaryItemCheckedMap:Ljava/util/Map;

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-interface {v9, v10}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_9

    goto :goto_7

    :cond_7
    if-eqz v2, :cond_b

    if-eqz v5, :cond_8

    invoke-virtual {v8}, Lmiuix/appcompat/internal/view/menu/MenuItemImpl;->isChecked()Z

    move-result v8

    invoke-static {v8}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v8

    aput-object v8, v4, v6

    :cond_8
    check-cast v7, Lmiuix/appcompat/view/menu/HyperMenuContract$HyperMenuTextItem;

    sget-object v8, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    aget-object v9, v4, v6

    invoke-virtual {v8, v9}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_9

    :goto_7
    sget-object v8, Lmiuix/appcompat/view/menu/HyperMenuContract$CheckableType;->CHECKED:Lmiuix/appcompat/view/menu/HyperMenuContract$CheckableType;

    goto :goto_8

    :cond_9
    sget-object v8, Lmiuix/appcompat/view/menu/HyperMenuContract$CheckableType;->NOT_CHECKED:Lmiuix/appcompat/view/menu/HyperMenuContract$CheckableType;

    :goto_8
    iput-object v8, v7, Lmiuix/appcompat/view/menu/HyperMenuContract$HyperMenuTextItem;->checkStatus:Lmiuix/appcompat/view/menu/HyperMenuContract$CheckableType;

    goto :goto_9

    :cond_a
    if-eqz p2, :cond_b

    iget-object v7, p0, Lmiuix/appcompat/view/menu/HyperMenuAdapter;->mPrimaryItemCheckedMap:Ljava/util/Map;

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    sget-object v9, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-interface {v7, v8, v9}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_b
    :goto_9
    add-int/lit8 v6, v6, 0x1

    goto/16 :goto_3

    :cond_c
    if-eqz v2, :cond_d

    iget-object p1, p0, Lmiuix/appcompat/view/menu/HyperMenuAdapter;->mSecondaryItemCheckedMap:Ljava/util/Map;

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-interface {p1, p2, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_d
    :goto_a
    return-void
.end method

.method private selectPrimaryMenu(Ljava/util/Map;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Ljava/util/ArrayList<",
            "Lmiuix/appcompat/view/menu/HyperMenuContract$HyperMenuItem;",
            ">;>;)V"
        }
    .end annotation

    invoke-interface {p1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-interface {p1, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/ArrayList;

    const/4 v3, 0x0

    if-eqz v1, :cond_2

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-lez v4, :cond_2

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lmiuix/appcompat/view/menu/HyperMenuContract$HyperMenuItem;

    invoke-virtual {v4}, Lmiuix/appcompat/view/menu/HyperMenuContract$HyperMenuItem;->getMenuItem()Lmiuix/appcompat/internal/view/menu/MenuItemImpl;

    move-result-object v4

    invoke-virtual {v4}, Lmiuix/appcompat/internal/view/menu/MenuItemImpl;->getGroupId()I

    move-result v4

    if-nez v4, :cond_1

    goto :goto_1

    :cond_1
    move v2, v3

    :goto_1
    move v3, v2

    :cond_2
    if-eqz v3, :cond_0

    iget-object v2, p0, Lmiuix/appcompat/view/menu/HyperMenuAdapter;->mPrimaryMenuItems:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v3

    invoke-interface {v2, v3, v1}, Ljava/util/List;->addAll(ILjava/util/Collection;)Z

    iget-object v1, p0, Lmiuix/appcompat/view/menu/HyperMenuAdapter;->mPrimaryMenuItems:Ljava/util/List;

    new-instance v2, Lmiuix/appcompat/view/menu/HyperMenuContract$HyperMenuDivider;

    invoke-direct {v2}, Lmiuix/appcompat/view/menu/HyperMenuContract$HyperMenuDivider;-><init>()V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_3
    iget-object p1, p0, Lmiuix/appcompat/view/menu/HyperMenuAdapter;->mPrimaryMenuItems:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    sub-int/2addr v0, v2

    invoke-interface {p1, v0}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    iget-object p1, p0, Lmiuix/appcompat/view/menu/HyperMenuAdapter;->mPrimaryMenuItems:Ljava/util/List;

    const/4 v0, -0x1

    invoke-direct {p0, p1, v2, v0}, Lmiuix/appcompat/view/menu/HyperMenuAdapter;->handleDefaultCheckedStatus(Ljava/util/List;ZI)V

    return-void
.end method


# virtual methods
.method public copyPrimaryCheckedData(Ljava/util/Map;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Boolean;",
            ">;)V"
        }
    .end annotation

    if-eqz p1, :cond_2

    iget-object v0, p0, Lmiuix/appcompat/view/menu/HyperMenuAdapter;->mPrimaryItemCheckedMap:Ljava/util/Map;

    if-nez v0, :cond_0

    goto :goto_1

    :cond_0
    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    iget-object v2, p0, Lmiuix/appcompat/view/menu/HyperMenuAdapter;->mPrimaryItemCheckedMap:Ljava/util/Map;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Boolean;

    if-eqz v2, :cond_1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {p1, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_2
    :goto_1
    return-void
.end method

.method public copySecondaryCheckedData(Ljava/util/Map;)V
    .locals 6
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

    if-eqz p1, :cond_1

    iget-object v0, p0, Lmiuix/appcompat/view/menu/HyperMenuAdapter;->mSecondaryItemCheckedMap:Ljava/util/Map;

    if-nez v0, :cond_0

    goto :goto_1

    :cond_0
    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    iget-object v2, p0, Lmiuix/appcompat/view/menu/HyperMenuAdapter;->mSecondaryItemCheckedMap:Ljava/util/Map;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Ljava/lang/Boolean;

    array-length v3, v2

    new-array v3, v3, [Ljava/lang/Boolean;

    array-length v4, v2

    const/4 v5, 0x0

    invoke-static {v2, v5, v3, v5, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {p1, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_1
    :goto_1
    return-void
.end method

.method public getHyperMenuItem(I)Lmiuix/appcompat/view/menu/HyperMenuContract$HyperMenuItem;
    .locals 1

    iget-object v0, p0, Lmiuix/appcompat/view/menu/HyperMenuAdapter;->mPrimaryMenuItems:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lmiuix/appcompat/view/menu/HyperMenuContract$HyperMenuItem;

    return-object p1
.end method

.method public getItem(I)Landroid/view/MenuItem;
    .locals 1

    iget-object v0, p0, Lmiuix/appcompat/view/menu/HyperMenuAdapter;->mPrimaryMenuItems:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lmiuix/appcompat/view/menu/HyperMenuContract$HyperMenuItem;

    invoke-virtual {p1}, Lmiuix/appcompat/view/menu/HyperMenuContract$HyperMenuItem;->getMenuItem()Lmiuix/appcompat/internal/view/menu/MenuItemImpl;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic getItem(I)Ljava/lang/Object;
    .locals 0

    invoke-virtual {p0, p1}, Lmiuix/appcompat/view/menu/HyperMenuAdapter;->getItem(I)Landroid/view/MenuItem;

    move-result-object p1

    return-object p1
.end method

.method public getItemId(I)J
    .locals 2

    iget-object v0, p0, Lmiuix/appcompat/view/menu/HyperMenuAdapter;->mPrimaryMenuItems:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lmiuix/appcompat/view/menu/HyperMenuContract$HyperMenuItem;

    invoke-virtual {p1}, Lmiuix/appcompat/view/menu/HyperMenuContract$HyperMenuItem;->getItemId()I

    move-result p1

    int-to-long v0, p1

    return-wide v0
.end method

.method public getPrimaryCheckedMap()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lmiuix/appcompat/view/menu/HyperMenuAdapter;->mPrimaryItemCheckedMap:Ljava/util/Map;

    return-object v0
.end method

.method public getSecondaryAdapterByItemId(J)Landroid/widget/BaseAdapter;
    .locals 1

    iget-object v0, p0, Lmiuix/appcompat/view/menu/HyperMenuAdapter;->mSecondaryMenuMap:Ljava/util/Map;

    long-to-int p1, p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/widget/BaseAdapter;

    return-object p1
.end method

.method public getSecondaryCheckedMap()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "[",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lmiuix/appcompat/view/menu/HyperMenuAdapter;->mSecondaryItemCheckedMap:Ljava/util/Map;

    return-object v0
.end method

.method public hasSubMenu(J)Z
    .locals 1

    iget-object v0, p0, Lmiuix/appcompat/view/menu/HyperMenuAdapter;->mSecondaryMenuMap:Ljava/util/Map;

    long-to-int p1, p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public preCheckPrimaryItem(Ljava/util/Map;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Boolean;",
            ">;)V"
        }
    .end annotation

    if-nez p1, :cond_0

    return-void

    :cond_0
    invoke-interface {p1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    iget-object v2, p0, Lmiuix/appcompat/view/menu/HyperMenuAdapter;->mPrimaryItemCheckedMap:Ljava/util/Map;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {p1, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-interface {v2, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_1
    return-void
.end method

.method public preCheckSecondaryItem(Ljava/util/Map;)V
    .locals 4
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

    if-nez p1, :cond_0

    return-void

    :cond_0
    invoke-interface {p1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    iget-object v2, p0, Lmiuix/appcompat/view/menu/HyperMenuAdapter;->mSecondaryItemCheckedMap:Ljava/util/Map;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {p1, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Ljava/lang/Boolean;

    invoke-interface {v2, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_1
    return-void
.end method

.method public resumePrimaryItemClickStatus(II)V
    .locals 10

    iget-object v0, p0, Lmiuix/appcompat/view/menu/HyperMenuAdapter;->mPrimaryMenuItems:Ljava/util/List;

    if-eqz v0, :cond_f

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_0

    goto/16 :goto_9

    :cond_0
    const/4 v0, 0x0

    move v1, v0

    :goto_0
    iget-object v2, p0, Lmiuix/appcompat/view/menu/HyperMenuAdapter;->mPrimaryMenuItems:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    const/4 v3, 0x0

    if-ge v1, v2, :cond_2

    iget-object v2, p0, Lmiuix/appcompat/view/menu/HyperMenuAdapter;->mPrimaryMenuItems:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lmiuix/appcompat/view/menu/HyperMenuContract$HyperMenuItem;

    invoke-virtual {v2}, Lmiuix/appcompat/view/menu/HyperMenuContract$HyperMenuItem;->getItemId()I

    move-result v4

    if-ne v4, p1, :cond_1

    goto :goto_1

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    move-object v2, v3

    :goto_1
    if-nez v2, :cond_3

    return-void

    :cond_3
    invoke-virtual {v2}, Lmiuix/appcompat/view/menu/HyperMenuContract$HyperMenuItem;->getMenuItem()Lmiuix/appcompat/internal/view/menu/MenuItemImpl;

    move-result-object v1

    if-nez v1, :cond_4

    return-void

    :cond_4
    invoke-virtual {v1}, Lmiuix/appcompat/internal/view/menu/MenuItemImpl;->getIntent()Landroid/content/Intent;

    move-result-object v2

    invoke-virtual {v1}, Lmiuix/appcompat/internal/view/menu/MenuItemImpl;->getGroupId()I

    move-result v1

    if-eqz v2, :cond_5

    const-string v4, "miuix:hyperMenu:groupId"

    invoke-virtual {v2, v4, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    :cond_5
    iget-object v2, p0, Lmiuix/appcompat/view/menu/HyperMenuAdapter;->mGroupedMap:Ljava/util/Map;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v2, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/ArrayList;

    const/4 v2, -0x1

    move v4, v0

    move v5, v2

    :goto_2
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v6

    const/4 v7, 0x1

    if-ge v4, v6, :cond_c

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lmiuix/appcompat/view/menu/HyperMenuContract$HyperMenuItem;

    instance-of v8, v6, Lmiuix/appcompat/view/menu/HyperMenuContract$HyperMenuTextItem;

    if-eqz v8, :cond_6

    check-cast v6, Lmiuix/appcompat/view/menu/HyperMenuContract$HyperMenuTextItem;

    goto :goto_3

    :cond_6
    move-object v6, v3

    :goto_3
    if-eqz v6, :cond_7

    invoke-virtual {v6}, Lmiuix/appcompat/view/menu/HyperMenuContract$HyperMenuItem;->getMenuItem()Lmiuix/appcompat/internal/view/menu/MenuItemImpl;

    move-result-object v8

    invoke-virtual {v6}, Lmiuix/appcompat/view/menu/HyperMenuContract$HyperMenuItem;->getItemId()I

    move-result v9

    if-ne v9, p1, :cond_8

    move v5, v4

    goto :goto_4

    :cond_7
    move-object v8, v3

    :cond_8
    :goto_4
    if-eqz v8, :cond_9

    invoke-virtual {v8}, Lmiuix/appcompat/internal/view/menu/MenuItemImpl;->isCheckable()Z

    move-result v9

    if-eqz v9, :cond_9

    iget-boolean v9, v6, Lmiuix/appcompat/view/menu/HyperMenuContract$HyperMenuTextItem;->isExpandable:Z

    if-nez v9, :cond_9

    goto :goto_5

    :cond_9
    move v7, v0

    :goto_5
    if-eqz v7, :cond_b

    invoke-virtual {v6}, Lmiuix/appcompat/view/menu/HyperMenuContract$HyperMenuItem;->getItemId()I

    move-result v7

    if-ne v7, p1, :cond_a

    sget-object v7, Lmiuix/appcompat/view/menu/HyperMenuContract$CheckableType;->CHECKED:Lmiuix/appcompat/view/menu/HyperMenuContract$CheckableType;

    goto :goto_6

    :cond_a
    sget-object v7, Lmiuix/appcompat/view/menu/HyperMenuContract$CheckableType;->NOT_CHECKED:Lmiuix/appcompat/view/menu/HyperMenuContract$CheckableType;

    :goto_6
    iput-object v7, v6, Lmiuix/appcompat/view/menu/HyperMenuContract$HyperMenuTextItem;->checkStatus:Lmiuix/appcompat/view/menu/HyperMenuContract$CheckableType;

    invoke-virtual {v6}, Lmiuix/appcompat/view/menu/HyperMenuContract$HyperMenuTextItem;->isChecked()Z

    move-result v6

    invoke-virtual {v8, v6}, Lmiuix/appcompat/internal/view/menu/MenuItemImpl;->setChecked(Z)Landroid/view/MenuItem;

    :cond_b
    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    :cond_c
    if-eq v5, v2, :cond_e

    sub-int p1, p2, v5

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/2addr p2, v1

    sub-int/2addr p2, v5

    sub-int/2addr p2, v7

    move v1, p1

    :goto_7
    if-lt v1, p1, :cond_e

    if-gt v1, p2, :cond_e

    iget-object v2, p0, Lmiuix/appcompat/view/menu/HyperMenuAdapter;->mPrimaryItemCheckedMap:Ljava/util/Map;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    add-int v4, p1, v5

    if-ne v1, v4, :cond_d

    move v4, v7

    goto :goto_8

    :cond_d
    move v4, v0

    :goto_8
    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-interface {v2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v1, v1, 0x1

    goto :goto_7

    :cond_e
    invoke-virtual {p0}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    :cond_f
    :goto_9
    return-void
.end method

.method public update(Lmiuix/appcompat/internal/view/menu/MenuBuilder;)V
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lmiuix/appcompat/view/menu/HyperMenuAdapter;->update(Lmiuix/appcompat/internal/view/menu/MenuBuilder;Z)V

    return-void
.end method

.method public update(Lmiuix/appcompat/internal/view/menu/MenuBuilder;Z)V
    .locals 0

    if-eqz p2, :cond_0

    invoke-direct {p0, p1}, Lmiuix/appcompat/view/menu/HyperMenuAdapter;->buildGroupedMenuItems(Lmiuix/appcompat/internal/view/menu/MenuBuilder;)V

    goto :goto_0

    :cond_0
    invoke-direct {p0, p1}, Lmiuix/appcompat/view/menu/HyperMenuAdapter;->buildMenuItems(Lmiuix/appcompat/internal/view/menu/MenuBuilder;)V

    :goto_0
    invoke-virtual {p0}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    return-void
.end method
