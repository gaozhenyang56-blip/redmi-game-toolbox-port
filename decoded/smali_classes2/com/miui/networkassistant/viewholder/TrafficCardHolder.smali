.class public final Lcom/miui/networkassistant/viewholder/TrafficCardHolder;
.super Landroidx/recyclerview/widget/RecyclerView$c0;
.source "SourceFile"


# instance fields
.field private final buyTrafficIdTitle:Landroid/widget/RelativeLayout;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private cardOnClickListener:Lcom/miui/networkassistant/viewholder/CardOnClickListener;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private mAlertDialog:Lmiuix/appcompat/app/AlertDialog;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private noPhoneNumListener:Lcom/miui/networkassistant/viewholder/NoPhoneNumCardOnClickListener;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private final tv1:Landroid/widget/TextView;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final tv2:Landroid/widget/TextView;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final tv4:Landroid/widget/TextView;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final tv5:Landroid/widget/TextView;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final tvSalePrice:Landroid/widget/TextView;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final tvTag:Landroid/widget/TextView;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/view/View;Lcom/miui/networkassistant/viewholder/CardOnClickListener;Lcom/miui/networkassistant/viewholder/NoPhoneNumCardOnClickListener;)V
    .locals 1
    .param p1    # Landroid/content/Context;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Landroid/view/View;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p3    # Lcom/miui/networkassistant/viewholder/CardOnClickListener;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p4    # Lcom/miui/networkassistant/viewholder/NoPhoneNumCardOnClickListener;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    const-string v0, "mContext"

    invoke-static {p1, v0}, Lbk/m;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "itemView"

    invoke-static {p2, p1}, Lbk/m;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, p2}, Landroidx/recyclerview/widget/RecyclerView$c0;-><init>(Landroid/view/View;)V

    iput-object p3, p0, Lcom/miui/networkassistant/viewholder/TrafficCardHolder;->cardOnClickListener:Lcom/miui/networkassistant/viewholder/CardOnClickListener;

    iput-object p4, p0, Lcom/miui/networkassistant/viewholder/TrafficCardHolder;->noPhoneNumListener:Lcom/miui/networkassistant/viewholder/NoPhoneNumCardOnClickListener;

    const p1, 0x7f0b0cec

    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    const-string p3, "itemView.findViewById(R.id.tv_tag)"

    invoke-static {p1, p3}, Lbk/m;->d(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/miui/networkassistant/viewholder/TrafficCardHolder;->tvTag:Landroid/widget/TextView;

    const p1, 0x7f0b0c18

    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    const-string p3, "itemView.findViewById(R.id.tv_1)"

    invoke-static {p1, p3}, Lbk/m;->d(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/miui/networkassistant/viewholder/TrafficCardHolder;->tv1:Landroid/widget/TextView;

    const p1, 0x7f0b0c19

    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    const-string p3, "itemView.findViewById(R.id.tv_2)"

    invoke-static {p1, p3}, Lbk/m;->d(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/miui/networkassistant/viewholder/TrafficCardHolder;->tv2:Landroid/widget/TextView;

    const p1, 0x7f0b0c1c

    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    const-string p3, "itemView.findViewById(R.id.tv_4)"

    invoke-static {p1, p3}, Lbk/m;->d(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/miui/networkassistant/viewholder/TrafficCardHolder;->tv4:Landroid/widget/TextView;

    const p1, 0x7f0b0c1d

    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    const-string p3, "itemView.findViewById(R.id.tv_5)"

    invoke-static {p1, p3}, Lbk/m;->d(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/miui/networkassistant/viewholder/TrafficCardHolder;->tv5:Landroid/widget/TextView;

    const p1, 0x7f0b0cc7

    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    const-string p3, "itemView.findViewById(R.id.tv_sale_price)"

    invoke-static {p1, p3}, Lbk/m;->d(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/miui/networkassistant/viewholder/TrafficCardHolder;->tvSalePrice:Landroid/widget/TextView;

    const p1, 0x7f0b01ed

    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    const-string p2, "itemView.findViewById(R.id.buy_traffic_id_title)"

    invoke-static {p1, p2}, Lbk/m;->d(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Landroid/widget/RelativeLayout;

    iput-object p1, p0, Lcom/miui/networkassistant/viewholder/TrafficCardHolder;->buyTrafficIdTitle:Landroid/widget/RelativeLayout;

    return-void
.end method

.method public synthetic constructor <init>(Landroid/content/Context;Landroid/view/View;Lcom/miui/networkassistant/viewholder/CardOnClickListener;Lcom/miui/networkassistant/viewholder/NoPhoneNumCardOnClickListener;ILbk/g;)V
    .locals 1

    and-int/lit8 p6, p5, 0x4

    const/4 v0, 0x0

    if-eqz p6, :cond_0

    move-object p3, v0

    :cond_0
    and-int/lit8 p5, p5, 0x8

    if-eqz p5, :cond_1

    move-object p4, v0

    :cond_1
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/miui/networkassistant/viewholder/TrafficCardHolder;-><init>(Landroid/content/Context;Landroid/view/View;Lcom/miui/networkassistant/viewholder/CardOnClickListener;Lcom/miui/networkassistant/viewholder/NoPhoneNumCardOnClickListener;)V

    return-void
.end method

.method public static synthetic a(Ljava/lang/String;Lcom/miui/networkassistant/viewholder/TrafficCardHolder;Lcom/miui/networkassistant/ui/bean/CardSData;Lcom/miui/networkassistant/ui/bean/CardSData;ILjava/lang/String;ZLandroid/view/View;Landroid/view/View;)V
    .locals 0

    invoke-static/range {p0 .. p8}, Lcom/miui/networkassistant/viewholder/TrafficCardHolder;->bindData$lambda$4$lambda$3$lambda$1(Ljava/lang/String;Lcom/miui/networkassistant/viewholder/TrafficCardHolder;Lcom/miui/networkassistant/ui/bean/CardSData;Lcom/miui/networkassistant/ui/bean/CardSData;ILjava/lang/String;ZLandroid/view/View;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic b(Landroid/view/View;Landroid/view/View;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/miui/networkassistant/viewholder/TrafficCardHolder;->bindData$lambda$4$lambda$3$lambda$2(Landroid/view/View;Landroid/view/View;)V

    return-void
.end method

.method private static final bindData$lambda$4$lambda$3$lambda$1(Ljava/lang/String;Lcom/miui/networkassistant/viewholder/TrafficCardHolder;Lcom/miui/networkassistant/ui/bean/CardSData;Lcom/miui/networkassistant/ui/bean/CardSData;ILjava/lang/String;ZLandroid/view/View;Landroid/view/View;)V
    .locals 7

    const-string p8, "this$0"

    invoke-static {p1, p8}, Lbk/m;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p8, "$this_apply"

    invoke-static {p2, p8}, Lbk/m;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p8, "$mPolicy"

    invoke-static {p5, p8}, Lbk/m;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p8, "$this_apply$1"

    invoke-static {p7, p8}, Lbk/m;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p8

    if-eqz p8, :cond_0

    iget-object v0, p1, Lcom/miui/networkassistant/viewholder/TrafficCardHolder;->noPhoneNumListener:Lcom/miui/networkassistant/viewholder/NoPhoneNumCardOnClickListener;

    if-eqz v0, :cond_1

    invoke-virtual {p2}, Lcom/miui/networkassistant/ui/bean/CardSData;->getCarrier()Ljava/lang/String;

    move-result-object v1

    iget-object v4, p1, Lcom/miui/networkassistant/viewholder/TrafficCardHolder;->cardOnClickListener:Lcom/miui/networkassistant/viewholder/CardOnClickListener;

    move-object v2, p3

    move v3, p4

    move-object v5, p5

    move v6, p6

    invoke-interface/range {v0 .. v6}, Lcom/miui/networkassistant/viewholder/NoPhoneNumCardOnClickListener;->clickSetPhoneNum(Ljava/lang/String;Lcom/miui/networkassistant/ui/bean/CardSData;ILcom/miui/networkassistant/viewholder/CardOnClickListener;Ljava/lang/String;Z)V

    goto/16 :goto_0

    :cond_0
    new-instance p3, Ljava/util/HashMap;

    invoke-direct {p3}, Ljava/util/HashMap;-><init>()V

    invoke-virtual {p2}, Lcom/miui/networkassistant/ui/bean/CardSData;->getProductTitle1()Ljava/lang/String;

    move-result-object p8

    invoke-static {p8}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p8

    const-string v0, "product_size"

    invoke-interface {p3, v0, p8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-wide/16 v0, 0x1

    const-string p8, "product"

    invoke-static {p8, v0, v1, p3}, Lcom/miui/networkassistant/utils/AnalyticsHelper;->recordCalculateEvent(Ljava/lang/String;JLjava/util/Map;)V

    new-instance p3, Lcom/miui/networkassistant/ui/dialog/TrafficPurchaseDialog;

    invoke-virtual {p7}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p7

    const-string p8, "context"

    invoke-static {p7, p8}, Lbk/m;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p3, p7}, Lcom/miui/networkassistant/ui/dialog/TrafficPurchaseDialog;-><init>(Landroid/content/Context;)V

    invoke-virtual {p2}, Lcom/miui/networkassistant/ui/bean/CardSData;->getProductTitle1()Ljava/lang/String;

    move-result-object p7

    invoke-virtual {p3, p7}, Lcom/miui/networkassistant/ui/dialog/TrafficPurchaseDialog;->setTitle(Ljava/lang/String;)Lcom/miui/networkassistant/ui/dialog/TrafficPurchaseDialog;

    move-result-object p3

    invoke-virtual {p2}, Lcom/miui/networkassistant/ui/bean/CardSData;->getProductDesc2()Ljava/lang/String;

    move-result-object p7

    invoke-virtual {p3, p7}, Lcom/miui/networkassistant/ui/dialog/TrafficPurchaseDialog;->setDesc(Ljava/lang/String;)Lcom/miui/networkassistant/ui/dialog/TrafficPurchaseDialog;

    move-result-object p3

    invoke-virtual {p2}, Lcom/miui/networkassistant/ui/bean/CardSData;->getProductDesc1()Ljava/lang/String;

    move-result-object p7

    invoke-virtual {p3, p7}, Lcom/miui/networkassistant/ui/dialog/TrafficPurchaseDialog;->setProductTitle(Ljava/lang/String;)Lcom/miui/networkassistant/ui/dialog/TrafficPurchaseDialog;

    move-result-object p3

    invoke-virtual {p2}, Lcom/miui/networkassistant/ui/bean/CardSData;->getProductTitle2()Ljava/lang/String;

    move-result-object p7

    invoke-virtual {p3, p7}, Lcom/miui/networkassistant/ui/dialog/TrafficPurchaseDialog;->setProductTitle2(Ljava/lang/String;)Lcom/miui/networkassistant/ui/dialog/TrafficPurchaseDialog;

    move-result-object p3

    invoke-virtual {p2}, Lcom/miui/networkassistant/ui/bean/CardSData;->getSalePrice()Ljava/lang/String;

    move-result-object p7

    invoke-virtual {p3, p7}, Lcom/miui/networkassistant/ui/dialog/TrafficPurchaseDialog;->setFee(Ljava/lang/String;)Lcom/miui/networkassistant/ui/dialog/TrafficPurchaseDialog;

    move-result-object p3

    invoke-virtual {p2}, Lcom/miui/networkassistant/ui/bean/CardSData;->getSalePriceDesc()Ljava/lang/String;

    move-result-object p7

    invoke-virtual {p3, p7}, Lcom/miui/networkassistant/ui/dialog/TrafficPurchaseDialog;->setFeeText(Ljava/lang/String;)Lcom/miui/networkassistant/ui/dialog/TrafficPurchaseDialog;

    move-result-object p3

    invoke-virtual {p2}, Lcom/miui/networkassistant/ui/bean/CardSData;->getProductId()Ljava/lang/String;

    move-result-object p7

    invoke-virtual {p3, p7}, Lcom/miui/networkassistant/ui/dialog/TrafficPurchaseDialog;->setProductId(Ljava/lang/String;)Lcom/miui/networkassistant/ui/dialog/TrafficPurchaseDialog;

    move-result-object p3

    invoke-virtual {p3, p0}, Lcom/miui/networkassistant/ui/dialog/TrafficPurchaseDialog;->setPhoneNumber(Ljava/lang/String;)Lcom/miui/networkassistant/ui/dialog/TrafficPurchaseDialog;

    move-result-object p0

    invoke-virtual {p0, p4}, Lcom/miui/networkassistant/ui/dialog/TrafficPurchaseDialog;->setPosition(I)Lcom/miui/networkassistant/ui/dialog/TrafficPurchaseDialog;

    move-result-object p0

    iget-object p1, p1, Lcom/miui/networkassistant/viewholder/TrafficCardHolder;->cardOnClickListener:Lcom/miui/networkassistant/viewholder/CardOnClickListener;

    invoke-virtual {p0, p1}, Lcom/miui/networkassistant/ui/dialog/TrafficPurchaseDialog;->setCardOnClickListener(Lcom/miui/networkassistant/viewholder/CardOnClickListener;)Lcom/miui/networkassistant/ui/dialog/TrafficPurchaseDialog;

    move-result-object p0

    invoke-virtual {p2}, Lcom/miui/networkassistant/ui/bean/CardSData;->getDataSize()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/miui/networkassistant/ui/dialog/TrafficPurchaseDialog;->setDataSize(Ljava/lang/String;)Lcom/miui/networkassistant/ui/dialog/TrafficPurchaseDialog;

    move-result-object p0

    invoke-virtual {p2}, Lcom/miui/networkassistant/ui/bean/CardSData;->getValidityPeriod()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/miui/networkassistant/ui/dialog/TrafficPurchaseDialog;->setValidityPeriod(Ljava/lang/String;)Lcom/miui/networkassistant/ui/dialog/TrafficPurchaseDialog;

    move-result-object p0

    invoke-virtual {p0, p6}, Lcom/miui/networkassistant/ui/dialog/TrafficPurchaseDialog;->setPolicyDisplay(Z)Lcom/miui/networkassistant/ui/dialog/TrafficPurchaseDialog;

    move-result-object p0

    invoke-virtual {p0, p5}, Lcom/miui/networkassistant/ui/dialog/TrafficPurchaseDialog;->setPolicyText(Ljava/lang/String;)Lcom/miui/networkassistant/ui/dialog/TrafficPurchaseDialog;

    move-result-object p0

    invoke-virtual {p0}, Lmiuix/appcompat/app/AlertDialog;->show()V

    :cond_1
    :goto_0
    return-void
.end method

.method private static final bindData$lambda$4$lambda$3$lambda$2(Landroid/view/View;Landroid/view/View;)V
    .locals 1

    const-string p1, "$this_apply"

    invoke-static {p0, p1}, Lbk/m;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    const v0, 0x7f120405

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p0

    const/4 v0, 0x1

    invoke-static {p1, p0, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p0

    invoke-virtual {p0}, Landroid/widget/Toast;->show()V

    return-void
.end method


# virtual methods
.method public final bindData(ZLjava/lang/String;ZILcom/miui/networkassistant/ui/bean/CardSData;Ljava/lang/String;ZLjava/lang/String;III)V
    .locals 12
    .param p2    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p5    # Lcom/miui/networkassistant/ui/bean/CardSData;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p6    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p8    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    move-object v9, p0

    const-string v0, "mPolicy"

    move-object v6, p2

    invoke-static {p2, v0}, Lbk/m;->e(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v10, v9, Landroidx/recyclerview/widget/RecyclerView$c0;->itemView:Landroid/view/View;

    iget-object v0, v9, Lcom/miui/networkassistant/viewholder/TrafficCardHolder;->tvTag:Landroid/widget/TextView;

    invoke-virtual {v10}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f080487

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/content/res/Resources;->getDrawable(ILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    invoke-static {v10}, Lcom/miui/networkassistant/utils/FolmeHelper;->onCardPress(Landroid/view/View;)V

    if-eqz p5, :cond_5

    iget-object v0, v9, Lcom/miui/networkassistant/viewholder/TrafficCardHolder;->tv1:Landroid/widget/TextView;

    invoke-virtual/range {p5 .. p5}, Lcom/miui/networkassistant/ui/bean/CardSData;->getProductTitle1()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, v9, Lcom/miui/networkassistant/viewholder/TrafficCardHolder;->buyTrafficIdTitle:Landroid/widget/RelativeLayout;

    const/16 v1, 0x28

    const/16 v2, 0x23

    invoke-virtual {v0, v1, v2, v1, v2}, Landroid/view/View;->setPadding(IIII)V

    iget-object v0, v9, Lcom/miui/networkassistant/viewholder/TrafficCardHolder;->tv2:Landroid/widget/TextView;

    invoke-virtual/range {p5 .. p5}, Lcom/miui/networkassistant/ui/bean/CardSData;->getProductTitle2()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual/range {p5 .. p5}, Lcom/miui/networkassistant/ui/bean/CardSData;->getProductTitle3()Ljava/lang/String;

    move-result-object v0

    const/16 v1, 0x8

    const/4 v2, 0x0

    if-nez v0, :cond_0

    iget-object v0, v9, Lcom/miui/networkassistant/viewholder/TrafficCardHolder;->tvSalePrice:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    :cond_0
    iget-object v0, v9, Lcom/miui/networkassistant/viewholder/TrafficCardHolder;->tvSalePrice:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, v9, Lcom/miui/networkassistant/viewholder/TrafficCardHolder;->tvSalePrice:Landroid/widget/TextView;

    invoke-virtual/range {p5 .. p5}, Lcom/miui/networkassistant/ui/bean/CardSData;->getProductTitle3()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :goto_0
    iget-object v0, v9, Lcom/miui/networkassistant/viewholder/TrafficCardHolder;->tvSalePrice:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getPaint()Landroid/text/TextPaint;

    move-result-object v0

    const/4 v4, 0x1

    invoke-virtual {v0, v4}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    iget-object v0, v9, Lcom/miui/networkassistant/viewholder/TrafficCardHolder;->tvSalePrice:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getPaint()Landroid/text/TextPaint;

    move-result-object v0

    const/16 v5, 0x10

    invoke-virtual {v0, v5}, Landroid/graphics/Paint;->setFlags(I)V

    iget-object v0, v9, Lcom/miui/networkassistant/viewholder/TrafficCardHolder;->tv4:Landroid/widget/TextView;

    invoke-virtual/range {p5 .. p5}, Lcom/miui/networkassistant/ui/bean/CardSData;->getProductDesc1()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, v9, Lcom/miui/networkassistant/viewholder/TrafficCardHolder;->tv5:Landroid/widget/TextView;

    invoke-virtual/range {p5 .. p5}, Lcom/miui/networkassistant/ui/bean/CardSData;->getProductDesc2()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const/4 v0, 0x2

    const-string v5, "enable"

    if-nez p7, :cond_1

    invoke-virtual {v10, v4}, Landroid/view/View;->setEnabled(Z)V

    iget-object v4, v9, Lcom/miui/networkassistant/viewholder/TrafficCardHolder;->tvTag:Landroid/widget/TextView;

    invoke-virtual {v4, v2}, Landroid/widget/TextView;->setEnabled(Z)V

    :goto_1
    iget-object v4, v9, Lcom/miui/networkassistant/viewholder/TrafficCardHolder;->tvTag:Landroid/widget/TextView;

    invoke-virtual {v4, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_2

    :cond_1
    invoke-virtual/range {p5 .. p5}, Lcom/miui/networkassistant/ui/bean/CardSData;->getDataFlag()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7, v5, v2, v0, v3}, Ljk/f;->m(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)Z

    move-result v7

    invoke-virtual {v10, v4}, Landroid/view/View;->setEnabled(Z)V

    if-eqz v7, :cond_3

    iget-object v7, v9, Lcom/miui/networkassistant/viewholder/TrafficCardHolder;->tvTag:Landroid/widget/TextView;

    invoke-virtual {v7, v2}, Landroid/view/View;->setVisibility(I)V

    iget-object v7, v9, Lcom/miui/networkassistant/viewholder/TrafficCardHolder;->tvTag:Landroid/widget/TextView;

    invoke-virtual {v7, v4}, Landroid/widget/TextView;->setEnabled(Z)V

    invoke-virtual/range {p5 .. p5}, Lcom/miui/networkassistant/ui/bean/CardSData;->getActivityTag()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_2

    goto :goto_1

    :cond_2
    iget-object v1, v9, Lcom/miui/networkassistant/viewholder/TrafficCardHolder;->tvTag:Landroid/widget/TextView;

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    iget-object v1, v9, Lcom/miui/networkassistant/viewholder/TrafficCardHolder;->tvTag:Landroid/widget/TextView;

    invoke-virtual/range {p5 .. p5}, Lcom/miui/networkassistant/ui/bean/CardSData;->getActivityTag()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_2

    :cond_3
    iget-object v4, v9, Lcom/miui/networkassistant/viewholder/TrafficCardHolder;->tvTag:Landroid/widget/TextView;

    invoke-virtual {v4, v1}, Landroid/view/View;->setVisibility(I)V

    iget-object v1, v9, Lcom/miui/networkassistant/viewholder/TrafficCardHolder;->tvTag:Landroid/widget/TextView;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setEnabled(Z)V

    :goto_2
    invoke-virtual/range {p5 .. p5}, Lcom/miui/networkassistant/ui/bean/CardSData;->getDataFlag()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v5, v2, v0, v3}, Ljk/f;->m(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object v0, v9, Lcom/miui/networkassistant/viewholder/TrafficCardHolder;->buyTrafficIdTitle:Landroid/widget/RelativeLayout;

    invoke-virtual {v10}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    move/from16 v2, p11

    invoke-virtual {v1, v2, v3}, Landroid/content/res/Resources;->getDrawable(ILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    new-instance v11, Lqa/a;

    move-object v0, v11

    move-object/from16 v1, p6

    move-object v2, p0

    move-object/from16 v3, p5

    move-object/from16 v4, p5

    move/from16 v5, p4

    move-object v6, p2

    move v7, p1

    move-object v8, v10

    invoke-direct/range {v0 .. v8}, Lqa/a;-><init>(Ljava/lang/String;Lcom/miui/networkassistant/viewholder/TrafficCardHolder;Lcom/miui/networkassistant/ui/bean/CardSData;Lcom/miui/networkassistant/ui/bean/CardSData;ILjava/lang/String;ZLandroid/view/View;)V

    invoke-virtual {v10, v11}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto/16 :goto_3

    :cond_4
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    invoke-virtual/range {p5 .. p5}, Lcom/miui/networkassistant/ui/bean/CardSData;->getProductTitle1()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "product_amount"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-wide/16 v1, 0x1

    const-string v4, "product"

    invoke-static {v4, v1, v2, v0}, Lcom/miui/networkassistant/utils/AnalyticsHelper;->recordCalculateEvent(Ljava/lang/String;JLjava/util/Map;)V

    iget-object v0, v9, Lcom/miui/networkassistant/viewholder/TrafficCardHolder;->tv1:Landroid/widget/TextView;

    invoke-virtual {v10}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f060168

    invoke-virtual {v1, v2, v3}, Landroid/content/res/Resources;->getColor(ILandroid/content/res/Resources$Theme;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    iget-object v0, v9, Lcom/miui/networkassistant/viewholder/TrafficCardHolder;->tv2:Landroid/widget/TextView;

    invoke-virtual {v10}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f060169

    invoke-virtual {v1, v2, v3}, Landroid/content/res/Resources;->getColor(ILandroid/content/res/Resources$Theme;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    iget-object v0, v9, Lcom/miui/networkassistant/viewholder/TrafficCardHolder;->tv4:Landroid/widget/TextView;

    invoke-virtual {v10}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f06016a

    invoke-virtual {v1, v2, v3}, Landroid/content/res/Resources;->getColor(ILandroid/content/res/Resources$Theme;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    iget-object v0, v9, Lcom/miui/networkassistant/viewholder/TrafficCardHolder;->tv5:Landroid/widget/TextView;

    invoke-virtual {v10}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f06016b

    invoke-virtual {v1, v2, v3}, Landroid/content/res/Resources;->getColor(ILandroid/content/res/Resources$Theme;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    iget-object v0, v9, Lcom/miui/networkassistant/viewholder/TrafficCardHolder;->tvSalePrice:Landroid/widget/TextView;

    invoke-virtual {v10}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f06016c

    invoke-virtual {v1, v2, v3}, Landroid/content/res/Resources;->getColor(ILandroid/content/res/Resources$Theme;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    iget-object v0, v9, Lcom/miui/networkassistant/viewholder/TrafficCardHolder;->buyTrafficIdTitle:Landroid/widget/RelativeLayout;

    invoke-virtual {v10}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f08047f

    invoke-virtual {v1, v2, v3}, Landroid/content/res/Resources;->getDrawable(ILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    new-instance v0, Lqa/b;

    invoke-direct {v0, v10}, Lqa/b;-><init>(Landroid/view/View;)V

    invoke-virtual {v10, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_5
    :goto_3
    return-void
.end method

.method public final getCardOnClickListener()Lcom/miui/networkassistant/viewholder/CardOnClickListener;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    iget-object v0, p0, Lcom/miui/networkassistant/viewholder/TrafficCardHolder;->cardOnClickListener:Lcom/miui/networkassistant/viewholder/CardOnClickListener;

    return-object v0
.end method

.method public final getMAlertDialog()Lmiuix/appcompat/app/AlertDialog;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    iget-object v0, p0, Lcom/miui/networkassistant/viewholder/TrafficCardHolder;->mAlertDialog:Lmiuix/appcompat/app/AlertDialog;

    return-object v0
.end method

.method public final getNoPhoneNumListener()Lcom/miui/networkassistant/viewholder/NoPhoneNumCardOnClickListener;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    iget-object v0, p0, Lcom/miui/networkassistant/viewholder/TrafficCardHolder;->noPhoneNumListener:Lcom/miui/networkassistant/viewholder/NoPhoneNumCardOnClickListener;

    return-object v0
.end method

.method public final setCardOnClickListener(Lcom/miui/networkassistant/viewholder/CardOnClickListener;)V
    .locals 0
    .param p1    # Lcom/miui/networkassistant/viewholder/CardOnClickListener;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    iput-object p1, p0, Lcom/miui/networkassistant/viewholder/TrafficCardHolder;->cardOnClickListener:Lcom/miui/networkassistant/viewholder/CardOnClickListener;

    return-void
.end method

.method public final setMAlertDialog(Lmiuix/appcompat/app/AlertDialog;)V
    .locals 0
    .param p1    # Lmiuix/appcompat/app/AlertDialog;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    iput-object p1, p0, Lcom/miui/networkassistant/viewholder/TrafficCardHolder;->mAlertDialog:Lmiuix/appcompat/app/AlertDialog;

    return-void
.end method

.method public final setNoPhoneNumListener(Lcom/miui/networkassistant/viewholder/NoPhoneNumCardOnClickListener;)V
    .locals 0
    .param p1    # Lcom/miui/networkassistant/viewholder/NoPhoneNumCardOnClickListener;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    iput-object p1, p0, Lcom/miui/networkassistant/viewholder/TrafficCardHolder;->noPhoneNumListener:Lcom/miui/networkassistant/viewholder/NoPhoneNumCardOnClickListener;

    return-void
.end method
