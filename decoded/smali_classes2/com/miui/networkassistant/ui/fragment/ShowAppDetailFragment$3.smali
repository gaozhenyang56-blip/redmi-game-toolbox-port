.class Lcom/miui/networkassistant/ui/fragment/ShowAppDetailFragment$3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lmiuix/popupwidget/widget/DropDownSingleChoiceMenu$OnMenuListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/networkassistant/ui/fragment/ShowAppDetailFragment;->showTrafficMenuItem()V
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

    iput-object p1, p0, Lcom/miui/networkassistant/ui/fragment/ShowAppDetailFragment$3;->this$0:Lcom/miui/networkassistant/ui/fragment/ShowAppDetailFragment;

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

    iget-object v0, p0, Lcom/miui/networkassistant/ui/fragment/ShowAppDetailFragment$3;->this$0:Lcom/miui/networkassistant/ui/fragment/ShowAppDetailFragment;

    invoke-static {v0, p2}, Lcom/miui/networkassistant/ui/fragment/ShowAppDetailFragment;->access$402(Lcom/miui/networkassistant/ui/fragment/ShowAppDetailFragment;I)I

    invoke-static {}, Lx4/k0;->b()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/miui/networkassistant/ui/fragment/ShowAppDetailFragment$3;->this$0:Lcom/miui/networkassistant/ui/fragment/ShowAppDetailFragment;

    add-int/lit8 p2, p2, 0x4

    invoke-static {v0, p2}, Lcom/miui/networkassistant/ui/fragment/ShowAppDetailFragment;->access$402(Lcom/miui/networkassistant/ui/fragment/ShowAppDetailFragment;I)I

    :cond_0
    iget-object p2, p0, Lcom/miui/networkassistant/ui/fragment/ShowAppDetailFragment$3;->this$0:Lcom/miui/networkassistant/ui/fragment/ShowAppDetailFragment;

    invoke-static {p2}, Lcom/miui/networkassistant/ui/fragment/ShowAppDetailFragment;->access$500(Lcom/miui/networkassistant/ui/fragment/ShowAppDetailFragment;)V

    invoke-virtual {p1}, Lmiuix/popupwidget/widget/DropDownSingleChoiceMenu;->dismiss()V

    return-void
.end method

.method public onShow()V
    .locals 0

    return-void
.end method
