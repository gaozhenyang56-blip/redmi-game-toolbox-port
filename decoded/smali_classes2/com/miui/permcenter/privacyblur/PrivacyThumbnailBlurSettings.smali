.class public Lcom/miui/permcenter/privacyblur/PrivacyThumbnailBlurSettings;
.super Lmiuix/appcompat/app/AppCompatActivity;
.source "SourceFile"


# instance fields
.field private a:Landroid/view/View;

.field private b:Landroid/view/View;

.field private c:Lcom/miui/permcenter/privacyblur/a;

.field private d:Lcom/miui/permcenter/privacyblur/a;

.field private e:Landroidx/recyclerview/widget/RecyclerView;

.field private f:Lmiuix/view/l;

.field private g:Landroidx/recyclerview/widget/RecyclerView;

.field private h:Lgc/a;

.field private i:Landroid/view/View;

.field private j:Lmiuix/androidbasewidget/widget/ProgressBar;

.field private final k:Ljava/lang/String;

.field private final l:Ljava/lang/String;

.field private final m:Ljava/lang/String;

.field private final n:Ljava/lang/String;

.field private o:Ljava/lang/String;

.field private p:Z

.field private q:Landroid/text/TextWatcher;

.field private r:Lbc/a$a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lbc/a$a<",
            "Ljava/util/List<",
            "Lfc/a;",
            ">;>;"
        }
    .end annotation
.end field

.field private s:Lmiuix/view/l$b;

.field private t:Lcom/miui/permcenter/privacyblur/a$d;

.field private u:Lcom/miui/permcenter/privacyblur/a$d;

.field private v:Landroid/view/View$OnClickListener;

.field private w:Landroidx/recyclerview/widget/RecyclerView$s;

