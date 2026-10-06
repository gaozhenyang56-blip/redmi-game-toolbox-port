.class public Lcom/miui/securityscan/MainActivity;
.super Lcom/miui/securityscan/BaseAdvActivity;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/securityscan/MainActivity$b;
    }
.end annotation


# instance fields
.field private b:Landroid/widget/FrameLayout;

.field public c:Z

.field private d:Lpf/a;

.field private e:Lcom/miui/securityscan/MainActivity$b;

.field private f:I

.field private g:Z

.field private final h:Landroid/os/MessageQueue$IdleHandler;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/miui/securityscan/BaseAdvActivity;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/miui/securityscan/MainActivity;->f:I

    iput-boolean v0, p0, Lcom/miui/securityscan/MainActivity;->g:Z

    new-instance v0, Lpf/c;

    invoke-direct {v0, p0}, Lpf/c;-><init>(Lcom/miui/securityscan/MainActivity;)V

    iput-object v0, p0, Lcom/miui/securityscan/MainActivity;->h:Landroid/os/MessageQueue$IdleHandler;

    return-void
.end method

.method public static synthetic i0(Lcom/miui/securityscan/MainActivity;)Z
    .locals 0

    invoke-direct {p0}, Lcom/miui/securityscan/MainActivity;->r0()Z

    move-result p0

    return p0
.end method

.method private initView()V
    .locals 5

    invoke-virtual {p0}, Landroidx/fragment/app/FragmentActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v0

    const-string v1, "page_0"

    invoke-virtual {v0, v1}, Landroidx/fragment/app/FragmentManager;->h0(Ljava/lang/String;)Landroidx/fragment/app/Fragment;

    move-result-object v0

    check-cast v0, Lcom/miui/securityscan/MainFragment;

    if-nez v0, :cond_0

    new-instance v0, Lcom/miui/securityscan/MainFragment;

    invoke-direct {v0}, Lcom/miui/securityscan/MainFragment;-><init>()V

    invoke-virtual {p0}, Landroidx/fragment/app/FragmentActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v2

    invoke-virtual {v2}, Landroidx/fragment/app/FragmentManager;->m()Landroidx/fragment/app/s;

    move-result-object v2

    iget-object v3, p0, Lcom/miui/securityscan/MainActivity;->b:Landroid/widget/FrameLayout;

    invoke-virtual {v3}, Landroid/view/View;->getId()I

    move-result v3

    invoke-virtual {v2, v3, v0, v1}, Landroidx/fragment/app/s;->c(ILandroidx/fragment/app/Fragment;Ljava/lang/String;)Landroidx/fragment/app/s;

    move-result-object v1

    invoke-virtual {v1}, Landroidx/fragment/app/s;->n()V

    :cond_0
    iget-boolean v1, p0, Lcom/miui/securityscan/MainActivity;->c:Z

    if-eqz v1, :cond_3

    invoke-virtual {p0}, Landroidx/fragment/app/FragmentActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v1

    const-string v2, "page_1"

    invoke-virtual {v1, v2}, Landroidx/fragment/app/FragmentManager;->h0(Ljava/lang/String;)Landroidx/fragment/app/Fragment;

    move-result-object v1

    check-cast v1, Lcom/miui/phonemanage/PhoneManagerFragment;

    if-nez v1, :cond_1

    new-instance v1, Lcom/miui/phonemanage/PhoneManagerFragment;

    invoke-direct {v1}, Lcom/miui/phonemanage/PhoneManagerFragment;-><init>()V

    invoke-virtual {p0}, Landroidx/fragment/app/FragmentActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v3

    invoke-virtual {v3}, Landroidx/fragment/app/FragmentManager;->m()Landroidx/fragment/app/s;

    move-result-object v3

    iget-object v4, p0, Lcom/miui/securityscan/MainActivity;->b:Landroid/widget/FrameLayout;

    invoke-virtual {v4}, Landroid/view/View;->getId()I

    move-result v4

    invoke-virtual {v3, v4, v1, v2}, Landroidx/fragment/app/s;->c(ILandroidx/fragment/app/Fragment;Ljava/lang/String;)Landroidx/fragment/app/s;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroidx/fragment/app/s;->E(Landroidx/fragment/app/Fragment;)Landroidx/fragment/app/s;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroidx/fragment/app/s;->s(Landroidx/fragment/app/Fragment;)Landroidx/fragment/app/s;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/fragment/app/s;->n()V

    :cond_1
    invoke-direct {p0}, Lcom/miui/securityscan/MainActivity;->p0()Z

    move-result v0

    if-eqz v0, :cond_2

    const/4 v0, 0x0

    invoke-virtual {v1, v0}, Lcom/miui/phonemanage/PhoneManagerFragment;->n1(Z)V

    :cond_2
    invoke-virtual {p0}, Lcom/miui/securityscan/MainActivity;->o0()V

    :cond_3
    return-void
