.class public abstract Lcom/miui/permcenter/privacymanager/InterceptBaseFragment;
.super Lmiuix/appcompat/app/Fragment;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/permcenter/privacymanager/InterceptBaseFragment$b;
    }
.end annotation


# instance fields
.field private final a:I

.field private b:Lcom/miui/permcenter/privacymanager/InterceptBaseFragment$b;

.field protected c:Landroid/widget/Button;

.field protected d:Landroid/widget/Button;

.field protected e:Ljava/lang/String;

.field protected f:Landroid/view/View$OnClickListener;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lmiuix/appcompat/app/Fragment;-><init>()V

    const/4 v0, 0x5

    iput v0, p0, Lcom/miui/permcenter/privacymanager/InterceptBaseFragment;->a:I

    new-instance v0, Lcom/miui/permcenter/privacymanager/InterceptBaseFragment$a;

    invoke-direct {v0, p0}, Lcom/miui/permcenter/privacymanager/InterceptBaseFragment$a;-><init>(Lcom/miui/permcenter/privacymanager/InterceptBaseFragment;)V

    iput-object v0, p0, Lcom/miui/permcenter/privacymanager/InterceptBaseFragment;->f:Landroid/view/View$OnClickListener;

    return-void
.end method


# virtual methods
.method public b0(Z)V
    .locals 1

    invoke-virtual {p0}, Lmiuix/appcompat/app/Fragment;->getAppCompatActivity()Lmiuix/appcompat/app/AppCompatActivity;

    move-result-object v0

    if-eqz p1, :cond_0

    const/4 p1, -0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    invoke-virtual {v0, p1}, Landroid/app/Activity;->setResult(I)V

    invoke-virtual {p0}, Lmiuix/appcompat/app/Fragment;->getAppCompatActivity()Lmiuix/appcompat/app/AppCompatActivity;

    move-result-object p1

    invoke-virtual {p1}, Lmiuix/appcompat/app/AppCompatActivity;->finish()V

    return-void
.end method

.method public c0()I
    .locals 2

    iget-object v0, p0, Lcom/miui/permcenter/privacymanager/InterceptBaseFragment;->b:Lcom/miui/permcenter/privacymanager/InterceptBaseFragment$b;

    if-nez v0, :cond_0

    new-instance v0, Lcom/miui/permcenter/privacymanager/InterceptBaseFragment$b;

    invoke-virtual {p0}, Lcom/miui/permcenter/privacymanager/InterceptBaseFragment;->d0()I

    move-result v1

    invoke-direct {v0, p0, v1}, Lcom/miui/permcenter/privacymanager/InterceptBaseFragment$b;-><init>(Lcom/miui/permcenter/privacymanager/InterceptBaseFragment;I)V

    iput-object v0, p0, Lcom/miui/permcenter/privacymanager/InterceptBaseFragment;->b:Lcom/miui/permcenter/privacymanager/InterceptBaseFragment$b;

    :cond_0
    iget-object v0, p0, Lcom/miui/permcenter/privacymanager/InterceptBaseFragment;->b:Lcom/miui/permcenter/privacymanager/InterceptBaseFragment$b;

    invoke-virtual {v0}, Lcom/miui/permcenter/privacymanager/InterceptBaseFragment$b;->c()V

    iget-object v0, p0, Lcom/miui/permcenter/privacymanager/InterceptBaseFragment;->b:Lcom/miui/permcenter/privacymanager/InterceptBaseFragment$b;

    invoke-virtual {v0}, Lcom/miui/permcenter/privacymanager/InterceptBaseFragment$b;->a()I

    move-result v0

    return v0
.end method

.method protected d0()I
    .locals 1

    const/4 v0, 0x5

    return v0
.end method

.method public e0()V
    .locals 2

    iget-object v0, p0, Lcom/miui/permcenter/privacymanager/InterceptBaseFragment;->c:Landroid/widget/Button;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/miui/permcenter/privacymanager/InterceptBaseFragment;->f:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_0
    iget-object v0, p0, Lcom/miui/permcenter/privacymanager/InterceptBaseFragment;->d:Landroid/widget/Button;

    if-eqz v0, :cond_1

    iget-object v1, p0, Lcom/miui/permcenter/privacymanager/InterceptBaseFragment;->f:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_1
    return-void