.field private x:Lbc/a$a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lbc/a$a<",
            "Ljava/util/List<",
            "Lfc/a;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lmiuix/appcompat/app/AppCompatActivity;-><init>()V

    const-string v0, "miui_home_recents_blur_mode"

    iput-object v0, p0, Lcom/miui/permcenter/privacyblur/PrivacyThumbnailBlurSettings;->k:Ljava/lang/String;

    const-string v0, "recents_blur_mode_dim"

    iput-object v0, p0, Lcom/miui/permcenter/privacyblur/PrivacyThumbnailBlurSettings;->l:Ljava/lang/String;

    const-string v0, "recents_blur_v2_enabled"

    iput-object v0, p0, Lcom/miui/permcenter/privacyblur/PrivacyThumbnailBlurSettings;->m:Ljava/lang/String;

    const-string v0, "com.miui.home"

    iput-object v0, p0, Lcom/miui/permcenter/privacyblur/PrivacyThumbnailBlurSettings;->n:Ljava/lang/String;

    new-instance v0, Lcom/miui/permcenter/privacyblur/PrivacyThumbnailBlurSettings$a;

    invoke-direct {v0, p0}, Lcom/miui/permcenter/privacyblur/PrivacyThumbnailBlurSettings$a;-><init>(Lcom/miui/permcenter/privacyblur/PrivacyThumbnailBlurSettings;)V

    iput-object v0, p0, Lcom/miui/permcenter/privacyblur/PrivacyThumbnailBlurSettings;->q:Landroid/text/TextWatcher;

    new-instance v0, Lcom/miui/permcenter/privacyblur/PrivacyThumbnailBlurSettings$b;

    invoke-direct {v0, p0}, Lcom/miui/permcenter/privacyblur/PrivacyThumbnailBlurSettings$b;-><init>(Lcom/miui/permcenter/privacyblur/PrivacyThumbnailBlurSettings;)V

    iput-object v0, p0, Lcom/miui/permcenter/privacyblur/PrivacyThumbnailBlurSettings;->r:Lbc/a$a;

    new-instance v0, Lcom/miui/permcenter/privacyblur/PrivacyThumbnailBlurSettings$c;

    invoke-direct {v0, p0}, Lcom/miui/permcenter/privacyblur/PrivacyThumbnailBlurSettings$c;-><init>(Lcom/miui/permcenter/privacyblur/PrivacyThumbnailBlurSettings;)V

    iput-object v0, p0, Lcom/miui/permcenter/privacyblur/PrivacyThumbnailBlurSettings;->s:Lmiuix/view/l$b;

    new-instance v0, Lcom/miui/permcenter/privacyblur/PrivacyThumbnailBlurSettings$d;

    invoke-direct {v0, p0}, Lcom/miui/permcenter/privacyblur/PrivacyThumbnailBlurSettings$d;-><init>(Lcom/miui/permcenter/privacyblur/PrivacyThumbnailBlurSettings;)V

    iput-object v0, p0, Lcom/miui/permcenter/privacyblur/PrivacyThumbnailBlurSettings;->t:Lcom/miui/permcenter/privacyblur/a$d;

    new-instance v0, Lcom/miui/permcenter/privacyblur/PrivacyThumbnailBlurSettings$e;

    invoke-direct {v0, p0}, Lcom/miui/permcenter/privacyblur/PrivacyThumbnailBlurSettings$e;-><init>(Lcom/miui/permcenter/privacyblur/PrivacyThumbnailBlurSettings;)V

    iput-object v0, p0, Lcom/miui/permcenter/privacyblur/PrivacyThumbnailBlurSettings;->u:Lcom/miui/permcenter/privacyblur/a$d;

    new-instance v0, Lcom/miui/permcenter/privacyblur/PrivacyThumbnailBlurSettings$f;

    invoke-direct {v0, p0}, Lcom/miui/permcenter/privacyblur/PrivacyThumbnailBlurSettings$f;-><init>(Lcom/miui/permcenter/privacyblur/PrivacyThumbnailBlurSettings;)V

    iput-object v0, p0, Lcom/miui/permcenter/privacyblur/PrivacyThumbnailBlurSettings;->v:Landroid/view/View$OnClickListener;

    new-instance v0, Lcom/miui/permcenter/privacyblur/PrivacyThumbnailBlurSettings$g;

    invoke-direct {v0, p0}, Lcom/miui/permcenter/privacyblur/PrivacyThumbnailBlurSettings$g;-><init>(Lcom/miui/permcenter/privacyblur/PrivacyThumbnailBlurSettings;)V

    iput-object v0, p0, Lcom/miui/permcenter/privacyblur/PrivacyThumbnailBlurSettings;->w:Landroidx/recyclerview/widget/RecyclerView$s;

    new-instance v0, Lcom/miui/permcenter/privacyblur/PrivacyThumbnailBlurSettings$h;

    invoke-direct {v0, p0}, Lcom/miui/permcenter/privacyblur/PrivacyThumbnailBlurSettings$h;-><init>(Lcom/miui/permcenter/privacyblur/PrivacyThumbnailBlurSettings;)V

    iput-object v0, p0, Lcom/miui/permcenter/privacyblur/PrivacyThumbnailBlurSettings;->x:Lbc/a$a;

    return-void
.end method

