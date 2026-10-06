.class public final Lcom/miui/networkassistant/ui/order/orderlist/OrderRecordAdapter$RecordHolder;
.super Landroidx/recyclerview/widget/RecyclerView$c0;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/networkassistant/ui/order/orderlist/OrderRecordAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "RecordHolder"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/networkassistant/ui/order/orderlist/OrderRecordAdapter;

.field private final tvContent:Landroid/widget/TextView;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final tvPaidfee:Landroid/widget/TextView;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final tvPayStatus:Landroid/widget/TextView;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final tvProductname:Landroid/widget/TextView;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final tvTime:Landroid/widget/TextView;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/miui/networkassistant/ui/order/orderlist/OrderRecordAdapter;Landroid/view/View;)V
    .locals 1
    .param p1    # Lcom/miui/networkassistant/ui/order/orderlist/OrderRecordAdapter;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/View;",
            ")V"
        }
    .end annotation

    const-string v0, "_temView"

    invoke-static {p2, v0}, Lbk/m;->e(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/miui/networkassistant/ui/order/orderlist/OrderRecordAdapter$RecordHolder;->this$0:Lcom/miui/networkassistant/ui/order/orderlist/OrderRecordAdapter;

    invoke-direct {p0, p2}, Landroidx/recyclerview/widget/RecyclerView$c0;-><init>(Landroid/view/View;)V

    const p1, 0x7f0b0c55

    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    const-string v0, "_temView.findViewById(R.id.tv_content)"

    invoke-static {p1, v0}, Lbk/m;->d(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/miui/networkassistant/ui/order/orderlist/OrderRecordAdapter$RecordHolder;->tvContent:Landroid/widget/TextView;

    const p1, 0x7f0b0cf0

    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    const-string v0, "_temView.findViewById(R.id.tv_time)"

    invoke-static {p1, v0}, Lbk/m;->d(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/miui/networkassistant/ui/order/orderlist/OrderRecordAdapter$RecordHolder;->tvTime:Landroid/widget/TextView;

    const p1, 0x7f0b0cb1

    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    const-string v0, "_temView.findViewById(R.id.tv_pay_status)"

    invoke-static {p1, v0}, Lbk/m;->d(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/miui/networkassistant/ui/order/orderlist/OrderRecordAdapter$RecordHolder;->tvPayStatus:Landroid/widget/TextView;

    const p1, 0x7f0b0cb0

    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    const-string v0, "_temView.findViewById(R.id.tv_paidFee)"

    invoke-static {p1, v0}, Lbk/m;->d(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/miui/networkassistant/ui/order/orderlist/OrderRecordAdapter$RecordHolder;->tvPaidfee:Landroid/widget/TextView;

    const p1, 0x7f0b0cba

    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    const-string p2, "_temView.findViewById(R.id.tv_productName)"

    invoke-static {p1, p2}, Lbk/m;->d(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/miui/networkassistant/ui/order/orderlist/OrderRecordAdapter$RecordHolder;->tvProductname:Landroid/widget/TextView;

    return-void
.end method

.method public static synthetic a(Lcom/miui/networkassistant/ui/bean/RecordBean$OrderBean;Landroid/view/View;Lcom/miui/networkassistant/ui/order/orderlist/OrderRecordAdapter;Landroid/view/View;)V
    .locals 0

    invoke-static {p0, p1, p2, p3}, Lcom/miui/networkassistant/ui/order/orderlist/OrderRecordAdapter$RecordHolder;->setData$lambda$2$lambda$1(Lcom/miui/networkassistant/ui/bean/RecordBean$OrderBean;Landroid/view/View;Lcom/miui/networkassistant/ui/order/orderlist/OrderRecordAdapter;Landroid/view/View;)V

    return-void
.end method

.method private static final setData$lambda$2$lambda$1(Lcom/miui/networkassistant/ui/bean/RecordBean$OrderBean;Landroid/view/View;Lcom/miui/networkassistant/ui/order/orderlist/OrderRecordAdapter;Landroid/view/View;)V
    .locals 3

    const-string p3, "$orderBean"

    invoke-static {p0, p3}, Lbk/m;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p3, "$this_apply"

    invoke-static {p1, p3}, Lbk/m;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p3, "this$0"

    invoke-static {p2, p3}, Lbk/m;->e(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance p3, Ljava/util/HashMap;

    invoke-direct {p3}, Ljava/util/HashMap;-><init>()V

    invoke-virtual {p0}, Lcom/miui/networkassistant/ui/bean/RecordBean$OrderBean;->getPartnerOrderId()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "record_list_id"

    invoke-interface {p3, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "record_list"

    const-wide/16 v1, 0x1

    invoke-static {v0, v1, v2, p3}, Lcom/miui/networkassistant/utils/AnalyticsHelper;->recordCalculateEvent(Ljava/lang/String;JLjava/util/Map;)V

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p3

    new-instance v0, Landroid/content/Intent;

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    const-class v1, Lcom/miui/networkassistant/ui/order/orderdetail/BhNormalOrderDetailActivity;

    invoke-direct {v0, p1, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0}, Lcom/miui/networkassistant/ui/bean/RecordBean$OrderBean;->getPartnerOrderId()Ljava/lang/String;

    move-result-object p1

    const-string v1, "partnerOrderId"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/miui/networkassistant/ui/bean/RecordBean$OrderBean;->getPhoneNumber()Ljava/lang/String;

    move-result-object p1

    const-string v1, "phoneNumber"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {p2}, Lcom/miui/networkassistant/ui/order/orderlist/OrderRecordAdapter;->getDateFormat()Ljava/text/SimpleDateFormat;

    move-result-object p1

    invoke-virtual {p0}, Lcom/miui/networkassistant/ui/bean/RecordBean$OrderBean;->getCreateTime()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/text/Format;->format(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    const-string p2, "createTime"

    invoke-virtual {v0, p2, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/miui/networkassistant/ui/bean/RecordBean$OrderBean;->getCarrier()Ljava/lang/String;

    move-result-object p1

    const-string p2, "carrier"

    invoke-virtual {v0, p2, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/miui/networkassistant/ui/bean/RecordBean$OrderBean;->getPayFeeDesc()Ljava/lang/String;

    move-result-object p1

    const-string p2, "payFee"

    invoke-virtual {v0, p2, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/miui/networkassistant/ui/bean/RecordBean$OrderBean;->getProductTitle1()Ljava/lang/String;

    move-result-object p1

    const-string p2, "packageTitle"

    invoke-virtual {v0, p2, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/miui/networkassistant/ui/bean/RecordBean$OrderBean;->getCustomerServiceUrl()Ljava/lang/String;

    move-result-object p1

    const-string p2, "serviceUrl"

    invoke-virtual {v0, p2, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/miui/networkassistant/ui/bean/RecordBean$OrderBean;->getOrderStatusDesc()Ljava/lang/String;

    move-result-object p1

    const-string p2, "orderStatusDesc"

    invoke-virtual {v0, p2, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/miui/networkassistant/ui/bean/RecordBean$OrderBean;->getOrderStatus()Ljava/lang/String;

    move-result-object p0

    const-string p1, "orderStatus"

    invoke-virtual {v0, p1, p0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {p3, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    return-void
.end method


# virtual methods
.method public final setData(Lcom/miui/networkassistant/ui/bean/RecordBean$OrderBean;)V
    .locals 7
    .param p1    # Lcom/miui/networkassistant/ui/bean/RecordBean$OrderBean;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "orderBean"

    invoke-static {p1, v0}, Lbk/m;->e(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView$c0;->itemView:Landroid/view/View;

    iget-object v1, p0, Lcom/miui/networkassistant/ui/order/orderlist/OrderRecordAdapter$RecordHolder;->this$0:Lcom/miui/networkassistant/ui/order/orderlist/OrderRecordAdapter;

    iget-object v2, p0, Lcom/miui/networkassistant/ui/order/orderlist/OrderRecordAdapter$RecordHolder;->tvContent:Landroid/widget/TextView;

    invoke-virtual {p1}, Lcom/miui/networkassistant/ui/bean/RecordBean$OrderBean;->getCarrier()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v2, p0, Lcom/miui/networkassistant/ui/order/orderlist/OrderRecordAdapter$RecordHolder;->tvProductname:Landroid/widget/TextView;

    invoke-virtual {p1}, Lcom/miui/networkassistant/ui/bean/RecordBean$OrderBean;->getProductTitle1()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v2, p0, Lcom/miui/networkassistant/ui/order/orderlist/OrderRecordAdapter$RecordHolder;->tvTime:Landroid/widget/TextView;

    invoke-virtual {v1}, Lcom/miui/networkassistant/ui/order/orderlist/OrderRecordAdapter;->getSimpleDateFormat()Ljava/text/SimpleDateFormat;

    move-result-object v3

    invoke-virtual {p1}, Lcom/miui/networkassistant/ui/bean/RecordBean$OrderBean;->getCreateTime()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/text/Format;->format(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v2, p0, Lcom/miui/networkassistant/ui/order/orderlist/OrderRecordAdapter$RecordHolder;->tvPayStatus:Landroid/widget/TextView;

    invoke-virtual {p1}, Lcom/miui/networkassistant/ui/bean/RecordBean$OrderBean;->getOrderStatusDesc()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {p1}, Lcom/miui/networkassistant/ui/bean/RecordBean$OrderBean;->getOrderStatus()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-virtual {p1}, Lcom/miui/networkassistant/ui/bean/RecordBean$OrderBean;->getOrderStatus()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    const/4 v4, 0x2

    const/4 v5, 0x0

    const-string v6, "Failed"

    invoke-static {v2, v6, v3, v4, v5}, Ljk/f;->x(Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZILjava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/miui/networkassistant/ui/order/orderlist/OrderRecordAdapter$RecordHolder;->tvPayStatus:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f060cd9

    goto :goto_0

    :cond_0
    iget-object v2, p0, Lcom/miui/networkassistant/ui/order/orderlist/OrderRecordAdapter$RecordHolder;->tvPayStatus:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f060110

    :goto_0
    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getColor(I)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setTextColor(I)V

    iget-object v2, p0, Lcom/miui/networkassistant/ui/order/orderlist/OrderRecordAdapter$RecordHolder;->tvPaidfee:Landroid/widget/TextView;

    invoke-virtual {p1}, Lcom/miui/networkassistant/ui/bean/RecordBean$OrderBean;->getPayFeeDesc()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    new-instance v2, Lcom/miui/networkassistant/ui/order/orderlist/b;

    invoke-direct {v2, p1, v0, v1}, Lcom/miui/networkassistant/ui/order/orderlist/b;-><init>(Lcom/miui/networkassistant/ui/bean/RecordBean$OrderBean;Landroid/view/View;Lcom/miui/networkassistant/ui/order/orderlist/OrderRecordAdapter;)V

    invoke-virtual {v0, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object p1, p0, Landroidx/recyclerview/widget/RecyclerView$c0;->itemView:Landroid/view/View;

    invoke-static {p1}, Lcom/miui/networkassistant/utils/FolmeHelper;->onCardPress(Landroid/view/View;)V

    return-void
.end method