.end method

.method public static synthetic j0(Lcom/miui/securityscan/MainActivity;)V
    .locals 0

    invoke-direct {p0}, Lcom/miui/securityscan/MainActivity;->v0()V

    return-void
.end method

.method private l0()Lcom/miui/securityscan/MainFragment;
    .locals 3

    invoke-virtual {p0}, Landroidx/fragment/app/FragmentActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/fragment/app/FragmentManager;->u0()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/fragment/app/Fragment;

    instance-of v2, v1, Lcom/miui/securityscan/MainFragment;

    if-eqz v2, :cond_0

    check-cast v1, Lcom/miui/securityscan/MainFragment;

    return-object v1

    :cond_1
    const/4 v0, 0x0

    return-object v0
.end method

.method private m0()Lcom/miui/phonemanage/PhoneManagerFragment;
    .locals 3

    invoke-virtual {p0}, Landroidx/fragment/app/FragmentActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/fragment/app/FragmentManager;->u0()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/fragment/app/Fragment;

    instance-of v2, v1, Lcom/miui/phonemanage/PhoneManagerFragment;

    if-eqz v2, :cond_0

    check-cast v1, Lcom/miui/phonemanage/PhoneManagerFragment;

    return-object v1

    :cond_1
    const/4 v0, 0x0

    return-object v0
.end method

.method private p0()Z
    .locals 4

    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    const-string v2, "isAutoOpenPmPage"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v3

    if-nez v3, :cond_0

    invoke-virtual {v0}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0, v2, v1}, Landroid/net/Uri;->getBooleanQueryParameter(Ljava/lang/String;Z)Z

    move-result v1

    goto :goto_0

    :cond_0
    move v1, v3

    :cond_1
    :goto_0
    return v1
.end method

.method private synthetic r0()Z
    .locals 1

    invoke-direct {p0}, Lcom/miui/securityscan/MainActivity;->m0()Lcom/miui/phonemanage/PhoneManagerFragment;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/miui/phonemanage/BaseLazyFragment;->c0()V

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method private v0()V
    .locals 3

    invoke-virtual {p0}, Landroidx/fragment/app/FragmentActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/fragment/app/FragmentManager;->u0()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/fragment/app/Fragment;

    invoke-virtual {p0}, Landroidx/fragment/app/FragmentActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v2

    invoke-virtual {v2}, Landroidx/fragment/app/FragmentManager;->m()Landroidx/fragment/app/s;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroidx/fragment/app/s;->u(Landroidx/fragment/app/Fragment;)Landroidx/fragment/app/s;

    move-result-object v1

    invoke-virtual {v1}, Landroidx/fragment/app/s;->l()I

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lmiuix/appcompat/app/AppCompatActivity;->finish()V

    return-void
.end method

.method private y0()V
    .locals 2

    invoke-direct {p0}, Lcom/miui/securityscan/MainActivity;->l0()Lcom/miui/securityscan/MainFragment;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/miui/securityscan/MainFragment;->R:Z

    const/4 v1, 0x0

    iput-object v1, v0, Lcom/miui/securityscan/MainFragment;->S:Lsf/d;

    :cond_0
    return-void
.end method


# virtual methods
.method public A0(Lwf/a;)V
    .locals 1

    invoke-direct {p0}, Lcom/miui/securityscan/MainActivity;->l0()Lcom/miui/securityscan/MainFragment;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lcom/miui/securityscan/MainFragment;->I2(Lwf/a;)V

    :cond_0
    return-void
.end method

.method public B0(I)V
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/miui/securityscan/MainActivity;->C0(ILandroid/os/Bundle;)V

    return-void
.end method