.end method

.method public abstract f0(Landroid/view/View;)V
.end method

.method public abstract g0()I
.end method

.method public abstract h0(I)V
.end method

.method public i0(I)V
    .locals 0

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 3
    .param p1    # Landroid/os/Bundle;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    invoke-super {p0, p1}, Lmiuix/appcompat/app/Fragment;->onCreate(Landroid/os/Bundle;)V

    new-instance p1, Lcom/miui/permcenter/privacymanager/InterceptBaseFragment$b;

    invoke-virtual {p0}, Lcom/miui/permcenter/privacymanager/InterceptBaseFragment;->d0()I

    move-result v0

    invoke-direct {p1, p0, v0}, Lcom/miui/permcenter/privacymanager/InterceptBaseFragment$b;-><init>(Lcom/miui/permcenter/privacymanager/InterceptBaseFragment;I)V

    iput-object p1, p0, Lcom/miui/permcenter/privacymanager/InterceptBaseFragment;->b:Lcom/miui/permcenter/privacymanager/InterceptBaseFragment$b;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    instance-of v0, p1, Lcom/miui/permcenter/privacymanager/model/InterceptBaseActivity;

    if-eqz v0, :cond_1

    check-cast p1, Lcom/miui/permcenter/privacymanager/model/InterceptBaseActivity;

    invoke-virtual {p1}, Lcom/miui/permcenter/privacymanager/model/InterceptBaseActivity;->c0()Landroid/os/Bundle;

    move-result-object p1

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/miui/permcenter/privacymanager/InterceptBaseFragment;->b:Lcom/miui/permcenter/privacymanager/InterceptBaseFragment$b;

    invoke-virtual {p0}, Lcom/miui/permcenter/privacymanager/InterceptBaseFragment;->d0()I

    move-result v1

    const-string v2, "KET_STEP_COUNT"

    invoke-virtual {p1, v2, v1}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;I)I

    move-result p1

    invoke-virtual {v0, p1}, Lcom/miui/permcenter/privacymanager/InterceptBaseFragment$b;->b(I)V

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lcom/miui/permcenter/privacymanager/InterceptBaseFragment;->b:Lcom/miui/permcenter/privacymanager/InterceptBaseFragment$b;

    invoke-virtual {p0}, Lcom/miui/permcenter/privacymanager/InterceptBaseFragment;->d0()I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/miui/permcenter/privacymanager/InterceptBaseFragment$b;->b(I)V

    :cond_1
    :goto_0
    return-void
.end method

.method public onDetach()V
    .locals 2

    invoke-super {p0}, Landroidx/fragment/app/Fragment;->onDetach()V

    iget-object v0, p0, Lcom/miui/permcenter/privacymanager/InterceptBaseFragment;->b:Lcom/miui/permcenter/privacymanager/InterceptBaseFragment$b;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    return-void
.end method

.method public onInflateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 1

    invoke-virtual {p0}, Lcom/miui/permcenter/privacymanager/InterceptBaseFragment;->g0()I

    move-result p3

    const/4 v0, 0x0

    invoke-virtual {p1, p3, p2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/miui/permcenter/privacymanager/InterceptBaseFragment;->f0(Landroid/view/View;)V

    invoke-virtual {p0}, Lcom/miui/permcenter/privacymanager/InterceptBaseFragment;->e0()V

    return-object p1
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 1

    invoke-super {p0, p1}, Landroidx/fragment/app/Fragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    instance-of v0, p1, Lcom/miui/permcenter/privacymanager/model/InterceptBaseActivity;

    if-eqz v0, :cond_0

    check-cast p1, Lcom/miui/permcenter/privacymanager/model/InterceptBaseActivity;

    iget-object v0, p0, Lcom/miui/permcenter/privacymanager/InterceptBaseFragment;->b:Lcom/miui/permcenter/privacymanager/InterceptBaseFragment$b;

    invoke-virtual {v0}, Lcom/miui/permcenter/privacymanager/InterceptBaseFragment$b;->a()I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/miui/permcenter/privacymanager/model/InterceptBaseActivity;->e0(I)V

    :cond_0
    return-void
.end method
