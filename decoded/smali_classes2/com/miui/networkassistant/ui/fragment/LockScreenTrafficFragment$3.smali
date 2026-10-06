.class Lcom/miui/networkassistant/ui/fragment/LockScreenTrafficFragment$3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/networkassistant/ui/fragment/LockScreenTrafficFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/networkassistant/ui/fragment/LockScreenTrafficFragment;


# direct methods
.method constructor <init>(Lcom/miui/networkassistant/ui/fragment/LockScreenTrafficFragment;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/networkassistant/ui/fragment/LockScreenTrafficFragment$3;->this$0:Lcom/miui/networkassistant/ui/fragment/LockScreenTrafficFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    const/4 v0, 0x1

    if-eq p1, v0, :cond_1

    const v0, 0x7f0b0bb0

    if-eq p1, v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lcom/miui/networkassistant/ui/fragment/LockScreenTrafficFragment$3;->this$0:Lcom/miui/networkassistant/ui/fragment/LockScreenTrafficFragment;

    invoke-static {p1}, Lcom/miui/networkassistant/ui/fragment/LockScreenTrafficFragment;->access$300(Lcom/miui/networkassistant/ui/fragment/LockScreenTrafficFragment;)Landroid/content/Context;

    move-result-object p1

    const-string v0, "https://api.miui.security.xiaomi.com/views/netassist/productlist.html"

    const-string v1, "100010"

    invoke-static {p1, v0, v1}, Lcom/miui/networkassistant/traffic/purchase/PurchaseUtil;->launchUrl(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    new-instance p1, Landroid/os/Bundle;

    invoke-direct {p1}, Landroid/os/Bundle;-><init>()V

    invoke-static {}, Lcom/miui/networkassistant/dual/Sim;->getCurrentActiveSlotNum()I

    move-result v0

    const-string v1, "sim_slot_num_tag"

    invoke-virtual {p1, v1, v0}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    iget-object v0, p0, Lcom/miui/networkassistant/ui/fragment/LockScreenTrafficFragment$3;->this$0:Lcom/miui/networkassistant/ui/fragment/LockScreenTrafficFragment;

    invoke-static {v0}, Lcom/miui/networkassistant/ui/fragment/LockScreenTrafficFragment;->access$400(Lcom/miui/networkassistant/ui/fragment/LockScreenTrafficFragment;)Landroid/app/Activity;

    move-result-object v0

    const-class v1, Lcom/miui/networkassistant/ui/fragment/TrafficLimitSettingFragment;

    invoke-static {v0, v1, p1}, Lcom/miui/networkassistant/ui/base/UniversalFragmentActivity;->startWithFragment(Landroid/app/Activity;Ljava/lang/Class;Landroid/os/Bundle;)V

    :goto_0
    return-void
.end method
