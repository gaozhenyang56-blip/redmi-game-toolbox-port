.class Lcom/miui/gamebooster/ui/PerformanceSettingsFragment$e;
.super Landroid/os/AsyncTask;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/gamebooster/ui/PerformanceSettingsFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "e"
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
            "Lcom/miui/gamebooster/ui/PerformanceSettingsFragment;",
            ">;"
        }
    .end annotation
.end field

.field private b:Lcom/miui/powerkeeper/feedbackcontrol/IFeedbackControl;

.field private c:Z

.field private d:Z

.field private e:Z

.field private f:Z


# direct methods
.method private constructor <init>(Lcom/miui/gamebooster/ui/PerformanceSettingsFragment;)V
    .locals 1

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/miui/gamebooster/ui/PerformanceSettingsFragment$e;->c:Z

    iput-boolean v0, p0, Lcom/miui/gamebooster/ui/PerformanceSettingsFragment$e;->d:Z

    iput-boolean v0, p0, Lcom/miui/gamebooster/ui/PerformanceSettingsFragment$e;->e:Z

    iput-boolean v0, p0, Lcom/miui/gamebooster/ui/PerformanceSettingsFragment$e;->f:Z

    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/miui/gamebooster/ui/PerformanceSettingsFragment$e;->a:Ljava/lang/ref/WeakReference;

    return-void
.end method

