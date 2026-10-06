.class public final Lsf/b;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final a:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/miui/common/card/models/BaseCardModel;",
            ">;"
        }
    .end annotation
.end field

.field private static final b:Landroid/content/res/Resources;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lsf/b;->a:Ljava/util/ArrayList;

    invoke-static {}, Lcom/miui/securitycenter/Application;->z()Landroid/content/res/Resources;

    move-result-object v1

    sput-object v1, Lsf/b;->b:Landroid/content/res/Resources;

    new-instance v1, Lcom/miui/common/card/models/TopCardModel;

    invoke-direct {v1}, Lcom/miui/common/card/models/TopCardModel;-><init>()V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method private static a(Ljava/util/List;)Ljava/util/ArrayList;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/miui/common/card/GridFunctionData;",
            ">;)",
            "Ljava/util/ArrayList<",
            "Lcom/miui/common/card/models/BaseCardModel;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x4

    invoke-static {v1, v2}, Lsf/d;->o(II)I

    move-result v2

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_4

    new-instance v4, Lcd/c;

    invoke-direct {v4}, Lcd/c;-><init>()V

    const/4 v5, 0x1

    if-ne v2, v5, :cond_0

    invoke-virtual {v4, v5}, Lcd/g;->setTopRow(Z)V

    :goto_1
    invoke-virtual {v4, v5}, Lcd/g;->setBottomRow(Z)V

    goto :goto_2

    :cond_0
    if-nez v3, :cond_1

    invoke-virtual {v4, v5}, Lcd/g;->setTopRow(Z)V

    goto :goto_2

    :cond_1
    add-int/lit8 v6, v2, -0x1

    if-ne v3, v6, :cond_2

    goto :goto_1

    :cond_2
    :goto_2
    mul-int/lit8 v5, v3, 0x4

    add-int/lit8 v6, v5, 0x4

    if-le v6, v1, :cond_3

    move v6, v1

    :cond_3
    invoke-interface {p0, v5, v6}, Ljava/util/List;->subList(II)Ljava/util/List;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/miui/common/card/models/FunctionCardModel;->setGridFunctionDataList(Ljava/util/List;)V

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_4
    return-object v0
.end method

.method private static b(Z)Ljava/util/ArrayList;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)",
            "Ljava/util/ArrayList<",
            "Lcom/miui/common/card/models/BaseCardModel;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    new-instance v1, Lcom/miui/common/card/models/TopCardModel;

    invoke-direct {v1}, Lcom/miui/common/card/models/TopCardModel;-><init>()V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-static {p0}, Lsf/a;->c(Z)Ljava/util/ArrayList;

    move-result-object v1

    const/4 v2, 0x0

    :goto_0
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v2, v3, :cond_0

    new-instance v3, Lcom/miui/common/card/models/FuncGrid6CardModel;

    invoke-direct {v3}, Lcom/miui/common/card/models/FuncGrid6CardModel;-><init>()V

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Lcom/miui/common/card/models/FunctionCardModel;->setHomePageFunc(Z)V

    invoke-virtual {v3, v2}, Lcom/miui/common/card/models/FuncGrid6CardModel;->setIndexInGridSix(I)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/miui/common/card/GridFunctionData;

    invoke-virtual {v3, v4}, Lcom/miui/common/card/models/FunctionCardModel;->setGridFunctionData(Lcom/miui/common/card/GridFunctionData;)V

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    new-instance v1, Lcom/miui/common/card/models/LineCardModel;

    invoke-direct {v1}, Lcom/miui/common/card/models/LineCardModel;-><init>()V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    if-eqz p0, :cond_1

    invoke-static {}, Lcom/miui/securitycenter/Application;->A()Lcom/miui/securitycenter/Application;

    move-result-object p0

    invoke-static {p0}, Leg/d;->a(Landroid/content/Context;)Lcom/miui/common/card/models/CommonlyUsedFunctionCardModel;

    move-result-object p0

    const/4 v1, 0x4

    invoke-virtual {p0, v1}, Lcom/miui/common/card/models/CommonlyUsedFunctionCardModel;->setEditBtnVisible(I)V

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_1
    return-object v0
.end method

