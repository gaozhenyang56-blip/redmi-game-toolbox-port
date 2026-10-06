.class public Lcom/miui/optimizecenter/storage/StoragePublicFileListActivity;
.super Lcom/miui/common/base/BaseActivity;
.source "SourceFile"


# instance fields
.field private a:Lmiuix/appcompat/widget/Spinner;

.field private b:Lcom/miui/optimizecenter/storage/view/EmptyView;

.field private c:Landroid/widget/TextView;

.field private d:Lcom/miui/optimizecenter/storage/SafeProgressDialog;

.field private e:Lcom/miui/optimizecenter/storage/b;

.field private f:Lcb/c;

.field private g:Lmiuix/recyclerview/widget/RecyclerView;

.field private h:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator<",
            "Lcom/miui/optimizecenter/storage/model/PublicFileModel;",
            ">;"
        }
    .end annotation
.end field

.field private i:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator<",
            "Lcom/miui/optimizecenter/storage/model/PublicFileModel;",
            ">;"
        }
    .end annotation
.end field

.field private j:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator<",
            "Lcom/miui/optimizecenter/storage/model/PublicFileModel;",
            ">;"
        }
    .end annotation
.end field

.field private k:Landroid/view/View$OnClickListener;

.field private l:Landroid/widget/AdapterView$OnItemSelectedListener;

.field private m:Lcom/miui/optimizecenter/storage/b$b;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/miui/common/base/BaseActivity;-><init>()V

    new-instance v0, Lcom/miui/optimizecenter/storage/StoragePublicFileListActivity$c;

    invoke-direct {v0, p0}, Lcom/miui/optimizecenter/storage/StoragePublicFileListActivity$c;-><init>(Lcom/miui/optimizecenter/storage/StoragePublicFileListActivity;)V

    iput-object v0, p0, Lcom/miui/optimizecenter/storage/StoragePublicFileListActivity;->i:Ljava/util/Comparator;

    new-instance v0, Lcom/miui/optimizecenter/storage/StoragePublicFileListActivity$d;

    invoke-direct {v0, p0}, Lcom/miui/optimizecenter/storage/StoragePublicFileListActivity$d;-><init>(Lcom/miui/optimizecenter/storage/StoragePublicFileListActivity;)V

    iput-object v0, p0, Lcom/miui/optimizecenter/storage/StoragePublicFileListActivity;->j:Ljava/util/Comparator;

    new-instance v0, Lcom/miui/optimizecenter/storage/StoragePublicFileListActivity$e;

    invoke-direct {v0, p0}, Lcom/miui/optimizecenter/storage/StoragePublicFileListActivity$e;-><init>(Lcom/miui/optimizecenter/storage/StoragePublicFileListActivity;)V

    iput-object v0, p0, Lcom/miui/optimizecenter/storage/StoragePublicFileListActivity;->k:Landroid/view/View$OnClickListener;

    new-instance v0, Lcom/miui/optimizecenter/storage/StoragePublicFileListActivity$f;

    invoke-direct {v0, p0}, Lcom/miui/optimizecenter/storage/StoragePublicFileListActivity$f;-><init>(Lcom/miui/optimizecenter/storage/StoragePublicFileListActivity;)V

    iput-object v0, p0, Lcom/miui/optimizecenter/storage/StoragePublicFileListActivity;->l:Landroid/widget/AdapterView$OnItemSelectedListener;

    new-instance v0, Lcom/miui/optimizecenter/storage/StoragePublicFileListActivity$g;

    invoke-direct {v0, p0}, Lcom/miui/optimizecenter/storage/StoragePublicFileListActivity$g;-><init>(Lcom/miui/optimizecenter/storage/StoragePublicFileListActivity;)V

    iput-object v0, p0, Lcom/miui/optimizecenter/storage/StoragePublicFileListActivity;->m:Lcom/miui/optimizecenter/storage/b$b;

    return-void
.end method

.method static synthetic d0(Lcom/miui/optimizecenter/storage/StoragePublicFileListActivity;)Lcom/miui/optimizecenter/storage/view/EmptyView;
    .locals 0

    iget-object p0, p0, Lcom/miui/optimizecenter/storage/StoragePublicFileListActivity;->b:Lcom/miui/optimizecenter/storage/view/EmptyView;

    return-object p0
.end method

