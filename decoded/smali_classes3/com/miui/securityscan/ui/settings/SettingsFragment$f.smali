.class Lcom/miui/securityscan/ui/settings/SettingsFragment$f;
.super Landroid/os/AsyncTask;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/securityscan/ui/settings/SettingsFragment;
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
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field private a:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Lcom/miui/securityscan/ui/settings/SettingsFragment;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/miui/securityscan/ui/settings/SettingsFragment;)V
    .locals 1

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/miui/securityscan/ui/settings/SettingsFragment$f;->a:Ljava/lang/ref/WeakReference;

    return-void
.end method


# virtual methods
.method protected varargs a([Ljava/lang/Void;)Ljava/lang/Void;
    .locals 2

    iget-object p1, p0, Lcom/miui/securityscan/ui/settings/SettingsFragment$f;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {p1}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/miui/securityscan/ui/settings/SettingsFragment;

    invoke-virtual {p0}, Landroid/os/AsyncTask;->isCancelled()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_1

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    invoke-static {}, Lpf/g;->v()Z

    move-result v0

    invoke-static {p1, v0}, Lcom/miui/securityscan/ui/settings/SettingsFragment;->i0(Lcom/miui/securityscan/ui/settings/SettingsFragment;Z)Z

    invoke-static {}, Lpf/g;->w()Z

    move-result v0

    invoke-static {p1, v0}, Lcom/miui/securityscan/ui/settings/SettingsFragment;->k0(Lcom/miui/securityscan/ui/settings/SettingsFragment;Z)Z

    :cond_1
    :goto_0
    return-object v1
.end method

.method protected b(Ljava/lang/Void;)V
    .locals 3

    iget-object p1, p0, Lcom/miui/securityscan/ui/settings/SettingsFragment$f;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {p1}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/miui/securityscan/ui/settings/SettingsFragment;

    invoke-virtual {p0}, Landroid/os/AsyncTask;->isCancelled()Z

    move-result v0

    if-nez v0, :cond_1

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    invoke-static {p1}, Lcom/miui/securityscan/ui/settings/SettingsFragment;->l0(Lcom/miui/securityscan/ui/settings/SettingsFragment;)Landroidx/preference/CheckBoxPreference;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroidx/preference/Preference;->setEnabled(Z)V

    invoke-static {p1}, Lcom/miui/securityscan/ui/settings/SettingsFragment;->l0(Lcom/miui/securityscan/ui/settings/SettingsFragment;)Landroidx/preference/CheckBoxPreference;

    move-result-object v0

    invoke-static {p1}, Lcom/miui/securityscan/ui/settings/SettingsFragment;->h0(Lcom/miui/securityscan/ui/settings/SettingsFragment;)Z

    move-result v2

    invoke-virtual {v0, v2}, Landroidx/preference/TwoStatePreference;->setChecked(Z)V

    invoke-static {p1}, Lcom/miui/securityscan/ui/settings/SettingsFragment;->m0(Lcom/miui/securityscan/ui/settings/SettingsFragment;)Landroidx/preference/CheckBoxPreference;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroidx/preference/Preference;->setEnabled(Z)V

    invoke-static {p1}, Lcom/miui/securityscan/ui/settings/SettingsFragment;->m0(Lcom/miui/securityscan/ui/settings/SettingsFragment;)Landroidx/preference/CheckBoxPreference;

    move-result-object v0

    invoke-static {p1}, Lcom/miui/securityscan/ui/settings/SettingsFragment;->j0(Lcom/miui/securityscan/ui/settings/SettingsFragment;)Z

    move-result p1

    invoke-virtual {v0, p1}, Landroidx/preference/TwoStatePreference;->setChecked(Z)V

    :cond_1
    :goto_0
    return-void
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/miui/securityscan/ui/settings/SettingsFragment$f;->a([Ljava/lang/Void;)Ljava/lang/Void;

    move-result-object p1

    return-object p1
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/miui/securityscan/ui/settings/SettingsFragment$f;->b(Ljava/lang/Void;)V

    return-void
.end method
