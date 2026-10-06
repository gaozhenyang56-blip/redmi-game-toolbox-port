.class Lcom/miui/networkassistant/ui/fragment/ShowAppDetailFragment$4;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/networkassistant/ui/fragment/ShowAppDetailFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/networkassistant/ui/fragment/ShowAppDetailFragment;


# direct methods
.method constructor <init>(Lcom/miui/networkassistant/ui/fragment/ShowAppDetailFragment;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/networkassistant/ui/fragment/ShowAppDetailFragment$4;->this$0:Lcom/miui/networkassistant/ui/fragment/ShowAppDetailFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 0

    iget-object p1, p0, Lcom/miui/networkassistant/ui/fragment/ShowAppDetailFragment$4;->this$0:Lcom/miui/networkassistant/ui/fragment/ShowAppDetailFragment;

    invoke-static {p2}, Lcom/miui/networkassistant/service/IFirewallBinder$Stub;->asInterface(Landroid/os/IBinder;)Lcom/miui/networkassistant/service/IFirewallBinder;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/miui/networkassistant/ui/fragment/ShowAppDetailFragment;->access$602(Lcom/miui/networkassistant/ui/fragment/ShowAppDetailFragment;Lcom/miui/networkassistant/service/IFirewallBinder;)Lcom/miui/networkassistant/service/IFirewallBinder;

    iget-object p1, p0, Lcom/miui/networkassistant/ui/fragment/ShowAppDetailFragment$4;->this$0:Lcom/miui/networkassistant/ui/fragment/ShowAppDetailFragment;

    invoke-static {p1}, Lcom/miui/networkassistant/ui/fragment/ShowAppDetailFragment;->access$100(Lcom/miui/networkassistant/ui/fragment/ShowAppDetailFragment;)Landroid/os/Handler;

    move-result-object p1

    const/4 p2, 0x2

    invoke-virtual {p1, p2}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    return-void
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 1

    iget-object p1, p0, Lcom/miui/networkassistant/ui/fragment/ShowAppDetailFragment$4;->this$0:Lcom/miui/networkassistant/ui/fragment/ShowAppDetailFragment;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/miui/networkassistant/ui/fragment/ShowAppDetailFragment;->access$602(Lcom/miui/networkassistant/ui/fragment/ShowAppDetailFragment;Lcom/miui/networkassistant/service/IFirewallBinder;)Lcom/miui/networkassistant/service/IFirewallBinder;

    return-void
.end method