.method static synthetic e0(Lcom/miui/optimizecenter/storage/StoragePublicFileListActivity;)Lmiuix/appcompat/widget/Spinner;
    .locals 0

    iget-object p0, p0, Lcom/miui/optimizecenter/storage/StoragePublicFileListActivity;->a:Lmiuix/appcompat/widget/Spinner;

    return-object p0
.end method

.method static synthetic f0(Lcom/miui/optimizecenter/storage/StoragePublicFileListActivity;)Landroid/widget/TextView;
    .locals 0

    iget-object p0, p0, Lcom/miui/optimizecenter/storage/StoragePublicFileListActivity;->c:Landroid/widget/TextView;

    return-object p0
.end method

.method static synthetic g0(Lcom/miui/optimizecenter/storage/StoragePublicFileListActivity;)Ljava/util/Comparator;
    .locals 0

    iget-object p0, p0, Lcom/miui/optimizecenter/storage/StoragePublicFileListActivity;->h:Ljava/util/Comparator;

    return-object p0
.end method

.method static synthetic h0(Lcom/miui/optimizecenter/storage/StoragePublicFileListActivity;Ljava/util/Comparator;)Ljava/util/Comparator;
    .locals 0

    iput-object p1, p0, Lcom/miui/optimizecenter/storage/StoragePublicFileListActivity;->h:Ljava/util/Comparator;

    return-object p1
.end method

.method static synthetic i0(Lcom/miui/optimizecenter/storage/StoragePublicFileListActivity;)Lcom/miui/optimizecenter/storage/b;
    .locals 0

    iget-object p0, p0, Lcom/miui/optimizecenter/storage/StoragePublicFileListActivity;->e:Lcom/miui/optimizecenter/storage/b;

    return-object p0
.end method

.method private initData()V
    .locals 2

    invoke-direct {p0}, Lcom/miui/optimizecenter/storage/StoragePublicFileListActivity;->r0()V

    iget-object v0, p0, Lcom/miui/optimizecenter/storage/StoragePublicFileListActivity;->h:Ljava/util/Comparator;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/miui/optimizecenter/storage/StoragePublicFileListActivity;->i:Ljava/util/Comparator;

    iput-object v0, p0, Lcom/miui/optimizecenter/storage/StoragePublicFileListActivity;->h:Ljava/util/Comparator;

    :cond_0
    iget-object v0, p0, Lcom/miui/optimizecenter/storage/StoragePublicFileListActivity;->f:Lcb/c;

    invoke-virtual {v0}, Lcb/c;->c()Landroidx/lifecycle/LiveData;

    move-result-object v0

    new-instance v1, Lcom/miui/optimizecenter/storage/StoragePublicFileListActivity$a;

    invoke-direct {v1, p0}, Lcom/miui/optimizecenter/storage/StoragePublicFileListActivity$a;-><init>(Lcom/miui/optimizecenter/storage/StoragePublicFileListActivity;)V

    invoke-virtual {v0, p0, v1}, Landroidx/lifecycle/LiveData;->i(Landroidx/lifecycle/v;Landroidx/lifecycle/d0;)V

    invoke-static {p0}, Lcom/miui/optimizecenter/storage/a;->D(Landroid/content/Context;)Lcom/miui/optimizecenter/storage/a;

    move-result-object v0

    new-instance v1, Lcom/miui/optimizecenter/storage/StoragePublicFileListActivity$b;

    invoke-direct {v1, p0}, Lcom/miui/optimizecenter/storage/StoragePublicFileListActivity$b;-><init>(Lcom/miui/optimizecenter/storage/StoragePublicFileListActivity;)V

    invoke-virtual {v0, v1}, Lcom/miui/optimizecenter/storage/a;->W(Lxa/b$e;)V

    return-void
.end method

.method static synthetic j0(Lcom/miui/optimizecenter/storage/StoragePublicFileListActivity;)V
    .locals 0

    invoke-direct {p0}, Lcom/miui/optimizecenter/storage/StoragePublicFileListActivity;->o0()V

    return-void
.end method

.method static synthetic k0(Lcom/miui/optimizecenter/storage/StoragePublicFileListActivity;)Lcb/c;
    .locals 0

    iget-object p0, p0, Lcom/miui/optimizecenter/storage/StoragePublicFileListActivity;->f:Lcb/c;

    return-object p0
.end method

.method static synthetic l0(Lcom/miui/optimizecenter/storage/StoragePublicFileListActivity;)V
    .locals 0

    invoke-direct {p0}, Lcom/miui/optimizecenter/storage/StoragePublicFileListActivity;->r0()V

    return-void
