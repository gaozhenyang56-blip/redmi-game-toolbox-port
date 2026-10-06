.class public Lcom/miui/gamebooster/ui/SettingsTabFragment;
.super Lcom/miui/common/base/ui/BaseFragment;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Ll8/g;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/gamebooster/ui/SettingsTabFragment$a;,
        Lcom/miui/gamebooster/ui/SettingsTabFragment$Tab;
    }
.end annotation


# instance fields
.field private a:Lcom/miui/gamebooster/ui/SettingsTabFragment$a;

.field private b:I

.field private c:Lcom/miui/gamebooster/widget/RedDotTextView;

.field private d:Lcom/miui/gamebooster/widget/RedDotTextView;

.field private e:Lcom/miui/gamebooster/widget/RedDotTextView;

.field private f:Lcom/miui/gamebooster/widget/RedDotTextView;

.field private g:Li7/i$f;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/miui/common/base/ui/BaseFragment;-><init>()V

    const/4 v0, -0x1

    iput v0, p0, Lcom/miui/gamebooster/ui/SettingsTabFragment;->b:I

    return-void
.end method

.method public static synthetic b0(Lcom/miui/gamebooster/ui/SettingsTabFragment;Z)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/miui/gamebooster/ui/SettingsTabFragment;->c0(Z)V

    return-void
.end method

.method private synthetic c0(Z)V
    .locals 1

    iget-object v0, p0, Lcom/miui/gamebooster/ui/SettingsTabFragment;->c:Lcom/miui/gamebooster/widget/RedDotTextView;

    invoke-virtual {v0, p1}, Lcom/miui/gamebooster/widget/RedDotTextView;->setDotVisible(Z)V

    return-void
.end method