.method public static synthetic c0(Lcom/miui/permcenter/privacyblur/PrivacyThumbnailBlurSettings;Landroid/widget/TextView;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/miui/permcenter/privacyblur/PrivacyThumbnailBlurSettings;->w0(Landroid/widget/TextView;)V

    return-void
.end method

.method static synthetic d0(Lcom/miui/permcenter/privacyblur/PrivacyThumbnailBlurSettings;)Lgc/a;
    .locals 0

    iget-object p0, p0, Lcom/miui/permcenter/privacyblur/PrivacyThumbnailBlurSettings;->h:Lgc/a;

    return-object p0
.end method

.method static synthetic e0(Lcom/miui/permcenter/privacyblur/PrivacyThumbnailBlurSettings;Lgc/a;)Lgc/a;
    .locals 0

    iput-object p1, p0, Lcom/miui/permcenter/privacyblur/PrivacyThumbnailBlurSettings;->h:Lgc/a;

    return-object p1
.end method

.method static synthetic f0(Lcom/miui/permcenter/privacyblur/PrivacyThumbnailBlurSettings;)Landroidx/recyclerview/widget/RecyclerView;
    .locals 0

    iget-object p0, p0, Lcom/miui/permcenter/privacyblur/PrivacyThumbnailBlurSettings;->e:Landroidx/recyclerview/widget/RecyclerView;

    return-object p0
.end method

.method static synthetic g0(Lcom/miui/permcenter/privacyblur/PrivacyThumbnailBlurSettings;)Lmiuix/view/l;
    .locals 0

    iget-object p0, p0, Lcom/miui/permcenter/privacyblur/PrivacyThumbnailBlurSettings;->f:Lmiuix/view/l;

    return-object p0
.end method

.method static synthetic h0(Lcom/miui/permcenter/privacyblur/PrivacyThumbnailBlurSettings;Lmiuix/view/l;)Lmiuix/view/l;
    .locals 0

    iput-object p1, p0, Lcom/miui/permcenter/privacyblur/PrivacyThumbnailBlurSettings;->f:Lmiuix/view/l;

    return-object p1
.end method

.method static synthetic i0(Lcom/miui/permcenter/privacyblur/PrivacyThumbnailBlurSettings;Landroidx/recyclerview/widget/RecyclerView;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/miui/permcenter/privacyblur/PrivacyThumbnailBlurSettings;->y0(Landroidx/recyclerview/widget/RecyclerView;)V

    return-void
.end method

.method private initData()V
    .locals 3

    iget-object v0, p0, Lcom/miui/permcenter/privacyblur/PrivacyThumbnailBlurSettings;->j:Lmiuix/androidbasewidget/widget/ProgressBar;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    new-instance v0, Lgc/b;

    iget-object v2, p0, Lcom/miui/permcenter/privacyblur/PrivacyThumbnailBlurSettings;->x:Lbc/a$a;

    invoke-direct {v0, p0, v2}, Lgc/b;-><init>(Landroid/content/Context;Lbc/a$a;)V

    new-array v1, v1, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Landroid/os/AsyncTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    return-void
.end method

.method static synthetic j0(Lcom/miui/permcenter/privacyblur/PrivacyThumbnailBlurSettings;Lfc/b;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/miui/permcenter/privacyblur/PrivacyThumbnailBlurSettings;->x0(Lfc/b;)V

    return-void
.end method

.method static synthetic k0(Lcom/miui/permcenter/privacyblur/PrivacyThumbnailBlurSettings;)V
    .locals 0

    invoke-direct {p0}, Lcom/miui/permcenter/privacyblur/PrivacyThumbnailBlurSettings;->z0()V

    return-void
.end method

.method static synthetic l0(Lcom/miui/permcenter/privacyblur/PrivacyThumbnailBlurSettings;)Lmiuix/androidbasewidget/widget/ProgressBar;
    .locals 0

    iget-object p0, p0, Lcom/miui/permcenter/privacyblur/PrivacyThumbnailBlurSettings;->j:Lmiuix/androidbasewidget/widget/ProgressBar;

    return-object p0
.end method

.method static synthetic m0(Lcom/miui/permcenter/privacyblur/PrivacyThumbnailBlurSettings;)Lcom/miui/permcenter/privacyblur/a;
    .locals 0

    iget-object p0, p0, Lcom/miui/permcenter/privacyblur/PrivacyThumbnailBlurSettings;->d:Lcom/miui/permcenter/privacyblur/a;

    return-object p0
.end method

.method static synthetic n0(Lcom/miui/permcenter/privacyblur/PrivacyThumbnailBlurSettings;)Lcom/miui/permcenter/privacyblur/a;
    .locals 0

    iget-object p0, p0, Lcom/miui/permcenter/privacyblur/PrivacyThumbnailBlurSettings;->c:Lcom/miui/permcenter/privacyblur/a;

    return-object p0
.end method

.method static synthetic o0(Lcom/miui/permcenter/privacyblur/PrivacyThumbnailBlurSettings;)Lbc/a$a;
    .locals 0

    iget-object p0, p0, Lcom/miui/permcenter/privacyblur/PrivacyThumbnailBlurSettings;->r:Lbc/a$a;

    return-object p0
.end method

.method static synthetic p0(Lcom/miui/permcenter/privacyblur/PrivacyThumbnailBlurSettings;)Landroid/view/View;
    .locals 0

    iget-object p0, p0, Lcom/miui/permcenter/privacyblur/PrivacyThumbnailBlurSettings;->b:Landroid/view/View;

    return-object p0
.end method

.method static synthetic q0(Lcom/miui/permcenter/privacyblur/PrivacyThumbnailBlurSettings;)Landroid/view/View;
    .locals 0

    iget-object p0, p0, Lcom/miui/permcenter/privacyblur/PrivacyThumbnailBlurSettings;->a:Landroid/view/View;

    return-object p0
.end method

.method static synthetic r0(Lcom/miui/permcenter/privacyblur/PrivacyThumbnailBlurSettings;)Landroidx/recyclerview/widget/RecyclerView;
    .locals 0

    iget-object p0, p0, Lcom/miui/permcenter/privacyblur/PrivacyThumbnailBlurSettings;->g:Landroidx/recyclerview/widget/RecyclerView;

    return-object p0
.end method

.method static synthetic s0(Lcom/miui/permcenter/privacyblur/PrivacyThumbnailBlurSettings;)Landroid/text/TextWatcher;
    .locals 0

    iget-object p0, p0, Lcom/miui/permcenter/privacyblur/PrivacyThumbnailBlurSettings;->q:Landroid/text/TextWatcher;

    return-object p0
.end method

.method private setNaviBarColor()V
    .locals 4

    invoke-static {}, Lx4/y;->f()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f060ab6

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/content/res/Resources;->getColor(ILandroid/content/res/Resources$Theme;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/Window;->setNavigationBarColor(I)V

    :cond_0
    return-void
.end method

.method static synthetic t0(Lcom/miui/permcenter/privacyblur/PrivacyThumbnailBlurSettings;)Landroid/view/View;
    .locals 0

    iget-object p0, p0, Lcom/miui/permcenter/privacyblur/PrivacyThumbnailBlurSettings;->i:Landroid/view/View;

    return-object p0
.end method

.method private u0()V
    .locals 3

    const v0, 0x7f0b0968

    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroidx/recyclerview/widget/RecyclerView;

    iput-object v0, p0, Lcom/miui/permcenter/privacyblur/PrivacyThumbnailBlurSettings;->g:Landroidx/recyclerview/widget/RecyclerView;

    const v0, 0x7f0b04e2

    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/permcenter/privacyblur/PrivacyThumbnailBlurSettings;->a:Landroid/view/View;

    const v1, 0x1020009

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    new-instance v1, Lec/a;

    invoke-direct {v1, p0, v0}, Lec/a;-><init>(Lcom/miui/permcenter/privacyblur/PrivacyThumbnailBlurSettings;Landroid/widget/TextView;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    const v0, 0x7f0b0379

    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/permcenter/privacyblur/PrivacyThumbnailBlurSettings;->b:Landroid/view/View;

    const v0, 0x7f0b0378

    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    const v1, 0x7f12151b

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    const v0, 0x7f0b0985

    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroidx/recyclerview/widget/RecyclerView;

    iput-object v0, p0, Lcom/miui/permcenter/privacyblur/PrivacyThumbnailBlurSettings;->e:Landroidx/recyclerview/widget/RecyclerView;

    const v0, 0x7f0b0a16

    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/permcenter/privacyblur/PrivacyThumbnailBlurSettings;->i:Landroid/view/View;

    const v0, 0x7f0b07fb

    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lmiuix/androidbasewidget/widget/ProgressBar;

    iput-object v0, p0, Lcom/miui/permcenter/privacyblur/PrivacyThumbnailBlurSettings;->j:Lmiuix/androidbasewidget/widget/ProgressBar;

    invoke-static {p0}, Lec/c;->u(Landroid/content/Context;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/miui/permcenter/privacyblur/PrivacyThumbnailBlurSettings;->p:Z

    invoke-virtual {p0}, Lmiuix/appcompat/app/AppCompatActivity;->getAppCompatActionBar()Lmiuix/appcompat/app/ActionBar;

    move-result-object v0

    iget-boolean v1, p0, Lcom/miui/permcenter/privacyblur/PrivacyThumbnailBlurSettings;->p:Z

    if-eqz v1, :cond_0

    if-eqz v0, :cond_0

    const v1, 0x7f12151e

    invoke-virtual {v0, v1}, Landroidx/appcompat/app/ActionBar;->setTitle(I)V

    :cond_0
    new-instance v0, Lcom/miui/permcenter/privacyblur/a;

    iget-object v1, p0, Lcom/miui/permcenter/privacyblur/PrivacyThumbnailBlurSettings;->t:Lcom/miui/permcenter/privacyblur/a$d;

    iget-boolean v2, p0, Lcom/miui/permcenter/privacyblur/PrivacyThumbnailBlurSettings;->p:Z

    invoke-direct {v0, v1, v2}, Lcom/miui/permcenter/privacyblur/a;-><init>(Lcom/miui/permcenter/privacyblur/a$d;Z)V

    iput-object v0, p0, Lcom/miui/permcenter/privacyblur/PrivacyThumbnailBlurSettings;->c:Lcom/miui/permcenter/privacyblur/a;

    iget-object v1, p0, Lcom/miui/permcenter/privacyblur/PrivacyThumbnailBlurSettings;->g:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v1, v0}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$h;)V

    iget-object v0, p0, Lcom/miui/permcenter/privacyblur/PrivacyThumbnailBlurSettings;->g:Landroidx/recyclerview/widget/RecyclerView;

    iget-object v1, p0, Lcom/miui/permcenter/privacyblur/PrivacyThumbnailBlurSettings;->w:Landroidx/recyclerview/widget/RecyclerView$s;

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->addOnScrollListener(Landroidx/recyclerview/widget/RecyclerView$s;)V

    iget-object v0, p0, Lcom/miui/permcenter/privacyblur/PrivacyThumbnailBlurSettings;->g:Landroidx/recyclerview/widget/RecyclerView;

    new-instance v1, Lmiuix/recyclerview/card/f;

    invoke-direct {v1, p0}, Lmiuix/recyclerview/card/f;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->addItemDecoration(Landroidx/recyclerview/widget/RecyclerView$m;)V

    new-instance v0, Lcom/miui/permcenter/privacyblur/a;

    iget-object v1, p0, Lcom/miui/permcenter/privacyblur/PrivacyThumbnailBlurSettings;->u:Lcom/miui/permcenter/privacyblur/a$d;

    iget-boolean v2, p0, Lcom/miui/permcenter/privacyblur/PrivacyThumbnailBlurSettings;->p:Z

    invoke-direct {v0, v1, v2}, Lcom/miui/permcenter/privacyblur/a;-><init>(Lcom/miui/permcenter/privacyblur/a$d;Z)V

    iput-object v0, p0, Lcom/miui/permcenter/privacyblur/PrivacyThumbnailBlurSettings;->d:Lcom/miui/permcenter/privacyblur/a;

    iget-object v1, p0, Lcom/miui/permcenter/privacyblur/PrivacyThumbnailBlurSettings;->e:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v1, v0}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$h;)V

    iget-object v0, p0, Lcom/miui/permcenter/privacyblur/PrivacyThumbnailBlurSettings;->e:Landroidx/recyclerview/widget/RecyclerView;

    new-instance v1, Lmiuix/recyclerview/card/f;

    invoke-direct {v1, p0}, Lmiuix/recyclerview/card/f;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->addItemDecoration(Landroidx/recyclerview/widget/RecyclerView$m;)V

    iget-object v0, p0, Lcom/miui/permcenter/privacyblur/PrivacyThumbnailBlurSettings;->a:Landroid/view/View;

    iget-object v1, p0, Lcom/miui/permcenter/privacyblur/PrivacyThumbnailBlurSettings;->v:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lmiuix/appcompat/app/AppCompatActivity;->setExtraHorizontalPaddingEnable(Z)V

    return-void
.end method

.method public static v0(Landroid/app/Activity;I)V
    .locals 2

    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/miui/permcenter/privacyblur/PrivacyThumbnailBlurSettings;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, v0, p1}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    return-void
.end method

.method private synthetic w0(Landroid/widget/TextView;)V
    .locals 2

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0713eb

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    int-to-float v0, v0

    const/4 v1, 0x0

    invoke-virtual {p1, v1, v0}, Landroid/widget/TextView;->setTextSize(IF)V

    return-void
.end method

.method private x0(Lfc/b;)V
    .locals 3

    iget-boolean v0, p1, Lfc/b;->d:Z

    xor-int/lit8 v0, v0, 0x1

    iput-boolean v0, p1, Lfc/b;->d:Z

    invoke-virtual {p0}, Landroid/content/ContextWrapper;->getBaseContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p1, Lfc/b;->b:Ljava/lang/String;

    iget-boolean v2, p1, Lfc/b;->d:Z

    invoke-static {v0, v1, v2}, Lec/c;->d(Landroid/content/Context;Ljava/lang/String;Z)V

    iget-object v0, p1, Lfc/b;->b:Ljava/lang/String;

    iget-boolean p1, p1, Lfc/b;->d:Z

    invoke-static {v0, p1}, Lec/c;->f(Ljava/lang/String;Z)V

    return-void
.end method

.method private y0(Landroidx/recyclerview/widget/RecyclerView;)V
    .locals 3

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView;->getLayoutManager()Landroidx/recyclerview/widget/RecyclerView$n;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView;->getAdapter()Landroidx/recyclerview/widget/RecyclerView$h;

    move-result-object v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView;->getLayoutManager()Landroidx/recyclerview/widget/RecyclerView$n;

    move-result-object v0

    check-cast v0, Landroidx/recyclerview/widget/LinearLayoutManager;

    invoke-virtual {v0}, Landroidx/recyclerview/widget/LinearLayoutManager;->findLastVisibleItemPosition()I

    move-result v1

    invoke-virtual {v0}, Landroidx/recyclerview/widget/LinearLayoutManager;->findFirstVisibleItemPosition()I

    move-result v2

    sub-int/2addr v1, v2

    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView;->getAdapter()Landroidx/recyclerview/widget/RecyclerView$h;

    move-result-object p1

    invoke-virtual {v0}, Landroidx/recyclerview/widget/LinearLayoutManager;->findFirstVisibleItemPosition()I

    move-result v0

    const-string v2, "payload_state"

    invoke-virtual {p1, v0, v1, v2}, Landroidx/recyclerview/widget/RecyclerView$h;->notifyItemRangeChanged(IILjava/lang/Object;)V

    :cond_1
    :goto_0
    return-void
.end method

.method private z0()V
    .locals 2

    iget-object v0, p0, Lcom/miui/permcenter/privacyblur/PrivacyThumbnailBlurSettings;->s:Lmiuix/view/l$b;

    invoke-virtual {p0, v0}, Lmiuix/appcompat/app/AppCompatActivity;->startActionMode(Landroid/view/ActionMode$Callback;)Landroid/view/ActionMode;

    move-result-object v0

    check-cast v0, Lmiuix/view/l;

    iput-object v0, p0, Lcom/miui/permcenter/privacyblur/PrivacyThumbnailBlurSettings;->f:Lmiuix/view/l;

    iget-object v0, p0, Lcom/miui/permcenter/privacyblur/PrivacyThumbnailBlurSettings;->g:Landroidx/recyclerview/widget/RecyclerView;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 0

    invoke-super {p0, p1}, Lmiuix/appcompat/app/AppCompatActivity;->onCreate(Landroid/os/Bundle;)V

    const p1, 0x7f0e0040

    invoke-virtual {p0, p1}, Lmiuix/appcompat/app/AppCompatActivity;->setContentView(I)V

    invoke-direct {p0}, Lcom/miui/permcenter/privacyblur/PrivacyThumbnailBlurSettings;->u0()V

    invoke-direct {p0}, Lcom/miui/permcenter/privacyblur/PrivacyThumbnailBlurSettings;->setNaviBarColor()V

    return-void
.end method

.method public onExtraPaddingChanged(I)V
    .locals 5

    invoke-super {p0, p1}, Lmiuix/appcompat/app/AppCompatActivity;->onExtraPaddingChanged(I)V

    iget-object v0, p0, Lcom/miui/permcenter/privacyblur/PrivacyThumbnailBlurSettings;->g:Landroidx/recyclerview/widget/RecyclerView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->getItemDecorationAt(I)Landroidx/recyclerview/widget/RecyclerView$m;

    move-result-object v0

    instance-of v2, v0, Lmiuix/recyclerview/card/f;

    if-eqz v2, :cond_0

    int-to-float v2, p1

    sget v3, Ltm/e;->d:I

    mul-int/lit8 v3, v3, 0x3

    int-to-float v3, v3

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v4

    iget v4, v4, Landroid/util/DisplayMetrics;->density:F

    mul-float/2addr v3, v4

    add-float/2addr v2, v3

    float-to-int v2, v2

    check-cast v0, Lmiuix/recyclerview/card/f;

    invoke-virtual {v0, v2}, Lmiuix/recyclerview/card/f;->v(I)V

    invoke-virtual {v0, v2}, Lmiuix/recyclerview/card/f;->u(I)V

    iget-object v0, p0, Lcom/miui/permcenter/privacyblur/PrivacyThumbnailBlurSettings;->g:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView;->getAdapter()Landroidx/recyclerview/widget/RecyclerView$h;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/permcenter/privacyblur/PrivacyThumbnailBlurSettings;->g:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView;->getAdapter()Landroidx/recyclerview/widget/RecyclerView$h;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView$h;->notifyDataSetChanged()V

    :cond_0
    iget-object v0, p0, Lcom/miui/permcenter/privacyblur/PrivacyThumbnailBlurSettings;->f:Lmiuix/view/l;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/miui/permcenter/privacyblur/PrivacyThumbnailBlurSettings;->e:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->getItemDecorationAt(I)Landroidx/recyclerview/widget/RecyclerView$m;

    move-result-object v0

    instance-of v1, v0, Lmiuix/recyclerview/card/f;

    if-eqz v1, :cond_1

    int-to-float p1, p1

    sget v1, Ltm/e;->d:I

    mul-int/lit8 v1, v1, 0x3

    int-to-float v1, v1

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v2

    iget v2, v2, Landroid/util/DisplayMetrics;->density:F

    mul-float/2addr v1, v2

    add-float/2addr p1, v1

    float-to-int p1, p1

    check-cast v0, Lmiuix/recyclerview/card/f;

    invoke-virtual {v0, p1}, Lmiuix/recyclerview/card/f;->v(I)V

    invoke-virtual {v0, p1}, Lmiuix/recyclerview/card/f;->u(I)V

    iget-object p1, p0, Lcom/miui/permcenter/privacyblur/PrivacyThumbnailBlurSettings;->e:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView;->getAdapter()Landroidx/recyclerview/widget/RecyclerView$h;

    move-result-object p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/miui/permcenter/privacyblur/PrivacyThumbnailBlurSettings;->e:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView;->getAdapter()Landroidx/recyclerview/widget/RecyclerView$h;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$h;->notifyDataSetChanged()V

    :cond_1
    return-void
.end method

.method public onMultiWindowModeChanged(Z)V
    .locals 0

    invoke-super {p0, p1}, Landroidx/fragment/app/FragmentActivity;->onMultiWindowModeChanged(Z)V

    iget-object p1, p0, Lcom/miui/permcenter/privacyblur/PrivacyThumbnailBlurSettings;->c:Lcom/miui/permcenter/privacyblur/a;

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$h;->notifyDataSetChanged()V

    :cond_0
    return-void
.end method

.method protected onPause()V
    .locals 2

    invoke-super {p0}, Landroidx/fragment/app/FragmentActivity;->onPause()V

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1c

    if-lt v0, v1, :cond_0

    iget-boolean v0, p0, Lcom/miui/permcenter/privacyblur/PrivacyThumbnailBlurSettings;->p:Z

    if-eqz v0, :cond_0

    new-instance v0, Landroid/app/ActivityManager$TaskDescription;

    iget-object v1, p0, Lcom/miui/permcenter/privacyblur/PrivacyThumbnailBlurSettings;->o:Ljava/lang/String;

    invoke-direct {v0, v1}, Landroid/app/ActivityManager$TaskDescription;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Landroid/app/Activity;->setTaskDescription(Landroid/app/ActivityManager$TaskDescription;)V

    :cond_0
    return-void
.end method

.method protected onResume()V
    .locals 2

    invoke-super {p0}, Landroidx/fragment/app/FragmentActivity;->onResume()V

    invoke-direct {p0}, Lcom/miui/permcenter/privacyblur/PrivacyThumbnailBlurSettings;->initData()V

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1c

    if-lt v0, v1, :cond_0

    iget-boolean v0, p0, Lcom/miui/permcenter/privacyblur/PrivacyThumbnailBlurSettings;->p:Z

    if-eqz v0, :cond_0

    :try_start_0
    const-class v0, Landroid/app/Activity;

    const-string v1, "mTaskDescription"

    invoke-static {p0, v0, v1}, Lbh/f;->i(Ljava/lang/Object;Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager$TaskDescription;

    invoke-virtual {v0}, Landroid/app/ActivityManager$TaskDescription;->getLabel()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/permcenter/privacyblur/PrivacyThumbnailBlurSettings;->o:Ljava/lang/String;

    new-instance v0, Landroid/app/ActivityManager$TaskDescription;

    const v1, 0x7f12151e

    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/app/ActivityManager$TaskDescription;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Landroid/app/Activity;->setTaskDescription(Landroid/app/ActivityManager$TaskDescription;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_0
    :goto_0
    return-void
.end method
