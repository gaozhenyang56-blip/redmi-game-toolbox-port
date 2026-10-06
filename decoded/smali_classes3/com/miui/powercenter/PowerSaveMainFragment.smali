.class public Lcom/miui/powercenter/PowerSaveMainFragment;
.super Lmiuix/appcompat/app/Fragment;
.source "SourceFile"

# interfaces
.implements Ljava/util/Observer;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/powercenter/PowerSaveMainFragment$a;,
        Lcom/miui/powercenter/PowerSaveMainFragment$c;,
        Lcom/miui/powercenter/PowerSaveMainFragment$d;,
        Lcom/miui/powercenter/PowerSaveMainFragment$b;
    }
.end annotation


# static fields
.field public static final h:Ljava/lang/String;


# instance fields
.field private a:Landroidx/recyclerview/widget/RecyclerView;

.field private b:Lcom/miui/powercenter/PowerSaveMainFragment$c;

.field private c:Lcom/miui/powercenter/PowerSaveMainFragment$d;

.field private d:Lcom/miui/powercenter/PowerSaveMainFragment$a;

.field private e:Lcom/miui/powercenter/batteryhistory/z;

.field public f:Z

.field private g:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lcom/miui/powercenter/PowerSaveMainFragment;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/miui/powercenter/PowerSaveMainFragment;->h:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lmiuix/appcompat/app/Fragment;-><init>()V

    new-instance v0, Lcom/miui/powercenter/PowerSaveMainFragment$c;

    invoke-direct {v0, p0}, Lcom/miui/powercenter/PowerSaveMainFragment$c;-><init>(Lcom/miui/powercenter/PowerSaveMainFragment;)V

    iput-object v0, p0, Lcom/miui/powercenter/PowerSaveMainFragment;->b:Lcom/miui/powercenter/PowerSaveMainFragment$c;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/miui/powercenter/PowerSaveMainFragment;->f:Z

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/miui/powercenter/PowerSaveMainFragment;->g:Z

    return-void
.end method

.method static synthetic b0(Lcom/miui/powercenter/PowerSaveMainFragment;)Lcom/miui/powercenter/batteryhistory/z;
    .locals 0

    iget-object p0, p0, Lcom/miui/powercenter/PowerSaveMainFragment;->e:Lcom/miui/powercenter/batteryhistory/z;

    return-object p0
.end method

.method static synthetic c0(Lcom/miui/powercenter/PowerSaveMainFragment;)Lcom/miui/powercenter/PowerSaveMainFragment$a;
    .locals 0

    iget-object p0, p0, Lcom/miui/powercenter/PowerSaveMainFragment;->d:Lcom/miui/powercenter/PowerSaveMainFragment$a;

    return-object p0
.end method

.method static synthetic d0(Lcom/miui/powercenter/PowerSaveMainFragment;)Lcom/miui/powercenter/PowerSaveMainFragment$c;
    .locals 0

    iget-object p0, p0, Lcom/miui/powercenter/PowerSaveMainFragment;->b:Lcom/miui/powercenter/PowerSaveMainFragment$c;

    return-object p0
.end method

.method static synthetic e0(Lcom/miui/powercenter/PowerSaveMainFragment;)V
    .locals 0

    invoke-direct {p0}, Lcom/miui/powercenter/PowerSaveMainFragment;->h0()V

    return-void
.end method

.method private f0(Landroid/view/View;)V
    .locals 1

    const v0, 0x7f0b06d5

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroidx/recyclerview/widget/RecyclerView;

    iput-object p1, p0, Lcom/miui/powercenter/PowerSaveMainFragment;->a:Landroidx/recyclerview/widget/RecyclerView;

    return-void
.end method

.method private g0()V
    .locals 2

    invoke-static {}, Lme/l;->d()Lme/l;

    move-result-object v0

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    invoke-virtual {v0, v1}, Lme/l;->c(Landroid/content/Context;)V

    invoke-static {}, Lme/l;->d()Lme/l;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/util/Observable;->deleteObserver(Ljava/util/Observer;)V

    return-void
.end method

.method private h0()V
    .locals 1

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->isDetached()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/miui/powercenter/PowerSaveMainFragment;->e:Lcom/miui/powercenter/batteryhistory/z;

    invoke-virtual {v0}, Lcom/miui/powercenter/batteryhistory/z;->t()V

    :cond_1
    :goto_0
    return-void
.end method

.method private i0()V
    .locals 2

    invoke-static {}, Lme/l;->d()Lme/l;

    move-result-object v0

    invoke-virtual {v0}, Lme/l;->b()V

    invoke-static {}, Lme/l;->d()Lme/l;

    move-result-object v0

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    invoke-virtual {v0, v1}, Lme/l;->a(Landroid/content/Context;)V

    invoke-static {}, Lme/l;->d()Lme/l;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/util/Observable;->addObserver(Ljava/util/Observer;)V

    return-void
.end method

