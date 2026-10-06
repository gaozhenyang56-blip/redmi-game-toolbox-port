.class Lcom/miui/networkassistant/ui/fragment/NewInstalledPreSettingFragment$4;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/networkassistant/ui/fragment/NewInstalledPreSettingFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/networkassistant/ui/fragment/NewInstalledPreSettingFragment;


# direct methods
.method constructor <init>(Lcom/miui/networkassistant/ui/fragment/NewInstalledPreSettingFragment;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/networkassistant/ui/fragment/NewInstalledPreSettingFragment$4;->this$0:Lcom/miui/networkassistant/ui/fragment/NewInstalledPreSettingFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 0

    const/4 p1, -0x1

    if-ne p2, p1, :cond_0

    iget-object p1, p0, Lcom/miui/networkassistant/ui/fragment/NewInstalledPreSettingFragment$4;->this$0:Lcom/miui/networkassistant/ui/fragment/NewInstalledPreSettingFragment;

    invoke-static {p1}, Lcom/miui/networkassistant/ui/fragment/NewInstalledPreSettingFragment;->access$300(Lcom/miui/networkassistant/ui/fragment/NewInstalledPreSettingFragment;)Lcom/miui/networkassistant/config/CommonConfig;

    move-result-object p1

    sget-object p2, Lcom/miui/networkassistant/model/FirewallRule;->Restrict:Lcom/miui/networkassistant/model/FirewallRule;

    invoke-virtual {p2}, Lcom/miui/networkassistant/model/FirewallRule;->value()I

    move-result p2

    invoke-virtual {p1, p2}, Lcom/miui/networkassistant/config/CommonConfig;->setFirewallWifiPreConfig(I)Z

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lcom/miui/networkassistant/ui/fragment/NewInstalledPreSettingFragment$4;->this$0:Lcom/miui/networkassistant/ui/fragment/NewInstalledPreSettingFragment;

    invoke-static {p1}, Lcom/miui/networkassistant/ui/fragment/NewInstalledPreSettingFragment;->access$200(Lcom/miui/networkassistant/ui/fragment/NewInstalledPreSettingFragment;)Landroidx/preference/CheckBoxPreference;

    move-result-object p1

    const/4 p2, 0x1

    invoke-virtual {p1, p2}, Landroidx/preference/TwoStatePreference;->setChecked(Z)V

    :goto_0
    return-void
.end method