.method private static c(I)Ljava/util/ArrayList;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/ArrayList<",
            "Lcom/miui/common/card/models/BaseCardModel;",
            ">;"
        }
    .end annotation

    new-instance p0, Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    new-instance v0, Lcom/miui/common/card/models/TopCardModel;

    invoke-direct {v0}, Lcom/miui/common/card/models/TopCardModel;-><init>()V

    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-static {}, Lsf/a;->a()Ljava/util/ArrayList;

    move-result-object v0

    const/4 v1, 0x0

    :goto_0
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_0

    new-instance v2, Lcom/miui/common/card/models/FuncGrid6CardModel;

    invoke-direct {v2}, Lcom/miui/common/card/models/FuncGrid6CardModel;-><init>()V

    invoke-virtual {v2, v1}, Lcom/miui/common/card/models/FuncGrid6CardModel;->setIndexInGridSix(I)V

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/miui/common/card/models/FunctionCardModel;->setHomePageFunc(Z)V

    invoke-virtual {v2, v1}, Lcom/miui/common/card/models/FuncGrid6CardModel;->setIndexInGridSix(I)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/miui/common/card/GridFunctionData;

    invoke-virtual {v2, v3}, Lcom/miui/common/card/models/FunctionCardModel;->setGridFunctionData(Lcom/miui/common/card/GridFunctionData;)V

    invoke-virtual {p0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/miui/common/card/models/LineCardModel;

    invoke-direct {v0}, Lcom/miui/common/card/models/LineCardModel;-><init>()V

    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-static {}, Lcom/miui/securitycenter/Application;->A()Lcom/miui/securitycenter/Application;

    move-result-object v0

    invoke-static {v0}, Leg/d;->a(Landroid/content/Context;)Lcom/miui/common/card/models/CommonlyUsedFunctionCardModel;

    move-result-object v0

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/miui/common/card/models/CommonlyUsedFunctionCardModel;->setEditBtnVisible(I)V

    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-object p0
.end method

.method private static d(ZI)Ljava/util/ArrayList;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ZI)",
            "Ljava/util/ArrayList<",
            "Lcom/miui/common/card/models/BaseCardModel;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    new-instance v1, Lcom/miui/common/card/models/TopCardModel;

    invoke-direct {v1}, Lcom/miui/common/card/models/TopCardModel;-><init>()V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-static {}, Lsf/a;->b()Ljava/util/ArrayList;

    move-result-object v1

    const/4 v2, 0x0

    :goto_0
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v3

    const/4 v4, 0x1

    if-ge v2, v3, :cond_0

    new-instance v3, Lcom/miui/common/card/models/FuncGrid6CardModel;

    invoke-direct {v3}, Lcom/miui/common/card/models/FuncGrid6CardModel;-><init>()V

    invoke-virtual {v3, v2}, Lcom/miui/common/card/models/FuncGrid6CardModel;->setIndexInGridSix(I)V

    invoke-virtual {v3, v4}, Lcom/miui/common/card/models/FunctionCardModel;->setHomePageFunc(Z)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/miui/common/card/GridFunctionData;

    invoke-virtual {v3, v4}, Lcom/miui/common/card/models/FunctionCardModel;->setGridFunctionData(Lcom/miui/common/card/GridFunctionData;)V

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    if-nez p0, :cond_1

    return-object v0

    :cond_1
    new-instance p0, Lcom/miui/common/card/models/ListTitleCardModel;

    invoke-direct {p0}, Lcom/miui/common/card/models/ListTitleCardModel;-><init>()V

    invoke-virtual {p0, v4}, Lcom/miui/common/card/models/TitleCardModel;->setHomePageFunc(Z)V

    sget-object v1, Lsf/b;->b:Landroid/content/res/Resources;

    const v2, 0x7f1204bb

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/miui/common/card/models/BaseCardModel;->setTitle(Ljava/lang/String;)V

    const/16 v1, 0x579

    invoke-virtual {p0, v1}, Lcom/miui/common/card/models/TitleCardModel;->setSubCardModelTemplate(I)V

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-static {}, Lsf/a;->e()Ljava/util/ArrayList;

    move-result-object v1

    invoke-static {v1, p1}, Lsf/b;->f(Ljava/util/ArrayList;I)Ljava/util/ArrayList;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    invoke-virtual {p0, p1}, Lcom/miui/common/card/models/TitleCardModel;->addSubCardModelList(Ljava/util/ArrayList;)V

    return-object v0
