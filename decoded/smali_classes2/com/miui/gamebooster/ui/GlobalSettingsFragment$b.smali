.class Lcom/miui/gamebooster/ui/GlobalSettingsFragment$b;
.super Landroid/os/AsyncTask;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/gamebooster/ui/GlobalSettingsFragment;
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
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation


# instance fields
.field private final a:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Lcom/miui/gamebooster/ui/GlobalSettingsFragment;",
            ">;"
        }
    .end annotation
.end field

.field private b:Z

.field private c:Z

.field private d:Z

.field private e:Z

.field private f:Z

.field private g:Z


# direct methods
.method constructor <init>(Lcom/miui/gamebooster/ui/GlobalSettingsFragment;)V
    .locals 1

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/miui/gamebooster/ui/GlobalSettingsFragment$b;->a:Ljava/lang/ref/WeakReference;

    return-void
.end method


# virtual methods
.method protected varargs a([Ljava/lang/Void;)Ljava/lang/Boolean;
    .locals 2

    iget-object p1, p0, Lcom/miui/gamebooster/ui/GlobalSettingsFragment$b;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {p1}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/miui/gamebooster/ui/GlobalSettingsFragment;

    const/4 v0, 0x0

    if-eqz p1, :cond_1

    invoke-virtual {p0}, Landroid/os/AsyncTask;->isCancelled()Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    invoke-static {p1}, Lcom/miui/gamebooster/ui/GlobalSettingsFragment;->e0(Lcom/miui/gamebooster/ui/GlobalSettingsFragment;)Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lm6/a;->e(Landroid/content/Context;)Lm6/a;

    move-result-object v1

    invoke-virtual {v1}, Lm6/a;->x()Z

    move-result v1

    iput-boolean v1, p0, Lcom/miui/gamebooster/ui/GlobalSettingsFragment$b;->b:Z

    invoke-static {}, Lm6/a;->w()Z

    move-result v1

    iput-boolean v1, p0, Lcom/miui/gamebooster/ui/GlobalSettingsFragment$b;->c:Z

    const/4 v1, 0x1

    invoke-static {v1}, Lm6/a;->K(Z)Z

    move-result v1

    iput-boolean v1, p0, Lcom/miui/gamebooster/ui/GlobalSettingsFragment$b;->d:Z

    invoke-static {}, Lm6/a;->M()Z

    move-result v1

    iput-boolean v1, p0, Lcom/miui/gamebooster/ui/GlobalSettingsFragment$b;->e:Z

    invoke-static {}, La8/o0;->f()Z

    move-result v1

    iput-boolean v1, p0, Lcom/miui/gamebooster/ui/GlobalSettingsFragment$b;->f:Z

    invoke-static {p1}, Lcom/miui/gamebooster/ui/GlobalSettingsFragment;->f0(Lcom/miui/gamebooster/ui/GlobalSettingsFragment;)Landroid/content/Context;

    move-result-object p1

    invoke-static {p1, v0}, La8/v1;->d(Landroid/content/Context;Ljava/lang/String;)Z

    move-result p1

    iput-boolean p1, p0, Lcom/miui/gamebooster/ui/GlobalSettingsFragment$b;->g:Z

    sget-object p1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    return-object p1

    :cond_1
    :goto_0
    return-object v0
.end method

.method protected b(Ljava/lang/Boolean;)V
    .locals 3

    invoke-super {p0, p1}, Landroid/os/AsyncTask;->onPostExecute(Ljava/lang/Object;)V

    iget-object p1, p0, Lcom/miui/gamebooster/ui/GlobalSettingsFragment$b;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {p1}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/miui/gamebooster/ui/GlobalSettingsFragment;

    if-nez p1, :cond_0

    return-void

    :cond_0
    invoke-static {p1}, Lcom/miui/gamebooster/ui/GlobalSettingsFragment;->g0(Lcom/miui/gamebooster/ui/GlobalSettingsFragment;)Lcom/miui/gamebooster/widget/CheckBoxSettingItemView;

    move-result-object v0

    iget-boolean v1, p0, Lcom/miui/gamebooster/ui/GlobalSettingsFragment$b;->b:Z

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2, v2}, Lcom/miui/gamebooster/widget/CheckBoxSettingItemView;->e(ZZZ)V

    invoke-static {p1}, Lcom/miui/gamebooster/ui/GlobalSettingsFragment;->h0(Lcom/miui/gamebooster/ui/GlobalSettingsFragment;)Lcom/miui/gamebooster/widget/CheckBoxSettingItemView;

    move-result-object v0

    iget-boolean v1, p0, Lcom/miui/gamebooster/ui/GlobalSettingsFragment$b;->c:Z

    invoke-virtual {v0, v1, v2, v2}, Lcom/miui/gamebooster/widget/CheckBoxSettingItemView;->e(ZZZ)V

    invoke-static {p1}, Lcom/miui/gamebooster/ui/GlobalSettingsFragment;->i0(Lcom/miui/gamebooster/ui/GlobalSettingsFragment;)Lcom/miui/gamebooster/widget/CheckBoxSettingItemView;

    move-result-object v0

    iget-boolean v1, p0, Lcom/miui/gamebooster/ui/GlobalSettingsFragment$b;->d:Z

    invoke-virtual {v0, v1, v2, v2}, Lcom/miui/gamebooster/widget/CheckBoxSettingItemView;->e(ZZZ)V

    invoke-static {p1}, Lcom/miui/gamebooster/ui/GlobalSettingsFragment;->j0(Lcom/miui/gamebooster/ui/GlobalSettingsFragment;)Lcom/miui/gamebooster/widget/CheckBoxSettingItemView;

    move-result-object v0

    iget-boolean v1, p0, Lcom/miui/gamebooster/ui/GlobalSettingsFragment$b;->e:Z

    invoke-virtual {v0, v1, v2, v2}, Lcom/miui/gamebooster/widget/CheckBoxSettingItemView;->e(ZZZ)V

    invoke-static {p1}, Lcom/miui/gamebooster/ui/GlobalSettingsFragment;->k0(Lcom/miui/gamebooster/ui/GlobalSettingsFragment;)Lcom/miui/gamebooster/widget/CheckBoxSettingItemView;

    move-result-object v0

    iget-boolean v1, p0, Lcom/miui/gamebooster/ui/GlobalSettingsFragment$b;->f:Z

    invoke-virtual {v0, v1, v2, v2}, Lcom/miui/gamebooster/widget/CheckBoxSettingItemView;->e(ZZZ)V

    invoke-static {p1}, Lcom/miui/gamebooster/ui/GlobalSettingsFragment;->l0(Lcom/miui/gamebooster/ui/GlobalSettingsFragment;)Lcom/miui/gamebooster/widget/CheckBoxSettingItemView;

    move-result-object p1

    iget-boolean v0, p0, Lcom/miui/gamebooster/ui/GlobalSettingsFragment$b;->g:Z

    invoke-virtual {p1, v0, v2, v2}, Lcom/miui/gamebooster/widget/CheckBoxSettingItemView;->e(ZZZ)V

    return-void
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/miui/gamebooster/ui/GlobalSettingsFragment$b;->a([Ljava/lang/Void;)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p0, p1}, Lcom/miui/gamebooster/ui/GlobalSettingsFragment$b;->b(Ljava/lang/Boolean;)V

    return-void
.end method
