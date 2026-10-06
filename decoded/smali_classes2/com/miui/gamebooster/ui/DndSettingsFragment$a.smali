.class Lcom/miui/gamebooster/ui/DndSettingsFragment$a;
.super Landroid/os/AsyncTask;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/gamebooster/ui/DndSettingsFragment;
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
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation


# instance fields
.field private final a:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Lcom/miui/gamebooster/ui/DndSettingsFragment;",
            ">;"
        }
    .end annotation
.end field

.field private b:Z

.field private c:Z

.field private d:Z

.field private e:I


# direct methods
.method constructor <init>(Lcom/miui/gamebooster/ui/DndSettingsFragment;)V
    .locals 1

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/miui/gamebooster/ui/DndSettingsFragment$a;->b:Z

    iput-boolean v0, p0, Lcom/miui/gamebooster/ui/DndSettingsFragment$a;->c:Z

    iput-boolean v0, p0, Lcom/miui/gamebooster/ui/DndSettingsFragment$a;->d:Z

    iput v0, p0, Lcom/miui/gamebooster/ui/DndSettingsFragment$a;->e:I

    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/miui/gamebooster/ui/DndSettingsFragment$a;->a:Ljava/lang/ref/WeakReference;

    return-void
.end method


# virtual methods
.method protected varargs a([Ljava/lang/Void;)Ljava/lang/Boolean;
    .locals 3

    iget-object p1, p0, Lcom/miui/gamebooster/ui/DndSettingsFragment$a;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {p1}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/miui/gamebooster/ui/DndSettingsFragment;

    if-nez p1, :cond_0

    sget-object p1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    return-object p1

    :cond_0
    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    if-eqz p1, :cond_5

    invoke-virtual {p1}, Landroid/app/Activity;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_5

    invoke-virtual {p1}, Landroid/app/Activity;->isDestroyed()Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_0

    :cond_1
    const/4 v0, 0x1

    invoke-static {v0}, Lm6/a;->y(Z)Z

    move-result v1

    iput-boolean v1, p0, Lcom/miui/gamebooster/ui/DndSettingsFragment$a;->b:Z

    invoke-static {v0}, Lm6/a;->k(Z)Z

    move-result v1

    iput-boolean v1, p0, Lcom/miui/gamebooster/ui/DndSettingsFragment$a;->c:Z

    const/4 v1, 0x0

    invoke-static {v1}, Lm6/a;->c(I)I

    move-result v2

    iput v2, p0, Lcom/miui/gamebooster/ui/DndSettingsFragment$a;->e:I

    invoke-static {}, La8/g0;->n0()Z

    move-result v2

    if-nez v2, :cond_2

    invoke-static {}, La8/g0;->j0()Z

    move-result v2

    if-eqz v2, :cond_3

    :cond_2
    invoke-static {v1}, Lm6/a;->v(Z)Z

    move-result v2

    iput-boolean v2, p0, Lcom/miui/gamebooster/ui/DndSettingsFragment$a;->d:Z

    :cond_3
    invoke-static {p1}, La8/g0;->l0(Landroid/content/Context;)Z

    move-result p1

    if-nez p1, :cond_4

    invoke-static {v1}, Lm6/a;->q(Z)Z

    move-result p1

    if-eqz p1, :cond_4

    iget p1, p0, Lcom/miui/gamebooster/ui/DndSettingsFragment$a;->e:I

    sub-int/2addr p1, v0

    iput p1, p0, Lcom/miui/gamebooster/ui/DndSettingsFragment$a;->e:I

    :cond_4
    sget-object p1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    return-object p1

    :cond_5
    :goto_0
    sget-object p1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    return-object p1
.end method

.method protected b(Ljava/lang/Boolean;)V
    .locals 8

    invoke-super {p0, p1}, Landroid/os/AsyncTask;->onPostExecute(Ljava/lang/Object;)V

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-nez p1, :cond_0

    return-void

    :cond_0
    iget-object p1, p0, Lcom/miui/gamebooster/ui/DndSettingsFragment$a;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {p1}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/miui/gamebooster/ui/DndSettingsFragment;

    if-nez p1, :cond_1

    return-void

    :cond_1
    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    if-eqz v0, :cond_5

    invoke-virtual {v0}, Landroid/app/Activity;->isFinishing()Z

    move-result v1

    if-nez v1, :cond_5

    invoke-virtual {v0}, Landroid/app/Activity;->isDestroyed()Z

    move-result v1

    if-eqz v1, :cond_2

    goto :goto_1

    :cond_2
    invoke-static {p1}, Lcom/miui/gamebooster/ui/DndSettingsFragment;->b0(Lcom/miui/gamebooster/ui/DndSettingsFragment;)Lcom/miui/gamebooster/widget/CheckBoxSettingItemView;

    move-result-object v1

    iget-boolean v2, p0, Lcom/miui/gamebooster/ui/DndSettingsFragment$a;->b:Z

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3, v3}, Lcom/miui/gamebooster/widget/CheckBoxSettingItemView;->e(ZZZ)V

    invoke-static {p1}, Lcom/miui/gamebooster/ui/DndSettingsFragment;->c0(Lcom/miui/gamebooster/ui/DndSettingsFragment;)Lcom/miui/gamebooster/widget/CheckBoxSettingItemView;

    move-result-object v1

    iget-boolean v2, p0, Lcom/miui/gamebooster/ui/DndSettingsFragment$a;->c:Z

    invoke-virtual {v1, v2, v3, v3}, Lcom/miui/gamebooster/widget/CheckBoxSettingItemView;->e(ZZZ)V

    invoke-static {p1}, Lcom/miui/gamebooster/ui/DndSettingsFragment;->d0(Lcom/miui/gamebooster/ui/DndSettingsFragment;)Lcom/miui/gamebooster/widget/ValueSettingItemView;

    move-result-object v1

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v4, 0x7f100030

    iget v5, p0, Lcom/miui/gamebooster/ui/DndSettingsFragment$a;->e:I

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v6, v3

    invoke-virtual {v2, v4, v5, v6}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/miui/gamebooster/widget/ValueSettingItemView;->setValue(Ljava/lang/String;)V

    invoke-static {}, La8/g0;->n0()Z

    move-result v1

    if-nez v1, :cond_3

    invoke-static {}, La8/g0;->j0()Z

    move-result v1

    if-eqz v1, :cond_5

    :cond_3
    invoke-static {p1}, Lcom/miui/gamebooster/ui/DndSettingsFragment;->e0(Lcom/miui/gamebooster/ui/DndSettingsFragment;)Lcom/miui/gamebooster/widget/ValueSettingItemView;

    move-result-object p1

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    iget-boolean v1, p0, Lcom/miui/gamebooster/ui/DndSettingsFragment$a;->d:Z

    if-eqz v1, :cond_4

    const v1, 0x7f12180f

    goto :goto_0

    :cond_4
    const v1, 0x7f120919

    :goto_0
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/miui/gamebooster/widget/ValueSettingItemView;->setValue(Ljava/lang/String;)V

    :cond_5
    :goto_1
    return-void
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/miui/gamebooster/ui/DndSettingsFragment$a;->a([Ljava/lang/Void;)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p0, p1}, Lcom/miui/gamebooster/ui/DndSettingsFragment$a;->b(Ljava/lang/Boolean;)V

    return-void
.end method