.end method

.method public static e(I)Ljava/util/ArrayList;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/ArrayList<",
            "Lcom/miui/common/card/models/BaseCardModel;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    new-instance v1, Lcom/miui/common/card/models/TopCardModel;

    invoke-direct {v1}, Lcom/miui/common/card/models/TopCardModel;-><init>()V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-static {}, Lsf/a;->a()Ljava/util/ArrayList;

    move-result-object v1

    const/4 v2, 0x0

    :goto_0
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v3

    const/4 v4, 0x1

    if-ge v2, v3, :cond_0

    new-instance v3, Lcom/miui/common/card/models/FuncGrid6CardModel;

    invoke-direct {v3}, Lcom/miui/common/card/models/FuncGrid6CardModel;-><init>()V

    invoke-virtual {v3, v2}, Lcom/miui/common/card/models/FuncGrid6CardModel;->setIndexInGridSix(I)V

    invoke-virtual {v3, v4}, Lcom/miui/common/card/models/FunctionCardModel;->setHomePageFunc(Z)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/miui/common/card/GridFunctionData;

    invoke-virtual {v3, v4}, Lcom/miui/common/card/models/FunctionCardModel;->setGridFunctionData(Lcom/miui/common/card/GridFunctionData;)V

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    new-instance v1, Lcom/miui/common/card/models/LineCardModel;

    invoke-direct {v1}, Lcom/miui/common/card/models/LineCardModel;-><init>()V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v1, Lcom/miui/common/card/models/ListTitleCardModel;

    invoke-direct {v1}, Lcom/miui/common/card/models/ListTitleCardModel;-><init>()V

    invoke-virtual {v1, v4}, Lcom/miui/common/card/models/TitleCardModel;->setHomePageFunc(Z)V

    sget-object v2, Lsf/b;->b:Landroid/content/res/Resources;

    const v3, 0x7f1204bb

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/miui/common/card/models/BaseCardModel;->setTitle(Ljava/lang/String;)V

    const/16 v2, 0x579

    invoke-virtual {v1, v2}, Lcom/miui/common/card/models/TitleCardModel;->setSubCardModelTemplate(I)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-static {}, Lsf/a;->d()Ljava/util/ArrayList;

    move-result-object v2

    invoke-static {v2, p0}, Lsf/b;->f(Ljava/util/ArrayList;I)Ljava/util/ArrayList;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    invoke-virtual {v1, p0}, Lcom/miui/common/card/models/TitleCardModel;->addSubCardModelList(Ljava/util/ArrayList;)V

    return-object v0
.end method

