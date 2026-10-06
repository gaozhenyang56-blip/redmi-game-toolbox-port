.class Lcom/miui/warningcenter/disasterwarning/WarningCenterDisasterActivity$WarningCenterDisasterFragment$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/preference/Preference$c;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/warningcenter/disasterwarning/WarningCenterDisasterActivity$WarningCenterDisasterFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/warningcenter/disasterwarning/WarningCenterDisasterActivity$WarningCenterDisasterFragment;


# direct methods
.method constructor <init>(Lcom/miui/warningcenter/disasterwarning/WarningCenterDisasterActivity$WarningCenterDisasterFragment;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/warningcenter/disasterwarning/WarningCenterDisasterActivity$WarningCenterDisasterFragment$2;->this$0:Lcom/miui/warningcenter/disasterwarning/WarningCenterDisasterActivity$WarningCenterDisasterFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPreferenceChange(Landroidx/preference/Preference;Ljava/lang/Object;)Z
    .locals 3

    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p2

    iget-object v0, p0, Lcom/miui/warningcenter/disasterwarning/WarningCenterDisasterActivity$WarningCenterDisasterFragment$2;->this$0:Lcom/miui/warningcenter/disasterwarning/WarningCenterDisasterActivity$WarningCenterDisasterFragment;

    invoke-static {v0}, Lcom/miui/warningcenter/disasterwarning/WarningCenterDisasterActivity$WarningCenterDisasterFragment;->access$700(Lcom/miui/warningcenter/disasterwarning/WarningCenterDisasterActivity$WarningCenterDisasterFragment;)Landroidx/preference/CheckBoxPreference;

    move-result-object v0

    const-string v1, "action_subscribe_current_location"

    if-ne p1, v0, :cond_0

    iget-object p1, p0, Lcom/miui/warningcenter/disasterwarning/WarningCenterDisasterActivity$WarningCenterDisasterFragment$2;->this$0:Lcom/miui/warningcenter/disasterwarning/WarningCenterDisasterActivity$WarningCenterDisasterFragment;

    invoke-static {p1}, Lcom/miui/warningcenter/disasterwarning/WarningCenterDisasterActivity$WarningCenterDisasterFragment;->access$200(Lcom/miui/warningcenter/disasterwarning/WarningCenterDisasterActivity$WarningCenterDisasterFragment;)Lmiuix/preference/TextPreference;

    move-result-object p1

    invoke-virtual {p1, p2}, Landroidx/preference/Preference;->setEnabled(Z)V

    invoke-static {p2}, Lcom/miui/warningcenter/disasterwarning/Utils;->setSystemPushToggle(Z)V

    new-instance p1, Landroid/content/Intent;

    iget-object v0, p0, Lcom/miui/warningcenter/disasterwarning/WarningCenterDisasterActivity$WarningCenterDisasterFragment$2;->this$0:Lcom/miui/warningcenter/disasterwarning/WarningCenterDisasterActivity$WarningCenterDisasterFragment;

    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    const-class v2, Lcom/miui/warningcenter/disasterwarning/service/WarningCenterDisasterService;

    invoke-direct {p1, v0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    if-eqz p2, :cond_1

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/miui/warningcenter/disasterwarning/WarningCenterDisasterActivity$WarningCenterDisasterFragment$2;->this$0:Lcom/miui/warningcenter/disasterwarning/WarningCenterDisasterActivity$WarningCenterDisasterFragment;

    invoke-static {v0}, Lcom/miui/warningcenter/disasterwarning/WarningCenterDisasterActivity$WarningCenterDisasterFragment;->access$800(Lcom/miui/warningcenter/disasterwarning/WarningCenterDisasterActivity$WarningCenterDisasterFragment;)Landroidx/preference/CheckBoxPreference;

    move-result-object v0

    if-ne p1, v0, :cond_1

    iget-object p1, p0, Lcom/miui/warningcenter/disasterwarning/WarningCenterDisasterActivity$WarningCenterDisasterFragment$2;->this$0:Lcom/miui/warningcenter/disasterwarning/WarningCenterDisasterActivity$WarningCenterDisasterFragment;

    invoke-static {p1}, Lcom/miui/warningcenter/disasterwarning/WarningCenterDisasterActivity$WarningCenterDisasterFragment;->access$400(Lcom/miui/warningcenter/disasterwarning/WarningCenterDisasterActivity$WarningCenterDisasterFragment;)Lmiuix/preference/TextPreference;

    move-result-object p1

    invoke-virtual {p1, p2}, Landroidx/preference/Preference;->setEnabled(Z)V

    invoke-static {p2}, Lcom/miui/warningcenter/disasterwarning/Utils;->setStrongPushToggle(Z)V

    new-instance p1, Landroid/content/Intent;

    iget-object v0, p0, Lcom/miui/warningcenter/disasterwarning/WarningCenterDisasterActivity$WarningCenterDisasterFragment$2;->this$0:Lcom/miui/warningcenter/disasterwarning/WarningCenterDisasterActivity$WarningCenterDisasterFragment;

    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    const-class v2, Lcom/miui/warningcenter/disasterwarning/service/WarningCenterDisasterService;

    invoke-direct {p1, v0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    if-eqz p2, :cond_1

    :goto_0
    invoke-virtual {p1, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    iget-object p2, p0, Lcom/miui/warningcenter/disasterwarning/WarningCenterDisasterActivity$WarningCenterDisasterFragment$2;->this$0:Lcom/miui/warningcenter/disasterwarning/WarningCenterDisasterActivity$WarningCenterDisasterFragment;

    invoke-virtual {p2}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p2

    invoke-virtual {p2, p1}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    :cond_1
    const/4 p1, 0x1

    return p1
.end method
