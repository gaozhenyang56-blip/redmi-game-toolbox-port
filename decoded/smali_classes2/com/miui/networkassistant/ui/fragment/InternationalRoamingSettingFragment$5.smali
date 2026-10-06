.class Lcom/miui/networkassistant/ui/fragment/InternationalRoamingSettingFragment$5;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/networkassistant/ui/fragment/InternationalRoamingSettingFragment;->checkShowWarningDialog(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/networkassistant/ui/fragment/InternationalRoamingSettingFragment;


# direct methods
.method constructor <init>(Lcom/miui/networkassistant/ui/fragment/InternationalRoamingSettingFragment;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/networkassistant/ui/fragment/InternationalRoamingSettingFragment$5;->this$0:Lcom/miui/networkassistant/ui/fragment/InternationalRoamingSettingFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1

    iget-object p1, p0, Lcom/miui/networkassistant/ui/fragment/InternationalRoamingSettingFragment$5;->this$0:Lcom/miui/networkassistant/ui/fragment/InternationalRoamingSettingFragment;

    invoke-static {p1}, Lcom/miui/networkassistant/ui/fragment/InternationalRoamingSettingFragment;->access$1200(Lcom/miui/networkassistant/ui/fragment/InternationalRoamingSettingFragment;)Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/miui/networkassistant/ui/fragment/InternationalRoamingSettingFragment$5;->this$0:Lcom/miui/networkassistant/ui/fragment/InternationalRoamingSettingFragment;

    invoke-static {p1}, Lcom/miui/networkassistant/ui/fragment/InternationalRoamingSettingFragment;->access$1300(Lcom/miui/networkassistant/ui/fragment/InternationalRoamingSettingFragment;)Landroidx/preference/CheckBoxPreference;

    move-result-object p1

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Landroidx/preference/TwoStatePreference;->setChecked(Z)V

    iget-object p1, p0, Lcom/miui/networkassistant/ui/fragment/InternationalRoamingSettingFragment$5;->this$0:Lcom/miui/networkassistant/ui/fragment/InternationalRoamingSettingFragment;

    invoke-static {p1}, Lcom/miui/networkassistant/ui/fragment/InternationalRoamingSettingFragment;->access$1400(Lcom/miui/networkassistant/ui/fragment/InternationalRoamingSettingFragment;)Landroid/content/Context;

    move-result-object p1

    invoke-static {p1, p2}, Lcom/miui/networkassistant/utils/TelephonyUtil;->setDomesticRoamingEnable(Landroid/content/Context;Z)Z

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lcom/miui/networkassistant/ui/fragment/InternationalRoamingSettingFragment$5;->this$0:Lcom/miui/networkassistant/ui/fragment/InternationalRoamingSettingFragment;

    invoke-static {p1}, Lcom/miui/networkassistant/ui/fragment/InternationalRoamingSettingFragment;->access$1500(Lcom/miui/networkassistant/ui/fragment/InternationalRoamingSettingFragment;)[Ljava/lang/String;

    move-result-object p2

    iget-object v0, p0, Lcom/miui/networkassistant/ui/fragment/InternationalRoamingSettingFragment$5;->this$0:Lcom/miui/networkassistant/ui/fragment/InternationalRoamingSettingFragment;

    invoke-static {v0}, Lcom/miui/networkassistant/ui/fragment/InternationalRoamingSettingFragment;->access$500(Lcom/miui/networkassistant/ui/fragment/InternationalRoamingSettingFragment;)I

    move-result v0

    aget-object p2, p2, v0

    invoke-static {p1, p2}, Lcom/miui/networkassistant/ui/fragment/InternationalRoamingSettingFragment;->access$1600(Lcom/miui/networkassistant/ui/fragment/InternationalRoamingSettingFragment;Ljava/lang/String;)V

    :goto_0
    return-void
.end method
