.class public Lcom/miui/permcenter/install/RiskAppAuthHistoryActivity;
.super Lcom/miui/common/base/BaseActivity;
.source "SourceFile"

# interfaces
.implements Landroidx/loader/app/a$a;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/permcenter/install/RiskAppAuthHistoryActivity$b;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/miui/common/base/BaseActivity;",
        "Landroidx/loader/app/a$a<",
        "Lxb/c;",
        ">;"
    }
.end annotation


# instance fields
.field private a:Lmiuix/recyclerview/widget/RecyclerView;

.field private b:Lcom/miui/permcenter/install/RiskAppAuthHistoryActivity$b;

.field private c:Landroid/view/View;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/miui/common/base/BaseActivity;-><init>()V

    return-void
.end method

.method private initView()V
    .locals 2

    const v0, 0x7f0b06d4

    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lmiuix/recyclerview/widget/RecyclerView;

    iput-object v0, p0, Lcom/miui/permcenter/install/RiskAppAuthHistoryActivity;->a:Lmiuix/recyclerview/widget/RecyclerView;

    const v0, 0x7f0b0379

    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/permcenter/install/RiskAppAuthHistoryActivity;->c:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    const v0, 0x7f0b036f

    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    const v1, 0x7f120720

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    new-instance v0, Landroidx/recyclerview/widget/LinearLayoutManager;

    invoke-direct {v0, p0}, Landroidx/recyclerview/widget/LinearLayoutManager;-><init>(Landroid/content/Context;)V

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/LinearLayoutManager;->setOrientation(I)V

    iget-object v1, p0, Lcom/miui/permcenter/install/RiskAppAuthHistoryActivity;->a:Lmiuix/recyclerview/widget/RecyclerView;

    invoke-virtual {v1, v0}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$n;)V

    new-instance v0, Lcom/miui/permcenter/install/RiskAppAuthHistoryActivity$b;

    invoke-direct {v0, p0}, Lcom/miui/permcenter/install/RiskAppAuthHistoryActivity$b;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/miui/permcenter/install/RiskAppAuthHistoryActivity;->b:Lcom/miui/permcenter/install/RiskAppAuthHistoryActivity$b;

    iget-object v1, p0, Lcom/miui/permcenter/install/RiskAppAuthHistoryActivity;->a:Lmiuix/recyclerview/widget/RecyclerView;

    invoke-virtual {v1, v0}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$h;)V

    return-void
.end method


# virtual methods
.method public F(Lq0/c;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lq0/c<",
            "Lxb/c;",
            ">;)V"
        }
    .end annotation

    return-void
.end method

.method public bridge synthetic T(Lq0/c;Ljava/lang/Object;)V
    .locals 0

    check-cast p2, Lxb/c;

    invoke-virtual {p0, p1, p2}, Lcom/miui/permcenter/install/RiskAppAuthHistoryActivity;->d0(Lq0/c;Lxb/c;)V

    return-void
.end method

.method public d0(Lq0/c;Lxb/c;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lq0/c<",
            "Lxb/c;",
            ">;",
            "Lxb/c;",
            ")V"
        }
    .end annotation

    if-nez p2, :cond_0

    return-void

    :cond_0
    invoke-virtual {p2}, Lxb/c;->a()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    if-lez p1, :cond_1

    iget-object p1, p0, Lcom/miui/permcenter/install/RiskAppAuthHistoryActivity;->b:Lcom/miui/permcenter/install/RiskAppAuthHistoryActivity$b;

    invoke-virtual {p1, p2}, Lcom/miui/permcenter/install/RiskAppAuthHistoryActivity$b;->m(Lxb/c;)V

    iget-object p1, p0, Lcom/miui/permcenter/install/RiskAppAuthHistoryActivity;->c:Landroid/view/View;

    const/16 p2, 0x8

    invoke-virtual {p1, p2}, Landroid/view/View;->setVisibility(I)V

    :cond_1
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2

    invoke-super {p0, p1}, Lcom/miui/common/base/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    const p1, 0x7f0e0427

    invoke-virtual {p0, p1}, Lcom/miui/common/base/BaseActivity;->setContentView(I)V

    const-string p1, "privacy_risk_auth_history"

    invoke-static {p1}, Lmb/a;->i(Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/miui/permcenter/install/RiskAppAuthHistoryActivity;->initView()V

    invoke-virtual {p0}, Landroidx/fragment/app/FragmentActivity;->getSupportLoaderManager()Landroidx/loader/app/a;

    move-result-object p1

    const/16 v0, 0x32

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1, p0}, Landroidx/loader/app/a;->e(ILandroid/os/Bundle;Landroidx/loader/app/a$a;)Lq0/c;

    return-void
.end method

.method public onCreateLoader(ILandroid/os/Bundle;)Lq0/c;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Landroid/os/Bundle;",
            ")",
            "Lq0/c<",
            "Lxb/c;",
            ">;"
        }
    .end annotation

    new-instance p1, Lcom/miui/permcenter/install/RiskAppAuthHistoryActivity$a;

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p2

    invoke-direct {p1, p0, p2}, Lcom/miui/permcenter/install/RiskAppAuthHistoryActivity$a;-><init>(Lcom/miui/permcenter/install/RiskAppAuthHistoryActivity;Landroid/content/Context;)V

    return-object p1
.end method
