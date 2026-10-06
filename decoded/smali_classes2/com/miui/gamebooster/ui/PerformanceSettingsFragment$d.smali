.class Lcom/miui/gamebooster/ui/PerformanceSettingsFragment$d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/gamebooster/ui/PerformanceSettingsFragment;->r0()V
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

    iput-object p1, p0, Lcom/miui/gamebooster/ui/PerformanceSettingsFragment$d;->a:Lcom/miui/gamebooster/ui/PerformanceSettingsFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1

    const/4 p1, 0x1

    :try_start_0
    iget-object p2, p0, Lcom/miui/gamebooster/ui/PerformanceSettingsFragment$d;->a:Lcom/miui/gamebooster/ui/PerformanceSettingsFragment;

    invoke-static {p2}, Lcom/miui/gamebooster/ui/PerformanceSettingsFragment;->g0(Lcom/miui/gamebooster/ui/PerformanceSettingsFragment;)Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Lcom/miui/gamebooster/ui/SettingsActivity;

    invoke-virtual {v0}, Lcom/miui/gamebooster/ui/SettingsActivity;->n0()Lcom/miui/powerkeeper/feedbackcontrol/IFeedbackControl;

    move-result-object v0

    invoke-static {p2, v0}, Lcom/miui/gamebooster/ui/PerformanceSettingsFragment;->l0(Lcom/miui/gamebooster/ui/PerformanceSettingsFragment;Lcom/miui/powerkeeper/feedbackcontrol/IFeedbackControl;)Lcom/miui/powerkeeper/feedbackcontrol/IFeedbackControl;

    iget-object p2, p0, Lcom/miui/gamebooster/ui/PerformanceSettingsFragment$d;->a:Lcom/miui/gamebooster/ui/PerformanceSettingsFragment;

    invoke-static {p2}, Lcom/miui/gamebooster/ui/PerformanceSettingsFragment;->k0(Lcom/miui/gamebooster/ui/PerformanceSettingsFragment;)Lcom/miui/powerkeeper/feedbackcontrol/IFeedbackControl;

    move-result-object p2

    if-eqz p2, :cond_0

    iget-object p2, p0, Lcom/miui/gamebooster/ui/PerformanceSettingsFragment$d;->a:Lcom/miui/gamebooster/ui/PerformanceSettingsFragment;

    invoke-static {p2}, Lcom/miui/gamebooster/ui/PerformanceSettingsFragment;->k0(Lcom/miui/gamebooster/ui/PerformanceSettingsFragment;)Lcom/miui/powerkeeper/feedbackcontrol/IFeedbackControl;

    move-result-object p2

    invoke-interface {p2, p1}, Lcom/miui/powerkeeper/feedbackcontrol/IFeedbackControl;->i0(Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p2

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p2

    const-string v0, "PerformanceSettingsFrag"

    invoke-static {v0, p2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    :goto_0
    invoke-static {p1}, Lm6/a;->q0(Z)V

    return-void
.end method
