.class Lcom/miui/networkassistant/ui/fragment/TrafficSortedFragment$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lmiuix/popupwidget/widget/DropDownSingleChoiceMenu$OnMenuListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/networkassistant/ui/fragment/TrafficSortedFragment;->showTrafficMenuItem()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/networkassistant/ui/fragment/TrafficSortedFragment;


# direct methods
.method constructor <init>(Lcom/miui/networkassistant/ui/fragment/TrafficSortedFragment;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/networkassistant/ui/fragment/TrafficSortedFragment$2;->this$0:Lcom/miui/networkassistant/ui/fragment/TrafficSortedFragment;

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

    iget-object v0, p0, Lcom/miui/networkassistant/ui/fragment/TrafficSortedFragment$2;->this$0:Lcom/miui/networkassistant/ui/fragment/TrafficSortedFragment;

    invoke-static {v0}, Lcom/miui/networkassistant/ui/fragment/TrafficSortedFragment;->access$200(Lcom/miui/networkassistant/ui/fragment/TrafficSortedFragment;)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/miui/networkassistant/ui/fragment/TrafficSortedFragment$2;->this$0:Lcom/miui/networkassistant/ui/fragment/TrafficSortedFragment;

    invoke-static {v0, p2}, Lcom/miui/networkassistant/ui/fragment/TrafficSortedFragment;->access$302(Lcom/miui/networkassistant/ui/fragment/TrafficSortedFragment;I)I

    iget-object p2, p0, Lcom/miui/networkassistant/ui/fragment/TrafficSortedFragment$2;->this$0:Lcom/miui/networkassistant/ui/fragment/TrafficSortedFragment;

    invoke-static {p2}, Lcom/miui/networkassistant/ui/fragment/TrafficSortedFragment;->access$400(Lcom/miui/networkassistant/ui/fragment/TrafficSortedFragment;)Lcom/miui/networkassistant/ui/adapter/TrafficSortedAppListAdapter;

    move-result-object p2

    iget-object v0, p0, Lcom/miui/networkassistant/ui/fragment/TrafficSortedFragment$2;->this$0:Lcom/miui/networkassistant/ui/fragment/TrafficSortedFragment;

    invoke-static {v0}, Lcom/miui/networkassistant/ui/fragment/TrafficSortedFragment;->access$300(Lcom/miui/networkassistant/ui/fragment/TrafficSortedFragment;)I

    move-result v0

    invoke-virtual {p2, v0}, Lcom/miui/networkassistant/ui/adapter/TrafficSortedAppListAdapter;->setMode(I)V

    iget-object p2, p0, Lcom/miui/networkassistant/ui/fragment/TrafficSortedFragment$2;->this$0:Lcom/miui/networkassistant/ui/fragment/TrafficSortedFragment;

    invoke-static {p2}, Lcom/miui/networkassistant/ui/fragment/TrafficSortedFragment;->access$500(Lcom/miui/networkassistant/ui/fragment/TrafficSortedFragment;)V

    invoke-virtual {p1}, Lmiuix/popupwidget/widget/DropDownSingleChoiceMenu;->dismiss()V

    return-void
.end method

.method public onShow()V
    .locals 0

    return-void
.end method
