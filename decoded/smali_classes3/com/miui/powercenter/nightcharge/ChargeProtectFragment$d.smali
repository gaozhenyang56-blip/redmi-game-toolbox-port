.class Lcom/miui/powercenter/nightcharge/ChargeProtectFragment$d;
.super Landroid/os/Handler;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/powercenter/nightcharge/ChargeProtectFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "d"
.end annotation


# instance fields
.field private a:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Lcom/miui/powercenter/nightcharge/ChargeProtectFragment;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lcom/miui/powercenter/nightcharge/ChargeProtectFragment;)V
    .locals 1

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/miui/powercenter/nightcharge/ChargeProtectFragment$d;->a:Ljava/lang/ref/WeakReference;

    return-void
.end method

.method private a()V
    .locals 5

    iget-object v0, p0, Lcom/miui/powercenter/nightcharge/ChargeProtectFragment$d;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/powercenter/nightcharge/ChargeProtectFragment;

    invoke-static {}, Lce/g;->c()I

    move-result v1

    if-ltz v1, :cond_0

    invoke-static {v0}, Lcom/miui/powercenter/nightcharge/ChargeProtectFragment;->f0(Lcom/miui/powercenter/nightcharge/ChargeProtectFragment;)Lmiuix/preference/TextPreference;

    move-result-object v2

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Lmiuix/preference/TextPreference;->setText(Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    invoke-static {v0}, Lcom/miui/powercenter/nightcharge/ChargeProtectFragment;->q0(Lcom/miui/powercenter/nightcharge/ChargeProtectFragment;)Lmiuix/preference/PreferenceCategory;

    move-result-object v1

    invoke-static {v0}, Lcom/miui/powercenter/nightcharge/ChargeProtectFragment;->f0(Lcom/miui/powercenter/nightcharge/ChargeProtectFragment;)Lmiuix/preference/TextPreference;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroidx/preference/PreferenceGroup;->removePreference(Landroidx/preference/Preference;)Z

    :goto_0
    invoke-static {}, Lme/j;->d()Ljava/lang/String;

    move-result-object v1

    invoke-static {}, Lme/j;->i()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1}, Lcom/miui/powercenter/nightcharge/ChargeProtectFragment;->g0(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-static {v0}, Lcom/miui/powercenter/nightcharge/ChargeProtectFragment;->h0(Lcom/miui/powercenter/nightcharge/ChargeProtectFragment;)Lmiuix/preference/TextPreference;

    move-result-object v3

    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {v1, v4}, Lme/b0;->s(Ljava/lang/String;Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Lmiuix/preference/TextPreference;->setText(Ljava/lang/String;)V

    goto :goto_1

    :cond_1
    invoke-static {v0}, Lcom/miui/powercenter/nightcharge/ChargeProtectFragment;->q0(Lcom/miui/powercenter/nightcharge/ChargeProtectFragment;)Lmiuix/preference/PreferenceCategory;

    move-result-object v1

    invoke-static {v0}, Lcom/miui/powercenter/nightcharge/ChargeProtectFragment;->h0(Lcom/miui/powercenter/nightcharge/ChargeProtectFragment;)Lmiuix/preference/TextPreference;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroidx/preference/PreferenceGroup;->removePreference(Landroidx/preference/Preference;)Z

    :goto_1
    invoke-static {v2}, Lcom/miui/powercenter/nightcharge/ChargeProtectFragment;->g0(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-static {v0}, Lcom/miui/powercenter/nightcharge/ChargeProtectFragment;->i0(Lcom/miui/powercenter/nightcharge/ChargeProtectFragment;)Lmiuix/preference/TextPreference;

    move-result-object v1

    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v2, v0}, Lme/b0;->s(Ljava/lang/String;Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    goto :goto_2

    :cond_2
    invoke-static {v0}, Lcom/miui/powercenter/nightcharge/ChargeProtectFragment;->i0(Lcom/miui/powercenter/nightcharge/ChargeProtectFragment;)Lmiuix/preference/TextPreference;

    move-result-object v1

    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v2, 0x7f12104a

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    :goto_2
    invoke-virtual {v1, v0}, Lmiuix/preference/TextPreference;->setText(Ljava/lang/String;)V

    return-void
.end method

.method private b()V
    .locals 7

    iget-object v0, p0, Lcom/miui/powercenter/nightcharge/ChargeProtectFragment$d;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/powercenter/nightcharge/ChargeProtectFragment;

    invoke-static {}, Lee/b;->f()I

    move-result v1

    iget-object v2, p0, Lcom/miui/powercenter/nightcharge/ChargeProtectFragment$d;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {v2}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/miui/powercenter/nightcharge/ChargeProtectFragment;

    invoke-virtual {v2}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const/4 v3, 0x1

    new-array v4, v3, [Ljava/lang/Object;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    const/4 v6, 0x0

    aput-object v5, v4, v6

    const v5, 0x7f1000f2

    invoke-virtual {v2, v5, v1, v4}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v2

    new-array v3, v3, [Ljava/lang/Object;

    aput-object v1, v3, v6

    const-string v1, "%s"

    invoke-static {v2, v1, v3}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0}, Lcom/miui/powercenter/nightcharge/ChargeProtectFragment;->e0(Lcom/miui/powercenter/nightcharge/ChargeProtectFragment;)Lmiuix/preference/TextPreference;

    move-result-object v0

    invoke-virtual {v0, v1}, Lmiuix/preference/TextPreference;->setText(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 5

    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    iget-object v0, p0, Lcom/miui/powercenter/nightcharge/ChargeProtectFragment$d;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/powercenter/nightcharge/ChargeProtectFragment;

    if-eqz v0, :cond_7

    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    if-nez v1, :cond_0

    goto/16 :goto_1

    :cond_0
    iget v1, p1, Landroid/os/Message;->what:I

    const/4 v2, 0x1

    if-eq v1, v2, :cond_5

    const/4 v3, 0x2

    if-eq v1, v3, :cond_1

    goto :goto_1

    :cond_1
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-eqz p1, :cond_4

    invoke-static {}, Lme/b;->L()Z

    move-result p1

    if-eqz p1, :cond_2

    invoke-static {}, Lme/b;->q()I

    move-result p1

    invoke-static {p1}, Lcom/miui/powercenter/nightcharge/ChargeProtectFragment;->l0(I)Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-static {v0}, Lcom/miui/powercenter/nightcharge/ChargeProtectFragment;->m0(Lcom/miui/powercenter/nightcharge/ChargeProtectFragment;)Lmiuix/preference/TextPreference;

    move-result-object v1

    invoke-static {}, Ljava/text/NumberFormat;->getPercentInstance()Ljava/text/NumberFormat;

    move-result-object v2

    int-to-float p1, p1

    const/high16 v3, 0x42c80000    # 100.0f

    div-float/2addr p1, v3

    float-to-double v3, p1

    invoke-virtual {v2, v3, v4}, Ljava/text/NumberFormat;->format(D)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Lmiuix/preference/TextPreference;->setText(Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    invoke-static {v0}, Lcom/miui/powercenter/nightcharge/ChargeProtectFragment;->m0(Lcom/miui/powercenter/nightcharge/ChargeProtectFragment;)Lmiuix/preference/TextPreference;

    move-result-object p1

    invoke-static {v0}, Lcom/miui/powercenter/nightcharge/ChargeProtectFragment;->n0(Lcom/miui/powercenter/nightcharge/ChargeProtectFragment;)[I

    move-result-object v1

    invoke-static {}, Lcom/miui/powercenter/nightcharge/ChargeProtectFragment;->o0()I

    move-result v3

    sub-int/2addr v3, v2

    aget v1, v1, v3

    invoke-virtual {p1, v1}, Lmiuix/preference/TextPreference;->setText(I)V

    :cond_3
    :goto_0
    invoke-static {v0}, Lcom/miui/powercenter/nightcharge/ChargeProtectFragment;->p0(Lcom/miui/powercenter/nightcharge/ChargeProtectFragment;)V

    goto :goto_1

    :cond_4
    invoke-static {v0}, Lcom/miui/powercenter/nightcharge/ChargeProtectFragment;->q0(Lcom/miui/powercenter/nightcharge/ChargeProtectFragment;)Lmiuix/preference/PreferenceCategory;

    move-result-object p1

    invoke-static {v0}, Lcom/miui/powercenter/nightcharge/ChargeProtectFragment;->m0(Lcom/miui/powercenter/nightcharge/ChargeProtectFragment;)Lmiuix/preference/TextPreference;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceGroup;->removePreference(Landroidx/preference/Preference;)Z

    goto :goto_1

    :cond_5
    invoke-static {}, Lce/g;->E()Z

    move-result v1

    if-eqz v1, :cond_6

    invoke-direct {p0}, Lcom/miui/powercenter/nightcharge/ChargeProtectFragment$d;->a()V

    goto :goto_1

    :cond_6
    invoke-static {v0}, Lcom/miui/powercenter/nightcharge/ChargeProtectFragment;->k0(Lcom/miui/powercenter/nightcharge/ChargeProtectFragment;)Lmiuix/preference/TextPreference;

    move-result-object v0

    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Ljava/lang/String;

    invoke-virtual {v0, p1}, Lmiuix/preference/TextPreference;->setText(Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/miui/powercenter/nightcharge/ChargeProtectFragment$d;->b()V

    :cond_7
    :goto_1
    return-void
.end method