.method synthetic constructor <init>(Lcom/miui/gamebooster/ui/PerformanceSettingsFragment;Lcom/miui/gamebooster/ui/PerformanceSettingsFragment$a;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/miui/gamebooster/ui/PerformanceSettingsFragment$e;-><init>(Lcom/miui/gamebooster/ui/PerformanceSettingsFragment;)V

    return-void
.end method


# virtual methods
.method protected varargs a([Ljava/lang/Void;)Ljava/lang/Boolean;
    .locals 3

    iget-object p1, p0, Lcom/miui/gamebooster/ui/PerformanceSettingsFragment$e;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {p1}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/miui/gamebooster/ui/PerformanceSettingsFragment;

    if-eqz p1, :cond_3

    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->isDetached()Z

    move-result v0

    if-nez v0, :cond_3

    invoke-virtual {p0}, Landroid/os/AsyncTask;->isCancelled()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_1

    :cond_0
    invoke-static {p1}, Lcom/miui/gamebooster/ui/PerformanceSettingsFragment;->h0(Lcom/miui/gamebooster/ui/PerformanceSettingsFragment;)I

    move-result v0

    const/4 v1, 0x1

    if-ne v1, v0, :cond_1

    const/4 p1, 0x0

    invoke-static {p1}, Lm6/a;->E(Z)Z

    move-result p1

    iput-boolean p1, p0, Lcom/miui/gamebooster/ui/PerformanceSettingsFragment$e;->d:Z

    goto :goto_0

    :cond_1
    const/4 v0, 0x2

    invoke-static {p1}, Lcom/miui/gamebooster/ui/PerformanceSettingsFragment;->h0(Lcom/miui/gamebooster/ui/PerformanceSettingsFragment;)I

    move-result v2

    if-ne v0, v2, :cond_2

    :try_start_0
    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    check-cast p1, Lcom/miui/gamebooster/ui/SettingsActivity;

    if-eqz p1, :cond_2

    invoke-virtual {p1}, Lcom/miui/gamebooster/ui/SettingsActivity;->n0()Lcom/miui/powerkeeper/feedbackcontrol/IFeedbackControl;

    move-result-object p1

    iput-object p1, p0, Lcom/miui/gamebooster/ui/PerformanceSettingsFragment$e;->b:Lcom/miui/powerkeeper/feedbackcontrol/IFeedbackControl;

    if-eqz p1, :cond_2

    invoke-interface {p1}, Lcom/miui/powerkeeper/feedbackcontrol/IFeedbackControl;->f1()Z

    move-result p1

    iput-boolean p1, p0, Lcom/miui/gamebooster/ui/PerformanceSettingsFragment$e;->d:Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "PerformanceSettingsFrag"

    invoke-static {v0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    :goto_0
    invoke-static {}, Lm6/a;->n()Z

    move-result p1

    iput-boolean p1, p0, Lcom/miui/gamebooster/ui/PerformanceSettingsFragment$e;->c:Z

    invoke-static {v1}, Lm6/a;->C(Z)Z

    move-result p1

    iput-boolean p1, p0, Lcom/miui/gamebooster/ui/PerformanceSettingsFragment$e;->f:Z

    invoke-static {}, Lf6/a;->a()Z

    move-result p1

    iput-boolean p1, p0, Lcom/miui/gamebooster/ui/PerformanceSettingsFragment$e;->e:Z

    sget-object p1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    return-object p1

    :cond_3
    :goto_1
    sget-object p1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    return-object p1
.end method

.method protected b(Ljava/lang/Boolean;)V
    .locals 3

    invoke-super {p0, p1}, Landroid/os/AsyncTask;->onPostExecute(Ljava/lang/Object;)V

    iget-object p1, p0, Lcom/miui/gamebooster/ui/PerformanceSettingsFragment$e;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {p1}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/miui/gamebooster/ui/PerformanceSettingsFragment;

    if-eqz p1, :cond_3

    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->isDetached()Z

    move-result v0

    if-nez v0, :cond_3

    invoke-virtual {p0}, Landroid/os/AsyncTask;->isCancelled()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/miui/gamebooster/ui/PerformanceSettingsFragment$e;->b:Lcom/miui/powerkeeper/feedbackcontrol/IFeedbackControl;

    invoke-static {p1, v0}, Lcom/miui/gamebooster/ui/PerformanceSettingsFragment;->l0(Lcom/miui/gamebooster/ui/PerformanceSettingsFragment;Lcom/miui/powerkeeper/feedbackcontrol/IFeedbackControl;)Lcom/miui/powerkeeper/feedbackcontrol/IFeedbackControl;

    invoke-static {p1}, Lcom/miui/gamebooster/ui/PerformanceSettingsFragment;->j0(Lcom/miui/gamebooster/ui/PerformanceSettingsFragment;)Lcom/miui/gamebooster/widget/CheckBoxSettingItemView;

    move-result-object v0

    iget-boolean v1, p0, Lcom/miui/gamebooster/ui/PerformanceSettingsFragment$e;->d:Z

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2, v2}, Lcom/miui/gamebooster/widget/CheckBoxSettingItemView;->e(ZZZ)V

    invoke-static {}, La8/g0;->T()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-static {p1}, Lcom/miui/gamebooster/ui/PerformanceSettingsFragment;->m0(Lcom/miui/gamebooster/ui/PerformanceSettingsFragment;)Lcom/miui/gamebooster/widget/CheckBoxSettingItemView;

    move-result-object v0

    iget-boolean v1, p0, Lcom/miui/gamebooster/ui/PerformanceSettingsFragment$e;->c:Z

    invoke-virtual {v0, v1, v2, v2}, Lcom/miui/gamebooster/widget/CheckBoxSettingItemView;->e(ZZZ)V

    :cond_1
    invoke-static {p1}, Lcom/miui/gamebooster/ui/PerformanceSettingsFragment;->n0(Lcom/miui/gamebooster/ui/PerformanceSettingsFragment;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-nez v0, :cond_2

    invoke-static {p1}, Lcom/miui/gamebooster/ui/PerformanceSettingsFragment;->o0(Lcom/miui/gamebooster/ui/PerformanceSettingsFragment;)Lcom/miui/gamebooster/widget/CheckBoxSettingItemView;

    move-result-object v0

    iget-boolean v1, p0, Lcom/miui/gamebooster/ui/PerformanceSettingsFragment$e;->f:Z

    invoke-virtual {v0, v1, v2, v2}, Lcom/miui/gamebooster/widget/CheckBoxSettingItemView;->e(ZZZ)V

    invoke-static {p1}, Lcom/miui/gamebooster/ui/PerformanceSettingsFragment;->p0(Lcom/miui/gamebooster/ui/PerformanceSettingsFragment;)Lcom/miui/gamebooster/widget/CheckBoxSettingItemView;

    move-result-object v0

    iget-boolean v1, p0, Lcom/miui/gamebooster/ui/PerformanceSettingsFragment$e;->f:Z

    invoke-virtual {v0, v1}, Lcom/miui/gamebooster/widget/CheckBoxSettingItemView;->setEnabled(Z)V

    :cond_2
    invoke-static {p1}, Lcom/miui/gamebooster/ui/PerformanceSettingsFragment;->q0(Lcom/miui/gamebooster/ui/PerformanceSettingsFragment;)Lcom/miui/gamebooster/widget/CheckBoxSettingItemView;

    move-result-object p1

    iget-boolean v0, p0, Lcom/miui/gamebooster/ui/PerformanceSettingsFragment$e;->e:Z

    invoke-virtual {p1, v0, v2, v2}, Lcom/miui/gamebooster/widget/CheckBoxSettingItemView;->e(ZZZ)V

    :cond_3
    :goto_0
    return-void
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/miui/gamebooster/ui/PerformanceSettingsFragment$e;->a([Ljava/lang/Void;)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p0, p1}, Lcom/miui/gamebooster/ui/PerformanceSettingsFragment$e;->b(Ljava/lang/Boolean;)V

    return-void
.end method
