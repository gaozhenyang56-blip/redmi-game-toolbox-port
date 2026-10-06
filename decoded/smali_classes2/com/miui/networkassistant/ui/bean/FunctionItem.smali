.class public Lcom/miui/networkassistant/ui/bean/FunctionItem;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/networkassistant/ui/bean/FunctionItem$ProductListBean;,
        Lcom/miui/networkassistant/ui/bean/FunctionItem$SecondaryCardRecBean;
    }
.end annotation


# instance fields
.field private productList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/util/List<",
            "Lcom/miui/networkassistant/ui/bean/FunctionItem$ProductListBean;",
            ">;>;"
        }
    .end annotation
.end field

.field private secondaryCardRec:Lcom/miui/networkassistant/ui/bean/FunctionItem$SecondaryCardRecBean;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getProductList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/util/List<",
            "Lcom/miui/networkassistant/ui/bean/FunctionItem$ProductListBean;",
            ">;>;"
        }
    .end annotation

    iget-object v0, p0, Lcom/miui/networkassistant/ui/bean/FunctionItem;->productList:Ljava/util/List;

    return-object v0
.end method

.method public getSecondaryCardRec()Lcom/miui/networkassistant/ui/bean/FunctionItem$SecondaryCardRecBean;
    .locals 1

    iget-object v0, p0, Lcom/miui/networkassistant/ui/bean/FunctionItem;->secondaryCardRec:Lcom/miui/networkassistant/ui/bean/FunctionItem$SecondaryCardRecBean;

    return-object v0
.end method

.method public setProductList(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/util/List<",
            "Lcom/miui/networkassistant/ui/bean/FunctionItem$ProductListBean;",
            ">;>;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/miui/networkassistant/ui/bean/FunctionItem;->productList:Ljava/util/List;

    return-void
.end method

.method public setSecondaryCardRec(Lcom/miui/networkassistant/ui/bean/FunctionItem$SecondaryCardRecBean;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/networkassistant/ui/bean/FunctionItem;->secondaryCardRec:Lcom/miui/networkassistant/ui/bean/FunctionItem$SecondaryCardRecBean;

    return-void
.end method
