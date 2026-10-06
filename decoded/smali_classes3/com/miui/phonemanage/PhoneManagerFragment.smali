.class public Lcom/miui/phonemanage/PhoneManagerFragment;
.super Lcom/miui/phonemanage/BaseLazyFragment;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/phonemanage/PhoneManagerFragment$j;
    }
.end annotation


# instance fields
.field private A:Z

.field private B:Lcom/miui/phonemanage/view/PopularActionFindView;

.field private C:Landroidx/recyclerview/widget/LinearLayoutManager;

.field private D:Landroid/view/View;

.field private E:Z

.field private final F:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private G:I

.field private H:I

.field private I:Z

.field private J:Z

.field private K:Ljava/lang/String;

.field private L:Lcom/miui/common/card/models/BottomPlaceCardModel;

.field private M:Landroid/view/ViewStub;

.field private N:Z

.field private O:Z

.field private P:Z

.field private Q:I

.field private R:I

.field private S:I

.field private final T:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/miui/common/card/models/BaseCardModel;",
            ">;"
        }
    .end annotation
.end field

.field private U:Z

.field private V:Z

.field private c:Lcom/miui/common/customview/FirstTouchRecyclerView;

.field private d:Lcom/miui/common/customview/MainSpringBackLayout;

.field private e:Landroid/view/View;

.field private f:Landroid/view/ViewStub;

.field private g:Lcom/miui/common/card/CardViewRvAdapter;

.field private h:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/miui/common/card/models/BaseCardModel;",
            ">;"
        }
    .end annotation
.end field

.field private final i:Lad/a;

.field private final j:Ljava/lang/Object;

.field private final k:Ljava/lang/Object;

.field private l:Z

.field private m:Z

.field private n:Z

.field private o:Z

.field private p:Z

.field private q:I

.field private r:I

.field private s:I

.field private t:F

.field private u:F

.field private v:Landroidx/recyclerview/widget/RecyclerView;

.field private w:Lbd/a;

.field private x:Lcom/miui/phonemanage/PhoneManagerFragment$j;

.field private y:I

.field private z:Lcom/miui/common/customview/ActionBarContainer;


# direct methods
.method public constructor <init>()V
    .locals 3

    invoke-direct {p0}, Lcom/miui/phonemanage/BaseLazyFragment;-><init>()V

    new-instance v0, Lad/a;

    invoke-direct {v0, p0}, Lad/a;-><init>(Lcom/miui/phonemanage/PhoneManagerFragment;)V

    iput-object v0, p0, Lcom/miui/phonemanage/PhoneManagerFragment;->i:Lad/a;

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/miui/phonemanage/PhoneManagerFragment;->j:Ljava/lang/Object;

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/miui/phonemanage/PhoneManagerFragment;->k:Ljava/lang/Object;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/miui/phonemanage/PhoneManagerFragment;->o:Z

    iput-boolean v0, p0, Lcom/miui/phonemanage/PhoneManagerFragment;->p:Z

    const/4 v0, 0x0

    iput v0, p0, Lcom/miui/phonemanage/PhoneManagerFragment;->q:I

    const/4 v1, -0x1

    iput v1, p0, Lcom/miui/phonemanage/PhoneManagerFragment;->r:I

    iput v1, p0, Lcom/miui/phonemanage/PhoneManagerFragment;->y:I

    iput-boolean v0, p0, Lcom/miui/phonemanage/PhoneManagerFragment;->A:Z

    iput-boolean v0, p0, Lcom/miui/phonemanage/PhoneManagerFragment;->E:Z

    new-instance v1, Ljava/util/ArrayList;

    const/16 v2, 0x8

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v1, p0, Lcom/miui/phonemanage/PhoneManagerFragment;->F:Ljava/util/List;

    iput-boolean v0, p0, Lcom/miui/phonemanage/PhoneManagerFragment;->I:Z

    iput-boolean v0, p0, Lcom/miui/phonemanage/PhoneManagerFragment;->J:Z

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/miui/phonemanage/PhoneManagerFragment;->K:Ljava/lang/String;

    new-instance v1, Lcom/miui/common/card/models/BottomPlaceCardModel;

    invoke-direct {v1}, Lcom/miui/common/card/models/BottomPlaceCardModel;-><init>()V

    iput-object v1, p0, Lcom/miui/phonemanage/PhoneManagerFragment;->L:Lcom/miui/common/card/models/BottomPlaceCardModel;

    iput-boolean v0, p0, Lcom/miui/phonemanage/PhoneManagerFragment;->N:Z

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/miui/phonemanage/PhoneManagerFragment;->T:Ljava/util/List;

    iput-boolean v0, p0, Lcom/miui/phonemanage/PhoneManagerFragment;->U:Z

    iput-boolean v0, p0, Lcom/miui/phonemanage/PhoneManagerFragment;->V:Z

    return-void
.end method

.method static synthetic A0(Lcom/miui/phonemanage/PhoneManagerFragment;II)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/miui/phonemanage/PhoneManagerFragment;->t1(II)V

    return-void
.end method

.method static synthetic B0(Lcom/miui/phonemanage/PhoneManagerFragment;Landroid/view/View;)Landroid/view/View;
    .locals 0

    iput-object p1, p0, Lcom/miui/phonemanage/PhoneManagerFragment;->e:Landroid/view/View;

    return-object p1
.end method

.method static synthetic C0(Lcom/miui/phonemanage/PhoneManagerFragment;)I
    .locals 0

    iget p0, p0, Lcom/miui/phonemanage/PhoneManagerFragment;->Q:I

    return p0
.end method

.method static synthetic D0(Lcom/miui/phonemanage/PhoneManagerFragment;I)I
    .locals 0

    iput p1, p0, Lcom/miui/phonemanage/PhoneManagerFragment;->Q:I

    return p1
.end method

.method static synthetic E0(Lcom/miui/phonemanage/PhoneManagerFragment;)Lcom/miui/phonemanage/view/PopularActionFindView;
    .locals 0

    iget-object p0, p0, Lcom/miui/phonemanage/PhoneManagerFragment;->B:Lcom/miui/phonemanage/view/PopularActionFindView;

    return-object p0
.end method

.method static synthetic F0(Lcom/miui/phonemanage/PhoneManagerFragment;)I
    .locals 0

    iget p0, p0, Lcom/miui/phonemanage/PhoneManagerFragment;->r:I

    return p0
.end method