.end method

.method static synthetic m0(Lcom/miui/optimizecenter/storage/StoragePublicFileListActivity;)Ljava/util/Comparator;
    .locals 0

    iget-object p0, p0, Lcom/miui/optimizecenter/storage/StoragePublicFileListActivity;->i:Ljava/util/Comparator;

    return-object p0
.end method

.method static synthetic n0(Lcom/miui/optimizecenter/storage/StoragePublicFileListActivity;)Ljava/util/Comparator;
    .locals 0

    iget-object p0, p0, Lcom/miui/optimizecenter/storage/StoragePublicFileListActivity;->j:Ljava/util/Comparator;

    return-object p0
.end method

.method private o0()V
    .locals 7

    iget-object v0, p0, Lcom/miui/optimizecenter/storage/StoragePublicFileListActivity;->e:Lcom/miui/optimizecenter/storage/b;

    invoke-virtual {v0}, Lcom/miui/optimizecenter/storage/b;->k()J

    move-result-wide v0

    iget-object v2, p0, Lcom/miui/optimizecenter/storage/StoragePublicFileListActivity;->c:Landroid/widget/TextView;

    iget-object v3, p0, Lcom/miui/optimizecenter/storage/StoragePublicFileListActivity;->e:Lcom/miui/optimizecenter/storage/b;

    invoke-virtual {v3}, Lcom/miui/optimizecenter/storage/b;->l()Z

    move-result v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setEnabled(Z)V

    iget-object v2, p0, Lcom/miui/optimizecenter/storage/StoragePublicFileListActivity;->c:Landroid/widget/TextView;

    const v3, 0x7f12186d

    invoke-virtual {p0, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const-wide/16 v5, 0x0

    cmp-long v5, v0, v5

    if-nez v5, :cond_0

    const-string v0, ""

    goto :goto_0

    :cond_0
    invoke-static {p0, v0, v1}, Lsm/a;->a(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v0

    :goto_0
    const/4 v1, 0x0

    aput-object v0, v4, v1

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method private q0()V
    .locals 2

    new-instance v0, Landroidx/lifecycle/u0$c;

    invoke-direct {v0}, Landroidx/lifecycle/u0$c;-><init>()V

    const-class v1, Lcb/c;

    invoke-virtual {v0, v1}, Landroidx/lifecycle/u0$c;->create(Ljava/lang/Class;)Landroidx/lifecycle/r0;

    move-result-object v0

    check-cast v0, Lcb/c;

    iput-object v0, p0, Lcom/miui/optimizecenter/storage/StoragePublicFileListActivity;->f:Lcb/c;

    const v0, 0x7f0b0ab7

    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lmiuix/appcompat/widget/Spinner;

    iput-object v0, p0, Lcom/miui/optimizecenter/storage/StoragePublicFileListActivity;->a:Lmiuix/appcompat/widget/Spinner;

    iget-object v1, p0, Lcom/miui/optimizecenter/storage/StoragePublicFileListActivity;->l:Landroid/widget/AdapterView$OnItemSelectedListener;

    invoke-virtual {v0, v1}, Landroid/widget/AdapterView;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    const v0, 0x7f0b036e

    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/miui/optimizecenter/storage/view/EmptyView;

    iput-object v0, p0, Lcom/miui/optimizecenter/storage/StoragePublicFileListActivity;->b:Lcom/miui/optimizecenter/storage/view/EmptyView;

    const v0, 0x7f0b01a2

    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/miui/optimizecenter/storage/StoragePublicFileListActivity;->c:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/miui/optimizecenter/storage/StoragePublicFileListActivity;->k:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f0b03db

    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lmiuix/recyclerview/widget/RecyclerView;

    iput-object v0, p0, Lcom/miui/optimizecenter/storage/StoragePublicFileListActivity;->g:Lmiuix/recyclerview/widget/RecyclerView;

    new-instance v0, Lcom/miui/optimizecenter/storage/b;

    iget-object v1, p0, Lcom/miui/optimizecenter/storage/StoragePublicFileListActivity;->m:Lcom/miui/optimizecenter/storage/b$b;

    invoke-direct {v0, v1}, Lcom/miui/optimizecenter/storage/b;-><init>(Lcom/miui/optimizecenter/storage/b$b;)V

    iput-object v0, p0, Lcom/miui/optimizecenter/storage/StoragePublicFileListActivity;->e:Lcom/miui/optimizecenter/storage/b;

    iget-object v1, p0, Lcom/miui/optimizecenter/storage/StoragePublicFileListActivity;->g:Lmiuix/recyclerview/widget/RecyclerView;

    invoke-virtual {v1, v0}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$h;)V

    iget-object v0, p0, Lcom/miui/optimizecenter/storage/StoragePublicFileListActivity;->g:Lmiuix/recyclerview/widget/RecyclerView;

    new-instance v1, Lmiuix/recyclerview/card/f;

    invoke-direct {v1, p0}, Lmiuix/recyclerview/card/f;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->addItemDecoration(Landroidx/recyclerview/widget/RecyclerView$m;)V

    invoke-direct {p0}, Lcom/miui/optimizecenter/storage/StoragePublicFileListActivity;->o0()V

    return-void
.end method

.method private r0()V
    .locals 7

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "showProgress: mProgressDialog = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/miui/optimizecenter/storage/StoragePublicFileListActivity;->d:Lcom/miui/optimizecenter/storage/SafeProgressDialog;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "StoragePublicFileListActivity"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/miui/optimizecenter/storage/StoragePublicFileListActivity;->d:Lcom/miui/optimizecenter/storage/SafeProgressDialog;

    if-nez v0, :cond_0

    const/4 v2, 0x0

    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f120fe8

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x1

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v1, p0

    invoke-static/range {v1 .. v6}, Lcom/miui/optimizecenter/storage/SafeProgressDialog;->f(Landroidx/fragment/app/FragmentActivity;Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZZLandroid/content/DialogInterface$OnCancelListener;)Lcom/miui/optimizecenter/storage/SafeProgressDialog;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/optimizecenter/storage/StoragePublicFileListActivity;->d:Lcom/miui/optimizecenter/storage/SafeProgressDialog;

    invoke-virtual {v0}, Lcom/miui/optimizecenter/storage/SafeProgressDialog;->show()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_0
    return-void
.end method


# virtual methods
.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 4

    invoke-super {p0, p1}, Lcom/miui/common/base/BaseActivity;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    const p1, 0x7f0b0405

    invoke-virtual {p0, p1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f071bcc

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v1

    if-nez v1, :cond_0

    iget-object v2, p0, Lcom/miui/optimizecenter/storage/StoragePublicFileListActivity;->c:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Landroid/view/ViewGroup$MarginLayoutParams;

    const v3, 0x7f070925

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, v2, Landroid/view/ViewGroup$MarginLayoutParams;->width:I

    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getPaddingTop()I

    move-result v0

    invoke-virtual {p1}, Landroid/view/View;->getPaddingBottom()I

    move-result v2

    invoke-virtual {p1, v1, v0, v1, v2}, Landroid/view/View;->setPadding(IIII)V

    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 0

    invoke-super {p0, p1}, Lcom/miui/common/base/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Lcom/miui/common/base/BaseActivity;->setNeedHorizontalPadding(Z)V

    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Lmiuix/appcompat/app/AppCompatActivity;->setExtraHorizontalPaddingEnable(Z)V

    invoke-virtual {p0, p1}, Lmiuix/appcompat/app/AppCompatActivity;->setExtraPaddingApplyToContentEnable(Z)V

    const p1, 0x7f0e004f

    invoke-virtual {p0, p1}, Lcom/miui/common/base/BaseActivity;->setContentView(I)V

    invoke-direct {p0}, Lcom/miui/optimizecenter/storage/StoragePublicFileListActivity;->q0()V

    invoke-direct {p0}, Lcom/miui/optimizecenter/storage/StoragePublicFileListActivity;->initData()V

    return-void
.end method

.method protected p0(Ljava/lang/Runnable;)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "hideProgressDialog: mProgressDialog = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/miui/optimizecenter/storage/StoragePublicFileListActivity;->d:Lcom/miui/optimizecenter/storage/SafeProgressDialog;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "StoragePublicFileListActivity"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/miui/optimizecenter/storage/StoragePublicFileListActivity;->d:Lcom/miui/optimizecenter/storage/SafeProgressDialog;

    if-eqz v0, :cond_0

    :try_start_0
    invoke-virtual {v0, p1}, Lcom/miui/optimizecenter/storage/SafeProgressDialog;->g(Ljava/lang/Runnable;)V

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/miui/optimizecenter/storage/StoragePublicFileListActivity;->d:Lcom/miui/optimizecenter/storage/SafeProgressDialog;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_0
    return-void
.end method
