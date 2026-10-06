.class public final Lcom/miui/international/bean/OptimizeGlobalAdBean;
.super Lcom/miui/optimizemanage/optimizeresult/c;
.source "SourceFile"

# interfaces
.implements Ljava/io/Serializable;
.implements Lcom/miui/international/bean/GlobalAdBaseBean;


# annotations
.annotation build Landroidx/annotation/Keep;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/international/bean/OptimizeGlobalAdBean$a;
    }
.end annotation

.annotation build Lkotlin/jvm/internal/SourceDebugExtension;
    value = {
        "SMAP\nOptimizeGlobalAdBean.kt\nKotlin\n*S Kotlin\n*F\n+ 1 OptimizeGlobalAdBean.kt\ncom/miui/international/bean/OptimizeGlobalAdBean\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,59:1\n350#2,7:60\n*S KotlinDebug\n*F\n+ 1 OptimizeGlobalAdBean.kt\ncom/miui/international/bean/OptimizeGlobalAdBean\n*L\n39#1:60,7\n*E\n"
    }
.end annotation


# instance fields
.field private nativeAd:Ljava/lang/Object;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private placeId:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private position:I

.field private status:I


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 3
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "placeId"

    invoke-static {p1, v0}, Lbk/m;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    const/4 v1, 0x0

    const/4 v2, -0x1

    invoke-direct {p0, p1, v0, v1, v2}, Lcom/miui/international/bean/OptimizeGlobalAdBean;-><init>(Ljava/lang/String;Ljava/lang/Object;II)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/Object;II)V
    .locals 1
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/Object;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    const-string v0, "placeId"

    invoke-static {p1, v0}, Lbk/m;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/miui/optimizemanage/optimizeresult/c;-><init>()V

    iput-object p1, p0, Lcom/miui/international/bean/OptimizeGlobalAdBean;->placeId:Ljava/lang/String;

    iput-object p2, p0, Lcom/miui/international/bean/OptimizeGlobalAdBean;->nativeAd:Ljava/lang/Object;

    iput p3, p0, Lcom/miui/international/bean/OptimizeGlobalAdBean;->status:I

    iput p4, p0, Lcom/miui/international/bean/OptimizeGlobalAdBean;->position:I

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lorg/json/JSONObject;)V
    .locals 3
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lorg/json/JSONObject;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    const-string v0, "placeId"

    invoke-static {p1, v0}, Lbk/m;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    const/4 v1, 0x0

    const/4 v2, -0x1

    invoke-direct {p0, p1, v0, v1, v2}, Lcom/miui/international/bean/OptimizeGlobalAdBean;-><init>(Ljava/lang/String;Ljava/lang/Object;II)V

    if-nez p2, :cond_0

    return-void

    :cond_0
    const-string v0, "extra"

    invoke-virtual {p2, v0}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p2

    if-nez p2, :cond_1

    return-void

    :cond_1
    const-string v0, "adPositionInLayout"

    invoke-virtual {p2, v0, v2}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result p2

    invoke-virtual {p0, p2}, Lcom/miui/international/bean/OptimizeGlobalAdBean;->setPosition(I)V

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "load layout success "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "GlobalAdViewModel"

    invoke-static {p2, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method


# virtual methods
.method public final addGlobalAd(Ljava/util/List;)Z
    .locals 7
    .param p1    # Ljava/util/List;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/miui/optimizemanage/optimizeresult/c;",
            ">;)Z"
        }
    .end annotation

    const-string v0, "models"

    invoke-static {p1, v0}, Lbk/m;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    const/4 v4, -0x1

    const/4 v5, 0x1

    if-eqz v3, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/miui/optimizemanage/optimizeresult/c;

    instance-of v6, v3, Lcom/miui/international/bean/OptimizeGlobalAdBean;

    if-eqz v6, :cond_0

    check-cast v3, Lcom/miui/international/bean/OptimizeGlobalAdBean;

    invoke-virtual {v3}, Lcom/miui/international/bean/OptimizeGlobalAdBean;->getPlaceId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0}, Lcom/miui/international/bean/OptimizeGlobalAdBean;->getPlaceId()Ljava/lang/String;

    move-result-object v6

    invoke-static {v3, v6}, Lbk/m;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    move v3, v5

    goto :goto_1

    :cond_0
    move v3, v1

    :goto_1
    if-eqz v3, :cond_1

    goto :goto_2

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    move v2, v4

    :goto_2
    if-ne v2, v4, :cond_3

    return v1

    :cond_3
    invoke-virtual {p0}, Lcom/miui/international/bean/OptimizeGlobalAdBean;->isClosed()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {p1, v2}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    goto :goto_3

    :cond_4
    invoke-interface {p1, v2, p0}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    :goto_3
    return v5
