.class public Lcom/miui/networkassistant/ui/bean/FunctionItem$ProductListBean;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/networkassistant/ui/bean/FunctionItem;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ProductListBean"
.end annotation


# instance fields
.field private iconURL:Ljava/lang/String;

.field private index:I

.field private productId:Ljava/lang/String;

.field private productTitle:Ljava/lang/String;

.field private redirectTitle:Ljava/lang/String;

.field private redirectType:Ljava/lang/String;

.field private redirectURL:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    const/4 v1, 0x0

    if-eqz p1, :cond_3

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_1

    goto :goto_1

    :cond_1
    check-cast p1, Lcom/miui/networkassistant/ui/bean/FunctionItem$ProductListBean;

    iget v2, p0, Lcom/miui/networkassistant/ui/bean/FunctionItem$ProductListBean;->index:I

    iget v3, p1, Lcom/miui/networkassistant/ui/bean/FunctionItem$ProductListBean;->index:I

    if-ne v2, v3, :cond_2

    iget-object v2, p0, Lcom/miui/networkassistant/ui/bean/FunctionItem$ProductListBean;->productId:Ljava/lang/String;

    iget-object v3, p1, Lcom/miui/networkassistant/ui/bean/FunctionItem$ProductListBean;->productId:Ljava/lang/String;

    invoke-static {v2, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/miui/networkassistant/ui/bean/FunctionItem$ProductListBean;->iconURL:Ljava/lang/String;

    iget-object v3, p1, Lcom/miui/networkassistant/ui/bean/FunctionItem$ProductListBean;->iconURL:Ljava/lang/String;

    invoke-static {v2, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/miui/networkassistant/ui/bean/FunctionItem$ProductListBean;->productTitle:Ljava/lang/String;

    iget-object v3, p1, Lcom/miui/networkassistant/ui/bean/FunctionItem$ProductListBean;->productTitle:Ljava/lang/String;

    invoke-static {v2, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/miui/networkassistant/ui/bean/FunctionItem$ProductListBean;->redirectType:Ljava/lang/String;

    iget-object v3, p1, Lcom/miui/networkassistant/ui/bean/FunctionItem$ProductListBean;->redirectType:Ljava/lang/String;

    invoke-static {v2, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/miui/networkassistant/ui/bean/FunctionItem$ProductListBean;->redirectTitle:Ljava/lang/String;

    iget-object p1, p1, Lcom/miui/networkassistant/ui/bean/FunctionItem$ProductListBean;->redirectTitle:Ljava/lang/String;

    invoke-static {v2, p1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    goto :goto_0

    :cond_2
    move v0, v1

    :goto_0
    return v0

    :cond_3
    :goto_1
    return v1
.end method

.method public getIconURL()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/miui/networkassistant/ui/bean/FunctionItem$ProductListBean;->iconURL:Ljava/lang/String;

    return-object v0
.end method

.method public getIndex()I
    .locals 1

    iget v0, p0, Lcom/miui/networkassistant/ui/bean/FunctionItem$ProductListBean;->index:I

    return v0
.end method

.method public getProductId()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/miui/networkassistant/ui/bean/FunctionItem$ProductListBean;->productId:Ljava/lang/String;

    return-object v0
.end method

.method public getProductTitle()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/miui/networkassistant/ui/bean/FunctionItem$ProductListBean;->productTitle:Ljava/lang/String;

    return-object v0
.end method

.method public getRedirectTitle()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/miui/networkassistant/ui/bean/FunctionItem$ProductListBean;->redirectTitle:Ljava/lang/String;

    return-object v0
.end method

.method public getRedirectType()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/miui/networkassistant/ui/bean/FunctionItem$ProductListBean;->redirectType:Ljava/lang/String;

    return-object v0
.end method

.method public getRedirectURL()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/miui/networkassistant/ui/bean/FunctionItem$ProductListBean;->redirectURL:Ljava/lang/String;

    return-object v0
.end method

.method public hashCode()I
    .locals 3

    const/4 v0, 0x7

    new-array v0, v0, [Ljava/lang/Object;

    iget-object v1, p0, Lcom/miui/networkassistant/ui/bean/FunctionItem$ProductListBean;->productId:Ljava/lang/String;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/miui/networkassistant/ui/bean/FunctionItem$ProductListBean;->iconURL:Ljava/lang/String;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    iget v1, p0, Lcom/miui/networkassistant/ui/bean/FunctionItem$ProductListBean;->index:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x2

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/miui/networkassistant/ui/bean/FunctionItem$ProductListBean;->productTitle:Ljava/lang/String;

    const/4 v2, 0x3

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/miui/networkassistant/ui/bean/FunctionItem$ProductListBean;->redirectType:Ljava/lang/String;

    const/4 v2, 0x4

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/miui/networkassistant/ui/bean/FunctionItem$ProductListBean;->redirectURL:Ljava/lang/String;

    const/4 v2, 0x5

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/miui/networkassistant/ui/bean/FunctionItem$ProductListBean;->redirectTitle:Ljava/lang/String;

    const/4 v2, 0x6

    aput-object v1, v0, v2

    invoke-static {v0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public isH5()Z
    .locals 2

    iget-object v0, p0, Lcom/miui/networkassistant/ui/bean/FunctionItem$ProductListBean;->redirectType:Ljava/lang/String;

    const-string v1, "h5"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public isNative()Z
    .locals 2

    iget-object v0, p0, Lcom/miui/networkassistant/ui/bean/FunctionItem$ProductListBean;->redirectType:Ljava/lang/String;

    const-string v1, "native"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public setIconURL(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/networkassistant/ui/bean/FunctionItem$ProductListBean;->iconURL:Ljava/lang/String;

    return-void
.end method

.method public setIndex(I)V
    .locals 0

    iput p1, p0, Lcom/miui/networkassistant/ui/bean/FunctionItem$ProductListBean;->index:I

    return-void
.end method

.method public setProductId(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/networkassistant/ui/bean/FunctionItem$ProductListBean;->productId:Ljava/lang/String;

    return-void
.end method

.method public setProductTitle(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/networkassistant/ui/bean/FunctionItem$ProductListBean;->productTitle:Ljava/lang/String;

    return-void
.end method

.method public setRedirectTitle(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/networkassistant/ui/bean/FunctionItem$ProductListBean;->redirectTitle:Ljava/lang/String;

    return-void
.end method

.method public setRedirectType(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/networkassistant/ui/bean/FunctionItem$ProductListBean;->redirectType:Ljava/lang/String;

    return-void
.end method

.method public setRedirectURL(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/networkassistant/ui/bean/FunctionItem$ProductListBean;->redirectURL:Ljava/lang/String;

    return-void
.end method
