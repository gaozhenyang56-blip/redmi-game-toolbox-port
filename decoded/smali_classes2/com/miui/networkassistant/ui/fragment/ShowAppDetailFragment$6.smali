.class Lcom/miui/networkassistant/ui/fragment/ShowAppDetailFragment$6;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/miui/networkassistant/ui/view/SlideButtonToolbarItemView$ToolbarItemClickListener;


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

    iput-object p1, p0, Lcom/miui/networkassistant/ui/fragment/ShowAppDetailFragment$6;->this$0:Lcom/miui/networkassistant/ui/fragment/ShowAppDetailFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onToolbarItemClick(Landroid/view/View;Z)V
    .locals 1

    iget-object p1, p0, Lcom/miui/networkassistant/ui/fragment/ShowAppDetailFragment$6;->this$0:Lcom/miui/networkassistant/ui/fragment/ShowAppDetailFragment;

    invoke-static {p1}, Lcom/miui/networkassistant/ui/fragment/ShowAppDetailFragment;->access$600(Lcom/miui/networkassistant/ui/fragment/ShowAppDetailFragment;)Lcom/miui/networkassistant/service/IFirewallBinder;

    move-result-object p1

    if-eqz p1, :cond_1

    :try_start_0
    iget-object p1, p0, Lcom/miui/networkassistant/ui/fragment/ShowAppDetailFragment$6;->this$0:Lcom/miui/networkassistant/ui/fragment/ShowAppDetailFragment;

    invoke-static {p1}, Lcom/miui/networkassistant/ui/fragment/ShowAppDetailFragment;->access$600(Lcom/miui/networkassistant/ui/fragment/ShowAppDetailFragment;)Lcom/miui/networkassistant/service/IFirewallBinder;

    move-result-object p1

    iget-object v0, p0, Lcom/miui/networkassistant/ui/fragment/ShowAppDetailFragment$6;->this$0:Lcom/miui/networkassistant/ui/fragment/ShowAppDetailFragment;

    invoke-static {v0}, Lcom/miui/networkassistant/ui/fragment/ShowAppDetailFragment;->access$1300(Lcom/miui/networkassistant/ui/fragment/ShowAppDetailFragment;)Lcom/miui/networkassistant/model/AppInfo;

    move-result-object v0

    iget-object v0, v0, Lcom/miui/networkassistant/model/AppInfo;->packageName:Ljava/lang/CharSequence;

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    if-eqz p2, :cond_0

    sget-object p2, Lcom/miui/networkassistant/model/FirewallRule;->Allow:Lcom/miui/networkassistant/model/FirewallRule;

    goto :goto_0

    :cond_0
    sget-object p2, Lcom/miui/networkassistant/model/FirewallRule;->Restrict:Lcom/miui/networkassistant/model/FirewallRule;

    :goto_0
    invoke-interface {p1, v0, p2}, Lcom/miui/networkassistant/service/IFirewallBinder;->setWifiRule(Ljava/lang/String;Lcom/miui/networkassistant/model/FirewallRule;)Z

    move-result p1

    if-nez p1, :cond_1

    iget-object p1, p0, Lcom/miui/networkassistant/ui/fragment/ShowAppDetailFragment$6;->this$0:Lcom/miui/networkassistant/ui/fragment/ShowAppDetailFragment;

    invoke-static {p1}, Lcom/miui/networkassistant/ui/fragment/ShowAppDetailFragment;->access$1400(Lcom/miui/networkassistant/ui/fragment/ShowAppDetailFragment;)Lcom/miui/networkassistant/ui/view/SlideButtonToolbarItemView;

    move-result-object p1

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Lcom/miui/networkassistant/ui/view/SlideButtonToolbarItemView;->setChecked(Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p1

    const-string p2, "ShowAppDetailFragment"

    const-string v0, "mWlanFirewallChangedListener"

    invoke-static {p2, v0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_1
    :goto_1
    return-void
.end method
