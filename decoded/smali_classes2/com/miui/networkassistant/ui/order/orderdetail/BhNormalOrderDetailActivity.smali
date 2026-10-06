.class public final Lcom/miui/networkassistant/ui/order/orderdetail/BhNormalOrderDetailActivity;
.super Lcom/miui/networkassistant/ui/view/AbstractPaddingActivity;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/miui/networkassistant/ui/view/AbstractPaddingActivity<",
        "Lcom/miui/networkassistant/ui/order/orderdetail/BhNormalOrderDetailPresenter;",
        ">;"
    }
.end annotation

.annotation build Lkotlin/jvm/internal/SourceDebugExtension;
    value = {
        "SMAP\nBhNormalOrderDetailActivity.kt\nKotlin\n*S Kotlin\n*F\n+ 1 BhNormalOrderDetailActivity.kt\ncom/miui/networkassistant/ui/order/orderdetail/BhNormalOrderDetailActivity\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,155:1\n1#2:156\n*E\n"
    }
.end annotation


# instance fields
.field private final TAG:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final back$delegate:Loj/f;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private carrier:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private createTime:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private final errorPart$delegate:Loj/f;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final hotline$delegate:Loj/f;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final layoutListItem$delegate:Loj/f;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final liBuytime$delegate:Loj/f;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final liOperatorname$delegate:Loj/f;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final liOrderid$delegate:Loj/f;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final liPaidfee$delegate:Loj/f;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final liPhonenum$delegate:Loj/f;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final liProductname$delegate:Loj/f;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final loadingPart$delegate:Loj/f;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private orderStatus:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private orderStatusDesc:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private packageTitle:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private partnerOrderId:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private payFee:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private phoneNumber:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private final scroll$delegate:Loj/f;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private serviceUrl:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private final statusPanel$delegate:Loj/f;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final titlePart$delegate:Loj/f;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final titleTv$delegate:Loj/f;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final topBg$delegate:Loj/f;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final tvOrderstatus$delegate:Loj/f;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/miui/networkassistant/ui/view/AbstractPaddingActivity;-><init>()V

    const-string v0, "OrderDetailActivity"

    iput-object v0, p0, Lcom/miui/networkassistant/ui/order/orderdetail/BhNormalOrderDetailActivity;->TAG:Ljava/lang/String;

    new-instance v0, Lcom/miui/networkassistant/ui/order/orderdetail/BhNormalOrderDetailActivity$back$2;

    invoke-direct {v0, p0}, Lcom/miui/networkassistant/ui/order/orderdetail/BhNormalOrderDetailActivity$back$2;-><init>(Lcom/miui/networkassistant/ui/order/orderdetail/BhNormalOrderDetailActivity;)V

    invoke-static {v0}, Loj/g;->a(Lak/a;)Loj/f;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/networkassistant/ui/order/orderdetail/BhNormalOrderDetailActivity;->back$delegate:Loj/f;

    new-instance v0, Lcom/miui/networkassistant/ui/order/orderdetail/BhNormalOrderDetailActivity$titlePart$2;

    invoke-direct {v0, p0}, Lcom/miui/networkassistant/ui/order/orderdetail/BhNormalOrderDetailActivity$titlePart$2;-><init>(Lcom/miui/networkassistant/ui/order/orderdetail/BhNormalOrderDetailActivity;)V

    invoke-static {v0}, Loj/g;->a(Lak/a;)Loj/f;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/networkassistant/ui/order/orderdetail/BhNormalOrderDetailActivity;->titlePart$delegate:Loj/f;

    new-instance v0, Lcom/miui/networkassistant/ui/order/orderdetail/BhNormalOrderDetailActivity$scroll$2;

    invoke-direct {v0, p0}, Lcom/miui/networkassistant/ui/order/orderdetail/BhNormalOrderDetailActivity$scroll$2;-><init>(Lcom/miui/networkassistant/ui/order/orderdetail/BhNormalOrderDetailActivity;)V

    invoke-static {v0}, Loj/g;->a(Lak/a;)Loj/f;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/networkassistant/ui/order/orderdetail/BhNormalOrderDetailActivity;->scroll$delegate:Loj/f;

    new-instance v0, Lcom/miui/networkassistant/ui/order/orderdetail/BhNormalOrderDetailActivity$titleTv$2;

    invoke-direct {v0, p0}, Lcom/miui/networkassistant/ui/order/orderdetail/BhNormalOrderDetailActivity$titleTv$2;-><init>(Lcom/miui/networkassistant/ui/order/orderdetail/BhNormalOrderDetailActivity;)V

    invoke-static {v0}, Loj/g;->a(Lak/a;)Loj/f;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/networkassistant/ui/order/orderdetail/BhNormalOrderDetailActivity;->titleTv$delegate:Loj/f;

    new-instance v0, Lcom/miui/networkassistant/ui/order/orderdetail/BhNormalOrderDetailActivity$hotline$2;

    invoke-direct {v0, p0}, Lcom/miui/networkassistant/ui/order/orderdetail/BhNormalOrderDetailActivity$hotline$2;-><init>(Lcom/miui/networkassistant/ui/order/orderdetail/BhNormalOrderDetailActivity;)V

    invoke-static {v0}, Loj/g;->a(Lak/a;)Loj/f;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/networkassistant/ui/order/orderdetail/BhNormalOrderDetailActivity;->hotline$delegate:Loj/f;

    new-instance v0, Lcom/miui/networkassistant/ui/order/orderdetail/BhNormalOrderDetailActivity$statusPanel$2;

    invoke-direct {v0, p0}, Lcom/miui/networkassistant/ui/order/orderdetail/BhNormalOrderDetailActivity$statusPanel$2;-><init>(Lcom/miui/networkassistant/ui/order/orderdetail/BhNormalOrderDetailActivity;)V

    invoke-static {v0}, Loj/g;->a(Lak/a;)Loj/f;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/networkassistant/ui/order/orderdetail/BhNormalOrderDetailActivity;->statusPanel$delegate:Loj/f;

    new-instance v0, Lcom/miui/networkassistant/ui/order/orderdetail/BhNormalOrderDetailActivity$layoutListItem$2;

    invoke-direct {v0, p0}, Lcom/miui/networkassistant/ui/order/orderdetail/BhNormalOrderDetailActivity$layoutListItem$2;-><init>(Lcom/miui/networkassistant/ui/order/orderdetail/BhNormalOrderDetailActivity;)V

    invoke-static {v0}, Loj/g;->a(Lak/a;)Loj/f;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/networkassistant/ui/order/orderdetail/BhNormalOrderDetailActivity;->layoutListItem$delegate:Loj/f;

    new-instance v0, Lcom/miui/networkassistant/ui/order/orderdetail/BhNormalOrderDetailActivity$liOrderid$2;

    invoke-direct {v0, p0}, Lcom/miui/networkassistant/ui/order/orderdetail/BhNormalOrderDetailActivity$liOrderid$2;-><init>(Lcom/miui/networkassistant/ui/order/orderdetail/BhNormalOrderDetailActivity;)V

    invoke-static {v0}, Loj/g;->a(Lak/a;)Loj/f;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/networkassistant/ui/order/orderdetail/BhNormalOrderDetailActivity;->liOrderid$delegate:Loj/f;

    new-instance v0, Lcom/miui/networkassistant/ui/order/orderdetail/BhNormalOrderDetailActivity$topBg$2;

    invoke-direct {v0, p0}, Lcom/miui/networkassistant/ui/order/orderdetail/BhNormalOrderDetailActivity$topBg$2;-><init>(Lcom/miui/networkassistant/ui/order/orderdetail/BhNormalOrderDetailActivity;)V

    invoke-static {v0}, Loj/g;->a(Lak/a;)Loj/f;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/networkassistant/ui/order/orderdetail/BhNormalOrderDetailActivity;->topBg$delegate:Loj/f;

    new-instance v0, Lcom/miui/networkassistant/ui/order/orderdetail/BhNormalOrderDetailActivity$loadingPart$2;

    invoke-direct {v0, p0}, Lcom/miui/networkassistant/ui/order/orderdetail/BhNormalOrderDetailActivity$loadingPart$2;-><init>(Lcom/miui/networkassistant/ui/order/orderdetail/BhNormalOrderDetailActivity;)V

    invoke-static {v0}, Loj/g;->a(Lak/a;)Loj/f;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/networkassistant/ui/order/orderdetail/BhNormalOrderDetailActivity;->loadingPart$delegate:Loj/f;

    new-instance v0, Lcom/miui/networkassistant/ui/order/orderdetail/BhNormalOrderDetailActivity$errorPart$2;

    invoke-direct {v0, p0}, Lcom/miui/networkassistant/ui/order/orderdetail/BhNormalOrderDetailActivity$errorPart$2;-><init>(Lcom/miui/networkassistant/ui/order/orderdetail/BhNormalOrderDetailActivity;)V

    invoke-static {v0}, Loj/g;->a(Lak/a;)Loj/f;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/networkassistant/ui/order/orderdetail/BhNormalOrderDetailActivity;->errorPart$delegate:Loj/f;

    new-instance v0, Lcom/miui/networkassistant/ui/order/orderdetail/BhNormalOrderDetailActivity$tvOrderstatus$2;

    invoke-direct {v0, p0}, Lcom/miui/networkassistant/ui/order/orderdetail/BhNormalOrderDetailActivity$tvOrderstatus$2;-><init>(Lcom/miui/networkassistant/ui/order/orderdetail/BhNormalOrderDetailActivity;)V

    invoke-static {v0}, Loj/g;->a(Lak/a;)Loj/f;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/networkassistant/ui/order/orderdetail/BhNormalOrderDetailActivity;->tvOrderstatus$delegate:Loj/f;

    new-instance v0, Lcom/miui/networkassistant/ui/order/orderdetail/BhNormalOrderDetailActivity$liOperatorname$2;

    invoke-direct {v0, p0}, Lcom/miui/networkassistant/ui/order/orderdetail/BhNormalOrderDetailActivity$liOperatorname$2;-><init>(Lcom/miui/networkassistant/ui/order/orderdetail/BhNormalOrderDetailActivity;)V

    invoke-static {v0}, Loj/g;->a(Lak/a;)Loj/f;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/networkassistant/ui/order/orderdetail/BhNormalOrderDetailActivity;->liOperatorname$delegate:Loj/f;

    new-instance v0, Lcom/miui/networkassistant/ui/order/orderdetail/BhNormalOrderDetailActivity$liBuytime$2;

    invoke-direct {v0, p0}, Lcom/miui/networkassistant/ui/order/orderdetail/BhNormalOrderDetailActivity$liBuytime$2;-><init>(Lcom/miui/networkassistant/ui/order/orderdetail/BhNormalOrderDetailActivity;)V

    invoke-static {v0}, Loj/g;->a(Lak/a;)Loj/f;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/networkassistant/ui/order/orderdetail/BhNormalOrderDetailActivity;->liBuytime$delegate:Loj/f;

    new-instance v0, Lcom/miui/networkassistant/ui/order/orderdetail/BhNormalOrderDetailActivity$liPaidfee$2;

    invoke-direct {v0, p0}, Lcom/miui/networkassistant/ui/order/orderdetail/BhNormalOrderDetailActivity$liPaidfee$2;-><init>(Lcom/miui/networkassistant/ui/order/orderdetail/BhNormalOrderDetailActivity;)V

    invoke-static {v0}, Loj/g;->a(Lak/a;)Loj/f;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/networkassistant/ui/order/orderdetail/BhNormalOrderDetailActivity;->liPaidfee$delegate:Loj/f;

    new-instance v0, Lcom/miui/networkassistant/ui/order/orderdetail/BhNormalOrderDetailActivity$liPhonenum$2;

    invoke-direct {v0, p0}, Lcom/miui/networkassistant/ui/order/orderdetail/BhNormalOrderDetailActivity$liPhonenum$2;-><init>(Lcom/miui/networkassistant/ui/order/orderdetail/BhNormalOrderDetailActivity;)V

    invoke-static {v0}, Loj/g;->a(Lak/a;)Loj/f;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/networkassistant/ui/order/orderdetail/BhNormalOrderDetailActivity;->liPhonenum$delegate:Loj/f;

    new-instance v0, Lcom/miui/networkassistant/ui/order/orderdetail/BhNormalOrderDetailActivity$liProductname$2;

    invoke-direct {v0, p0}, Lcom/miui/networkassistant/ui/order/orderdetail/BhNormalOrderDetailActivity$liProductname$2;-><init>(Lcom/miui/networkassistant/ui/order/orderdetail/BhNormalOrderDetailActivity;)V

    invoke-static {v0}, Loj/g;->a(Lak/a;)Loj/f;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/networkassistant/ui/order/orderdetail/BhNormalOrderDetailActivity;->liProductname$delegate:Loj/f;

    return-void
