.class Lcom/miui/gamebooster/ui/ExperienceSettingsFragment$a;
.super Landroid/os/AsyncTask;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/gamebooster/ui/ExperienceSettingsFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "a"
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
            "Lcom/miui/gamebooster/ui/ExperienceSettingsFragment;",
            ">;"
        }
    .end annotation
.end field

.field private b:Z

.field private c:Z

.field private d:Z

.field private e:Z

.field private f:Z


# direct methods
.method constructor <init>(Lcom/miui/gamebooster/ui/ExperienceSettingsFragment;)V
    .locals 1

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/miui/gamebooster/ui/ExperienceSettingsFragment$a;->a:Ljava/lang/ref/WeakReference;

    return-void
.end method


# virtual methods
.method protected varargs a([Ljava/lang/Void;)Ljava/lang/Integer;
    .locals 2

    iget-object p1, p0, Lcom/miui/gamebooster/ui/ExperienceSettingsFragment$a;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {p1}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/miui/gamebooster/ui/ExperienceSettingsFragment;

    if-eqz p1, :cond_5

    invoke-virtual {p0}, Landroid/os/AsyncTask;->isCancelled()Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    invoke-static {p1}, Lm6/a;->F(Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/miui/gamebooster/ui/ExperienceSettingsFragment$a;->b:Z

    invoke-static {p1}, Lm6/a;->G(Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/miui/gamebooster/ui/ExperienceSettingsFragment$a;->c:Z

    invoke-static {p1}, Lm6/a;->I(Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/miui/gamebooster/ui/ExperienceSettingsFragment$a;->d:Z

    invoke-static {p1}, Lm6/a;->H(Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/miui/gamebooster/ui/ExperienceSettingsFragment$a;->e:Z

    invoke-static {p1}, Lm6/a;->q(Z)Z

    move-result p1

    iput-boolean p1, p0, Lcom/miui/gamebooster/ui/ExperienceSettingsFragment$a;->f:Z

    iget-boolean v0, p0, Lcom/miui/gamebooster/ui/ExperienceSettingsFragment$a;->b:Z

    iget-boolean v1, p0, Lcom/miui/gamebooster/ui/ExperienceSettingsFragment$a;->c:Z

    if-eqz v1, :cond_1

    add-int/lit8 v0, v0, 0x1

    :cond_1
    iget-boolean v1, p0, Lcom/miui/gamebooster/ui/ExperienceSettingsFragment$a;->d:Z

    if-eqz v1, :cond_2

    add-int/lit8 v0, v0, 0x1

    :cond_2
    iget-boolean v1, p0, Lcom/miui/gamebooster/ui/ExperienceSettingsFragment$a;->e:Z

    if-eqz v1, :cond_3

    add-int/lit8 v0, v0, 0x1

    :cond_3
    if-eqz p1, :cond_4

    add-int/lit8 v0, v0, 0x1

    :cond_4
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    return-object p1

    :cond_5
    :goto_0
    const/4 p1, 0x0

    return-object p1
.end method

.method protected b(Ljava/lang/Integer;)V
    .locals 3

    invoke-super {p0, p1}, Landroid/os/AsyncTask;->onPostExecute(Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/miui/gamebooster/ui/ExperienceSettingsFragment$a;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/gamebooster/ui/ExperienceSettingsFragment;

    if-eqz v0, :cond_1

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-static {v0, p1}, Lcom/miui/gamebooster/ui/ExperienceSettingsFragment;->b0(Lcom/miui/gamebooster/ui/ExperienceSettingsFragment;I)I

    invoke-static {v0}, Lcom/miui/gamebooster/ui/ExperienceSettingsFragment;->c0(Lcom/miui/gamebooster/ui/ExperienceSettingsFragment;)Lcom/miui/gamebooster/widget/CheckBoxSettingItemView;

    move-result-object p1

    iget-boolean v1, p0, Lcom/miui/gamebooster/ui/ExperienceSettingsFragment$a;->b:Z

    const/4 v2, 0x0

    invoke-virtual {p1, v1, v2, v2}, Lcom/miui/gamebooster/widget/CheckBoxSettingItemView;->e(ZZZ)V

    invoke-static {v0}, Lcom/miui/gamebooster/ui/ExperienceSettingsFragment;->d0(Lcom/miui/gamebooster/ui/ExperienceSettingsFragment;)Lcom/miui/gamebooster/widget/CheckBoxSettingItemView;

    move-result-object p1

    iget-boolean v1, p0, Lcom/miui/gamebooster/ui/ExperienceSettingsFragment$a;->c:Z

    invoke-virtual {p1, v1, v2, v2}, Lcom/miui/gamebooster/widget/CheckBoxSettingItemView;->e(ZZZ)V

    invoke-static {v0}, Lcom/miui/gamebooster/ui/ExperienceSettingsFragment;->e0(Lcom/miui/gamebooster/ui/ExperienceSettingsFragment;)Lcom/miui/gamebooster/widget/CheckBoxSettingItemView;

    move-result-object p1

    iget-boolean v1, p0, Lcom/miui/gamebooster/ui/ExperienceSettingsFragment$a;->d:Z

    invoke-virtual {p1, v1, v2, v2}, Lcom/miui/gamebooster/widget/CheckBoxSettingItemView;->e(ZZZ)V

    invoke-static {v0}, Lcom/miui/gamebooster/ui/ExperienceSettingsFragment;->f0(Lcom/miui/gamebooster/ui/ExperienceSettingsFragment;)Lcom/miui/gamebooster/widget/CheckBoxSettingItemView;

    move-result-object p1

    iget-boolean v1, p0, Lcom/miui/gamebooster/ui/ExperienceSettingsFragment$a;->e:Z

    invoke-virtual {p1, v1, v2, v2}, Lcom/miui/gamebooster/widget/CheckBoxSettingItemView;->e(ZZZ)V

    invoke-static {v0}, Lcom/miui/gamebooster/ui/ExperienceSettingsFragment;->g0(Lcom/miui/gamebooster/ui/ExperienceSettingsFragment;)Lcom/miui/gamebooster/widget/CheckBoxSettingItemView;

    move-result-object p1

    iget-boolean v0, p0, Lcom/miui/gamebooster/ui/ExperienceSettingsFragment$a;->f:Z

    invoke-virtual {p1, v0, v2, v2}, Lcom/miui/gamebooster/widget/CheckBoxSettingItemView;->e(ZZZ)V

    :cond_1
    :goto_0
    return-void
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/miui/gamebooster/ui/ExperienceSettingsFragment$a;->a([Ljava/lang/Void;)Ljava/lang/Integer;

    move-result-object p1

    return-object p1
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p0, p1}, Lcom/miui/gamebooster/ui/ExperienceSettingsFragment$a;->b(Ljava/lang/Integer;)V

    return-void
.end method
