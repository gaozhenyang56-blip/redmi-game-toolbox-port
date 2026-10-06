.class Lcom/miui/networkassistant/ui/fragment/FirewallListFragment$5;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/networkassistant/ui/fragment/FirewallListFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/networkassistant/ui/fragment/FirewallListFragment;


# direct methods
.method constructor <init>(Lcom/miui/networkassistant/ui/fragment/FirewallListFragment;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/networkassistant/ui/fragment/FirewallListFragment$5;->this$0:Lcom/miui/networkassistant/ui/fragment/FirewallListFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 1

    iget-object p1, p0, Lcom/miui/networkassistant/ui/fragment/FirewallListFragment$5;->this$0:Lcom/miui/networkassistant/ui/fragment/FirewallListFragment;

    const/4 v0, 0x1

    invoke-static {p1, v0}, Lcom/miui/networkassistant/ui/fragment/FirewallListFragment;->access$302(Lcom/miui/networkassistant/ui/fragment/FirewallListFragment;Z)Z

    iget-object p1, p0, Lcom/miui/networkassistant/ui/fragment/FirewallListFragment$5;->this$0:Lcom/miui/networkassistant/ui/fragment/FirewallListFragment;

    invoke-static {p2}, Lcom/miui/networkassistant/service/IFirewallBinder$Stub;->asInterface(Landroid/os/IBinder;)Lcom/miui/networkassistant/service/IFirewallBinder;

    move-result-object p2

    iput-object p2, p1, Lcom/miui/networkassistant/ui/fragment/FirewallListFragment;->mFirewallBinder:Lcom/miui/networkassistant/service/IFirewallBinder;

    iget-object p1, p0, Lcom/miui/networkassistant/ui/fragment/FirewallListFragment$5;->this$0:Lcom/miui/networkassistant/ui/fragment/FirewallListFragment;

    invoke-static {p1}, Lcom/miui/networkassistant/ui/fragment/FirewallListFragment;->access$400(Lcom/miui/networkassistant/ui/fragment/FirewallListFragment;)Lcom/miui/networkassistant/ui/fragment/FirewallListFragment$UIHandler;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    iget-object p1, p0, Lcom/miui/networkassistant/ui/fragment/FirewallListFragment$5;->this$0:Lcom/miui/networkassistant/ui/fragment/FirewallListFragment;

    invoke-virtual {p1}, Lcom/miui/networkassistant/ui/fragment/FirewallListFragment;->onFirewallServiceConnected()V

    return-void
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 1

    iget-object p1, p0, Lcom/miui/networkassistant/ui/fragment/FirewallListFragment$5;->this$0:Lcom/miui/networkassistant/ui/fragment/FirewallListFragment;

    const/4 v0, 0x0

    iput-object v0, p1, Lcom/miui/networkassistant/ui/fragment/FirewallListFragment;->mFirewallBinder:Lcom/miui/networkassistant/service/IFirewallBinder;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/miui/networkassistant/ui/fragment/FirewallListFragment;->access$302(Lcom/miui/networkassistant/ui/fragment/FirewallListFragment;Z)Z

    return-void
.end method
