.class Lcom/miui/networkassistant/ui/fragment/InternationalRoamingSettingFragment$4;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/networkassistant/ui/fragment/InternationalRoamingSettingFragment;
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

    iput-object p1, p0, Lcom/miui/networkassistant/ui/fragment/InternationalRoamingSettingFragment$4;->this$0:Lcom/miui/networkassistant/ui/fragment/InternationalRoamingSettingFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 1

    iget-object p1, p0, Lcom/miui/networkassistant/ui/fragment/InternationalRoamingSettingFragment$4;->this$0:Lcom/miui/networkassistant/ui/fragment/InternationalRoamingSettingFragment;

    const/4 v0, 0x1

    iput-boolean v0, p1, Lcom/miui/networkassistant/ui/fragment/InternationalRoamingSettingFragment;->mServiceConnected:Z

    invoke-static {p2}, Lcom/miui/networkassistant/service/ITrafficManageBinder$Stub;->asInterface(Landroid/os/IBinder;)Lcom/miui/networkassistant/service/ITrafficManageBinder;

    move-result-object p2

    iput-object p2, p1, Lcom/miui/networkassistant/ui/fragment/InternationalRoamingSettingFragment;->mTrafficManageBinder:Lcom/miui/networkassistant/service/ITrafficManageBinder;

    iget-object p1, p0, Lcom/miui/networkassistant/ui/fragment/InternationalRoamingSettingFragment$4;->this$0:Lcom/miui/networkassistant/ui/fragment/InternationalRoamingSettingFragment;

    new-instance p2, Lcom/miui/networkassistant/ui/fragment/InternationalRoamingSettingFragment$4$1;

    iget-object v0, p0, Lcom/miui/networkassistant/ui/fragment/InternationalRoamingSettingFragment$4;->this$0:Lcom/miui/networkassistant/ui/fragment/InternationalRoamingSettingFragment;

    invoke-direct {p2, p0, v0}, Lcom/miui/networkassistant/ui/fragment/InternationalRoamingSettingFragment$4$1;-><init>(Lcom/miui/networkassistant/ui/fragment/InternationalRoamingSettingFragment$4;Landroidx/fragment/app/Fragment;)V

    invoke-static {p1, p2}, Lcom/miui/networkassistant/ui/fragment/InternationalRoamingSettingFragment;->access$1100(Lcom/miui/networkassistant/ui/fragment/InternationalRoamingSettingFragment;Lcom/miui/common/base/asyn/b;)V

    return-void
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 1

    iget-object p1, p0, Lcom/miui/networkassistant/ui/fragment/InternationalRoamingSettingFragment$4;->this$0:Lcom/miui/networkassistant/ui/fragment/InternationalRoamingSettingFragment;

    const/4 v0, 0x0

    iput-object v0, p1, Lcom/miui/networkassistant/ui/fragment/InternationalRoamingSettingFragment;->mTrafficManageBinder:Lcom/miui/networkassistant/service/ITrafficManageBinder;

    const/4 v0, 0x0

    iput-boolean v0, p1, Lcom/miui/networkassistant/ui/fragment/InternationalRoamingSettingFragment;->mServiceConnected:Z

    return-void
.end method
