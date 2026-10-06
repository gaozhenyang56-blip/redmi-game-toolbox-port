.class Lcom/miui/networkassistant/ui/fragment/ShowMiServiceAppDetailFragment$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lmiuix/popupwidget/widget/DropDownSingleChoiceMenu$OnMenuListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/networkassistant/ui/fragment/ShowMiServiceAppDetailFragment;->showTrafficMenuItem()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/networkassistant/ui/fragment/ShowMiServiceAppDetailFragment;


# direct methods
.method constructor <init>(Lcom/miui/networkassistant/ui/fragment/ShowMiServiceAppDetailFragment;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/networkassistant/ui/fragment/ShowMiServiceAppDetailFragment$1;->this$0:Lcom/miui/networkassistant/ui/fragment/ShowMiServiceAppDetailFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDismiss()V
    .locals 0

    return-void
.end method

.method public onItemSelected(Lmiuix/popupwidget/widget/DropDownSingleChoiceMenu;I)V
    .locals 1

    iget-object v0, p0, Lcom/miui/networkassistant/ui/fragment/ShowMiServiceAppDetailFragment$1;->this$0:Lcom/miui/networkassistant/ui/fragment/ShowMiServiceAppDetailFragment;

    invoke-static {v0, p2}, Lcom/miui/networkassistant/ui/fragment/ShowMiServiceAppDetailFragment;->access$002(Lcom/miui/networkassistant/ui/fragment/ShowMiServiceAppDetailFragment;I)I

    iget-object p2, p0, Lcom/miui/networkassistant/ui/fragment/ShowMiServiceAppDetailFragment$1;->this$0:Lcom/miui/networkassistant/ui/fragment/ShowMiServiceAppDetailFragment;

    invoke-static {p2}, Lcom/miui/networkassistant/ui/fragment/ShowMiServiceAppDetailFragment;->access$100(Lcom/miui/networkassistant/ui/fragment/ShowMiServiceAppDetailFragment;)V

    iget-object p2, p0, Lcom/miui/networkassistant/ui/fragment/ShowMiServiceAppDetailFragment$1;->this$0:Lcom/miui/networkassistant/ui/fragment/ShowMiServiceAppDetailFragment;

    invoke-static {p2}, Lcom/miui/networkassistant/ui/fragment/ShowMiServiceAppDetailFragment;->access$200(Lcom/miui/networkassistant/ui/fragment/ShowMiServiceAppDetailFragment;)V

    invoke-virtual {p1}, Lmiuix/popupwidget/widget/DropDownSingleChoiceMenu;->dismiss()V

    return-void
.end method

.method public onShow()V
    .locals 0

    return-void
.end method
