.class Lcom/miui/networkassistant/ui/fragment/ShowAppDetailFragment$5;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/miui/networkassistant/ui/dialog/OptionTipDialog$OptionDialogListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/networkassistant/ui/fragment/ShowAppDetailFragment;->buildRestrictAndroidTipDialog(Ljava/lang/String;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/networkassistant/ui/fragment/ShowAppDetailFragment;

.field final synthetic val$pkgName:Ljava/lang/String;

.field final synthetic val$slotNum:I


# direct methods
.method constructor <init>(Lcom/miui/networkassistant/ui/fragment/ShowAppDetailFragment;Ljava/lang/String;I)V
    .locals 0

    iput-object p1, p0, Lcom/miui/networkassistant/ui/fragment/ShowAppDetailFragment$5;->this$0:Lcom/miui/networkassistant/ui/fragment/ShowAppDetailFragment;

    iput-object p2, p0, Lcom/miui/networkassistant/ui/fragment/ShowAppDetailFragment$5;->val$pkgName:Ljava/lang/String;

    iput p3, p0, Lcom/miui/networkassistant/ui/fragment/ShowAppDetailFragment$5;->val$slotNum:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onOptionUpdated(Z)V
    .locals 3

    if-eqz p1, :cond_0

    :try_start_0
    iget-object p1, p0, Lcom/miui/networkassistant/ui/fragment/ShowAppDetailFragment$5;->this$0:Lcom/miui/networkassistant/ui/fragment/ShowAppDetailFragment;

    invoke-static {p1}, Lcom/miui/networkassistant/ui/fragment/ShowAppDetailFragment;->access$600(Lcom/miui/networkassistant/ui/fragment/ShowAppDetailFragment;)Lcom/miui/networkassistant/service/IFirewallBinder;

    move-result-object p1

    iget-object v0, p0, Lcom/miui/networkassistant/ui/fragment/ShowAppDetailFragment$5;->val$pkgName:Ljava/lang/String;

    sget-object v1, Lcom/miui/networkassistant/model/FirewallRule;->Restrict:Lcom/miui/networkassistant/model/FirewallRule;

    iget-object v2, p0, Lcom/miui/networkassistant/ui/fragment/ShowAppDetailFragment$5;->this$0:Lcom/miui/networkassistant/ui/fragment/ShowAppDetailFragment;

    invoke-static {v2}, Lcom/miui/networkassistant/ui/fragment/ShowAppDetailFragment;->access$700(Lcom/miui/networkassistant/ui/fragment/ShowAppDetailFragment;)I

    move-result v2

    invoke-interface {p1, v0, v1, v2}, Lcom/miui/networkassistant/service/IFirewallBinder;->setMobileRule(Ljava/lang/String;Lcom/miui/networkassistant/model/FirewallRule;I)Z

    iget-object p1, p0, Lcom/miui/networkassistant/ui/fragment/ShowAppDetailFragment$5;->this$0:Lcom/miui/networkassistant/ui/fragment/ShowAppDetailFragment;

    invoke-static {p1}, Lcom/miui/networkassistant/ui/fragment/ShowAppDetailFragment;->access$800(Lcom/miui/networkassistant/ui/fragment/ShowAppDetailFragment;)[Lcom/miui/networkassistant/ui/view/SlideButtonToolbarItemView;

    move-result-object p1

    iget v0, p0, Lcom/miui/networkassistant/ui/fragment/ShowAppDetailFragment$5;->val$slotNum:I

    aget-object p1, p1, v0

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/miui/networkassistant/ui/view/SlideButtonToolbarItemView;->setChecked(Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    const-string v0, "ShowAppDetailFragment"

    const-string v1, "buildRestrictAndroidTipDialog"

    invoke-static {v0, v1, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lcom/miui/networkassistant/ui/fragment/ShowAppDetailFragment$5;->this$0:Lcom/miui/networkassistant/ui/fragment/ShowAppDetailFragment;

    invoke-static {p1}, Lcom/miui/networkassistant/ui/fragment/ShowAppDetailFragment;->access$800(Lcom/miui/networkassistant/ui/fragment/ShowAppDetailFragment;)[Lcom/miui/networkassistant/ui/view/SlideButtonToolbarItemView;

    move-result-object p1

    iget v0, p0, Lcom/miui/networkassistant/ui/fragment/ShowAppDetailFragment$5;->val$slotNum:I

    aget-object p1, p1, v0

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lcom/miui/networkassistant/ui/view/SlideButtonToolbarItemView;->setChecked(Z)V

    :goto_0
    return-void
.end method
