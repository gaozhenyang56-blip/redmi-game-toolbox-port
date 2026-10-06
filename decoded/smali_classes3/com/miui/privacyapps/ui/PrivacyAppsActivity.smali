.class public Lcom/miui/privacyapps/ui/PrivacyAppsActivity;
.super Lcom/miui/common/base/BaseActivity;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Landroidx/loader/app/a$a;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/miui/common/base/BaseActivity;",
        "Landroid/view/View$OnClickListener;",
        "Landroidx/loader/app/a$a<",
        "Ljava/util/List<",
        "Lpe/c;",
        ">;>;"
    }
.end annotation


# static fields
.field private static final r:Ljava/lang/String;


# instance fields
.field private a:Lmiuix/recyclerview/widget/RecyclerView;

.field private b:Lcom/miui/privacyapps/view/PrivacyBottomSlideView;

.field private c:Lcom/miui/privacyapps/view/PrivacyBottomSlideView;

.field private d:Landroid/widget/ImageView;

.field private e:Landroid/widget/ImageView;

.field private f:Landroid/view/View;

.field private g:Lre/a;

.field private h:Lse/a;

.field private i:Landroid/content/pm/PackageManager;

.field private j:Lmiui/security/SecurityManager;

.field private k:Landroid/widget/RelativeLayout;

.field private l:Z

.field private m:Z

.field private n:Z

.field private o:Z

.field private p:I

.field private final q:Lak/l;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lak/l<",
            "Ljava/lang/Integer;",
            "Loj/t;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lcom/miui/privacyapps/ui/PrivacyAppsActivity;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/miui/privacyapps/ui/PrivacyAppsActivity;->r:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/miui/common/base/BaseActivity;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/miui/privacyapps/ui/PrivacyAppsActivity;->l:Z

    iput-boolean v0, p0, Lcom/miui/privacyapps/ui/PrivacyAppsActivity;->m:Z

    new-instance v0, Lcom/miui/privacyapps/ui/PrivacyAppsActivity$b;

    invoke-direct {v0, p0}, Lcom/miui/privacyapps/ui/PrivacyAppsActivity$b;-><init>(Lcom/miui/privacyapps/ui/PrivacyAppsActivity;)V

    iput-object v0, p0, Lcom/miui/privacyapps/ui/PrivacyAppsActivity;->q:Lak/l;

    return-void
.end method

.method static synthetic d0(Lcom/miui/privacyapps/ui/PrivacyAppsActivity;)Lmiui/security/SecurityManager;
    .locals 0

    iget-object p0, p0, Lcom/miui/privacyapps/ui/PrivacyAppsActivity;->j:Lmiui/security/SecurityManager;

    return-object p0
.end method

