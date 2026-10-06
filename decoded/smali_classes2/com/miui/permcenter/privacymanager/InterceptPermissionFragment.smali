.class public Lcom/miui/permcenter/privacymanager/InterceptPermissionFragment;
.super Lcom/miui/permcenter/privacymanager/InterceptBaseFragment;
.source "SourceFile"


# instance fields
.field private final g:Ljava/lang/String;

.field private h:Landroidx/recyclerview/widget/RecyclerView;

.field private i:Lkc/f;

.field private j:Landroid/widget/TextView;

.field private k:Landroid/widget/CheckBox;

.field private l:Landroid/view/View;

.field private m:Z

.field private n:Z

.field o:Landroid/widget/CompoundButton$OnCheckedChangeListener;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/miui/permcenter/privacymanager/InterceptBaseFragment;-><init>()V

    const-string v0, "KEY_ALLOW_ENABLE"

    iput-object v0, p0, Lcom/miui/permcenter/privacymanager/InterceptPermissionFragment;->g:Ljava/lang/String;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/miui/permcenter/privacymanager/InterceptPermissionFragment;->n:Z

    new-instance v0, Lcom/miui/permcenter/privacymanager/InterceptPermissionFragment$a;

    invoke-direct {v0, p0}, Lcom/miui/permcenter/privacymanager/InterceptPermissionFragment$a;-><init>(Lcom/miui/permcenter/privacymanager/InterceptPermissionFragment;)V

    iput-object v0, p0, Lcom/miui/permcenter/privacymanager/InterceptPermissionFragment;->o:Landroid/widget/CompoundButton$OnCheckedChangeListener;

    return-void
.end method

