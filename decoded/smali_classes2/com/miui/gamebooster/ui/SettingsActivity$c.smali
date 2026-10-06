.class Lcom/miui/gamebooster/ui/SettingsActivity$c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/gamebooster/ui/SettingsActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/miui/gamebooster/ui/SettingsActivity;


# direct methods
.method constructor <init>(Lcom/miui/gamebooster/ui/SettingsActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/gamebooster/ui/SettingsActivity$c;->a:Lcom/miui/gamebooster/ui/SettingsActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 1

    iget-object p1, p0, Lcom/miui/gamebooster/ui/SettingsActivity$c;->a:Lcom/miui/gamebooster/ui/SettingsActivity;

    invoke-static {p2}, Lcom/miui/powerkeeper/feedbackcontrol/IFeedbackControl$Stub;->asInterface(Landroid/os/IBinder;)Lcom/miui/powerkeeper/feedbackcontrol/IFeedbackControl;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/miui/gamebooster/ui/SettingsActivity;->i0(Lcom/miui/gamebooster/ui/SettingsActivity;Lcom/miui/powerkeeper/feedbackcontrol/IFeedbackControl;)Lcom/miui/powerkeeper/feedbackcontrol/IFeedbackControl;

    iget-object p1, p0, Lcom/miui/gamebooster/ui/SettingsActivity$c;->a:Lcom/miui/gamebooster/ui/SettingsActivity;

    invoke-static {p1}, Lcom/miui/gamebooster/ui/SettingsActivity;->h0(Lcom/miui/gamebooster/ui/SettingsActivity;)Lcom/miui/powerkeeper/feedbackcontrol/IFeedbackControl;

    move-result-object p1

    if-eqz p1, :cond_2

    invoke-static {}, Lef/d0;->a()I

    move-result p1

    const/16 p2, 0xc

    const-string v0, "SettingsActivity"

    if-ge p1, p2, :cond_1

    :try_start_0
    iget-object p1, p0, Lcom/miui/gamebooster/ui/SettingsActivity$c;->a:Lcom/miui/gamebooster/ui/SettingsActivity;

    invoke-static {p1}, Lcom/miui/gamebooster/ui/SettingsActivity;->h0(Lcom/miui/gamebooster/ui/SettingsActivity;)Lcom/miui/powerkeeper/feedbackcontrol/IFeedbackControl;

    move-result-object p1

    invoke-interface {p1}, Lcom/miui/powerkeeper/feedbackcontrol/IFeedbackControl;->K7()Z

    move-result p1

    iget-object p2, p0, Lcom/miui/gamebooster/ui/SettingsActivity$c;->a:Lcom/miui/gamebooster/ui/SettingsActivity;

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    invoke-static {p2, p1}, Lcom/miui/gamebooster/ui/SettingsActivity;->k0(Lcom/miui/gamebooster/ui/SettingsActivity;I)I

    goto :goto_1

    :cond_1
    iget-object p1, p0, Lcom/miui/gamebooster/ui/SettingsActivity$c;->a:Lcom/miui/gamebooster/ui/SettingsActivity;

    invoke-static {p1}, Lcom/miui/gamebooster/ui/SettingsActivity;->h0(Lcom/miui/gamebooster/ui/SettingsActivity;)Lcom/miui/powerkeeper/feedbackcontrol/IFeedbackControl;

    move-result-object p2

    invoke-interface {p2}, Lcom/miui/powerkeeper/feedbackcontrol/IFeedbackControl;->r3()I

    move-result p2

    invoke-static {p1, p2}, Lcom/miui/gamebooster/ui/SettingsActivity;->k0(Lcom/miui/gamebooster/ui/SettingsActivity;I)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :goto_1
    new-instance p1, Landroid/content/Intent;

    invoke-direct {p1}, Landroid/content/Intent;-><init>()V

    const-string p2, "gb_thermal_supported_action"

    invoke-virtual {p1, p2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    iget-object p2, p0, Lcom/miui/gamebooster/ui/SettingsActivity$c;->a:Lcom/miui/gamebooster/ui/SettingsActivity;

    invoke-static {p2}, Lcom/miui/gamebooster/ui/SettingsActivity;->j0(Lcom/miui/gamebooster/ui/SettingsActivity;)I

    move-result p2

    const-string v0, "gb_thermal_supported"

    invoke-virtual {p1, v0, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    iget-object p2, p0, Lcom/miui/gamebooster/ui/SettingsActivity$c;->a:Lcom/miui/gamebooster/ui/SettingsActivity;

    invoke-static {p2}, Lcom/miui/gamebooster/ui/SettingsActivity;->l0(Lcom/miui/gamebooster/ui/SettingsActivity;)Lr0/a;

    move-result-object p2

    invoke-virtual {p2, p1}, Lr0/a;->d(Landroid/content/Intent;)Z

    :cond_2
    return-void
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 1

    iget-object p1, p0, Lcom/miui/gamebooster/ui/SettingsActivity$c;->a:Lcom/miui/gamebooster/ui/SettingsActivity;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/miui/gamebooster/ui/SettingsActivity;->i0(Lcom/miui/gamebooster/ui/SettingsActivity;Lcom/miui/powerkeeper/feedbackcontrol/IFeedbackControl;)Lcom/miui/powerkeeper/feedbackcontrol/IFeedbackControl;

    return-void
.end method
