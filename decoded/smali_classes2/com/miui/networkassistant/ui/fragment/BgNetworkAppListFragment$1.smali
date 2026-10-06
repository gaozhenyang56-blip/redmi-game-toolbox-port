.class Lcom/miui/networkassistant/ui/fragment/BgNetworkAppListFragment$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/networkassistant/ui/fragment/BgNetworkAppListFragment;->onCustomizeActionBar(Landroidx/appcompat/app/ActionBar;)I
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/networkassistant/ui/fragment/BgNetworkAppListFragment;


# direct methods
.method constructor <init>(Lcom/miui/networkassistant/ui/fragment/BgNetworkAppListFragment;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/networkassistant/ui/fragment/BgNetworkAppListFragment$1;->this$0:Lcom/miui/networkassistant/ui/fragment/BgNetworkAppListFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3

    new-instance p1, Lcom/miui/networkassistant/ui/dialog/MessageDialog;

    iget-object v0, p0, Lcom/miui/networkassistant/ui/fragment/BgNetworkAppListFragment$1;->this$0:Lcom/miui/networkassistant/ui/fragment/BgNetworkAppListFragment;

    invoke-static {v0}, Lcom/miui/networkassistant/ui/fragment/BgNetworkAppListFragment;->access$000(Lcom/miui/networkassistant/ui/fragment/BgNetworkAppListFragment;)Landroid/app/Activity;

    move-result-object v0

    invoke-direct {p1, v0}, Lcom/miui/networkassistant/ui/dialog/MessageDialog;-><init>(Landroid/app/Activity;)V

    iget-object v0, p0, Lcom/miui/networkassistant/ui/fragment/BgNetworkAppListFragment$1;->this$0:Lcom/miui/networkassistant/ui/fragment/BgNetworkAppListFragment;

    invoke-static {v0}, Lcom/miui/networkassistant/ui/fragment/BgNetworkAppListFragment;->access$100(Lcom/miui/networkassistant/ui/fragment/BgNetworkAppListFragment;)Landroid/app/Activity;

    move-result-object v0

    const v1, 0x7f12087d

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/networkassistant/ui/fragment/BgNetworkAppListFragment$1;->this$0:Lcom/miui/networkassistant/ui/fragment/BgNetworkAppListFragment;

    invoke-static {v1}, Lcom/miui/networkassistant/ui/fragment/BgNetworkAppListFragment;->access$200(Lcom/miui/networkassistant/ui/fragment/BgNetworkAppListFragment;)Landroid/app/Activity;

    move-result-object v1

    const v2, 0x7f120165

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/miui/networkassistant/ui/dialog/MessageDialog;->buildShowDialog(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
