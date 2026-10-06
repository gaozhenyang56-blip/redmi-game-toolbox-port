.class Lcom/miui/gamebooster/ui/GameBoosterSettingFragment$f;
.super Landroid/os/AsyncTask;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/gamebooster/ui/GameBoosterSettingFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "f"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation


# instance fields
.field private final a:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Lcom/miui/gamebooster/ui/GameBoosterSettingFragment;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/miui/gamebooster/ui/GameBoosterSettingFragment;)V
    .locals 1

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/miui/gamebooster/ui/GameBoosterSettingFragment$f;->a:Ljava/lang/ref/WeakReference;

    return-void
.end method


# virtual methods
.method protected varargs a([Ljava/lang/Void;)Ljava/lang/Boolean;
    .locals 2

    iget-object p1, p0, Lcom/miui/gamebooster/ui/GameBoosterSettingFragment$f;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {p1}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/miui/gamebooster/ui/GameBoosterSettingFragment;

    invoke-static {p1}, Lcom/miui/gamebooster/ui/GameBoosterSettingFragment;->d1(Lcom/miui/gamebooster/ui/GameBoosterSettingFragment;)Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lc7/c;->a(Landroid/app/Activity;)Z

    move-result v0

    if-nez v0, :cond_3

    invoke-virtual {p0}, Landroid/os/AsyncTask;->isCancelled()Z

    move-result v0

    if-eqz v0, :cond_0

    goto/16 :goto_1

    :cond_0
    invoke-static {p1}, Lcom/miui/gamebooster/ui/GameBoosterSettingFragment;->i1(Lcom/miui/gamebooster/ui/GameBoosterSettingFragment;)Lm6/a;

    move-result-object v0

    invoke-virtual {v0}, Lm6/a;->x()Z

    move-result v0

    invoke-static {p1, v0}, Lcom/miui/gamebooster/ui/GameBoosterSettingFragment;->m0(Lcom/miui/gamebooster/ui/GameBoosterSettingFragment;Z)Z

    invoke-static {p1}, Lcom/miui/gamebooster/ui/GameBoosterSettingFragment;->i1(Lcom/miui/gamebooster/ui/GameBoosterSettingFragment;)Lm6/a;

    const/4 v0, 0x1

    invoke-static {v0}, Lm6/a;->K(Z)Z

    move-result v1

    invoke-static {p1, v1}, Lcom/miui/gamebooster/ui/GameBoosterSettingFragment;->o0(Lcom/miui/gamebooster/ui/GameBoosterSettingFragment;Z)Z

    invoke-static {}, Lm6/a;->w()Z

    move-result v1

    invoke-static {p1, v1}, Lcom/miui/gamebooster/ui/GameBoosterSettingFragment;->q0(Lcom/miui/gamebooster/ui/GameBoosterSettingFragment;Z)Z

    invoke-static {p1}, Lcom/miui/gamebooster/ui/GameBoosterSettingFragment;->i1(Lcom/miui/gamebooster/ui/GameBoosterSettingFragment;)Lm6/a;

    invoke-static {v0}, Lm6/a;->C(Z)Z

    move-result v1

    invoke-static {p1, v1}, Lcom/miui/gamebooster/ui/GameBoosterSettingFragment;->s0(Lcom/miui/gamebooster/ui/GameBoosterSettingFragment;Z)Z

    invoke-static {p1}, Lcom/miui/gamebooster/ui/GameBoosterSettingFragment;->i1(Lcom/miui/gamebooster/ui/GameBoosterSettingFragment;)Lm6/a;

    invoke-static {v0}, Lm6/a;->k(Z)Z

    move-result v1

    invoke-static {p1, v1}, Lcom/miui/gamebooster/ui/GameBoosterSettingFragment;->v0(Lcom/miui/gamebooster/ui/GameBoosterSettingFragment;Z)Z

    invoke-static {p1}, Lcom/miui/gamebooster/ui/GameBoosterSettingFragment;->i1(Lcom/miui/gamebooster/ui/GameBoosterSettingFragment;)Lm6/a;

    invoke-static {v0}, Lm6/a;->C(Z)Z

    move-result v1

    invoke-static {p1, v1}, Lcom/miui/gamebooster/ui/GameBoosterSettingFragment;->s0(Lcom/miui/gamebooster/ui/GameBoosterSettingFragment;Z)Z

    invoke-static {p1}, Lcom/miui/gamebooster/ui/GameBoosterSettingFragment;->i1(Lcom/miui/gamebooster/ui/GameBoosterSettingFragment;)Lm6/a;

    invoke-static {v0}, Lm6/a;->y(Z)Z

    move-result v1

    invoke-static {p1, v1}, Lcom/miui/gamebooster/ui/GameBoosterSettingFragment;->x0(Lcom/miui/gamebooster/ui/GameBoosterSettingFragment;Z)Z

    invoke-static {p1}, Lcom/miui/gamebooster/ui/GameBoosterSettingFragment;->i1(Lcom/miui/gamebooster/ui/GameBoosterSettingFragment;)Lm6/a;

    invoke-static {}, Lm6/a;->n()Z

    move-result v1

    invoke-static {p1, v1}, Lcom/miui/gamebooster/ui/GameBoosterSettingFragment;->z0(Lcom/miui/gamebooster/ui/GameBoosterSettingFragment;Z)Z

    invoke-static {p1}, Lcom/miui/gamebooster/ui/GameBoosterSettingFragment;->L0(Lcom/miui/gamebooster/ui/GameBoosterSettingFragment;)I

    move-result v1

    if-ne v1, v0, :cond_1

    invoke-static {p1}, Lcom/miui/gamebooster/ui/GameBoosterSettingFragment;->i1(Lcom/miui/gamebooster/ui/GameBoosterSettingFragment;)Lm6/a;

    const/4 v0, 0x0

    invoke-static {v0}, Lm6/a;->E(Z)Z

    move-result v0

    invoke-static {p1, v0}, Lcom/miui/gamebooster/ui/GameBoosterSettingFragment;->h1(Lcom/miui/gamebooster/ui/GameBoosterSettingFragment;Z)Z

    goto :goto_0

    :cond_1
    invoke-static {p1}, Lcom/miui/gamebooster/ui/GameBoosterSettingFragment;->L0(Lcom/miui/gamebooster/ui/GameBoosterSettingFragment;)I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_2

    :try_start_0
    invoke-virtual {p1}, Lcom/miui/gamebooster/ui/GameBoosterSettingFragment;->k1()Lcom/miui/powerkeeper/feedbackcontrol/IFeedbackControl;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/miui/gamebooster/ui/GameBoosterSettingFragment;->f1(Lcom/miui/gamebooster/ui/GameBoosterSettingFragment;Lcom/miui/powerkeeper/feedbackcontrol/IFeedbackControl;)Lcom/miui/powerkeeper/feedbackcontrol/IFeedbackControl;

    invoke-static {p1}, Lcom/miui/gamebooster/ui/GameBoosterSettingFragment;->e1(Lcom/miui/gamebooster/ui/GameBoosterSettingFragment;)Lcom/miui/powerkeeper/feedbackcontrol/IFeedbackControl;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-static {p1}, Lcom/miui/gamebooster/ui/GameBoosterSettingFragment;->e1(Lcom/miui/gamebooster/ui/GameBoosterSettingFragment;)Lcom/miui/powerkeeper/feedbackcontrol/IFeedbackControl;

    move-result-object v0

    invoke-interface {v0}, Lcom/miui/powerkeeper/feedbackcontrol/IFeedbackControl;->f1()Z

    move-result v0

    invoke-static {p1, v0}, Lcom/miui/gamebooster/ui/GameBoosterSettingFragment;->h1(Lcom/miui/gamebooster/ui/GameBoosterSettingFragment;Z)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "LoadSettingPrefTask"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    :goto_0
    invoke-static {p1}, Lcom/miui/gamebooster/ui/GameBoosterSettingFragment;->d1(Lcom/miui/gamebooster/ui/GameBoosterSettingFragment;)Landroid/app/Activity;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v0, v1}, La8/v1;->d(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    invoke-static {p1, v0}, Lcom/miui/gamebooster/ui/GameBoosterSettingFragment;->B0(Lcom/miui/gamebooster/ui/GameBoosterSettingFragment;Z)Z

    invoke-static {p1}, Lcom/miui/gamebooster/ui/GameBoosterSettingFragment;->i1(Lcom/miui/gamebooster/ui/GameBoosterSettingFragment;)Lm6/a;

    invoke-static {}, Lm6/a;->M()Z

    move-result v0

    invoke-static {p1, v0}, Lcom/miui/gamebooster/ui/GameBoosterSettingFragment;->D0(Lcom/miui/gamebooster/ui/GameBoosterSettingFragment;Z)Z

    invoke-static {}, La8/o0;->f()Z

    move-result v0

    invoke-static {p1, v0}, Lcom/miui/gamebooster/ui/GameBoosterSettingFragment;->F0(Lcom/miui/gamebooster/ui/GameBoosterSettingFragment;Z)Z

    invoke-static {}, Lf6/a;->a()Z

    move-result v0

    invoke-static {p1, v0}, Lcom/miui/gamebooster/ui/GameBoosterSettingFragment;->H0(Lcom/miui/gamebooster/ui/GameBoosterSettingFragment;Z)Z

    sget-object p1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    return-object p1

    :cond_3
    :goto_1
    sget-object p1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    return-object p1
.end method

.method protected b(Ljava/lang/Boolean;)V
    .locals 2

    invoke-super {p0, p1}, Landroid/os/AsyncTask;->onPostExecute(Ljava/lang/Object;)V

    iget-object p1, p0, Lcom/miui/gamebooster/ui/GameBoosterSettingFragment$f;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {p1}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/miui/gamebooster/ui/GameBoosterSettingFragment;

    invoke-static {p1}, Lcom/miui/gamebooster/ui/GameBoosterSettingFragment;->d1(Lcom/miui/gamebooster/ui/GameBoosterSettingFragment;)Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lc7/c;->a(Landroid/app/Activity;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    invoke-static {p1}, Lcom/miui/gamebooster/ui/GameBoosterSettingFragment;->I0(Lcom/miui/gamebooster/ui/GameBoosterSettingFragment;)Landroidx/preference/CheckBoxPreference;

    move-result-object v0

    invoke-static {p1}, Lcom/miui/gamebooster/ui/GameBoosterSettingFragment;->l0(Lcom/miui/gamebooster/ui/GameBoosterSettingFragment;)Z

    move-result v1

    invoke-virtual {v0, v1}, Landroidx/preference/TwoStatePreference;->setChecked(Z)V

    invoke-static {p1}, Lcom/miui/gamebooster/ui/GameBoosterSettingFragment;->J0(Lcom/miui/gamebooster/ui/GameBoosterSettingFragment;)Landroidx/preference/CheckBoxPreference;

    move-result-object v0

    invoke-static {p1}, Lcom/miui/gamebooster/ui/GameBoosterSettingFragment;->p0(Lcom/miui/gamebooster/ui/GameBoosterSettingFragment;)Z

    move-result v1

    invoke-virtual {v0, v1}, Landroidx/preference/TwoStatePreference;->setChecked(Z)V

    invoke-static {p1}, Lcom/miui/gamebooster/ui/GameBoosterSettingFragment;->K0(Lcom/miui/gamebooster/ui/GameBoosterSettingFragment;)Landroidx/preference/CheckBoxPreference;

    move-result-object v0

    invoke-static {p1}, Lcom/miui/gamebooster/ui/GameBoosterSettingFragment;->n0(Lcom/miui/gamebooster/ui/GameBoosterSettingFragment;)Z

    move-result v1

    invoke-virtual {v0, v1}, Landroidx/preference/TwoStatePreference;->setChecked(Z)V

    invoke-static {p1}, Lcom/miui/gamebooster/ui/GameBoosterSettingFragment;->M0(Lcom/miui/gamebooster/ui/GameBoosterSettingFragment;)Landroidx/preference/CheckBoxPreference;

    move-result-object v0

    invoke-static {p1}, Lcom/miui/gamebooster/ui/GameBoosterSettingFragment;->u0(Lcom/miui/gamebooster/ui/GameBoosterSettingFragment;)Z

    move-result v1

    invoke-virtual {v0, v1}, Landroidx/preference/TwoStatePreference;->setChecked(Z)V

    invoke-static {p1}, Lcom/miui/gamebooster/ui/GameBoosterSettingFragment;->O0(Lcom/miui/gamebooster/ui/GameBoosterSettingFragment;)Landroidx/preference/CheckBoxPreference;

    move-result-object v0

    invoke-static {p1}, Lcom/miui/gamebooster/ui/GameBoosterSettingFragment;->r0(Lcom/miui/gamebooster/ui/GameBoosterSettingFragment;)Z

    move-result v1

    invoke-virtual {v0, v1}, Landroidx/preference/TwoStatePreference;->setChecked(Z)V

    invoke-static {p1}, Lcom/miui/gamebooster/ui/GameBoosterSettingFragment;->P0(Lcom/miui/gamebooster/ui/GameBoosterSettingFragment;)Landroidx/preference/CheckBoxPreference;

    move-result-object v0

    invoke-static {p1}, Lcom/miui/gamebooster/ui/GameBoosterSettingFragment;->w0(Lcom/miui/gamebooster/ui/GameBoosterSettingFragment;)Z

    move-result v1

    invoke-virtual {v0, v1}, Landroidx/preference/TwoStatePreference;->setChecked(Z)V

    invoke-static {p1}, Lcom/miui/gamebooster/ui/GameBoosterSettingFragment;->h0(Lcom/miui/gamebooster/ui/GameBoosterSettingFragment;)Lmiuix/preference/TextPreference;

    move-result-object v0

    invoke-static {p1}, Lcom/miui/gamebooster/ui/GameBoosterSettingFragment;->r0(Lcom/miui/gamebooster/ui/GameBoosterSettingFragment;)Z

    move-result v1

    invoke-virtual {v0, v1}, Landroidx/preference/Preference;->setEnabled(Z)V

    invoke-static {p1}, Lcom/miui/gamebooster/ui/GameBoosterSettingFragment;->Q0(Lcom/miui/gamebooster/ui/GameBoosterSettingFragment;)Landroidx/preference/CheckBoxPreference;

    move-result-object v0

    invoke-static {p1}, Lcom/miui/gamebooster/ui/GameBoosterSettingFragment;->y0(Lcom/miui/gamebooster/ui/GameBoosterSettingFragment;)Z

    move-result v1

    invoke-virtual {v0, v1}, Landroidx/preference/TwoStatePreference;->setChecked(Z)V

    invoke-static {p1}, Lcom/miui/gamebooster/ui/GameBoosterSettingFragment;->L0(Lcom/miui/gamebooster/ui/GameBoosterSettingFragment;)I

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {p1}, Lcom/miui/gamebooster/ui/GameBoosterSettingFragment;->X0(Lcom/miui/gamebooster/ui/GameBoosterSettingFragment;)Landroidx/preference/CheckBoxPreference;

    move-result-object v0

    invoke-static {p1}, Lcom/miui/gamebooster/ui/GameBoosterSettingFragment;->g1(Lcom/miui/gamebooster/ui/GameBoosterSettingFragment;)Z

    move-result v1

    invoke-virtual {v0, v1}, Landroidx/preference/TwoStatePreference;->setChecked(Z)V

    :cond_1
    invoke-static {p1}, Lcom/miui/gamebooster/ui/GameBoosterSettingFragment;->R0(Lcom/miui/gamebooster/ui/GameBoosterSettingFragment;)Landroidx/preference/CheckBoxPreference;

    move-result-object v0

    invoke-static {p1}, Lcom/miui/gamebooster/ui/GameBoosterSettingFragment;->A0(Lcom/miui/gamebooster/ui/GameBoosterSettingFragment;)Z

    move-result v1

    invoke-virtual {v0, v1}, Landroidx/preference/TwoStatePreference;->setChecked(Z)V

    invoke-static {p1}, Lcom/miui/gamebooster/ui/GameBoosterSettingFragment;->S0(Lcom/miui/gamebooster/ui/GameBoosterSettingFragment;)Landroidx/preference/CheckBoxPreference;

    move-result-object v0

    invoke-static {p1}, Lcom/miui/gamebooster/ui/GameBoosterSettingFragment;->C0(Lcom/miui/gamebooster/ui/GameBoosterSettingFragment;)Z

    move-result v1

    invoke-virtual {v0, v1}, Landroidx/preference/TwoStatePreference;->setChecked(Z)V

    invoke-static {p1}, Lcom/miui/gamebooster/ui/GameBoosterSettingFragment;->T0(Lcom/miui/gamebooster/ui/GameBoosterSettingFragment;)Landroidx/preference/CheckBoxPreference;

    move-result-object v0

    invoke-static {p1}, Lcom/miui/gamebooster/ui/GameBoosterSettingFragment;->E0(Lcom/miui/gamebooster/ui/GameBoosterSettingFragment;)Z

    move-result v1

    invoke-virtual {v0, v1}, Landroidx/preference/TwoStatePreference;->setChecked(Z)V

    invoke-static {p1}, Lcom/miui/gamebooster/ui/GameBoosterSettingFragment;->U0(Lcom/miui/gamebooster/ui/GameBoosterSettingFragment;)Landroidx/preference/CheckBoxPreference;

    move-result-object v0

    invoke-static {p1}, Lcom/miui/gamebooster/ui/GameBoosterSettingFragment;->G0(Lcom/miui/gamebooster/ui/GameBoosterSettingFragment;)Z

    move-result p1

    invoke-virtual {v0, p1}, Landroidx/preference/TwoStatePreference;->setChecked(Z)V

    return-void
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/miui/gamebooster/ui/GameBoosterSettingFragment$f;->a([Ljava/lang/Void;)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p0, p1}, Lcom/miui/gamebooster/ui/GameBoosterSettingFragment$f;->b(Ljava/lang/Boolean;)V

    return-void
.end method
