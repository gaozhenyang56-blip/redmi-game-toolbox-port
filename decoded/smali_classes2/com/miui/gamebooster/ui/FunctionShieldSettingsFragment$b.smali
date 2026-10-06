.class Lcom/miui/gamebooster/ui/FunctionShieldSettingsFragment$b;
.super Landroid/os/AsyncTask;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/gamebooster/ui/FunctionShieldSettingsFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "b"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Ljava/lang/Integer;",
        ">;"
    }
.end annotation


# instance fields
.field private final a:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Lcom/miui/gamebooster/ui/FunctionShieldSettingsFragment;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/miui/gamebooster/ui/FunctionShieldSettingsFragment;)V
    .locals 1

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/miui/gamebooster/ui/FunctionShieldSettingsFragment$b;->a:Ljava/lang/ref/WeakReference;

    return-void
.end method


# virtual methods
.method protected varargs a([Ljava/lang/Void;)Ljava/lang/Integer;
    .locals 2

    iget-object p1, p0, Lcom/miui/gamebooster/ui/FunctionShieldSettingsFragment$b;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {p1}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/miui/gamebooster/ui/FunctionShieldSettingsFragment;

    if-eqz p1, :cond_5

    invoke-virtual {p0}, Landroid/os/AsyncTask;->isCancelled()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-static {p1}, Lcom/miui/gamebooster/ui/FunctionShieldSettingsFragment;->h0(Lcom/miui/gamebooster/ui/FunctionShieldSettingsFragment;)Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lm6/a;->e(Landroid/content/Context;)Lm6/a;

    const/4 v0, 0x0

    invoke-static {v0}, Lm6/a;->F(Z)Z

    move-result v1

    invoke-static {p1, v1}, Lcom/miui/gamebooster/ui/FunctionShieldSettingsFragment;->j0(Lcom/miui/gamebooster/ui/FunctionShieldSettingsFragment;Z)Z

    invoke-static {v0}, Lm6/a;->G(Z)Z

    move-result v1

    invoke-static {p1, v1}, Lcom/miui/gamebooster/ui/FunctionShieldSettingsFragment;->l0(Lcom/miui/gamebooster/ui/FunctionShieldSettingsFragment;Z)Z

    invoke-static {v0}, Lm6/a;->I(Z)Z

    move-result v1

    invoke-static {p1, v1}, Lcom/miui/gamebooster/ui/FunctionShieldSettingsFragment;->n0(Lcom/miui/gamebooster/ui/FunctionShieldSettingsFragment;Z)Z

    invoke-static {v0}, Lm6/a;->H(Z)Z

    move-result v1

    invoke-static {p1, v1}, Lcom/miui/gamebooster/ui/FunctionShieldSettingsFragment;->p0(Lcom/miui/gamebooster/ui/FunctionShieldSettingsFragment;Z)Z

    invoke-static {v0}, Lm6/a;->q(Z)Z

    move-result v0

    invoke-static {p1, v0}, Lcom/miui/gamebooster/ui/FunctionShieldSettingsFragment;->r0(Lcom/miui/gamebooster/ui/FunctionShieldSettingsFragment;Z)Z

    invoke-static {p1}, Lcom/miui/gamebooster/ui/FunctionShieldSettingsFragment;->i0(Lcom/miui/gamebooster/ui/FunctionShieldSettingsFragment;)Z

    move-result v0

    invoke-static {p1}, Lcom/miui/gamebooster/ui/FunctionShieldSettingsFragment;->k0(Lcom/miui/gamebooster/ui/FunctionShieldSettingsFragment;)Z

    move-result v1

    if-eqz v1, :cond_1

    add-int/lit8 v0, v0, 0x1

    :cond_1
    invoke-static {p1}, Lcom/miui/gamebooster/ui/FunctionShieldSettingsFragment;->m0(Lcom/miui/gamebooster/ui/FunctionShieldSettingsFragment;)Z

    move-result v1

    if-eqz v1, :cond_2

    add-int/lit8 v0, v0, 0x1

    :cond_2
    invoke-static {p1}, Lcom/miui/gamebooster/ui/FunctionShieldSettingsFragment;->o0(Lcom/miui/gamebooster/ui/FunctionShieldSettingsFragment;)Z

    move-result v1

    if-eqz v1, :cond_3

    add-int/lit8 v0, v0, 0x1

    :cond_3
    invoke-static {p1}, Lcom/miui/gamebooster/ui/FunctionShieldSettingsFragment;->q0(Lcom/miui/gamebooster/ui/FunctionShieldSettingsFragment;)Z

    move-result p1

    if-eqz p1, :cond_4

    add-int/lit8 v0, v0, 0x1

    :cond_4
    invoke-static {v0}, Lm6/a;->e0(I)V

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    return-object p1

    :cond_5
    :goto_0
    const/4 p1, 0x0

    return-object p1
.end method

.method protected b(Ljava/lang/Integer;)V
    .locals 2

    invoke-super {p0, p1}, Landroid/os/AsyncTask;->onPostExecute(Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/miui/gamebooster/ui/FunctionShieldSettingsFragment$b;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/gamebooster/ui/FunctionShieldSettingsFragment;

    if-eqz v0, :cond_1

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-static {v0, p1}, Lcom/miui/gamebooster/ui/FunctionShieldSettingsFragment;->a0(Lcom/miui/gamebooster/ui/FunctionShieldSettingsFragment;I)I

    invoke-static {v0}, Lcom/miui/gamebooster/ui/FunctionShieldSettingsFragment;->s0(Lcom/miui/gamebooster/ui/FunctionShieldSettingsFragment;)Landroidx/preference/CheckBoxPreference;

    move-result-object p1

    invoke-static {v0}, Lcom/miui/gamebooster/ui/FunctionShieldSettingsFragment;->i0(Lcom/miui/gamebooster/ui/FunctionShieldSettingsFragment;)Z

    move-result v1

    invoke-virtual {p1, v1}, Landroidx/preference/TwoStatePreference;->setChecked(Z)V

    invoke-static {v0}, Lcom/miui/gamebooster/ui/FunctionShieldSettingsFragment;->t0(Lcom/miui/gamebooster/ui/FunctionShieldSettingsFragment;)Landroidx/preference/CheckBoxPreference;

    move-result-object p1

    invoke-static {v0}, Lcom/miui/gamebooster/ui/FunctionShieldSettingsFragment;->k0(Lcom/miui/gamebooster/ui/FunctionShieldSettingsFragment;)Z

    move-result v1

    invoke-virtual {p1, v1}, Landroidx/preference/TwoStatePreference;->setChecked(Z)V

    invoke-static {v0}, Lcom/miui/gamebooster/ui/FunctionShieldSettingsFragment;->e0(Lcom/miui/gamebooster/ui/FunctionShieldSettingsFragment;)Landroidx/preference/CheckBoxPreference;

    move-result-object p1

    invoke-static {v0}, Lcom/miui/gamebooster/ui/FunctionShieldSettingsFragment;->m0(Lcom/miui/gamebooster/ui/FunctionShieldSettingsFragment;)Z

    move-result v1

    invoke-virtual {p1, v1}, Landroidx/preference/TwoStatePreference;->setChecked(Z)V

    invoke-static {v0}, Lcom/miui/gamebooster/ui/FunctionShieldSettingsFragment;->f0(Lcom/miui/gamebooster/ui/FunctionShieldSettingsFragment;)Landroidx/preference/CheckBoxPreference;

    move-result-object p1

    invoke-static {v0}, Lcom/miui/gamebooster/ui/FunctionShieldSettingsFragment;->o0(Lcom/miui/gamebooster/ui/FunctionShieldSettingsFragment;)Z

    move-result v1

    invoke-virtual {p1, v1}, Landroidx/preference/TwoStatePreference;->setChecked(Z)V

    invoke-static {v0}, Lcom/miui/gamebooster/ui/FunctionShieldSettingsFragment;->g0(Lcom/miui/gamebooster/ui/FunctionShieldSettingsFragment;)Landroidx/preference/CheckBoxPreference;

    move-result-object p1

    invoke-static {v0}, Lcom/miui/gamebooster/ui/FunctionShieldSettingsFragment;->q0(Lcom/miui/gamebooster/ui/FunctionShieldSettingsFragment;)Z

    move-result v0

    invoke-virtual {p1, v0}, Landroidx/preference/TwoStatePreference;->setChecked(Z)V

    :cond_1
    :goto_0
    return-void
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/miui/gamebooster/ui/FunctionShieldSettingsFragment$b;->a([Ljava/lang/Void;)Ljava/lang/Integer;

    move-result-object p1

    return-object p1
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p0, p1}, Lcom/miui/gamebooster/ui/FunctionShieldSettingsFragment$b;->b(Ljava/lang/Integer;)V

    return-void
.end method
