.class Lcom/miui/networkassistant/ui/fragment/RoamingWhiteListFragment$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/networkassistant/ui/fragment/RoamingWhiteListFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/networkassistant/ui/fragment/RoamingWhiteListFragment;


# direct methods
.method constructor <init>(Lcom/miui/networkassistant/ui/fragment/RoamingWhiteListFragment;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/networkassistant/ui/fragment/RoamingWhiteListFragment$2;->this$0:Lcom/miui/networkassistant/ui/fragment/RoamingWhiteListFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 1

    iget-object p1, p0, Lcom/miui/networkassistant/ui/fragment/RoamingWhiteListFragment$2;->this$0:Lcom/miui/networkassistant/ui/fragment/RoamingWhiteListFragment;

    const/4 v0, 0x1

    invoke-static {p1, v0}, Lcom/miui/networkassistant/ui/fragment/RoamingWhiteListFragment;->access$102(Lcom/miui/networkassistant/ui/fragment/RoamingWhiteListFragment;Z)Z

    iget-object p1, p0, Lcom/miui/networkassistant/ui/fragment/RoamingWhiteListFragment$2;->this$0:Lcom/miui/networkassistant/ui/fragment/RoamingWhiteListFragment;

    invoke-static {p2}, Lcom/miui/networkassistant/service/IFirewallBinder$Stub;->asInterface(Landroid/os/IBinder;)Lcom/miui/networkassistant/service/IFirewallBinder;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/miui/networkassistant/ui/fragment/RoamingWhiteListFragment;->access$202(Lcom/miui/networkassistant/ui/fragment/RoamingWhiteListFragment;Lcom/miui/networkassistant/service/IFirewallBinder;)Lcom/miui/networkassistant/service/IFirewallBinder;

    iget-object p1, p0, Lcom/miui/networkassistant/ui/fragment/RoamingWhiteListFragment$2;->this$0:Lcom/miui/networkassistant/ui/fragment/RoamingWhiteListFragment;

    invoke-static {p1}, Lcom/miui/networkassistant/ui/fragment/RoamingWhiteListFragment;->access$300(Lcom/miui/networkassistant/ui/fragment/RoamingWhiteListFragment;)V

    return-void
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 1

    iget-object p1, p0, Lcom/miui/networkassistant/ui/fragment/RoamingWhiteListFragment$2;->this$0:Lcom/miui/networkassistant/ui/fragment/RoamingWhiteListFragment;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/miui/networkassistant/ui/fragment/RoamingWhiteListFragment;->access$202(Lcom/miui/networkassistant/ui/fragment/RoamingWhiteListFragment;Lcom/miui/networkassistant/service/IFirewallBinder;)Lcom/miui/networkassistant/service/IFirewallBinder;

    iget-object p1, p0, Lcom/miui/networkassistant/ui/fragment/RoamingWhiteListFragment$2;->this$0:Lcom/miui/networkassistant/ui/fragment/RoamingWhiteListFragment;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/miui/networkassistant/ui/fragment/RoamingWhiteListFragment;->access$102(Lcom/miui/networkassistant/ui/fragment/RoamingWhiteListFragment;Z)Z

    return-void
.end method