.method static synthetic e0(Lcom/miui/privacyapps/ui/PrivacyAppsActivity;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/miui/privacyapps/ui/PrivacyAppsActivity;->n:Z

    return p1
.end method

.method static synthetic f0(Lcom/miui/privacyapps/ui/PrivacyAppsActivity;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/miui/privacyapps/ui/PrivacyAppsActivity;->o:Z

    return p1
.end method

.method static synthetic g0(Lcom/miui/privacyapps/ui/PrivacyAppsActivity;)Lse/a;
    .locals 0

    iget-object p0, p0, Lcom/miui/privacyapps/ui/PrivacyAppsActivity;->h:Lse/a;

    return-object p0
.end method

.method static synthetic h0(Lcom/miui/privacyapps/ui/PrivacyAppsActivity;)Lre/a;
    .locals 0

    iget-object p0, p0, Lcom/miui/privacyapps/ui/PrivacyAppsActivity;->g:Lre/a;

    return-object p0
.end method

.method static synthetic i0(Lcom/miui/privacyapps/ui/PrivacyAppsActivity;)Landroid/content/pm/PackageManager;
    .locals 0

    iget-object p0, p0, Lcom/miui/privacyapps/ui/PrivacyAppsActivity;->i:Landroid/content/pm/PackageManager;

    return-object p0
.end method

.method static synthetic j0()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/miui/privacyapps/ui/PrivacyAppsActivity;->r:Ljava/lang/String;

    return-object v0
.end method

.method private l0(I)V
    .locals 3

    invoke-static {p0}, Lc3/d;->j(Landroid/content/Context;)Lc3/d;

    move-result-object v0

    invoke-virtual {v0}, Lc3/d;->l()Z

    move-result v0

    const-string v1, "extra_data"

    if-eqz v0, :cond_0

    new-instance v0, Landroid/content/Intent;

    const-class v2, Lcom/miui/applicationlock/ConfirmAccessControl;

    invoke-direct {v0, p0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v2, "HappyCodingMain"

    goto :goto_0

    :cond_0
    new-instance v0, Landroid/content/Intent;

    const-class v2, Lcom/miui/applicationlock/LockChooseAccessControl;

    invoke-direct {v0, p0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v2, "forbide"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "external_app_name"

    const-string v2, "com.miui.securitycenter"

    :goto_0
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {p0, v0, p1}, Lcom/miui/common/base/BaseActivity;->startActivityForResult(Landroid/content/Intent;I)V

    return-void
.end method


# virtual methods
.method public F(Lq0/c;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lq0/c<",
            "Ljava/util/List<",
            "Lpe/c;",
            ">;>;)V"
        }
    .end annotation

    return-void
.end method

.method public bridge synthetic T(Lq0/c;Ljava/lang/Object;)V
    .locals 0

    check-cast p2, Ljava/util/List;

    invoke-virtual {p0, p1, p2}, Lcom/miui/privacyapps/ui/PrivacyAppsActivity;->k0(Lq0/c;Ljava/util/List;)V

    return-void
.end method

.method public k0(Lq0/c;Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lq0/c<",
            "Ljava/util/List<",
            "Lpe/c;",
            ">;>;",
            "Ljava/util/List<",
            "Lpe/c;",
            ">;)V"
        }
    .end annotation

    iget-object p1, p0, Lcom/miui/privacyapps/ui/PrivacyAppsActivity;->g:Lre/a;

    invoke-virtual {p1, p2}, Lre/a;->setData(Ljava/util/List;)V

    iget-boolean p1, p0, Lcom/miui/privacyapps/ui/PrivacyAppsActivity;->m:Z

    if-nez p1, :cond_4

    iget-boolean p1, p0, Lcom/miui/privacyapps/ui/PrivacyAppsActivity;->n:Z

    if-eqz p1, :cond_0

    iget-boolean p2, p0, Lcom/miui/privacyapps/ui/PrivacyAppsActivity;->o:Z

    if-nez p2, :cond_4

    :cond_0
    const p2, 0x7f080d14

    const/4 v0, 0x0

    if-nez p1, :cond_1

    iget-object p1, p0, Lcom/miui/privacyapps/ui/PrivacyAppsActivity;->b:Lcom/miui/privacyapps/view/PrivacyBottomSlideView;

    const v1, 0x7f080eab

    invoke-virtual {p1, v1}, Lcom/miui/privacyapps/view/PrivacyBottomSlideView;->setIcon(I)V

    iget-object p1, p0, Lcom/miui/privacyapps/ui/PrivacyAppsActivity;->b:Lcom/miui/privacyapps/view/PrivacyBottomSlideView;

    const v1, 0x7f12142e

    invoke-virtual {p1, v1}, Lcom/miui/privacyapps/view/PrivacyBottomSlideView;->setTitle(I)V

    iget-object p1, p0, Lcom/miui/privacyapps/ui/PrivacyAppsActivity;->b:Lcom/miui/privacyapps/view/PrivacyBottomSlideView;

    invoke-virtual {p1, v0}, Lcom/miui/privacyapps/view/PrivacyBottomSlideView;->setChecked(Z)V

    iget-object p1, p0, Lcom/miui/privacyapps/ui/PrivacyAppsActivity;->b:Lcom/miui/privacyapps/view/PrivacyBottomSlideView;

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    iget-object p1, p0, Lcom/miui/privacyapps/ui/PrivacyAppsActivity;->b:Lcom/miui/privacyapps/view/PrivacyBottomSlideView;

    invoke-virtual {p1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object p1, p0, Lcom/miui/privacyapps/ui/PrivacyAppsActivity;->b:Lcom/miui/privacyapps/view/PrivacyBottomSlideView;

    invoke-virtual {p1, p2}, Landroid/view/View;->setBackgroundResource(I)V

    :cond_1
    iget-boolean p1, p0, Lcom/miui/privacyapps/ui/PrivacyAppsActivity;->o:Z

    if-nez p1, :cond_2

    iget-object p1, p0, Lcom/miui/privacyapps/ui/PrivacyAppsActivity;->c:Lcom/miui/privacyapps/view/PrivacyBottomSlideView;

    const v1, 0x7f080eac

    invoke-virtual {p1, v1}, Lcom/miui/privacyapps/view/PrivacyBottomSlideView;->setIcon(I)V

    iget-object p1, p0, Lcom/miui/privacyapps/ui/PrivacyAppsActivity;->c:Lcom/miui/privacyapps/view/PrivacyBottomSlideView;

    const v1, 0x7f12142c

    invoke-virtual {p1, v1}, Lcom/miui/privacyapps/view/PrivacyBottomSlideView;->setTitle(I)V

    iget-object p1, p0, Lcom/miui/privacyapps/ui/PrivacyAppsActivity;->c:Lcom/miui/privacyapps/view/PrivacyBottomSlideView;

    invoke-virtual {p1, v0}, Lcom/miui/privacyapps/view/PrivacyBottomSlideView;->setChecked(Z)V

    iget-object p1, p0, Lcom/miui/privacyapps/ui/PrivacyAppsActivity;->c:Lcom/miui/privacyapps/view/PrivacyBottomSlideView;

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    iget-object p1, p0, Lcom/miui/privacyapps/ui/PrivacyAppsActivity;->c:Lcom/miui/privacyapps/view/PrivacyBottomSlideView;

    invoke-virtual {p1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object p1, p0, Lcom/miui/privacyapps/ui/PrivacyAppsActivity;->c:Lcom/miui/privacyapps/view/PrivacyBottomSlideView;

    invoke-virtual {p1, p2}, Landroid/view/View;->setBackgroundResource(I)V

    :cond_2
    iget-object p1, p0, Lcom/miui/privacyapps/ui/PrivacyAppsActivity;->b:Lcom/miui/privacyapps/view/PrivacyBottomSlideView;

    invoke-virtual {p1}, Landroid/view/View;->getVisibility()I

    move-result p1

    if-nez p1, :cond_3

    iget-object p1, p0, Lcom/miui/privacyapps/ui/PrivacyAppsActivity;->c:Lcom/miui/privacyapps/view/PrivacyBottomSlideView;

    invoke-virtual {p1}, Landroid/view/View;->getVisibility()I

    move-result p1

    if-nez p1, :cond_3

    iget-object p1, p0, Lcom/miui/privacyapps/ui/PrivacyAppsActivity;->b:Lcom/miui/privacyapps/view/PrivacyBottomSlideView;

    const p2, 0x7f080eae

    invoke-virtual {p1, p2}, Landroid/view/View;->setBackgroundResource(I)V

    iget-object p1, p0, Lcom/miui/privacyapps/ui/PrivacyAppsActivity;->c:Lcom/miui/privacyapps/view/PrivacyBottomSlideView;

    const p2, 0x7f080ead

    invoke-virtual {p1, p2}, Landroid/view/View;->setBackgroundResource(I)V

    :cond_3
    iget-object p1, p0, Lcom/miui/privacyapps/ui/PrivacyAppsActivity;->f:Landroid/view/View;

    iget p2, p0, Lcom/miui/privacyapps/ui/PrivacyAppsActivity;->p:I

    invoke-virtual {p1, v0, v0, v0, p2}, Landroid/view/View;->setPadding(IIII)V

    goto :goto_0

    :cond_4
    iget-object p1, p0, Lcom/miui/privacyapps/ui/PrivacyAppsActivity;->b:Lcom/miui/privacyapps/view/PrivacyBottomSlideView;

    if-eqz p1, :cond_5

    iget-boolean p2, p0, Lcom/miui/privacyapps/ui/PrivacyAppsActivity;->n:Z

    invoke-virtual {p1, p2}, Lcom/miui/privacyapps/view/PrivacyBottomSlideView;->setChecked(Z)V

    :cond_5
    iget-object p1, p0, Lcom/miui/privacyapps/ui/PrivacyAppsActivity;->c:Lcom/miui/privacyapps/view/PrivacyBottomSlideView;

    if-eqz p1, :cond_6

    iget-boolean p2, p0, Lcom/miui/privacyapps/ui/PrivacyAppsActivity;->o:Z

    invoke-virtual {p1, p2}, Lcom/miui/privacyapps/view/PrivacyBottomSlideView;->setChecked(Z)V

    :cond_6
    :goto_0
    return-void
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 2

    invoke-super {p0, p1, p2, p3}, Landroidx/fragment/app/FragmentActivity;->onActivityResult(IILandroid/content/Intent;)V

    const/4 p3, -0x1

    const/4 v0, 0x0

    const/16 v1, 0x7e4

    if-eq p1, v1, :cond_2

    const/16 v1, 0x7e5

    if-ne p1, v1, :cond_0

    goto :goto_0

    :cond_0
    const/16 v1, 0x7e6

    if-ne p1, v1, :cond_4

    iput-boolean v0, p0, Lcom/miui/privacyapps/ui/PrivacyAppsActivity;->l:Z

    if-ne p2, p3, :cond_1

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/miui/privacyapps/ui/PrivacyAppsActivity;->o:Z

    iget-object p2, p0, Lcom/miui/privacyapps/ui/PrivacyAppsActivity;->c:Lcom/miui/privacyapps/view/PrivacyBottomSlideView;

    invoke-virtual {p2, p1}, Lcom/miui/privacyapps/view/PrivacyBottomSlideView;->setChecked(Z)V

    invoke-static {p0, p1}, Lse/a;->k(Landroid/content/Context;I)V

    goto :goto_1

    :cond_1
    iput-boolean v0, p0, Lcom/miui/privacyapps/ui/PrivacyAppsActivity;->o:Z

    iget-object p1, p0, Lcom/miui/privacyapps/ui/PrivacyAppsActivity;->c:Lcom/miui/privacyapps/view/PrivacyBottomSlideView;

    invoke-virtual {p1, v0}, Lcom/miui/privacyapps/view/PrivacyBottomSlideView;->setChecked(Z)V

    invoke-static {p0, v0}, Lse/a;->k(Landroid/content/Context;I)V

    goto :goto_1

    :cond_2
    :goto_0
    if-ne p2, p3, :cond_3

    iput-boolean v0, p0, Lcom/miui/privacyapps/ui/PrivacyAppsActivity;->l:Z

    goto :goto_1

    :cond_3
    invoke-virtual {p0}, Lmiuix/appcompat/app/AppCompatActivity;->finish()V

    :cond_4
    :goto_1
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 1

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    sparse-switch p1, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    iget-boolean p1, p0, Lcom/miui/privacyapps/ui/PrivacyAppsActivity;->o:Z

    if-eqz p1, :cond_0

    const/4 p1, 0x0

    invoke-static {p0, p1}, Lse/a;->k(Landroid/content/Context;I)V

    iput-boolean p1, p0, Lcom/miui/privacyapps/ui/PrivacyAppsActivity;->o:Z

    iget-object v0, p0, Lcom/miui/privacyapps/ui/PrivacyAppsActivity;->c:Lcom/miui/privacyapps/view/PrivacyBottomSlideView;

    invoke-virtual {v0, p1}, Lcom/miui/privacyapps/view/PrivacyBottomSlideView;->setChecked(Z)V

    goto :goto_0

    :cond_0
    const/16 p1, 0x7e6

    invoke-direct {p0, p1}, Lcom/miui/privacyapps/ui/PrivacyAppsActivity;->l0(I)V

    goto :goto_0

    :sswitch_1
    new-instance p1, Landroid/content/Intent;

    const-class v0, Lcom/miui/privacyapps/ui/PrivacySettingsActivity;

    invoke-direct {p1, p0, v0}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const/16 v0, 0x7e5

    invoke-virtual {p0, p1, v0}, Lcom/miui/common/base/BaseActivity;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_0

    :sswitch_2
    invoke-virtual {p0}, Lmiuix/appcompat/app/AppCompatActivity;->finish()V

    goto :goto_0

    :sswitch_3
    iget-boolean p1, p0, Lcom/miui/privacyapps/ui/PrivacyAppsActivity;->n:Z

    xor-int/lit8 p1, p1, 0x1

    iput-boolean p1, p0, Lcom/miui/privacyapps/ui/PrivacyAppsActivity;->n:Z

    iget-object v0, p0, Lcom/miui/privacyapps/ui/PrivacyAppsActivity;->b:Lcom/miui/privacyapps/view/PrivacyBottomSlideView;

    invoke-virtual {v0, p1}, Lcom/miui/privacyapps/view/PrivacyBottomSlideView;->setChecked(Z)V

    iget-boolean p1, p0, Lcom/miui/privacyapps/ui/PrivacyAppsActivity;->n:Z

    invoke-static {p0, p1}, Lse/a;->j(Landroid/content/Context;Z)V

    iget-object p1, p0, Lcom/miui/privacyapps/ui/PrivacyAppsActivity;->j:Lmiui/security/SecurityManager;

    iget-boolean v0, p0, Lcom/miui/privacyapps/ui/PrivacyAppsActivity;->n:Z

    xor-int/lit8 v0, v0, 0x1

    invoke-static {p1, p0, v0}, Lse/e;->j(Lmiui/security/SecurityManager;Landroid/content/Context;Z)V

    :goto_0
    return-void

    nop

    :sswitch_data_0
    .sparse-switch
        0x7f0b04ef -> :sswitch_3
        0x7f0b05e0 -> :sswitch_2
        0x7f0b0632 -> :sswitch_1
        0x7f0b0863 -> :sswitch_0
    .end sparse-switch
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 6

    invoke-super {p0, p1}, Lcom/miui/common/base/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    const v0, 0x7f0e046a

    invoke-virtual {p0, v0}, Lcom/miui/common/base/BaseActivity;->setContentView(I)V

    const v0, 0x7f0b09bf

    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/miui/privacyapps/ui/PrivacyAppsActivity;->k:Landroid/widget/RelativeLayout;

    if-eqz p1, :cond_0

    const-string v0, "needConfirmed"

    invoke-virtual {p1, v0}, Landroid/os/BaseBundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/miui/privacyapps/ui/PrivacyAppsActivity;->l:Z

    :cond_0
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-static {v0}, Lag/a;->b(Landroid/view/Window;)V

    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    const v1, 0x7f060b78

    invoke-virtual {p0, v1}, Landroid/content/Context;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/Window;->setNavigationBarColor(I)V

    new-instance v0, Lse/a;

    invoke-direct {v0, p0}, Lse/a;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/miui/privacyapps/ui/PrivacyAppsActivity;->h:Lse/a;

    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/privacyapps/ui/PrivacyAppsActivity;->i:Landroid/content/pm/PackageManager;

    const-string v0, "security"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lmiui/security/SecurityManager;

    iput-object v0, p0, Lcom/miui/privacyapps/ui/PrivacyAppsActivity;->j:Lmiui/security/SecurityManager;

    const v0, 0x7f0b027f

    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/privacyapps/ui/PrivacyAppsActivity;->f:Landroid/view/View;

    const v0, 0x7f0b08f0

    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lmiuix/recyclerview/widget/RecyclerView;

    iput-object v0, p0, Lcom/miui/privacyapps/ui/PrivacyAppsActivity;->a:Lmiuix/recyclerview/widget/RecyclerView;

    new-instance v0, Landroidx/recyclerview/widget/HyperGridLayoutManager;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Landroidx/recyclerview/widget/HyperGridLayoutManager;-><init>(Landroid/content/Context;I)V

    new-instance v2, Landroid/util/TypedValue;

    invoke-direct {v2}, Landroid/util/TypedValue;-><init>()V

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f07196b

    invoke-virtual {v3, v4, v2, v1}, Landroid/content/res/Resources;->getValue(ILandroid/util/TypedValue;Z)V

    const/4 v1, 0x0

    invoke-static {p0, v1}, Lbl/i;->d(Landroid/content/Context;F)I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/HyperGridLayoutManager;->x(F)V

    invoke-virtual {v2}, Landroid/util/TypedValue;->getFloat()F

    move-result v1

    invoke-static {p0, v1}, Lbl/i;->d(Landroid/content/Context;F)I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/HyperGridLayoutManager;->y(F)V

    const/high16 v1, 0x420c0000    # 35.0f

    invoke-static {p0, v1}, Lbl/i;->d(Landroid/content/Context;F)I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/HyperGridLayoutManager;->z(F)V

    iget-object v1, p0, Lcom/miui/privacyapps/ui/PrivacyAppsActivity;->a:Lmiuix/recyclerview/widget/RecyclerView;

    invoke-virtual {v1, v0}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$n;)V

    new-instance v0, Lre/a;

    iget-object v1, p0, Lcom/miui/privacyapps/ui/PrivacyAppsActivity;->q:Lak/l;

    invoke-direct {v0, v1}, Lre/a;-><init>(Lak/l;)V

    iput-object v0, p0, Lcom/miui/privacyapps/ui/PrivacyAppsActivity;->g:Lre/a;

    iget-object v1, p0, Lcom/miui/privacyapps/ui/PrivacyAppsActivity;->a:Lmiuix/recyclerview/widget/RecyclerView;

    invoke-virtual {v1, v0}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$h;)V

    const v0, 0x7f0b05e0

    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/miui/privacyapps/ui/PrivacyAppsActivity;->d:Landroid/widget/ImageView;

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f0b0632

    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/miui/privacyapps/ui/PrivacyAppsActivity;->e:Landroid/widget/ImageView;

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f0b04ef

    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/miui/privacyapps/view/PrivacyBottomSlideView;

    iput-object v0, p0, Lcom/miui/privacyapps/ui/PrivacyAppsActivity;->b:Lcom/miui/privacyapps/view/PrivacyBottomSlideView;

    const v0, 0x7f0b0863

    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/miui/privacyapps/view/PrivacyBottomSlideView;

    iput-object v0, p0, Lcom/miui/privacyapps/ui/PrivacyAppsActivity;->c:Lcom/miui/privacyapps/view/PrivacyBottomSlideView;

    invoke-virtual {p0}, Landroidx/fragment/app/FragmentActivity;->getSupportLoaderManager()Landroidx/loader/app/a;

    move-result-object v0

    const/16 v1, 0x141

    invoke-virtual {v0, v1}, Landroidx/loader/app/a;->d(I)Lq0/c;

    move-result-object v0

    invoke-virtual {p0}, Landroidx/fragment/app/FragmentActivity;->getSupportLoaderManager()Landroidx/loader/app/a;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v1, v3, p0}, Landroidx/loader/app/a;->e(ILandroid/os/Bundle;Landroidx/loader/app/a$a;)Lq0/c;

    sget v4, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v5, 0x18

    if-lt v4, v5, :cond_1

    if-eqz p1, :cond_1

    if-eqz v0, :cond_1

    invoke-virtual {v2, v1, v3, p0}, Landroidx/loader/app/a;->g(ILandroid/os/Bundle;Landroidx/loader/app/a$a;)Lq0/c;

    :cond_1
    invoke-static {p0}, Lpg/i;->d(Landroid/app/Activity;)I

    move-result p1

    iput p1, p0, Lcom/miui/privacyapps/ui/PrivacyAppsActivity;->p:I

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
            "Ljava/util/List<",
            "Lpe/c;",
            ">;>;"
        }
    .end annotation

    new-instance p1, Lcom/miui/privacyapps/ui/PrivacyAppsActivity$a;

    invoke-direct {p1, p0, p0}, Lcom/miui/privacyapps/ui/PrivacyAppsActivity$a;-><init>(Lcom/miui/privacyapps/ui/PrivacyAppsActivity;Landroid/content/Context;)V

    return-object p1
.end method

.method public onExtraPaddingChanged(I)V
    .locals 3

    invoke-super {p0, p1}, Lmiuix/appcompat/app/AppCompatActivity;->onExtraPaddingChanged(I)V

    const v0, 0x7f0b0217

    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    sget v1, Ltm/e;->e:I

    int-to-float v1, v1

    invoke-static {p0, v1}, Lbl/i;->d(Landroid/content/Context;F)I

    move-result v1

    add-int/2addr v1, p1

    invoke-virtual {v0}, Landroid/view/View;->getPaddingTop()I

    move-result p1

    invoke-virtual {v0}, Landroid/view/View;->getPaddingBottom()I

    move-result v2

    invoke-virtual {v0, v1, p1, v1, v2}, Landroid/view/View;->setPaddingRelative(IIII)V

    return-void
.end method

.method protected onPause()V
    .locals 2

    invoke-super {p0}, Landroidx/fragment/app/FragmentActivity;->onPause()V

    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/16 v1, 0x2000

    invoke-virtual {v0, v1}, Landroid/view/Window;->clearFlags(I)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/miui/privacyapps/ui/PrivacyAppsActivity;->l:Z

    iput-boolean v0, p0, Lcom/miui/privacyapps/ui/PrivacyAppsActivity;->m:Z

    return-void
.end method

.method public onResume()V
    .locals 3

    invoke-super {p0}, Landroidx/fragment/app/FragmentActivity;->onResume()V

    iget-boolean v0, p0, Lcom/miui/privacyapps/ui/PrivacyAppsActivity;->o:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/miui/privacyapps/ui/PrivacyAppsActivity;->l:Z

    if-eqz v0, :cond_0

    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/miui/applicationlock/PrivacyAppsConfirmAccessControl;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const/16 v1, 0x7e4

    invoke-virtual {p0, v0, v1}, Lcom/miui/common/base/BaseActivity;->startActivityForResult(Landroid/content/Intent;I)V

    :cond_0
    iget-boolean v0, p0, Lcom/miui/privacyapps/ui/PrivacyAppsActivity;->m:Z

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Landroidx/fragment/app/FragmentActivity;->getSupportLoaderManager()Landroidx/loader/app/a;

    move-result-object v0

    const/16 v1, 0x141

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2, p0}, Landroidx/loader/app/a;->g(ILandroid/os/Bundle;Landroidx/loader/app/a$a;)Lq0/c;

    :cond_1
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/16 v1, 0x2000

    invoke-virtual {v0, v1}, Landroid/view/Window;->addFlags(I)V

    return-void
.end method
