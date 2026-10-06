.class Lcom/miui/networkassistant/ui/NetworkAssistantActivity$3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/viewpager/widget/ViewPager$i;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/networkassistant/ui/NetworkAssistantActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/networkassistant/ui/NetworkAssistantActivity;


# direct methods
.method constructor <init>(Lcom/miui/networkassistant/ui/NetworkAssistantActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/networkassistant/ui/NetworkAssistantActivity$3;->this$0:Lcom/miui/networkassistant/ui/NetworkAssistantActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static synthetic a(Lcom/miui/networkassistant/ui/NetworkAssistantActivity$3;)Z
    .locals 0

    invoke-direct {p0}, Lcom/miui/networkassistant/ui/NetworkAssistantActivity$3;->lambda$onPageSelected$0()Z

    move-result p0

    return p0
.end method

.method private synthetic lambda$onPageSelected$0()Z
    .locals 2

    iget-object v0, p0, Lcom/miui/networkassistant/ui/NetworkAssistantActivity$3;->this$0:Lcom/miui/networkassistant/ui/NetworkAssistantActivity;

    invoke-static {v0}, Lcom/miui/networkassistant/ui/NetworkAssistantActivity;->access$000(Lcom/miui/networkassistant/ui/NetworkAssistantActivity;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/miui/networkassistant/ui/NetworkAssistantActivity$3;->this$0:Lcom/miui/networkassistant/ui/NetworkAssistantActivity;

    invoke-static {v0}, Lcom/miui/networkassistant/ui/NetworkAssistantActivity;->access$100(Lcom/miui/networkassistant/ui/NetworkAssistantActivity;)I

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/miui/networkassistant/ui/NetworkAssistantActivity$3;->this$0:Lcom/miui/networkassistant/ui/NetworkAssistantActivity;

    invoke-static {v0}, Lcom/miui/networkassistant/ui/NetworkAssistantActivity;->access$900(Lcom/miui/networkassistant/ui/NetworkAssistantActivity;)Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/networkassistant/ui/NetworkAssistantActivity$3;->this$0:Lcom/miui/networkassistant/ui/NetworkAssistantActivity;

    invoke-static {v0}, Lcom/miui/networkassistant/ui/NetworkAssistantActivity;->access$900(Lcom/miui/networkassistant/ui/NetworkAssistantActivity;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->clear()V

    :cond_0
    iget-object v0, p0, Lcom/miui/networkassistant/ui/NetworkAssistantActivity$3;->this$0:Lcom/miui/networkassistant/ui/NetworkAssistantActivity;

    invoke-static {v0}, Lcom/miui/networkassistant/ui/NetworkAssistantActivity;->access$1000(Lcom/miui/networkassistant/ui/NetworkAssistantActivity;)Lcom/miui/networkassistant/ui/view/MyViewPager;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroidx/viewpager/widget/ViewPager;->setAdapter(Landroidx/viewpager/widget/a;)V

    iget-object v0, p0, Lcom/miui/networkassistant/ui/NetworkAssistantActivity$3;->this$0:Lcom/miui/networkassistant/ui/NetworkAssistantActivity;

    invoke-static {v0}, Lcom/miui/networkassistant/ui/NetworkAssistantActivity;->access$1100(Lcom/miui/networkassistant/ui/NetworkAssistantActivity;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/miui/networkassistant/ui/NetworkAssistantActivity$3;->this$0:Lcom/miui/networkassistant/ui/NetworkAssistantActivity;

    invoke-static {v0}, Lcom/miui/networkassistant/ui/NetworkAssistantActivity;->access$100(Lcom/miui/networkassistant/ui/NetworkAssistantActivity;)I

    move-result v1

    invoke-static {v0, v1}, Lcom/miui/networkassistant/ui/NetworkAssistantActivity;->access$1200(Lcom/miui/networkassistant/ui/NetworkAssistantActivity;I)V

    iget-object v0, p0, Lcom/miui/networkassistant/ui/NetworkAssistantActivity$3;->this$0:Lcom/miui/networkassistant/ui/NetworkAssistantActivity;

    invoke-static {v0}, Lcom/miui/networkassistant/ui/NetworkAssistantActivity;->access$1300(Lcom/miui/networkassistant/ui/NetworkAssistantActivity;)V

    :cond_1
    const/4 v0, 0x0

    return v0
.end method


# virtual methods
.method public onPageScrollStateChanged(I)V
    .locals 0

    return-void
.end method

.method public onPageScrolled(IFI)V
    .locals 0

    return-void
.end method

.method public onPageSelected(I)V
    .locals 2
    .annotation build Landroidx/annotation/RequiresApi;
        api = 0x1a
    .end annotation

    iget-object v0, p0, Lcom/miui/networkassistant/ui/NetworkAssistantActivity$3;->this$0:Lcom/miui/networkassistant/ui/NetworkAssistantActivity;

    invoke-static {v0, p1}, Lcom/miui/networkassistant/ui/NetworkAssistantActivity;->access$102(Lcom/miui/networkassistant/ui/NetworkAssistantActivity;I)I

    new-instance p1, Lcom/miui/networkassistant/ui/u;

    invoke-direct {p1, p0}, Lcom/miui/networkassistant/ui/u;-><init>(Lcom/miui/networkassistant/ui/NetworkAssistantActivity$3;)V

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Looper;->getQueue()Landroid/os/MessageQueue;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/os/MessageQueue;->addIdleHandler(Landroid/os/MessageQueue$IdleHandler;)V

    iget-object p1, p0, Lcom/miui/networkassistant/ui/NetworkAssistantActivity$3;->this$0:Lcom/miui/networkassistant/ui/NetworkAssistantActivity;

    invoke-static {p1}, Lcom/miui/networkassistant/ui/NetworkAssistantActivity;->access$200(Lcom/miui/networkassistant/ui/NetworkAssistantActivity;)Lcom/miui/networkassistant/ui/presenter/RecommendDataPresenter;

    move-result-object p1

    if-nez p1, :cond_0

    iget-object p1, p0, Lcom/miui/networkassistant/ui/NetworkAssistantActivity$3;->this$0:Lcom/miui/networkassistant/ui/NetworkAssistantActivity;

    new-instance v0, Lcom/miui/networkassistant/ui/presenter/RecommendDataPresenter;

    invoke-static {p1}, Lcom/miui/networkassistant/ui/NetworkAssistantActivity;->access$300(Lcom/miui/networkassistant/ui/NetworkAssistantActivity;)Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, p1, v1}, Lcom/miui/networkassistant/ui/presenter/RecommendDataPresenter;-><init>(Lcom/miui/networkassistant/ui/presenter/IRecommendDataView;Landroid/content/Context;)V

    invoke-static {p1, v0}, Lcom/miui/networkassistant/ui/NetworkAssistantActivity;->access$202(Lcom/miui/networkassistant/ui/NetworkAssistantActivity;Lcom/miui/networkassistant/ui/presenter/RecommendDataPresenter;)Lcom/miui/networkassistant/ui/presenter/RecommendDataPresenter;

    :cond_0
    iget-object p1, p0, Lcom/miui/networkassistant/ui/NetworkAssistantActivity$3;->this$0:Lcom/miui/networkassistant/ui/NetworkAssistantActivity;

    invoke-static {p1}, Lcom/miui/networkassistant/ui/NetworkAssistantActivity;->access$400(Lcom/miui/networkassistant/ui/NetworkAssistantActivity;)[Lcom/miui/networkassistant/config/SimUserInfo;

    move-result-object p1

    iget-object v0, p0, Lcom/miui/networkassistant/ui/NetworkAssistantActivity$3;->this$0:Lcom/miui/networkassistant/ui/NetworkAssistantActivity;

    invoke-static {v0}, Lcom/miui/networkassistant/ui/NetworkAssistantActivity;->access$100(Lcom/miui/networkassistant/ui/NetworkAssistantActivity;)I

    move-result v0

    aget-object p1, p1, v0

    invoke-virtual {p1}, Lcom/miui/networkassistant/config/SimUserInfo;->acquirePhoneNumber()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/miui/networkassistant/ui/NetworkAssistantActivity$3;->this$0:Lcom/miui/networkassistant/ui/NetworkAssistantActivity;

    invoke-static {p1}, Lcom/miui/networkassistant/ui/NetworkAssistantActivity;->access$200(Lcom/miui/networkassistant/ui/NetworkAssistantActivity;)Lcom/miui/networkassistant/ui/presenter/RecommendDataPresenter;

    move-result-object p1

    const-string v0, "empty"

    invoke-virtual {p1, v0}, Lcom/miui/networkassistant/ui/presenter/RecommendDataPresenter;->setCarrier(Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    iget-object p1, p0, Lcom/miui/networkassistant/ui/NetworkAssistantActivity$3;->this$0:Lcom/miui/networkassistant/ui/NetworkAssistantActivity;

    invoke-static {p1}, Lcom/miui/networkassistant/ui/NetworkAssistantActivity;->access$400(Lcom/miui/networkassistant/ui/NetworkAssistantActivity;)[Lcom/miui/networkassistant/config/SimUserInfo;

    move-result-object p1

    iget-object v0, p0, Lcom/miui/networkassistant/ui/NetworkAssistantActivity$3;->this$0:Lcom/miui/networkassistant/ui/NetworkAssistantActivity;

    invoke-static {v0}, Lcom/miui/networkassistant/ui/NetworkAssistantActivity;->access$100(Lcom/miui/networkassistant/ui/NetworkAssistantActivity;)I

    move-result v0

    aget-object p1, p1, v0

    invoke-virtual {p1}, Lcom/miui/networkassistant/config/SimUserInfo;->acquirePhoneNumber()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/miui/networkassistant/utils/IDPhoneNumberUtil;->getIspByPhoneNumber(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iget-object v0, p0, Lcom/miui/networkassistant/ui/NetworkAssistantActivity$3;->this$0:Lcom/miui/networkassistant/ui/NetworkAssistantActivity;

    invoke-static {v0}, Lcom/miui/networkassistant/ui/NetworkAssistantActivity;->access$200(Lcom/miui/networkassistant/ui/NetworkAssistantActivity;)Lcom/miui/networkassistant/ui/presenter/RecommendDataPresenter;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/miui/networkassistant/ui/presenter/RecommendDataPresenter;->setCarrier(Ljava/lang/String;)V

    :goto_0
    iget-object p1, p0, Lcom/miui/networkassistant/ui/NetworkAssistantActivity$3;->this$0:Lcom/miui/networkassistant/ui/NetworkAssistantActivity;

    invoke-static {p1}, Lcom/miui/networkassistant/ui/NetworkAssistantActivity;->access$500(Lcom/miui/networkassistant/ui/NetworkAssistantActivity;)Z

    move-result p1

    if-eqz p1, :cond_2

    iget-object p1, p0, Lcom/miui/networkassistant/ui/NetworkAssistantActivity$3;->this$0:Lcom/miui/networkassistant/ui/NetworkAssistantActivity;

    invoke-virtual {p1}, Lcom/miui/networkassistant/ui/NetworkAssistantActivity;->fetchRecommend()V

    :cond_2
    iget-object p1, p0, Lcom/miui/networkassistant/ui/NetworkAssistantActivity$3;->this$0:Lcom/miui/networkassistant/ui/NetworkAssistantActivity;

    invoke-static {p1}, Lcom/miui/networkassistant/ui/NetworkAssistantActivity;->access$600(Lcom/miui/networkassistant/ui/NetworkAssistantActivity;)Landroidx/viewpager/widget/ViewPager;

    move-result-object p1

    iget-object v0, p0, Lcom/miui/networkassistant/ui/NetworkAssistantActivity$3;->this$0:Lcom/miui/networkassistant/ui/NetworkAssistantActivity;

    invoke-static {v0}, Lcom/miui/networkassistant/ui/NetworkAssistantActivity;->access$100(Lcom/miui/networkassistant/ui/NetworkAssistantActivity;)I

    move-result v0

    invoke-virtual {p1, v0}, Landroidx/viewpager/widget/ViewPager;->setCurrentItem(I)V

    iget-object p1, p0, Lcom/miui/networkassistant/ui/NetworkAssistantActivity$3;->this$0:Lcom/miui/networkassistant/ui/NetworkAssistantActivity;

    iget-object v0, p1, Lcom/miui/networkassistant/ui/NetworkAssistantActivity;->functionData:Lcom/miui/networkassistant/ui/bean/FunctionData;

    if-eqz v0, :cond_3

    iget-boolean v0, p1, Lcom/miui/networkassistant/ui/NetworkAssistantActivity;->shouldNotRefresh:Z

    if-nez v0, :cond_3

    invoke-static {p1}, Lcom/miui/networkassistant/ui/NetworkAssistantActivity;->access$700(Lcom/miui/networkassistant/ui/NetworkAssistantActivity;)V

    :cond_3
    iget-object p1, p0, Lcom/miui/networkassistant/ui/NetworkAssistantActivity$3;->this$0:Lcom/miui/networkassistant/ui/NetworkAssistantActivity;

    invoke-static {p1}, Lcom/miui/networkassistant/ui/NetworkAssistantActivity;->access$800(Lcom/miui/networkassistant/ui/NetworkAssistantActivity;)V

    return-void
.end method