.method private static f(Ljava/util/ArrayList;I)Ljava/util/ArrayList;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/miui/common/card/GridFunctionData;",
            ">;I)",
            "Ljava/util/ArrayList<",
            "Lcom/miui/common/card/models/BaseCardModel;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    const/4 v4, 0x1

    if-ge v3, v1, :cond_0

    new-instance v5, Lcom/miui/common/card/models/FuncGrid9ColorfulCardModel;

    invoke-direct {v5}, Lcom/miui/common/card/models/FuncGrid9ColorfulCardModel;-><init>()V

    invoke-virtual {v5, v4}, Lcom/miui/common/card/models/FunctionCardModel;->setHomePageFunc(Z)V

    invoke-virtual {p0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/miui/common/card/GridFunctionData;

    invoke-virtual {v5, v4}, Lcom/miui/common/card/models/FunctionCardModel;->setGridFunctionData(Lcom/miui/common/card/GridFunctionData;)V

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_0
    rem-int/2addr v1, p1

    if-eqz v1, :cond_1

    sub-int p0, p1, v1

    move v1, v2

    :goto_1
    if-ge v1, p0, :cond_1

    new-instance v3, Lcom/miui/common/card/models/FuncGrid9ColorfulCardModel;

    invoke-direct {v3}, Lcom/miui/common/card/models/FuncGrid9ColorfulCardModel;-><init>()V

    invoke-virtual {v3, v4}, Lcom/miui/common/card/models/FunctionCardModel;->setHomePageFunc(Z)V

    const/4 v5, 0x0

    invoke-virtual {v3, v5}, Lcom/miui/common/card/models/FunctionCardModel;->setGridFunctionData(Lcom/miui/common/card/GridFunctionData;)V

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_1
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result p0

    div-int v1, p0, p1

    :goto_2
    if-ge v2, p0, :cond_d

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/miui/common/card/models/FuncGrid9ColorfulCardModel;

    div-int v5, v2, p1

    rem-int v6, v2, p1

    if-gt v1, v4, :cond_5

    if-nez v6, :cond_2

    iput-boolean v4, v3, Lcom/miui/common/card/models/FuncGridBaseCardModel;->isTopLeft:Z

    :goto_3
    iput-boolean v4, v3, Lcom/miui/common/card/models/FuncGridBaseCardModel;->isBottomLeft:Z

    goto :goto_5

    :cond_2
    add-int/lit8 v5, p1, -0x1

    if-ne v6, v5, :cond_3

    iput-boolean v4, v3, Lcom/miui/common/card/models/FuncGridBaseCardModel;->isTopRight:Z

    :goto_4
    iput-boolean v4, v3, Lcom/miui/common/card/models/FuncGridBaseCardModel;->isBottomRight:Z

    goto :goto_5

    :cond_3
    iput-boolean v4, v3, Lcom/miui/common/card/models/FuncGridBaseCardModel;->isTopMiddle:Z

    :cond_4
    iput-boolean v4, v3, Lcom/miui/common/card/models/FuncGridBaseCardModel;->isBottomMiddle:Z

    goto :goto_5

    :cond_5
    if-lez v5, :cond_8

    add-int/lit8 v7, v1, -0x1

    if-ge v5, v7, :cond_8

    if-nez v6, :cond_6

    iput-boolean v4, v3, Lcom/miui/common/card/models/FuncGridBaseCardModel;->isMiddleLeft:Z

    goto :goto_5

    :cond_6
    add-int/lit8 v5, p1, -0x1

    if-ne v6, v5, :cond_7

    iput-boolean v4, v3, Lcom/miui/common/card/models/FuncGridBaseCardModel;->isMiddleRight:Z

    goto :goto_5

    :cond_7
    iput-boolean v4, v3, Lcom/miui/common/card/models/FuncGridBaseCardModel;->isMiddle:Z

    goto :goto_5

    :cond_8
    if-nez v5, :cond_b

    if-nez v6, :cond_9

    iput-boolean v4, v3, Lcom/miui/common/card/models/FuncGridBaseCardModel;->isTopLeft:Z

    goto :goto_5

    :cond_9
    add-int/lit8 v5, p1, -0x1

    if-ne v6, v5, :cond_a

    iput-boolean v4, v3, Lcom/miui/common/card/models/FuncGridBaseCardModel;->isTopRight:Z

    goto :goto_5

    :cond_a
    iput-boolean v4, v3, Lcom/miui/common/card/models/FuncGridBaseCardModel;->isTopMiddle:Z

    goto :goto_5

    :cond_b
    if-nez v6, :cond_c

    goto :goto_3

    :cond_c
    add-int/lit8 v5, p1, -0x1

    if-ne v6, v5, :cond_4

    goto :goto_4

    :goto_5
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    :cond_d
    return-object v0
.end method

.method public static g(Landroid/content/Context;)Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/ArrayList<",
            "Lcom/miui/common/card/models/BaseCardModel;",
            ">;"
        }
    .end annotation

    sget-boolean v0, Lmiui/os/Build;->IS_INTERNATIONAL_BUILD:Z

    if-eqz v0, :cond_0

    invoke-static {}, Lsf/b;->i()Ljava/util/ArrayList;

    move-result-object p0

    return-object p0

    :cond_0
    invoke-static {p0}, Lsf/b;->h(Landroid/content/Context;)Ljava/util/ArrayList;

    move-result-object p0

    return-object p0
.end method