.method public C0(ILandroid/os/Bundle;)V
    .locals 4

    iget v0, p0, Lcom/miui/securityscan/MainActivity;->f:I

    if-eq v0, p1, :cond_3

    const-string v0, "page_0"

    const-string v1, "page_1"

    invoke-virtual {p0}, Landroidx/fragment/app/FragmentActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v2

    if-nez p1, :cond_1

    invoke-virtual {v2, v0}, Landroidx/fragment/app/FragmentManager;->h0(Ljava/lang/String;)Landroidx/fragment/app/Fragment;

    move-result-object v2

    invoke-virtual {v2}, Landroidx/fragment/app/Fragment;->isStateSaved()Z

    move-result v3

    if-nez v3, :cond_0

    invoke-virtual {v2, p2}, Landroidx/fragment/app/Fragment;->setArguments(Landroid/os/Bundle;)V

    :cond_0
    invoke-virtual {p0}, Landroidx/fragment/app/FragmentActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object p2

    invoke-virtual {p2}, Landroidx/fragment/app/FragmentManager;->m()Landroidx/fragment/app/s;

    move-result-object p2

    const v2, 0x7f010041

    const v3, 0x7f010042

    invoke-virtual {p2, v2, v3}, Landroidx/fragment/app/s;->z(II)Landroidx/fragment/app/s;

    move-result-object p2

    invoke-virtual {p0}, Landroidx/fragment/app/FragmentActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroidx/fragment/app/FragmentManager;->h0(Ljava/lang/String;)Landroidx/fragment/app/Fragment;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroidx/fragment/app/s;->E(Landroidx/fragment/app/Fragment;)Landroidx/fragment/app/s;

    move-result-object p2

    invoke-virtual {p0}, Landroidx/fragment/app/FragmentActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroidx/fragment/app/FragmentManager;->h0(Ljava/lang/String;)Landroidx/fragment/app/Fragment;

    move-result-object v0

    goto :goto_0

    :cond_1
    invoke-virtual {v2, v1}, Landroidx/fragment/app/FragmentManager;->h0(Ljava/lang/String;)Landroidx/fragment/app/Fragment;

    move-result-object v2

    invoke-virtual {v2}, Landroidx/fragment/app/Fragment;->isStateSaved()Z

    move-result v3

    if-nez v3, :cond_2

    invoke-virtual {v2, p2}, Landroidx/fragment/app/Fragment;->setArguments(Landroid/os/Bundle;)V

    :cond_2
    invoke-virtual {p0}, Landroidx/fragment/app/FragmentActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object p2

    invoke-virtual {p2}, Landroidx/fragment/app/FragmentManager;->m()Landroidx/fragment/app/s;

    move-result-object p2

    const v2, 0x7f01003e

    const v3, 0x7f01003f

    invoke-virtual {p2, v2, v3}, Landroidx/fragment/app/s;->z(II)Landroidx/fragment/app/s;

    move-result-object p2

    invoke-virtual {p0}, Landroidx/fragment/app/FragmentActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroidx/fragment/app/FragmentManager;->h0(Ljava/lang/String;)Landroidx/fragment/app/Fragment;

    move-result-object v1

    invoke-virtual {p2, v1}, Landroidx/fragment/app/s;->E(Landroidx/fragment/app/Fragment;)Landroidx/fragment/app/s;

    move-result-object p2

    invoke-virtual {p0}, Landroidx/fragment/app/FragmentActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroidx/fragment/app/FragmentManager;->h0(Ljava/lang/String;)Landroidx/fragment/app/Fragment;

    move-result-object v0

    :goto_0
    invoke-virtual {p2, v0}, Landroidx/fragment/app/s;->s(Landroidx/fragment/app/Fragment;)Landroidx/fragment/app/s;

    move-result-object p2

    invoke-virtual {p2}, Landroidx/fragment/app/s;->n()V

    :cond_3
    iput p1, p0, Lcom/miui/securityscan/MainActivity;->f:I

    return-void
.end method

