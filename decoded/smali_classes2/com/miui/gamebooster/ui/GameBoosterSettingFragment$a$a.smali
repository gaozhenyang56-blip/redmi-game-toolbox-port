.class Lcom/miui/gamebooster/ui/GameBoosterSettingFragment$a$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/gamebooster/ui/GameBoosterSettingFragment$a;->onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/miui/gamebooster/ui/GameBoosterSettingFragment$a;


# direct methods
.method constructor <init>(Lcom/miui/gamebooster/ui/GameBoosterSettingFragment$a;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/gamebooster/ui/GameBoosterSettingFragment$a$a;->a:Lcom/miui/gamebooster/ui/GameBoosterSettingFragment$a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    :try_start_0
    iget-object v0, p0, Lcom/miui/gamebooster/ui/GameBoosterSettingFragment$a$a;->a:Lcom/miui/gamebooster/ui/GameBoosterSettingFragment$a;

    iget-object v0, v0, Lcom/miui/gamebooster/ui/GameBoosterSettingFragment$a;->a:Lcom/miui/gamebooster/ui/GameBoosterSettingFragment;

    invoke-static {v0}, Lcom/miui/gamebooster/ui/GameBoosterSettingFragment;->d1(Lcom/miui/gamebooster/ui/GameBoosterSettingFragment;)Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lc7/c;->a(Landroid/app/Activity;)Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/miui/gamebooster/ui/GameBoosterSettingFragment$a$a;->a:Lcom/miui/gamebooster/ui/GameBoosterSettingFragment$a;

    iget-object v0, v0, Lcom/miui/gamebooster/ui/GameBoosterSettingFragment$a;->a:Lcom/miui/gamebooster/ui/GameBoosterSettingFragment;

    invoke-virtual {v0}, Lcom/miui/gamebooster/ui/GameBoosterSettingFragment;->k1()Lcom/miui/powerkeeper/feedbackcontrol/IFeedbackControl;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/miui/gamebooster/ui/GameBoosterSettingFragment;->f1(Lcom/miui/gamebooster/ui/GameBoosterSettingFragment;Lcom/miui/powerkeeper/feedbackcontrol/IFeedbackControl;)Lcom/miui/powerkeeper/feedbackcontrol/IFeedbackControl;

    iget-object v0, p0, Lcom/miui/gamebooster/ui/GameBoosterSettingFragment$a$a;->a:Lcom/miui/gamebooster/ui/GameBoosterSettingFragment$a;

    iget-object v0, v0, Lcom/miui/gamebooster/ui/GameBoosterSettingFragment$a;->a:Lcom/miui/gamebooster/ui/GameBoosterSettingFragment;

    invoke-static {v0}, Lcom/miui/gamebooster/ui/GameBoosterSettingFragment;->e1(Lcom/miui/gamebooster/ui/GameBoosterSettingFragment;)Lcom/miui/powerkeeper/feedbackcontrol/IFeedbackControl;

    move-result-object v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/miui/gamebooster/ui/GameBoosterSettingFragment$a$a;->a:Lcom/miui/gamebooster/ui/GameBoosterSettingFragment$a;

    iget-object v0, v0, Lcom/miui/gamebooster/ui/GameBoosterSettingFragment$a;->a:Lcom/miui/gamebooster/ui/GameBoosterSettingFragment;

    invoke-static {v0}, Lcom/miui/gamebooster/ui/GameBoosterSettingFragment;->c0(Lcom/miui/gamebooster/ui/GameBoosterSettingFragment;)I

    move-result v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_1

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    goto :goto_1

    :cond_0
    iget-object v0, p0, Lcom/miui/gamebooster/ui/GameBoosterSettingFragment$a$a;->a:Lcom/miui/gamebooster/ui/GameBoosterSettingFragment$a;

    iget-object v0, v0, Lcom/miui/gamebooster/ui/GameBoosterSettingFragment$a;->a:Lcom/miui/gamebooster/ui/GameBoosterSettingFragment;

    invoke-static {v0}, Lcom/miui/gamebooster/ui/GameBoosterSettingFragment;->e1(Lcom/miui/gamebooster/ui/GameBoosterSettingFragment;)Lcom/miui/powerkeeper/feedbackcontrol/IFeedbackControl;

    move-result-object v1

    invoke-interface {v1}, Lcom/miui/powerkeeper/feedbackcontrol/IFeedbackControl;->f1()Z

    move-result v1

    invoke-static {v0, v1}, Lcom/miui/gamebooster/ui/GameBoosterSettingFragment;->h1(Lcom/miui/gamebooster/ui/GameBoosterSettingFragment;Z)Z

    iget-object v0, p0, Lcom/miui/gamebooster/ui/GameBoosterSettingFragment$a$a;->a:Lcom/miui/gamebooster/ui/GameBoosterSettingFragment$a;

    iget-object v0, v0, Lcom/miui/gamebooster/ui/GameBoosterSettingFragment$a;->a:Lcom/miui/gamebooster/ui/GameBoosterSettingFragment;

    invoke-static {v0}, Lcom/miui/gamebooster/ui/GameBoosterSettingFragment;->X0(Lcom/miui/gamebooster/ui/GameBoosterSettingFragment;)Landroidx/preference/CheckBoxPreference;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/gamebooster/ui/GameBoosterSettingFragment$a$a;->a:Lcom/miui/gamebooster/ui/GameBoosterSettingFragment$a;

    iget-object v1, v1, Lcom/miui/gamebooster/ui/GameBoosterSettingFragment$a;->a:Lcom/miui/gamebooster/ui/GameBoosterSettingFragment;

    invoke-static {v1}, Lcom/miui/gamebooster/ui/GameBoosterSettingFragment;->g1(Lcom/miui/gamebooster/ui/GameBoosterSettingFragment;)Z

    move-result v1

    :goto_0
    invoke-virtual {v0, v1}, Landroidx/preference/TwoStatePreference;->setChecked(Z)V

    goto :goto_1

    :cond_1
    iget-object v0, p0, Lcom/miui/gamebooster/ui/GameBoosterSettingFragment$a$a;->a:Lcom/miui/gamebooster/ui/GameBoosterSettingFragment$a;

    iget-object v0, v0, Lcom/miui/gamebooster/ui/GameBoosterSettingFragment$a;->a:Lcom/miui/gamebooster/ui/GameBoosterSettingFragment;

    invoke-static {v0}, Lcom/miui/gamebooster/ui/GameBoosterSettingFragment;->i1(Lcom/miui/gamebooster/ui/GameBoosterSettingFragment;)Lm6/a;

    const/4 v1, 0x0

    invoke-static {v1}, Lm6/a;->E(Z)Z

    move-result v1

    invoke-static {v0, v1}, Lcom/miui/gamebooster/ui/GameBoosterSettingFragment;->h1(Lcom/miui/gamebooster/ui/GameBoosterSettingFragment;Z)Z

    iget-object v0, p0, Lcom/miui/gamebooster/ui/GameBoosterSettingFragment$a$a;->a:Lcom/miui/gamebooster/ui/GameBoosterSettingFragment$a;

    iget-object v0, v0, Lcom/miui/gamebooster/ui/GameBoosterSettingFragment$a;->a:Lcom/miui/gamebooster/ui/GameBoosterSettingFragment;

    invoke-static {v0}, Lcom/miui/gamebooster/ui/GameBoosterSettingFragment;->X0(Lcom/miui/gamebooster/ui/GameBoosterSettingFragment;)Landroidx/preference/CheckBoxPreference;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/gamebooster/ui/GameBoosterSettingFragment$a$a;->a:Lcom/miui/gamebooster/ui/GameBoosterSettingFragment$a;

    iget-object v1, v1, Lcom/miui/gamebooster/ui/GameBoosterSettingFragment$a;->a:Lcom/miui/gamebooster/ui/GameBoosterSettingFragment;

    invoke-static {v1}, Lcom/miui/gamebooster/ui/GameBoosterSettingFragment;->g1(Lcom/miui/gamebooster/ui/GameBoosterSettingFragment;)Z

    move-result v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-static {}, Lcom/miui/gamebooster/ui/GameBoosterSettingFragment;->t0()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    :goto_1
    return-void
.end method