.method public static h(Landroid/content/Context;)Ljava/util/ArrayList;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/ArrayList<",
            "Lcom/miui/common/card/models/BaseCardModel;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    new-instance v1, Lcd/b;

    invoke-direct {v1}, Lcd/b;-><init>()V

    sget-object v2, Lsf/b;->b:Landroid/content/res/Resources;

    const v3, 0x7f1211df

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/miui/common/card/models/BaseCardModel;->setTitle(Ljava/lang/String;)V

    const v3, 0x7f1211de

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/miui/common/card/models/BaseCardModel;->setSummary(Ljava/lang/String;)V

    const/4 v3, 0x1

    invoke-virtual {v1, v3}, Lcom/miui/common/card/models/BaseCardModel;->setSubVisible(Z)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-static {}, Lsf/a;->k()Ljava/util/ArrayList;

    move-result-object v4

    iput-object v4, v1, Lcom/miui/common/card/models/TitleCardModel;->gridFunctionDataList:Ljava/util/List;

    new-instance v1, Lcd/b;

    invoke-direct {v1}, Lcd/b;-><init>()V

    const v4, 0x7f1211d7

    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Lcom/miui/common/card/models/BaseCardModel;->setTitle(Ljava/lang/String;)V

    const v4, 0x7f1211d6

    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Lcom/miui/common/card/models/BaseCardModel;->setSummary(Ljava/lang/String;)V

    invoke-virtual {v1, v3}, Lcom/miui/common/card/models/BaseCardModel;->setSubVisible(Z)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-static {}, Lsf/a;->g()Ljava/util/ArrayList;

    move-result-object v4

    iput-object v4, v1, Lcom/miui/common/card/models/TitleCardModel;->gridFunctionDataList:Ljava/util/List;

    new-instance v1, Lcd/b;

    invoke-direct {v1}, Lcd/b;-><init>()V

    const v4, 0x7f121a3a

    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Lcom/miui/common/card/models/BaseCardModel;->setTitle(Ljava/lang/String;)V

    const v4, 0x7f1211d5

    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Lcom/miui/common/card/models/BaseCardModel;->setSummary(Ljava/lang/String;)V

    invoke-virtual {v1, v3}, Lcom/miui/common/card/models/BaseCardModel;->setSubVisible(Z)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-static {}, Lsf/a;->f()Ljava/util/ArrayList;

    move-result-object v4

    iput-object v4, v1, Lcom/miui/common/card/models/TitleCardModel;->gridFunctionDataList:Ljava/util/List;

    new-instance v1, Lcd/b;

    invoke-direct {v1}, Lcd/b;-><init>()V

    const v4, 0x7f1211d9

    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Lcom/miui/common/card/models/BaseCardModel;->setTitle(Ljava/lang/String;)V

    const v4, 0x7f1211d8

    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/miui/common/card/models/BaseCardModel;->setSummary(Ljava/lang/String;)V

    invoke-virtual {v1, v3}, Lcom/miui/common/card/models/BaseCardModel;->setSubVisible(Z)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-static {p0}, Lsf/a;->i(Landroid/content/Context;)Ljava/util/ArrayList;

    move-result-object p0

    iput-object p0, v1, Lcom/miui/common/card/models/TitleCardModel;->gridFunctionDataList:Ljava/util/List;

    return-object v0
.end method

.method public static i()Ljava/util/ArrayList;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Lcom/miui/common/card/models/BaseCardModel;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    new-instance v1, Lcd/b;

    invoke-direct {v1}, Lcd/b;-><init>()V

    sget-object v2, Lsf/b;->b:Landroid/content/res/Resources;

    const v3, 0x7f1211df

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/miui/common/card/models/BaseCardModel;->setTitle(Ljava/lang/String;)V

    const/4 v3, 0x1

    invoke-virtual {v1, v3}, Lcom/miui/common/card/models/BaseCardModel;->setSubVisible(Z)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-static {}, Lsf/a;->l()Ljava/util/ArrayList;

    move-result-object v4

    iput-object v4, v1, Lcom/miui/common/card/models/TitleCardModel;->gridFunctionDataList:Ljava/util/List;

    new-instance v1, Lcd/b;

    invoke-direct {v1}, Lcd/b;-><init>()V

    const v4, 0x7f1211d7

    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Lcom/miui/common/card/models/BaseCardModel;->setTitle(Ljava/lang/String;)V

    invoke-virtual {v1, v3}, Lcom/miui/common/card/models/BaseCardModel;->setSubVisible(Z)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-static {}, Lsf/a;->h()Ljava/util/ArrayList;

    move-result-object v4

    iput-object v4, v1, Lcom/miui/common/card/models/TitleCardModel;->gridFunctionDataList:Ljava/util/List;

    new-instance v1, Lcd/b;

    invoke-direct {v1}, Lcd/b;-><init>()V

    const v4, 0x7f1211da

    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/miui/common/card/models/BaseCardModel;->setTitle(Ljava/lang/String;)V

    invoke-virtual {v1, v3}, Lcom/miui/common/card/models/BaseCardModel;->setSubVisible(Z)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-static {}, Lsf/a;->j()Ljava/util/ArrayList;

    move-result-object v2

    iput-object v2, v1, Lcom/miui/common/card/models/TitleCardModel;->gridFunctionDataList:Ljava/util/List;

    return-object v0
