.class Lcom/miui/networkassistant/ui/fragment/MobileFirewallFragment$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/miui/networkassistant/ui/adapter/BaseFirewallAdapter$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/networkassistant/ui/fragment/MobileFirewallFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/networkassistant/ui/fragment/MobileFirewallFragment;


# direct methods
.method constructor <init>(Lcom/miui/networkassistant/ui/fragment/MobileFirewallFragment;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/networkassistant/ui/fragment/MobileFirewallFragment$1;->this$0:Lcom/miui/networkassistant/ui/fragment/MobileFirewallFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(I)V
    .locals 2

    iget-object v0, p0, Lcom/miui/networkassistant/ui/fragment/MobileFirewallFragment$1;->this$0:Lcom/miui/networkassistant/ui/fragment/MobileFirewallFragment;

    iget-object v0, v0, Lcom/miui/networkassistant/ui/fragment/FirewallListFragment;->mAdapter:Lcom/miui/networkassistant/ui/adapter/BaseFirewallAdapter;

    invoke-virtual {v0}, Lcom/miui/networkassistant/ui/adapter/BaseFirewallAdapter;->getData()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/miui/networkassistant/model/AppInfo;

    iget-object p1, p1, Lcom/miui/networkassistant/model/AppInfo;->packageName:Ljava/lang/CharSequence;

    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "icon_system_app"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance p1, Landroid/os/Bundle;

    invoke-direct {p1}, Landroid/os/Bundle;-><init>()V

    iget-object v0, p0, Lcom/miui/networkassistant/ui/fragment/MobileFirewallFragment$1;->this$0:Lcom/miui/networkassistant/ui/fragment/MobileFirewallFragment;

    invoke-static {v0}, Lcom/miui/networkassistant/ui/fragment/MobileFirewallFragment;->access$000(Lcom/miui/networkassistant/ui/fragment/MobileFirewallFragment;)I

    move-result v0

    const-string v1, "slot_id"

    invoke-virtual {p1, v1, v0}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    iget-object p1, p0, Lcom/miui/networkassistant/ui/fragment/MobileFirewallFragment$1;->this$0:Lcom/miui/networkassistant/ui/fragment/MobileFirewallFragment;

    invoke-static {p1}, Lcom/miui/networkassistant/ui/fragment/MobileFirewallFragment;->access$100(Lcom/miui/networkassistant/ui/fragment/MobileFirewallFragment;)Landroid/app/Activity;

    move-result-object p1

    const-class v0, Lcom/miui/networkassistant/ui/fragment/SystemAppFirewallFragment;

    invoke-static {p1, v0}, Lcom/miui/networkassistant/ui/base/UniversalFragmentActivity;->startWithFragment(Landroid/app/Activity;Ljava/lang/Class;)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/miui/networkassistant/ui/fragment/MobileFirewallFragment$1;->this$0:Lcom/miui/networkassistant/ui/fragment/MobileFirewallFragment;

    invoke-static {v0}, Lcom/miui/networkassistant/ui/fragment/MobileFirewallFragment;->access$200(Lcom/miui/networkassistant/ui/fragment/MobileFirewallFragment;)Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/miui/networkassistant/ui/fragment/ShowAppDetailFragment;->startAppDetailFragment(Landroid/app/Activity;Ljava/lang/String;)V

    :goto_0
    return-void
.end method