.method public D0(Ljava/lang/String;)V
    .locals 1

    invoke-direct {p0}, Lcom/miui/securityscan/MainActivity;->l0()Lcom/miui/securityscan/MainFragment;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lcom/miui/securityscan/MainFragment;->M2(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public E0(Ljava/lang/String;)V
    .locals 1

    invoke-direct {p0}, Lcom/miui/securityscan/MainActivity;->l0()Lcom/miui/securityscan/MainFragment;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lcom/miui/securityscan/MainFragment;->j2(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public F0(Ljava/lang/String;Z)V
    .locals 1

    invoke-direct {p0}, Lcom/miui/securityscan/MainActivity;->l0()Lcom/miui/securityscan/MainFragment;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1, p2}, Lcom/miui/securityscan/MainFragment;->Z2(Ljava/lang/String;Z)V

    :cond_0
    return-void
.end method

.method public G0(Z)V
    .locals 6

    iput-boolean p1, p0, Lcom/miui/securityscan/MainActivity;->c:Z

    invoke-virtual {p0}, Landroidx/fragment/app/FragmentActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/fragment/app/FragmentManager;->u0()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    return-void

    :cond_0
    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/miui/securityscan/MainFragment;

    invoke-virtual {v2}, Lcom/miui/securityscan/MainFragment;->U2()V

    invoke-static {}, Lx4/t;->E()Z

    move-result v2

    if-nez v2, :cond_3

    const/4 v2, 0x1

    if-eqz p1, :cond_1

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ne v0, v2, :cond_1

    invoke-virtual {p0}, Landroidx/fragment/app/FragmentActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v0

    const-string v3, "page_1"

    invoke-virtual {v0, v3}, Landroidx/fragment/app/FragmentManager;->h0(Ljava/lang/String;)Landroidx/fragment/app/Fragment;

    move-result-object v0

    check-cast v0, Lcom/miui/phonemanage/PhoneManagerFragment;

    if-nez v0, :cond_1

    new-instance v0, Lcom/miui/phonemanage/PhoneManagerFragment;

    invoke-direct {v0}, Lcom/miui/phonemanage/PhoneManagerFragment;-><init>()V

    invoke-virtual {p0}, Landroidx/fragment/app/FragmentActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v4

    invoke-virtual {v4}, Landroidx/fragment/app/FragmentManager;->m()Landroidx/fragment/app/s;

    move-result-object v4

    iget-object v5, p0, Lcom/miui/securityscan/MainActivity;->b:Landroid/widget/FrameLayout;

    invoke-virtual {v5}, Landroid/view/View;->getId()I

    move-result v5

    invoke-virtual {v4, v5, v0, v3}, Landroidx/fragment/app/s;->c(ILandroidx/fragment/app/Fragment;Ljava/lang/String;)Landroidx/fragment/app/s;

    move-result-object v3

    invoke-virtual {p0}, Landroidx/fragment/app/FragmentActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v4

    const-string v5, "page_0"

    invoke-virtual {v4, v5}, Landroidx/fragment/app/FragmentManager;->h0(Ljava/lang/String;)Landroidx/fragment/app/Fragment;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroidx/fragment/app/s;->E(Landroidx/fragment/app/Fragment;)Landroidx/fragment/app/s;

    move-result-object v3

    invoke-virtual {v3, v0}, Landroidx/fragment/app/s;->s(Landroidx/fragment/app/Fragment;)Landroidx/fragment/app/s;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/fragment/app/s;->n()V

    :cond_1
    invoke-virtual {p0}, Lcom/miui/securityscan/MainActivity;->J0()V

    if-eqz p1, :cond_3

    invoke-direct {p0}, Lcom/miui/securityscan/MainActivity;->y0()V

    invoke-virtual {p0}, Landroidx/fragment/app/FragmentActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/fragment/app/FragmentManager;->u0()Ljava/util/List;

    move-result-object p1

    new-instance v0, Lbg/c;

    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/miui/securityscan/MainFragment;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v3

    const/4 v4, 0x2

    if-ne v3, v4, :cond_2

    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/miui/phonemanage/PhoneManagerFragment;

    goto :goto_0

    :cond_2
    const/4 p1, 0x0

    :goto_0
    invoke-direct {v0, p0, v1, p1}, Lbg/c;-><init>(Landroid/content/Context;Lcom/miui/securityscan/MainFragment;Lcom/miui/phonemanage/PhoneManagerFragment;)V

    invoke-static {v0}, Lcom/miui/common/base/asyn/a;->a(Ljava/lang/Runnable;)V

    :cond_3
    return-void
.end method

.method public H0(I)V
    .locals 1

    invoke-direct {p0}, Lcom/miui/securityscan/MainActivity;->l0()Lcom/miui/securityscan/MainFragment;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lcom/miui/securityscan/MainFragment;->b3(I)V

    :cond_0
    return-void
.end method

.method public I0()V
    .locals 2

    invoke-virtual {p0}, Lcom/miui/securityscan/MainActivity;->n0()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    invoke-direct {p0}, Lcom/miui/securityscan/MainActivity;->m0()Lcom/miui/phonemanage/PhoneManagerFragment;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/miui/phonemanage/PhoneManagerFragment;->x1()V

    :cond_0
    return-void
.end method

.method public J0()V
    .locals 2

    iget-boolean v0, p0, Lcom/miui/securityscan/MainActivity;->c:Z

    if-nez v0, :cond_0

    iget v0, p0, Lcom/miui/securityscan/MainActivity;->f:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/miui/securityscan/MainActivity;->B0(I)V

    :cond_0
    return-void
.end method

.method public f0(Lcom/miui/common/card/models/BaseCardModel;Ljava/util/List;I)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/miui/common/card/models/BaseCardModel;",
            "Ljava/util/List<",
            "Lcom/miui/common/card/models/BaseCardModel;",
            ">;I)V"
        }
    .end annotation

    invoke-virtual {p0}, Lcom/miui/securityscan/MainActivity;->n0()I

    move-result v0

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/miui/securityscan/MainActivity;->l0()Lcom/miui/securityscan/MainFragment;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1, p2, p3}, Lcom/miui/securityscan/MainFragment;->E2(Lcom/miui/common/card/models/BaseCardModel;Ljava/util/List;I)V

    :cond_0
    return-void
