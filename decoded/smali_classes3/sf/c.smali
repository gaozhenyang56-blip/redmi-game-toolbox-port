.class public Lsf/c;
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

.field private static final b:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/miui/common/card/models/BaseCardModel;",
            ">;"
        }
    .end annotation
.end field

.field private static final c:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/miui/common/card/models/BaseCardModel;",
            ">;"
        }
    .end annotation
.end field

.field private static final d:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/miui/common/card/models/BaseCardModel;",
            ">;"
        }
    .end annotation
.end field

.field private static e:Lcom/miui/securityscan/scanner/ScoreManager;

.field private static final f:Landroid/content/res/Resources;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lsf/c;->a:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lsf/c;->b:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lsf/c;->c:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lsf/c;->d:Ljava/util/ArrayList;

    invoke-static {}, Lcom/miui/securityscan/scanner/ScoreManager;->j()Lcom/miui/securityscan/scanner/ScoreManager;

    move-result-object v0

    sput-object v0, Lsf/c;->e:Lcom/miui/securityscan/scanner/ScoreManager;

    invoke-static {}, Lcom/miui/securitycenter/Application;->z()Landroid/content/res/Resources;

    move-result-object v0

    sput-object v0, Lsf/c;->f:Landroid/content/res/Resources;

    return-void
.end method

.method public static a()V
    .locals 2

    sget-object v0, Lsf/c;->c:Ljava/util/ArrayList;

    invoke-static {}, Lsf/c;->l()Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    return-void
.end method