.end method

.method public static synthetic c0(Lcom/miui/networkassistant/ui/order/orderdetail/BhNormalOrderDetailActivity;Landroid/view/View;IIII)V
    .locals 0

    invoke-static/range {p0 .. p5}, Lcom/miui/networkassistant/ui/order/orderdetail/BhNormalOrderDetailActivity;->onCreate$lambda$2(Lcom/miui/networkassistant/ui/order/orderdetail/BhNormalOrderDetailActivity;Landroid/view/View;IIII)V

    return-void
.end method

.method public static synthetic d0(Lcom/miui/networkassistant/ui/order/orderdetail/BhNormalOrderDetailActivity;Landroid/view/View;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/miui/networkassistant/ui/order/orderdetail/BhNormalOrderDetailActivity;->onCreate$lambda$0(Lcom/miui/networkassistant/ui/order/orderdetail/BhNormalOrderDetailActivity;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic e0(Lcom/miui/networkassistant/ui/order/orderdetail/BhNormalOrderDetailActivity;Landroid/view/View;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/miui/networkassistant/ui/order/orderdetail/BhNormalOrderDetailActivity;->showData$lambda$6(Lcom/miui/networkassistant/ui/order/orderdetail/BhNormalOrderDetailActivity;Landroid/view/View;)V

    return-void
.end method

.method private final getBack()Landroid/widget/ImageView;
    .locals 2

    iget-object v0, p0, Lcom/miui/networkassistant/ui/order/orderdetail/BhNormalOrderDetailActivity;->back$delegate:Loj/f;

    invoke-interface {v0}, Loj/f;->getValue()Ljava/lang/Object;

    move-result-object v0

    const-string v1, "<get-back>(...)"

    invoke-static {v0, v1}, Lbk/m;->d(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Landroid/widget/ImageView;

    return-object v0
.end method

.method private final getErrorPart()Landroid/view/View;
    .locals 2

    iget-object v0, p0, Lcom/miui/networkassistant/ui/order/orderdetail/BhNormalOrderDetailActivity;->errorPart$delegate:Loj/f;

    invoke-interface {v0}, Loj/f;->getValue()Ljava/lang/Object;

    move-result-object v0

    const-string v1, "<get-errorPart>(...)"

    invoke-static {v0, v1}, Lbk/m;->d(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Landroid/view/View;

    return-object v0
.end method

.method private final getHotline()Landroid/widget/ImageView;
    .locals 2

    iget-object v0, p0, Lcom/miui/networkassistant/ui/order/orderdetail/BhNormalOrderDetailActivity;->hotline$delegate:Loj/f;

    invoke-interface {v0}, Loj/f;->getValue()Ljava/lang/Object;

    move-result-object v0

    const-string v1, "<get-hotline>(...)"

    invoke-static {v0, v1}, Lbk/m;->d(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Landroid/widget/ImageView;

    return-object v0
.end method

.method private final getLayoutListItem()Landroid/view/View;
    .locals 2

    iget-object v0, p0, Lcom/miui/networkassistant/ui/order/orderdetail/BhNormalOrderDetailActivity;->layoutListItem$delegate:Loj/f;

    invoke-interface {v0}, Loj/f;->getValue()Ljava/lang/Object;

    move-result-object v0

    const-string v1, "<get-layoutListItem>(...)"

    invoke-static {v0, v1}, Lbk/m;->d(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Landroid/view/View;

    return-object v0
.end method

.method private final getLiBuytime()Lcom/miui/networkassistant/ui/view/ListItem;
    .locals 2

    iget-object v0, p0, Lcom/miui/networkassistant/ui/order/orderdetail/BhNormalOrderDetailActivity;->liBuytime$delegate:Loj/f;

    invoke-interface {v0}, Loj/f;->getValue()Ljava/lang/Object;

    move-result-object v0

    const-string v1, "<get-liBuytime>(...)"

    invoke-static {v0, v1}, Lbk/m;->d(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Lcom/miui/networkassistant/ui/view/ListItem;

    return-object v0
.end method

.method private final getLiOperatorname()Lcom/miui/networkassistant/ui/view/ListItem;
    .locals 2

    iget-object v0, p0, Lcom/miui/networkassistant/ui/order/orderdetail/BhNormalOrderDetailActivity;->liOperatorname$delegate:Loj/f;

    invoke-interface {v0}, Loj/f;->getValue()Ljava/lang/Object;

    move-result-object v0

    const-string v1, "<get-liOperatorname>(...)"

    invoke-static {v0, v1}, Lbk/m;->d(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Lcom/miui/networkassistant/ui/view/ListItem;

    return-object v0
.end method

.method private final getLiOrderid()Lcom/miui/networkassistant/ui/view/BhCopyListIem;
    .locals 2

    iget-object v0, p0, Lcom/miui/networkassistant/ui/order/orderdetail/BhNormalOrderDetailActivity;->liOrderid$delegate:Loj/f;

    invoke-interface {v0}, Loj/f;->getValue()Ljava/lang/Object;

    move-result-object v0

    const-string v1, "<get-liOrderid>(...)"

    invoke-static {v0, v1}, Lbk/m;->d(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Lcom/miui/networkassistant/ui/view/BhCopyListIem;

    return-object v0
.end method

.method private final getLiPaidfee()Lcom/miui/networkassistant/ui/view/ListItem;
    .locals 2

    iget-object v0, p0, Lcom/miui/networkassistant/ui/order/orderdetail/BhNormalOrderDetailActivity;->liPaidfee$delegate:Loj/f;

    invoke-interface {v0}, Loj/f;->getValue()Ljava/lang/Object;

    move-result-object v0

    const-string v1, "<get-liPaidfee>(...)"

    invoke-static {v0, v1}, Lbk/m;->d(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Lcom/miui/networkassistant/ui/view/ListItem;

    return-object v0
.end method

.method private final getLiPhonenum()Lcom/miui/networkassistant/ui/view/ListItem;
    .locals 2

    iget-object v0, p0, Lcom/miui/networkassistant/ui/order/orderdetail/BhNormalOrderDetailActivity;->liPhonenum$delegate:Loj/f;

    invoke-interface {v0}, Loj/f;->getValue()Ljava/lang/Object;

    move-result-object v0

    const-string v1, "<get-liPhonenum>(...)"

    invoke-static {v0, v1}, Lbk/m;->d(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Lcom/miui/networkassistant/ui/view/ListItem;

    return-object v0
.end method

.method private final getLiProductname()Lcom/miui/networkassistant/ui/view/ListItem;
    .locals 2

    iget-object v0, p0, Lcom/miui/networkassistant/ui/order/orderdetail/BhNormalOrderDetailActivity;->liProductname$delegate:Loj/f;

    invoke-interface {v0}, Loj/f;->getValue()Ljava/lang/Object;

    move-result-object v0

    const-string v1, "<get-liProductname>(...)"

    invoke-static {v0, v1}, Lbk/m;->d(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Lcom/miui/networkassistant/ui/view/ListItem;

    return-object v0
.end method

.method private final getLoadingPart()Landroid/view/View;
    .locals 2

    iget-object v0, p0, Lcom/miui/networkassistant/ui/order/orderdetail/BhNormalOrderDetailActivity;->loadingPart$delegate:Loj/f;

    invoke-interface {v0}, Loj/f;->getValue()Ljava/lang/Object;

    move-result-object v0

    const-string v1, "<get-loadingPart>(...)"

    invoke-static {v0, v1}, Lbk/m;->d(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Landroid/view/View;

    return-object v0
.end method

.method private final getScroll()Lmiuix/springback/view/SpringBackLayout;
    .locals 2

    iget-object v0, p0, Lcom/miui/networkassistant/ui/order/orderdetail/BhNormalOrderDetailActivity;->scroll$delegate:Loj/f;

    invoke-interface {v0}, Loj/f;->getValue()Ljava/lang/Object;

    move-result-object v0

    const-string v1, "<get-scroll>(...)"

    invoke-static {v0, v1}, Lbk/m;->d(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Lmiuix/springback/view/SpringBackLayout;

    return-object v0
.end method

.method private final getStatusPanel()Landroid/view/View;
    .locals 2

    iget-object v0, p0, Lcom/miui/networkassistant/ui/order/orderdetail/BhNormalOrderDetailActivity;->statusPanel$delegate:Loj/f;

    invoke-interface {v0}, Loj/f;->getValue()Ljava/lang/Object;

    move-result-object v0

    const-string v1, "<get-statusPanel>(...)"

    invoke-static {v0, v1}, Lbk/m;->d(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Landroid/view/View;

    return-object v0
.end method

.method private final getTitlePart()Landroid/widget/FrameLayout;
    .locals 2

    iget-object v0, p0, Lcom/miui/networkassistant/ui/order/orderdetail/BhNormalOrderDetailActivity;->titlePart$delegate:Loj/f;

    invoke-interface {v0}, Loj/f;->getValue()Ljava/lang/Object;

    move-result-object v0

    const-string v1, "<get-titlePart>(...)"

    invoke-static {v0, v1}, Lbk/m;->d(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Landroid/widget/FrameLayout;

    return-object v0
.end method

.method private final getTitleTv()Landroid/widget/TextView;
    .locals 2

    iget-object v0, p0, Lcom/miui/networkassistant/ui/order/orderdetail/BhNormalOrderDetailActivity;->titleTv$delegate:Loj/f;

    invoke-interface {v0}, Loj/f;->getValue()Ljava/lang/Object;

    move-result-object v0

    const-string v1, "<get-titleTv>(...)"

    invoke-static {v0, v1}, Lbk/m;->d(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Landroid/widget/TextView;

    return-object v0
.end method

.method private final getTopBg()Landroid/view/View;
    .locals 2

    iget-object v0, p0, Lcom/miui/networkassistant/ui/order/orderdetail/BhNormalOrderDetailActivity;->topBg$delegate:Loj/f;

    invoke-interface {v0}, Loj/f;->getValue()Ljava/lang/Object;

    move-result-object v0

    const-string v1, "<get-topBg>(...)"

    invoke-static {v0, v1}, Lbk/m;->d(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Landroid/view/View;

    return-object v0
.end method

.method private final getTvOrderstatus()Landroid/widget/TextView;
    .locals 2

    iget-object v0, p0, Lcom/miui/networkassistant/ui/order/orderdetail/BhNormalOrderDetailActivity;->tvOrderstatus$delegate:Loj/f;

    invoke-interface {v0}, Loj/f;->getValue()Ljava/lang/Object;

    move-result-object v0

    const-string v1, "<get-tvOrderstatus>(...)"

    invoke-static {v0, v1}, Lbk/m;->d(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Landroid/widget/TextView;

    return-object v0
.end method

.method private static final onCreate$lambda$0(Lcom/miui/networkassistant/ui/order/orderdetail/BhNormalOrderDetailActivity;Landroid/view/View;)V
    .locals 0

    const-string p1, "this$0"

    invoke-static {p0, p1}, Lbk/m;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Lmiuix/appcompat/app/AppCompatActivity;->finish()V

    return-void
.end method

.method private static final onCreate$lambda$2(Lcom/miui/networkassistant/ui/order/orderdetail/BhNormalOrderDetailActivity;Landroid/view/View;IIII)V
    .locals 0

    const-string p1, "this$0"

    invoke-static {p0, p1}, Lbk/m;->e(Ljava/lang/Object;Ljava/lang/String;)V

    int-to-float p1, p3

    invoke-direct {p0}, Lcom/miui/networkassistant/ui/order/orderdetail/BhNormalOrderDetailActivity;->getTitlePart()Landroid/widget/FrameLayout;

    move-result-object p2

    invoke-virtual {p2}, Landroid/view/View;->getHeight()I

    move-result p2

    int-to-float p2, p2

    const/high16 p3, 0x40000000    # 2.0f

    div-float/2addr p2, p3

    cmpl-float p2, p1, p2

    if-ltz p2, :cond_0

    invoke-direct {p0}, Lcom/miui/networkassistant/ui/order/orderdetail/BhNormalOrderDetailActivity;->getTitleTv()Landroid/widget/TextView;

    move-result-object p1

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Landroid/view/View;->setVisibility(I)V

    invoke-direct {p0}, Lcom/miui/networkassistant/ui/order/orderdetail/BhNormalOrderDetailActivity;->getTitlePart()Landroid/widget/FrameLayout;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object p1

    const/16 p2, 0xff

    invoke-virtual {p1, p2}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    invoke-direct {p0}, Lcom/miui/networkassistant/ui/order/orderdetail/BhNormalOrderDetailActivity;->getBack()Landroid/widget/ImageView;

    move-result-object p1

    const p2, 0x7f080471

    invoke-virtual {p1, p2}, Landroid/widget/ImageView;->setImageResource(I)V

    invoke-direct {p0}, Lcom/miui/networkassistant/ui/order/orderdetail/BhNormalOrderDetailActivity;->getHotline()Landroid/widget/ImageView;

    move-result-object p0

    const p1, 0x7f0807aa

    goto :goto_0

    :cond_0
    invoke-direct {p0}, Lcom/miui/networkassistant/ui/order/orderdetail/BhNormalOrderDetailActivity;->getTitlePart()Landroid/widget/FrameLayout;

    move-result-object p2

    invoke-virtual {p2}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object p2

    const/high16 p3, 0x437f0000    # 255.0f

    mul-float/2addr p1, p3

    invoke-direct {p0}, Lcom/miui/networkassistant/ui/order/orderdetail/BhNormalOrderDetailActivity;->getTitlePart()Landroid/widget/FrameLayout;

    move-result-object p3

    invoke-virtual {p3}, Landroid/view/View;->getHeight()I

    move-result p3

    int-to-float p3, p3

    div-float/2addr p1, p3

    float-to-int p1, p1

    invoke-virtual {p2, p1}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    invoke-direct {p0}, Lcom/miui/networkassistant/ui/order/orderdetail/BhNormalOrderDetailActivity;->getTitleTv()Landroid/widget/TextView;

    move-result-object p1

    const/16 p2, 0x8

    invoke-virtual {p1, p2}, Landroid/view/View;->setVisibility(I)V

    invoke-direct {p0}, Lcom/miui/networkassistant/ui/order/orderdetail/BhNormalOrderDetailActivity;->getBack()Landroid/widget/ImageView;

    move-result-object p1

    const p2, 0x7f080472

    invoke-virtual {p1, p2}, Landroid/widget/ImageView;->setImageResource(I)V

    invoke-direct {p0}, Lcom/miui/networkassistant/ui/order/orderdetail/BhNormalOrderDetailActivity;->getHotline()Landroid/widget/ImageView;

    move-result-object p0

    const p1, 0x7f0807ab

    :goto_0
    invoke-virtual {p0, p1}, Landroid/widget/ImageView;->setImageResource(I)V

    return-void
.end method

.method private static final showData$lambda$6(Lcom/miui/networkassistant/ui/order/orderdetail/BhNormalOrderDetailActivity;Landroid/view/View;)V
    .locals 2

    const-string p1, "this$0"

    invoke-static {p0, p1}, Lbk/m;->e(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/miui/networkassistant/ui/order/orderdetail/BhNormalOrderDetailActivity;->serviceUrl:Ljava/lang/String;

    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.VIEW"

    invoke-direct {v0, v1, p1}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    invoke-virtual {p0, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    const-string p0, "ID"

    invoke-static {p0}, Lmiui/os/Build;->checkRegion(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_0

    invoke-static {}, La8/z;->d()Z

    move-result p0

    if-nez p0, :cond_0

    sget-boolean p0, Lmiui/os/Build;->IS_TABLET:Z

    if-nez p0, :cond_0

    new-instance p0, Ljava/util/HashMap;

    invoke-direct {p0}, Ljava/util/HashMap;-><init>()V

    const-string p1, "page_index_home"

    const-string v0, "1"

    invoke-interface {p0, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-wide/16 v0, 0x1

    const-string p1, "customers_page2"

    invoke-static {p1, v0, v1, p0}, Lcom/miui/networkassistant/utils/AnalyticsHelper;->recordCalculateEvent(Ljava/lang/String;JLjava/util/Map;)V

    :cond_0
    return-void
.end method


# virtual methods
.method public bridge synthetic getDefaultViewModelCreationExtras()Lp0/a;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    invoke-static {p0}, Landroidx/lifecycle/j;->a(Landroidx/lifecycle/k;)Lp0/a;

    move-result-object v0

    return-object v0
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 1
    .param p1    # Landroid/content/res/Configuration;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "newConfig"

    invoke-static {p1, v0}, Lbk/m;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-super {p0, p1}, Lcom/miui/networkassistant/ui/view/AbstractPaddingActivity;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    invoke-virtual {p0}, Lcom/miui/networkassistant/ui/order/orderdetail/BhNormalOrderDetailActivity;->setCustomPadding()V

    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 5
    .param p1    # Landroid/os/Bundle;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    invoke-super {p0, p1}, Lcom/miui/networkassistant/ui/view/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    const p1, 0x7f0e00b1

    invoke-virtual {p0, p1}, Lcom/miui/networkassistant/ui/view/AbstractPaddingActivity;->setContentView(I)V

    invoke-virtual {p0}, Lcom/miui/networkassistant/ui/order/orderdetail/BhNormalOrderDetailActivity;->setCustomPadding()V

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Lcom/miui/networkassistant/ui/view/AbstractPaddingActivity;->setNeedHorizontalPadding(Z)V

    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "partnerOrderId"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/networkassistant/ui/order/orderdetail/BhNormalOrderDetailActivity;->partnerOrderId:Ljava/lang/String;

    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "phoneNumber"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/networkassistant/ui/order/orderdetail/BhNormalOrderDetailActivity;->phoneNumber:Ljava/lang/String;

    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "createTime"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/networkassistant/ui/order/orderdetail/BhNormalOrderDetailActivity;->createTime:Ljava/lang/String;

    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "carrier"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/networkassistant/ui/order/orderdetail/BhNormalOrderDetailActivity;->carrier:Ljava/lang/String;

    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "payFee"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/networkassistant/ui/order/orderdetail/BhNormalOrderDetailActivity;->payFee:Ljava/lang/String;

    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "packageTitle"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/networkassistant/ui/order/orderdetail/BhNormalOrderDetailActivity;->packageTitle:Ljava/lang/String;

    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "orderStatusDesc"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/networkassistant/ui/order/orderdetail/BhNormalOrderDetailActivity;->orderStatusDesc:Ljava/lang/String;

    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "orderStatus"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/networkassistant/ui/order/orderdetail/BhNormalOrderDetailActivity;->orderStatus:Ljava/lang/String;

    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "serviceUrl"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/networkassistant/ui/order/orderdetail/BhNormalOrderDetailActivity;->serviceUrl:Ljava/lang/String;

    iget-object v0, p0, Lcom/miui/networkassistant/ui/order/orderdetail/BhNormalOrderDetailActivity;->partnerOrderId:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lmiuix/appcompat/app/AppCompatActivity;->finish()V

    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/miui/networkassistant/ui/order/orderdetail/BhNormalOrderDetailActivity;->showData()V

    invoke-direct {p0}, Lcom/miui/networkassistant/ui/order/orderdetail/BhNormalOrderDetailActivity;->getBack()Landroid/widget/ImageView;

    move-result-object v0

    new-instance v1, Lcom/miui/networkassistant/ui/order/orderdetail/b;

    invoke-direct {v1, p0}, Lcom/miui/networkassistant/ui/order/orderdetail/b;-><init>(Lcom/miui/networkassistant/ui/order/orderdetail/BhNormalOrderDetailActivity;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lx4/a0;->n(Landroid/content/Context;)I

    move-result v0

    invoke-direct {p0}, Lcom/miui/networkassistant/ui/order/orderdetail/BhNormalOrderDetailActivity;->getTitlePart()Landroid/widget/FrameLayout;

    move-result-object v1

    invoke-virtual {v1, p1, v0, p1, p1}, Landroid/view/View;->setPadding(IIII)V

    invoke-direct {p0}, Lcom/miui/networkassistant/ui/order/orderdetail/BhNormalOrderDetailActivity;->getTitlePart()Landroid/widget/FrameLayout;

    move-result-object v1

    invoke-direct {p0}, Lcom/miui/networkassistant/ui/order/orderdetail/BhNormalOrderDetailActivity;->getTitlePart()Landroid/widget/FrameLayout;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    iget v3, v2, Landroid/view/ViewGroup$LayoutParams;->height:I

    add-int/2addr v3, v0

    iput v3, v2, Landroid/view/ViewGroup$LayoutParams;->height:I

    invoke-virtual {v1, v2}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    invoke-direct {p0}, Lcom/miui/networkassistant/ui/order/orderdetail/BhNormalOrderDetailActivity;->getTitlePart()Landroid/widget/FrameLayout;

    move-result-object v0

    new-instance v1, Landroid/graphics/drawable/ColorDrawable;

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f060128

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/content/res/Resources;->getColor(ILandroid/content/res/Resources$Theme;)I

    move-result v2

    invoke-direct {v1, v2}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    invoke-direct {p0}, Lcom/miui/networkassistant/ui/order/orderdetail/BhNormalOrderDetailActivity;->getTitlePart()Landroid/widget/FrameLayout;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    invoke-direct {p0}, Lcom/miui/networkassistant/ui/order/orderdetail/BhNormalOrderDetailActivity;->getScroll()Lmiuix/springback/view/SpringBackLayout;

    move-result-object p1

    new-instance v0, Lcom/miui/networkassistant/ui/order/orderdetail/c;

    invoke-direct {v0, p0}, Lcom/miui/networkassistant/ui/order/orderdetail/c;-><init>(Lcom/miui/networkassistant/ui/order/orderdetail/BhNormalOrderDetailActivity;)V

    invoke-virtual {p1, v0}, Landroid/view/View;->setOnScrollChangeListener(Landroid/view/View$OnScrollChangeListener;)V

    return-void
.end method

.method public final setCustomPadding()V
    .locals 6

    invoke-direct {p0}, Lcom/miui/networkassistant/ui/order/orderdetail/BhNormalOrderDetailActivity;->getStatusPanel()Landroid/view/View;

    move-result-object v0

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f070274

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    float-to-int v1, v1

    invoke-direct {p0}, Lcom/miui/networkassistant/ui/order/orderdetail/BhNormalOrderDetailActivity;->getStatusPanel()Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/View;->getPaddingTop()I

    move-result v3

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v4

    float-to-int v4, v4

    invoke-direct {p0}, Lcom/miui/networkassistant/ui/order/orderdetail/BhNormalOrderDetailActivity;->getStatusPanel()Landroid/view/View;

    move-result-object v5

    invoke-virtual {v5}, Landroid/view/View;->getBottom()I

    move-result v5

    invoke-virtual {v0, v1, v3, v4, v5}, Landroid/view/View;->setPadding(IIII)V

    invoke-direct {p0}, Lcom/miui/networkassistant/ui/order/orderdetail/BhNormalOrderDetailActivity;->getLayoutListItem()Landroid/view/View;

    move-result-object v0

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    float-to-int v1, v1

    invoke-direct {p0}, Lcom/miui/networkassistant/ui/order/orderdetail/BhNormalOrderDetailActivity;->getLayoutListItem()Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/View;->getPaddingTop()I

    move-result v3

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v2

    float-to-int v2, v2

    invoke-direct {p0}, Lcom/miui/networkassistant/ui/order/orderdetail/BhNormalOrderDetailActivity;->getLayoutListItem()Landroid/view/View;

    move-result-object v4

    invoke-virtual {v4}, Landroid/view/View;->getBottom()I

    move-result v4

    invoke-virtual {v0, v1, v3, v2, v4}, Landroid/view/View;->setPadding(IIII)V

    return-void
.end method

.method public final showData()V
    .locals 6

    invoke-direct {p0}, Lcom/miui/networkassistant/ui/order/orderdetail/BhNormalOrderDetailActivity;->getScroll()Lmiuix/springback/view/SpringBackLayout;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    invoke-direct {p0}, Lcom/miui/networkassistant/ui/order/orderdetail/BhNormalOrderDetailActivity;->getTopBg()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    invoke-direct {p0}, Lcom/miui/networkassistant/ui/order/orderdetail/BhNormalOrderDetailActivity;->getBack()Landroid/widget/ImageView;

    move-result-object v0

    const v2, 0x7f080472

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    invoke-direct {p0}, Lcom/miui/networkassistant/ui/order/orderdetail/BhNormalOrderDetailActivity;->getLoadingPart()Landroid/view/View;

    move-result-object v0

    const/16 v2, 0x8

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    invoke-direct {p0}, Lcom/miui/networkassistant/ui/order/orderdetail/BhNormalOrderDetailActivity;->getErrorPart()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    invoke-direct {p0}, Lcom/miui/networkassistant/ui/order/orderdetail/BhNormalOrderDetailActivity;->getTitleTv()Landroid/widget/TextView;

    move-result-object v0

    iget-object v3, p0, Lcom/miui/networkassistant/ui/order/orderdetail/BhNormalOrderDetailActivity;->orderStatusDesc:Ljava/lang/String;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-direct {p0}, Lcom/miui/networkassistant/ui/order/orderdetail/BhNormalOrderDetailActivity;->getTitleTv()Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    const v0, 0x7f080475

    invoke-virtual {p0, v0}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    instance-of v2, v0, Landroid/graphics/drawable/LevelListDrawable;

    const/4 v3, 0x0

    if-eqz v2, :cond_0

    goto :goto_0

    :cond_0
    move-object v0, v3

    :goto_0
    const/4 v2, 0x1

    if-eqz v0, :cond_3

    iget-object v4, p0, Lcom/miui/networkassistant/ui/order/orderdetail/BhNormalOrderDetailActivity;->orderStatus:Ljava/lang/String;

    const-string v5, "orderOrdering"

    invoke-static {v4, v5}, Lbk/m;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    goto :goto_1

    :cond_1
    const-string v1, "orderSuccess"

    invoke-static {v4, v1}, Lbk/m;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    move v1, v2

    goto :goto_1

    :cond_2
    const/4 v1, 0x3

    :goto_1
    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setLevel(I)Z

    invoke-direct {p0}, Lcom/miui/networkassistant/ui/order/orderdetail/BhNormalOrderDetailActivity;->getStatusPanel()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    :cond_3
    invoke-direct {p0}, Lcom/miui/networkassistant/ui/order/orderdetail/BhNormalOrderDetailActivity;->getTvOrderstatus()Landroid/widget/TextView;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/networkassistant/ui/order/orderdetail/BhNormalOrderDetailActivity;->orderStatusDesc:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-direct {p0}, Lcom/miui/networkassistant/ui/order/orderdetail/BhNormalOrderDetailActivity;->getLiOrderid()Lcom/miui/networkassistant/ui/view/BhCopyListIem;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/networkassistant/ui/order/orderdetail/BhNormalOrderDetailActivity;->partnerOrderId:Ljava/lang/String;

    invoke-static {v1, v3, v2, v3}, Lcom/miui/networkassistant/ui/bean/ConvinientExtraKt;->excludeNull$default(Ljava/lang/String;Ljava/lang/String;ILjava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/miui/networkassistant/ui/view/BhCopyListIem;->setValue(Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/miui/networkassistant/ui/order/orderdetail/BhNormalOrderDetailActivity;->getLiOperatorname()Lcom/miui/networkassistant/ui/view/ListItem;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/networkassistant/ui/order/orderdetail/BhNormalOrderDetailActivity;->carrier:Ljava/lang/String;

    invoke-static {v1, v3, v2, v3}, Lcom/miui/networkassistant/ui/bean/ConvinientExtraKt;->excludeNull$default(Ljava/lang/String;Ljava/lang/String;ILjava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/miui/networkassistant/ui/view/ListItem;->setValue(Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/miui/networkassistant/ui/order/orderdetail/BhNormalOrderDetailActivity;->getLiBuytime()Lcom/miui/networkassistant/ui/view/ListItem;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/networkassistant/ui/order/orderdetail/BhNormalOrderDetailActivity;->createTime:Ljava/lang/String;

    invoke-static {v1, v3, v2, v3}, Lcom/miui/networkassistant/ui/bean/ConvinientExtraKt;->excludeNull$default(Ljava/lang/String;Ljava/lang/String;ILjava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/miui/networkassistant/ui/view/ListItem;->setValue(Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/miui/networkassistant/ui/order/orderdetail/BhNormalOrderDetailActivity;->getLiPaidfee()Lcom/miui/networkassistant/ui/view/ListItem;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/networkassistant/ui/order/orderdetail/BhNormalOrderDetailActivity;->payFee:Ljava/lang/String;

    invoke-static {v1, v3, v2, v3}, Lcom/miui/networkassistant/ui/bean/ConvinientExtraKt;->excludeNull$default(Ljava/lang/String;Ljava/lang/String;ILjava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/miui/networkassistant/ui/view/ListItem;->setValue(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/miui/networkassistant/ui/order/orderdetail/BhNormalOrderDetailActivity;->phoneNumber:Ljava/lang/String;

    if-eqz v0, :cond_4

    invoke-static {v0}, Lbk/m;->b(Ljava/lang/Object;)V

    const/4 v1, 0x2

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v4

    invoke-virtual {v0, v1, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    const-string v1, "this as java.lang.String\u2026ing(startIndex, endIndex)"

    invoke-static {v0, v1}, Lbk/m;->d(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_2

    :cond_4
    move-object v0, v3

    :goto_2
    iput-object v0, p0, Lcom/miui/networkassistant/ui/order/orderdetail/BhNormalOrderDetailActivity;->phoneNumber:Ljava/lang/String;

    if-eqz v0, :cond_5

    new-instance v1, Ljk/e;

    const-string v4, "\\w(?=\\w{4})"

    invoke-direct {v1, v4}, Ljk/e;-><init>(Ljava/lang/String;)V

    const-string v4, "*"

    invoke-virtual {v1, v0, v4}, Ljk/e;->a(Ljava/lang/CharSequence;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_3

    :cond_5
    move-object v0, v3

    :goto_3
    invoke-direct {p0}, Lcom/miui/networkassistant/ui/order/orderdetail/BhNormalOrderDetailActivity;->getLiPhonenum()Lcom/miui/networkassistant/ui/view/ListItem;

    move-result-object v1

    invoke-static {v0, v3, v2, v3}, Lcom/miui/networkassistant/ui/bean/ConvinientExtraKt;->excludeNull$default(Ljava/lang/String;Ljava/lang/String;ILjava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/miui/networkassistant/ui/view/ListItem;->setValue(Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/miui/networkassistant/ui/order/orderdetail/BhNormalOrderDetailActivity;->getLiProductname()Lcom/miui/networkassistant/ui/view/ListItem;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/networkassistant/ui/order/orderdetail/BhNormalOrderDetailActivity;->packageTitle:Ljava/lang/String;

    invoke-static {v1, v3, v2, v3}, Lcom/miui/networkassistant/ui/bean/ConvinientExtraKt;->excludeNull$default(Ljava/lang/String;Ljava/lang/String;ILjava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/miui/networkassistant/ui/view/ListItem;->setValue(Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/miui/networkassistant/ui/order/orderdetail/BhNormalOrderDetailActivity;->getHotline()Landroid/widget/ImageView;

    move-result-object v0

    new-instance v1, Lcom/miui/networkassistant/ui/order/orderdetail/a;

    invoke-direct {v1, p0}, Lcom/miui/networkassistant/ui/order/orderdetail/a;-><init>(Lcom/miui/networkassistant/ui/order/orderdetail/BhNormalOrderDetailActivity;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method
