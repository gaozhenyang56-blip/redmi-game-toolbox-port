.class Lcom/miui/networkassistant/ui/GetChargeTrafficActivity$2;
.super Lcom/miui/common/base/asyn/b;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/networkassistant/ui/GetChargeTrafficActivity;->updateProductList(Lcom/miui/networkassistant/ui/bean/Card;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/networkassistant/ui/GetChargeTrafficActivity;

.field final synthetic val$data:Lcom/miui/networkassistant/ui/bean/Card;


# direct methods
.method constructor <init>(Lcom/miui/networkassistant/ui/GetChargeTrafficActivity;Landroid/app/Activity;Lcom/miui/networkassistant/ui/bean/Card;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/networkassistant/ui/GetChargeTrafficActivity$2;->this$0:Lcom/miui/networkassistant/ui/GetChargeTrafficActivity;

    iput-object p3, p0, Lcom/miui/networkassistant/ui/GetChargeTrafficActivity$2;->val$data:Lcom/miui/networkassistant/ui/bean/Card;

    invoke-direct {p0, p2}, Lcom/miui/common/base/asyn/b;-><init>(Landroid/app/Activity;)V

    return-void
.end method


# virtual methods
.method public runOnUiThread()V
    .locals 11

    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iget-object v2, p0, Lcom/miui/networkassistant/ui/GetChargeTrafficActivity$2;->this$0:Lcom/miui/networkassistant/ui/GetChargeTrafficActivity;

    invoke-static {v2}, Lcom/miui/networkassistant/ui/GetChargeTrafficActivity;->access$800(Lcom/miui/networkassistant/ui/GetChargeTrafficActivity;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->clear()V

    iget-object v2, p0, Lcom/miui/networkassistant/ui/GetChargeTrafficActivity$2;->this$0:Lcom/miui/networkassistant/ui/GetChargeTrafficActivity;

    invoke-static {v2}, Lcom/miui/networkassistant/ui/GetChargeTrafficActivity;->access$900(Lcom/miui/networkassistant/ui/GetChargeTrafficActivity;)Ljava/util/List;

    move-result-object v2

    if-eqz v2, :cond_6

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    iget-object v4, p0, Lcom/miui/networkassistant/ui/GetChargeTrafficActivity$2;->this$0:Lcom/miui/networkassistant/ui/GetChargeTrafficActivity;

    invoke-static {v4}, Lcom/miui/networkassistant/ui/GetChargeTrafficActivity;->access$900(Lcom/miui/networkassistant/ui/GetChargeTrafficActivity;)Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    if-ge v3, v4, :cond_3

    iget-object v4, p0, Lcom/miui/networkassistant/ui/GetChargeTrafficActivity$2;->this$0:Lcom/miui/networkassistant/ui/GetChargeTrafficActivity;

    invoke-static {v4}, Lcom/miui/networkassistant/ui/GetChargeTrafficActivity;->access$900(Lcom/miui/networkassistant/ui/GetChargeTrafficActivity;)Ljava/util/List;

    move-result-object v5

    invoke-interface {v5, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/miui/networkassistant/ui/bean/TrafficProduct;

    invoke-virtual {v5}, Lcom/miui/networkassistant/ui/bean/TrafficProduct;->getData()Ljava/util/List;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/miui/networkassistant/ui/GetChargeTrafficActivity;->access$1002(Lcom/miui/networkassistant/ui/GetChargeTrafficActivity;Ljava/util/List;)Ljava/util/List;

    const v4, 0x7f0e0553

    const/4 v5, 0x0

    invoke-virtual {v0, v4, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v4

    iget-object v5, p0, Lcom/miui/networkassistant/ui/GetChargeTrafficActivity$2;->this$0:Lcom/miui/networkassistant/ui/GetChargeTrafficActivity;

    invoke-static {v5}, Lcom/miui/networkassistant/ui/GetChargeTrafficActivity;->access$1000(Lcom/miui/networkassistant/ui/GetChargeTrafficActivity;)Ljava/util/List;

    move-result-object v5

    const/16 v6, 0x8

    const v7, 0x7f0b02d1

    if-eqz v5, :cond_2

    iget-object v5, p0, Lcom/miui/networkassistant/ui/GetChargeTrafficActivity$2;->this$0:Lcom/miui/networkassistant/ui/GetChargeTrafficActivity;

    invoke-static {v5}, Lcom/miui/networkassistant/ui/GetChargeTrafficActivity;->access$1000(Lcom/miui/networkassistant/ui/GetChargeTrafficActivity;)Ljava/util/List;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    if-lez v5, :cond_2

    invoke-virtual {v4, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Lcom/miui/networkassistant/ui/widget/CardsView;

    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    const v8, 0x7f060115

    invoke-virtual {v5, v8}, Lcom/miui/networkassistant/ui/widget/CardsView;->setItemColor(I)Lcom/miui/networkassistant/ui/widget/CardsView;

    const v8, 0x7f060116

    invoke-virtual {v5, v8}, Lcom/miui/networkassistant/ui/widget/CardsView;->setItemDisableColor(I)Lcom/miui/networkassistant/ui/widget/CardsView;

    const/16 v8, 0x64

    invoke-virtual {v5, v8}, Lcom/miui/networkassistant/ui/widget/CardsView;->setCommonLines(I)Lcom/miui/networkassistant/ui/widget/CardsView;

    const/4 v8, 0x2

    invoke-virtual {v5, v8}, Lcom/miui/networkassistant/ui/widget/CardsView;->setType(I)Lcom/miui/networkassistant/ui/widget/CardsView;

    iget-object v8, p0, Lcom/miui/networkassistant/ui/GetChargeTrafficActivity$2;->this$0:Lcom/miui/networkassistant/ui/GetChargeTrafficActivity;

    invoke-virtual {v5, v8}, Lcom/miui/networkassistant/ui/widget/CardsView;->setOnCardClick(Lcom/miui/networkassistant/viewholder/CardOnClickListener;)Lcom/miui/networkassistant/ui/widget/CardsView;

    iget-object v8, p0, Lcom/miui/networkassistant/ui/GetChargeTrafficActivity$2;->this$0:Lcom/miui/networkassistant/ui/GetChargeTrafficActivity;

    invoke-virtual {v5, v8}, Lcom/miui/networkassistant/ui/widget/CardsView;->setOnNoNumCardClick(Lcom/miui/networkassistant/viewholder/NoPhoneNumCardOnClickListener;)Lcom/miui/networkassistant/ui/widget/CardsView;

    iget-object v8, p0, Lcom/miui/networkassistant/ui/GetChargeTrafficActivity$2;->val$data:Lcom/miui/networkassistant/ui/bean/Card;

    invoke-virtual {v8}, Lcom/miui/networkassistant/ui/bean/Card;->getData()Lcom/miui/networkassistant/ui/bean/Data;

    move-result-object v8

    invoke-virtual {v8}, Lcom/miui/networkassistant/ui/bean/Data;->getDataFlag()Ljava/lang/String;

    move-result-object v8

    const-string v9, "enable"

    if-eq v8, v9, :cond_1

    if-nez v8, :cond_0

    goto :goto_1

    :cond_0
    invoke-virtual {v5, v2}, Lcom/miui/networkassistant/ui/widget/CardsView;->setValid(Z)Lcom/miui/networkassistant/ui/widget/CardsView;

    goto :goto_2

    :cond_1
    :goto_1
    const/4 v8, 0x1

    invoke-virtual {v5, v8}, Lcom/miui/networkassistant/ui/widget/CardsView;->setValid(Z)Lcom/miui/networkassistant/ui/widget/CardsView;

    :goto_2
    iget-object v8, p0, Lcom/miui/networkassistant/ui/GetChargeTrafficActivity$2;->this$0:Lcom/miui/networkassistant/ui/GetChargeTrafficActivity;

    invoke-static {v8}, Lcom/miui/networkassistant/ui/GetChargeTrafficActivity;->access$1100(Lcom/miui/networkassistant/ui/GetChargeTrafficActivity;)Z

    move-result v8

    iget-object v9, p0, Lcom/miui/networkassistant/ui/GetChargeTrafficActivity$2;->this$0:Lcom/miui/networkassistant/ui/GetChargeTrafficActivity;

    invoke-static {v9}, Lcom/miui/networkassistant/ui/GetChargeTrafficActivity;->access$1200(Lcom/miui/networkassistant/ui/GetChargeTrafficActivity;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v5, v8, v9}, Lcom/miui/networkassistant/ui/widget/CardsView;->setPolicy(ZLjava/lang/String;)Lcom/miui/networkassistant/ui/widget/CardsView;

    iget-object v8, p0, Lcom/miui/networkassistant/ui/GetChargeTrafficActivity$2;->this$0:Lcom/miui/networkassistant/ui/GetChargeTrafficActivity;

    invoke-static {v8}, Lcom/miui/networkassistant/ui/GetChargeTrafficActivity;->access$1300(Lcom/miui/networkassistant/ui/GetChargeTrafficActivity;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v5, v8}, Lcom/miui/networkassistant/ui/widget/CardsView;->setPhoneNumber(Ljava/lang/String;)Lcom/miui/networkassistant/ui/widget/CardsView;

    iget-object v8, p0, Lcom/miui/networkassistant/ui/GetChargeTrafficActivity$2;->this$0:Lcom/miui/networkassistant/ui/GetChargeTrafficActivity;

    invoke-static {v8}, Lcom/miui/networkassistant/ui/GetChargeTrafficActivity;->access$1000(Lcom/miui/networkassistant/ui/GetChargeTrafficActivity;)Ljava/util/List;

    move-result-object v8

    sget-object v9, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    const-string v10, ""

    invoke-virtual {v5, v8, v7, v10, v9}, Lcom/miui/networkassistant/ui/widget/CardsView;->setData(Ljava/util/List;Ljava/util/List;Ljava/lang/String;Ljava/lang/Boolean;)V

    invoke-interface {v1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v4, p0, Lcom/miui/networkassistant/ui/GetChargeTrafficActivity$2;->this$0:Lcom/miui/networkassistant/ui/GetChargeTrafficActivity;

    invoke-static {v4}, Lcom/miui/networkassistant/ui/GetChargeTrafficActivity;->access$800(Lcom/miui/networkassistant/ui/GetChargeTrafficActivity;)Ljava/util/List;

    move-result-object v4

    iget-object v5, p0, Lcom/miui/networkassistant/ui/GetChargeTrafficActivity$2;->this$0:Lcom/miui/networkassistant/ui/GetChargeTrafficActivity;

    invoke-static {v5}, Lcom/miui/networkassistant/ui/GetChargeTrafficActivity;->access$900(Lcom/miui/networkassistant/ui/GetChargeTrafficActivity;)Ljava/util/List;

    move-result-object v5

    invoke-interface {v5, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/miui/networkassistant/ui/bean/TrafficProduct;

    invoke-virtual {v5}, Lcom/miui/networkassistant/ui/bean/TrafficProduct;->getTabName()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v4, v3, v5}, Ljava/util/List;->add(ILjava/lang/Object;)V

    iget-object v4, p0, Lcom/miui/networkassistant/ui/GetChargeTrafficActivity$2;->this$0:Lcom/miui/networkassistant/ui/GetChargeTrafficActivity;

    const v5, 0x7f0b0661

    invoke-virtual {v4, v5}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/LinearLayout;

    invoke-static {v4, v5}, Lcom/miui/networkassistant/ui/GetChargeTrafficActivity;->access$1402(Lcom/miui/networkassistant/ui/GetChargeTrafficActivity;Landroid/widget/LinearLayout;)Landroid/widget/LinearLayout;

    iget-object v4, p0, Lcom/miui/networkassistant/ui/GetChargeTrafficActivity$2;->this$0:Lcom/miui/networkassistant/ui/GetChargeTrafficActivity;

    invoke-static {v4}, Lcom/miui/networkassistant/ui/GetChargeTrafficActivity;->access$1400(Lcom/miui/networkassistant/ui/GetChargeTrafficActivity;)Landroid/widget/LinearLayout;

    move-result-object v4

    invoke-virtual {v4, v6}, Landroid/view/View;->setVisibility(I)V

    iget-object v4, p0, Lcom/miui/networkassistant/ui/GetChargeTrafficActivity$2;->this$0:Lcom/miui/networkassistant/ui/GetChargeTrafficActivity;

    invoke-static {v4}, Lcom/miui/networkassistant/ui/GetChargeTrafficActivity;->access$1500(Lcom/miui/networkassistant/ui/GetChargeTrafficActivity;)Lcom/google/android/material/tabs/TabLayout;

    move-result-object v4

    invoke-virtual {v4, v2}, Landroid/view/View;->setVisibility(I)V

    iget-object v4, p0, Lcom/miui/networkassistant/ui/GetChargeTrafficActivity$2;->this$0:Lcom/miui/networkassistant/ui/GetChargeTrafficActivity;

    invoke-static {v4}, Lcom/miui/networkassistant/ui/GetChargeTrafficActivity;->access$1600(Lcom/miui/networkassistant/ui/GetChargeTrafficActivity;)Lcom/miui/networkassistant/ui/view/MyViewPager;

    move-result-object v4

    invoke-virtual {v4, v2}, Landroid/view/View;->setVisibility(I)V

    iget-object v4, p0, Lcom/miui/networkassistant/ui/GetChargeTrafficActivity$2;->this$0:Lcom/miui/networkassistant/ui/GetChargeTrafficActivity;

    invoke-static {v4}, Lcom/miui/networkassistant/ui/GetChargeTrafficActivity;->access$1500(Lcom/miui/networkassistant/ui/GetChargeTrafficActivity;)Lcom/google/android/material/tabs/TabLayout;

    move-result-object v4

    iget-object v5, p0, Lcom/miui/networkassistant/ui/GetChargeTrafficActivity$2;->this$0:Lcom/miui/networkassistant/ui/GetChargeTrafficActivity;

    invoke-static {v5}, Lcom/miui/networkassistant/ui/GetChargeTrafficActivity;->access$1500(Lcom/miui/networkassistant/ui/GetChargeTrafficActivity;)Lcom/google/android/material/tabs/TabLayout;

    move-result-object v5

    invoke-virtual {v5}, Lcom/google/android/material/tabs/TabLayout;->newTab()Lcom/google/android/material/tabs/TabLayout$Tab;

    move-result-object v5

    iget-object v6, p0, Lcom/miui/networkassistant/ui/GetChargeTrafficActivity$2;->this$0:Lcom/miui/networkassistant/ui/GetChargeTrafficActivity;

    invoke-static {v6}, Lcom/miui/networkassistant/ui/GetChargeTrafficActivity;->access$900(Lcom/miui/networkassistant/ui/GetChargeTrafficActivity;)Ljava/util/List;

    move-result-object v6

    invoke-interface {v6, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/miui/networkassistant/ui/bean/TrafficProduct;

    invoke-virtual {v6}, Lcom/miui/networkassistant/ui/bean/TrafficProduct;->getTabName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/google/android/material/tabs/TabLayout$Tab;->setText(Ljava/lang/CharSequence;)Lcom/google/android/material/tabs/TabLayout$Tab;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/google/android/material/tabs/TabLayout;->addTab(Lcom/google/android/material/tabs/TabLayout$Tab;)V

    goto :goto_3

    :cond_2
    invoke-virtual {v4, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Lcom/miui/networkassistant/ui/widget/CardsView;

    invoke-virtual {v5, v6}, Landroid/view/View;->setVisibility(I)V

    const v5, 0x7f0b0621

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/ImageView;

    const v6, 0x7f0b0ca9

    invoke-virtual {v4, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    invoke-virtual {v5, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    invoke-virtual {v6, v2}, Landroid/view/View;->setVisibility(I)V

    iget-object v5, p0, Lcom/miui/networkassistant/ui/GetChargeTrafficActivity$2;->this$0:Lcom/miui/networkassistant/ui/GetChargeTrafficActivity;

    invoke-static {v5}, Lcom/miui/networkassistant/ui/GetChargeTrafficActivity;->access$800(Lcom/miui/networkassistant/ui/GetChargeTrafficActivity;)Ljava/util/List;

    move-result-object v5

    iget-object v6, p0, Lcom/miui/networkassistant/ui/GetChargeTrafficActivity$2;->this$0:Lcom/miui/networkassistant/ui/GetChargeTrafficActivity;

    invoke-static {v6}, Lcom/miui/networkassistant/ui/GetChargeTrafficActivity;->access$900(Lcom/miui/networkassistant/ui/GetChargeTrafficActivity;)Ljava/util/List;

    move-result-object v6

    invoke-interface {v6, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/miui/networkassistant/ui/bean/TrafficProduct;

    invoke-virtual {v6}, Lcom/miui/networkassistant/ui/bean/TrafficProduct;->getTabName()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v5, v3, v6}, Ljava/util/List;->add(ILjava/lang/Object;)V

    iget-object v5, p0, Lcom/miui/networkassistant/ui/GetChargeTrafficActivity$2;->this$0:Lcom/miui/networkassistant/ui/GetChargeTrafficActivity;

    invoke-static {v5}, Lcom/miui/networkassistant/ui/GetChargeTrafficActivity;->access$1500(Lcom/miui/networkassistant/ui/GetChargeTrafficActivity;)Lcom/google/android/material/tabs/TabLayout;

    move-result-object v5

    iget-object v6, p0, Lcom/miui/networkassistant/ui/GetChargeTrafficActivity$2;->this$0:Lcom/miui/networkassistant/ui/GetChargeTrafficActivity;

    invoke-static {v6}, Lcom/miui/networkassistant/ui/GetChargeTrafficActivity;->access$1500(Lcom/miui/networkassistant/ui/GetChargeTrafficActivity;)Lcom/google/android/material/tabs/TabLayout;

    move-result-object v6

    invoke-virtual {v6}, Lcom/google/android/material/tabs/TabLayout;->newTab()Lcom/google/android/material/tabs/TabLayout$Tab;

    move-result-object v6

    iget-object v7, p0, Lcom/miui/networkassistant/ui/GetChargeTrafficActivity$2;->this$0:Lcom/miui/networkassistant/ui/GetChargeTrafficActivity;

    invoke-static {v7}, Lcom/miui/networkassistant/ui/GetChargeTrafficActivity;->access$900(Lcom/miui/networkassistant/ui/GetChargeTrafficActivity;)Ljava/util/List;

    move-result-object v7

    invoke-interface {v7, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/miui/networkassistant/ui/bean/TrafficProduct;

    invoke-virtual {v7}, Lcom/miui/networkassistant/ui/bean/TrafficProduct;->getTabName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/google/android/material/tabs/TabLayout$Tab;->setText(Ljava/lang/CharSequence;)Lcom/google/android/material/tabs/TabLayout$Tab;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/google/android/material/tabs/TabLayout;->addTab(Lcom/google/android/material/tabs/TabLayout$Tab;)V

    invoke-interface {v1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :goto_3
    add-int/lit8 v3, v3, 0x1

    goto/16 :goto_0

    :cond_3
    new-instance v0, Lcom/miui/networkassistant/ui/adapter/TabViewAdapter;

    iget-object v3, p0, Lcom/miui/networkassistant/ui/GetChargeTrafficActivity$2;->this$0:Lcom/miui/networkassistant/ui/GetChargeTrafficActivity;

    invoke-static {v3}, Lcom/miui/networkassistant/ui/GetChargeTrafficActivity;->access$800(Lcom/miui/networkassistant/ui/GetChargeTrafficActivity;)Ljava/util/List;

    move-result-object v3

    iget-object v4, p0, Lcom/miui/networkassistant/ui/GetChargeTrafficActivity$2;->this$0:Lcom/miui/networkassistant/ui/GetChargeTrafficActivity;

    invoke-static {v4}, Lcom/miui/networkassistant/ui/GetChargeTrafficActivity;->access$1600(Lcom/miui/networkassistant/ui/GetChargeTrafficActivity;)Lcom/miui/networkassistant/ui/view/MyViewPager;

    move-result-object v4

    invoke-direct {v0, p0, v1, v3, v4}, Lcom/miui/networkassistant/ui/adapter/TabViewAdapter;-><init>(Landroid/content/Context;Ljava/util/List;Ljava/util/List;Lcom/miui/networkassistant/ui/view/MyViewPager;)V

    move v1, v2

    :goto_4
    iget-object v3, p0, Lcom/miui/networkassistant/ui/GetChargeTrafficActivity$2;->this$0:Lcom/miui/networkassistant/ui/GetChargeTrafficActivity;

    invoke-static {v3}, Lcom/miui/networkassistant/ui/GetChargeTrafficActivity;->access$900(Lcom/miui/networkassistant/ui/GetChargeTrafficActivity;)Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v1, v3, :cond_4

    iget-object v3, p0, Lcom/miui/networkassistant/ui/GetChargeTrafficActivity$2;->this$0:Lcom/miui/networkassistant/ui/GetChargeTrafficActivity;

    invoke-static {v3}, Lcom/miui/networkassistant/ui/GetChargeTrafficActivity;->access$900(Lcom/miui/networkassistant/ui/GetChargeTrafficActivity;)Ljava/util/List;

    move-result-object v3

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/miui/networkassistant/ui/bean/TrafficProduct;

    invoke-virtual {v3}, Lcom/miui/networkassistant/ui/bean/TrafficProduct;->getTabName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v1, v3}, Lcom/miui/networkassistant/ui/adapter/TabViewAdapter;->setPageTitle(ILjava/lang/String;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_4

    :cond_4
    iget-object v1, p0, Lcom/miui/networkassistant/ui/GetChargeTrafficActivity$2;->this$0:Lcom/miui/networkassistant/ui/GetChargeTrafficActivity;

    invoke-static {v1}, Lcom/miui/networkassistant/ui/GetChargeTrafficActivity;->access$1600(Lcom/miui/networkassistant/ui/GetChargeTrafficActivity;)Lcom/miui/networkassistant/ui/view/MyViewPager;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroidx/viewpager/widget/ViewPager;->setAdapter(Landroidx/viewpager/widget/a;)V

    iget-object v0, p0, Lcom/miui/networkassistant/ui/GetChargeTrafficActivity$2;->this$0:Lcom/miui/networkassistant/ui/GetChargeTrafficActivity;

    invoke-static {v0}, Lcom/miui/networkassistant/ui/GetChargeTrafficActivity;->access$1600(Lcom/miui/networkassistant/ui/GetChargeTrafficActivity;)Lcom/miui/networkassistant/ui/view/MyViewPager;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/miui/networkassistant/ui/view/MyViewPager;->resetHeight(I)V

    iget-object v0, p0, Lcom/miui/networkassistant/ui/GetChargeTrafficActivity$2;->this$0:Lcom/miui/networkassistant/ui/GetChargeTrafficActivity;

    invoke-static {v0}, Lcom/miui/networkassistant/ui/GetChargeTrafficActivity;->access$1600(Lcom/miui/networkassistant/ui/GetChargeTrafficActivity;)Lcom/miui/networkassistant/ui/view/MyViewPager;

    move-result-object v0

    new-instance v1, Lcom/miui/networkassistant/ui/GetChargeTrafficActivity$2$1;

    invoke-direct {v1, p0}, Lcom/miui/networkassistant/ui/GetChargeTrafficActivity$2$1;-><init>(Lcom/miui/networkassistant/ui/GetChargeTrafficActivity$2;)V

    invoke-virtual {v0, v1}, Landroidx/viewpager/widget/ViewPager;->addOnPageChangeListener(Landroidx/viewpager/widget/ViewPager$i;)V

    iget-object v0, p0, Lcom/miui/networkassistant/ui/GetChargeTrafficActivity$2;->this$0:Lcom/miui/networkassistant/ui/GetChargeTrafficActivity;

    invoke-static {v0}, Lcom/miui/networkassistant/ui/GetChargeTrafficActivity;->access$1500(Lcom/miui/networkassistant/ui/GetChargeTrafficActivity;)Lcom/google/android/material/tabs/TabLayout;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/networkassistant/ui/GetChargeTrafficActivity$2;->this$0:Lcom/miui/networkassistant/ui/GetChargeTrafficActivity;

    invoke-static {v1}, Lcom/miui/networkassistant/ui/GetChargeTrafficActivity;->access$1600(Lcom/miui/networkassistant/ui/GetChargeTrafficActivity;)Lcom/miui/networkassistant/ui/view/MyViewPager;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/material/tabs/TabLayout;->setupWithViewPager(Landroidx/viewpager/widget/ViewPager;)V

    move v0, v2

    :goto_5
    iget-object v1, p0, Lcom/miui/networkassistant/ui/GetChargeTrafficActivity$2;->this$0:Lcom/miui/networkassistant/ui/GetChargeTrafficActivity;

    invoke-static {v1}, Lcom/miui/networkassistant/ui/GetChargeTrafficActivity;->access$1500(Lcom/miui/networkassistant/ui/GetChargeTrafficActivity;)Lcom/google/android/material/tabs/TabLayout;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/material/tabs/TabLayout;->getTabCount()I

    move-result v1

    if-ge v0, v1, :cond_5

    iget-object v1, p0, Lcom/miui/networkassistant/ui/GetChargeTrafficActivity$2;->this$0:Lcom/miui/networkassistant/ui/GetChargeTrafficActivity;

    invoke-static {v1}, Lcom/miui/networkassistant/ui/GetChargeTrafficActivity;->access$1500(Lcom/miui/networkassistant/ui/GetChargeTrafficActivity;)Lcom/google/android/material/tabs/TabLayout;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/google/android/material/tabs/TabLayout;->getTabAt(I)Lcom/google/android/material/tabs/TabLayout$Tab;

    move-result-object v1

    iget-object v3, p0, Lcom/miui/networkassistant/ui/GetChargeTrafficActivity$2;->this$0:Lcom/miui/networkassistant/ui/GetChargeTrafficActivity;

    invoke-static {v3, v0}, Lcom/miui/networkassistant/ui/GetChargeTrafficActivity;->access$1700(Lcom/miui/networkassistant/ui/GetChargeTrafficActivity;I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/google/android/material/tabs/TabLayout$Tab;->setCustomView(Landroid/view/View;)Lcom/google/android/material/tabs/TabLayout$Tab;

    add-int/lit8 v0, v0, 0x1

    goto :goto_5

    :cond_5
    iget-object v0, p0, Lcom/miui/networkassistant/ui/GetChargeTrafficActivity$2;->this$0:Lcom/miui/networkassistant/ui/GetChargeTrafficActivity;

    invoke-static {v0}, Lcom/miui/networkassistant/ui/GetChargeTrafficActivity;->access$1500(Lcom/miui/networkassistant/ui/GetChargeTrafficActivity;)Lcom/google/android/material/tabs/TabLayout;

    move-result-object v0

    new-instance v1, Lcom/miui/networkassistant/ui/GetChargeTrafficActivity$2$2;

    invoke-direct {v1, p0}, Lcom/miui/networkassistant/ui/GetChargeTrafficActivity$2$2;-><init>(Lcom/miui/networkassistant/ui/GetChargeTrafficActivity$2;)V

    invoke-virtual {v0, v1}, Lcom/google/android/material/tabs/TabLayout;->addOnTabSelectedListener(Lcom/google/android/material/tabs/TabLayout$OnTabSelectedListener;)V

    iget-object v0, p0, Lcom/miui/networkassistant/ui/GetChargeTrafficActivity$2;->this$0:Lcom/miui/networkassistant/ui/GetChargeTrafficActivity;

    invoke-static {v0}, Lcom/miui/networkassistant/ui/GetChargeTrafficActivity;->access$1500(Lcom/miui/networkassistant/ui/GetChargeTrafficActivity;)Lcom/google/android/material/tabs/TabLayout;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/google/android/material/tabs/TabLayout;->setTabMode(I)V

    :cond_6
    return-void
.end method
