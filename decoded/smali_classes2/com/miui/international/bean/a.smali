.class public final Lcom/miui/international/bean/a;
.super Lcom/miui/common/card/models/BaseCardModel;
.source "SourceFile"

# interfaces
.implements Ljava/io/Serializable;
.implements Lcom/miui/international/bean/GlobalAdBaseBean;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/international/bean/a$a;
    }
.end annotation

.annotation build Lkotlin/jvm/internal/SourceDebugExtension;
    value = {
        "SMAP\nScanGlobalAdBean.kt\nKotlin\n*S Kotlin\n*F\n+ 1 ScanGlobalAdBean.kt\ncom/miui/international/bean/ScanGlobalAdBean\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,58:1\n350#2,7:59\n*S KotlinDebug\n*F\n+ 1 ScanGlobalAdBean.kt\ncom/miui/international/bean/ScanGlobalAdBean\n*L\n49#1:59,7\n*E\n"
    }
.end annotation


# instance fields
.field private a:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private b:Ljava/lang/Object;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private c:I

.field private d:I


# direct methods
.method public constructor <init>(Ljava/lang/String;I)V
    .locals 9
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "placeId"

    invoke-static {p1, v0}, Lbk/m;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v6, 0x0

    const/16 v7, 0x10

    const/4 v8, 0x0

    move-object v1, p0

    move-object v2, p1

    move v5, p2

    invoke-direct/range {v1 .. v8}, Lcom/miui/international/bean/a;-><init>(Ljava/lang/String;Ljava/lang/Object;IIIILbk/g;)V

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

.method public constructor <init>(Ljava/lang/String;Ljava/lang/Object;III)V
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

    invoke-direct {p0, p5}, Lcom/miui/common/card/models/BaseCardModel;-><init>(I)V

    iput-object p1, p0, Lcom/miui/international/bean/a;->a:Ljava/lang/String;

    iput-object p2, p0, Lcom/miui/international/bean/a;->b:Ljava/lang/Object;

    iput p3, p0, Lcom/miui/international/bean/a;->c:I

    iput p4, p0, Lcom/miui/international/bean/a;->d:I

    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/String;Ljava/lang/Object;IIIILbk/g;)V
    .locals 6

    and-int/lit8 p6, p6, 0x10

    if-eqz p6, :cond_0

    const p5, 0x7f0e0491

    :cond_0
    move v5, p5

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move v4, p4

    invoke-direct/range {v0 .. v5}, Lcom/miui/international/bean/a;-><init>(Ljava/lang/String;Ljava/lang/Object;III)V

    return-void
.end method


# virtual methods
.method public final a(Ljava/util/List;)Z
    .locals 7
    .param p1    # Ljava/util/List;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/miui/common/card/models/BaseCardModel;",
            ">;)Z"
        }
    .end annotation

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    :cond_0
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    move v2, v0

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    const/4 v4, -0x1

    const/4 v5, 0x1

    if-eqz v3, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/miui/common/card/models/BaseCardModel;

    instance-of v6, v3, Lcom/miui/international/bean/a;

    if-eqz v6, :cond_1

    check-cast v3, Lcom/miui/international/bean/a;

    invoke-virtual {v3}, Lcom/miui/international/bean/a;->getPlaceId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0}, Lcom/miui/international/bean/a;->getPlaceId()Ljava/lang/String;

    move-result-object v6

    invoke-static {v3, v6}, Lbk/m;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    move v3, v5

    goto :goto_1

    :cond_1
    move v3, v0

    :goto_1
    if-eqz v3, :cond_2

    goto :goto_2

    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_3
    move v2, v4

    :goto_2
    if-ne v2, v4, :cond_4

    return v0

    :cond_4
    invoke-virtual {p0}, Lcom/miui/international/bean/a;->isClosed()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-interface {p1, v2}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    goto :goto_3

    :cond_5
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

.method public createViewHolder(Landroid/view/View;)Lcom/miui/common/card/BaseViewHolder;
    .locals 1
    .param p1    # Landroid/view/View;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string v0, "convertView"

    invoke-static {p1, v0}, Lbk/m;->e(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lcom/miui/international/bean/a$a;

    invoke-direct {v0, p1}, Lcom/miui/international/bean/a$a;-><init>(Landroid/view/View;)V

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

    iget-object v0, p0, Lcom/miui/international/bean/a;->b:Ljava/lang/Object;

    return-object v0
.end method

.method public getPlaceId()Ljava/lang/String;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object v0, p0, Lcom/miui/international/bean/a;->a:Ljava/lang/String;

    return-object v0
.end method

.method public getPosition()I
    .locals 1

    iget v0, p0, Lcom/miui/international/bean/a;->d:I

    return v0
.end method

.method public getStatus()I
    .locals 1

    iget v0, p0, Lcom/miui/international/bean/a;->c:I

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

    iput-object p1, p0, Lcom/miui/international/bean/a;->b:Ljava/lang/Object;

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

    iput-object p1, p0, Lcom/miui/international/bean/a;->a:Ljava/lang/String;

    return-void
.end method

.method public setPosition(I)V
    .locals 0

    iput p1, p0, Lcom/miui/international/bean/a;->d:I

    return-void
.end method

.method public setStatus(I)V
    .locals 0

    iput p1, p0, Lcom/miui/international/bean/a;->c:I

    return-void
.end method

.method public validate()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method
