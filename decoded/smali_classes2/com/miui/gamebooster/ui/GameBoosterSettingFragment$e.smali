.class Lcom/miui/gamebooster/ui/GameBoosterSettingFragment$e;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/gamebooster/ui/GameBoosterSettingFragment;->j1()V
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

    iput-object p1, p0, Lcom/miui/gamebooster/ui/GameBoosterSettingFragment$e;->a:Lcom/miui/gamebooster/ui/GameBoosterSettingFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1

    const/4 p1, 0x1

    :try_start_0
    iget-object p2, p0, Lcom/miui/gamebooster/ui/GameBoosterSettingFragment$e;->a:Lcom/miui/gamebooster/ui/GameBoosterSettingFragment;

    invoke-virtual {p2}, Lcom/miui/gamebooster/ui/GameBoosterSettingFragment;->k1()Lcom/miui/powerkeeper/feedbackcontrol/IFeedbackControl;

    move-result-object v0

    invoke-static {p2, v0}, Lcom/miui/gamebooster/ui/GameBoosterSettingFragment;->f1(Lcom/miui/gamebooster/ui/GameBoosterSettingFragment;Lcom/miui/powerkeeper/feedbackcontrol/IFeedbackControl;)Lcom/miui/powerkeeper/feedbackcontrol/IFeedbackControl;

    iget-object p2, p0, Lcom/miui/gamebooster/ui/GameBoosterSettingFragment$e;->a:Lcom/miui/gamebooster/ui/GameBoosterSettingFragment;

    invoke-static {p2}, Lcom/miui/gamebooster/ui/GameBoosterSettingFragment;->e1(Lcom/miui/gamebooster/ui/GameBoosterSettingFragment;)Lcom/miui/powerkeeper/feedbackcontrol/IFeedbackControl;

    move-result-object p2

    if-eqz p2, :cond_0

    iget-object p2, p0, Lcom/miui/gamebooster/ui/GameBoosterSettingFragment$e;->a:Lcom/miui/gamebooster/ui/GameBoosterSettingFragment;

    invoke-static {p2}, Lcom/miui/gamebooster/ui/GameBoosterSettingFragment;->e1(Lcom/miui/gamebooster/ui/GameBoosterSettingFragment;)Lcom/miui/powerkeeper/feedbackcontrol/IFeedbackControl;

    move-result-object p2

    invoke-interface {p2, p1}, Lcom/miui/powerkeeper/feedbackcontrol/IFeedbackControl;->i0(Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p2

    invoke-static {}, Lcom/miui/gamebooster/ui/GameBoosterSettingFragment;->t0()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v0, p2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    :goto_0
    iget-object p2, p0, Lcom/miui/gamebooster/ui/GameBoosterSettingFragment$e;->a:Lcom/miui/gamebooster/ui/GameBoosterSettingFragment;

    invoke-static {p2}, Lcom/miui/gamebooster/ui/GameBoosterSettingFragment;->i1(Lcom/miui/gamebooster/ui/GameBoosterSettingFragment;)Lm6/a;

    invoke-static {p1}, Lm6/a;->q0(Z)V

    iget-object p2, p0, Lcom/miui/gamebooster/ui/GameBoosterSettingFragment$e;->a:Lcom/miui/gamebooster/ui/GameBoosterSettingFragment;

    invoke-static {p2}, Lcom/miui/gamebooster/ui/GameBoosterSettingFragment;->X0(Lcom/miui/gamebooster/ui/GameBoosterSettingFragment;)Landroidx/preference/CheckBoxPreference;

    move-result-object p2

    invoke-virtual {p2, p1}, Landroidx/preference/TwoStatePreference;->setChecked(Z)V

    return-void
.end method
