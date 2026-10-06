.class Lcom/miui/networkassistant/ui/fragment/SettingFragment$MyTrafficInputDialogListener;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/miui/networkassistant/ui/dialog/TrafficInputDialog$TrafficInputDialogListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/networkassistant/ui/fragment/SettingFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "MyTrafficInputDialogListener"
.end annotation


# instance fields
.field private activityRef:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Lcom/miui/networkassistant/ui/fragment/SettingFragment;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lcom/miui/networkassistant/ui/fragment/SettingFragment;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/miui/networkassistant/ui/fragment/SettingFragment$MyTrafficInputDialogListener;->activityRef:Ljava/lang/ref/WeakReference;

    return-void
.end method


# virtual methods
.method public onTrafficUpdated(JI)V
    .locals 1

    iget-object p3, p0, Lcom/miui/networkassistant/ui/fragment/SettingFragment$MyTrafficInputDialogListener;->activityRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {p3}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/miui/networkassistant/ui/fragment/SettingFragment;

    if-nez p3, :cond_0

    return-void

    :cond_0
    invoke-static {p3}, Lcom/miui/networkassistant/ui/fragment/SettingFragment;->access$1900(Lcom/miui/networkassistant/ui/fragment/SettingFragment;)Z

    move-result v0

    if-eqz v0, :cond_1

    :try_start_0
    invoke-static {p3}, Lcom/miui/networkassistant/ui/fragment/SettingFragment;->access$2100(Lcom/miui/networkassistant/ui/fragment/SettingFragment;)Lcom/miui/networkassistant/service/ITrafficManageBinder;

    move-result-object v0

    invoke-static {p3}, Lcom/miui/networkassistant/ui/fragment/SettingFragment;->access$2000(Lcom/miui/networkassistant/ui/fragment/SettingFragment;)I

    move-result p3

    invoke-interface {v0, p1, p2, p3}, Lcom/miui/networkassistant/service/ITrafficManageBinder;->manualCorrectNormalDataUsage(JI)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_1
    :goto_0
    return-void
.end method