.method private initData()V
    .locals 7

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "permName"

    invoke-virtual {v0, v1}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/permcenter/privacymanager/InterceptBaseFragment;->e:Ljava/lang/String;

    invoke-static {v0}, Lpc/c;->m(Ljava/lang/String;)I

    move-result v0

    iget-object v1, p0, Lcom/miui/permcenter/privacymanager/InterceptPermissionFragment;->j:Landroid/widget/TextView;

    const v2, 0x7f121765

    invoke-virtual {p0, v2}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v1, p0, Lcom/miui/permcenter/privacymanager/InterceptPermissionFragment;->i:Lkc/f;

    invoke-static {v0}, Lpc/c;->e(I)Ljava/util/List;

    move-result-object v2

    invoke-static {v0}, Lpc/c;->p(I)Z

    move-result v3

    if-eqz v3, :cond_0

    const v3, 0x7f12177d

    goto :goto_0

    :cond_0
    const v3, 0x7f12177c

    :goto_0
    const/4 v4, 0x1

    new-array v5, v4, [Ljava/lang/Object;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-static {v0, v6}, Lpc/c;->l(ILandroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    const/4 v6, 0x0

    aput-object v0, v5, v6

    invoke-virtual {p0, v3, v5}, Landroidx/fragment/app/Fragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v2, v0}, Lkc/f;->m(Ljava/util/List;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/miui/permcenter/privacymanager/InterceptBaseFragment;->c0()I

    move-result v0

    if-lez v0, :cond_1

    iget-object v1, p0, Lcom/miui/permcenter/privacymanager/InterceptBaseFragment;->c:Landroid/widget/Button;

    const v2, 0x7f121759

    new-array v3, v4, [Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v3, v6

    invoke-virtual {p0, v2, v3}, Landroidx/fragment/app/Fragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1

    :cond_1
    iget-object v0, p0, Lcom/miui/permcenter/privacymanager/InterceptBaseFragment;->c:Landroid/widget/Button;

    const v1, 0x7f120f48

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    iput-boolean v4, p0, Lcom/miui/permcenter/privacymanager/InterceptPermissionFragment;->m:Z

    iget-boolean v0, p0, Lcom/miui/permcenter/privacymanager/InterceptPermissionFragment;->n:Z

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/miui/permcenter/privacymanager/InterceptBaseFragment;->c:Landroid/widget/Button;

    invoke-virtual {v0, v4}, Landroid/view/View;->setEnabled(Z)V

    :cond_2
    :goto_1
    return-void
.end method

.method static synthetic j0(Lcom/miui/permcenter/privacymanager/InterceptPermissionFragment;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/miui/permcenter/privacymanager/InterceptPermissionFragment;->n:Z

    return p1
.end method

.method static synthetic k0(Lcom/miui/permcenter/privacymanager/InterceptPermissionFragment;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/miui/permcenter/privacymanager/InterceptPermissionFragment;->m:Z

    return p0
.end method

.method static synthetic l0(Lcom/miui/permcenter/privacymanager/InterceptPermissionFragment;)Landroidx/recyclerview/widget/RecyclerView;
    .locals 0

    iget-object p0, p0, Lcom/miui/permcenter/privacymanager/InterceptPermissionFragment;->h:Landroidx/recyclerview/widget/RecyclerView;

    return-object p0
.end method

.method static synthetic m0(Lcom/miui/permcenter/privacymanager/InterceptPermissionFragment;)Landroid/view/View;
    .locals 0

    iget-object p0, p0, Lcom/miui/permcenter/privacymanager/InterceptPermissionFragment;->l:Landroid/view/View;

    return-object p0
.end method

.method static synthetic n0(Lcom/miui/permcenter/privacymanager/InterceptPermissionFragment;)Landroid/widget/TextView;
    .locals 0

    iget-object p0, p0, Lcom/miui/permcenter/privacymanager/InterceptPermissionFragment;->j:Landroid/widget/TextView;

    return-object p0
.end method

.method static synthetic o0(Lcom/miui/permcenter/privacymanager/InterceptPermissionFragment;[Landroid/view/View;)I
    .locals 0

    invoke-direct {p0, p1}, Lcom/miui/permcenter/privacymanager/InterceptPermissionFragment;->r0([Landroid/view/View;)I

    move-result p0

    return p0
.end method

.method private p0(Landroid/content/res/Configuration;)I
    .locals 4

    :try_start_0
    const-string v0, "windowConfiguration"

    invoke-static {p1, v0}, Lbh/f;->j(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    sget-object v0, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    const-string v1, "getWindowingMode"

    const/4 v2, 0x0

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {p1, v0, v1, v2, v3}, Lbh/f;->b(Ljava/lang/Object;Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    const-string v0, "TAG"

    const-string v1, "onConfigurationChanged ex: "

    invoke-static {v0, v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/4 p1, 0x1

    :goto_0
    return p1
.end method

.method public static q0(Landroid/content/Intent;)Lcom/miui/permcenter/privacymanager/InterceptPermissionFragment;
    .locals 3

    new-instance v0, Lcom/miui/permcenter/privacymanager/InterceptPermissionFragment;

    invoke-direct {v0}, Lcom/miui/permcenter/privacymanager/InterceptPermissionFragment;-><init>()V

    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    if-eqz p0, :cond_0

    const-string v2, "permName"

    invoke-virtual {p0, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, v2, p0}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    invoke-virtual {v0, v1}, Landroidx/fragment/app/Fragment;->setArguments(Landroid/os/Bundle;)V

    return-object v0
.end method

.method private varargs r0([Landroid/view/View;)I
    .locals 4

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    new-instance v2, Landroid/util/DisplayMetrics;

    invoke-direct {v2}, Landroid/util/DisplayMetrics;-><init>()V

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const-string v3, "window"

    invoke-virtual {v0, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    iget v0, v2, Landroid/util/DisplayMetrics;->heightPixels:I

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f071e78

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    sub-int/2addr v0, v2

    array-length v2, p1

    :goto_0
    if-ge v1, v2, :cond_1

    aget-object v3, p1, v1

    invoke-virtual {v3}, Landroid/view/View;->getMeasuredHeight()I

    move-result v3

    sub-int/2addr v0, v3

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return v0
.end method

.method private s0(Z)V
    .locals 3

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/miui/permcenter/privacymanager/InterceptPermissionFragment;->p0(Landroid/content/res/Configuration;)I

    move-result v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "resetRecyclerViewHeight: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "TAG"

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    const/4 v1, 0x5

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/miui/permcenter/privacymanager/InterceptPermissionFragment;->h:Landroidx/recyclerview/widget/RecyclerView;

    new-instance v1, Lcom/miui/permcenter/privacymanager/InterceptPermissionFragment$b;

    invoke-direct {v1, p0, p1}, Lcom/miui/permcenter/privacymanager/InterceptPermissionFragment$b;-><init>(Lcom/miui/permcenter/privacymanager/InterceptPermissionFragment;Z)V

    invoke-virtual {v0, v1}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    :cond_0
    return-void
.end method

.method private t0()V
    .locals 5

    invoke-static {}, Lx4/t;->E()Z

    move-result v0

    if-eqz v0, :cond_2

    const-string v0, "TAG"

    const-string v1, "onConfigurationChanged2: "

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0710c3

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0710b8

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iget-object v2, p0, Lcom/miui/permcenter/privacymanager/InterceptPermissionFragment;->h:Landroidx/recyclerview/widget/RecyclerView;

    if-eqz v2, :cond_0

    invoke-virtual {v2}, Landroid/view/View;->getPaddingTop()I

    move-result v3

    iget-object v4, p0, Lcom/miui/permcenter/privacymanager/InterceptPermissionFragment;->h:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v4}, Landroid/view/View;->getPaddingBottom()I

    move-result v4

    invoke-virtual {v2, v0, v3, v0, v4}, Landroid/view/View;->setPaddingRelative(IIII)V

    :cond_0
    iget-object v0, p0, Lcom/miui/permcenter/privacymanager/InterceptBaseFragment;->c:Landroid/widget/Button;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroidx/constraintlayout/widget/ConstraintLayout$b;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup$MarginLayoutParams;->setMarginEnd(I)V

    iget-object v2, p0, Lcom/miui/permcenter/privacymanager/InterceptBaseFragment;->c:Landroid/widget/Button;

    invoke-virtual {v2, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :cond_1
    iget-object v0, p0, Lcom/miui/permcenter/privacymanager/InterceptBaseFragment;->d:Landroid/widget/Button;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroidx/constraintlayout/widget/ConstraintLayout$b;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup$MarginLayoutParams;->setMarginStart(I)V

    iget-object v1, p0, Lcom/miui/permcenter/privacymanager/InterceptBaseFragment;->d:Landroid/widget/Button;

    invoke-virtual {v1, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :cond_2
    iget-object v0, p0, Lcom/miui/permcenter/privacymanager/InterceptBaseFragment;->d:Landroid/widget/Button;

    if-eqz v0, :cond_4

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lx4/y1;->e(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/miui/permcenter/privacymanager/InterceptBaseFragment;->d:Landroid/widget/Button;

    const v1, 0x7f080bc6

    goto :goto_0

    :cond_3
    iget-object v0, p0, Lcom/miui/permcenter/privacymanager/InterceptBaseFragment;->d:Landroid/widget/Button;

    const v1, 0x7f080bc9

    :goto_0
    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundResource(I)V

    iget-object v0, p0, Lcom/miui/permcenter/privacymanager/InterceptPermissionFragment;->j:Landroid/widget/TextView;

    if-eqz v0, :cond_4

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0703ab

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iget-object v1, p0, Lcom/miui/permcenter/privacymanager/InterceptPermissionFragment;->j:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/view/View;->getPaddingLeft()I

    move-result v2

    iget-object v3, p0, Lcom/miui/permcenter/privacymanager/InterceptPermissionFragment;->j:Landroid/widget/TextView;

    invoke-virtual {v3}, Landroid/view/View;->getPaddingTop()I

    move-result v3

    iget-object v4, p0, Lcom/miui/permcenter/privacymanager/InterceptPermissionFragment;->j:Landroid/widget/TextView;

    invoke-virtual {v4}, Landroid/view/View;->getPaddingRight()I

    move-result v4

    invoke-virtual {v1, v2, v3, v4, v0}, Landroid/widget/TextView;->setPadding(IIII)V

    :cond_4
    return-void
.end method


# virtual methods
.method public b0(Z)V
    .locals 2

    iget-object v0, p0, Lcom/miui/permcenter/privacymanager/InterceptBaseFragment;->e:Ljava/lang/String;

    invoke-static {v0}, Lpc/c;->m(Ljava/lang/String;)I

    move-result v0

    invoke-static {v0}, Lpc/c;->p(I)Z

    move-result v0

    if-eqz v0, :cond_0

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "adb_enabled"

    invoke-static {v0, v1, p1}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    :cond_0
    invoke-super {p0, p1}, Lcom/miui/permcenter/privacymanager/InterceptBaseFragment;->b0(Z)V

    return-void
.end method

.method protected d0()I
    .locals 1

    const/16 v0, 0xa

    return v0
.end method

.method public e0()V
    .locals 2

    invoke-super {p0}, Lcom/miui/permcenter/privacymanager/InterceptBaseFragment;->e0()V

    iget-object v0, p0, Lcom/miui/permcenter/privacymanager/InterceptPermissionFragment;->k:Landroid/widget/CheckBox;

    iget-object v1, p0, Lcom/miui/permcenter/privacymanager/InterceptPermissionFragment;->o:Landroid/widget/CompoundButton$OnCheckedChangeListener;

    invoke-virtual {v0, v1}, Landroid/widget/CompoundButton;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    iget-object v0, p0, Lcom/miui/permcenter/privacymanager/InterceptPermissionFragment;->j:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/miui/permcenter/privacymanager/InterceptBaseFragment;->f:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public f0(Landroid/view/View;)V
    .locals 1

    const v0, 0x7f0b058b

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/permcenter/privacymanager/InterceptPermissionFragment;->l:Landroid/view/View;

    const v0, 0x7f0b058a

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroidx/recyclerview/widget/RecyclerView;

    iput-object v0, p0, Lcom/miui/permcenter/privacymanager/InterceptPermissionFragment;->h:Landroidx/recyclerview/widget/RecyclerView;

    const v0, 0x7f0b0586

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/miui/permcenter/privacymanager/InterceptPermissionFragment;->j:Landroid/widget/TextView;

    const v0, 0x7f0b0584

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/miui/permcenter/privacymanager/InterceptBaseFragment;->c:Landroid/widget/Button;

    const v0, 0x7f0b0588

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/miui/permcenter/privacymanager/InterceptBaseFragment;->d:Landroid/widget/Button;

    const v0, 0x7f0b0227

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/CheckBox;

    iput-object p1, p0, Lcom/miui/permcenter/privacymanager/InterceptPermissionFragment;->k:Landroid/widget/CheckBox;

    iget-boolean v0, p0, Lcom/miui/permcenter/privacymanager/InterceptPermissionFragment;->n:Z

    invoke-virtual {p1, v0}, Landroid/widget/CompoundButton;->setChecked(Z)V

    iget-object p1, p0, Lcom/miui/permcenter/privacymanager/InterceptBaseFragment;->c:Landroid/widget/Button;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/view/View;->setEnabled(Z)V

    new-instance p1, Lkc/f;

    invoke-direct {p1}, Lkc/f;-><init>()V

    iput-object p1, p0, Lcom/miui/permcenter/privacymanager/InterceptPermissionFragment;->i:Lkc/f;

    iget-object v0, p0, Lcom/miui/permcenter/privacymanager/InterceptPermissionFragment;->h:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v0, p1}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$h;)V

    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v0, 0x17

    if-le p1, v0, :cond_0

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/Activity;->isInMultiWindowMode()Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lcom/miui/permcenter/privacymanager/InterceptPermissionFragment;->s0(Z)V

    :cond_0
    invoke-direct {p0}, Lcom/miui/permcenter/privacymanager/InterceptPermissionFragment;->initData()V

    invoke-direct {p0}, Lcom/miui/permcenter/privacymanager/InterceptPermissionFragment;->t0()V

    return-void
.end method

.method public g0()I
    .locals 1

    const v0, 0x7f0e0177

    return v0
.end method

.method public h0(I)V
    .locals 4

    const/4 v0, 0x1

    if-gtz p1, :cond_0

    iget-object p1, p0, Lcom/miui/permcenter/privacymanager/InterceptBaseFragment;->c:Landroid/widget/Button;

    const v1, 0x7f120f48

    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setText(I)V

    iput-boolean v0, p0, Lcom/miui/permcenter/privacymanager/InterceptPermissionFragment;->m:Z

    iget-object p1, p0, Lcom/miui/permcenter/privacymanager/InterceptPermissionFragment;->k:Landroid/widget/CheckBox;

    invoke-virtual {p1}, Landroid/widget/CompoundButton;->isChecked()Z

    move-result p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/miui/permcenter/privacymanager/InterceptBaseFragment;->c:Landroid/widget/Button;

    invoke-virtual {p1, v0}, Landroid/view/View;->setEnabled(Z)V

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lcom/miui/permcenter/privacymanager/InterceptBaseFragment;->c:Landroid/widget/Button;

    const v2, 0x7f121759

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, v0, v3

    invoke-virtual {p0, v2, v0}, Landroidx/fragment/app/Fragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public i0(I)V
    .locals 1

    const v0, 0x7f0b0586

    if-ne p1, v0, :cond_0

    iget-object p1, p0, Lcom/miui/permcenter/privacymanager/InterceptPermissionFragment;->k:Landroid/widget/CheckBox;

    iget-boolean v0, p0, Lcom/miui/permcenter/privacymanager/InterceptPermissionFragment;->n:Z

    xor-int/lit8 v0, v0, 0x1

    invoke-virtual {p1, v0}, Landroid/widget/CompoundButton;->setChecked(Z)V

    :cond_0
    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 0

    invoke-super {p0, p1}, Lmiuix/appcompat/app/Fragment;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    invoke-direct {p0}, Lcom/miui/permcenter/privacymanager/InterceptPermissionFragment;->t0()V

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2

    invoke-super {p0, p1}, Lcom/miui/permcenter/privacymanager/InterceptBaseFragment;->onCreate(Landroid/os/Bundle;)V

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    instance-of v0, p1, Lcom/miui/permcenter/privacymanager/model/InterceptBaseActivity;

    if-eqz v0, :cond_0

    check-cast p1, Lcom/miui/permcenter/privacymanager/model/InterceptBaseActivity;

    invoke-virtual {p1}, Lcom/miui/permcenter/privacymanager/model/InterceptBaseActivity;->c0()Landroid/os/Bundle;

    move-result-object p1

    if-eqz p1, :cond_0

    const/4 v0, 0x0

    const-string v1, "KEY_ALLOW_ENABLE"

    invoke-virtual {p1, v1, v0}, Landroid/os/BaseBundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result p1

    iput-boolean p1, p0, Lcom/miui/permcenter/privacymanager/InterceptPermissionFragment;->n:Z

    :cond_0
    return-void
.end method

.method public onMultiWindowModeChanged(Z)V
    .locals 1

    invoke-super {p0, p1}, Landroidx/fragment/app/Fragment;->onMultiWindowModeChanged(Z)V

    iget-object v0, p0, Lcom/miui/permcenter/privacymanager/InterceptPermissionFragment;->h:Landroidx/recyclerview/widget/RecyclerView;

    if-eqz v0, :cond_0

    invoke-direct {p0, p1}, Lcom/miui/permcenter/privacymanager/InterceptPermissionFragment;->s0(Z)V

    :cond_0
    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 1

    invoke-super {p0, p1}, Lcom/miui/permcenter/privacymanager/InterceptBaseFragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    instance-of v0, p1, Lcom/miui/permcenter/privacymanager/model/InterceptBaseActivity;

    if-eqz v0, :cond_0

    check-cast p1, Lcom/miui/permcenter/privacymanager/model/InterceptBaseActivity;

    iget-boolean v0, p0, Lcom/miui/permcenter/privacymanager/InterceptPermissionFragment;->n:Z

    invoke-virtual {p1, v0}, Lcom/miui/permcenter/privacymanager/model/InterceptBaseActivity;->d0(Z)V

    :cond_0
    return-void
.end method