.end method

.method public static j(Landroid/content/Context;Ljava/util/List;)Ljava/util/List;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List<",
            "Lcom/miui/common/card/models/BaseCardModel;",
            ">;)",
            "Ljava/util/List<",
            "Lcom/miui/common/card/models/BaseCardModel;",
            ">;"
        }
    .end annotation

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    invoke-static {}, Ldd/c;->c()Ljava/util/ArrayList;

    move-result-object v0

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    if-eqz v0, :cond_7

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-lez v2, :cond_7

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/miui/common/card/models/BaseCardModel;

    instance-of v5, v4, Lcd/b;

    if-eqz v5, :cond_1

    check-cast v4, Lcd/b;

    iget-object v4, v4, Lcom/miui/common/card/models/TitleCardModel;->gridFunctionDataList:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_2
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/miui/common/card/GridFunctionData;

    invoke-virtual {v5}, Lcom/miui/common/card/GridFunctionData;->getAction()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    invoke-virtual {v5}, Lcom/miui/common/card/GridFunctionData;->getAction()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_3
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    const/4 v4, 0x0

    move v5, v4

    :goto_1
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-ge v5, v6, :cond_5

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {v3, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/miui/common/card/GridFunctionData;

    if-eqz v6, :cond_4

    invoke-interface {v2, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    invoke-interface {p1, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_4
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    :cond_5
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v3

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-eq v3, v0, :cond_6

    invoke-static {p1}, Ldd/c;->a(Ljava/util/List;)V

    :cond_6
    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_7

    new-instance p1, Lcd/d;

    invoke-direct {p1}, Lcd/d;-><init>()V

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    const v0, 0x7f1211db    # 1.9416E38f

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Lcom/miui/common/card/models/BaseCardModel;->setTitle(Ljava/lang/String;)V

    invoke-virtual {p1, v4}, Lcom/miui/common/card/models/BaseCardModel;->setSubVisible(Z)V

    iput-object v2, p1, Lcom/miui/common/card/models/TitleCardModel;->gridFunctionDataList:Ljava/util/List;

    invoke-static {v2}, Lsf/b;->a(Ljava/util/List;)Ljava/util/ArrayList;

    move-result-object p0

    invoke-virtual {p1, p0}, Lcom/miui/common/card/models/TitleCardModel;->addSubCardModelList(Ljava/util/ArrayList;)V

    invoke-interface {v1, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_7
    return-object v1
.end method

.method public static k()Ljava/util/ArrayList;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Lcom/miui/common/card/models/BaseCardModel;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    sget-object v1, Lsf/b;->a:Ljava/util/ArrayList;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    return-object v0
.end method

.method public static l(ZI)Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ZI)",
            "Ljava/util/ArrayList<",
            "Lcom/miui/common/card/models/BaseCardModel;",
            ">;"
        }
    .end annotation

    invoke-static {}, Lx4/t;->E()Z

    move-result v0

    if-eqz v0, :cond_1

    sget-boolean v0, Lmiui/os/Build;->IS_INTERNATIONAL_BUILD:Z

    if-eqz v0, :cond_0

    invoke-static {p1}, Lsf/b;->e(I)Ljava/util/ArrayList;

    move-result-object p0

    return-object p0

    :cond_0
    invoke-static {p0, p1}, Lsf/b;->d(ZI)Ljava/util/ArrayList;

    move-result-object p0

    return-object p0

    :cond_1
    sget-boolean v0, Lmiui/os/Build;->IS_INTERNATIONAL_BUILD:Z

    if-eqz v0, :cond_2

    invoke-static {p1}, Lsf/b;->c(I)Ljava/util/ArrayList;

    move-result-object p0

    return-object p0

    :cond_2
    invoke-static {p0}, Lsf/b;->b(Z)Ljava/util/ArrayList;

    move-result-object p0

    return-object p0
.end method
