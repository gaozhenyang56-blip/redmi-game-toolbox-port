.class public Lcom/miui/gamebooster/ui/CompetitionDetailFragment;
.super Lcom/miui/common/base/ui/BaseFragment;
.source "SourceFile"

# interfaces
.implements Ll8/e;
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private a:Landroid/widget/CompoundButton;

.field private b:Landroid/widget/CompoundButton;

.field private c:Landroid/widget/CompoundButton;

.field private d:Landroid/widget/CompoundButton;

.field private e:Landroid/widget/LinearLayout;

.field private f:Landroid/widget/LinearLayout;

.field private g:Landroid/widget/LinearLayout;

.field private h:Landroid/widget/TextView;

.field private i:Landroid/widget/TextView;

.field private final j:Ljava/lang/String;

.field private k:Ll8/f;

.field private l:Landroid/widget/CompoundButton$OnCheckedChangeListener;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/miui/common/base/ui/BaseFragment;-><init>()V

    const-string v0, "CompetitionDetailFragment"

    iput-object v0, p0, Lcom/miui/gamebooster/ui/CompetitionDetailFragment;->j:Ljava/lang/String;

    new-instance v0, Lcom/miui/gamebooster/ui/CompetitionDetailFragment$a;

    invoke-direct {v0, p0}, Lcom/miui/gamebooster/ui/CompetitionDetailFragment$a;-><init>(Lcom/miui/gamebooster/ui/CompetitionDetailFragment;)V

    iput-object v0, p0, Lcom/miui/gamebooster/ui/CompetitionDetailFragment;->l:Landroid/widget/CompoundButton$OnCheckedChangeListener;

    return-void
.end method

.method static synthetic b0(Lcom/miui/gamebooster/ui/CompetitionDetailFragment;IZ)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/miui/gamebooster/ui/CompetitionDetailFragment;->c0(IZ)V

    return-void
.end method

.method private c0(IZ)V
    .locals 1

    sparse-switch p1, :sswitch_data_0

    goto :goto_1

    :sswitch_0
    invoke-static {p2}, Lm6/a;->V(Z)V

    const-string p1, "wlan_switch"

    goto :goto_0

    :sswitch_1
    invoke-static {p2}, Lm6/a;->U(Z)V

    const-string p1, "touch_booster"

    :goto_0
    invoke-static {p1}, Lcom/miui/gamebooster/utils/a$n;->I(Ljava/lang/String;)V

    goto :goto_1

    :sswitch_2
    invoke-static {p2}, La8/v;->d(Z)V

    invoke-static {p2}, La8/v;->e(Z)V

    goto :goto_1

    :sswitch_3
    invoke-static {p2}, Lm6/a;->T(Z)V

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "setCompetitionAudioEnable:"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "CompetitionDetailFragment"

    invoke-static {p2, p1}, Lcom/xiaomi/continuity/netbus/utils/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    :goto_1
    return-void

    :sswitch_data_0
    .sparse-switch
        0x7f0b0a9e -> :sswitch_3
        0x7f0b0aa6 -> :sswitch_2
        0x7f0b0aa8 -> :sswitch_1
        0x7f0b0aa9 -> :sswitch_0
    .end sparse-switch
.end method

.method private d0(Landroid/widget/CompoundButton;Z)V
    .locals 0

    if-eqz p1, :cond_0

    invoke-virtual {p1, p2}, Landroid/widget/CompoundButton;->setChecked(Z)V

    iget-object p2, p0, Lcom/miui/gamebooster/ui/CompetitionDetailFragment;->l:Landroid/widget/CompoundButton$OnCheckedChangeListener;

    invoke-virtual {p1, p2}, Landroid/widget/CompoundButton;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    :cond_0
    return-void
.end method


