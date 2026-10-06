.class public Lcom/miui/gamebooster/ui/ManualRecordSettingsLandFragment;
.super Lcom/miui/common/base/ui/BaseFragment;
.source "SourceFile"

# interfaces
.implements Lcom/miui/gamebooster/ui/ManualRecordSettingsTabFragment$a;
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private a:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lmiuix/appcompat/app/Fragment;",
            ">;"
        }
    .end annotation
.end field

.field private b:Landroid/view/View;

.field private c:Ljava/lang/String;

.field private d:Lcom/miui/gamebooster/ui/ManualRecordSettingsTabFragment;


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Lcom/miui/common/base/ui/BaseFragment;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lcom/miui/gamebooster/ui/ManualRecordSettingsLandFragment;->a:Ljava/util/List;

    return-void
.end method

.method private b0(Lmiuix/appcompat/app/Fragment;Ljava/lang/String;)V
    .locals 2

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getChildFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/fragment/app/FragmentManager;->m()Landroidx/fragment/app/s;

    move-result-object v0

    const v1, 0x7f0b027f

    invoke-virtual {v0, v1, p1, p2}, Landroidx/fragment/app/s;->w(ILandroidx/fragment/app/Fragment;Ljava/lang/String;)Landroidx/fragment/app/s;

    invoke-virtual {v0}, Landroidx/fragment/app/s;->k()I

    return-void
.end method


# virtual methods
.method public e(I)V
    .locals 1

    iget-object v0, p0, Lcom/miui/gamebooster/ui/ManualRecordSettingsLandFragment;->a:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lmiuix/appcompat/app/Fragment;

    if-nez p1, :cond_0

    const-string p1, "tag_kpl_fragment"

    goto :goto_0

    :cond_0
    const-string p1, "tag_pubg_fragment"

    :goto_0
    invoke-direct {p0, v0, p1}, Lcom/miui/gamebooster/ui/ManualRecordSettingsLandFragment;->b0(Lmiuix/appcompat/app/Fragment;Ljava/lang/String;)V

    return-void
.end method

.method protected initView()V
    .locals 3

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    instance-of v0, v0, Lcom/miui/gamebooster/ui/WonderfulMomentActivity;

    const-string v1, "gamePkg"

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/gamebooster/ui/ManualRecordSettingsLandFragment;->c:Ljava/lang/String;

    :cond_0
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getChildFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v0

    const v2, 0x7f0b0b3e

    invoke-virtual {v0, v2}, Landroidx/fragment/app/FragmentManager;->g0(I)Landroidx/fragment/app/Fragment;

    move-result-object v0

    check-cast v0, Lcom/miui/gamebooster/ui/ManualRecordSettingsTabFragment;

    iput-object v0, p0, Lcom/miui/gamebooster/ui/ManualRecordSettingsLandFragment;->d:Lcom/miui/gamebooster/ui/ManualRecordSettingsTabFragment;

    if-nez v0, :cond_1

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    return-void

    :cond_1
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    iget-object v2, p0, Lcom/miui/gamebooster/ui/ManualRecordSettingsLandFragment;->c:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/miui/gamebooster/ui/ManualRecordSettingsLandFragment;->d:Lcom/miui/gamebooster/ui/ManualRecordSettingsTabFragment;

    invoke-virtual {v1, v0}, Landroidx/fragment/app/Fragment;->setArguments(Landroid/os/Bundle;)V

    iget-object v0, p0, Lcom/miui/gamebooster/ui/ManualRecordSettingsLandFragment;->d:Lcom/miui/gamebooster/ui/ManualRecordSettingsTabFragment;

    invoke-virtual {v0, p0}, Lcom/miui/gamebooster/ui/ManualRecordSettingsTabFragment;->c0(Ljava/lang/Object;)V

    const v0, 0x7f0b0139

    invoke-virtual {p0, v0}, Lcom/miui/common/base/ui/BaseFragment;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/gamebooster/ui/ManualRecordSettingsLandFragment;->b:Landroid/view/View;

    invoke-static {}, La8/k2;->A()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/miui/gamebooster/ui/ManualRecordSettingsLandFragment;->b:Landroid/view/View;

    const/high16 v1, 0x43340000    # 180.0f

    invoke-virtual {v0, v1}, Landroid/view/View;->setRotation(F)V

    :cond_2
    iget-object v0, p0, Lcom/miui/gamebooster/ui/ManualRecordSettingsLandFragment;->b:Landroid/view/View;

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    new-instance v0, Lcom/miui/gamebooster/ui/WonderFullVideoFragment;

    invoke-direct {v0}, Lcom/miui/gamebooster/ui/WonderFullVideoFragment;-><init>()V

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/miui/gamebooster/ui/WonderFullVideoFragment;->w0(I)V

    invoke-static {v0}, Lcom/miui/gamebooster/view/StackFragment;->b0(Lmiuix/appcompat/app/Fragment;)Lcom/miui/gamebooster/view/StackFragment;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/gamebooster/ui/ManualRecordSettingsLandFragment;->a:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v0, Lcom/miui/gamebooster/ui/WonderFullVideoFragment;

    invoke-direct {v0}, Lcom/miui/gamebooster/ui/WonderFullVideoFragment;-><init>()V

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/miui/gamebooster/ui/WonderFullVideoFragment;->w0(I)V

    invoke-static {v0}, Lcom/miui/gamebooster/view/StackFragment;->b0(Lmiuix/appcompat/app/Fragment;)Lcom/miui/gamebooster/view/StackFragment;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/gamebooster/ui/ManualRecordSettingsLandFragment;->a:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const v0, 0x7f0b0444

    invoke-virtual {p0, v0}, Lcom/miui/common/base/ui/BaseFragment;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 2

    iget-object v0, p0, Lcom/miui/gamebooster/ui/ManualRecordSettingsLandFragment;->b:Landroid/view/View;

    if-ne p1, v0, :cond_0

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Landroid/app/Activity;->finish()V

    goto :goto_0

    :cond_0
    const v0, 0x7f0b0444

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    if-ne v0, p1, :cond_1

    new-instance p1, Lcom/miui/gamebooster/ui/WonderFullVideoDescDialog;

    invoke-direct {p1}, Lcom/miui/gamebooster/ui/WonderFullVideoDescDialog;-><init>()V

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroidx/fragment/app/DialogFragment;->setCancelable(Z)V

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getChildFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v0

    const-string v1, "WonderFullVideoDescDialog"

    invoke-virtual {p1, v0, v1}, Lcom/miui/earthquakewarning/view/BaseDialogFragment;->show(Landroidx/fragment/app/FragmentManager;Ljava/lang/String;)V

    :cond_1
    :goto_0
    return-void
.end method

.method protected onCreateViewLayout()I
    .locals 1

    const v0, 0x7f0e01dd

    return v0
.end method

.method protected onCustomizeActionBar(Landroidx/appcompat/app/ActionBar;)I
    .locals 0

    const/4 p1, 0x0

    return p1
.end method