.method private initData()V
    .locals 3

    new-instance v0, Landroidx/recyclerview/widget/LinearLayoutManager;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    invoke-direct {v0, v1}, Landroidx/recyclerview/widget/LinearLayoutManager;-><init>(Landroid/content/Context;)V

    iget-object v1, p0, Lcom/miui/powercenter/PowerSaveMainFragment;->a:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v1, v0}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$n;)V

    iget-object v0, p0, Lcom/miui/powercenter/PowerSaveMainFragment;->a:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView;->getItemAnimator()Landroidx/recyclerview/widget/RecyclerView$ItemAnimator;

    move-result-object v0

    const-wide/16 v1, 0x0

    invoke-virtual {v0, v1, v2}, Landroidx/recyclerview/widget/RecyclerView$ItemAnimator;->x(J)V

    iget-object v0, p0, Lcom/miui/powercenter/PowerSaveMainFragment;->a:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView;->getItemAnimator()Landroidx/recyclerview/widget/RecyclerView$ItemAnimator;

    move-result-object v0

    check-cast v0, Landroidx/recyclerview/widget/z;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/z;->V(Z)V

    new-instance v0, Lcom/miui/powercenter/batteryhistory/z;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    check-cast v1, Lcom/miui/powercenter/PowerMainActivity;

    iget-object v2, p0, Lcom/miui/powercenter/PowerSaveMainFragment;->a:Landroidx/recyclerview/widget/RecyclerView;

    invoke-direct {v0, v1, p0, v2}, Lcom/miui/powercenter/batteryhistory/z;-><init>(Lcom/miui/powercenter/PowerMainActivity;Lcom/miui/powercenter/PowerSaveMainFragment;Landroidx/recyclerview/widget/RecyclerView;)V

    iput-object v0, p0, Lcom/miui/powercenter/PowerSaveMainFragment;->e:Lcom/miui/powercenter/batteryhistory/z;

    iget-boolean v1, p0, Lcom/miui/powercenter/PowerSaveMainFragment;->g:Z

    invoke-virtual {v0, v1}, Lcom/miui/powercenter/batteryhistory/z;->v(Z)V

    iget-object v0, p0, Lcom/miui/powercenter/PowerSaveMainFragment;->e:Lcom/miui/powercenter/batteryhistory/z;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView$h;->setHasStableIds(Z)V

    iget-object v0, p0, Lcom/miui/powercenter/PowerSaveMainFragment;->a:Landroidx/recyclerview/widget/RecyclerView;

    iget-object v1, p0, Lcom/miui/powercenter/PowerSaveMainFragment;->e:Lcom/miui/powercenter/batteryhistory/z;

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$h;)V

    iget-object v0, p0, Lcom/miui/powercenter/PowerSaveMainFragment;->a:Landroidx/recyclerview/widget/RecyclerView;

    new-instance v1, Lmiuix/recyclerview/card/f;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Lmiuix/recyclerview/card/f;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->addItemDecoration(Landroidx/recyclerview/widget/RecyclerView$m;)V

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f060164

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    iget-object v1, p0, Lcom/miui/powercenter/PowerSaveMainFragment;->a:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v1, v0}, Landroid/view/View;->setBackgroundColor(I)V

    invoke-static {}, Lcom/miui/powercenter/batteryhistory/p;->d()Lcom/miui/powercenter/batteryhistory/p;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/powercenter/PowerSaveMainFragment;->e:Lcom/miui/powercenter/batteryhistory/z;

    invoke-virtual {v0, v1}, Lcom/miui/powercenter/batteryhistory/p;->m(Lcom/miui/powercenter/batteryhistory/z;)V

    new-instance v0, Lcom/miui/powercenter/PowerSaveMainFragment$a;

    iget-object v1, p0, Lcom/miui/powercenter/PowerSaveMainFragment;->e:Lcom/miui/powercenter/batteryhistory/z;

    invoke-direct {v0, v1}, Lcom/miui/powercenter/PowerSaveMainFragment$a;-><init>(Lcom/miui/powercenter/batteryhistory/z;)V

    iput-object v0, p0, Lcom/miui/powercenter/PowerSaveMainFragment;->d:Lcom/miui/powercenter/PowerSaveMainFragment$a;

    new-instance v0, Lcom/miui/powercenter/PowerSaveMainFragment$d;

    invoke-direct {v0, p0}, Lcom/miui/powercenter/PowerSaveMainFragment$d;-><init>(Lcom/miui/powercenter/PowerSaveMainFragment;)V

    iput-object v0, p0, Lcom/miui/powercenter/PowerSaveMainFragment;->c:Lcom/miui/powercenter/PowerSaveMainFragment$d;

    invoke-direct {p0}, Lcom/miui/powercenter/PowerSaveMainFragment;->i0()V

    new-instance v0, Lcom/miui/powercenter/PowerSaveMainFragment$b;

    invoke-direct {v0, p0}, Lcom/miui/powercenter/PowerSaveMainFragment$b;-><init>(Lcom/miui/powercenter/PowerSaveMainFragment;)V

    invoke-static {v0}, Lcom/miui/common/base/asyn/a;->a(Ljava/lang/Runnable;)V

    return-void