# virtual methods
.method public S(Ll8/f;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/gamebooster/ui/CompetitionDetailFragment;->k:Ll8/f;

    return-void
.end method

.method protected initView()V
    .locals 5

    const v0, 0x7f0b0bcd

    invoke-virtual {p0, v0}, Lcom/miui/common/base/ui/BaseFragment;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    if-eqz v0, :cond_0

    const v1, 0x7f120ba7

    invoke-virtual {p0, v1}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_0
    const v0, 0x7f0b0c33

    invoke-virtual {p0, v0}, Lcom/miui/common/base/ui/BaseFragment;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-static {}, La8/g0;->l()Z

    move-result v1

    if-eqz v1, :cond_1

    const v1, 0x7f1202ca

    goto :goto_0

    :cond_1
    const v1, 0x7f1202c9

    :goto_0
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    const v0, 0x7f0b0aa9

    invoke-virtual {p0, v0}, Lcom/miui/common/base/ui/BaseFragment;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CompoundButton;

    iput-object v0, p0, Lcom/miui/gamebooster/ui/CompetitionDetailFragment;->a:Landroid/widget/CompoundButton;

    const v0, 0x7f0b0aa8

    invoke-virtual {p0, v0}, Lcom/miui/common/base/ui/BaseFragment;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CompoundButton;

    iput-object v0, p0, Lcom/miui/gamebooster/ui/CompetitionDetailFragment;->b:Landroid/widget/CompoundButton;

    const v0, 0x7f0b0a9e

    invoke-virtual {p0, v0}, Lcom/miui/common/base/ui/BaseFragment;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CompoundButton;

    iput-object v0, p0, Lcom/miui/gamebooster/ui/CompetitionDetailFragment;->c:Landroid/widget/CompoundButton;

    const v0, 0x7f0b0aa6

    invoke-virtual {p0, v0}, Lcom/miui/common/base/ui/BaseFragment;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CompoundButton;

    iput-object v0, p0, Lcom/miui/gamebooster/ui/CompetitionDetailFragment;->d:Landroid/widget/CompoundButton;

    iget-object v0, p0, Lcom/miui/gamebooster/ui/CompetitionDetailFragment;->a:Landroid/widget/CompoundButton;

    invoke-static {}, Lm6/a;->n()Z

    move-result v1

    invoke-direct {p0, v0, v1}, Lcom/miui/gamebooster/ui/CompetitionDetailFragment;->d0(Landroid/widget/CompoundButton;Z)V

    iget-object v0, p0, Lcom/miui/gamebooster/ui/CompetitionDetailFragment;->b:Landroid/widget/CompoundButton;

    invoke-static {}, Lm6/a;->m()Z

    move-result v1

    invoke-direct {p0, v0, v1}, Lcom/miui/gamebooster/ui/CompetitionDetailFragment;->d0(Landroid/widget/CompoundButton;Z)V

    iget-object v0, p0, Lcom/miui/gamebooster/ui/CompetitionDetailFragment;->c:Landroid/widget/CompoundButton;

    invoke-static {}, Lm6/a;->l()Z

    move-result v1

    invoke-direct {p0, v0, v1}, Lcom/miui/gamebooster/ui/CompetitionDetailFragment;->d0(Landroid/widget/CompoundButton;Z)V

    iget-object v0, p0, Lcom/miui/gamebooster/ui/CompetitionDetailFragment;->d:Landroid/widget/CompoundButton;

    invoke-static {}, La8/v;->b()Z

    move-result v1

    invoke-direct {p0, v0, v1}, Lcom/miui/gamebooster/ui/CompetitionDetailFragment;->d0(Landroid/widget/CompoundButton;Z)V

    const v0, 0x7f0b066c

    invoke-virtual {p0, v0}, Lcom/miui/common/base/ui/BaseFragment;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    const/4 v2, 0x0

    if-eqz v0, :cond_3

    invoke-static {}, Lx4/a0;->x()Z

    move-result v3

    if-eqz v3, :cond_3

    if-eqz v1, :cond_3

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v3

    invoke-static {v3}, La8/k2;->B(Landroid/content/Context;)Z

    move-result v3

    if-nez v3, :cond_3

    invoke-static {}, La8/k2;->A()Z

    move-result v3

    const v4, 0x7f071d3d

    if-eqz v3, :cond_2

    invoke-static {v1}, Lx4/a0;->n(Landroid/content/Context;)I

    move-result v3

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v4}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v1

    invoke-virtual {v0, v3, v2, v2, v1}, Landroid/view/View;->setPadding(IIII)V

    goto :goto_1

    :cond_2
    invoke-static {v1}, Lx4/a0;->n(Landroid/content/Context;)I

    move-result v3

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v4}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v1

    invoke-virtual {v0, v2, v2, v3, v1}, Landroid/view/View;->setPadding(IIII)V

    :cond_3
    :goto_1
    const v0, 0x7f0b0342

    invoke-virtual {p0, v0}, Lcom/miui/common/base/ui/BaseFragment;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/miui/gamebooster/ui/CompetitionDetailFragment;->e:Landroid/widget/LinearLayout;

    const v0, 0x7f0b0122

    invoke-virtual {p0, v0}, Lcom/miui/common/base/ui/BaseFragment;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/miui/gamebooster/ui/CompetitionDetailFragment;->f:Landroid/widget/LinearLayout;

    const v0, 0x7f0b0355

    invoke-virtual {p0, v0}, Lcom/miui/common/base/ui/BaseFragment;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/miui/gamebooster/ui/CompetitionDetailFragment;->g:Landroid/widget/LinearLayout;

    const v0, 0x7f0b0ddf

    invoke-virtual {p0, v0}, Lcom/miui/common/base/ui/BaseFragment;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/miui/gamebooster/ui/CompetitionDetailFragment;->h:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/miui/common/base/ui/BaseFragment;->mActivity:Landroid/app/Activity;

    const v3, 0x7f121c9c

    invoke-static {v1, v3}, Lx4/y1;->b(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const v0, 0x7f0b0dde

    invoke-virtual {p0, v0}, Lcom/miui/common/base/ui/BaseFragment;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/miui/gamebooster/ui/CompetitionDetailFragment;->i:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/miui/common/base/ui/BaseFragment;->mActivity:Landroid/app/Activity;

    const v3, 0x7f121c9b

    invoke-static {v1, v3}, Lx4/y1;->b(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-static {}, La8/g0;->K()Z

    move-result v0

    if-nez v0, :cond_4

    iget-object v0, p0, Lcom/miui/gamebooster/ui/CompetitionDetailFragment;->h:Landroid/widget/TextView;

    const v1, 0x7f120906

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    iget-object v0, p0, Lcom/miui/gamebooster/ui/CompetitionDetailFragment;->i:Landroid/widget/TextView;

    const v1, 0x7f120905

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    :cond_4
    invoke-static {}, La8/g0;->M()Z

    move-result v0

    const/16 v1, 0x8

    if-eqz v0, :cond_5

    const v0, 0x7f0b0ddd

    invoke-virtual {p0, v0}, Lcom/miui/common/base/ui/BaseFragment;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    :cond_5
    invoke-static {}, La8/g0;->X()Z

    move-result v0

    if-nez v0, :cond_6

    iget-object v0, p0, Lcom/miui/gamebooster/ui/CompetitionDetailFragment;->e:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    :cond_6
    invoke-static {}, La8/g0;->q()Z

    move-result v0

    if-eqz v0, :cond_7

    iget-object v0, p0, Lcom/miui/gamebooster/ui/CompetitionDetailFragment;->f:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    :cond_7
    invoke-static {}, La8/v;->c()Z

    move-result v0

    if-eqz v0, :cond_8

    iget-object v0, p0, Lcom/miui/gamebooster/ui/CompetitionDetailFragment;->g:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    goto :goto_2

    :cond_8
    iget-object v0, p0, Lcom/miui/gamebooster/ui/CompetitionDetailFragment;->g:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    :goto_2
    const v0, 0x7f0b0139

    invoke-virtual {p0, v0}, Lcom/miui/common/base/ui/BaseFragment;->findViewById(I)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_9

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_9
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 1

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    const v0, 0x7f0b0139

    if-eq p1, v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lcom/miui/gamebooster/ui/CompetitionDetailFragment;->k:Ll8/f;

    if-eqz p1, :cond_1

    invoke-interface {p1}, Ll8/f;->pop()V

    :cond_1
    :goto_0
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 0

    invoke-super {p0, p1}, Lmiuix/appcompat/app/Fragment;->onCreate(Landroid/os/Bundle;)V

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    invoke-static {p1}, La8/k2;->B(Landroid/content/Context;)Z

    move-result p1

    if-eqz p1, :cond_0

    const p1, 0x7f130429

    goto :goto_0

    :cond_0
    const p1, 0x7f13043e

    :goto_0
    invoke-virtual {p0, p1}, Lmiuix/appcompat/app/Fragment;->setThemeRes(I)V

    return-void
.end method

.method protected onCreateViewLayout()I
    .locals 1

    const v0, 0x7f0e01d7

    return v0
.end method

.method protected onCustomizeActionBar(Landroidx/appcompat/app/ActionBar;)I
    .locals 0

    const/4 p1, 0x0

    return p1
.end method
