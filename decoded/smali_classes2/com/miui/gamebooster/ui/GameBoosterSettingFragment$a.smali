.class Lcom/miui/gamebooster/ui/GameBoosterSettingFragment$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/gamebooster/ui/GameBoosterSettingFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/miui/gamebooster/ui/GameBoosterSettingFragment;


# direct methods
.method constructor <init>(Lcom/miui/gamebooster/ui/GameBoosterSettingFragment;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/gamebooster/ui/GameBoosterSettingFragment$a;->a:Lcom/miui/gamebooster/ui/GameBoosterSettingFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 0

    iget-object p1, p0, Lcom/miui/gamebooster/ui/GameBoosterSettingFragment$a;->a:Lcom/miui/gamebooster/ui/GameBoosterSettingFragment;

    invoke-static {p2}, Lcom/miui/powerkeeper/feedbackcontrol/IFeedbackControl$Stub;->asInterface(Landroid/os/IBinder;)Lcom/miui/powerkeeper/feedbackcontrol/IFeedbackControl;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/miui/gamebooster/ui/GameBoosterSettingFragment;->b0(Lcom/miui/gamebooster/ui/GameBoosterSettingFragment;Lcom/miui/powerkeeper/feedbackcontrol/IFeedbackControl;)Lcom/miui/powerkeeper/feedbackcontrol/IFeedbackControl;

    iget-object p1, p0, Lcom/miui/gamebooster/ui/GameBoosterSettingFragment$a;->a:Lcom/miui/gamebooster/ui/GameBoosterSettingFragment;

    invoke-static {p1}, Lcom/miui/gamebooster/ui/GameBoosterSettingFragment;->a0(Lcom/miui/gamebooster/ui/GameBoosterSettingFragment;)Lcom/miui/powerkeeper/feedbackcontrol/IFeedbackControl;

    move-result-object p1

    if-eqz p1, :cond_2

    invoke-static {}, Lef/d0;->a()I

    move-result p1

    const/16 p2, 0xc

    if-ge p1, p2, :cond_1

    :try_start_0
    iget-object p1, p0, Lcom/miui/gamebooster/ui/GameBoosterSettingFragment$a;->a:Lcom/miui/gamebooster/ui/GameBoosterSettingFragment;

    invoke-static {p1}, Lcom/miui/gamebooster/ui/GameBoosterSettingFragment;->a0(Lcom/miui/gamebooster/ui/GameBoosterSettingFragment;)Lcom/miui/powerkeeper/feedbackcontrol/IFeedbackControl;

    move-result-object p1

    invoke-interface {p1}, Lcom/miui/powerkeeper/feedbackcontrol/IFeedbackControl;->K7()Z

    move-result p1

    iget-object p2, p0, Lcom/miui/gamebooster/ui/GameBoosterSettingFragment$a;->a:Lcom/miui/gamebooster/ui/GameBoosterSettingFragment;

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    invoke-static {p2, p1}, Lcom/miui/gamebooster/ui/GameBoosterSettingFragment;->e0(Lcom/miui/gamebooster/ui/GameBoosterSettingFragment;I)I

    goto :goto_1

    :cond_1
    iget-object p1, p0, Lcom/miui/gamebooster/ui/GameBoosterSettingFragment$a;->a:Lcom/miui/gamebooster/ui/GameBoosterSettingFragment;

    invoke-static {p1}, Lcom/miui/gamebooster/ui/GameBoosterSettingFragment;->a0(Lcom/miui/gamebooster/ui/GameBoosterSettingFragment;)Lcom/miui/powerkeeper/feedbackcontrol/IFeedbackControl;

    move-result-object p1

    invoke-interface {p1}, Lcom/miui/powerkeeper/feedbackcontrol/IFeedbackControl;->r3()I

    move-result p1

    iget-object p2, p0, Lcom/miui/gamebooster/ui/GameBoosterSettingFragment$a;->a:Lcom/miui/gamebooster/ui/GameBoosterSettingFragment;

    invoke-static {p2, p1}, Lcom/miui/gamebooster/ui/GameBoosterSettingFragment;->e0(Lcom/miui/gamebooster/ui/GameBoosterSettingFragment;I)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p1

    invoke-static {}, Lcom/miui/gamebooster/ui/GameBoosterSettingFragment;->t0()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :goto_1
    iget-object p1, p0, Lcom/miui/gamebooster/ui/GameBoosterSettingFragment$a;->a:Lcom/miui/gamebooster/ui/GameBoosterSettingFragment;

    invoke-static {p1}, Lcom/miui/gamebooster/ui/GameBoosterSettingFragment;->c0(Lcom/miui/gamebooster/ui/GameBoosterSettingFragment;)I

    move-result p1

    if-lez p1, :cond_2

    iget-object p1, p0, Lcom/miui/gamebooster/ui/GameBoosterSettingFragment$a;->a:Lcom/miui/gamebooster/ui/GameBoosterSettingFragment;

    invoke-static {p1}, Lcom/miui/gamebooster/ui/GameBoosterSettingFragment;->L0(Lcom/miui/gamebooster/ui/GameBoosterSettingFragment;)I

    move-result p1

    if-nez p1, :cond_2

    iget-object p1, p0, Lcom/miui/gamebooster/ui/GameBoosterSettingFragment$a;->a:Lcom/miui/gamebooster/ui/GameBoosterSettingFragment;

    invoke-static {p1}, Lcom/miui/gamebooster/ui/GameBoosterSettingFragment;->c0(Lcom/miui/gamebooster/ui/GameBoosterSettingFragment;)I

    move-result p2

    invoke-static {p1, p2}, Lcom/miui/gamebooster/ui/GameBoosterSettingFragment;->N0(Lcom/miui/gamebooster/ui/GameBoosterSettingFragment;I)I

    iget-object p1, p0, Lcom/miui/gamebooster/ui/GameBoosterSettingFragment$a;->a:Lcom/miui/gamebooster/ui/GameBoosterSettingFragment;

    invoke-static {p1}, Lcom/miui/gamebooster/ui/GameBoosterSettingFragment;->c1(Lcom/miui/gamebooster/ui/GameBoosterSettingFragment;)Landroidx/preference/PreferenceCategory;

    move-result-object p1

    iget-object p2, p0, Lcom/miui/gamebooster/ui/GameBoosterSettingFragment$a;->a:Lcom/miui/gamebooster/ui/GameBoosterSettingFragment;

    invoke-static {p2}, Lcom/miui/gamebooster/ui/GameBoosterSettingFragment;->X0(Lcom/miui/gamebooster/ui/GameBoosterSettingFragment;)Landroidx/preference/CheckBoxPreference;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroidx/preference/PreferenceGroup;->addPreference(Landroidx/preference/Preference;)Z

    iget-object p1, p0, Lcom/miui/gamebooster/ui/GameBoosterSettingFragment$a;->a:Lcom/miui/gamebooster/ui/GameBoosterSettingFragment;

    invoke-static {p1}, Lcom/miui/gamebooster/ui/GameBoosterSettingFragment;->d0(Lcom/miui/gamebooster/ui/GameBoosterSettingFragment;)Landroid/os/Handler;

    move-result-object p1

    new-instance p2, Lcom/miui/gamebooster/ui/GameBoosterSettingFragment$a$a;

    invoke-direct {p2, p0}, Lcom/miui/gamebooster/ui/GameBoosterSettingFragment$a$a;-><init>(Lcom/miui/gamebooster/ui/GameBoosterSettingFragment$a;)V

    invoke-virtual {p1, p2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_2
    return-void
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 1

    iget-object p1, p0, Lcom/miui/gamebooster/ui/GameBoosterSettingFragment$a;->a:Lcom/miui/gamebooster/ui/GameBoosterSettingFragment;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/miui/gamebooster/ui/GameBoosterSettingFragment;->b0(Lcom/miui/gamebooster/ui/GameBoosterSettingFragment;Lcom/miui/powerkeeper/feedbackcontrol/IFeedbackControl;)Lcom/miui/powerkeeper/feedbackcontrol/IFeedbackControl;

    return-void
.end method
