.class Lcom/miui/networkassistant/ui/fragment/ShowAppDetailFragment$7;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/miui/networkassistant/ui/dialog/OptionTipDialog$OptionDialogListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/networkassistant/ui/fragment/ShowAppDetailFragment;->showRestrictBackgroundNetDialog(ZI)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/networkassistant/ui/fragment/ShowAppDetailFragment;

.field final synthetic val$uid:I


# direct methods
.method constructor <init>(Lcom/miui/networkassistant/ui/fragment/ShowAppDetailFragment;I)V
    .locals 0

    iput-object p1, p0, Lcom/miui/networkassistant/ui/fragment/ShowAppDetailFragment$7;->this$0:Lcom/miui/networkassistant/ui/fragment/ShowAppDetailFragment;

    iput p2, p0, Lcom/miui/networkassistant/ui/fragment/ShowAppDetailFragment$7;->val$uid:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onOptionUpdated(Z)V
    .locals 2

    iget-object v0, p0, Lcom/miui/networkassistant/ui/fragment/ShowAppDetailFragment$7;->this$0:Lcom/miui/networkassistant/ui/fragment/ShowAppDetailFragment;

    invoke-static {v0}, Lcom/miui/networkassistant/ui/fragment/ShowAppDetailFragment;->access$1600(Lcom/miui/networkassistant/ui/fragment/ShowAppDetailFragment;)Lcom/miui/networkassistant/ui/view/SlideButtonToolbarItemView;

    move-result-object v0

    xor-int/lit8 v1, p1, 0x1

    invoke-virtual {v0, v1}, Lcom/miui/networkassistant/ui/view/SlideButtonToolbarItemView;->setChecked(Z)V

    iget-object v0, p0, Lcom/miui/networkassistant/ui/fragment/ShowAppDetailFragment$7;->this$0:Lcom/miui/networkassistant/ui/fragment/ShowAppDetailFragment;

    invoke-static {v0}, Lcom/miui/networkassistant/ui/fragment/ShowAppDetailFragment;->access$1700(Lcom/miui/networkassistant/ui/fragment/ShowAppDetailFragment;)Lcom/miui/networkassistant/firewall/BackgroundPolicyService;

    move-result-object v0

    iget v1, p0, Lcom/miui/networkassistant/ui/fragment/ShowAppDetailFragment$7;->val$uid:I

    invoke-virtual {v0, v1, p1}, Lcom/miui/networkassistant/firewall/BackgroundPolicyService;->setAppRestrictBackground(IZ)V

    return-void
.end method
