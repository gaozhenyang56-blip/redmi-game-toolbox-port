.class public Lcom/miui/gamebooster/view/StackFragment;
.super Lcom/miui/common/base/ui/BaseFragment;
.source "SourceFile"

# interfaces
.implements Ll8/f;


# instance fields
.field private a:Lmiuix/appcompat/app/Fragment;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/miui/common/base/ui/BaseFragment;-><init>()V

    return-void
.end method

.method public static b0(Lmiuix/appcompat/app/Fragment;)Lcom/miui/gamebooster/view/StackFragment;
    .locals 1
    .param p0    # Lmiuix/appcompat/app/Fragment;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    new-instance v0, Lcom/miui/gamebooster/view/StackFragment;

    invoke-direct {v0}, Lcom/miui/gamebooster/view/StackFragment;-><init>()V

    iput-object p0, v0, Lcom/miui/gamebooster/view/StackFragment;->a:Lmiuix/appcompat/app/Fragment;

    return-object v0
.end method


# virtual methods
.method public C(Lmiuix/appcompat/app/Fragment;)V
    .locals 5

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getChildFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/fragment/app/FragmentManager;->m()Landroidx/fragment/app/s;

    move-result-object v0

    const v1, 0x7f010043

    const v2, 0x7f010044

    const v3, 0x7f010045

    const v4, 0x7f010046

    invoke-virtual {v0, v1, v2, v3, v4}, Landroidx/fragment/app/s;->A(IIII)Landroidx/fragment/app/s;

    const v1, 0x7f0b027f

    invoke-virtual {v0, v1, p1}, Landroidx/fragment/app/s;->v(ILandroidx/fragment/app/Fragment;)Landroidx/fragment/app/s;

    const/4 p1, 0x0

    invoke-virtual {v0, p1}, Landroidx/fragment/app/s;->i(Ljava/lang/String;)Landroidx/fragment/app/s;

    invoke-virtual {v0}, Landroidx/fragment/app/s;->k()I

    return-void
.end method

.method protected initView()V
    .locals 0

    return-void
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 2

    invoke-super {p0, p1}, Lcom/miui/common/base/ui/BaseFragment;->onActivityCreated(Landroid/os/Bundle;)V

    iget-object p1, p0, Lcom/miui/gamebooster/view/StackFragment;->a:Lmiuix/appcompat/app/Fragment;

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getChildFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/fragment/app/FragmentManager;->m()Landroidx/fragment/app/s;

    move-result-object p1

    const v0, 0x7f0b027f

    iget-object v1, p0, Lcom/miui/gamebooster/view/StackFragment;->a:Lmiuix/appcompat/app/Fragment;

    invoke-virtual {p1, v0, v1}, Landroidx/fragment/app/s;->v(ILandroidx/fragment/app/Fragment;)Landroidx/fragment/app/s;

    invoke-virtual {p1}, Landroidx/fragment/app/s;->k()I

    :cond_0
    return-void
.end method

.method public onAttachFragment(Landroidx/fragment/app/Fragment;)V
    .locals 1

    invoke-super {p0, p1}, Landroidx/fragment/app/Fragment;->onAttachFragment(Landroidx/fragment/app/Fragment;)V

    instance-of v0, p1, Ll8/e;

    if-eqz v0, :cond_0

    check-cast p1, Ll8/e;

    invoke-interface {p1, p0}, Ll8/e;->S(Ll8/f;)V

    :cond_0
    return-void
.end method

.method protected onCreateViewLayout()I
    .locals 1

    const v0, 0x7f0e01e2

    return v0
.end method

.method protected onCustomizeActionBar(Landroidx/appcompat/app/ActionBar;)I
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public pop()V
    .locals 1

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getChildFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/fragment/app/FragmentManager;->X0()V

    return-void
.end method
