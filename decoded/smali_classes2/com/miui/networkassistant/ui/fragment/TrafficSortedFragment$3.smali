.class Lcom/miui/networkassistant/ui/fragment/TrafficSortedFragment$3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lmiuix/popupwidget/widget/DropDownSingleChoiceMenu$OnMenuListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/networkassistant/ui/fragment/TrafficSortedFragment;->showSortTypeMenu()V
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

    iput-object p1, p0, Lcom/miui/networkassistant/ui/fragment/TrafficSortedFragment$3;->this$0:Lcom/miui/networkassistant/ui/fragment/TrafficSortedFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDismiss()V
    .locals 0

    return-void
.end method

.method public onItemSelected(Lmiuix/popupwidget/widget/DropDownSingleChoiceMenu;I)V
    .locals 0

    iget-object p1, p0, Lcom/miui/networkassistant/ui/fragment/TrafficSortedFragment$3;->this$0:Lcom/miui/networkassistant/ui/fragment/TrafficSortedFragment;

    invoke-static {p1, p2}, Lcom/miui/networkassistant/ui/fragment/TrafficSortedFragment;->access$602(Lcom/miui/networkassistant/ui/fragment/TrafficSortedFragment;I)I

    iget-object p1, p0, Lcom/miui/networkassistant/ui/fragment/TrafficSortedFragment$3;->this$0:Lcom/miui/networkassistant/ui/fragment/TrafficSortedFragment;

    invoke-static {p1}, Lcom/miui/networkassistant/ui/fragment/TrafficSortedFragment;->access$700(Lcom/miui/networkassistant/ui/fragment/TrafficSortedFragment;)Lcom/miui/networkassistant/service/ts/TrafficStatisticManager;

    move-result-object p1

    iget-object p2, p0, Lcom/miui/networkassistant/ui/fragment/TrafficSortedFragment$3;->this$0:Lcom/miui/networkassistant/ui/fragment/TrafficSortedFragment;

    invoke-static {p2}, Lcom/miui/networkassistant/ui/fragment/TrafficSortedFragment;->access$600(Lcom/miui/networkassistant/ui/fragment/TrafficSortedFragment;)I

    move-result p2

    invoke-virtual {p1, p2}, Lcom/miui/networkassistant/service/ts/TrafficStatisticManager;->setDataUsageType(I)V

    return-void
.end method

.method public onShow()V
    .locals 0

    return-void
.end method