.end method

.method public g0(Lcom/miui/common/card/models/BaseCardModel;I)V
    .locals 1

    invoke-virtual {p0}, Lcom/miui/securityscan/MainActivity;->n0()I

    move-result v0

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/miui/securityscan/MainActivity;->l0()Lcom/miui/securityscan/MainFragment;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1, p2}, Lcom/miui/securityscan/MainFragment;->F2(Lcom/miui/common/card/models/BaseCardModel;I)V

    :cond_0
    return-void
.end method

.method public isUninstalledDisable()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public k0()V
    .locals 1

    invoke-direct {p0}, Lcom/miui/securityscan/MainActivity;->m0()Lcom/miui/phonemanage/PhoneManagerFragment;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/miui/phonemanage/PhoneManagerFragment;->T0()V

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/miui/securityscan/MainActivity;->B0(I)V

    :cond_0
    return-void
.end method

.method public n0()I
    .locals 1

    iget v0, p0, Lcom/miui/securityscan/MainActivity;->f:I

    return v0
.end method

.method public o0()V
    .locals 2

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Looper;->getQueue()Landroid/os/MessageQueue;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/securityscan/MainActivity;->h:Landroid/os/MessageQueue$IdleHandler;

    invoke-virtual {v0, v1}, Landroid/os/MessageQueue;->removeIdleHandler(Landroid/os/MessageQueue$IdleHandler;)V

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Looper;->getQueue()Landroid/os/MessageQueue;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/securityscan/MainActivity;->h:Landroid/os/MessageQueue$IdleHandler;

    invoke-virtual {v0, v1}, Landroid/os/MessageQueue;->addIdleHandler(Landroid/os/MessageQueue$IdleHandler;)V

    return-void
.end method

