.class Lcom/miui/gamebooster/ui/PerformanceSettingsFragment$a;
.super Landroid/content/BroadcastReceiver;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/gamebooster/ui/PerformanceSettingsFragment;->t0()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/miui/gamebooster/ui/PerformanceSettingsFragment;


# direct methods
.method constructor <init>(Lcom/miui/gamebooster/ui/PerformanceSettingsFragment;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/gamebooster/ui/PerformanceSettingsFragment$a;->a:Lcom/miui/gamebooster/ui/PerformanceSettingsFragment;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 3

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    const-string v0, "gb_thermal_supported_action"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_3

    iget-object p1, p0, Lcom/miui/gamebooster/ui/PerformanceSettingsFragment$a;->a:Lcom/miui/gamebooster/ui/PerformanceSettingsFragment;

    invoke-static {p1}, Lcom/miui/gamebooster/ui/PerformanceSettingsFragment;->b0(Lcom/miui/gamebooster/ui/PerformanceSettingsFragment;)Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lh7/g;->p(Landroid/content/Context;)Z

    move-result p1

    const-string v0, "PerformanceSettingsFrag"

    if-eqz p1, :cond_0

    const-string p1, "onReceive: System performance on , so return."

    invoke-static {v0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    const-string p1, "gb_thermal_supported"

    const/4 v1, 0x0

    invoke-virtual {p2, p1, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p1

    if-lez p1, :cond_3

    iget-object p2, p0, Lcom/miui/gamebooster/ui/PerformanceSettingsFragment$a;->a:Lcom/miui/gamebooster/ui/PerformanceSettingsFragment;

    invoke-static {p2}, Lcom/miui/gamebooster/ui/PerformanceSettingsFragment;->h0(Lcom/miui/gamebooster/ui/PerformanceSettingsFragment;)I

    move-result p2

    if-nez p2, :cond_3

    iget-object p2, p0, Lcom/miui/gamebooster/ui/PerformanceSettingsFragment$a;->a:Lcom/miui/gamebooster/ui/PerformanceSettingsFragment;

    invoke-static {p2, p1}, Lcom/miui/gamebooster/ui/PerformanceSettingsFragment;->i0(Lcom/miui/gamebooster/ui/PerformanceSettingsFragment;I)I

    iget-object p2, p0, Lcom/miui/gamebooster/ui/PerformanceSettingsFragment$a;->a:Lcom/miui/gamebooster/ui/PerformanceSettingsFragment;

    invoke-static {p2}, Lcom/miui/gamebooster/ui/PerformanceSettingsFragment;->j0(Lcom/miui/gamebooster/ui/PerformanceSettingsFragment;)Lcom/miui/gamebooster/widget/CheckBoxSettingItemView;

    move-result-object p2

    invoke-virtual {p2, v1}, Landroid/view/View;->setVisibility(I)V

    :try_start_0
    iget-object p2, p0, Lcom/miui/gamebooster/ui/PerformanceSettingsFragment$a;->a:Lcom/miui/gamebooster/ui/PerformanceSettingsFragment;

    invoke-virtual {p2}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p2

    check-cast p2, Lcom/miui/gamebooster/ui/SettingsActivity;

    if-eqz p2, :cond_3

    invoke-virtual {p2}, Lmiuix/appcompat/app/AppCompatActivity;->isFinishing()Z

    move-result v2

    if-nez v2, :cond_3

    invoke-virtual {p2}, Landroid/app/Activity;->isDestroyed()Z

    move-result v2

    if-nez v2, :cond_3

    iget-object v2, p0, Lcom/miui/gamebooster/ui/PerformanceSettingsFragment$a;->a:Lcom/miui/gamebooster/ui/PerformanceSettingsFragment;

    invoke-virtual {p2}, Lcom/miui/gamebooster/ui/SettingsActivity;->n0()Lcom/miui/powerkeeper/feedbackcontrol/IFeedbackControl;

    move-result-object p2

    invoke-static {v2, p2}, Lcom/miui/gamebooster/ui/PerformanceSettingsFragment;->l0(Lcom/miui/gamebooster/ui/PerformanceSettingsFragment;Lcom/miui/powerkeeper/feedbackcontrol/IFeedbackControl;)Lcom/miui/powerkeeper/feedbackcontrol/IFeedbackControl;

    iget-object p2, p0, Lcom/miui/gamebooster/ui/PerformanceSettingsFragment$a;->a:Lcom/miui/gamebooster/ui/PerformanceSettingsFragment;

    invoke-static {p2}, Lcom/miui/gamebooster/ui/PerformanceSettingsFragment;->k0(Lcom/miui/gamebooster/ui/PerformanceSettingsFragment;)Lcom/miui/powerkeeper/feedbackcontrol/IFeedbackControl;

    move-result-object p2

    if-eqz p2, :cond_3

    const/4 p2, 0x1

    if-eq p1, p2, :cond_2

    const/4 p2, 0x2

    if-eq p1, p2, :cond_1

    goto :goto_1

    :cond_1
    iget-object p1, p0, Lcom/miui/gamebooster/ui/PerformanceSettingsFragment$a;->a:Lcom/miui/gamebooster/ui/PerformanceSettingsFragment;

    invoke-static {p1}, Lcom/miui/gamebooster/ui/PerformanceSettingsFragment;->k0(Lcom/miui/gamebooster/ui/PerformanceSettingsFragment;)Lcom/miui/powerkeeper/feedbackcontrol/IFeedbackControl;

    move-result-object p1

    invoke-interface {p1}, Lcom/miui/powerkeeper/feedbackcontrol/IFeedbackControl;->f1()Z

    move-result p1

    iget-object p2, p0, Lcom/miui/gamebooster/ui/PerformanceSettingsFragment$a;->a:Lcom/miui/gamebooster/ui/PerformanceSettingsFragment;

    invoke-static {p2}, Lcom/miui/gamebooster/ui/PerformanceSettingsFragment;->j0(Lcom/miui/gamebooster/ui/PerformanceSettingsFragment;)Lcom/miui/gamebooster/widget/CheckBoxSettingItemView;

    move-result-object p2

    :goto_0
    invoke-virtual {p2, p1, v1, v1}, Lcom/miui/gamebooster/widget/CheckBoxSettingItemView;->e(ZZZ)V

    goto :goto_1

    :cond_2
    invoke-static {v1}, Lm6/a;->E(Z)Z

    move-result p1

    iget-object p2, p0, Lcom/miui/gamebooster/ui/PerformanceSettingsFragment$a;->a:Lcom/miui/gamebooster/ui/PerformanceSettingsFragment;

    invoke-static {p2}, Lcom/miui/gamebooster/ui/PerformanceSettingsFragment;->j0(Lcom/miui/gamebooster/ui/PerformanceSettingsFragment;)Lcom/miui/gamebooster/widget/CheckBoxSettingItemView;

    move-result-object p2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    :goto_1
    return-void
.end method
