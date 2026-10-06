.class Lcom/miui/networkassistant/ui/NetworkAssistantActivity$9;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/networkassistant/ui/NetworkAssistantActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/networkassistant/ui/NetworkAssistantActivity;


# direct methods
.method constructor <init>(Lcom/miui/networkassistant/ui/NetworkAssistantActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/networkassistant/ui/NetworkAssistantActivity$9;->this$0:Lcom/miui/networkassistant/ui/NetworkAssistantActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1

    const/4 p1, -0x1

    if-ne p2, p1, :cond_0

    const-string p1, "flow_set"

    invoke-static {p1}, Lcom/miui/networkassistant/utils/AnalyticsHelper;->trackMainButtonClickCountEvent(Ljava/lang/String;)V

    iget-object p1, p0, Lcom/miui/networkassistant/ui/NetworkAssistantActivity$9;->this$0:Lcom/miui/networkassistant/ui/NetworkAssistantActivity;

    invoke-static {p1}, Lcom/miui/networkassistant/ui/NetworkAssistantActivity;->access$100(Lcom/miui/networkassistant/ui/NetworkAssistantActivity;)I

    move-result p1

    invoke-static {p1}, Lcom/miui/networkassistant/dual/Sim;->operateOnSlotNum(I)V

    iget-object p1, p0, Lcom/miui/networkassistant/ui/NetworkAssistantActivity$9;->this$0:Lcom/miui/networkassistant/ui/NetworkAssistantActivity;

    invoke-static {p1}, Lcom/miui/networkassistant/ui/NetworkAssistantActivity;->access$2500(Lcom/miui/networkassistant/ui/NetworkAssistantActivity;)Landroid/app/Activity;

    move-result-object p1

    const-class p2, Lcom/miui/networkassistant/ui/fragment/PackageSettingGuideFragment;

    const/4 v0, 0x0

    invoke-static {p1, p2, v0}, Lcom/miui/networkassistant/ui/base/UniversalPreferenceActivity;->startWithFragment(Landroid/app/Activity;Ljava/lang/Class;Landroid/os/Bundle;)V

    :cond_0
    return-void
.end method