.method public static b(Ljava/lang/String;)V
    .locals 1

    invoke-static {}, Lx4/a0;->D()Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Lcom/miui/common/card/models/ScanResultTopCardLiteModel;

    invoke-direct {v0}, Lcom/miui/common/card/models/ScanResultTopCardLiteModel;-><init>()V

    invoke-virtual {v0, p0}, Lcom/miui/common/card/models/ScanResultTopCardLiteModel;->setDescription(Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/miui/common/card/models/ScanResultTopCardModel;

    invoke-direct {v0}, Lcom/miui/common/card/models/ScanResultTopCardModel;-><init>()V

    invoke-virtual {v0, p0}, Lcom/miui/common/card/models/ScanResultTopCardModel;->setDescription(Ljava/lang/String;)V

    :goto_0
    sget-object p0, Lsf/c;->c:Ljava/util/ArrayList;

    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public static c(Landroid/content/Context;)V
    .locals 1

    sget-object v0, Lsf/c;->a:Ljava/util/ArrayList;

    invoke-static {p0}, Lsf/c;->m(Landroid/content/Context;)Ljava/util/ArrayList;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    return-void
.end method

.method public static d()V
    .locals 2

    invoke-static {}, Lx4/a0;->D()Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lsf/c;->a:Ljava/util/ArrayList;

    new-instance v1, Lq5/b;

    invoke-direct {v1}, Lq5/b;-><init>()V

    goto :goto_0

    :cond_0
    sget-object v0, Lsf/c;->a:Ljava/util/ArrayList;

    new-instance v1, Lq5/a;

    invoke-direct {v1}, Lq5/a;-><init>()V

    :goto_0
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public static e(Lcom/miui/securityscan/scanner/k$i;Z)V
    .locals 1

    sget-object v0, Lsf/c;->c:Ljava/util/ArrayList;

    invoke-static {p0, p1}, Lsf/c;->p(Lcom/miui/securityscan/scanner/k$i;Z)Ljava/util/ArrayList;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    return-void
.end method

.method public static f(Ljava/util/ArrayList;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/miui/common/card/models/BaseCardModel;",
            ">;)V"
        }
    .end annotation

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_0

    sget-object v0, Lsf/c;->c:Ljava/util/ArrayList;

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    :cond_0
    return-void
.end method

.method public static g(Ljava/util/ArrayList;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/miui/common/card/models/BaseCardModel;",
            ">;)V"
        }
    .end annotation

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_0

    sget-object v0, Lsf/c;->a:Ljava/util/ArrayList;

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    :cond_0
    return-void
.end method

.method public static h(Ljava/util/ArrayList;I)Ljava/util/ArrayList;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/miui/common/card/models/BaseCardModel;",
            ">;I)",
            "Ljava/util/ArrayList<",
            "Lcom/miui/common/card/models/BaseCardModel;",
            ">;"
        }
    .end annotation

    sget-boolean v0, Lmiui/os/Build;->IS_INTERNATIONAL_BUILD:Z

    if-eqz v0, :cond_6

    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result v0

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    const/4 v2, 0x0

    const/4 v3, -0x1

    move v4, v3

    :goto_0
    if-ge v2, v0, :cond_5

    invoke-virtual {p0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/miui/common/card/models/BaseCardModel;

    instance-of v6, v5, Lcom/miui/common/card/models/LineCardModel;

    if-eqz v6, :cond_1

    if-ne v4, v3, :cond_0

    move v4, v2

    goto :goto_2

    :cond_0
    invoke-virtual {v1, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    :cond_1
    instance-of v6, v5, Lcom/miui/common/card/models/AdvInternationalCardModel;

    if-eqz v6, :cond_4

    check-cast v5, Lcom/miui/common/card/models/AdvInternationalCardModel;

    invoke-virtual {v5}, Lcom/miui/common/card/models/AdvInternationalCardModel;->isLoaded()Z

    move-result v6

    const-string v7, "CardResultHelper"

    if-nez v6, :cond_3

    invoke-virtual {v5}, Lcom/miui/common/card/models/AdvCardModel;->getPositionId()Ljava/lang/String;

    move-result-object v6

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "advFacebookCardModel is not loaded placeid : "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v5}, Lcom/miui/common/card/models/AdvCardModel;->getTemplate()I

    move-result v8

    invoke-static {p1, v6, v8}, Lsf/f;->e(ILjava/lang/String;I)Lcom/miui/common/card/models/AdvInternationalCardModel;

    move-result-object v6

    if-eqz v6, :cond_2

    invoke-virtual {v6}, Lcom/miui/common/card/models/AdvInternationalCardModel;->isLoaded()Z

    move-result v8

    if-eqz v8, :cond_2

    invoke-virtual {v5, v6}, Lcom/miui/common/card/models/AdvInternationalCardModel;->fillAd(Lcom/miui/common/card/models/AdvInternationalCardModel;)V

    goto :goto_1

    :cond_2
    const-string v5, "international ad hide"

    invoke-static {v7, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    :cond_3
    const-string v4, "advFacebookCardModel is loaded"

    invoke-static {v7, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_4
    :goto_1
    move v4, v3

    :goto_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_5
    invoke-virtual {p0, v1}, Ljava/util/ArrayList;->removeAll(Ljava/util/Collection;)Z

    :cond_6
    return-object p0
.end method

.method public static i()V
    .locals 1

    sget-object v0, Lsf/c;->c:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    return-void
.end method

.method public static j()V
    .locals 1

    sget-object v0, Lsf/c;->a:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    return-void
.end method

.method public static k(Ljava/util/ArrayList;)Ljava/util/ArrayList;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/miui/common/card/models/BaseCardModel;",
            ">;)",
            "Ljava/util/ArrayList<",
            "Lcom/miui/common/card/models/BaseCardModel;",
            ">;"
        }
    .end annotation

    if-nez p0, :cond_0

    new-instance p0, Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    return-object p0

    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    :goto_0
    if-lez v1, :cond_2

    invoke-virtual {p0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    instance-of v2, v2, Lcom/miui/common/card/models/LineCardModel;

    if-eqz v2, :cond_1

    add-int/lit8 v2, v1, -0x1

    invoke-virtual {p0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    instance-of v2, v2, Lcom/miui/common/card/models/LineCardModel;

    if-eqz v2, :cond_1

    invoke-virtual {p0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/miui/common/card/models/BaseCardModel;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_1
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    :cond_2
    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->removeAll(Ljava/util/Collection;)Z

    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_3

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    instance-of v1, v1, Lcom/miui/common/card/models/LineCardModel;

    if-eqz v1, :cond_3

    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    :cond_3
    return-object p0
.end method

.method public static l()Ljava/util/ArrayList;
    .locals 7
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

    invoke-static {}, Lzf/f;->c()Lzf/f;

    move-result-object v1

    sget-object v2, Lzf/f$a;->a:Lzf/f$a;

    invoke-virtual {v1, v2}, Lzf/f;->b(Lzf/f$a;)Ljava/util/Map;

    move-result-object v1

    invoke-static {}, Lzf/f;->c()Lzf/f;

    move-result-object v2

    sget-object v3, Lzf/f$a;->b:Lzf/f$a;

    invoke-virtual {v2, v3}, Lzf/f;->b(Lzf/f$a;)Ljava/util/Map;

    move-result-object v2

    invoke-static {}, Lzf/f;->c()Lzf/f;

    move-result-object v3

    sget-object v4, Lzf/f$a;->c:Lzf/f$a;

    invoke-virtual {v3, v4}, Lzf/f;->b(Lzf/f$a;)Ljava/util/Map;

    move-result-object v3

    new-instance v4, Lcom/miui/common/card/models/ScanResultBottomCardModelNew;

    invoke-direct {v4}, Lcom/miui/common/card/models/ScanResultBottomCardModelNew;-><init>()V

    const v5, 0x7f0804cd

    invoke-virtual {v4, v5}, Lcom/miui/common/card/models/ScanResultBottomCardModelNew;->setSystemResId(I)V

    sget-object v5, Lsf/c;->f:Landroid/content/res/Resources;

    const v6, 0x7f120fad

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Lcom/miui/common/card/models/ScanResultBottomCardModelNew;->setSystemTitle(Ljava/lang/String;)V

    invoke-virtual {v4, v1}, Lcom/miui/common/card/models/ScanResultBottomCardModelNew;->setSystemMap(Ljava/util/Map;)V

    const v1, 0x7f0804cb

    invoke-virtual {v4, v1}, Lcom/miui/common/card/models/ScanResultBottomCardModelNew;->setCleanupResId(I)V

    const v1, 0x7f120fab

    invoke-virtual {v5, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v4, v1}, Lcom/miui/common/card/models/ScanResultBottomCardModelNew;->setCleanupTitle(Ljava/lang/String;)V

    invoke-virtual {v4, v2}, Lcom/miui/common/card/models/ScanResultBottomCardModelNew;->setCleanupMap(Ljava/util/Map;)V

    const v1, 0x7f0804c7

    invoke-virtual {v4, v1}, Lcom/miui/common/card/models/ScanResultBottomCardModelNew;->setSecurityResId(I)V

    const v1, 0x7f120fac

    invoke-virtual {v5, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v4, v1}, Lcom/miui/common/card/models/ScanResultBottomCardModelNew;->setSecurityTitle(Ljava/lang/String;)V

    invoke-virtual {v4, v3}, Lcom/miui/common/card/models/ScanResultBottomCardModelNew;->setSecurityMap(Ljava/util/Map;)V

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-object v0
.end method

.method public static m(Landroid/content/Context;)Ljava/util/ArrayList;
    .locals 11
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

    sget-object v0, Lsf/c;->b:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    invoke-static {}, Lo5/f;->f()Lo5/f;

    move-result-object v0

    invoke-virtual {v0}, Lo5/f;->d()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-lez v1, :cond_0

    move v1, v2

    goto :goto_0

    :cond_0
    move v1, v3

    :goto_0
    invoke-virtual {v0}, Lo5/f;->e()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    if-lez v4, :cond_1

    move v4, v2

    goto :goto_1

    :cond_1
    move v4, v3

    :goto_1
    invoke-virtual {v0}, Lo5/f;->b()Ljava/util/List;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    if-lez v5, :cond_2

    move v5, v2

    goto :goto_2

    :cond_2
    move v5, v3

    :goto_2
    invoke-virtual {v0}, Lo5/f;->a()Ljava/util/List;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v6

    if-lez v6, :cond_3

    move v6, v2

    goto :goto_3

    :cond_3
    move v6, v3

    :goto_3
    invoke-virtual {v0}, Lo5/f;->c()Ljava/util/List;

    move-result-object v7

    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v7

    if-lez v7, :cond_4

    goto :goto_4

    :cond_4
    move v2, v3

    :goto_4
    if-eqz v1, :cond_5

    invoke-virtual {v0}, Lo5/f;->d()Ljava/util/List;

    move-result-object v7

    if-eqz v7, :cond_5

    invoke-interface {v7}, Ljava/util/List;->isEmpty()Z

    move-result v8

    if-nez v8, :cond_5

    move v8, v3

    :goto_5
    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v9

    if-ge v8, v9, :cond_5

    invoke-interface {v7, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/miui/securityscan/model/AbsModel;

    new-instance v10, Lq5/e;

    invoke-direct {v10}, Lq5/e;-><init>()V

    invoke-virtual {v10, v9}, Lq5/e;->c(Lcom/miui/securityscan/model/AbsModel;)V

    move-object v9, p0

    check-cast v9, Lcom/miui/firstaidkit/FirstAidKitActivity;

    invoke-virtual {v10, v9}, Lq5/e;->d(Lcom/miui/firstaidkit/FirstAidKitActivity;)V

    sget-object v9, Lsf/c;->b:Ljava/util/ArrayList;

    invoke-virtual {v9, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v8, v8, 0x1

    goto :goto_5

    :cond_5
    if-eqz v4, :cond_6

    invoke-virtual {v0}, Lo5/f;->e()Ljava/util/List;

    move-result-object v7

    if-eqz v7, :cond_6

    invoke-interface {v7}, Ljava/util/List;->isEmpty()Z

    move-result v8

    if-nez v8, :cond_6

    move v8, v3

    :goto_6
    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v9

    if-ge v8, v9, :cond_6

    invoke-interface {v7, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/miui/securityscan/model/AbsModel;

    new-instance v10, Lq5/e;

    invoke-direct {v10}, Lq5/e;-><init>()V

    invoke-virtual {v10, v9}, Lq5/e;->c(Lcom/miui/securityscan/model/AbsModel;)V

    move-object v9, p0

    check-cast v9, Lcom/miui/firstaidkit/FirstAidKitActivity;

    invoke-virtual {v10, v9}, Lq5/e;->d(Lcom/miui/firstaidkit/FirstAidKitActivity;)V

    sget-object v9, Lsf/c;->b:Ljava/util/ArrayList;

    invoke-virtual {v9, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v8, v8, 0x1

    goto :goto_6

    :cond_6
    if-eqz v5, :cond_7

    invoke-virtual {v0}, Lo5/f;->b()Ljava/util/List;

    move-result-object v7

    if-eqz v7, :cond_7

    invoke-interface {v7}, Ljava/util/List;->isEmpty()Z

    move-result v8

    if-nez v8, :cond_7

    move v8, v3

    :goto_7
    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v9

    if-ge v8, v9, :cond_7

    invoke-interface {v7, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/miui/securityscan/model/AbsModel;

    new-instance v10, Lq5/e;

    invoke-direct {v10}, Lq5/e;-><init>()V

    invoke-virtual {v10, v9}, Lq5/e;->c(Lcom/miui/securityscan/model/AbsModel;)V

    move-object v9, p0

    check-cast v9, Lcom/miui/firstaidkit/FirstAidKitActivity;

    invoke-virtual {v10, v9}, Lq5/e;->d(Lcom/miui/firstaidkit/FirstAidKitActivity;)V

    sget-object v9, Lsf/c;->b:Ljava/util/ArrayList;

    invoke-virtual {v9, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v8, v8, 0x1

    goto :goto_7

    :cond_7
    if-eqz v6, :cond_8

    invoke-virtual {v0}, Lo5/f;->a()Ljava/util/List;

    move-result-object v7

    if-eqz v7, :cond_8

    invoke-interface {v7}, Ljava/util/List;->isEmpty()Z

    move-result v8

    if-nez v8, :cond_8

    move v8, v3

    :goto_8
    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v9

    if-ge v8, v9, :cond_8

    invoke-interface {v7, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/miui/securityscan/model/AbsModel;

    new-instance v10, Lq5/e;

    invoke-direct {v10}, Lq5/e;-><init>()V

    invoke-virtual {v10, v9}, Lq5/e;->c(Lcom/miui/securityscan/model/AbsModel;)V

    move-object v9, p0

    check-cast v9, Lcom/miui/firstaidkit/FirstAidKitActivity;

    invoke-virtual {v10, v9}, Lq5/e;->d(Lcom/miui/firstaidkit/FirstAidKitActivity;)V

    sget-object v9, Lsf/c;->b:Ljava/util/ArrayList;

    invoke-virtual {v9, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v8, v8, 0x1

    goto :goto_8

    :cond_8
    if-eqz v2, :cond_9

    invoke-virtual {v0}, Lo5/f;->c()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_9

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v7

    if-nez v7, :cond_9

    move v7, v3

    :goto_9
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v8

    if-ge v7, v8, :cond_9

    invoke-interface {v0, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/miui/securityscan/model/AbsModel;

    new-instance v9, Lq5/e;

    invoke-direct {v9}, Lq5/e;-><init>()V

    invoke-virtual {v9, v8}, Lq5/e;->c(Lcom/miui/securityscan/model/AbsModel;)V

    move-object v8, p0

    check-cast v8, Lcom/miui/firstaidkit/FirstAidKitActivity;

    invoke-virtual {v9, v8}, Lq5/e;->d(Lcom/miui/firstaidkit/FirstAidKitActivity;)V

    sget-object v8, Lsf/c;->b:Ljava/util/ArrayList;

    invoke-virtual {v8, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v7, v7, 0x1

    goto :goto_9

    :cond_9
    new-instance v0, Lq5/d;

    invoke-direct {v0}, Lq5/d;-><init>()V

    move-object v7, p0

    check-cast v7, Lcom/miui/firstaidkit/FirstAidKitActivity;

    invoke-virtual {v0, v7}, Lq5/d;->d(Lcom/miui/firstaidkit/FirstAidKitActivity;)V

    const-string v7, "drawable://2131231946"

    invoke-virtual {v0, v7}, Lcom/miui/common/card/models/BaseCardModel;->setIcon(Ljava/lang/String;)V

    const v7, 0x7f1208af

    invoke-virtual {p0, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Lq5/d;->e(Ljava/lang/String;)V

    new-instance p0, Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    new-instance v7, Lcom/miui/firstaidkit/model/FeedBackModel;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const-string v8, ""

    invoke-direct {v7, v8, v3}, Lcom/miui/firstaidkit/model/FeedBackModel;-><init>(Ljava/lang/String;Ljava/lang/Integer;)V

    invoke-interface {p0, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-virtual {v0, p0}, Lq5/d;->c(Ljava/util/List;)V

    sget-object p0, Lsf/c;->b:Ljava/util/ArrayList;

    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v0, Lq5/c;

    invoke-direct {v0}, Lq5/c;-><init>()V

    invoke-virtual {v0, v1}, Lq5/c;->j(Z)V

    invoke-virtual {v0, v4}, Lq5/c;->g(Z)V

    invoke-virtual {v0, v5}, Lq5/c;->h(Z)V

    invoke-virtual {v0, v6}, Lq5/c;->f(Z)V

    invoke-virtual {v0, v2}, Lq5/c;->i(Z)V

    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, p0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    return-object v0
.end method

.method public static n()Ljava/util/ArrayList;
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

    sget-object v1, Lsf/c;->a:Ljava/util/ArrayList;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    return-object v0
.end method

.method public static o(Ljava/util/List;Lcom/miui/common/card/models/BaseCardModel;)I
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/miui/common/card/models/BaseCardModel;",
            ">;",
            "Lcom/miui/common/card/models/BaseCardModel;",
            ")I"
        }
    .end annotation

    if-eqz p0, :cond_2

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    invoke-interface {p0, p1}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result p1

    if-lez p1, :cond_1

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    if-ge p1, v0, :cond_1

    add-int/lit8 v0, p1, -0x1

    add-int/lit8 v1, p1, 0x1

    if-ltz v0, :cond_1

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_1

    invoke-interface {p0, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    instance-of p0, p0, Lcom/miui/common/card/models/LineCardModel;

    if-eqz p0, :cond_1

    return v0

    :cond_1
    return p1

    :cond_2
    :goto_0
    const/4 p0, -0x1

    return p0
.end method

.method public static p(Lcom/miui/securityscan/scanner/k$i;Z)Ljava/util/ArrayList;
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/miui/securityscan/scanner/k$i;",
            "Z)",
            "Ljava/util/ArrayList<",
            "Lcom/miui/common/card/models/BaseCardModel;",
            ">;"
        }
    .end annotation

    sget-object v0, Lsf/c;->d:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    sget-object v0, Lsf/c;->e:Lcom/miui/securityscan/scanner/ScoreManager;

    invoke-virtual {v0}, Lcom/miui/securityscan/scanner/ScoreManager;->l()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_9

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    move-object v4, v1

    check-cast v4, Lcom/miui/securityscan/model/GroupModel;

    invoke-virtual {v4}, Lcom/miui/securityscan/model/GroupModel;->getCurModel()Lcom/miui/securityscan/model/AbsModel;

    move-result-object v1

    invoke-virtual {v1}, Lcom/miui/securityscan/model/AbsModel;->isSafe()Lcom/miui/securityscan/model/AbsModel$State;

    move-result-object v2

    sget-object v3, Lcom/miui/securityscan/model/AbsModel$State;->DANGER:Lcom/miui/securityscan/model/AbsModel$State;

    if-ne v2, v3, :cond_0

    const/4 v2, 0x0

    invoke-virtual {v1}, Lcom/miui/securityscan/model/AbsModel;->getIndex()I

    move-result v3

    const/16 v5, 0xb

    if-eq v3, v5, :cond_8

    const/16 v5, 0x22

    const v6, 0x7f120f92

    if-eq v3, v5, :cond_7

    const/16 v5, 0x24

    const-string v7, "drawable://2131232879"

    if-eq v3, v5, :cond_6

    const/16 v5, 0x1a

    const v8, 0x7f120f96

    if-eq v3, v5, :cond_5

    const/16 v5, 0x1b

    const v9, 0x7f120f9d

    if-eq v3, v5, :cond_2

    const/16 v5, 0x1f

    if-eq v3, v5, :cond_8

    const/16 v5, 0x20

    if-eq v3, v5, :cond_1

    packed-switch v3, :pswitch_data_0

    packed-switch v3, :pswitch_data_1

    packed-switch v3, :pswitch_data_2

    const-string v5, "drawable://"

    packed-switch v3, :pswitch_data_3

    packed-switch v3, :pswitch_data_4

    goto/16 :goto_8

    :pswitch_0
    invoke-static {}, Lcom/miui/common/card/models/CardModelMaker;->getInstance()Lcom/miui/common/card/models/CardModelMaker;

    move-result-object v2

    sget-object v3, Lsf/c;->f:Landroid/content/res/Resources;

    const v4, 0x7f120079

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    new-instance v4, Lcom/miui/common/card/functions/OptimizeFunction;

    invoke-direct {v4, p0, v1}, Lcom/miui/common/card/functions/OptimizeFunction;-><init>(Lcom/miui/securityscan/scanner/k$i;Lcom/miui/securityscan/model/AbsModel;)V

    invoke-virtual {v2, v1, v3, v4}, Lcom/miui/common/card/models/CardModelMaker;->getFuncTopBannerCardModel(Lcom/miui/securityscan/model/AbsModel;Ljava/lang/String;Lcom/miui/common/card/functions/BaseFunction;)Lcom/miui/common/card/models/FunNoIconCardModel;

    move-result-object v2

    const v1, 0x7f0601a2

    invoke-virtual {v2, v1}, Lcom/miui/common/card/models/FunNoIconCardModel;->setTitleTextColor(I)V

    const/4 v1, 0x0

    invoke-virtual {v2, v1}, Lcom/miui/common/card/models/FunctionCardModel;->setLongClickable(Z)V

    goto/16 :goto_8

    :pswitch_1
    invoke-static {}, Lcom/miui/common/card/models/CardModelMaker;->getInstance()Lcom/miui/common/card/models/CardModelMaker;

    move-result-object v2

    sget-object v3, Lsf/c;->f:Landroid/content/res/Resources;

    invoke-virtual {v3, v8}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    new-instance v4, Lcom/miui/common/card/functions/OptimizeFunction;

    invoke-direct {v4, p0, v1}, Lcom/miui/common/card/functions/OptimizeFunction;-><init>(Lcom/miui/securityscan/scanner/k$i;Lcom/miui/securityscan/model/AbsModel;)V

    const-string v5, "drawable://2131234558"

    goto/16 :goto_4

    :pswitch_2
    invoke-static {}, Lcom/miui/common/card/models/CardModelMaker;->getInstance()Lcom/miui/common/card/models/CardModelMaker;

    move-result-object v2

    sget-object v3, Lsf/c;->f:Landroid/content/res/Resources;

    invoke-virtual {v3, v8}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    new-instance v4, Lcom/miui/common/card/functions/OptimizeFunction;

    invoke-direct {v4, p0, v1}, Lcom/miui/common/card/functions/OptimizeFunction;-><init>(Lcom/miui/securityscan/scanner/k$i;Lcom/miui/securityscan/model/AbsModel;)V

    const-string v5, "drawable://2131232985"

    goto/16 :goto_4

    :pswitch_3
    invoke-static {}, Lcom/miui/common/card/models/CardModelMaker;->getInstance()Lcom/miui/common/card/models/CardModelMaker;

    move-result-object v2

    sget-object v3, Lsf/c;->f:Landroid/content/res/Resources;

    invoke-virtual {v3, v8}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    new-instance v4, Lcom/miui/common/card/functions/OptimizeFunction;

    invoke-direct {v4, p0, v1}, Lcom/miui/common/card/functions/OptimizeFunction;-><init>(Lcom/miui/securityscan/scanner/k$i;Lcom/miui/securityscan/model/AbsModel;)V

    const-string v5, "drawable://2131234726"

    goto/16 :goto_4

    :pswitch_4
    invoke-static {}, Lcom/miui/common/card/models/CardModelMaker;->getInstance()Lcom/miui/common/card/models/CardModelMaker;

    move-result-object v2

    sget-object v3, Lsf/c;->f:Landroid/content/res/Resources;

    const v4, 0x7f12161c

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    new-instance v4, Lcom/miui/common/card/functions/OptimizeFunction;

    invoke-direct {v4, p0, v1}, Lcom/miui/common/card/functions/OptimizeFunction;-><init>(Lcom/miui/securityscan/scanner/k$i;Lcom/miui/securityscan/model/AbsModel;)V

    const-string v5, "drawable://2131232878"

    goto/16 :goto_4

    :pswitch_5
    invoke-static {}, Lcom/miui/common/card/models/CardModelMaker;->getInstance()Lcom/miui/common/card/models/CardModelMaker;

    move-result-object v2

    sget-object v3, Lsf/c;->f:Landroid/content/res/Resources;

    invoke-virtual {v3, v8}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    new-instance v4, Lcom/miui/common/card/functions/OptimizeFunction;

    invoke-direct {v4, p0, v1}, Lcom/miui/common/card/functions/OptimizeFunction;-><init>(Lcom/miui/securityscan/scanner/k$i;Lcom/miui/securityscan/model/AbsModel;)V

    const-string v5, "drawable://2131233085"

    goto/16 :goto_4

    :pswitch_6
    invoke-static {}, Lcom/miui/common/card/models/CardModelMaker;->getInstance()Lcom/miui/common/card/models/CardModelMaker;

    move-result-object v2

    sget-object v3, Lsf/c;->f:Landroid/content/res/Resources;

    const v4, 0x7f12052c

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lc4/j;->b()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    new-instance v5, Lcom/miui/common/card/functions/OptimizeFunction;

    invoke-direct {v5, p0, v1}, Lcom/miui/common/card/functions/OptimizeFunction;-><init>(Lcom/miui/securityscan/scanner/k$i;Lcom/miui/securityscan/model/AbsModel;)V

    goto :goto_1

    :pswitch_7
    invoke-static {}, Lcom/miui/common/card/models/CardModelMaker;->getInstance()Lcom/miui/common/card/models/CardModelMaker;

    move-result-object v2

    sget-object v3, Lsf/c;->f:Landroid/content/res/Resources;

    const v4, 0x7f120466

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    new-instance v4, Lcom/miui/common/card/functions/OptimizeFunction;

    invoke-direct {v4, p0, v1}, Lcom/miui/common/card/functions/OptimizeFunction;-><init>(Lcom/miui/securityscan/scanner/k$i;Lcom/miui/securityscan/model/AbsModel;)V

    const-string v5, "drawable://2131233083"

    goto/16 :goto_4

    :pswitch_8
    invoke-static {}, Lcom/miui/common/card/models/CardModelMaker;->getInstance()Lcom/miui/common/card/models/CardModelMaker;

    move-result-object v2

    sget-object v3, Lsf/c;->f:Landroid/content/res/Resources;

    const v4, 0x7f120469

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    new-instance v4, Lcom/miui/common/card/functions/OptimizeFunction;

    invoke-direct {v4, p0, v1}, Lcom/miui/common/card/functions/OptimizeFunction;-><init>(Lcom/miui/securityscan/scanner/k$i;Lcom/miui/securityscan/model/AbsModel;)V

    const-string v5, "drawable://2131233084"

    goto/16 :goto_4

    :pswitch_9
    invoke-static {}, Lcom/miui/common/card/models/CardModelMaker;->getInstance()Lcom/miui/common/card/models/CardModelMaker;

    move-result-object v2

    sget-object v3, Lsf/c;->f:Landroid/content/res/Resources;

    const v4, 0x7f120f93

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    new-instance v4, Lcom/miui/common/card/functions/OptimizeFunction;

    invoke-direct {v4, p0, v1}, Lcom/miui/common/card/functions/OptimizeFunction;-><init>(Lcom/miui/securityscan/scanner/k$i;Lcom/miui/securityscan/model/AbsModel;)V

    goto :goto_2

    :pswitch_a
    invoke-static {}, Lcom/miui/common/card/models/CardModelMaker;->getInstance()Lcom/miui/common/card/models/CardModelMaker;

    move-result-object v2

    sget-object v3, Lsf/c;->f:Landroid/content/res/Resources;

    const v4, 0x7f12052b

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lc4/j;->b()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    new-instance v5, Lcom/miui/common/card/functions/OptimizeFunction;

    invoke-direct {v5, p0, v1}, Lcom/miui/common/card/functions/OptimizeFunction;-><init>(Lcom/miui/securityscan/scanner/k$i;Lcom/miui/securityscan/model/AbsModel;)V

    :goto_1
    invoke-virtual {v2, v1, v3, v4, v5}, Lcom/miui/common/card/models/CardModelMaker;->getFuncBtnBottomCardModel(Lcom/miui/securityscan/model/AbsModel;Ljava/lang/String;Ljava/lang/String;Lcom/miui/common/card/functions/BaseFunction;)Lcom/miui/common/card/models/FuncBtnBottomCardModel;

    move-result-object v2

    goto/16 :goto_8

    :pswitch_b
    invoke-static {}, Lcom/miui/common/card/models/CardModelMaker;->getInstance()Lcom/miui/common/card/models/CardModelMaker;

    move-result-object v2

    sget-object v3, Lsf/c;->f:Landroid/content/res/Resources;

    invoke-virtual {v3, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    new-instance v4, Lcom/miui/common/card/functions/OptimizeFunction;

    invoke-direct {v4, p0, v1}, Lcom/miui/common/card/functions/OptimizeFunction;-><init>(Lcom/miui/securityscan/scanner/k$i;Lcom/miui/securityscan/model/AbsModel;)V

    :goto_2
    invoke-virtual {v2, v1, v3, v4}, Lcom/miui/common/card/models/CardModelMaker;->getFuncTopBannerCardModel(Lcom/miui/securityscan/model/AbsModel;Ljava/lang/String;Lcom/miui/common/card/functions/BaseFunction;)Lcom/miui/common/card/models/FunNoIconCardModel;

    move-result-object v2

    goto/16 :goto_8

    :pswitch_c
    invoke-static {}, Lcom/miui/common/card/models/CardModelMaker;->getInstance()Lcom/miui/common/card/models/CardModelMaker;

    move-result-object v2

    sget-object v1, Lsf/c;->f:Landroid/content/res/Resources;

    const v3, 0x7f120fa1

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    const v3, 0x7f120f9f

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    const v3, 0x7f120f95

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v7

    const v3, 0x7f120fa3

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v8

    const/4 v9, 0x1

    const/4 v10, 0x0

    goto/16 :goto_7

    :pswitch_d
    invoke-static {}, Lcom/miui/common/card/models/CardModelMaker;->getInstance()Lcom/miui/common/card/models/CardModelMaker;

    move-result-object v2

    sget-object v3, Lsf/c;->f:Landroid/content/res/Resources;

    invoke-virtual {v3, v8}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    new-instance v4, Lcom/miui/common/card/functions/OptimizeFunction;

    invoke-direct {v4, p0, v1}, Lcom/miui/common/card/functions/OptimizeFunction;-><init>(Lcom/miui/securityscan/scanner/k$i;Lcom/miui/securityscan/model/AbsModel;)V

    const-string v5, "drawable://2131234557"

    goto/16 :goto_4

    :pswitch_e
    invoke-static {}, Lcom/miui/common/card/models/CardModelMaker;->getInstance()Lcom/miui/common/card/models/CardModelMaker;

    move-result-object v2

    sget-object v3, Lsf/c;->f:Landroid/content/res/Resources;

    const v4, 0x7f120f91

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    new-instance v4, Lcom/miui/common/card/functions/OptimizeFunction;

    invoke-direct {v4, p0, v1}, Lcom/miui/common/card/functions/OptimizeFunction;-><init>(Lcom/miui/securityscan/scanner/k$i;Lcom/miui/securityscan/model/AbsModel;)V

    goto :goto_3

    :pswitch_f
    invoke-static {}, Lcom/miui/common/card/models/CardModelMaker;->getInstance()Lcom/miui/common/card/models/CardModelMaker;

    move-result-object v2

    sget-object v3, Lsf/c;->f:Landroid/content/res/Resources;

    const v4, 0x7f120f9c

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    new-instance v4, Lcom/miui/common/card/functions/OptimizeFunction;

    invoke-direct {v4, p0, v1}, Lcom/miui/common/card/functions/OptimizeFunction;-><init>(Lcom/miui/securityscan/scanner/k$i;Lcom/miui/securityscan/model/AbsModel;)V

    :goto_3
    invoke-virtual {v2, v1, v3, v7, v4}, Lcom/miui/common/card/models/CardModelMaker;->getFuncBtnBottomCardModel(Lcom/miui/securityscan/model/AbsModel;Ljava/lang/String;Ljava/lang/String;Lcom/miui/common/card/functions/BaseFunction;)Lcom/miui/common/card/models/FuncBtnBottomCardModel;

    move-result-object v2

    goto/16 :goto_8

    :pswitch_10
    invoke-static {}, Lcom/miui/common/card/models/CardModelMaker;->getInstance()Lcom/miui/common/card/models/CardModelMaker;

    move-result-object v2

    sget-object v3, Lsf/c;->f:Landroid/content/res/Resources;

    const v4, 0x7f120f98

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    new-instance v4, Lcom/miui/common/card/functions/OptimizeFunction;

    invoke-direct {v4, p0, v1}, Lcom/miui/common/card/functions/OptimizeFunction;-><init>(Lcom/miui/securityscan/scanner/k$i;Lcom/miui/securityscan/model/AbsModel;)V

    const-string v5, "drawable://2131233086"

    goto :goto_4

    :pswitch_11
    invoke-static {}, Lcom/miui/common/card/models/CardModelMaker;->getInstance()Lcom/miui/common/card/models/CardModelMaker;

    move-result-object v2

    sget-object v3, Lsf/c;->f:Landroid/content/res/Resources;

    const v4, 0x7f120f8e

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    new-instance v4, Lcom/miui/common/card/functions/OptimizeFunction;

    invoke-direct {v4, p0, v1}, Lcom/miui/common/card/functions/OptimizeFunction;-><init>(Lcom/miui/securityscan/scanner/k$i;Lcom/miui/securityscan/model/AbsModel;)V

    invoke-virtual {v2, v1, v3, v4}, Lcom/miui/common/card/models/CardModelMaker;->getFuncCloudSpaceCardModel(Lcom/miui/securityscan/model/AbsModel;Ljava/lang/String;Lcom/miui/common/card/functions/BaseFunction;)Lcom/miui/common/card/models/FuncCloudSpaceCardModel;

    move-result-object v2

    goto/16 :goto_8

    :pswitch_12
    invoke-static {}, Lcom/miui/common/card/models/CardModelMaker;->getInstance()Lcom/miui/common/card/models/CardModelMaker;

    move-result-object v2

    sget-object v3, Lsf/c;->f:Landroid/content/res/Resources;

    invoke-virtual {v3, v8}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    new-instance v4, Lcom/miui/common/card/functions/OptimizeFunction;

    invoke-direct {v4, p0, v1}, Lcom/miui/common/card/functions/OptimizeFunction;-><init>(Lcom/miui/securityscan/scanner/k$i;Lcom/miui/securityscan/model/AbsModel;)V

    const-string v5, "drawable://2131233082"

    goto :goto_4

    :pswitch_13
    invoke-static {}, Lcom/miui/common/card/models/CardModelMaker;->getInstance()Lcom/miui/common/card/models/CardModelMaker;

    move-result-object v2

    sget-object v3, Lsf/c;->f:Landroid/content/res/Resources;

    invoke-virtual {v3, v9}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    new-instance v4, Lcom/miui/common/card/functions/OptimizeFunction;

    invoke-direct {v4, p0, v1}, Lcom/miui/common/card/functions/OptimizeFunction;-><init>(Lcom/miui/securityscan/scanner/k$i;Lcom/miui/securityscan/model/AbsModel;)V

    const-string v5, "pkg_icon://com.android.updater"

    :goto_4
    invoke-virtual {v2, v1, v3, v5, v4}, Lcom/miui/common/card/models/CardModelMaker;->getFuncBtnBottomCardModel(Lcom/miui/securityscan/model/AbsModel;Ljava/lang/String;Ljava/lang/String;Lcom/miui/common/card/functions/BaseFunction;)Lcom/miui/common/card/models/FuncBtnBottomCardModel;

    move-result-object v2

    goto/16 :goto_8

    :cond_1
    invoke-static {}, Lcom/miui/common/card/models/CardModelMaker;->getInstance()Lcom/miui/common/card/models/CardModelMaker;

    move-result-object v2

    check-cast v1, Lcom/miui/securityscan/model/manualitem/FlowRankModel;

    sget-object v3, Lsf/c;->f:Landroid/content/res/Resources;

    const v4, 0x7f120f99

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, p0, v1, v3}, Lcom/miui/common/card/models/CardModelMaker;->getListTitleFlowRankCardModel(Lcom/miui/securityscan/scanner/k$i;Lcom/miui/securityscan/model/manualitem/FlowRankModel;Ljava/lang/String;)Lcom/miui/common/card/models/ListTitleFlowRankCardModel;

    move-result-object v2

    goto/16 :goto_8

    :cond_2
    invoke-static {}, Lcom/miui/common/card/models/CardModelMaker;->getInstance()Lcom/miui/common/card/models/CardModelMaker;

    move-result-object v2

    sget-boolean v3, Lmiui/os/Build;->IS_INTERNATIONAL_BUILD:Z

    if-eqz v3, :cond_3

    sget-object v3, Lsf/c;->f:Landroid/content/res/Resources;

    invoke-virtual {v3, v9}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    goto :goto_5

    :cond_3
    sget-object v3, Lsf/c;->f:Landroid/content/res/Resources;

    const v4, 0x7f1204b0

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    :goto_5
    sget-boolean v4, Lmiui/os/Build;->IS_INTERNATIONAL_BUILD:Z

    if-eqz v4, :cond_4

    const-string v4, "pkg_icon://com.xiaomi.market"

    goto :goto_6

    :cond_4
    const-string v4, "drawable://2131233081"

    :goto_6
    new-instance v5, Lcom/miui/common/card/functions/OptimizeFunction;

    invoke-direct {v5, p0, v1}, Lcom/miui/common/card/functions/OptimizeFunction;-><init>(Lcom/miui/securityscan/scanner/k$i;Lcom/miui/securityscan/model/AbsModel;)V

    goto/16 :goto_1

    :cond_5
    invoke-static {}, Lcom/miui/common/card/models/CardModelMaker;->getInstance()Lcom/miui/common/card/models/CardModelMaker;

    move-result-object v2

    sget-object v3, Lsf/c;->f:Landroid/content/res/Resources;

    invoke-virtual {v3, v8}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    new-instance v4, Lcom/miui/common/card/functions/OptimizeFunction;

    invoke-direct {v4, p0, v1}, Lcom/miui/common/card/functions/OptimizeFunction;-><init>(Lcom/miui/securityscan/scanner/k$i;Lcom/miui/securityscan/model/AbsModel;)V

    goto/16 :goto_2

    :cond_6
    invoke-static {}, Lcom/miui/common/card/models/CardModelMaker;->getInstance()Lcom/miui/common/card/models/CardModelMaker;

    move-result-object v2

    sget-object v3, Lsf/c;->f:Landroid/content/res/Resources;

    const v4, 0x7f120f97

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    new-instance v4, Lcom/miui/common/card/functions/OptimizeFunction;

    invoke-direct {v4, p0, v1}, Lcom/miui/common/card/functions/OptimizeFunction;-><init>(Lcom/miui/securityscan/scanner/k$i;Lcom/miui/securityscan/model/AbsModel;)V

    goto/16 :goto_3

    :cond_7
    invoke-static {}, Lcom/miui/common/card/models/CardModelMaker;->getInstance()Lcom/miui/common/card/models/CardModelMaker;

    move-result-object v2

    sget-object v3, Lsf/c;->f:Landroid/content/res/Resources;

    invoke-virtual {v3, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    new-instance v4, Lcom/miui/common/card/functions/OptimizeFunction;

    invoke-direct {v4, p0, v1}, Lcom/miui/common/card/functions/OptimizeFunction;-><init>(Lcom/miui/securityscan/scanner/k$i;Lcom/miui/securityscan/model/AbsModel;)V

    const-string v5, "drawable://2131232887"

    goto :goto_4

    :cond_8
    :pswitch_14
    invoke-static {}, Lcom/miui/common/card/models/CardModelMaker;->getInstance()Lcom/miui/common/card/models/CardModelMaker;

    move-result-object v2

    sget-object v1, Lsf/c;->f:Landroid/content/res/Resources;

    const v3, 0x7f120fa0

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    const v3, 0x7f120f9e

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    const v3, 0x7f120f94

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v7

    const/4 v8, 0x0

    const/4 v9, 0x1

    const v10, 0x7f080f04

    :goto_7
    move-object v3, p0

    invoke-virtual/range {v2 .. v10}, Lcom/miui/common/card/models/CardModelMaker;->getListTitleCheckboxCardModel(Lcom/miui/securityscan/scanner/k$i;Lcom/miui/securityscan/model/GroupModel;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZI)Lcom/miui/common/card/models/ListTitleCheckboxCardModel;

    move-result-object v2

    :goto_8
    if-eqz v2, :cond_0

    sget-object v1, Lsf/c;->d:Ljava/util/ArrayList;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    if-eqz p1, :cond_0

    new-instance v2, Lcom/miui/common/card/models/LineCardModel;

    invoke-direct {v2}, Lcom/miui/common/card/models/LineCardModel;-><init>()V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    :cond_9
    new-instance p0, Ljava/util/ArrayList;

    sget-object p1, Lsf/c;->d:Ljava/util/ArrayList;

    invoke-direct {p0, p1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    return-object p0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_13
        :pswitch_12
        :pswitch_11
        :pswitch_14
        :pswitch_10
        :pswitch_f
        :pswitch_14
        :pswitch_e
        :pswitch_d
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0xd
        :pswitch_c
        :pswitch_c
        :pswitch_c
        :pswitch_c
        :pswitch_c
        :pswitch_c
        :pswitch_c
        :pswitch_c
    .end packed-switch

    :pswitch_data_2
    .packed-switch 0x16
        :pswitch_14
        :pswitch_14
        :pswitch_b
    .end packed-switch

    :pswitch_data_3
    .packed-switch 0x26
        :pswitch_a
        :pswitch_14
        :pswitch_9
    .end packed-switch

    :pswitch_data_4
    .packed-switch 0x3a
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static q()Ljava/util/ArrayList;
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

    sget-object v1, Lsf/c;->c:Ljava/util/ArrayList;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-static {v0}, Lsf/c;->k(Ljava/util/ArrayList;)Ljava/util/ArrayList;

    move-result-object v0

    return-object v0
.end method

.method public static r(Lcom/miui/common/card/CardViewAdapter;Ljava/lang/String;)V
    .locals 3

    if-nez p0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/miui/common/card/CardViewAdapter;->getModelList()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/miui/common/card/models/BaseCardModel;

    instance-of v2, v1, Lcom/miui/common/card/models/AdvCardModel;

    if-eqz v2, :cond_1

    check-cast v1, Lcom/miui/common/card/models/AdvCardModel;

    invoke-virtual {v1}, Lcom/miui/common/card/models/AdvCardModel;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {p0}, Lcom/miui/common/card/CardViewAdapter;->notifyDataSetChanged()V

    :cond_2
    return-void
.end method

.method public static s(Lcom/miui/common/card/CardViewRvAdapter;Ljava/lang/String;)V
    .locals 3

    if-nez p0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/miui/common/card/CardViewRvAdapter;->getModelList()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/miui/common/card/models/BaseCardModel;

    instance-of v2, v1, Lcom/miui/common/card/models/AdvCardModel;

    if-eqz v2, :cond_1

    check-cast v1, Lcom/miui/common/card/models/AdvCardModel;

    invoke-virtual {v1}, Lcom/miui/common/card/models/AdvCardModel;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$h;->notifyDataSetChanged()V

    :cond_2
    return-void
.end method

.method public static t()V
    .locals 1

    sget-object v0, Lsf/c;->a:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    sget-object v0, Lsf/c;->b:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    return-void
.end method

.method public static u(Ljava/util/List;Lcom/miui/common/card/models/BaseCardModel;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/miui/common/card/models/BaseCardModel;",
            ">;",
            "Lcom/miui/common/card/models/BaseCardModel;",
            ")V"
        }
    .end annotation

    if-eqz p0, :cond_2

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    invoke-interface {p0, p1}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v0

    if-lez v0, :cond_1

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    if-ge v0, v1, :cond_1

    add-int/lit8 v1, v0, -0x1

    add-int/lit8 v0, v0, 0x1

    if-ltz v1, :cond_1

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v2

    if-ge v0, v2, :cond_1

    invoke-interface {p0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    instance-of v0, v0, Lcom/miui/common/card/models/LineCardModel;

    if-eqz v0, :cond_1

    invoke-interface {p0, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    :cond_1
    invoke-interface {p0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    :cond_2
    :goto_0
    return-void
.end method