.method static synthetic G0(Lcom/miui/phonemanage/PhoneManagerFragment;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/miui/phonemanage/PhoneManagerFragment;->n:Z

    return p0
.end method

.method static synthetic H0(Lcom/miui/phonemanage/PhoneManagerFragment;Landroid/app/Activity;)Z
    .locals 0

    invoke-direct {p0, p1}, Lcom/miui/phonemanage/PhoneManagerFragment;->Y0(Landroid/app/Activity;)Z

    move-result p0

    return p0
.end method

.method static synthetic I0(Lcom/miui/phonemanage/PhoneManagerFragment;)I
    .locals 0

    iget p0, p0, Lcom/miui/phonemanage/PhoneManagerFragment;->q:I

    return p0
.end method

.method static synthetic J0(Lcom/miui/phonemanage/PhoneManagerFragment;I)I
    .locals 0

    iput p1, p0, Lcom/miui/phonemanage/PhoneManagerFragment;->q:I

    return p1
.end method

.method static synthetic K0(Lcom/miui/phonemanage/PhoneManagerFragment;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/miui/phonemanage/PhoneManagerFragment;->o:Z

    return p0
.end method

.method static synthetic L0(Lcom/miui/phonemanage/PhoneManagerFragment;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/miui/phonemanage/PhoneManagerFragment;->o:Z

    return p1
.end method

.method static synthetic M0(Lcom/miui/phonemanage/PhoneManagerFragment;)I
    .locals 0

    iget p0, p0, Lcom/miui/phonemanage/PhoneManagerFragment;->s:I

    return p0
.end method

.method static synthetic N0(Lcom/miui/phonemanage/PhoneManagerFragment;I)I
    .locals 0

    iput p1, p0, Lcom/miui/phonemanage/PhoneManagerFragment;->s:I

    return p1
.end method

.method static synthetic O0(Lcom/miui/phonemanage/PhoneManagerFragment;)Lcom/miui/common/customview/MainSpringBackLayout;
    .locals 0

    iget-object p0, p0, Lcom/miui/phonemanage/PhoneManagerFragment;->d:Lcom/miui/common/customview/MainSpringBackLayout;

    return-object p0
.end method

.method private U0()I
    .locals 3

    iget-boolean v0, p0, Lcom/miui/phonemanage/PhoneManagerFragment;->O:Z

    const/4 v1, 0x3

    if-eqz v0, :cond_3

    sget-object v0, Landroid/os/Build;->DEVICE:Ljava/lang/String;

    const-string v2, "cetus"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    iget v0, p0, Lcom/miui/phonemanage/PhoneManagerFragment;->S:I

    if-eq v0, v1, :cond_1

    const/4 v2, 0x4

    if-ne v0, v2, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    if-eqz v0, :cond_2

    goto :goto_2

    :cond_2
    const/4 v0, 0x2

    move v1, v0

    :cond_3
    :goto_2
    return v1
.end method

.method private W0(Landroid/view/View;)V
    .locals 1

    sget-boolean v0, Lmiui/os/Build;->IS_INTERNATIONAL_BUILD:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const v0, 0x7f0b073c

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/view/ViewStub;

    iput-object p1, p0, Lcom/miui/phonemanage/PhoneManagerFragment;->f:Landroid/view/ViewStub;

    new-instance v0, Lcom/miui/phonemanage/PhoneManagerFragment$h;

    invoke-direct {v0, p0}, Lcom/miui/phonemanage/PhoneManagerFragment$h;-><init>(Lcom/miui/phonemanage/PhoneManagerFragment;)V

    invoke-virtual {p1, v0}, Landroid/view/ViewStub;->setOnInflateListener(Landroid/view/ViewStub$OnInflateListener;)V

    iget-object p1, p0, Lcom/miui/phonemanage/PhoneManagerFragment;->f:Landroid/view/ViewStub;

    invoke-virtual {p1}, Landroid/view/ViewStub;->inflate()Landroid/view/View;

    return-void
.end method

.method private Y0(Landroid/app/Activity;)Z
    .locals 0

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/app/Activity;->isDestroyed()Z

    move-result p1

    if-nez p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method private a1(Lcom/miui/common/card/GridFunctionData;)Z
    .locals 8

    iget-boolean v0, p0, Lcom/miui/phonemanage/PhoneManagerFragment;->A:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return v1

    :cond_0
    new-instance v0, Le3/d;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v2

    invoke-direct {v0, v2}, Le3/d;-><init>(Landroid/content/Context;)V

    invoke-virtual {p1}, Lcom/miui/common/card/GridFunctionData;->getAction()Ljava/lang/String;

    move-result-object p1

    const-string v2, "#Intent;action=com.xiaomi.market.UPDATE_APP_LIST;end"

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    const/4 v3, 0x1

    if-eqz v2, :cond_1

    invoke-static {}, Lpf/g;->k()I

    move-result p1

    invoke-virtual {v0}, Le3/d;->c()Z

    move-result v0

    if-lez p1, :cond_3

    if-eqz v0, :cond_3

    goto :goto_0

    :cond_1
    const-string v0, "#Intent;action=miui.intent.action.GARBAGE_DEEPCLEAN_WECHAT;end"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const-wide/32 v4, 0x1dcd6500

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    invoke-static {p1}, Ldd/d;->h(Landroid/content/Context;)J

    move-result-wide v6

    invoke-static {}, Ldd/d;->e()Z

    move-result p1

    if-eqz p1, :cond_3

    cmp-long p1, v6, v4

    if-lez p1, :cond_3

    goto :goto_0

    :cond_2
    const-string v0, "#Intent;action=miui.intent.action.GARBAGE_DEEPCLEAN_QQ;end"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_3

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    invoke-static {p1}, Ldd/d;->f(Landroid/content/Context;)J

    move-result-wide v6

    invoke-static {}, Ldd/d;->d()Z

    move-result p1

    if-eqz p1, :cond_3

    cmp-long p1, v6, v4

    if-lez p1, :cond_3

    :goto_0
    move v1, v3

    :cond_3
    return v1
.end method

.method private synthetic b1(I)Z
    .locals 3

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    iget-boolean v2, p0, Lcom/miui/phonemanage/PhoneManagerFragment;->A:Z

    if-eqz v2, :cond_0

    goto :goto_0

    :cond_0
    iget-object v2, p0, Lcom/miui/phonemanage/PhoneManagerFragment;->d:Lcom/miui/common/customview/MainSpringBackLayout;

    invoke-virtual {v2}, Lcom/miui/common/customview/MainSpringBackLayout;->getSpringY()I

    move-result v2

    neg-int p1, p1

    if-ge v2, p1, :cond_1

    iget-boolean p1, p0, Lcom/miui/phonemanage/PhoneManagerFragment;->E:Z

    if-eqz p1, :cond_1

    check-cast v0, Lcom/miui/securityscan/MainActivity;

    invoke-virtual {v0, v1}, Lcom/miui/securityscan/MainActivity;->B0(I)V

    const/4 p1, 0x1

    return p1

    :cond_1
    :goto_0
    return v1
.end method

.method private synthetic c1()V
    .locals 3

    iget-object v0, p0, Lcom/miui/phonemanage/PhoneManagerFragment;->w:Lbd/a;

    invoke-virtual {v0}, Lbd/a;->n()Ljava/util/List;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/phonemanage/PhoneManagerFragment;->F:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/miui/common/card/GridFunctionData;

    iget-object v2, p0, Lcom/miui/phonemanage/PhoneManagerFragment;->F:Ljava/util/List;

    invoke-virtual {v1}, Lcom/miui/common/card/GridFunctionData;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/miui/phonemanage/PhoneManagerFragment;->V:Z

    return-void
.end method

.method private synthetic d1()V
    .locals 5

    iget-boolean v0, p0, Lcom/miui/phonemanage/PhoneManagerFragment;->A:Z

    if-eqz v0, :cond_2

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/miui/phonemanage/PhoneManagerFragment;->A:Z

    iget-object v1, p0, Lcom/miui/phonemanage/PhoneManagerFragment;->T:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/miui/common/card/models/BaseCardModel;

    instance-of v3, v2, Lcd/b;

    if-eqz v3, :cond_0

    check-cast v2, Lcd/b;

    invoke-virtual {v2, v0}, Lcd/b;->c(Z)V

    iget-object v2, v2, Lcom/miui/common/card/models/TitleCardModel;->gridFunctionDataList:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/miui/common/card/GridFunctionData;

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Lcom/miui/common/card/GridFunctionData;->setEditVisible(Z)V

    goto :goto_0

    :cond_1
    iget-object v1, p0, Lcom/miui/phonemanage/PhoneManagerFragment;->g:Lcom/miui/common/card/CardViewRvAdapter;

    invoke-virtual {v1}, Lcom/miui/common/card/CardViewRvAdapter;->clear()V

    iget-object v1, p0, Lcom/miui/phonemanage/PhoneManagerFragment;->g:Lcom/miui/common/card/CardViewRvAdapter;

    iget-object v2, p0, Lcom/miui/phonemanage/PhoneManagerFragment;->T:Ljava/util/List;

    invoke-virtual {v1, v2}, Lcom/miui/common/card/CardViewRvAdapter;->addAll(Ljava/util/List;)V

    iget-object v1, p0, Lcom/miui/phonemanage/PhoneManagerFragment;->g:Lcom/miui/common/card/CardViewRvAdapter;

    invoke-virtual {v1, v0}, Lcom/miui/common/card/CardViewRvAdapter;->notifyDataSetChanged(Z)V

    iget-object v1, p0, Lcom/miui/phonemanage/PhoneManagerFragment;->T:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V

    iget-object v1, p0, Lcom/miui/phonemanage/PhoneManagerFragment;->z:Lcom/miui/common/customview/ActionBarContainer;

    const v2, 0x7f1211e1

    invoke-virtual {p0, v2}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/miui/common/customview/ActionBarContainer;->setTitle(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/miui/phonemanage/PhoneManagerFragment;->z:Lcom/miui/common/customview/ActionBarContainer;

    const v2, 0x7f08037e

    invoke-virtual {v1, v2}, Lcom/miui/common/customview/ActionBarContainer;->setBackIconRes(I)V

    iget-object v1, p0, Lcom/miui/phonemanage/PhoneManagerFragment;->z:Lcom/miui/common/customview/ActionBarContainer;

    invoke-virtual {v1, v0}, Lcom/miui/common/customview/ActionBarContainer;->setEndIcon(I)V

    iget-object v0, p0, Lcom/miui/phonemanage/PhoneManagerFragment;->v:Landroidx/recyclerview/widget/RecyclerView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    :cond_2
    invoke-direct {p0}, Lcom/miui/phonemanage/PhoneManagerFragment;->p1()V

    return-void
.end method

.method private synthetic e1()V
    .locals 2

    invoke-virtual {p0}, Lcom/miui/phonemanage/BaseLazyFragment;->b0()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/miui/phonemanage/PhoneManagerFragment;->U:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/miui/phonemanage/PhoneManagerFragment;->C:Landroidx/recyclerview/widget/LinearLayoutManager;

    invoke-virtual {v0}, Landroidx/recyclerview/widget/LinearLayoutManager;->findFirstVisibleItemPosition()I

    move-result v0

    iput v0, p0, Lcom/miui/phonemanage/PhoneManagerFragment;->Q:I

    iget-object v0, p0, Lcom/miui/phonemanage/PhoneManagerFragment;->C:Landroidx/recyclerview/widget/LinearLayoutManager;

    invoke-virtual {v0}, Landroidx/recyclerview/widget/LinearLayoutManager;->findLastVisibleItemPosition()I

    move-result v0

    iput v0, p0, Lcom/miui/phonemanage/PhoneManagerFragment;->R:I

    iget v1, p0, Lcom/miui/phonemanage/PhoneManagerFragment;->Q:I

    invoke-direct {p0, v1, v0}, Lcom/miui/phonemanage/PhoneManagerFragment;->t1(II)V

    :cond_0
    return-void
.end method

.method private synthetic f1()V
    .locals 4

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/miui/phonemanage/PhoneManagerFragment;->Y0(Landroid/app/Activity;)Z

    move-result v1

    if-nez v1, :cond_0

    return-void

    :cond_0
    const/4 v1, 0x1

    invoke-static {v1}, Ldd/d;->l(Z)V

    invoke-static {v1}, Ldd/d;->k(Z)V

    invoke-static {v0}, Leg/d;->g(Landroid/content/Context;)Ljava/util/List;

    move-result-object v2

    if-eqz v2, :cond_1

    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_1

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/miui/phonemanage/PhoneManagerFragment;->h:Ljava/util/List;

    invoke-interface {v0, v2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    goto :goto_0

    :cond_1
    invoke-static {v0}, Lsf/b;->g(Landroid/content/Context;)Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/phonemanage/PhoneManagerFragment;->h:Ljava/util/List;

    :goto_0
    iget-object v0, p0, Lcom/miui/phonemanage/PhoneManagerFragment;->k:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iput-boolean v1, p0, Lcom/miui/phonemanage/PhoneManagerFragment;->l:Z

    iget-boolean v1, p0, Lcom/miui/phonemanage/PhoneManagerFragment;->m:Z

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/miui/phonemanage/PhoneManagerFragment;->i:Lad/a;

    const/16 v2, 0x6c

    invoke-virtual {v1, v2}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    :cond_2
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public static synthetic g0(Lcom/miui/phonemanage/PhoneManagerFragment;)V
    .locals 0

    invoke-direct {p0}, Lcom/miui/phonemanage/PhoneManagerFragment;->f1()V

    return-void
.end method

.method public static synthetic h0(Lcom/miui/phonemanage/PhoneManagerFragment;)V
    .locals 0

    invoke-direct {p0}, Lcom/miui/phonemanage/PhoneManagerFragment;->d1()V

    return-void
.end method

.method public static synthetic i0(Lcom/miui/phonemanage/PhoneManagerFragment;)V
    .locals 0

    invoke-direct {p0}, Lcom/miui/phonemanage/PhoneManagerFragment;->e1()V

    return-void
.end method

.method private i1()V
    .locals 2

    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lad/d;

    invoke-direct {v1, p0}, Lad/d;-><init>(Lcom/miui/phonemanage/PhoneManagerFragment;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    return-void
.end method

.method public static synthetic j0(Lcom/miui/phonemanage/PhoneManagerFragment;)V
    .locals 0

    invoke-direct {p0}, Lcom/miui/phonemanage/PhoneManagerFragment;->c1()V

    return-void
.end method

.method public static synthetic k0(Lcom/miui/phonemanage/PhoneManagerFragment;I)Z
    .locals 0

    invoke-direct {p0, p1}, Lcom/miui/phonemanage/PhoneManagerFragment;->b1(I)Z

    move-result p0

    return p0
.end method

.method private k1()V
    .locals 1

    iget-boolean v0, p0, Lcom/miui/phonemanage/PhoneManagerFragment;->V:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/phonemanage/PhoneManagerFragment;->F:Ljava/util/List;

    invoke-static {v0}, Ldd/a;->a(Ljava/util/List;)V

    :cond_0
    return-void
.end method

.method static synthetic l0(Lcom/miui/phonemanage/PhoneManagerFragment;)Lcom/miui/common/customview/FirstTouchRecyclerView;
    .locals 0

    iget-object p0, p0, Lcom/miui/phonemanage/PhoneManagerFragment;->c:Lcom/miui/common/customview/FirstTouchRecyclerView;

    return-object p0
.end method

.method static synthetic m0(Lcom/miui/phonemanage/PhoneManagerFragment;)Lcom/miui/common/card/CardViewRvAdapter;
    .locals 0

    iget-object p0, p0, Lcom/miui/phonemanage/PhoneManagerFragment;->g:Lcom/miui/common/card/CardViewRvAdapter;

    return-object p0
.end method

.method static synthetic n0(Lcom/miui/phonemanage/PhoneManagerFragment;F)F
    .locals 0

    iput p1, p0, Lcom/miui/phonemanage/PhoneManagerFragment;->t:F

    return p1
.end method

.method static synthetic o0(Lcom/miui/phonemanage/PhoneManagerFragment;)F
    .locals 0

    iget p0, p0, Lcom/miui/phonemanage/PhoneManagerFragment;->u:F

    return p0
.end method

.method private o1(I)V
    .locals 3

    iget-object v0, p0, Lcom/miui/phonemanage/PhoneManagerFragment;->d:Lcom/miui/common/customview/MainSpringBackLayout;

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v1, 0x0

    if-nez p1, :cond_0

    invoke-virtual {v0, v1, v1, v1, v1}, Landroid/view/ViewGroup$MarginLayoutParams;->setMargins(IIII)V

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, p1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    invoke-virtual {v0, v1, p1, v1, v1}, Landroid/view/ViewGroup$MarginLayoutParams;->setMargins(IIII)V

    :goto_0
    iget-object p1, p0, Lcom/miui/phonemanage/PhoneManagerFragment;->d:Lcom/miui/common/customview/MainSpringBackLayout;

    invoke-virtual {p1, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method static synthetic p0(Lcom/miui/phonemanage/PhoneManagerFragment;F)F
    .locals 0

    iput p1, p0, Lcom/miui/phonemanage/PhoneManagerFragment;->u:F

    return p1
.end method

.method private p1()V
    .locals 2

    iget-object v0, p0, Lcom/miui/phonemanage/PhoneManagerFragment;->c:Lcom/miui/common/customview/FirstTouchRecyclerView;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->scrollToPosition(I)V

    :cond_0
    iget-object v0, p0, Lcom/miui/phonemanage/PhoneManagerFragment;->d:Lcom/miui/common/customview/MainSpringBackLayout;

    if-eqz v0, :cond_1

    invoke-virtual {v0, v1, v1}, Lmiuix/springback/view/SpringBackLayout;->scrollTo(II)V

    :cond_1
    return-void
.end method

.method static synthetic q0(Lcom/miui/phonemanage/PhoneManagerFragment;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/miui/phonemanage/PhoneManagerFragment;->A:Z

    return p0
.end method

.method private q1()V
    .locals 7

    iget v0, p0, Lcom/miui/phonemanage/PhoneManagerFragment;->G:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_2

    iget v0, p0, Lcom/miui/phonemanage/PhoneManagerFragment;->H:I

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/miui/phonemanage/PhoneManagerFragment;->c:Lcom/miui/common/customview/FirstTouchRecyclerView;

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView;->getLayoutManager()Landroidx/recyclerview/widget/RecyclerView$n;

    move-result-object v0

    iget v1, p0, Lcom/miui/phonemanage/PhoneManagerFragment;->G:I

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView$n;->findViewByPosition(I)Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    iget-object v2, p0, Lcom/miui/phonemanage/PhoneManagerFragment;->B:Lcom/miui/phonemanage/view/PopularActionFindView;

    if-eqz v2, :cond_1

    const v2, 0x7f0b0489

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/GridLayout;

    iget v2, p0, Lcom/miui/phonemanage/PhoneManagerFragment;->H:I

    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    move-result v2

    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    move-result v3

    const/4 v4, 0x2

    new-array v4, v4, [I

    invoke-virtual {v0, v4}, Landroid/view/View;->getLocationOnScreen([I)V

    iget-object v0, p0, Lcom/miui/phonemanage/PhoneManagerFragment;->B:Lcom/miui/phonemanage/view/PopularActionFindView;

    aget v5, v4, v1

    const/4 v6, 0x1

    aget v4, v4, v6

    invoke-virtual {v0, v5, v4, v2, v3}, Lcom/miui/phonemanage/view/PopularActionFindView;->f(IIII)V

    :cond_1
    iget-object v0, p0, Lcom/miui/phonemanage/PhoneManagerFragment;->i:Lad/a;

    const/16 v2, 0x1f7

    invoke-virtual {v0, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    iget-object v2, p0, Lcom/miui/phonemanage/PhoneManagerFragment;->i:Lad/a;

    const-wide/16 v3, 0xc8

    invoke-virtual {v2, v0, v3, v4}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    iput-boolean v1, p0, Lcom/miui/phonemanage/PhoneManagerFragment;->I:Z

    iput-boolean v1, p0, Lcom/miui/phonemanage/PhoneManagerFragment;->J:Z

    :cond_2
    :goto_0
    return-void
.end method

.method static synthetic r0(Lcom/miui/phonemanage/PhoneManagerFragment;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/miui/phonemanage/PhoneManagerFragment;->E:Z

    return p1
.end method

.method static synthetic s0(Lcom/miui/phonemanage/PhoneManagerFragment;)V
    .locals 0

    invoke-direct {p0}, Lcom/miui/phonemanage/PhoneManagerFragment;->k1()V

    return-void
.end method

.method static synthetic t0(Lcom/miui/phonemanage/PhoneManagerFragment;)I
    .locals 0

    invoke-direct {p0}, Lcom/miui/phonemanage/PhoneManagerFragment;->U0()I

    move-result p0

    return p0
.end method

.method private t1(II)V
    .locals 3

    iget-object v0, p0, Lcom/miui/phonemanage/PhoneManagerFragment;->g:Lcom/miui/common/card/CardViewRvAdapter;

    invoke-virtual {v0}, Lcom/miui/common/card/CardViewRvAdapter;->getModelList()Ljava/util/ArrayList;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-ge p1, v1, :cond_2

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-ge p2, v1, :cond_2

    if-ltz p1, :cond_2

    if-gez p2, :cond_0

    goto :goto_1

    :cond_0
    :goto_0
    if-gt p1, p2, :cond_2

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/miui/common/card/models/BaseCardModel;

    instance-of v2, v1, Lcd/b;

    if-eqz v2, :cond_1

    check-cast v1, Lcd/b;

    iget-object v1, v1, Lcom/miui/common/card/models/TitleCardModel;->gridFunctionDataList:Ljava/util/List;

    invoke-static {v1}, Lqf/c;->o0(Ljava/util/List;)V

    :cond_1
    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :cond_2
    :goto_1
    return-void
.end method

.method static synthetic u0(Lcom/miui/phonemanage/PhoneManagerFragment;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/miui/phonemanage/PhoneManagerFragment;->J:Z

    return p0
.end method

.method static synthetic v0(Lcom/miui/phonemanage/PhoneManagerFragment;)V
    .locals 0

    invoke-direct {p0}, Lcom/miui/phonemanage/PhoneManagerFragment;->q1()V

    return-void
.end method

.method static synthetic w0(Lcom/miui/phonemanage/PhoneManagerFragment;)Landroidx/recyclerview/widget/LinearLayoutManager;
    .locals 0

    iget-object p0, p0, Lcom/miui/phonemanage/PhoneManagerFragment;->C:Landroidx/recyclerview/widget/LinearLayoutManager;

    return-object p0
.end method

.method private w1(Ljava/util/List;)V
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/miui/common/card/models/BaseCardModel;",
            ">;)V"
        }
    .end annotation

    iget-boolean v0, p0, Lcom/miui/phonemanage/PhoneManagerFragment;->A:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    if-eqz v0, :cond_1

    check-cast v0, Lcom/miui/securityscan/MainActivity;

    iget-boolean v0, v0, Lcom/miui/securityscan/MainActivity;->c:Z

    if-nez v0, :cond_1

    return-void

    :cond_1
    invoke-static {}, Ldd/d;->a()Ljava/lang/String;

    move-result-object v0

    const-wide/32 v1, 0x5265c00

    invoke-static {v1, v2}, Lcom/miui/appmanager/AppManageUtils;->N(J)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v0

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-gtz v0, :cond_2

    move v0, v3

    goto :goto_0

    :cond_2
    move v0, v4

    :goto_0
    const/4 v5, -0x1

    if-eqz v0, :cond_6

    move v0, v4

    :goto_1
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v6

    if-ge v0, v6, :cond_6

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/miui/common/card/models/BaseCardModel;

    instance-of v7, v6, Lcom/miui/common/card/models/TitleCardModel;

    if-eqz v7, :cond_5

    check-cast v6, Lcom/miui/common/card/models/TitleCardModel;

    iget-object v6, v6, Lcom/miui/common/card/models/TitleCardModel;->gridFunctionDataList:Ljava/util/List;

    if-nez v6, :cond_3

    goto :goto_2

    :cond_3
    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_4
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_5

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/miui/common/card/GridFunctionData;

    invoke-virtual {v7}, Lcom/miui/common/card/GridFunctionData;->isNewFeatureAlert()Z

    move-result v8

    if-eqz v8, :cond_4

    invoke-virtual {v7}, Lcom/miui/common/card/GridFunctionData;->getAction()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Ldd/d;->i(Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_4

    iget v7, p0, Lcom/miui/phonemanage/PhoneManagerFragment;->y:I

    if-ne v7, v5, :cond_4

    iput v0, p0, Lcom/miui/phonemanage/PhoneManagerFragment;->y:I

    :cond_5
    :goto_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_6
    invoke-static {}, Ldd/d;->b()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v2}, Lcom/miui/appmanager/AppManageUtils;->N(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v0

    if-gtz v0, :cond_7

    goto :goto_3

    :cond_7
    move v3, v4

    :goto_3
    iget v0, p0, Lcom/miui/phonemanage/PhoneManagerFragment;->y:I

    if-ne v0, v5, :cond_b

    if-eqz v3, :cond_b

    :goto_4
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-ge v4, v0, :cond_b

    invoke-interface {p1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/common/card/models/BaseCardModel;

    instance-of v1, v0, Lcom/miui/common/card/models/TitleCardModel;

    if-eqz v1, :cond_a

    check-cast v0, Lcom/miui/common/card/models/TitleCardModel;

    iget-object v0, v0, Lcom/miui/common/card/models/TitleCardModel;->gridFunctionDataList:Ljava/util/List;

    if-nez v0, :cond_8

    goto :goto_5

    :cond_8
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_9
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_a

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/miui/common/card/GridFunctionData;

    invoke-direct {p0, v1}, Lcom/miui/phonemanage/PhoneManagerFragment;->a1(Lcom/miui/common/card/GridFunctionData;)Z

    move-result v1

    if-eqz v1, :cond_9

    iget v1, p0, Lcom/miui/phonemanage/PhoneManagerFragment;->y:I

    if-ne v1, v5, :cond_9

    iput v4, p0, Lcom/miui/phonemanage/PhoneManagerFragment;->y:I

    :cond_a
    :goto_5
    add-int/lit8 v4, v4, 0x1

    goto :goto_4

    :cond_b
    return-void
.end method

.method static synthetic x0(Lcom/miui/phonemanage/PhoneManagerFragment;)I
    .locals 0

    iget p0, p0, Lcom/miui/phonemanage/PhoneManagerFragment;->R:I

    return p0
.end method

.method static synthetic y0(Lcom/miui/phonemanage/PhoneManagerFragment;I)I
    .locals 0

    iput p1, p0, Lcom/miui/phonemanage/PhoneManagerFragment;->R:I

    return p1
.end method

.method static synthetic z0(Lcom/miui/phonemanage/PhoneManagerFragment;)Landroid/view/View;
    .locals 0

    iget-object p0, p0, Lcom/miui/phonemanage/PhoneManagerFragment;->e:Landroid/view/View;

    return-object p0
.end method


# virtual methods
.method public P0(Lcom/miui/common/card/GridFunctionData;)V
    .locals 10

    iget-object v0, p0, Lcom/miui/phonemanage/PhoneManagerFragment;->w:Lbd/a;

    invoke-virtual {v0}, Lbd/a;->n()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x6

    if-lt v0, v1, :cond_0

    invoke-static {}, Ld2/c;->b()Ld2/c;

    move-result-object p1

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f120553

    invoke-virtual {p1, v0, v1}, Ld2/c;->e(Landroid/content/Context;I)Ld2/c;

    goto/16 :goto_2

    :cond_0
    iget-object v0, p0, Lcom/miui/phonemanage/PhoneManagerFragment;->F:Ljava/util/List;

    invoke-virtual {p1}, Lcom/miui/common/card/GridFunctionData;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    return-void

    :cond_1
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/miui/phonemanage/PhoneManagerFragment;->V:Z

    iget-object v1, p0, Lcom/miui/phonemanage/PhoneManagerFragment;->F:Ljava/util/List;

    invoke-virtual {p1}, Lcom/miui/common/card/GridFunctionData;->getAction()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v1, p0, Lcom/miui/phonemanage/PhoneManagerFragment;->w:Lbd/a;

    invoke-virtual {v1, p1}, Lbd/a;->m(Lcom/miui/common/card/GridFunctionData;)V

    iget-object v1, p0, Lcom/miui/phonemanage/PhoneManagerFragment;->g:Lcom/miui/common/card/CardViewRvAdapter;

    invoke-virtual {v1}, Lcom/miui/common/card/CardViewRvAdapter;->getModelList()Ljava/util/ArrayList;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    sub-int/2addr v2, v0

    const/4 v3, -0x1

    move v4, v3

    :goto_0
    const/4 v5, 0x0

    if-ltz v2, :cond_4

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/miui/common/card/models/BaseCardModel;

    instance-of v7, v6, Lcd/b;

    if-eqz v7, :cond_3

    check-cast v6, Lcd/b;

    iget-object v6, v6, Lcom/miui/common/card/models/TitleCardModel;->gridFunctionDataList:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_2
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_3

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/miui/common/card/GridFunctionData;

    invoke-virtual {v7}, Lcom/miui/common/card/GridFunctionData;->getAction()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p1}, Lcom/miui/common/card/GridFunctionData;->getAction()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_2

    invoke-virtual {v7, v5}, Lcom/miui/common/card/GridFunctionData;->setEditVisible(Z)V

    move v4, v2

    :cond_3
    add-int/lit8 v2, v2, -0x1

    goto :goto_0

    :cond_4
    if-eq v4, v3, :cond_8

    invoke-interface {v1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcd/b;

    iget-object p1, p1, Lcom/miui/common/card/models/TitleCardModel;->gridFunctionDataList:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_5
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_6

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/miui/common/card/GridFunctionData;

    invoke-virtual {v1}, Lcom/miui/common/card/GridFunctionData;->isEditVisible()Z

    move-result v1

    if-eqz v1, :cond_5

    goto :goto_1

    :cond_6
    move v0, v5

    :goto_1
    iget-object p1, p0, Lcom/miui/phonemanage/PhoneManagerFragment;->g:Lcom/miui/common/card/CardViewRvAdapter;

    if-eqz v0, :cond_7

    invoke-virtual {p1, v4}, Landroidx/recyclerview/widget/RecyclerView$h;->notifyItemChanged(I)V

    goto :goto_2

    :cond_7
    invoke-virtual {p1}, Lcom/miui/common/card/CardViewRvAdapter;->getModelList()Ljava/util/ArrayList;

    move-result-object p1

    invoke-virtual {p1, v4}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    iget-object p1, p0, Lcom/miui/phonemanage/PhoneManagerFragment;->g:Lcom/miui/common/card/CardViewRvAdapter;

    invoke-virtual {p1, v4}, Landroidx/recyclerview/widget/RecyclerView$h;->notifyItemRemoved(I)V

    :cond_8
    :goto_2
    return-void
.end method

.method public Q0()V
    .locals 1

    iget-boolean v0, p0, Lcom/miui/phonemanage/PhoneManagerFragment;->N:Z

    if-eqz v0, :cond_0

    invoke-static {}, Lqf/c;->c1()V

    :cond_0
    return-void
.end method

.method public R0()V
    .locals 3

    iget v0, p0, Lcom/miui/phonemanage/PhoneManagerFragment;->G:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_1

    iget v0, p0, Lcom/miui/phonemanage/PhoneManagerFragment;->H:I

    if-eq v0, v1, :cond_1

    iget-object v0, p0, Lcom/miui/phonemanage/PhoneManagerFragment;->B:Lcom/miui/phonemanage/view/PopularActionFindView;

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Lcom/miui/phonemanage/view/PopularActionFindView;->d()V

    iget-object v0, p0, Lcom/miui/phonemanage/PhoneManagerFragment;->B:Lcom/miui/phonemanage/view/PopularActionFindView;

    const/4 v1, 0x2

    new-array v1, v1, [F

    fill-array-data v1, :array_0

    const-string v2, "alpha"

    invoke-static {v0, v2, v1}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    const-wide/16 v1, 0x12c

    invoke-virtual {v0, v1, v2}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    new-instance v1, Lcom/miui/phonemanage/PhoneManagerFragment$i;

    invoke-direct {v1, p0}, Lcom/miui/phonemanage/PhoneManagerFragment$i;-><init>(Lcom/miui/phonemanage/PhoneManagerFragment;)V

    invoke-virtual {v0, v1}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->start()V

    :cond_1
    :goto_0
    return-void

    :array_0
    .array-data 4
        0x3f800000    # 1.0f
        0x0
    .end array-data
.end method

.method public S0()V
    .locals 5

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/miui/phonemanage/PhoneManagerFragment;->P:Z

    iget-object v1, p0, Lcom/miui/phonemanage/PhoneManagerFragment;->g:Lcom/miui/common/card/CardViewRvAdapter;

    invoke-virtual {v1}, Lcom/miui/common/card/CardViewRvAdapter;->getModelList()Ljava/util/ArrayList;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/miui/common/card/models/BaseCardModel;

    instance-of v3, v2, Lcd/b;

    if-eqz v3, :cond_0

    check-cast v2, Lcd/b;

    iget-object v2, v2, Lcom/miui/common/card/models/TitleCardModel;->gridFunctionDataList:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_1
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/miui/common/card/GridFunctionData;

    invoke-virtual {v3}, Lcom/miui/common/card/GridFunctionData;->isNewFeatureAlert()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-virtual {v3, v0}, Lcom/miui/common/card/GridFunctionData;->setDoNewAnim(Z)V

    goto :goto_0

    :cond_2
    return-void
.end method

.method public T0()V
    .locals 4

    iget-object v0, p0, Lcom/miui/phonemanage/PhoneManagerFragment;->g:Lcom/miui/common/card/CardViewRvAdapter;

    invoke-virtual {v0}, Lcom/miui/common/card/CardViewRvAdapter;->getModelList()Ljava/util/ArrayList;

    move-result-object v0

    const/4 v1, 0x1

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/miui/phonemanage/PhoneManagerFragment;->g:Lcom/miui/common/card/CardViewRvAdapter;

    invoke-virtual {v0}, Lcom/miui/common/card/CardViewRvAdapter;->getModelList()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_3

    invoke-virtual {p0}, Lcom/miui/phonemanage/BaseLazyFragment;->b0()Z

    move-result v0

    if-nez v0, :cond_0

    goto/16 :goto_1

    :cond_0
    iput-boolean v1, p0, Lcom/miui/phonemanage/PhoneManagerFragment;->A:Z

    iget-object v0, p0, Lcom/miui/phonemanage/PhoneManagerFragment;->z:Lcom/miui/common/customview/ActionBarContainer;

    const v1, 0x7f1211e0

    invoke-virtual {p0, v1}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/miui/common/customview/ActionBarContainer;->setTitle(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/miui/phonemanage/PhoneManagerFragment;->z:Lcom/miui/common/customview/ActionBarContainer;

    const v1, 0x7f080e66

    invoke-virtual {v0, v1}, Lcom/miui/common/customview/ActionBarContainer;->setEndIcon(I)V

    const v0, 0x7f070a70

    invoke-direct {p0, v0}, Lcom/miui/phonemanage/PhoneManagerFragment;->o1(I)V

    iget-object v0, p0, Lcom/miui/phonemanage/PhoneManagerFragment;->T:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    iget-object v0, p0, Lcom/miui/phonemanage/PhoneManagerFragment;->T:Ljava/util/List;

    iget-object v1, p0, Lcom/miui/phonemanage/PhoneManagerFragment;->g:Lcom/miui/common/card/CardViewRvAdapter;

    invoke-virtual {v1}, Lcom/miui/common/card/CardViewRvAdapter;->getModelList()Ljava/util/ArrayList;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    iget-object v0, p0, Lcom/miui/phonemanage/PhoneManagerFragment;->g:Lcom/miui/common/card/CardViewRvAdapter;

    invoke-virtual {v0}, Lcom/miui/common/card/CardViewRvAdapter;->getModelList()Ljava/util/ArrayList;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/phonemanage/PhoneManagerFragment;->L:Lcom/miui/common/card/models/BottomPlaceCardModel;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/miui/phonemanage/PhoneManagerFragment;->g:Lcom/miui/common/card/CardViewRvAdapter;

    invoke-virtual {v0}, Lcom/miui/common/card/CardViewRvAdapter;->getModelList()Ljava/util/ArrayList;

    move-result-object v0

    invoke-static {v0}, Leg/d;->d(Ljava/util/ArrayList;)Ljava/util/List;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/phonemanage/PhoneManagerFragment;->g:Lcom/miui/common/card/CardViewRvAdapter;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/miui/common/card/CardViewRvAdapter;->notifyDataSetChanged(Z)V

    iget-boolean v1, p0, Lcom/miui/phonemanage/PhoneManagerFragment;->U:Z

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/miui/phonemanage/PhoneManagerFragment;->C:Landroidx/recyclerview/widget/LinearLayoutManager;

    invoke-virtual {v1}, Landroidx/recyclerview/widget/LinearLayoutManager;->findFirstVisibleItemPosition()I

    move-result v1

    iput v1, p0, Lcom/miui/phonemanage/PhoneManagerFragment;->Q:I

    iget-object v1, p0, Lcom/miui/phonemanage/PhoneManagerFragment;->C:Landroidx/recyclerview/widget/LinearLayoutManager;

    invoke-virtual {v1}, Landroidx/recyclerview/widget/LinearLayoutManager;->findLastVisibleItemPosition()I

    move-result v1

    iput v1, p0, Lcom/miui/phonemanage/PhoneManagerFragment;->R:I

    iget v3, p0, Lcom/miui/phonemanage/PhoneManagerFragment;->Q:I

    invoke-direct {p0, v3, v1}, Lcom/miui/phonemanage/PhoneManagerFragment;->t1(II)V

    :cond_1
    iget-object v1, p0, Lcom/miui/phonemanage/PhoneManagerFragment;->w:Lbd/a;

    invoke-virtual {v1, v0}, Lbd/a;->l(Ljava/util/List;)V

    iget-object v1, p0, Lcom/miui/phonemanage/PhoneManagerFragment;->v:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    iget-object v1, p0, Lcom/miui/phonemanage/PhoneManagerFragment;->F:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/miui/common/card/GridFunctionData;

    iget-object v3, p0, Lcom/miui/phonemanage/PhoneManagerFragment;->F:Ljava/util/List;

    invoke-virtual {v2}, Lcom/miui/common/card/GridFunctionData;->getAction()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_2
    invoke-static {v0}, Lqf/c;->l0(Ljava/util/List;)V

    return-void

    :cond_3
    :goto_1
    const-string v0, "PhoneManagerFragment"

    const-string v2, "enter commonly no data"

    invoke-static {v0, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iput-boolean v1, p0, Lcom/miui/phonemanage/PhoneManagerFragment;->U:Z

    return-void
.end method

.method public V0()V
    .locals 1

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->isVisible()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    check-cast v0, Lcom/miui/securityscan/MainActivity;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/miui/securityscan/MainActivity;->o0()V

    :cond_0
    return-void
.end method

.method public X0()V
    .locals 5

    iget-object v0, p0, Lcom/miui/phonemanage/PhoneManagerFragment;->j:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/miui/phonemanage/PhoneManagerFragment;->h:Ljava/util/List;

    if-eqz v1, :cond_1

    iget-object v2, p0, Lcom/miui/phonemanage/PhoneManagerFragment;->c:Lcom/miui/common/customview/FirstTouchRecyclerView;

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/miui/phonemanage/PhoneManagerFragment;->g:Lcom/miui/common/card/CardViewRvAdapter;

    if-eqz v2, :cond_1

    invoke-virtual {p0, v1}, Lcom/miui/phonemanage/PhoneManagerFragment;->v1(Ljava/util/List;)V

    iget-boolean v1, p0, Lcom/miui/phonemanage/PhoneManagerFragment;->U:Z

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Lcom/miui/phonemanage/PhoneManagerFragment;->T0()V

    :cond_0
    iget-boolean v1, p0, Lcom/miui/phonemanage/PhoneManagerFragment;->I:Z

    if-eqz v1, :cond_1

    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/miui/phonemanage/PhoneManagerFragment;->J:Z

    iget-object v1, p0, Lcom/miui/phonemanage/PhoneManagerFragment;->i:Lad/a;

    new-instance v2, Lad/g;

    invoke-direct {v2, p0}, Lad/g;-><init>(Lcom/miui/phonemanage/PhoneManagerFragment;)V

    const-wide/16 v3, 0x64

    invoke-virtual {v1, v2, v3, v4}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_1
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public Z0()Z
    .locals 1

    iget-boolean v0, p0, Lcom/miui/phonemanage/PhoneManagerFragment;->V:Z

    return v0
.end method

.method protected e0()V
    .locals 4

    invoke-super {p0}, Lcom/miui/phonemanage/BaseLazyFragment;->e0()V

    invoke-direct {p0}, Lcom/miui/phonemanage/PhoneManagerFragment;->i1()V

    new-instance v0, Lcom/miui/phonemanage/PhoneManagerFragment$j;

    new-instance v1, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    invoke-direct {v0, p0, v1}, Lcom/miui/phonemanage/PhoneManagerFragment$j;-><init>(Lcom/miui/phonemanage/PhoneManagerFragment;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/miui/phonemanage/PhoneManagerFragment;->x:Lcom/miui/phonemanage/PhoneManagerFragment$j;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v2, Le3/e;->a:Landroid/net/Uri;

    iget-object v3, p0, Lcom/miui/phonemanage/PhoneManagerFragment;->x:Lcom/miui/phonemanage/PhoneManagerFragment$j;

    invoke-virtual {v0, v2, v1, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    :cond_0
    iput-boolean v1, p0, Lcom/miui/phonemanage/PhoneManagerFragment;->n:Z

    const/4 v0, 0x1

    invoke-virtual {p0, v0, v1}, Lcom/miui/phonemanage/PhoneManagerFragment;->g1(ZZ)V

    return-void
.end method

.method public g1(ZZ)V
    .locals 2

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/miui/phonemanage/PhoneManagerFragment;->Y0(Landroid/app/Activity;)Z

    move-result v1

    if-nez v1, :cond_0

    return-void

    :cond_0
    check-cast v0, Lcom/miui/securityscan/MainActivity;

    invoke-virtual {v0}, Lcom/miui/securityscan/MainActivity;->n0()I

    move-result v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_1

    if-nez p2, :cond_1

    return-void

    :cond_1
    iget-object p2, p0, Lcom/miui/phonemanage/PhoneManagerFragment;->g:Lcom/miui/common/card/CardViewRvAdapter;

    if-eqz p2, :cond_6

    invoke-virtual {p2}, Lcom/miui/common/card/CardViewRvAdapter;->isCanAutoScroll()Z

    move-result p2

    if-ne p2, p1, :cond_2

    return-void

    :cond_2
    if-nez p1, :cond_3

    iget-object p2, p0, Lcom/miui/phonemanage/PhoneManagerFragment;->g:Lcom/miui/common/card/CardViewRvAdapter;

    invoke-virtual {p2}, Lcom/miui/common/card/CardViewRvAdapter;->resetViewPager()V

    :cond_3
    iget-object p2, p0, Lcom/miui/phonemanage/PhoneManagerFragment;->g:Lcom/miui/common/card/CardViewRvAdapter;

    invoke-virtual {p2, p1}, Lcom/miui/common/card/CardViewRvAdapter;->setCanAutoScroll(Z)V

    iget-object p2, p0, Lcom/miui/phonemanage/PhoneManagerFragment;->g:Lcom/miui/common/card/CardViewRvAdapter;

    invoke-virtual {p2}, Lcom/miui/common/card/CardViewRvAdapter;->getModelList()Ljava/util/ArrayList;

    move-result-object p2

    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :cond_4
    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/common/card/models/BaseCardModel;

    instance-of v1, v0, Lcd/a;

    if-eqz v1, :cond_4

    invoke-virtual {v0, p1}, Lcom/miui/common/card/models/BaseCardModel;->setCanAutoScroll(Z)V

    if-eqz p1, :cond_5

    invoke-virtual {v0}, Lcom/miui/common/card/models/BaseCardModel;->startAutoScroll()V

    goto :goto_0

    :cond_5
    invoke-virtual {v0}, Lcom/miui/common/card/models/BaseCardModel;->stopAutoScroll()V

    goto :goto_0

    :cond_6
    return-void
.end method

.method public h1(Ljava/lang/String;)V
    .locals 1

    iput-object p1, p0, Lcom/miui/phonemanage/PhoneManagerFragment;->K:Ljava/lang/String;

    iget-object p1, p0, Lcom/miui/phonemanage/PhoneManagerFragment;->g:Lcom/miui/common/card/CardViewRvAdapter;

    invoke-virtual {p1}, Lcom/miui/common/card/CardViewRvAdapter;->getModelList()Ljava/util/ArrayList;

    move-result-object p1

    const/4 v0, 0x1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/miui/phonemanage/PhoneManagerFragment;->g:Lcom/miui/common/card/CardViewRvAdapter;

    invoke-virtual {p1}, Lcom/miui/common/card/CardViewRvAdapter;->getModelList()Ljava/util/ArrayList;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_1

    invoke-virtual {p0}, Lcom/miui/phonemanage/BaseLazyFragment;->b0()Z

    move-result p1

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    iput-boolean v0, p0, Lcom/miui/phonemanage/PhoneManagerFragment;->J:Z

    return-void

    :cond_1
    :goto_0
    iput-boolean v0, p0, Lcom/miui/phonemanage/PhoneManagerFragment;->I:Z

    return-void
.end method

.method public j1()V
    .locals 7

    iget-object v0, p0, Lcom/miui/phonemanage/PhoneManagerFragment;->g:Lcom/miui/common/card/CardViewRvAdapter;

    invoke-virtual {v0}, Lcom/miui/common/card/CardViewRvAdapter;->getModelList()Ljava/util/ArrayList;

    move-result-object v0

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    if-ge v2, v3, :cond_2

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/miui/common/card/models/BaseCardModel;

    instance-of v4, v3, Lcd/b;

    if-eqz v4, :cond_1

    check-cast v3, Lcd/b;

    iget-object v3, v3, Lcom/miui/common/card/models/TitleCardModel;->gridFunctionDataList:Ljava/util/List;

    move v4, v1

    :goto_1
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v5

    if-ge v4, v5, :cond_1

    invoke-interface {v3, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/miui/common/card/GridFunctionData;

    invoke-virtual {v5}, Lcom/miui/common/card/GridFunctionData;->getAction()Ljava/lang/String;

    move-result-object v5

    iget-object v6, p0, Lcom/miui/phonemanage/PhoneManagerFragment;->K:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    iput v2, p0, Lcom/miui/phonemanage/PhoneManagerFragment;->G:I

    iput v4, p0, Lcom/miui/phonemanage/PhoneManagerFragment;->H:I

    goto :goto_2

    :cond_0
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    :cond_1
    :goto_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    iget v0, p0, Lcom/miui/phonemanage/PhoneManagerFragment;->G:I

    const/4 v2, -0x1

    if-eq v0, v2, :cond_5

    iget v0, p0, Lcom/miui/phonemanage/PhoneManagerFragment;->H:I

    if-ne v0, v2, :cond_3

    goto :goto_4

    :cond_3
    iget-object v0, p0, Lcom/miui/phonemanage/PhoneManagerFragment;->C:Landroidx/recyclerview/widget/LinearLayoutManager;

    invoke-virtual {v0}, Landroidx/recyclerview/widget/LinearLayoutManager;->findFirstCompletelyVisibleItemPosition()I

    move-result v0

    iget-object v1, p0, Lcom/miui/phonemanage/PhoneManagerFragment;->C:Landroidx/recyclerview/widget/LinearLayoutManager;

    invoke-virtual {v1}, Landroidx/recyclerview/widget/LinearLayoutManager;->findLastCompletelyVisibleItemPosition()I

    move-result v1

    iget v2, p0, Lcom/miui/phonemanage/PhoneManagerFragment;->G:I

    if-lt v2, v0, :cond_4

    if-gt v2, v1, :cond_4

    invoke-direct {p0}, Lcom/miui/phonemanage/PhoneManagerFragment;->q1()V

    goto :goto_3

    :cond_4
    iget-object v0, p0, Lcom/miui/phonemanage/PhoneManagerFragment;->c:Lcom/miui/common/customview/FirstTouchRecyclerView;

    invoke-virtual {v0, v2}, Landroidx/recyclerview/widget/RecyclerView;->smoothScrollToPosition(I)V

    :goto_3
    return-void

    :cond_5
    :goto_4
    iput-boolean v1, p0, Lcom/miui/phonemanage/PhoneManagerFragment;->J:Z

    iput-boolean v1, p0, Lcom/miui/phonemanage/PhoneManagerFragment;->I:Z

    iget-object v0, p0, Lcom/miui/phonemanage/PhoneManagerFragment;->B:Lcom/miui/phonemanage/view/PopularActionFindView;

    if-eqz v0, :cond_6

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    :cond_6
    return-void
.end method

.method public l1(Lcom/miui/common/card/GridFunctionData;)V
    .locals 9

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/miui/phonemanage/PhoneManagerFragment;->V:Z

    iget-object v1, p0, Lcom/miui/phonemanage/PhoneManagerFragment;->F:Ljava/util/List;

    invoke-virtual {p1}, Lcom/miui/common/card/GridFunctionData;->getAction()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    iget-object v1, p0, Lcom/miui/phonemanage/PhoneManagerFragment;->w:Lbd/a;

    invoke-virtual {v1, p1}, Lbd/a;->o(Lcom/miui/common/card/GridFunctionData;)V

    iget-object v1, p0, Lcom/miui/phonemanage/PhoneManagerFragment;->g:Lcom/miui/common/card/CardViewRvAdapter;

    invoke-virtual {v1}, Lcom/miui/common/card/CardViewRvAdapter;->getModelList()Ljava/util/ArrayList;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    sub-int/2addr v2, v0

    const/4 v3, -0x1

    move v4, v3

    :goto_0
    if-ltz v2, :cond_2

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/miui/common/card/models/BaseCardModel;

    instance-of v6, v5, Lcd/b;

    if-eqz v6, :cond_1

    check-cast v5, Lcd/b;

    iget-object v5, v5, Lcom/miui/common/card/models/TitleCardModel;->gridFunctionDataList:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_1

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/miui/common/card/GridFunctionData;

    invoke-virtual {v6}, Lcom/miui/common/card/GridFunctionData;->getAction()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p1}, Lcom/miui/common/card/GridFunctionData;->getAction()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_0

    invoke-virtual {v6, v0}, Lcom/miui/common/card/GridFunctionData;->setEditVisible(Z)V

    move v4, v2

    :cond_1
    add-int/lit8 v2, v2, -0x1

    goto :goto_0

    :cond_2
    if-eq v4, v3, :cond_3

    iget-object p1, p0, Lcom/miui/phonemanage/PhoneManagerFragment;->g:Lcom/miui/common/card/CardViewRvAdapter;

    invoke-virtual {p1, v4}, Landroidx/recyclerview/widget/RecyclerView$h;->notifyItemChanged(I)V

    goto :goto_2

    :cond_3
    iget-object p1, p0, Lcom/miui/phonemanage/PhoneManagerFragment;->T:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_4
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_5

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/miui/common/card/models/BaseCardModel;

    instance-of v2, v1, Lcd/b;

    if-eqz v2, :cond_4

    check-cast v1, Lcd/b;

    iget-object v1, v1, Lcom/miui/common/card/models/TitleCardModel;->gridFunctionDataList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/miui/common/card/GridFunctionData;

    invoke-virtual {v2, v0}, Lcom/miui/common/card/GridFunctionData;->setEditVisible(Z)V

    goto :goto_1

    :cond_5
    iget-object p1, p0, Lcom/miui/phonemanage/PhoneManagerFragment;->g:Lcom/miui/common/card/CardViewRvAdapter;

    invoke-virtual {p1}, Lcom/miui/common/card/CardViewRvAdapter;->clear()V

    iget-object p1, p0, Lcom/miui/phonemanage/PhoneManagerFragment;->g:Lcom/miui/common/card/CardViewRvAdapter;

    iget-object v0, p0, Lcom/miui/phonemanage/PhoneManagerFragment;->T:Ljava/util/List;

    invoke-virtual {p1, v0}, Lcom/miui/common/card/CardViewRvAdapter;->addAll(Ljava/util/List;)V

    iget-object p1, p0, Lcom/miui/phonemanage/PhoneManagerFragment;->g:Lcom/miui/common/card/CardViewRvAdapter;

    invoke-virtual {p1}, Lcom/miui/common/card/CardViewRvAdapter;->getModelList()Ljava/util/ArrayList;

    move-result-object p1

    iget-object v0, p0, Lcom/miui/phonemanage/PhoneManagerFragment;->L:Lcom/miui/common/card/models/BottomPlaceCardModel;

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    iget-object p1, p0, Lcom/miui/phonemanage/PhoneManagerFragment;->g:Lcom/miui/common/card/CardViewRvAdapter;

    invoke-virtual {p1}, Lcom/miui/common/card/CardViewRvAdapter;->getModelList()Ljava/util/ArrayList;

    move-result-object p1

    iget-object v0, p0, Lcom/miui/phonemanage/PhoneManagerFragment;->F:Ljava/util/List;

    invoke-static {p1, v0}, Leg/d;->e(Ljava/util/ArrayList;Ljava/util/List;)V

    iget-object p1, p0, Lcom/miui/phonemanage/PhoneManagerFragment;->g:Lcom/miui/common/card/CardViewRvAdapter;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/miui/common/card/CardViewRvAdapter;->notifyDataSetChanged(Z)V

    :goto_2
    return-void
.end method

.method public m1(Lcom/miui/common/card/models/BaseCardModel;Ljava/util/List;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/miui/common/card/models/BaseCardModel;",
            "Ljava/util/List<",
            "Lcom/miui/common/card/models/BaseCardModel;",
            ">;)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/miui/phonemanage/PhoneManagerFragment;->g:Lcom/miui/common/card/CardViewRvAdapter;

    invoke-virtual {v0}, Lcom/miui/common/card/CardViewRvAdapter;->getModelList()Ljava/util/ArrayList;

    move-result-object v0

    invoke-static {v0, p1}, Lsf/c;->o(Ljava/util/List;Lcom/miui/common/card/models/BaseCardModel;)I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    return-void

    :cond_0
    const/4 v1, 0x0

    if-nez p2, :cond_1

    move v2, v1

    goto :goto_0

    :cond_1
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v2

    :goto_0
    add-int/lit8 v2, v2, 0x1

    iget-object v3, p0, Lcom/miui/phonemanage/PhoneManagerFragment;->g:Lcom/miui/common/card/CardViewRvAdapter;

    invoke-virtual {v3}, Lcom/miui/common/card/CardViewRvAdapter;->getModelList()Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    instance-of v3, v3, Lcom/miui/common/card/models/LineCardModel;

    if-eqz v3, :cond_2

    add-int/lit8 v2, v2, 0x1

    :cond_2
    iget-object v3, p0, Lcom/miui/phonemanage/PhoneManagerFragment;->g:Lcom/miui/common/card/CardViewRvAdapter;

    invoke-virtual {v3}, Lcom/miui/common/card/CardViewRvAdapter;->getModelList()Ljava/util/ArrayList;

    move-result-object v3

    invoke-static {v3, p1}, Lsf/c;->u(Ljava/util/List;Lcom/miui/common/card/models/BaseCardModel;)V

    if-eqz p2, :cond_3

    iget-object p1, p0, Lcom/miui/phonemanage/PhoneManagerFragment;->g:Lcom/miui/common/card/CardViewRvAdapter;

    invoke-virtual {p1}, Lcom/miui/common/card/CardViewRvAdapter;->getModelList()Ljava/util/ArrayList;

    move-result-object p1

    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->removeAll(Ljava/util/Collection;)Z

    :cond_3
    iget-object p1, p0, Lcom/miui/phonemanage/PhoneManagerFragment;->g:Lcom/miui/common/card/CardViewRvAdapter;

    invoke-virtual {p1, v1, v0, v2}, Lcom/miui/common/card/CardViewRvAdapter;->notifyDataSetRemoved(ZII)V

    return-void
.end method

.method public n1(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/miui/phonemanage/PhoneManagerFragment;->p:Z

    return-void
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 1

    invoke-super {p0, p1}, Landroidx/fragment/app/Fragment;->onActivityCreated(Landroid/os/Bundle;)V

    iget-object p1, p0, Lcom/miui/phonemanage/PhoneManagerFragment;->k:Ljava/lang/Object;

    monitor-enter p1

    const/4 v0, 0x1

    :try_start_0
    iput-boolean v0, p0, Lcom/miui/phonemanage/PhoneManagerFragment;->m:Z

    iget-boolean v0, p0, Lcom/miui/phonemanage/PhoneManagerFragment;->l:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/miui/phonemanage/PhoneManagerFragment;->X0()V

    :cond_0
    monitor-exit p1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 1

    invoke-super {p0, p1}, Lmiuix/appcompat/app/Fragment;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    iget-boolean v0, p0, Lcom/miui/phonemanage/PhoneManagerFragment;->O:Z

    if-eqz v0, :cond_0

    iget p1, p1, Landroid/content/res/Configuration;->screenLayout:I

    and-int/lit8 p1, p1, 0xf

    iget v0, p0, Lcom/miui/phonemanage/PhoneManagerFragment;->S:I

    if-eq v0, p1, :cond_0

    iput p1, p0, Lcom/miui/phonemanage/PhoneManagerFragment;->S:I

    iget-object v0, p0, Lcom/miui/phonemanage/PhoneManagerFragment;->g:Lcom/miui/common/card/CardViewRvAdapter;

    invoke-virtual {v0, p1}, Lcom/miui/common/card/CardViewRvAdapter;->setScreenSize(I)V

    iget-object p1, p0, Lcom/miui/phonemanage/PhoneManagerFragment;->g:Lcom/miui/common/card/CardViewRvAdapter;

    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$h;->notifyDataSetChanged()V

    :cond_0
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 0

    invoke-super {p0, p1}, Lmiuix/appcompat/app/Fragment;->onCreate(Landroid/os/Bundle;)V

    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Lmiuix/appcompat/app/Fragment;->setExtraHorizontalPaddingEnable(Z)V

    return-void
.end method

.method public onDestroy()V
    .locals 2

    invoke-super {p0}, Lmiuix/appcompat/app/Fragment;->onDestroy()V

    iget-object v0, p0, Lcom/miui/phonemanage/PhoneManagerFragment;->g:Lcom/miui/common/card/CardViewRvAdapter;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/miui/common/card/CardViewRvAdapter;->onDestroy()V

    :cond_0
    iget-object v0, p0, Lcom/miui/phonemanage/PhoneManagerFragment;->i:Lad/a;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v1, p0, Lcom/miui/phonemanage/PhoneManagerFragment;->x:Lcom/miui/phonemanage/PhoneManagerFragment$j;

    if-eqz v1, :cond_1

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/phonemanage/PhoneManagerFragment;->x:Lcom/miui/phonemanage/PhoneManagerFragment$j;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    :cond_1
    return-void
.end method

.method public onExtraPaddingChanged(I)V
    .locals 2

    invoke-super {p0, p1}, Lmiuix/appcompat/app/Fragment;->onExtraPaddingChanged(I)V

    int-to-float p1, p1

    sget v0, Ltm/e;->d:I

    mul-int/lit8 v0, v0, 0x3

    int-to-float v0, v0

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    iget v1, v1, Landroid/util/DisplayMetrics;->density:F

    mul-float/2addr v0, v1

    add-float/2addr p1, v0

    float-to-int p1, p1

    iget-object v0, p0, Lcom/miui/phonemanage/PhoneManagerFragment;->D:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1, p1, v1}, Landroid/view/View;->setPaddingRelative(IIII)V

    return-void
.end method

.method public onInflateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 3

    const p3, 0x7f0e02cc

    const/4 v0, 0x0

    invoke-virtual {p1, p3, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p1

    invoke-static {}, Lx4/t;->r()Z

    move-result p3

    iput-boolean p3, p0, Lcom/miui/phonemanage/PhoneManagerFragment;->O:Z

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object p3

    invoke-virtual {p3}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object p3

    iget p3, p3, Landroid/content/res/Configuration;->screenLayout:I

    and-int/lit8 p3, p3, 0xf

    iput p3, p0, Lcom/miui/phonemanage/PhoneManagerFragment;->S:I

    const p3, 0x7f0b0968

    invoke-virtual {p1, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p3

    check-cast p3, Lcom/miui/common/customview/FirstTouchRecyclerView;

    iput-object p3, p0, Lcom/miui/phonemanage/PhoneManagerFragment;->c:Lcom/miui/common/customview/FirstTouchRecyclerView;

    new-instance p3, Landroidx/recyclerview/widget/LinearLayoutManager;

    invoke-virtual {p2}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-direct {p3, p2}, Landroidx/recyclerview/widget/LinearLayoutManager;-><init>(Landroid/content/Context;)V

    iput-object p3, p0, Lcom/miui/phonemanage/PhoneManagerFragment;->C:Landroidx/recyclerview/widget/LinearLayoutManager;

    iget-object p2, p0, Lcom/miui/phonemanage/PhoneManagerFragment;->c:Lcom/miui/common/customview/FirstTouchRecyclerView;

    invoke-virtual {p2, p3}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$n;)V

    const p2, 0x7f0b0967

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p3

    check-cast p3, Lcom/miui/common/customview/MainSpringBackLayout;

    iput-object p3, p0, Lcom/miui/phonemanage/PhoneManagerFragment;->d:Lcom/miui/common/customview/MainSpringBackLayout;

    const p3, 0x7f0b06eb

    invoke-virtual {p1, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p3

    iput-object p3, p0, Lcom/miui/phonemanage/PhoneManagerFragment;->D:Landroid/view/View;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object p3

    const v0, 0x7f071da7

    invoke-virtual {p3, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p3

    iget-object v0, p0, Lcom/miui/phonemanage/PhoneManagerFragment;->d:Lcom/miui/common/customview/MainSpringBackLayout;

    new-instance v1, Lad/e;

    invoke-direct {v1, p0, p3}, Lad/e;-><init>(Lcom/miui/phonemanage/PhoneManagerFragment;I)V

    invoke-virtual {v0, v1}, Lmiuix/springback/view/SpringBackLayout;->setOnSpringListener(Lmiuix/springback/view/SpringBackLayout$a;)V

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Lcom/miui/common/customview/MainSpringBackLayout;

    iput-object p2, p0, Lcom/miui/phonemanage/PhoneManagerFragment;->d:Lcom/miui/common/customview/MainSpringBackLayout;

    new-instance v0, Lcom/miui/phonemanage/PhoneManagerFragment$a;

    invoke-direct {v0, p0}, Lcom/miui/phonemanage/PhoneManagerFragment$a;-><init>(Lcom/miui/phonemanage/PhoneManagerFragment;)V

    invoke-virtual {p2, v0}, Lcom/miui/common/customview/MainSpringBackLayout;->setOnScrollChangeListener(Landroid/view/View$OnScrollChangeListener;)V

    invoke-direct {p0, p1}, Lcom/miui/phonemanage/PhoneManagerFragment;->W0(Landroid/view/View;)V

    iget-object p2, p0, Lcom/miui/phonemanage/PhoneManagerFragment;->d:Lcom/miui/common/customview/MainSpringBackLayout;

    iget-object v0, p0, Lcom/miui/phonemanage/PhoneManagerFragment;->c:Lcom/miui/common/customview/FirstTouchRecyclerView;

    invoke-virtual {p2, v0}, Lcom/miui/common/customview/MainSpringBackLayout;->setRecyclerView(Lcom/miui/common/customview/FirstTouchRecyclerView;)V

    new-instance p2, Lcom/miui/common/card/CardViewRvAdapter;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/phonemanage/PhoneManagerFragment;->i:Lad/a;

    const/4 v2, 0x3

    invoke-direct {p2, v0, v1, v2}, Lcom/miui/common/card/CardViewRvAdapter;-><init>(Landroid/content/Context;Landroid/os/Handler;I)V

    iput-object p2, p0, Lcom/miui/phonemanage/PhoneManagerFragment;->g:Lcom/miui/common/card/CardViewRvAdapter;

    iget-boolean v0, p0, Lcom/miui/phonemanage/PhoneManagerFragment;->O:Z

    invoke-virtual {p2, v0}, Lcom/miui/common/card/CardViewRvAdapter;->setFoldDevice(Z)V

    iget-object p2, p0, Lcom/miui/phonemanage/PhoneManagerFragment;->g:Lcom/miui/common/card/CardViewRvAdapter;

    iget v0, p0, Lcom/miui/phonemanage/PhoneManagerFragment;->S:I

    invoke-virtual {p2, v0}, Lcom/miui/common/card/CardViewRvAdapter;->setScreenSize(I)V

    iget-object p2, p0, Lcom/miui/phonemanage/PhoneManagerFragment;->g:Lcom/miui/common/card/CardViewRvAdapter;

    const/4 v0, 0x0

    invoke-virtual {p2, v0}, Lcom/miui/common/card/CardViewRvAdapter;->setDefaultStatShow(Z)V

    iget-object p2, p0, Lcom/miui/phonemanage/PhoneManagerFragment;->c:Lcom/miui/common/customview/FirstTouchRecyclerView;

    iget-object v1, p0, Lcom/miui/phonemanage/PhoneManagerFragment;->g:Lcom/miui/common/card/CardViewRvAdapter;

    invoke-virtual {p2, v1}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$h;)V

    new-instance p2, Lfm/a;

    invoke-direct {p2}, Lfm/a;-><init>()V

    iget-object v1, p0, Lcom/miui/phonemanage/PhoneManagerFragment;->c:Lcom/miui/common/customview/FirstTouchRecyclerView;

    invoke-virtual {v1, p2}, Landroidx/recyclerview/widget/RecyclerView;->setItemAnimator(Landroidx/recyclerview/widget/RecyclerView$ItemAnimator;)V

    iget-object p2, p0, Lcom/miui/phonemanage/PhoneManagerFragment;->c:Lcom/miui/common/customview/FirstTouchRecyclerView;

    new-instance v1, Lcom/miui/phonemanage/PhoneManagerFragment$b;

    invoke-direct {v1, p0}, Lcom/miui/phonemanage/PhoneManagerFragment$b;-><init>(Lcom/miui/phonemanage/PhoneManagerFragment;)V

    invoke-virtual {p2, v1}, Landroidx/recyclerview/widget/RecyclerView;->addOnScrollListener(Landroidx/recyclerview/widget/RecyclerView$s;)V

    iget-object p2, p0, Lcom/miui/phonemanage/PhoneManagerFragment;->c:Lcom/miui/common/customview/FirstTouchRecyclerView;

    new-instance v1, Lcom/miui/phonemanage/PhoneManagerFragment$c;

    invoke-direct {v1, p0, p3}, Lcom/miui/phonemanage/PhoneManagerFragment$c;-><init>(Lcom/miui/phonemanage/PhoneManagerFragment;I)V

    invoke-virtual {p2, v1}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    iget-object p2, p0, Lcom/miui/phonemanage/PhoneManagerFragment;->c:Lcom/miui/common/customview/FirstTouchRecyclerView;

    invoke-virtual {p2}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object p2

    new-instance p3, Lcom/miui/phonemanage/PhoneManagerFragment$d;

    invoke-direct {p3, p0}, Lcom/miui/phonemanage/PhoneManagerFragment$d;-><init>(Lcom/miui/phonemanage/PhoneManagerFragment;)V

    invoke-virtual {p2, p3}, Landroid/view/ViewTreeObserver;->addOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    const p2, 0x7f0b0014

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Lcom/miui/common/customview/ActionBarContainer;

    iput-object p2, p0, Lcom/miui/phonemanage/PhoneManagerFragment;->z:Lcom/miui/common/customview/ActionBarContainer;

    const p3, 0x7f1211e1

    invoke-virtual {p0, p3}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Lcom/miui/common/customview/ActionBarContainer;->setTitle(Ljava/lang/String;)V

    iget-object p2, p0, Lcom/miui/phonemanage/PhoneManagerFragment;->z:Lcom/miui/common/customview/ActionBarContainer;

    const p3, 0x7f08037e

    invoke-virtual {p2, p3}, Lcom/miui/common/customview/ActionBarContainer;->setBackIconRes(I)V

    iget-object p2, p0, Lcom/miui/phonemanage/PhoneManagerFragment;->z:Lcom/miui/common/customview/ActionBarContainer;

    invoke-virtual {p2, v0}, Lcom/miui/common/customview/ActionBarContainer;->setIsShowSecondTitle(Z)V

    iget-object p2, p0, Lcom/miui/phonemanage/PhoneManagerFragment;->z:Lcom/miui/common/customview/ActionBarContainer;

    invoke-virtual {p2, v0}, Lcom/miui/common/customview/ActionBarContainer;->setEndIcon(I)V

    iget-object p2, p0, Lcom/miui/phonemanage/PhoneManagerFragment;->z:Lcom/miui/common/customview/ActionBarContainer;

    new-instance p3, Lcom/miui/phonemanage/PhoneManagerFragment$e;

    invoke-direct {p3, p0}, Lcom/miui/phonemanage/PhoneManagerFragment$e;-><init>(Lcom/miui/phonemanage/PhoneManagerFragment;)V

    invoke-virtual {p2, p3}, Lcom/miui/common/customview/ActionBarContainer;->setActionBarEventListener(Lcom/miui/common/customview/ActionBarContainer$a;)V

    const p2, 0x7f0b09cb

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroidx/recyclerview/widget/RecyclerView;

    iput-object p2, p0, Lcom/miui/phonemanage/PhoneManagerFragment;->v:Landroidx/recyclerview/widget/RecyclerView;

    new-instance p2, Lbd/a;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object p3

    iget-object v0, p0, Lcom/miui/phonemanage/PhoneManagerFragment;->i:Lad/a;

    invoke-direct {p2, p3, v0}, Lbd/a;-><init>(Landroid/content/Context;Landroid/os/Handler;)V

    iput-object p2, p0, Lcom/miui/phonemanage/PhoneManagerFragment;->w:Lbd/a;

    iget-object p3, p0, Lcom/miui/phonemanage/PhoneManagerFragment;->v:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {p3, p2}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$h;)V

    new-instance p2, Landroidx/recyclerview/widget/GridLayoutManager;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object p3

    invoke-direct {p0}, Lcom/miui/phonemanage/PhoneManagerFragment;->U0()I

    move-result v0

    invoke-direct {p2, p3, v0}, Landroidx/recyclerview/widget/GridLayoutManager;-><init>(Landroid/content/Context;I)V

    new-instance p3, Lcom/miui/phonemanage/PhoneManagerFragment$f;

    invoke-direct {p3, p0}, Lcom/miui/phonemanage/PhoneManagerFragment$f;-><init>(Lcom/miui/phonemanage/PhoneManagerFragment;)V

    invoke-virtual {p2, p3}, Landroidx/recyclerview/widget/GridLayoutManager;->t(Landroidx/recyclerview/widget/GridLayoutManager$c;)V

    iget-object p3, p0, Lcom/miui/phonemanage/PhoneManagerFragment;->v:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {p3, p2}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$n;)V

    new-instance p2, Ldd/b;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object p3

    iget-object v0, p0, Lcom/miui/phonemanage/PhoneManagerFragment;->w:Lbd/a;

    invoke-direct {p2, p3, v0}, Ldd/b;-><init>(Landroid/content/Context;Lbd/a;)V

    new-instance p3, Lad/f;

    invoke-direct {p3, p0}, Lad/f;-><init>(Lcom/miui/phonemanage/PhoneManagerFragment;)V

    invoke-virtual {p2, p3}, Ldd/b;->C(Ldd/b$a;)V

    new-instance p3, Landroidx/recyclerview/widget/k;

    invoke-direct {p3, p2}, Landroidx/recyclerview/widget/k;-><init>(Landroidx/recyclerview/widget/k$e;)V

    iget-object p2, p0, Lcom/miui/phonemanage/PhoneManagerFragment;->v:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {p3, p2}, Landroidx/recyclerview/widget/k;->g(Landroidx/recyclerview/widget/RecyclerView;)V

    const p2, 0x7f0b0b0d

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/view/ViewStub;

    iput-object p2, p0, Lcom/miui/phonemanage/PhoneManagerFragment;->M:Landroid/view/ViewStub;

    iget-object p2, p0, Lcom/miui/phonemanage/PhoneManagerFragment;->c:Lcom/miui/common/customview/FirstTouchRecyclerView;

    new-instance p3, Lcom/miui/phonemanage/PhoneManagerFragment$g;

    invoke-direct {p3, p0}, Lcom/miui/phonemanage/PhoneManagerFragment$g;-><init>(Lcom/miui/phonemanage/PhoneManagerFragment;)V

    invoke-virtual {p2, p3}, Landroidx/recyclerview/widget/RecyclerView;->addOnScrollListener(Landroidx/recyclerview/widget/RecyclerView$s;)V

    return-object p1
.end method

.method public onPause()V
    .locals 1

    invoke-super {p0}, Landroidx/fragment/app/Fragment;->onPause()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/miui/phonemanage/PhoneManagerFragment;->n:Z

    const/4 v0, 0x0

    invoke-virtual {p0, v0, v0}, Lcom/miui/phonemanage/PhoneManagerFragment;->g1(ZZ)V

    return-void
.end method

.method public onResume()V
    .locals 1

    invoke-super {p0}, Lmiuix/appcompat/app/Fragment;->onResume()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/miui/phonemanage/PhoneManagerFragment;->n:Z

    return-void
.end method

.method public onVisibilityChanged(Z)V
    .locals 13

    invoke-super {p0, p1}, Lmiuix/appcompat/app/Fragment;->onVisibilityChanged(Z)V

    const-wide/16 v0, 0x12c

    const/4 v2, 0x2

    const/4 v3, -0x2

    const-string v4, "ori"

    const-wide/16 v5, 0x0

    const/16 v7, 0x1f8

    const/4 v8, 0x1

    const/4 v9, 0x0

    if-nez p1, :cond_3

    invoke-virtual {p0, v8}, Lcom/miui/phonemanage/PhoneManagerFragment;->s1(Z)V

    iget-object p1, p0, Lcom/miui/phonemanage/PhoneManagerFragment;->i:Lad/a;

    invoke-virtual {p1, v7}, Landroid/os/Handler;->removeMessages(I)V

    iget-object p1, p0, Lcom/miui/phonemanage/PhoneManagerFragment;->i:Lad/a;

    const/16 v7, 0x1f6

    invoke-virtual {p1, v7}, Landroid/os/Handler;->removeMessages(I)V

    iget-object p1, p0, Lcom/miui/phonemanage/PhoneManagerFragment;->i:Lad/a;

    const/16 v7, 0x1f7

    invoke-virtual {p1, v7}, Landroid/os/Handler;->removeMessages(I)V

    invoke-virtual {p0}, Lmiuix/appcompat/app/Fragment;->getView()Landroid/view/View;

    move-result-object p1

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Lmiuix/appcompat/app/Fragment;->getView()Landroid/view/View;

    move-result-object p1

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v10, 0x7f060d09

    const/4 v11, 0x0

    invoke-virtual {v7, v10, v11}, Landroid/content/res/Resources;->getColor(ILandroid/content/res/Resources$Theme;)I

    move-result v7

    invoke-virtual {p1, v7}, Landroid/view/View;->setBackgroundColor(I)V

    :cond_0
    iget-object p1, p0, Lcom/miui/phonemanage/PhoneManagerFragment;->B:Lcom/miui/phonemanage/view/PopularActionFindView;

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Lcom/miui/phonemanage/view/PopularActionFindView;->d()V

    iget-object p1, p0, Lcom/miui/phonemanage/PhoneManagerFragment;->B:Lcom/miui/phonemanage/view/PopularActionFindView;

    const/16 v7, 0x8

    invoke-virtual {p1, v7}, Landroid/view/View;->setVisibility(I)V

    :cond_1
    iput-boolean v9, p0, Lcom/miui/phonemanage/PhoneManagerFragment;->J:Z

    iput-boolean v9, p0, Lcom/miui/phonemanage/PhoneManagerFragment;->I:Z

    iput-boolean v9, p0, Lcom/miui/phonemanage/PhoneManagerFragment;->U:Z

    iget-object p1, p0, Lcom/miui/phonemanage/PhoneManagerFragment;->c:Lcom/miui/common/customview/FirstTouchRecyclerView;

    if-eqz p1, :cond_2

    new-instance p1, Lmiuix/animation/controller/AnimState;

    const-string v7, "out"

    invoke-direct {p1, v7}, Lmiuix/animation/controller/AnimState;-><init>(Ljava/lang/Object;)V

    sget-object v7, Lmiuix/animation/property/ViewProperty;->TRANSLATION_Y:Lmiuix/animation/property/ViewProperty;

    invoke-static {}, Ldb/e;->b()I

    move-result v10

    int-to-double v10, v10

    invoke-virtual {p1, v7, v10, v11}, Lmiuix/animation/controller/AnimState;->add(Ljava/lang/Object;D)Lmiuix/animation/controller/AnimState;

    move-result-object p1

    new-instance v10, Lmiuix/animation/controller/AnimState;

    invoke-direct {v10, v4}, Lmiuix/animation/controller/AnimState;-><init>(Ljava/lang/Object;)V

    invoke-virtual {v10, v7, v5, v6}, Lmiuix/animation/controller/AnimState;->add(Ljava/lang/Object;D)Lmiuix/animation/controller/AnimState;

    move-result-object v4

    new-instance v5, Lmiuix/animation/base/AnimConfig;

    invoke-direct {v5}, Lmiuix/animation/base/AnimConfig;-><init>()V

    new-array v2, v2, [F

    fill-array-data v2, :array_0

    invoke-static {v3, v2}, Lmiuix/animation/utils/EaseManager;->getStyle(I[F)Lmiuix/animation/utils/EaseManager$EaseStyle;

    move-result-object v2

    invoke-virtual {v5, v2}, Lmiuix/animation/base/AnimConfig;->setEase(Lmiuix/animation/utils/EaseManager$EaseStyle;)Lmiuix/animation/base/AnimConfig;

    new-array v2, v8, [Landroid/view/View;

    iget-object v3, p0, Lcom/miui/phonemanage/PhoneManagerFragment;->D:Landroid/view/View;

    aput-object v3, v2, v9

    invoke-static {v2}, Lmiuix/animation/Folme;->useAt([Landroid/view/View;)Lmiuix/animation/IFolme;

    move-result-object v2

    invoke-interface {v2}, Lmiuix/animation/IFolme;->state()Lmiuix/animation/IStateStyle;

    move-result-object v2

    invoke-interface {v2, v4}, Lmiuix/animation/IStateStyle;->setTo(Ljava/lang/Object;)Lmiuix/animation/IStateStyle;

    move-result-object v2

    new-array v3, v8, [Lmiuix/animation/base/AnimConfig;

    aput-object v5, v3, v9

    invoke-interface {v2, p1, v3}, Lmiuix/animation/IStateStyle;->to(Ljava/lang/Object;[Lmiuix/animation/base/AnimConfig;)Lmiuix/animation/IStateStyle;

    :cond_2
    iget-object p1, p0, Lcom/miui/phonemanage/PhoneManagerFragment;->i:Lad/a;

    new-instance v2, Lad/b;

    invoke-direct {v2, p0}, Lad/b;-><init>(Lcom/miui/phonemanage/PhoneManagerFragment;)V

    invoke-virtual {p1, v2, v0, v1}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    const/4 p1, -0x1

    iput p1, p0, Lcom/miui/phonemanage/PhoneManagerFragment;->G:I

    iput p1, p0, Lcom/miui/phonemanage/PhoneManagerFragment;->H:I

    iput-boolean v9, p0, Lcom/miui/phonemanage/PhoneManagerFragment;->N:Z

    goto/16 :goto_2

    :cond_3
    iget-boolean p1, p0, Lcom/miui/phonemanage/PhoneManagerFragment;->P:Z

    if-nez p1, :cond_4

    invoke-virtual {p0}, Lcom/miui/phonemanage/PhoneManagerFragment;->S0()V

    :cond_4
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getArguments()Landroid/os/Bundle;

    move-result-object p1

    if-eqz p1, :cond_5

    const-string v10, "enter_by_slide"

    invoke-virtual {p1, v10, v9}, Landroid/os/BaseBundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result p1

    iput-boolean p1, p0, Lcom/miui/phonemanage/PhoneManagerFragment;->N:Z

    :cond_5
    iput-boolean v9, p0, Lcom/miui/phonemanage/PhoneManagerFragment;->V:Z

    new-instance p1, Lmiuix/animation/controller/AnimState;

    const-string v10, "in"

    invoke-direct {p1, v10}, Lmiuix/animation/controller/AnimState;-><init>(Ljava/lang/Object;)V

    sget-object v10, Lmiuix/animation/property/ViewProperty;->TRANSLATION_Y:Lmiuix/animation/property/ViewProperty;

    invoke-virtual {p1, v10, v5, v6}, Lmiuix/animation/controller/AnimState;->add(Ljava/lang/Object;D)Lmiuix/animation/controller/AnimState;

    move-result-object p1

    new-instance v5, Lmiuix/animation/controller/AnimState;

    invoke-direct {v5, v4}, Lmiuix/animation/controller/AnimState;-><init>(Ljava/lang/Object;)V

    invoke-static {}, Ldb/e;->b()I

    move-result v4

    int-to-double v11, v4

    invoke-virtual {v5, v10, v11, v12}, Lmiuix/animation/controller/AnimState;->add(Ljava/lang/Object;D)Lmiuix/animation/controller/AnimState;

    move-result-object v4

    new-instance v5, Lmiuix/animation/base/AnimConfig;

    invoke-direct {v5}, Lmiuix/animation/base/AnimConfig;-><init>()V

    new-array v2, v2, [F

    fill-array-data v2, :array_1

    invoke-static {v3, v2}, Lmiuix/animation/utils/EaseManager;->getStyle(I[F)Lmiuix/animation/utils/EaseManager$EaseStyle;

    move-result-object v2

    invoke-virtual {v5, v2}, Lmiuix/animation/base/AnimConfig;->setEase(Lmiuix/animation/utils/EaseManager$EaseStyle;)Lmiuix/animation/base/AnimConfig;

    iget-boolean v2, p0, Lcom/miui/phonemanage/PhoneManagerFragment;->J:Z

    if-nez v2, :cond_7

    iget-boolean v2, p0, Lcom/miui/phonemanage/PhoneManagerFragment;->I:Z

    if-eqz v2, :cond_6

    goto :goto_0

    :cond_6
    new-array v2, v8, [Landroid/view/View;

    iget-object v3, p0, Lcom/miui/phonemanage/PhoneManagerFragment;->D:Landroid/view/View;

    aput-object v3, v2, v9

    invoke-static {v2}, Lmiuix/animation/Folme;->useAt([Landroid/view/View;)Lmiuix/animation/IFolme;

    move-result-object v2

    invoke-interface {v2}, Lmiuix/animation/IFolme;->state()Lmiuix/animation/IStateStyle;

    move-result-object v2

    invoke-interface {v2, v4}, Lmiuix/animation/IStateStyle;->setTo(Ljava/lang/Object;)Lmiuix/animation/IStateStyle;

    move-result-object v2

    new-array v3, v8, [Lmiuix/animation/base/AnimConfig;

    aput-object v5, v3, v9

    invoke-interface {v2, p1, v3}, Lmiuix/animation/IStateStyle;->to(Ljava/lang/Object;[Lmiuix/animation/base/AnimConfig;)Lmiuix/animation/IStateStyle;

    goto :goto_1

    :cond_7
    :goto_0
    iget-object v2, p0, Lcom/miui/phonemanage/PhoneManagerFragment;->B:Lcom/miui/phonemanage/view/PopularActionFindView;

    if-nez v2, :cond_8

    iget-object v2, p0, Lcom/miui/phonemanage/PhoneManagerFragment;->M:Landroid/view/ViewStub;

    invoke-virtual {v2}, Landroid/view/ViewStub;->inflate()Landroid/view/View;

    move-result-object v2

    const v3, 0x7f0b08d8

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/miui/phonemanage/view/PopularActionFindView;

    iput-object v2, p0, Lcom/miui/phonemanage/PhoneManagerFragment;->B:Lcom/miui/phonemanage/view/PopularActionFindView;

    :cond_8
    iget-object v2, p0, Lcom/miui/phonemanage/PhoneManagerFragment;->B:Lcom/miui/phonemanage/view/PopularActionFindView;

    invoke-virtual {v2}, Lcom/miui/phonemanage/view/PopularActionFindView;->d()V

    iget-object v2, p0, Lcom/miui/phonemanage/PhoneManagerFragment;->B:Lcom/miui/phonemanage/view/PopularActionFindView;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/view/View;->setAlpha(F)V

    iget-object v2, p0, Lcom/miui/phonemanage/PhoneManagerFragment;->B:Lcom/miui/phonemanage/view/PopularActionFindView;

    invoke-virtual {v2, v9}, Landroid/view/View;->setVisibility(I)V

    new-array v2, v8, [Landroid/view/View;

    iget-object v3, p0, Lcom/miui/phonemanage/PhoneManagerFragment;->D:Landroid/view/View;

    aput-object v3, v2, v9

    invoke-static {v2}, Lmiuix/animation/Folme;->useAt([Landroid/view/View;)Lmiuix/animation/IFolme;

    move-result-object v2

    invoke-interface {v2}, Lmiuix/animation/IFolme;->state()Lmiuix/animation/IStateStyle;

    move-result-object v2

    invoke-interface {v2, v4}, Lmiuix/animation/IStateStyle;->setTo(Ljava/lang/Object;)Lmiuix/animation/IStateStyle;

    move-result-object v2

    new-array v3, v9, [Lmiuix/animation/base/AnimConfig;

    invoke-interface {v2, p1, v3}, Lmiuix/animation/IStateStyle;->to(Ljava/lang/Object;[Lmiuix/animation/base/AnimConfig;)Lmiuix/animation/IStateStyle;

    :goto_1
    iget-object p1, p0, Lcom/miui/phonemanage/PhoneManagerFragment;->i:Lad/a;

    new-instance v2, Lad/c;

    invoke-direct {v2, p0}, Lad/c;-><init>(Lcom/miui/phonemanage/PhoneManagerFragment;)V

    invoke-virtual {p1, v2, v0, v1}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    iget-boolean p1, p0, Lcom/miui/phonemanage/PhoneManagerFragment;->J:Z

    if-eqz p1, :cond_9

    iget-object p1, p0, Lcom/miui/phonemanage/PhoneManagerFragment;->i:Lad/a;

    const-wide/16 v0, 0x1f4

    invoke-virtual {p1, v7, v0, v1}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    :cond_9
    :goto_2
    return-void

    :array_0
    .array-data 4
        0x3f800000    # 1.0f
        0x3ecccccd    # 0.4f
    .end array-data

    :array_1
    .array-data 4
        0x3f666666    # 0.9f
        0x3eb33333    # 0.35f
    .end array-data
.end method

.method public r1()V
    .locals 3

    iget v0, p0, Lcom/miui/phonemanage/PhoneManagerFragment;->G:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_1

    iget v0, p0, Lcom/miui/phonemanage/PhoneManagerFragment;->H:I

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/miui/phonemanage/PhoneManagerFragment;->g:Lcom/miui/common/card/CardViewRvAdapter;

    invoke-virtual {v0}, Lcom/miui/common/card/CardViewRvAdapter;->getModelList()Ljava/util/ArrayList;

    move-result-object v0

    iget v1, p0, Lcom/miui/phonemanage/PhoneManagerFragment;->G:I

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcd/b;

    iget v1, p0, Lcom/miui/phonemanage/PhoneManagerFragment;->H:I

    invoke-virtual {v0, v1}, Lcd/b;->d(I)V

    iget-object v0, p0, Lcom/miui/phonemanage/PhoneManagerFragment;->g:Lcom/miui/common/card/CardViewRvAdapter;

    iget v1, p0, Lcom/miui/phonemanage/PhoneManagerFragment;->G:I

    const-string v2, "findViewStartAnim"

    invoke-virtual {v0, v1, v2}, Landroidx/recyclerview/widget/RecyclerView$h;->notifyItemChanged(ILjava/lang/Object;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public s1(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/miui/phonemanage/PhoneManagerFragment;->o:Z

    return-void
.end method

.method public u1(Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/miui/common/card/models/BaseCardModel;",
            ">;)V"
        }
    .end annotation

    iget-boolean v0, p0, Lcom/miui/phonemanage/PhoneManagerFragment;->A:Z

    if-nez v0, :cond_4

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->isVisible()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/phonemanage/PhoneManagerFragment;->g:Lcom/miui/common/card/CardViewRvAdapter;

    if-eqz v1, :cond_4

    invoke-direct {p0, v0}, Lcom/miui/phonemanage/PhoneManagerFragment;->Y0(Landroid/app/Activity;)Z

    move-result v1

    if-nez v1, :cond_1

    goto :goto_0

    :cond_1
    iget-object v1, p0, Lcom/miui/phonemanage/PhoneManagerFragment;->j:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    invoke-static {v2}, Lsf/c;->k(Ljava/util/ArrayList;)Ljava/util/ArrayList;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/miui/phonemanage/PhoneManagerFragment;->h:Ljava/util/List;

    if-nez v2, :cond_2

    invoke-static {v0}, Lsf/b;->g(Landroid/content/Context;)Ljava/util/ArrayList;

    move-result-object p1

    :cond_2
    invoke-virtual {p0, p1}, Lcom/miui/phonemanage/PhoneManagerFragment;->v1(Ljava/util/List;)V

    iget-boolean p1, p0, Lcom/miui/phonemanage/PhoneManagerFragment;->p:Z

    if-eqz p1, :cond_3

    iget-object p1, p0, Lcom/miui/phonemanage/PhoneManagerFragment;->g:Lcom/miui/common/card/CardViewRvAdapter;

    invoke-virtual {p1}, Lcom/miui/common/card/CardViewRvAdapter;->getModelList()Ljava/util/ArrayList;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/miui/phonemanage/PhoneManagerFragment;->w1(Ljava/util/List;)V

    :cond_3
    monitor-exit v1

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1

    :cond_4
    :goto_0
    return-void
.end method

.method public v1(Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/miui/common/card/models/BaseCardModel;",
            ">;)V"
        }
    .end annotation

    iget-boolean v0, p0, Lcom/miui/phonemanage/PhoneManagerFragment;->A:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/miui/phonemanage/PhoneManagerFragment;->g:Lcom/miui/common/card/CardViewRvAdapter;

    invoke-virtual {v0}, Lcom/miui/common/card/CardViewRvAdapter;->getModelList()Ljava/util/ArrayList;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/miui/common/card/models/BaseCardModel;

    instance-of v2, v1, Lcd/a;

    if-eqz v2, :cond_1

    invoke-virtual {v1}, Lcom/miui/common/card/models/BaseCardModel;->stopAutoScroll()V

    goto :goto_0

    :cond_2
    sget-boolean v0, Lmiui/os/Build;->IS_INTERNATIONAL_BUILD:Z

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/miui/phonemanage/PhoneManagerFragment;->L:Lcom/miui/common/card/models/BottomPlaceCardModel;

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_3
    iget-object v0, p0, Lcom/miui/phonemanage/PhoneManagerFragment;->g:Lcom/miui/common/card/CardViewRvAdapter;

    invoke-virtual {v0}, Lcom/miui/common/card/CardViewRvAdapter;->clear()V

    iget-object v0, p0, Lcom/miui/phonemanage/PhoneManagerFragment;->g:Lcom/miui/common/card/CardViewRvAdapter;

    invoke-virtual {v0, p1}, Lcom/miui/common/card/CardViewRvAdapter;->addAll(Ljava/util/List;)V

    iget-boolean p1, p0, Lcom/miui/phonemanage/PhoneManagerFragment;->U:Z

    if-nez p1, :cond_4

    iget-object p1, p0, Lcom/miui/phonemanage/PhoneManagerFragment;->g:Lcom/miui/common/card/CardViewRvAdapter;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/miui/common/card/CardViewRvAdapter;->notifyDataSetChanged(Z)V

    iget-object p1, p0, Lcom/miui/phonemanage/PhoneManagerFragment;->C:Landroidx/recyclerview/widget/LinearLayoutManager;

    invoke-virtual {p1}, Landroidx/recyclerview/widget/LinearLayoutManager;->findFirstVisibleItemPosition()I

    move-result p1

    iput p1, p0, Lcom/miui/phonemanage/PhoneManagerFragment;->Q:I

    iget-object p1, p0, Lcom/miui/phonemanage/PhoneManagerFragment;->C:Landroidx/recyclerview/widget/LinearLayoutManager;

    invoke-virtual {p1}, Landroidx/recyclerview/widget/LinearLayoutManager;->findLastVisibleItemPosition()I

    move-result p1

    iput p1, p0, Lcom/miui/phonemanage/PhoneManagerFragment;->R:I

    iget v0, p0, Lcom/miui/phonemanage/PhoneManagerFragment;->Q:I

    invoke-direct {p0, v0, p1}, Lcom/miui/phonemanage/PhoneManagerFragment;->t1(II)V

    :cond_4
    return-void
.end method

.method public x1()V
    .locals 2

    iget-object v0, p0, Lcom/miui/phonemanage/PhoneManagerFragment;->g:Lcom/miui/common/card/CardViewRvAdapter;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/miui/common/card/CardViewRvAdapter;->notifyDataSetChanged(Z)V

    return-void
.end method