.method public onActivityCreate(Landroid/os/Bundle;)V
    .locals 5

    invoke-super {p0, p1}, Lcom/miui/common/base/BaseActivity;->onActivityCreate(Landroid/os/Bundle;)V

    new-instance v0, Lcom/miui/securityscan/MainActivity$a;

    invoke-direct {v0, p0}, Lcom/miui/securityscan/MainActivity$a;-><init>(Lcom/miui/securityscan/MainActivity;)V

    invoke-static {v0}, Lcom/miui/common/base/asyn/a;->a(Ljava/lang/Runnable;)V

    invoke-static {p0}, Lpf/i;->l(Landroid/content/Context;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/miui/securityscan/MainActivity;->c:Z

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    const-string v1, "currentFragmentIndex"

    invoke-virtual {p1, v1, v0}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;I)I

    move-result p1

    iput p1, p0, Lcom/miui/securityscan/MainActivity;->f:I

    :cond_0
    const p1, 0x7f0e02bf

    invoke-virtual {p0, p1}, Lcom/miui/common/base/BaseActivity;->setContentView(I)V

    const p1, 0x7f0b0b47

    invoke-virtual {p0, p1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/FrameLayout;

    iput-object p1, p0, Lcom/miui/securityscan/MainActivity;->b:Landroid/widget/FrameLayout;

    invoke-static {}, Lx4/t;->E()Z

    move-result p1

    if-eqz p1, :cond_1

    invoke-virtual {p0}, Landroidx/fragment/app/FragmentActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object p1

    const-string v1, "page_0"

    invoke-virtual {p1, v1}, Landroidx/fragment/app/FragmentManager;->h0(Ljava/lang/String;)Landroidx/fragment/app/Fragment;

    move-result-object p1

    check-cast p1, Lcom/miui/securityscan/MainFragment;

    if-nez p1, :cond_2

    new-instance p1, Lcom/miui/securityscan/MainFragment;

    invoke-direct {p1}, Lcom/miui/securityscan/MainFragment;-><init>()V

    invoke-virtual {p0}, Landroidx/fragment/app/FragmentActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v2

    invoke-virtual {v2}, Landroidx/fragment/app/FragmentManager;->m()Landroidx/fragment/app/s;

    move-result-object v2

    iget-object v3, p0, Lcom/miui/securityscan/MainActivity;->b:Landroid/widget/FrameLayout;

    invoke-virtual {v3}, Landroid/view/View;->getId()I

    move-result v3

    invoke-virtual {v2, v3, p1, v1}, Landroidx/fragment/app/s;->c(ILandroidx/fragment/app/Fragment;Ljava/lang/String;)Landroidx/fragment/app/s;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/fragment/app/s;->n()V

    goto :goto_0

    :cond_1
    invoke-direct {p0}, Lcom/miui/securityscan/MainActivity;->initView()V

    :cond_2
    :goto_0
    new-instance p1, Lpf/a;

    new-instance v1, Lpf/b;

    invoke-direct {v1, p0}, Lpf/b;-><init>(Lcom/miui/securityscan/MainActivity;)V

    invoke-direct {p1, v1}, Lpf/a;-><init>(Ljava/lang/Runnable;)V

    iput-object p1, p0, Lcom/miui/securityscan/MainActivity;->d:Lpf/a;

    new-instance p1, Lcom/miui/securityscan/MainActivity$b;

    invoke-direct {p1, p0}, Lcom/miui/securityscan/MainActivity$b;-><init>(Lcom/miui/securityscan/MainActivity;)V

    iput-object p1, p0, Lcom/miui/securityscan/MainActivity;->e:Lcom/miui/securityscan/MainActivity$b;

    new-instance p1, Landroid/content/IntentFilter;

    invoke-direct {p1}, Landroid/content/IntentFilter;-><init>()V

    const-string v1, "ONLINE_SERVICE_STATE_CHANGED"

    invoke-virtual {p1, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "miui.intent.NOTIFICATION_LINKDAGE_DATA_CHANGED"

    invoke-virtual {p1, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    invoke-static {p0}, Lr0/a;->b(Landroid/content/Context;)Lr0/a;

    move-result-object v1

    iget-object v2, p0, Lcom/miui/securityscan/MainActivity;->e:Lcom/miui/securityscan/MainActivity$b;

    invoke-virtual {v1, v2, p1}, Lr0/a;->c(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)V

    iget-boolean p1, p0, Lcom/miui/securityscan/MainActivity;->c:Z

    if-eqz p1, :cond_4

    invoke-direct {p0}, Lcom/miui/securityscan/MainActivity;->y0()V

    invoke-virtual {p0}, Landroidx/fragment/app/FragmentActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/fragment/app/FragmentManager;->u0()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_4

    new-instance v1, Ljava/lang/Thread;

    new-instance v2, Lbg/c;

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/securityscan/MainFragment;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v3

    const/4 v4, 0x2

    if-ne v3, v4, :cond_3

    const/4 v3, 0x1

    invoke-interface {p1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/miui/phonemanage/PhoneManagerFragment;

    goto :goto_1

    :cond_3
    const/4 p1, 0x0

    :goto_1
    invoke-direct {v2, p0, v0, p1}, Lbg/c;-><init>(Landroid/content/Context;Lcom/miui/securityscan/MainFragment;Lcom/miui/phonemanage/PhoneManagerFragment;)V

    invoke-direct {v1, v2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    :cond_4
    sget-boolean p1, Lgh/b;->b:Z

    if-nez p1, :cond_5

    invoke-static {p0}, Lgh/b;->q(Landroid/content/Context;)V

    :cond_5
    return-void
.end method

.method public onActivityDestroy()V
    .locals 2

    invoke-super {p0}, Lcom/miui/common/base/BaseActivity;->onActivityDestroy()V

    iget-object v0, p0, Lcom/miui/securityscan/MainActivity;->d:Lpf/a;

    invoke-virtual {v0}, Lpf/a;->b()V

    invoke-static {p0}, Lr0/a;->b(Landroid/content/Context;)Lr0/a;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/securityscan/MainActivity;->e:Lcom/miui/securityscan/MainActivity$b;

    invoke-virtual {v0, v1}, Lr0/a;->e(Landroid/content/BroadcastReceiver;)V

    return-void
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 1

    invoke-super {p0, p1, p2, p3}, Landroidx/fragment/app/FragmentActivity;->onActivityResult(IILandroid/content/Intent;)V

    invoke-virtual {p0}, Lcom/miui/securityscan/MainActivity;->n0()I

    move-result v0

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/miui/securityscan/MainActivity;->l0()Lcom/miui/securityscan/MainFragment;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1, p2, p3}, Lcom/miui/securityscan/MainFragment;->onActivityResult(IILandroid/content/Intent;)V

    :cond_0
    return-void
.end method

.method public onActivityResume()V
    .locals 1

    invoke-super {p0}, Lcom/miui/common/base/BaseActivity;->onActivityResume()V

    invoke-static {}, Lqf/c;->L()V

    iget-object v0, p0, Lcom/miui/securityscan/MainActivity;->d:Lpf/a;

    invoke-virtual {v0}, Lpf/a;->c()V

    return-void
.end method

.method public onActivityStart()V
    .locals 1

    invoke-super {p0}, Lcom/miui/common/base/BaseActivity;->onActivityStart()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/miui/securityscan/MainActivity;->g:Z

    return-void
.end method

.method public onActivityStop()V
    .locals 2

    invoke-super {p0}, Lcom/miui/common/base/BaseActivity;->onActivityStop()V

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0}, Lfe/m;->c(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/miui/securityscan/MainActivity;->d:Lpf/a;

    invoke-virtual {v0}, Lpf/a;->a()V

    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/miui/securityscan/MainActivity;->g:Z

    return-void
.end method

.method public onBackPressed()V
    .locals 1

    invoke-virtual {p0}, Lcom/miui/securityscan/MainActivity;->n0()I

    move-result v0

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/miui/securityscan/MainActivity;->l0()Lcom/miui/securityscan/MainFragment;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/miui/securityscan/MainFragment;->m2()V

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/miui/securityscan/MainActivity;->B0(I)V

    :cond_1
    :goto_0
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 1

    invoke-super {p0, p1}, Lcom/miui/common/base/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    iget-object v0, p0, Lcom/miui/common/base/BaseActivity;->mManagerInterceptHelper:Lcom/miui/common/base/e;

    invoke-virtual {v0, p0, p1}, Lcom/miui/common/base/e;->c(Lcom/miui/common/base/BaseActivity;Landroid/os/Bundle;)V

    return-void
.end method

.method protected onDestroy()V
    .locals 1

    invoke-super {p0}, Lcom/miui/securityscan/BaseAdvActivity;->onDestroy()V

    iget-object v0, p0, Lcom/miui/common/base/BaseActivity;->mManagerInterceptHelper:Lcom/miui/common/base/e;

    invoke-virtual {v0}, Lcom/miui/common/base/e;->d()V

    return-void
.end method

.method protected onNewIntent(Landroid/content/Intent;)V
    .locals 1

    invoke-super {p0, p1}, Landroidx/fragment/app/FragmentActivity;->onNewIntent(Landroid/content/Intent;)V

    invoke-virtual {p0, p1}, Landroid/app/Activity;->setIntent(Landroid/content/Intent;)V

    invoke-direct {p0}, Lcom/miui/securityscan/MainActivity;->p0()Z

    move-result p1

    invoke-virtual {p0}, Lcom/miui/securityscan/MainActivity;->n0()I

    move-result v0

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    if-eq v0, p1, :cond_2

    invoke-virtual {p0, p1}, Lcom/miui/securityscan/MainActivity;->B0(I)V

    goto :goto_0

    :cond_0
    if-eqz v0, :cond_1

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Lcom/miui/securityscan/MainActivity;->B0(I)V

    :cond_1
    invoke-direct {p0}, Lcom/miui/securityscan/MainActivity;->l0()Lcom/miui/securityscan/MainFragment;

    move-result-object p1

    if-eqz p1, :cond_2

    invoke-virtual {p1}, Lcom/miui/securityscan/MainFragment;->r2()V

    :cond_2
    :goto_0
    invoke-direct {p0}, Lcom/miui/securityscan/MainActivity;->l0()Lcom/miui/securityscan/MainFragment;

    move-result-object p1

    if-eqz p1, :cond_3

    invoke-virtual {p1}, Lcom/miui/securityscan/MainFragment;->D1()V

    :cond_3
    return-void
.end method

.method protected onRestart()V
    .locals 2

    invoke-super {p0}, Landroid/app/Activity;->onRestart()V

    invoke-virtual {p0}, Lcom/miui/securityscan/MainActivity;->n0()I

    move-result v0

    invoke-direct {p0}, Lcom/miui/securityscan/MainActivity;->l0()Lcom/miui/securityscan/MainFragment;

    move-result-object v1

    if-nez v1, :cond_0

    return-void

    :cond_0
    if-nez v0, :cond_1

    invoke-virtual {v1}, Lcom/miui/securityscan/MainFragment;->q2()V

    goto :goto_0

    :cond_1
    const/4 v0, 0x1

    invoke-virtual {v1, v0}, Lcom/miui/securityscan/MainFragment;->L2(Z)V

    :goto_0
    return-void
.end method

.method protected onResume()V
    .locals 1

    invoke-super {p0}, Landroidx/fragment/app/FragmentActivity;->onResume()V

    iget-object v0, p0, Lcom/miui/common/base/BaseActivity;->mManagerInterceptHelper:Lcom/miui/common/base/e;

    invoke-virtual {v0}, Lcom/miui/common/base/e;->e()V

    return-void
.end method

.method protected onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2

    invoke-super {p0, p1}, Lmiuix/appcompat/app/AppCompatActivity;->onSaveInstanceState(Landroid/os/Bundle;)V

    iget v0, p0, Lcom/miui/securityscan/MainActivity;->f:I

    const-string v1, "currentFragmentIndex"

    invoke-virtual {p1, v1, v0}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    return-void
.end method

.method protected onStart()V
    .locals 1

    invoke-super {p0}, Landroidx/fragment/app/FragmentActivity;->onStart()V

    iget-object v0, p0, Lcom/miui/common/base/BaseActivity;->mManagerInterceptHelper:Lcom/miui/common/base/e;

    invoke-virtual {v0}, Lcom/miui/common/base/e;->f()V

    return-void
.end method

.method protected onStop()V
    .locals 1

    invoke-super {p0}, Lmiuix/appcompat/app/AppCompatActivity;->onStop()V

    iget-object v0, p0, Lcom/miui/common/base/BaseActivity;->mManagerInterceptHelper:Lcom/miui/common/base/e;

    invoke-virtual {v0}, Lcom/miui/common/base/e;->g()V

    return-void
.end method

.method public onTrimMemory(I)V
    .locals 1

    invoke-super {p0, p1}, Landroid/app/Activity;->onTrimMemory(I)V

    const/16 v0, 0x3c

    if-lt p1, v0, :cond_0

    iget-object p1, p0, Lcom/miui/securityscan/MainActivity;->d:Lpf/a;

    invoke-virtual {p1}, Lpf/a;->b()V

    :cond_0
    return-void
.end method

.method public q0()Z
    .locals 1

    invoke-direct {p0}, Lcom/miui/securityscan/MainActivity;->m0()Lcom/miui/phonemanage/PhoneManagerFragment;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/miui/phonemanage/PhoneManagerFragment;->Z0()Z

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public s0()V
    .locals 1

    invoke-direct {p0}, Lcom/miui/securityscan/MainActivity;->l0()Lcom/miui/securityscan/MainFragment;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/miui/securityscan/MainFragment;->k2()V

    :cond_0
    return-void
.end method

.method public t0(I)V
    .locals 1

    invoke-direct {p0}, Lcom/miui/securityscan/MainActivity;->l0()Lcom/miui/securityscan/MainFragment;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lcom/miui/securityscan/MainFragment;->n2(I)V

    :cond_0
    return-void
.end method

.method public u0(Ljava/lang/String;)V
    .locals 1

    invoke-direct {p0}, Lcom/miui/securityscan/MainActivity;->m0()Lcom/miui/phonemanage/PhoneManagerFragment;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lcom/miui/phonemanage/PhoneManagerFragment;->h1(Ljava/lang/String;)V

    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Lcom/miui/securityscan/MainActivity;->B0(I)V

    :cond_0
    return-void
.end method

.method public w0(Lcom/miui/common/card/models/BaseCardModel;Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/miui/common/card/models/BaseCardModel;",
            "Ljava/util/List<",
            "Lcom/miui/common/card/models/BaseCardModel;",
            ">;)V"
        }
    .end annotation

    invoke-virtual {p0}, Lcom/miui/securityscan/MainActivity;->n0()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    invoke-direct {p0}, Lcom/miui/securityscan/MainActivity;->m0()Lcom/miui/phonemanage/PhoneManagerFragment;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1, p2}, Lcom/miui/phonemanage/PhoneManagerFragment;->m1(Lcom/miui/common/card/models/BaseCardModel;Ljava/util/List;)V

    :cond_0
    return-void
.end method

.method public x0(Ljava/lang/String;)V
    .locals 1

    invoke-direct {p0}, Lcom/miui/securityscan/MainActivity;->l0()Lcom/miui/securityscan/MainFragment;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lcom/miui/securityscan/MainFragment;->G2(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public z0()V
    .locals 1

    invoke-virtual {p0}, Lcom/miui/securityscan/MainActivity;->n0()I

    move-result v0

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/miui/securityscan/MainActivity;->l0()Lcom/miui/securityscan/MainFragment;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/miui/securityscan/MainFragment;->H2()V

    :cond_0
    return-void
.end method
