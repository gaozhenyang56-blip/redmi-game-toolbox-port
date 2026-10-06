.class Lcom/miui/networkassistant/ui/fragment/WlanFirewallFragment$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/miui/networkassistant/ui/adapter/BaseFirewallAdapter$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/networkassistant/ui/fragment/WlanFirewallFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/networkassistant/ui/fragment/WlanFirewallFragment;


# direct methods
.method constructor <init>(Lcom/miui/networkassistant/ui/fragment/WlanFirewallFragment;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/networkassistant/ui/fragment/WlanFirewallFragment$1;->this$0:Lcom/miui/networkassistant/ui/fragment/WlanFirewallFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(I)V
    .locals 1

    iget-object v0, p0, Lcom/miui/networkassistant/ui/fragment/WlanFirewallFragment$1;->this$0:Lcom/miui/networkassistant/ui/fragment/WlanFirewallFragment;

    iget-object v0, v0, Lcom/miui/networkassistant/ui/fragment/FirewallListFragment;->mAdapter:Lcom/miui/networkassistant/ui/adapter/BaseFirewallAdapter;

    invoke-virtual {v0}, Lcom/miui/networkassistant/ui/adapter/BaseFirewallAdapter;->getData()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/miui/networkassistant/model/AppInfo;

    iget-object p1, p1, Lcom/miui/networkassistant/model/AppInfo;->packageName:Ljava/lang/CharSequence;

    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p1

    iget-object v0, p0, Lcom/miui/networkassistant/ui/fragment/WlanFirewallFragment$1;->this$0:Lcom/miui/networkassistant/ui/fragment/WlanFirewallFragment;

    invoke-static {v0}, Lcom/miui/networkassistant/ui/fragment/WlanFirewallFragment;->access$000(Lcom/miui/networkassistant/ui/fragment/WlanFirewallFragment;)Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/miui/networkassistant/ui/fragment/ShowAppDetailFragment;->startAppDetailFragment(Landroid/app/Activity;Ljava/lang/String;)V

    return-void
.end method