.end method


# virtual methods
.method public onAttach(Landroid/content/Context;)V
    .locals 0

    invoke-super {p0, p1}, Lmiuix/appcompat/app/Fragment;->onAttach(Landroid/content/Context;)V

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2

    invoke-super {p0, p1}, Lmiuix/appcompat/app/Fragment;->onCreate(Landroid/os/Bundle;)V

    const v0, 0x7f13043e

    invoke-virtual {p0, v0}, Lmiuix/appcompat/app/Fragment;->setThemeRes(I)V

    if-eqz p1, :cond_0

    const/4 v0, 0x0

    const-string v1, "showMore"

    invoke-virtual {p1, v1, v0}, Landroid/os/BaseBundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result p1

    iput-boolean p1, p0, Lcom/miui/powercenter/PowerSaveMainFragment;->g:Z

    :cond_0
    return-void
.end method

.method public onDestroy()V
    .locals 2

    invoke-super {p0}, Lmiuix/appcompat/app/Fragment;->onDestroy()V

    iget-object v0, p0, Lcom/miui/powercenter/PowerSaveMainFragment;->e:Lcom/miui/powercenter/batteryhistory/z;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/miui/powercenter/batteryhistory/z;->onDestroy()V

    :cond_0
    iget-object v0, p0, Lcom/miui/powercenter/PowerSaveMainFragment;->d:Lcom/miui/powercenter/PowerSaveMainFragment$a;

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    check-cast v0, Lcom/miui/powercenter/PowerMainActivity;

    invoke-virtual {v0}, Lcom/miui/powercenter/PowerMainActivity;->d0()Lcom/miui/powercenter/batteryhistory/l;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/powercenter/PowerSaveMainFragment;->d:Lcom/miui/powercenter/PowerSaveMainFragment$a;

    invoke-virtual {v0, v1}, Lcom/miui/powercenter/batteryhistory/l;->v(Lcom/miui/powercenter/batteryhistory/w;)V

    :cond_1
    invoke-direct {p0}, Lcom/miui/powercenter/PowerSaveMainFragment;->g0()V

    return-void
.end method

.method public onInflateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 1

    const p3, 0x7f0e03ca

    const/4 v0, 0x0

    invoke-virtual {p1, p3, p2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/miui/powercenter/PowerSaveMainFragment;->f0(Landroid/view/View;)V

    invoke-direct {p0}, Lcom/miui/powercenter/PowerSaveMainFragment;->initData()V

    return-object p1
.end method

.method public onResume()V
    .locals 3

    invoke-super {p0}, Lmiuix/appcompat/app/Fragment;->onResume()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/miui/powercenter/PowerSaveMainFragment;->f:Z

    iget-object v0, p0, Lcom/miui/powercenter/PowerSaveMainFragment;->e:Lcom/miui/powercenter/batteryhistory/z;

    invoke-virtual {v0}, Lcom/miui/powercenter/batteryhistory/z;->r()V

    invoke-static {}, Lfe/l;->m()Lfe/l;

    move-result-object v0

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    iget-object v2, p0, Lcom/miui/powercenter/PowerSaveMainFragment;->c:Lcom/miui/powercenter/PowerSaveMainFragment$d;

    invoke-virtual {v0, v1, v2}, Lfe/l;->A(Landroid/content/Context;Lfe/l$c;)V

    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2
    .param p1    # Landroid/os/Bundle;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    invoke-super {p0, p1}, Landroidx/fragment/app/Fragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    iget-object v0, p0, Lcom/miui/powercenter/PowerSaveMainFragment;->e:Lcom/miui/powercenter/batteryhistory/z;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/miui/powercenter/batteryhistory/z;->n()Z

    move-result v0

    const-string v1, "showMore"

    invoke-virtual {p1, v1, v0}, Landroid/os/BaseBundle;->putBoolean(Ljava/lang/String;Z)V

    :cond_0
    return-void
.end method

.method public update(Ljava/util/Observable;Ljava/lang/Object;)V
    .locals 2

    instance-of p1, p2, Landroid/os/Message;

    if-eqz p1, :cond_0

    check-cast p2, Landroid/os/Message;

    iget p1, p2, Landroid/os/Message;->what:I

    const/16 v0, 0x2713

    if-ne p1, v0, :cond_0

    invoke-static {}, Lcom/miui/powercenter/batteryhistory/p;->d()Lcom/miui/powercenter/batteryhistory/p;

    move-result-object p1

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    iget v1, p2, Landroid/os/Message;->arg1:I

    iget p2, p2, Landroid/os/Message;->arg2:I

    invoke-virtual {p1, v0, v1, p2}, Lcom/miui/powercenter/batteryhistory/p;->p(Landroid/content/Context;II)V

    :cond_0
    return-void
.end method
