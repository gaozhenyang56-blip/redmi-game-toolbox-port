.class Lcom/miui/networkassistant/ui/fragment/TrafficLimitSettingFragment$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/miui/networkassistant/ui/dialog/SingleChoiceItemsDialog$SingleChoiceItemsDialogListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/networkassistant/ui/fragment/TrafficLimitSettingFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/networkassistant/ui/fragment/TrafficLimitSettingFragment;


# direct methods
.method constructor <init>(Lcom/miui/networkassistant/ui/fragment/TrafficLimitSettingFragment;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/networkassistant/ui/fragment/TrafficLimitSettingFragment$2;->this$0:Lcom/miui/networkassistant/ui/fragment/TrafficLimitSettingFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onSelectItemUpdate(II)V
    .locals 1

    const/4 v0, 0x1

    if-eq p2, v0, :cond_2

    const/4 v0, 0x2

    if-eq p2, v0, :cond_1

    const/4 v0, 0x3

    if-eq p2, v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object p2, p0, Lcom/miui/networkassistant/ui/fragment/TrafficLimitSettingFragment$2;->this$0:Lcom/miui/networkassistant/ui/fragment/TrafficLimitSettingFragment;

    invoke-static {p2, p1}, Lcom/miui/networkassistant/ui/fragment/TrafficLimitSettingFragment;->access$1300(Lcom/miui/networkassistant/ui/fragment/TrafficLimitSettingFragment;I)V

    goto :goto_0

    :cond_1
    iget-object p2, p0, Lcom/miui/networkassistant/ui/fragment/TrafficLimitSettingFragment$2;->this$0:Lcom/miui/networkassistant/ui/fragment/TrafficLimitSettingFragment;

    invoke-static {p2, p1}, Lcom/miui/networkassistant/ui/fragment/TrafficLimitSettingFragment;->access$1200(Lcom/miui/networkassistant/ui/fragment/TrafficLimitSettingFragment;I)V

    goto :goto_0

    :cond_2
    iget-object p2, p0, Lcom/miui/networkassistant/ui/fragment/TrafficLimitSettingFragment$2;->this$0:Lcom/miui/networkassistant/ui/fragment/TrafficLimitSettingFragment;

    invoke-static {p2, p1}, Lcom/miui/networkassistant/ui/fragment/TrafficLimitSettingFragment;->access$1100(Lcom/miui/networkassistant/ui/fragment/TrafficLimitSettingFragment;I)V

    :goto_0
    return-void
.end method
