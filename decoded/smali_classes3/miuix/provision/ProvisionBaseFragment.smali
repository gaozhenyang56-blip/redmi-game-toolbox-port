.class public Lmiuix/provision/ProvisionBaseFragment;
.super Landroidx/fragment/app/Fragment;
.source "SourceFile"

# interfaces
.implements Lmiuix/provision/a$d;


# instance fields
.field private a:Landroid/view/View;

.field protected b:Landroid/widget/ImageView;

.field private c:Landroid/view/TextureView;

.field private d:Landroid/media/MediaPlayer;

.field private e:I

.field protected f:Landroid/widget/TextView;

.field protected g:Landroid/widget/TextView;

.field protected h:Lmiuix/provision/a;

.field protected i:Z

.field protected j:Landroid/view/View;

.field protected k:Landroid/widget/ImageView;

.field protected l:Landroid/widget/Button;

.field protected m:Landroid/widget/Button;

.field protected n:Landroid/widget/LinearLayout;

.field protected o:Landroid/view/View;

.field private p:Z

.field protected q:Landroid/widget/ImageView;

.field private r:Z

.field protected s:Landroid/view/View$OnClickListener;

.field protected t:Landroid/view/View$OnClickListener;

.field private u:Landroid/view/View$OnClickListener;

.field private v:Landroid/os/Handler;

.field private w:Landroid/view/TextureView$SurfaceTextureListener;


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Landroidx/fragment/app/Fragment;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lmiuix/provision/ProvisionBaseFragment;->e:I

    const/4 v0, 0x1

    iput-boolean v0, p0, Lmiuix/provision/ProvisionBaseFragment;->r:Z

    new-instance v0, Lmiuix/provision/ProvisionBaseFragment$a;

    invoke-direct {v0, p0}, Lmiuix/provision/ProvisionBaseFragment$a;-><init>(Lmiuix/provision/ProvisionBaseFragment;)V

    iput-object v0, p0, Lmiuix/provision/ProvisionBaseFragment;->s:Landroid/view/View$OnClickListener;

    new-instance v0, Lmiuix/provision/ProvisionBaseFragment$b;

    invoke-direct {v0, p0}, Lmiuix/provision/ProvisionBaseFragment$b;-><init>(Lmiuix/provision/ProvisionBaseFragment;)V

    iput-object v0, p0, Lmiuix/provision/ProvisionBaseFragment;->t:Landroid/view/View$OnClickListener;

    new-instance v0, Lmiuix/provision/ProvisionBaseFragment$c;

    invoke-direct {v0, p0}, Lmiuix/provision/ProvisionBaseFragment$c;-><init>(Lmiuix/provision/ProvisionBaseFragment;)V

    iput-object v0, p0, Lmiuix/provision/ProvisionBaseFragment;->u:Landroid/view/View$OnClickListener;

    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lmiuix/provision/ProvisionBaseFragment;->v:Landroid/os/Handler;

    new-instance v0, Lmiuix/provision/ProvisionBaseFragment$g;

    invoke-direct {v0, p0}, Lmiuix/provision/ProvisionBaseFragment$g;-><init>(Lmiuix/provision/ProvisionBaseFragment;)V

    iput-object v0, p0, Lmiuix/provision/ProvisionBaseFragment;->w:Landroid/view/TextureView$SurfaceTextureListener;

    return-void
.end method

.method private A0()V
    .locals 2

    iget-object v0, p0, Lmiuix/provision/ProvisionBaseFragment;->l:Landroid/widget/Button;

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {v0}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    new-instance v1, Lmiuix/provision/ProvisionBaseFragment$d;

    invoke-direct {v1, p0}, Lmiuix/provision/ProvisionBaseFragment$d;-><init>(Lmiuix/provision/ProvisionBaseFragment;)V

    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->addOnWindowFocusChangeListener(Landroid/view/ViewTreeObserver$OnWindowFocusChangeListener;)V

    return-void
.end method

.method static synthetic a0(Lmiuix/provision/ProvisionBaseFragment;)Z
    .locals 0

    iget-boolean p0, p0, Lmiuix/provision/ProvisionBaseFragment;->p:Z

    return p0
.end method

.method static synthetic b0(Lmiuix/provision/ProvisionBaseFragment;)Landroid/os/Handler;
    .locals 0

    iget-object p0, p0, Lmiuix/provision/ProvisionBaseFragment;->v:Landroid/os/Handler;

    return-object p0
.end method

.method static synthetic c0(Lmiuix/provision/ProvisionBaseFragment;)Z
    .locals 0

    iget-boolean p0, p0, Lmiuix/provision/ProvisionBaseFragment;->r:Z

    return p0
.end method