.end method

.method public bindView(Landroid/view/View;)V
    .locals 0
    .param p1    # Landroid/view/View;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    invoke-static {p0, p1}, Lcom/miui/international/bean/GlobalAdBaseBean$b;->a(Lcom/miui/international/bean/GlobalAdBaseBean;Landroid/view/View;)V

    return-void
.end method

.method public createViewHolder(Landroid/view/View;)Lcom/miui/optimizemanage/optimizeresult/d;
    .locals 1
    .param p1    # Landroid/view/View;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string v0, "view"

    invoke-static {p1, v0}, Lbk/m;->e(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lcom/miui/international/bean/OptimizeGlobalAdBean$a;

    invoke-direct {v0, p1}, Lcom/miui/international/bean/OptimizeGlobalAdBean$a;-><init>(Landroid/view/View;)V

    return-object v0
.end method

.method public getLayoutId()I
    .locals 1

    const v0, 0x7f0e0491

    return v0
.end method

.method public getNativeAd()Ljava/lang/Object;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    iget-object v0, p0, Lcom/miui/international/bean/OptimizeGlobalAdBean;->nativeAd:Ljava/lang/Object;

    return-object v0
.end method

.method public getPlaceId()Ljava/lang/String;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object v0, p0, Lcom/miui/international/bean/OptimizeGlobalAdBean;->placeId:Ljava/lang/String;

    return-object v0
.end method

.method public getPosition()I
    .locals 1

    iget v0, p0, Lcom/miui/international/bean/OptimizeGlobalAdBean;->position:I

    return v0
.end method

.method public getStatus()I
    .locals 1

    iget v0, p0, Lcom/miui/international/bean/OptimizeGlobalAdBean;->status:I

    return v0
.end method

.method public isClosed()Z
    .locals 1

    invoke-static {p0}, Lcom/miui/international/bean/GlobalAdBaseBean$b;->b(Lcom/miui/international/bean/GlobalAdBaseBean;)Z

    move-result v0

    return v0
.end method

.method public release()V
    .locals 0

    invoke-static {p0}, Lcom/miui/international/bean/GlobalAdBaseBean$b;->c(Lcom/miui/international/bean/GlobalAdBaseBean;)V

    return-void
.end method

.method public setClosed()V
    .locals 0

    invoke-static {p0}, Lcom/miui/international/bean/GlobalAdBaseBean$b;->d(Lcom/miui/international/bean/GlobalAdBaseBean;)V

    return-void
.end method

.method public setNativeAd(Ljava/lang/Object;)V
    .locals 0
    .param p1    # Ljava/lang/Object;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    iput-object p1, p0, Lcom/miui/international/bean/OptimizeGlobalAdBean;->nativeAd:Ljava/lang/Object;

    return-void
.end method

.method public setPlaceId(Ljava/lang/String;)V
    .locals 1
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lbk/m;->e(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/miui/international/bean/OptimizeGlobalAdBean;->placeId:Ljava/lang/String;

    return-void
.end method

.method public setPosition(I)V
    .locals 0

    iput p1, p0, Lcom/miui/international/bean/OptimizeGlobalAdBean;->position:I

    return-void
.end method

.method public setStatus(I)V
    .locals 0

    iput p1, p0, Lcom/miui/international/bean/OptimizeGlobalAdBean;->status:I

    return-void
.end method
