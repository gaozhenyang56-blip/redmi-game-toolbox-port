.class Lcom/miui/networkassistant/ui/GetPayStatusActivity$1;
.super Lcom/miui/common/base/asyn/b;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/networkassistant/ui/GetPayStatusActivity;->updateOrderState()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/networkassistant/ui/GetPayStatusActivity;


# direct methods
.method constructor <init>(Lcom/miui/networkassistant/ui/GetPayStatusActivity;Landroid/app/Activity;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/networkassistant/ui/GetPayStatusActivity$1;->this$0:Lcom/miui/networkassistant/ui/GetPayStatusActivity;

    invoke-direct {p0, p2}, Lcom/miui/common/base/asyn/b;-><init>(Landroid/app/Activity;)V

    return-void
.end method


# virtual methods
.method protected runOnUiThread()V
    .locals 7

    iget-object v0, p0, Lcom/miui/networkassistant/ui/GetPayStatusActivity$1;->this$0:Lcom/miui/networkassistant/ui/GetPayStatusActivity;

    invoke-static {v0}, Lcom/miui/networkassistant/ui/GetPayStatusActivity;->access$000(Lcom/miui/networkassistant/ui/GetPayStatusActivity;)Z

    move-result v0

    const v1, 0x7f0b086b

    const/16 v2, 0x8

    const/4 v3, 0x0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/networkassistant/ui/GetPayStatusActivity$1;->this$0:Lcom/miui/networkassistant/ui/GetPayStatusActivity;

    const v4, 0x7f0b086c

    invoke-virtual {v0, v4}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/LinearLayout;

    invoke-static {v0, v4}, Lcom/miui/networkassistant/ui/GetPayStatusActivity;->access$102(Lcom/miui/networkassistant/ui/GetPayStatusActivity;Landroid/widget/LinearLayout;)Landroid/widget/LinearLayout;

    iget-object v0, p0, Lcom/miui/networkassistant/ui/GetPayStatusActivity$1;->this$0:Lcom/miui/networkassistant/ui/GetPayStatusActivity;

    invoke-static {v0}, Lcom/miui/networkassistant/ui/GetPayStatusActivity;->access$100(Lcom/miui/networkassistant/ui/GetPayStatusActivity;)Landroid/widget/LinearLayout;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/miui/networkassistant/ui/GetPayStatusActivity$1;->this$0:Lcom/miui/networkassistant/ui/GetPayStatusActivity;

    const v4, 0x7f0b0cc2

    invoke-virtual {v0, v4}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    invoke-static {v0, v4}, Lcom/miui/networkassistant/ui/GetPayStatusActivity;->access$202(Lcom/miui/networkassistant/ui/GetPayStatusActivity;Landroid/widget/TextView;)Landroid/widget/TextView;

    iget-object v0, p0, Lcom/miui/networkassistant/ui/GetPayStatusActivity$1;->this$0:Lcom/miui/networkassistant/ui/GetPayStatusActivity;

    invoke-static {v0}, Lcom/miui/networkassistant/ui/GetPayStatusActivity;->access$200(Lcom/miui/networkassistant/ui/GetPayStatusActivity;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/miui/networkassistant/ui/GetPayStatusActivity$1;->this$0:Lcom/miui/networkassistant/ui/GetPayStatusActivity;

    invoke-static {v0}, Lcom/miui/networkassistant/ui/GetPayStatusActivity;->access$300(Lcom/miui/networkassistant/ui/GetPayStatusActivity;)Lmiuix/androidbasewidget/widget/ProgressBar;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/miui/networkassistant/ui/GetPayStatusActivity$1;->this$0:Lcom/miui/networkassistant/ui/GetPayStatusActivity;

    invoke-static {v0}, Lcom/miui/networkassistant/ui/GetPayStatusActivity;->access$400(Lcom/miui/networkassistant/ui/GetPayStatusActivity;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/miui/networkassistant/ui/GetPayStatusActivity$1;->this$0:Lcom/miui/networkassistant/ui/GetPayStatusActivity;

    const v4, 0x7f0b0cad

    invoke-virtual {v0, v4}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    invoke-static {v0, v4}, Lcom/miui/networkassistant/ui/GetPayStatusActivity;->access$502(Lcom/miui/networkassistant/ui/GetPayStatusActivity;Landroid/widget/TextView;)Landroid/widget/TextView;

    iget-object v0, p0, Lcom/miui/networkassistant/ui/GetPayStatusActivity$1;->this$0:Lcom/miui/networkassistant/ui/GetPayStatusActivity;

    const v4, 0x7f0b0cf0

    invoke-virtual {v0, v4}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    invoke-static {v0, v4}, Lcom/miui/networkassistant/ui/GetPayStatusActivity;->access$602(Lcom/miui/networkassistant/ui/GetPayStatusActivity;Landroid/widget/TextView;)Landroid/widget/TextView;

    iget-object v0, p0, Lcom/miui/networkassistant/ui/GetPayStatusActivity$1;->this$0:Lcom/miui/networkassistant/ui/GetPayStatusActivity;

    const v4, 0x7f0b0cb8

    invoke-virtual {v0, v4}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    invoke-static {v0, v4}, Lcom/miui/networkassistant/ui/GetPayStatusActivity;->access$702(Lcom/miui/networkassistant/ui/GetPayStatusActivity;Landroid/widget/TextView;)Landroid/widget/TextView;

    iget-object v0, p0, Lcom/miui/networkassistant/ui/GetPayStatusActivity$1;->this$0:Lcom/miui/networkassistant/ui/GetPayStatusActivity;

    invoke-static {v0}, Lcom/miui/networkassistant/ui/GetPayStatusActivity;->access$500(Lcom/miui/networkassistant/ui/GetPayStatusActivity;)Landroid/widget/TextView;

    move-result-object v0

    iget-object v4, p0, Lcom/miui/networkassistant/ui/GetPayStatusActivity$1;->this$0:Lcom/miui/networkassistant/ui/GetPayStatusActivity;

    invoke-static {v4}, Lcom/miui/networkassistant/ui/GetPayStatusActivity;->access$800(Lcom/miui/networkassistant/ui/GetPayStatusActivity;)Lcom/miui/networkassistant/ui/bean/OrderDataInfo;

    move-result-object v4

    invoke-virtual {v4}, Lcom/miui/networkassistant/ui/bean/OrderDataInfo;->getPartnerProductOrderId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/miui/networkassistant/ui/GetPayStatusActivity$1;->this$0:Lcom/miui/networkassistant/ui/GetPayStatusActivity;

    invoke-static {v0}, Lcom/miui/networkassistant/ui/GetPayStatusActivity;->access$700(Lcom/miui/networkassistant/ui/GetPayStatusActivity;)Landroid/widget/TextView;

    move-result-object v0

    iget-object v4, p0, Lcom/miui/networkassistant/ui/GetPayStatusActivity$1;->this$0:Lcom/miui/networkassistant/ui/GetPayStatusActivity;

    invoke-static {v4}, Lcom/miui/networkassistant/ui/GetPayStatusActivity;->access$800(Lcom/miui/networkassistant/ui/GetPayStatusActivity;)Lcom/miui/networkassistant/ui/bean/OrderDataInfo;

    move-result-object v4

    invoke-virtual {v4}, Lcom/miui/networkassistant/ui/bean/OrderDataInfo;->getPayFeeDesc()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/miui/networkassistant/ui/GetPayStatusActivity$1;->this$0:Lcom/miui/networkassistant/ui/GetPayStatusActivity;

    invoke-static {v0}, Lcom/miui/networkassistant/ui/GetPayStatusActivity;->access$600(Lcom/miui/networkassistant/ui/GetPayStatusActivity;)Landroid/widget/TextView;

    move-result-object v0

    iget-object v4, p0, Lcom/miui/networkassistant/ui/GetPayStatusActivity$1;->this$0:Lcom/miui/networkassistant/ui/GetPayStatusActivity;

    invoke-static {v4}, Lcom/miui/networkassistant/ui/GetPayStatusActivity;->access$900(Lcom/miui/networkassistant/ui/GetPayStatusActivity;)Ljava/text/SimpleDateFormat;

    move-result-object v4

    iget-object v5, p0, Lcom/miui/networkassistant/ui/GetPayStatusActivity$1;->this$0:Lcom/miui/networkassistant/ui/GetPayStatusActivity;

    invoke-static {v5}, Lcom/miui/networkassistant/ui/GetPayStatusActivity;->access$800(Lcom/miui/networkassistant/ui/GetPayStatusActivity;)Lcom/miui/networkassistant/ui/bean/OrderDataInfo;

    move-result-object v5

    invoke-virtual {v5}, Lcom/miui/networkassistant/ui/bean/OrderDataInfo;->getPayTime()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v5

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/text/Format;->format(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/miui/networkassistant/ui/GetPayStatusActivity$1;->this$0:Lcom/miui/networkassistant/ui/GetPayStatusActivity;

    invoke-virtual {v0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    invoke-static {v0, v1}, Lcom/miui/networkassistant/ui/GetPayStatusActivity;->access$1002(Lcom/miui/networkassistant/ui/GetPayStatusActivity;Landroid/widget/ImageView;)Landroid/widget/ImageView;

    iget-object v0, p0, Lcom/miui/networkassistant/ui/GetPayStatusActivity$1;->this$0:Lcom/miui/networkassistant/ui/GetPayStatusActivity;

    invoke-static {v0}, Lcom/miui/networkassistant/ui/GetPayStatusActivity;->access$1000(Lcom/miui/networkassistant/ui/GetPayStatusActivity;)Landroid/widget/ImageView;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/miui/networkassistant/ui/GetPayStatusActivity$1;->this$0:Lcom/miui/networkassistant/ui/GetPayStatusActivity;

    invoke-virtual {v0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    invoke-static {v0, v1}, Lcom/miui/networkassistant/ui/GetPayStatusActivity;->access$1002(Lcom/miui/networkassistant/ui/GetPayStatusActivity;Landroid/widget/ImageView;)Landroid/widget/ImageView;

    iget-object v0, p0, Lcom/miui/networkassistant/ui/GetPayStatusActivity$1;->this$0:Lcom/miui/networkassistant/ui/GetPayStatusActivity;

    invoke-static {v0}, Lcom/miui/networkassistant/ui/GetPayStatusActivity;->access$1000(Lcom/miui/networkassistant/ui/GetPayStatusActivity;)Landroid/widget/ImageView;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v0, p0, Lcom/miui/networkassistant/ui/GetPayStatusActivity$1;->this$0:Lcom/miui/networkassistant/ui/GetPayStatusActivity;

    invoke-static {v0}, Lcom/miui/networkassistant/ui/GetPayStatusActivity;->access$300(Lcom/miui/networkassistant/ui/GetPayStatusActivity;)Lmiuix/androidbasewidget/widget/ProgressBar;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/miui/networkassistant/ui/GetPayStatusActivity$1;->this$0:Lcom/miui/networkassistant/ui/GetPayStatusActivity;

    invoke-static {v0}, Lcom/miui/networkassistant/ui/GetPayStatusActivity;->access$400(Lcom/miui/networkassistant/ui/GetPayStatusActivity;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f1203ec

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :goto_0
    iget-object v0, p0, Lcom/miui/networkassistant/ui/GetPayStatusActivity$1;->this$0:Lcom/miui/networkassistant/ui/GetPayStatusActivity;

    invoke-static {v0}, Lcom/miui/networkassistant/ui/GetPayStatusActivity;->access$1100(Lcom/miui/networkassistant/ui/GetPayStatusActivity;)Landroid/widget/Button;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/miui/networkassistant/ui/GetPayStatusActivity$1;->this$0:Lcom/miui/networkassistant/ui/GetPayStatusActivity;

    invoke-static {v0}, Lcom/miui/networkassistant/ui/GetPayStatusActivity;->access$1100(Lcom/miui/networkassistant/ui/GetPayStatusActivity;)Landroid/widget/Button;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/networkassistant/ui/GetPayStatusActivity$1;->this$0:Lcom/miui/networkassistant/ui/GetPayStatusActivity;

    invoke-static {v1}, Lcom/miui/networkassistant/ui/GetPayStatusActivity;->access$1200(Lcom/miui/networkassistant/ui/GetPayStatusActivity;)Landroid/view/View$OnClickListener;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method
