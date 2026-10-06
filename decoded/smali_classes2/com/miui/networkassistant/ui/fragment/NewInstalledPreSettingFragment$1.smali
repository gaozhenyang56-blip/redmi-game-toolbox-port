.class Lcom/miui/networkassistant/ui/fragment/NewInstalledPreSettingFragment$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/preference/Preference$c;


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

    iput-object p1, p0, Lcom/miui/networkassistant/ui/fragment/NewInstalledPreSettingFragment$1;->this$0:Lcom/miui/networkassistant/ui/fragment/NewInstalledPreSettingFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPreferenceChange(Landroidx/preference/Preference;Ljava/lang/Object;)Z
    .locals 3

    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p2

    iget-object v0, p0, Lcom/miui/networkassistant/ui/fragment/NewInstalledPreSettingFragment$1;->this$0:Lcom/miui/networkassistant/ui/fragment/NewInstalledPreSettingFragment;

    invoke-static {v0}, Lcom/miui/networkassistant/ui/fragment/NewInstalledPreSettingFragment;->access$000(Lcom/miui/networkassistant/ui/fragment/NewInstalledPreSettingFragment;)[Landroidx/preference/CheckBoxPreference;

    move-result-object v0

    const/4 v1, 0x0

    aget-object v0, v0, v1

    const/4 v2, 0x1

    if-ne v0, p1, :cond_0

    iget-object p1, p0, Lcom/miui/networkassistant/ui/fragment/NewInstalledPreSettingFragment$1;->this$0:Lcom/miui/networkassistant/ui/fragment/NewInstalledPreSettingFragment;

    xor-int/2addr p2, v2

    invoke-static {p1, v1, p2}, Lcom/miui/networkassistant/ui/fragment/NewInstalledPreSettingFragment;->access$100(Lcom/miui/networkassistant/ui/fragment/NewInstalledPreSettingFragment;IZ)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/miui/networkassistant/ui/fragment/NewInstalledPreSettingFragment$1;->this$0:Lcom/miui/networkassistant/ui/fragment/NewInstalledPreSettingFragment;

    invoke-static {v0}, Lcom/miui/networkassistant/ui/fragment/NewInstalledPreSettingFragment;->access$000(Lcom/miui/networkassistant/ui/fragment/NewInstalledPreSettingFragment;)[Landroidx/preference/CheckBoxPreference;

    move-result-object v0

    aget-object v0, v0, v2

    if-ne v0, p1, :cond_1

    iget-object p1, p0, Lcom/miui/networkassistant/ui/fragment/NewInstalledPreSettingFragment$1;->this$0:Lcom/miui/networkassistant/ui/fragment/NewInstalledPreSettingFragment;

    xor-int/2addr p2, v2

    invoke-static {p1, v2, p2}, Lcom/miui/networkassistant/ui/fragment/NewInstalledPreSettingFragment;->access$100(Lcom/miui/networkassistant/ui/fragment/NewInstalledPreSettingFragment;IZ)V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/miui/networkassistant/ui/fragment/NewInstalledPreSettingFragment$1;->this$0:Lcom/miui/networkassistant/ui/fragment/NewInstalledPreSettingFragment;

    invoke-static {v0}, Lcom/miui/networkassistant/ui/fragment/NewInstalledPreSettingFragment;->access$200(Lcom/miui/networkassistant/ui/fragment/NewInstalledPreSettingFragment;)Landroidx/preference/CheckBoxPreference;

    move-result-object v0

    if-ne v0, p1, :cond_3

    iget-object p1, p0, Lcom/miui/networkassistant/ui/fragment/NewInstalledPreSettingFragment$1;->this$0:Lcom/miui/networkassistant/ui/fragment/NewInstalledPreSettingFragment;

    if-eqz p2, :cond_2

    invoke-static {p1}, Lcom/miui/networkassistant/ui/fragment/NewInstalledPreSettingFragment;->access$300(Lcom/miui/networkassistant/ui/fragment/NewInstalledPreSettingFragment;)Lcom/miui/networkassistant/config/CommonConfig;

    move-result-object p1

    sget-object p2, Lcom/miui/networkassistant/model/FirewallRule;->Allow:Lcom/miui/networkassistant/model/FirewallRule;

    invoke-virtual {p2}, Lcom/miui/networkassistant/model/FirewallRule;->value()I

    move-result p2

    invoke-virtual {p1, p2}, Lcom/miui/networkassistant/config/CommonConfig;->setFirewallWifiPreConfig(I)Z

    goto :goto_0

    :cond_2
    invoke-static {p1}, Lcom/miui/networkassistant/ui/fragment/NewInstalledPreSettingFragment;->access$400(Lcom/miui/networkassistant/ui/fragment/NewInstalledPreSettingFragment;)V

    :cond_3
    :goto_0
    return v2
.end method