.method static synthetic d0(Lmiuix/provision/ProvisionBaseFragment;Landroid/view/Surface;)V
    .locals 0

    invoke-direct {p0, p1}, Lmiuix/provision/ProvisionBaseFragment;->w0(Landroid/view/Surface;)V

    return-void
.end method

.method static synthetic e0(Lmiuix/provision/ProvisionBaseFragment;)Landroid/view/TextureView;
    .locals 0

    iget-object p0, p0, Lmiuix/provision/ProvisionBaseFragment;->c:Landroid/view/TextureView;

    return-object p0
.end method

.method static synthetic f0(Lmiuix/provision/ProvisionBaseFragment;)Landroid/media/MediaPlayer;
    .locals 0

    iget-object p0, p0, Lmiuix/provision/ProvisionBaseFragment;->d:Landroid/media/MediaPlayer;

    return-object p0
.end method

.method private g0(Landroid/view/View;)V
    .locals 3

    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lbm/f;->g:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v1

    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    invoke-virtual {p1, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method private q0()Z
    .locals 1

    invoke-virtual {p0}, Lmiuix/provision/ProvisionBaseFragment;->k0()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method private w0(Landroid/view/Surface;)V
    .locals 4

    if-eqz p1, :cond_1

    iget-object v0, p0, Lmiuix/provision/ProvisionBaseFragment;->d:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_1

    iget v1, p0, Lmiuix/provision/ProvisionBaseFragment;->e:I

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    :try_start_0
    invoke-virtual {v0}, Landroid/media/MediaPlayer;->reset()V

    iget-object v0, p0, Lmiuix/provision/ProvisionBaseFragment;->d:Landroid/media/MediaPlayer;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "android.resource://"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lmiuix/provision/ProvisionBaseFragment;->e:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/media/MediaPlayer;->setDataSource(Landroid/content/Context;Landroid/net/Uri;)V

    iget-object v0, p0, Lmiuix/provision/ProvisionBaseFragment;->d:Landroid/media/MediaPlayer;

    invoke-virtual {v0, p1}, Landroid/media/MediaPlayer;->setSurface(Landroid/view/Surface;)V

    iget-object p1, p0, Lmiuix/provision/ProvisionBaseFragment;->d:Landroid/media/MediaPlayer;

    new-instance v0, Lmiuix/provision/ProvisionBaseFragment$h;

    invoke-direct {v0, p0}, Lmiuix/provision/ProvisionBaseFragment$h;-><init>(Lmiuix/provision/ProvisionBaseFragment;)V

    invoke-virtual {p1, v0}, Landroid/media/MediaPlayer;->setOnPreparedListener(Landroid/media/MediaPlayer$OnPreparedListener;)V

    iget-object p1, p0, Lmiuix/provision/ProvisionBaseFragment;->d:Landroid/media/MediaPlayer;

    invoke-virtual {p1}, Landroid/media/MediaPlayer;->prepare()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_1
    :goto_0
    return-void
.end method


# virtual methods
.method public I()V
    .locals 1

    invoke-static {}, Lbm/d;->s()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lmiuix/provision/ProvisionBaseFragment;->z0(Z)V

    return-void
.end method

.method public V()V
    .locals 0

    invoke-virtual {p0}, Lmiuix/provision/ProvisionBaseFragment;->v0()V

    return-void
.end method

.method protected h0()I
    .locals 3

    invoke-static {}, Lbm/d;->c()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lbm/f;->c:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lbm/f;->i:I

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lbm/f;->c:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lbm/f;->h:I

    :goto_0
    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    add-int/2addr v0, v1

    iget-object v1, p0, Lmiuix/provision/ProvisionBaseFragment;->j:Landroid/view/View;

    if-nez v1, :cond_1

    return v0

    :cond_1
    iget-object v1, p0, Lmiuix/provision/ProvisionBaseFragment;->n:Landroid/widget/LinearLayout;

    if-eqz v1, :cond_2

    invoke-virtual {v1}, Landroid/view/View;->getHeight()I

    move-result v0

    :cond_2
    return v0
.end method

.method public i0()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public j()V
    .locals 1

    invoke-virtual {p0}, Lmiuix/provision/ProvisionBaseFragment;->t0()V

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/app/Activity;->onBackPressed()V

    :cond_0
    return-void
.end method

.method public j0()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public k0()Z
    .locals 1

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0}, Lbm/d;->q(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    return v0

    :cond_0
    invoke-static {}, Lbm/d;->j()Z

    move-result v0

    return v0
.end method

.method public l0()Z
    .locals 1

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0}, Lbm/d;->q(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    return v0

    :cond_0
    const/4 v0, 0x1

    return v0
.end method

.method public m0()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method protected n0()V
    .locals 0

    return-void
.end method

.method protected o0()Z
    .locals 1

    iget-object v0, p0, Lmiuix/provision/ProvisionBaseFragment;->h:Lmiuix/provision/a;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lmiuix/provision/a;->i()Z

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x1

    return v0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 1
    .param p1    # Landroid/os/Bundle;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    invoke-super {p0, p1}, Landroidx/fragment/app/Fragment;->onCreate(Landroid/os/Bundle;)V

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    invoke-static {p1}, Lbm/c;->d(Landroid/content/Context;)Z

    move-result p1

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    if-eqz p1, :cond_0

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "ProvisionBaseFragment onCreate immersionEnable: "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lmiuix/provision/ProvisionBaseFragment;->p0()Z

    move-result v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "OobeUtil2"

    invoke-static {v0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    invoke-virtual {p0}, Lmiuix/provision/ProvisionBaseFragment;->p0()Z

    move-result v0

    invoke-static {p1, v0}, Lbm/c;->a(Landroid/app/Activity;Z)V

    invoke-virtual {p0}, Lmiuix/provision/ProvisionBaseFragment;->n0()V

    :cond_0
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 4

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0}, Lbm/d;->b(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_f

    sget p2, Lbm/h;->a:I

    const/4 p3, 0x0

    invoke-virtual {p1, p2, p3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lmiuix/provision/ProvisionBaseFragment;->j:Landroid/view/View;

    sget p2, Lbm/g;->b:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    iput-object p1, p0, Lmiuix/provision/ProvisionBaseFragment;->k:Landroid/widget/ImageView;

    iget-object p1, p0, Lmiuix/provision/ProvisionBaseFragment;->j:Landroid/view/View;

    sget p2, Lbm/g;->a:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/Button;

    iput-object p1, p0, Lmiuix/provision/ProvisionBaseFragment;->l:Landroid/widget/Button;

    iget-object p1, p0, Lmiuix/provision/ProvisionBaseFragment;->j:Landroid/view/View;

    sget p2, Lbm/g;->l:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/Button;

    iput-object p1, p0, Lmiuix/provision/ProvisionBaseFragment;->m:Landroid/widget/Button;

    const/4 p1, 0x1

    new-array p2, p1, [Landroid/view/View;

    iget-object p3, p0, Lmiuix/provision/ProvisionBaseFragment;->k:Landroid/widget/ImageView;

    const/4 v0, 0x0

    aput-object p3, p2, v0

    invoke-static {p2}, Lmiuix/animation/Folme;->useAt([Landroid/view/View;)Lmiuix/animation/IFolme;

    move-result-object p2

    invoke-interface {p2}, Lmiuix/animation/IFolme;->touch()Lmiuix/animation/ITouchStyle;

    move-result-object p2

    iget-object p3, p0, Lmiuix/provision/ProvisionBaseFragment;->k:Landroid/widget/ImageView;

    new-array v1, v0, [Lmiuix/animation/base/AnimConfig;

    invoke-interface {p2, p3, v1}, Lmiuix/animation/ITouchStyle;->handleTouchOf(Landroid/view/View;[Lmiuix/animation/base/AnimConfig;)V

    new-array p2, p1, [Landroid/view/View;

    iget-object p3, p0, Lmiuix/provision/ProvisionBaseFragment;->l:Landroid/widget/Button;

    aput-object p3, p2, v0

    invoke-static {p2}, Lmiuix/animation/Folme;->useAt([Landroid/view/View;)Lmiuix/animation/IFolme;

    move-result-object p2

    invoke-interface {p2}, Lmiuix/animation/IFolme;->touch()Lmiuix/animation/ITouchStyle;

    move-result-object p2

    iget-object p3, p0, Lmiuix/provision/ProvisionBaseFragment;->l:Landroid/widget/Button;

    new-array v1, v0, [Lmiuix/animation/base/AnimConfig;

    invoke-interface {p2, p3, v1}, Lmiuix/animation/ITouchStyle;->handleTouchOf(Landroid/view/View;[Lmiuix/animation/base/AnimConfig;)V

    new-array p1, p1, [Landroid/view/View;

    iget-object p2, p0, Lmiuix/provision/ProvisionBaseFragment;->m:Landroid/widget/Button;

    aput-object p2, p1, v0

    invoke-static {p1}, Lmiuix/animation/Folme;->useAt([Landroid/view/View;)Lmiuix/animation/IFolme;

    move-result-object p1

    invoke-interface {p1}, Lmiuix/animation/IFolme;->touch()Lmiuix/animation/ITouchStyle;

    move-result-object p1

    iget-object p2, p0, Lmiuix/provision/ProvisionBaseFragment;->m:Landroid/widget/Button;

    new-array p3, v0, [Lmiuix/animation/base/AnimConfig;

    invoke-interface {p1, p2, p3}, Lmiuix/animation/ITouchStyle;->handleTouchOf(Landroid/view/View;[Lmiuix/animation/base/AnimConfig;)V

    invoke-virtual {p0}, Lmiuix/provision/ProvisionBaseFragment;->x0()Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lmiuix/provision/ProvisionBaseFragment;->k:Landroid/widget/ImageView;

    iget-object p2, p0, Lmiuix/provision/ProvisionBaseFragment;->t:Landroid/view/View$OnClickListener;

    invoke-virtual {p1, p2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object p1, p0, Lmiuix/provision/ProvisionBaseFragment;->l:Landroid/widget/Button;

    iget-object p2, p0, Lmiuix/provision/ProvisionBaseFragment;->s:Landroid/view/View$OnClickListener;

    invoke-virtual {p1, p2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object p1, p0, Lmiuix/provision/ProvisionBaseFragment;->m:Landroid/widget/Button;

    iget-object p2, p0, Lmiuix/provision/ProvisionBaseFragment;->u:Landroid/view/View$OnClickListener;

    invoke-virtual {p1, p2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_0
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, " current density is "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p2, p0, Lmiuix/provision/ProvisionBaseFragment;->k:Landroid/widget/ImageView;

    invoke-virtual {p2}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    invoke-virtual {p2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p2

    iget p2, p2, Landroid/util/DisplayMetrics;->density:F

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "OobeUtil2"

    invoke-static {p2, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p1, p0, Lmiuix/provision/ProvisionBaseFragment;->j:Landroid/view/View;

    sget p3, Lbm/g;->h:I

    invoke-virtual {p1, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    iput-object p1, p0, Lmiuix/provision/ProvisionBaseFragment;->b:Landroid/widget/ImageView;

    iget-object p1, p0, Lmiuix/provision/ProvisionBaseFragment;->j:Landroid/view/View;

    sget p3, Lbm/g;->m:I

    invoke-virtual {p1, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/view/TextureView;

    iput-object p1, p0, Lmiuix/provision/ProvisionBaseFragment;->c:Landroid/view/TextureView;

    iget-object p1, p0, Lmiuix/provision/ProvisionBaseFragment;->j:Landroid/view/View;

    sget p3, Lbm/g;->i:I

    invoke-virtual {p1, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lmiuix/provision/ProvisionBaseFragment;->g:Landroid/widget/TextView;

    iget-object p1, p0, Lmiuix/provision/ProvisionBaseFragment;->j:Landroid/view/View;

    sget p3, Lbm/g;->k:I

    invoke-virtual {p1, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lmiuix/provision/ProvisionBaseFragment;->a:Landroid/view/View;

    iget-object p1, p0, Lmiuix/provision/ProvisionBaseFragment;->j:Landroid/view/View;

    sget p3, Lbm/g;->j:I

    invoke-virtual {p1, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lmiuix/provision/ProvisionBaseFragment;->f:Landroid/widget/TextView;

    new-instance p1, Landroid/media/MediaPlayer;

    invoke-direct {p1}, Landroid/media/MediaPlayer;-><init>()V

    iput-object p1, p0, Lmiuix/provision/ProvisionBaseFragment;->d:Landroid/media/MediaPlayer;

    invoke-virtual {p0}, Lmiuix/provision/ProvisionBaseFragment;->j0()Z

    move-result p1

    if-eqz p1, :cond_1

    invoke-static {}, Lbm/d;->m()Z

    move-result p1

    if-nez p1, :cond_1

    iget-object p1, p0, Lmiuix/provision/ProvisionBaseFragment;->c:Landroid/view/TextureView;

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    iget-object p1, p0, Lmiuix/provision/ProvisionBaseFragment;->c:Landroid/view/TextureView;

    iget-object p3, p0, Lmiuix/provision/ProvisionBaseFragment;->w:Landroid/view/TextureView$SurfaceTextureListener;

    invoke-virtual {p1, p3}, Landroid/view/TextureView;->setSurfaceTextureListener(Landroid/view/TextureView$SurfaceTextureListener;)V

    :cond_1
    const-string p1, "mipro-regular"

    invoke-static {p1, v0}, Landroid/graphics/Typeface;->create(Ljava/lang/String;I)Landroid/graphics/Typeface;

    move-result-object p1

    iget-object p3, p0, Lmiuix/provision/ProvisionBaseFragment;->f:Landroid/widget/TextView;

    invoke-virtual {p3, p1}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    invoke-static {}, Lbm/d;->p()Z

    move-result p1

    if-eqz p1, :cond_2

    iget-object p1, p0, Lmiuix/provision/ProvisionBaseFragment;->f:Landroid/widget/TextView;

    const/16 p3, 0x51

    goto :goto_0

    :cond_2
    iget-object p1, p0, Lmiuix/provision/ProvisionBaseFragment;->f:Landroid/widget/TextView;

    const/16 p3, 0x11

    :goto_0
    invoke-virtual {p1, p3}, Landroid/widget/TextView;->setGravity(I)V

    iget-object p1, p0, Lmiuix/provision/ProvisionBaseFragment;->j:Landroid/view/View;

    sget p3, Lbm/g;->g:I

    invoke-virtual {p1, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/LinearLayout;

    iput-object p1, p0, Lmiuix/provision/ProvisionBaseFragment;->n:Landroid/widget/LinearLayout;

    iget-object p1, p0, Lmiuix/provision/ProvisionBaseFragment;->j:Landroid/view/View;

    sget p3, Lbm/g;->d:I

    invoke-virtual {p1, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lmiuix/provision/ProvisionBaseFragment;->o:Landroid/view/View;

    invoke-static {}, Lbm/d;->c()Z

    move-result p1

    if-nez p1, :cond_3

    iget-object p1, p0, Lmiuix/provision/ProvisionBaseFragment;->n:Landroid/widget/LinearLayout;

    invoke-virtual {p1}, Landroid/view/View;->getPaddingLeft()I

    move-result p3

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lbm/f;->i:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v1

    iget-object v2, p0, Lmiuix/provision/ProvisionBaseFragment;->n:Landroid/widget/LinearLayout;

    invoke-virtual {v2}, Landroid/view/View;->getPaddingRight()I

    move-result v2

    iget-object v3, p0, Lmiuix/provision/ProvisionBaseFragment;->n:Landroid/widget/LinearLayout;

    invoke-virtual {v3}, Landroid/view/View;->getPaddingBottom()I

    move-result v3

    invoke-virtual {p1, p3, v1, v2, v3}, Landroid/view/View;->setPadding(IIII)V

    :cond_3
    invoke-static {}, Lbm/d;->j()Z

    move-result p1

    if-nez p1, :cond_4

    iget-object p1, p0, Lmiuix/provision/ProvisionBaseFragment;->n:Landroid/widget/LinearLayout;

    if-eqz p1, :cond_4

    const p3, 0x800003

    invoke-virtual {p1, p3}, Landroid/widget/LinearLayout;->setGravity(I)V

    :cond_4
    sget-object p1, Lbm/d;->a:Ljava/lang/String;

    const-string p3, "goku"

    invoke-virtual {p3, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_5

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    invoke-static {p1}, Lbm/d;->i(Landroid/content/Context;)Z

    move-result p1

    if-eqz p1, :cond_5

    const-string p1, " goku adapt"

    invoke-static {p2, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p1, p0, Lmiuix/provision/ProvisionBaseFragment;->n:Landroid/widget/LinearLayout;

    invoke-virtual {p1}, Landroid/view/View;->getPaddingStart()I

    move-result p2

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object p3

    sget v1, Lbm/f;->b:I

    invoke-virtual {p3, v1}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result p3

    iget-object v1, p0, Lmiuix/provision/ProvisionBaseFragment;->n:Landroid/widget/LinearLayout;

    invoke-virtual {v1}, Landroid/view/View;->getPaddingEnd()I

    move-result v1

    iget-object v2, p0, Lmiuix/provision/ProvisionBaseFragment;->n:Landroid/widget/LinearLayout;

    invoke-virtual {v2}, Landroid/view/View;->getPaddingBottom()I

    move-result v2

    invoke-virtual {p1, p2, p3, v1, v2}, Landroid/view/View;->setPaddingRelative(IIII)V

    iget-object p1, p0, Lmiuix/provision/ProvisionBaseFragment;->j:Landroid/view/View;

    sget p2, Lbm/g;->f:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p2

    check-cast p2, Landroid/view/ViewGroup$MarginLayoutParams;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object p3

    sget v1, Lbm/f;->f:I

    invoke-virtual {p3, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p3

    iput p3, p2, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    invoke-virtual {p1, p2}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object p1, p0, Lmiuix/provision/ProvisionBaseFragment;->l:Landroid/widget/Button;

    invoke-direct {p0, p1}, Lmiuix/provision/ProvisionBaseFragment;->g0(Landroid/view/View;)V

    iget-object p1, p0, Lmiuix/provision/ProvisionBaseFragment;->m:Landroid/widget/Button;

    invoke-direct {p0, p1}, Lmiuix/provision/ProvisionBaseFragment;->g0(Landroid/view/View;)V

    :cond_5
    invoke-virtual {p0}, Lmiuix/provision/ProvisionBaseFragment;->k0()Z

    move-result p1

    iput-boolean p1, p0, Lmiuix/provision/ProvisionBaseFragment;->i:Z

    iget-object p1, p0, Lmiuix/provision/ProvisionBaseFragment;->j:Landroid/view/View;

    sget p2, Lbm/g;->c:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    iput-object p1, p0, Lmiuix/provision/ProvisionBaseFragment;->q:Landroid/widget/ImageView;

    iget-boolean p2, p0, Lmiuix/provision/ProvisionBaseFragment;->i:Z

    const/16 p3, 0x8

    if-nez p2, :cond_7

    invoke-virtual {p1, p3}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object p1, p0, Lmiuix/provision/ProvisionBaseFragment;->o:Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    check-cast p1, Landroid/widget/LinearLayout$LayoutParams;

    invoke-virtual {p1, v0, v0, v0, v0}, Landroid/view/ViewGroup$MarginLayoutParams;->setMargins(IIII)V

    iget-object p2, p0, Lmiuix/provision/ProvisionBaseFragment;->o:Landroid/view/View;

    invoke-virtual {p2, p1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    invoke-virtual {p0}, Lmiuix/provision/ProvisionBaseFragment;->l0()Z

    move-result p1

    if-eqz p1, :cond_6

    iget-object p1, p0, Lmiuix/provision/ProvisionBaseFragment;->a:Landroid/view/View;

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    iget-object p1, p0, Lmiuix/provision/ProvisionBaseFragment;->g:Landroid/widget/TextView;

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    iget-object p1, p0, Lmiuix/provision/ProvisionBaseFragment;->n:Landroid/widget/LinearLayout;

    invoke-virtual {p1}, Landroid/view/View;->getPaddingStart()I

    move-result p2

    iget-object v1, p0, Lmiuix/provision/ProvisionBaseFragment;->n:Landroid/widget/LinearLayout;

    invoke-virtual {v1}, Landroid/view/View;->getPaddingEnd()I

    move-result v1

    invoke-virtual {p1, p2, v0, v1, v0}, Landroid/view/View;->setPaddingRelative(IIII)V

    goto :goto_1

    :cond_6
    iget-object p1, p0, Lmiuix/provision/ProvisionBaseFragment;->n:Landroid/widget/LinearLayout;

    invoke-virtual {p1}, Landroid/view/View;->getPaddingStart()I

    move-result p2

    iget-object v1, p0, Lmiuix/provision/ProvisionBaseFragment;->n:Landroid/widget/LinearLayout;

    invoke-virtual {v1}, Landroid/view/View;->getPaddingEnd()I

    move-result v1

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lbm/f;->a:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v2

    invoke-virtual {p1, p2, v0, v1, v2}, Landroid/view/View;->setPaddingRelative(IIII)V

    :cond_7
    :goto_1
    sget-boolean p1, Lmiui/os/Build;->IS_INTERNATIONAL_BUILD:Z

    if-eqz p1, :cond_8

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object p1

    invoke-static {p1}, Lbm/d;->a(Landroid/view/Window;)V

    iget-object p1, p0, Lmiuix/provision/ProvisionBaseFragment;->j:Landroid/view/View;

    sget p2, Lbm/g;->f:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p2

    check-cast p2, Landroid/view/ViewGroup$MarginLayoutParams;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lbm/f;->e:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p2, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    invoke-virtual {p1, p2}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :cond_8
    invoke-virtual {p0}, Lmiuix/provision/ProvisionBaseFragment;->i0()Z

    move-result p1

    iget-object p2, p0, Lmiuix/provision/ProvisionBaseFragment;->j:Landroid/view/View;

    sget v1, Lbm/g;->f:I

    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    if-eqz p2, :cond_a

    if-eqz p1, :cond_9

    move p1, v0

    goto :goto_2

    :cond_9
    move p1, p3

    :goto_2
    invoke-virtual {p2, p1}, Landroid/view/View;->setVisibility(I)V

    :cond_a
    invoke-virtual {p0}, Lmiuix/provision/ProvisionBaseFragment;->m0()Z

    move-result p1

    iget-object p2, p0, Lmiuix/provision/ProvisionBaseFragment;->n:Landroid/widget/LinearLayout;

    if-eqz p2, :cond_c

    if-eqz p1, :cond_b

    move p3, v0

    :cond_b
    invoke-virtual {p2, p3}, Landroid/view/View;->setVisibility(I)V

    :cond_c
    invoke-static {}, Lbm/d;->s()Z

    move-result p1

    if-eqz p1, :cond_e

    invoke-virtual {p0}, Lmiuix/provision/ProvisionBaseFragment;->r0()Z

    move-result p1

    const-wide/16 p2, 0x258

    if-eqz p1, :cond_d

    invoke-virtual {p0, v0}, Lmiuix/provision/ProvisionBaseFragment;->z0(Z)V

    iget-object p1, p0, Lmiuix/provision/ProvisionBaseFragment;->v:Landroid/os/Handler;

    new-instance v0, Lmiuix/provision/ProvisionBaseFragment$e;

    invoke-direct {v0, p0}, Lmiuix/provision/ProvisionBaseFragment$e;-><init>(Lmiuix/provision/ProvisionBaseFragment;)V

    goto :goto_3

    :cond_d
    invoke-virtual {p0, v0}, Lmiuix/provision/ProvisionBaseFragment;->y0(Z)V

    iget-object p1, p0, Lmiuix/provision/ProvisionBaseFragment;->v:Landroid/os/Handler;

    new-instance v0, Lmiuix/provision/ProvisionBaseFragment$f;

    invoke-direct {v0, p0}, Lmiuix/provision/ProvisionBaseFragment$f;-><init>(Lmiuix/provision/ProvisionBaseFragment;)V

    :goto_3
    invoke-virtual {p1, v0, p2, p3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_e
    invoke-direct {p0}, Lmiuix/provision/ProvisionBaseFragment;->A0()V

    iget-object p1, p0, Lmiuix/provision/ProvisionBaseFragment;->j:Landroid/view/View;

    return-object p1

    :cond_f
    invoke-super {p0, p1, p2, p3}, Landroidx/fragment/app/Fragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;

    move-result-object p1

    return-object p1
.end method

.method public onDestroy()V
    .locals 2

    invoke-super {p0}, Landroidx/fragment/app/Fragment;->onDestroy()V

    iget-object v0, p0, Lmiuix/provision/ProvisionBaseFragment;->q:Landroid/widget/ImageView;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    :cond_0
    return-void
.end method

.method public onResume()V
    .locals 2

    invoke-super {p0}, Landroidx/fragment/app/Fragment;->onResume()V

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0}, Lbm/c;->d(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ProvisionBaseFragment onResume immersionEnable: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lmiuix/provision/ProvisionBaseFragment;->p0()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "OobeUtil2"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {p0}, Lmiuix/provision/ProvisionBaseFragment;->p0()Z

    move-result v1

    invoke-static {v0, v1}, Lbm/c;->a(Landroid/app/Activity;Z)V

    :cond_0
    return-void
.end method

.method public onStart()V
    .locals 3
    .annotation build Landroidx/annotation/RequiresApi;
        api = 0x1a
    .end annotation

    invoke-super {p0}, Landroidx/fragment/app/Fragment;->onStart()V

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    iget-boolean v1, p0, Lmiuix/provision/ProvisionBaseFragment;->i:Z

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    invoke-static {v1}, Lbm/d;->b(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_0

    if-eqz v0, :cond_0

    new-instance v1, Lmiuix/provision/a;

    iget-object v2, p0, Lmiuix/provision/ProvisionBaseFragment;->v:Landroid/os/Handler;

    invoke-direct {v1, v0, v2}, Lmiuix/provision/a;-><init>(Landroid/content/Context;Landroid/os/Handler;)V

    iput-object v1, p0, Lmiuix/provision/ProvisionBaseFragment;->h:Lmiuix/provision/a;

    invoke-virtual {v1}, Lmiuix/provision/a;->j()V

    iget-object v0, p0, Lmiuix/provision/ProvisionBaseFragment;->h:Lmiuix/provision/a;

    invoke-virtual {v0, p0}, Lmiuix/provision/a;->k(Lmiuix/provision/a$d;)V

    iget-object v0, p0, Lmiuix/provision/ProvisionBaseFragment;->h:Lmiuix/provision/a;

    invoke-virtual {p0}, Lmiuix/provision/ProvisionBaseFragment;->h0()I

    move-result v1

    invoke-virtual {v0, v1}, Lmiuix/provision/a;->l(I)V

    iget-object v0, p0, Lmiuix/provision/ProvisionBaseFragment;->j:Landroid/view/View;

    if-eqz v0, :cond_0

    sget v1, Lbm/g;->e:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lmiuix/provision/CustomDispatchFrameLayout;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lmiuix/provision/ProvisionBaseFragment;->h:Lmiuix/provision/a;

    invoke-virtual {v0, v1}, Lmiuix/provision/CustomDispatchFrameLayout;->setProvisionAnimHelper(Lmiuix/provision/a;)V

    :cond_0
    return-void
.end method

.method public onStop()V
    .locals 2

    invoke-super {p0}, Landroidx/fragment/app/Fragment;->onStop()V

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    iget-object v1, p0, Lmiuix/provision/ProvisionBaseFragment;->h:Lmiuix/provision/a;

    if-eqz v1, :cond_0

    iget-boolean v1, p0, Lmiuix/provision/ProvisionBaseFragment;->i:Z

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    invoke-static {v1}, Lbm/d;->b(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lmiuix/provision/ProvisionBaseFragment;->h:Lmiuix/provision/a;

    invoke-virtual {v0}, Lmiuix/provision/a;->m()V

    const/4 v0, 0x0

    iput-object v0, p0, Lmiuix/provision/ProvisionBaseFragment;->h:Lmiuix/provision/a;

    :cond_0
    return-void
.end method

.method protected p0()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public r0()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public s0()V
    .locals 0

    return-void
.end method

.method protected t0()V
    .locals 0

    return-void
.end method

.method protected u0()V
    .locals 0

    return-void
.end method

.method public v()V
    .locals 1

    invoke-static {}, Lbm/d;->s()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0}, Lmiuix/provision/ProvisionBaseFragment;->o0()Z

    move-result v0

    if-nez v0, :cond_1

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lmiuix/provision/ProvisionBaseFragment;->z0(Z)V

    :cond_1
    return-void
.end method

.method protected v0()V
    .locals 0

    return-void
.end method

.method public x0()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public y()V
    .locals 0

    invoke-virtual {p0}, Lmiuix/provision/ProvisionBaseFragment;->u0()V

    return-void
.end method

.method public y0(Z)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " updateBackButtonState and enabled is "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "OobeUtil2"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0}, Lbm/d;->q(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lmiuix/provision/ProvisionBaseFragment;->k:Landroid/widget/ImageView;

    if-eqz v0, :cond_3

    if-eqz p1, :cond_1

    const/high16 v1, 0x3f800000    # 1.0f

    goto :goto_0

    :cond_1
    const/high16 v1, 0x3f000000    # 0.5f

    :goto_0
    invoke-virtual {v0, v1}, Landroid/view/View;->setAlpha(F)V

    invoke-static {}, Lbm/d;->s()Z

    move-result v0

    if-nez v0, :cond_2

    invoke-direct {p0}, Lmiuix/provision/ProvisionBaseFragment;->q0()Z

    move-result v0

    if-eqz v0, :cond_3

    :cond_2
    iput-boolean p1, p0, Lmiuix/provision/ProvisionBaseFragment;->r:Z

    :cond_3
    return-void
.end method

.method protected z0(Z)V
    .locals 4

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " updateButtonState and enabled is "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "OobeUtil2"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0}, Lbm/d;->q(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lmiuix/provision/ProvisionBaseFragment;->k:Landroid/widget/ImageView;

    if-eqz v0, :cond_4

    iget-object v1, p0, Lmiuix/provision/ProvisionBaseFragment;->l:Landroid/widget/Button;

    if-eqz v1, :cond_4

    iget-object v1, p0, Lmiuix/provision/ProvisionBaseFragment;->m:Landroid/widget/Button;

    if-eqz v1, :cond_4

    const/high16 v1, 0x3f800000    # 1.0f

    const/high16 v2, 0x3f000000    # 0.5f

    if-eqz p1, :cond_1

    move v3, v1

    goto :goto_0

    :cond_1
    move v3, v2

    :goto_0
    invoke-virtual {v0, v3}, Landroid/view/View;->setAlpha(F)V

    iget-object v0, p0, Lmiuix/provision/ProvisionBaseFragment;->l:Landroid/widget/Button;

    if-eqz p1, :cond_2

    move v3, v1

    goto :goto_1

    :cond_2
    move v3, v2

    :goto_1
    invoke-virtual {v0, v3}, Landroid/view/View;->setAlpha(F)V

    iget-object v0, p0, Lmiuix/provision/ProvisionBaseFragment;->m:Landroid/widget/Button;

    if-eqz p1, :cond_3

    goto :goto_2

    :cond_3
    move v1, v2

    :goto_2
    invoke-virtual {v0, v1}, Landroid/view/View;->setAlpha(F)V

    invoke-static {}, Lbm/d;->s()Z

    move-result v0

    if-eqz v0, :cond_4

    iput-boolean p1, p0, Lmiuix/provision/ProvisionBaseFragment;->r:Z

    iget-object v0, p0, Lmiuix/provision/ProvisionBaseFragment;->l:Landroid/widget/Button;

    invoke-virtual {v0, p1}, Landroid/view/View;->setEnabled(Z)V

    iget-object v0, p0, Lmiuix/provision/ProvisionBaseFragment;->m:Landroid/widget/Button;

    invoke-virtual {v0, p1}, Landroid/view/View;->setEnabled(Z)V

    :cond_4
    return-void
.end method
