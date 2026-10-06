.class Lcom/miui/networkassistant/ui/NetworkAssistantActivity$4;
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

    iput-object p1, p0, Lcom/miui/networkassistant/ui/NetworkAssistantActivity$4;->this$0:Lcom/miui/networkassistant/ui/NetworkAssistantActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static synthetic a(Lcom/miui/networkassistant/ui/NetworkAssistantActivity$4;I)Z
    .locals 0

    invoke-direct {p0, p1}, Lcom/miui/networkassistant/ui/NetworkAssistantActivity$4;->lambda$onPageSelected$1(I)Z

    move-result p0

    return p0
.end method

.method public static synthetic b(Lcom/miui/networkassistant/ui/NetworkAssistantActivity$4;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/miui/networkassistant/ui/NetworkAssistantActivity$4;->lambda$onPageSelected$0(I)V

    return-void
.end method

.method private synthetic lambda$onPageSelected$0(I)V
    .locals 1

    iget-object v0, p0, Lcom/miui/networkassistant/ui/NetworkAssistantActivity$4;->this$0:Lcom/miui/networkassistant/ui/NetworkAssistantActivity;

    invoke-static {v0}, Lcom/miui/networkassistant/ui/NetworkAssistantActivity;->access$1000(Lcom/miui/networkassistant/ui/NetworkAssistantActivity;)Lcom/miui/networkassistant/ui/view/MyViewPager;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/miui/networkassistant/ui/view/MyViewPager;->resetHeight(I)V

    return-void
.end method

.method private synthetic lambda$onPageSelected$1(I)Z
    .locals 2

    iget-object v0, p0, Lcom/miui/networkassistant/ui/NetworkAssistantActivity$4;->this$0:Lcom/miui/networkassistant/ui/NetworkAssistantActivity;

    invoke-static {v0}, Lcom/miui/networkassistant/ui/NetworkAssistantActivity;->access$1000(Lcom/miui/networkassistant/ui/NetworkAssistantActivity;)Lcom/miui/networkassistant/ui/view/MyViewPager;

    move-result-object v0

    new-instance v1, Lcom/miui/networkassistant/ui/w;

    invoke-direct {v1, p0, p1}, Lcom/miui/networkassistant/ui/w;-><init>(Lcom/miui/networkassistant/ui/NetworkAssistantActivity$4;I)V

    invoke-virtual {v0, v1}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    const/4 p1, 0x0

    return p1
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
    .locals 1

    new-instance v0, Lcom/miui/networkassistant/ui/v;

    invoke-direct {v0, p0, p1}, Lcom/miui/networkassistant/ui/v;-><init>(Lcom/miui/networkassistant/ui/NetworkAssistantActivity$4;I)V

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object p1

    invoke-virtual {p1}, Landroid/os/Looper;->getQueue()Landroid/os/MessageQueue;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/os/MessageQueue;->addIdleHandler(Landroid/os/MessageQueue$IdleHandler;)V

    return-void
.end method
