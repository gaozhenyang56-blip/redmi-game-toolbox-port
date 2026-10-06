.class Lcom/miui/gamebooster/ui/GameBoosterSettingFragment$i;
.super Landroid/os/AsyncTask;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/gamebooster/ui/GameBoosterSettingFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "i"
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
.field private a:Z

.field private b:Z

.field private c:I

.field private final d:Ljava/lang/ref/WeakReference;
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

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/miui/gamebooster/ui/GameBoosterSettingFragment$i;->a:Z

    iput-boolean v0, p0, Lcom/miui/gamebooster/ui/GameBoosterSettingFragment$i;->b:Z

    iput v0, p0, Lcom/miui/gamebooster/ui/GameBoosterSettingFragment$i;->c:I

    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/miui/gamebooster/ui/GameBoosterSettingFragment$i;->d:Ljava/lang/ref/WeakReference;

    return-void
.end method


# virtual methods
.method protected varargs a([Ljava/lang/Void;)Ljava/lang/Boolean;
    .locals 2

    iget-object p1, p0, Lcom/miui/gamebooster/ui/GameBoosterSettingFragment$i;->d:Ljava/lang/ref/WeakReference;

    invoke-virtual {p1}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/miui/gamebooster/ui/GameBoosterSettingFragment;

    invoke-static {p1}, Lcom/miui/gamebooster/ui/GameBoosterSettingFragment;->d1(Lcom/miui/gamebooster/ui/GameBoosterSettingFragment;)Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lc7/c;->a(Landroid/app/Activity;)Z

    move-result v0

    if-nez v0, :cond_4

    invoke-virtual {p0}, Landroid/os/AsyncTask;->isCancelled()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-static {p1}, Lcom/miui/gamebooster/ui/GameBoosterSettingFragment;->i1(Lcom/miui/gamebooster/ui/GameBoosterSettingFragment;)Lm6/a;

    const/4 v0, 0x0

    invoke-static {v0}, Lm6/a;->D(Z)Z

    move-result v1

    iput-boolean v1, p0, Lcom/miui/gamebooster/ui/GameBoosterSettingFragment$i;->a:Z

    invoke-static {p1}, Lcom/miui/gamebooster/ui/GameBoosterSettingFragment;->i1(Lcom/miui/gamebooster/ui/GameBoosterSettingFragment;)Lm6/a;

    invoke-static {v0}, Lm6/a;->c(I)I

    move-result v1

    iput v1, p0, Lcom/miui/gamebooster/ui/GameBoosterSettingFragment$i;->c:I

    invoke-static {p1}, Lcom/miui/gamebooster/ui/GameBoosterSettingFragment;->i1(Lcom/miui/gamebooster/ui/GameBoosterSettingFragment;)Lm6/a;

    invoke-static {v0}, Lm6/a;->q(Z)Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-static {p1}, Lcom/miui/gamebooster/ui/GameBoosterSettingFragment;->d1(Lcom/miui/gamebooster/ui/GameBoosterSettingFragment;)Landroid/app/Activity;

    move-result-object v1

    invoke-static {v1}, La8/g0;->l0(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_1

    iget v1, p0, Lcom/miui/gamebooster/ui/GameBoosterSettingFragment$i;->c:I

    add-int/lit8 v1, v1, -0x1

    iput v1, p0, Lcom/miui/gamebooster/ui/GameBoosterSettingFragment$i;->c:I

    :cond_1
    invoke-static {}, La8/g0;->n0()Z

    move-result v1

    if-nez v1, :cond_2

    invoke-static {}, La8/g0;->j0()Z

    move-result v1

    if-eqz v1, :cond_3

    :cond_2
    invoke-static {p1}, Lcom/miui/gamebooster/ui/GameBoosterSettingFragment;->i1(Lcom/miui/gamebooster/ui/GameBoosterSettingFragment;)Lm6/a;

    invoke-static {v0}, Lm6/a;->v(Z)Z

    move-result p1

    iput-boolean p1, p0, Lcom/miui/gamebooster/ui/GameBoosterSettingFragment$i;->b:Z

    :cond_3
    sget-object p1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    return-object p1

    :cond_4
    :goto_0
    sget-object p1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    return-object p1
.end method

.method protected b(Ljava/lang/Boolean;)V
    .locals 9

    invoke-super {p0, p1}, Landroid/os/AsyncTask;->onPostExecute(Ljava/lang/Object;)V

    iget-object p1, p0, Lcom/miui/gamebooster/ui/GameBoosterSettingFragment$i;->d:Ljava/lang/ref/WeakReference;

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
    iget-boolean v0, p0, Lcom/miui/gamebooster/ui/GameBoosterSettingFragment$i;->a:Z

    const v1, 0x7f12180f

    const v2, 0x7f120919

    if-eqz v0, :cond_1

    invoke-static {p1}, Lcom/miui/gamebooster/ui/GameBoosterSettingFragment;->h0(Lcom/miui/gamebooster/ui/GameBoosterSettingFragment;)Lmiuix/preference/TextPreference;

    move-result-object v0

    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    goto :goto_0

    :cond_1
    invoke-static {p1}, Lcom/miui/gamebooster/ui/GameBoosterSettingFragment;->h0(Lcom/miui/gamebooster/ui/GameBoosterSettingFragment;)Lmiuix/preference/TextPreference;

    move-result-object v0

    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    :goto_0
    invoke-virtual {v0, v3}, Lmiuix/preference/TextPreference;->setText(Ljava/lang/String;)V

    invoke-static {p1}, Lcom/miui/gamebooster/ui/GameBoosterSettingFragment;->i0(Lcom/miui/gamebooster/ui/GameBoosterSettingFragment;)Lmiuix/preference/TextPreference;

    move-result-object v0

    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f100030

    iget v5, p0, Lcom/miui/gamebooster/ui/GameBoosterSettingFragment$i;->c:I

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v6, v7

    invoke-virtual {v3, v4, v5, v6}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lmiuix/preference/TextPreference;->setText(Ljava/lang/String;)V

    invoke-static {}, La8/g0;->n0()Z

    move-result v0

    if-nez v0, :cond_2

    invoke-static {}, La8/g0;->j0()Z

    move-result v0

    if-eqz v0, :cond_4

    :cond_2
    iget-boolean v0, p0, Lcom/miui/gamebooster/ui/GameBoosterSettingFragment$i;->b:Z

    if-eqz v0, :cond_3

    invoke-static {p1}, Lcom/miui/gamebooster/ui/GameBoosterSettingFragment;->j0(Lcom/miui/gamebooster/ui/GameBoosterSettingFragment;)Lmiuix/preference/TextPreference;

    move-result-object v0

    invoke-virtual {v0, v1}, Lmiuix/preference/TextPreference;->setText(I)V

    goto :goto_1

    :cond_3
    invoke-static {p1}, Lcom/miui/gamebooster/ui/GameBoosterSettingFragment;->j0(Lcom/miui/gamebooster/ui/GameBoosterSettingFragment;)Lmiuix/preference/TextPreference;

    move-result-object v0

    invoke-virtual {v0, v2}, Lmiuix/preference/TextPreference;->setText(I)V

    :cond_4
    :goto_1
    invoke-static {p1}, Lcom/miui/gamebooster/ui/GameBoosterSettingFragment;->k0(Lcom/miui/gamebooster/ui/GameBoosterSettingFragment;)Landroidx/preference/CheckBoxPreference;

    move-result-object p1

    invoke-static {}, Lu6/f;->b()Z

    move-result v0

    invoke-virtual {p1, v0}, Landroidx/preference/TwoStatePreference;->setChecked(Z)V

    return-void
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/miui/gamebooster/ui/GameBoosterSettingFragment$i;->a([Ljava/lang/Void;)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p0, p1}, Lcom/miui/gamebooster/ui/GameBoosterSettingFragment$i;->b(Ljava/lang/Boolean;)V

    return-void
.end method