.method private d0(I)V
    .locals 8

    iget v0, p0, Lcom/miui/gamebooster/ui/SettingsTabFragment;->b:I

    if-ne v0, p1, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x4

    new-array v1, v0, [Landroid/view/View;

    iget-object v2, p0, Lcom/miui/gamebooster/ui/SettingsTabFragment;->c:Lcom/miui/gamebooster/widget/RedDotTextView;

    const/4 v3, 0x0

    aput-object v2, v1, v3

    iget-object v2, p0, Lcom/miui/gamebooster/ui/SettingsTabFragment;->d:Lcom/miui/gamebooster/widget/RedDotTextView;

    const/4 v4, 0x1

    aput-object v2, v1, v4

    iget-object v2, p0, Lcom/miui/gamebooster/ui/SettingsTabFragment;->e:Lcom/miui/gamebooster/widget/RedDotTextView;

    const/4 v5, 0x2

    aput-object v2, v1, v5

    iget-object v2, p0, Lcom/miui/gamebooster/ui/SettingsTabFragment;->f:Lcom/miui/gamebooster/widget/RedDotTextView;

    const/4 v6, 0x3

    aput-object v2, v1, v6

    move v2, v3

    :goto_0
    if-ge v2, v0, :cond_2

    aget-object v7, v1, v2

    if-eqz v7, :cond_1

    invoke-virtual {v7, v3}, Landroid/view/View;->setSelected(Z)V

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    if-eqz p1, :cond_6

    if-eq p1, v4, :cond_5

    if-eq p1, v5, :cond_4

    if-eq p1, v6, :cond_3

    goto :goto_1

    :cond_3
    iget-object v0, p0, Lcom/miui/gamebooster/ui/SettingsTabFragment;->f:Lcom/miui/gamebooster/widget/RedDotTextView;

    goto :goto_1

    :cond_4
    iget-object v0, p0, Lcom/miui/gamebooster/ui/SettingsTabFragment;->e:Lcom/miui/gamebooster/widget/RedDotTextView;

    goto :goto_1

    :cond_5
    iget-object v0, p0, Lcom/miui/gamebooster/ui/SettingsTabFragment;->d:Lcom/miui/gamebooster/widget/RedDotTextView;

    goto :goto_1

    :cond_6
    iget-object v0, p0, Lcom/miui/gamebooster/ui/SettingsTabFragment;->c:Lcom/miui/gamebooster/widget/RedDotTextView;

    :goto_1
    if-eqz v0, :cond_7

    invoke-virtual {v0, v4}, Landroid/view/View;->setSelected(Z)V

    :cond_7
    iput p1, p0, Lcom/miui/gamebooster/ui/SettingsTabFragment;->b:I

    iget-object v0, p0, Lcom/miui/gamebooster/ui/SettingsTabFragment;->a:Lcom/miui/gamebooster/ui/SettingsTabFragment$a;

    if-eqz v0, :cond_8

    invoke-interface {v0, p1}, Lcom/miui/gamebooster/ui/SettingsTabFragment$a;->e(I)V

    :cond_8
    return-void
.end method


# virtual methods
.method public e0(Ljava/lang/Object;)V
    .locals 1

    instance-of v0, p1, Lcom/miui/gamebooster/ui/SettingsTabFragment$a;

    if-eqz v0, :cond_0

    check-cast p1, Lcom/miui/gamebooster/ui/SettingsTabFragment$a;

    iput-object p1, p0, Lcom/miui/gamebooster/ui/SettingsTabFragment;->a:Lcom/miui/gamebooster/ui/SettingsTabFragment$a;

    :cond_0
    return-void
.end method

.method protected initView()V
    .locals 5

    const v0, 0x7f0b0b3f

    invoke-virtual {p0, v0}, Lcom/miui/common/base/ui/BaseFragment;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/miui/gamebooster/widget/RedDotTextView;

    iput-object v0, p0, Lcom/miui/gamebooster/ui/SettingsTabFragment;->c:Lcom/miui/gamebooster/widget/RedDotTextView;

    const v0, 0x7f0b0b44

    invoke-virtual {p0, v0}, Lcom/miui/common/base/ui/BaseFragment;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/miui/gamebooster/widget/RedDotTextView;

    iput-object v0, p0, Lcom/miui/gamebooster/ui/SettingsTabFragment;->d:Lcom/miui/gamebooster/widget/RedDotTextView;

    const v0, 0x7f0b0b3d

    invoke-virtual {p0, v0}, Lcom/miui/common/base/ui/BaseFragment;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/miui/gamebooster/widget/RedDotTextView;

    iput-object v0, p0, Lcom/miui/gamebooster/ui/SettingsTabFragment;->e:Lcom/miui/gamebooster/widget/RedDotTextView;

    const v0, 0x7f0b0b42

    invoke-virtual {p0, v0}, Lcom/miui/common/base/ui/BaseFragment;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/miui/gamebooster/widget/RedDotTextView;

    iput-object v0, p0, Lcom/miui/gamebooster/ui/SettingsTabFragment;->f:Lcom/miui/gamebooster/widget/RedDotTextView;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    instance-of v1, v0, Lcom/miui/gamebooster/ui/SettingsActivity;

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz v1, :cond_0

    check-cast v0, Lcom/miui/gamebooster/ui/SettingsActivity;

    invoke-virtual {v0}, Lcom/miui/gamebooster/ui/SettingsActivity;->q0()Z

    move-result v0

    if-eqz v0, :cond_0

    move v0, v2

    goto :goto_0

    :cond_0
    move v0, v3

    :goto_0
    if-nez v0, :cond_1

    invoke-static {}, La8/a1;->d()Z

    move-result v0

    if-nez v0, :cond_2

    :cond_1
    invoke-static {}, La8/b;->d()La8/b;

    move-result-object v0

    const/high16 v1, 0x40600000    # 3.5f

    invoke-virtual {v0, v1}, La8/b;->t(F)Z

    move-result v0

    if-nez v0, :cond_2

    invoke-static {}, La8/g0;->v()Z

    move-result v0

    if-nez v0, :cond_3

    :cond_2
    iget-object v0, p0, Lcom/miui/gamebooster/ui/SettingsTabFragment;->f:Lcom/miui/gamebooster/widget/RedDotTextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    :cond_3
    const/4 v0, 0x4

    new-array v1, v0, [Landroid/view/View;

    iget-object v4, p0, Lcom/miui/gamebooster/ui/SettingsTabFragment;->c:Lcom/miui/gamebooster/widget/RedDotTextView;

    aput-object v4, v1, v3

    iget-object v4, p0, Lcom/miui/gamebooster/ui/SettingsTabFragment;->d:Lcom/miui/gamebooster/widget/RedDotTextView;

    aput-object v4, v1, v2

    const/4 v2, 0x2

    iget-object v4, p0, Lcom/miui/gamebooster/ui/SettingsTabFragment;->e:Lcom/miui/gamebooster/widget/RedDotTextView;

    aput-object v4, v1, v2

    const/4 v2, 0x3

    iget-object v4, p0, Lcom/miui/gamebooster/ui/SettingsTabFragment;->f:Lcom/miui/gamebooster/widget/RedDotTextView;

    aput-object v4, v1, v2

    move v2, v3

    :goto_1
    if-ge v2, v0, :cond_4

    aget-object v4, v1, v2

    invoke-virtual {v4, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_4
    invoke-direct {p0, v3}, Lcom/miui/gamebooster/ui/SettingsTabFragment;->d0(I)V

    new-instance v0, Ly7/j;

    invoke-direct {v0, p0}, Ly7/j;-><init>(Lcom/miui/gamebooster/ui/SettingsTabFragment;)V

    iput-object v0, p0, Lcom/miui/gamebooster/ui/SettingsTabFragment;->g:Li7/i$f;

    iget-object v0, p0, Lcom/miui/gamebooster/ui/SettingsTabFragment;->c:Lcom/miui/gamebooster/widget/RedDotTextView;

    invoke-static {}, Li7/i;->l()Li7/i;

    move-result-object v1

    invoke-virtual {v1}, Li7/i;->r()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/miui/gamebooster/widget/RedDotTextView;->setDotVisible(Z)V

    invoke-static {}, Li7/i;->l()Li7/i;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/gamebooster/ui/SettingsTabFragment;->g:Li7/i$f;

    invoke-virtual {v0, v1}, Li7/i;->k(Li7/i$f;)V

    return-void
.end method

.method public k(Z)V
    .locals 5

    const/4 v0, 0x3

    new-array v1, v0, [Landroid/view/View;

    iget-object v2, p0, Lcom/miui/gamebooster/ui/SettingsTabFragment;->d:Lcom/miui/gamebooster/widget/RedDotTextView;

    const/4 v3, 0x0

    aput-object v2, v1, v3

    iget-object v2, p0, Lcom/miui/gamebooster/ui/SettingsTabFragment;->e:Lcom/miui/gamebooster/widget/RedDotTextView;

    const/4 v4, 0x1

    aput-object v2, v1, v4

    iget-object v2, p0, Lcom/miui/gamebooster/ui/SettingsTabFragment;->f:Lcom/miui/gamebooster/widget/RedDotTextView;

    const/4 v4, 0x2

    aput-object v2, v1, v4

    if-nez p1, :cond_0

    const v2, 0x3e4ccccd    # 0.2f

    goto :goto_0

    :cond_0
    const/high16 v2, 0x3f800000    # 1.0f

    :goto_0
    if-ge v3, v0, :cond_2

    aget-object v4, v1, v3

    if-eqz v4, :cond_1

    invoke-virtual {v4, p1}, Landroid/view/View;->setEnabled(Z)V

    invoke-virtual {v4, v2}, Landroid/view/View;->setAlpha(F)V

    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_2
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 0

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    sparse-switch p1, :sswitch_data_0

    const/4 p1, -0x1

    goto :goto_0

    :sswitch_0
    const/4 p1, 0x1

    goto :goto_0

    :sswitch_1
    const/4 p1, 0x3

    goto :goto_0

    :sswitch_2
    const/4 p1, 0x0

    goto :goto_0

    :sswitch_3
    const/4 p1, 0x2

    :goto_0
    invoke-direct {p0, p1}, Lcom/miui/gamebooster/ui/SettingsTabFragment;->d0(I)V

    return-void

    :sswitch_data_0
    .sparse-switch
        0x7f0b0b3d -> :sswitch_3
        0x7f0b0b3f -> :sswitch_2
        0x7f0b0b42 -> :sswitch_1
        0x7f0b0b44 -> :sswitch_0
    .end sparse-switch
.end method

.method protected onCreateViewLayout()I
    .locals 1

    const v0, 0x7f0e01e1

    return v0
.end method

.method protected onCustomizeActionBar(Landroidx/appcompat/app/ActionBar;)I
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public onDestroy()V
    .locals 2

    invoke-super {p0}, Lmiuix/appcompat/app/Fragment;->onDestroy()V

    invoke-static {}, Li7/i;->l()Li7/i;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/gamebooster/ui/SettingsTabFragment;->g:Li7/i$f;

    invoke-virtual {v0, v1}, Li7/i;->A(Li7/i$f;)V

    return-void
.end method
