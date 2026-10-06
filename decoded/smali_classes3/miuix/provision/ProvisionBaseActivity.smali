.class public Lmiuix/provision/ProvisionBaseActivity;
.super Lmiuix/appcompat/app/AppCompatActivity;
.source "SourceFile"

# interfaces
.implements Lmiuix/provision/a$d;


# static fields
.field private static A:F = 1.0f

.field private static z:F = 0.5f


# instance fields
.field private a:Landroid/view/View;

.field protected b:Landroid/widget/ImageView;

.field private c:Landroid/view/TextureView;

.field private d:Landroid/media/MediaPlayer;

.field private e:I

.field protected f:Landroid/widget/TextView;

.field protected g:Landroid/view/View;

.field protected h:Landroid/view/View;

.field protected i:Landroid/widget/TextView;

.field protected j:Landroid/widget/TextView;

.field protected k:Landroid/widget/ImageView;

.field protected l:Landroid/widget/Button;

.field protected m:Landroid/widget/Button;

.field protected n:Landroid/widget/ImageView;

.field protected o:Lmiuix/provision/a;

.field private p:Z

.field private q:Z

.field private r:Z

.field private s:Z

.field private t:Landroid/view/View$OnClickListener;

.field private u:Landroid/view/View$OnClickListener;

.field private v:Landroid/view/View$OnClickListener;

.field private w:Landroid/os/Handler;

.field private x:Landroid/view/TextureView$SurfaceTextureListener;

.field private y:Landroid/view/accessibility/AccessibilityManager$TouchExplorationStateChangeListener;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lmiuix/appcompat/app/AppCompatActivity;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lmiuix/provision/ProvisionBaseActivity;->e:I

    const/4 v0, 0x1

    iput-boolean v0, p0, Lmiuix/provision/ProvisionBaseActivity;->s:Z

    new-instance v0, Lmiuix/provision/ProvisionBaseActivity$a;

    invoke-direct {v0, p0}, Lmiuix/provision/ProvisionBaseActivity$a;-><init>(Lmiuix/provision/ProvisionBaseActivity;)V

    iput-object v0, p0, Lmiuix/provision/ProvisionBaseActivity;->t:Landroid/view/View$OnClickListener;

    new-instance v0, Lmiuix/provision/ProvisionBaseActivity$b;

    invoke-direct {v0, p0}, Lmiuix/provision/ProvisionBaseActivity$b;-><init>(Lmiuix/provision/ProvisionBaseActivity;)V

    iput-object v0, p0, Lmiuix/provision/ProvisionBaseActivity;->u:Landroid/view/View$OnClickListener;

    new-instance v0, Lmiuix/provision/ProvisionBaseActivity$c;

    invoke-direct {v0, p0}, Lmiuix/provision/ProvisionBaseActivity$c;-><init>(Lmiuix/provision/ProvisionBaseActivity;)V

    iput-object v0, p0, Lmiuix/provision/ProvisionBaseActivity;->v:Landroid/view/View$OnClickListener;

    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lmiuix/provision/ProvisionBaseActivity;->w:Landroid/os/Handler;

    new-instance v0, Lmiuix/provision/ProvisionBaseActivity$f;

    invoke-direct {v0, p0}, Lmiuix/provision/ProvisionBaseActivity$f;-><init>(Lmiuix/provision/ProvisionBaseActivity;)V

    iput-object v0, p0, Lmiuix/provision/ProvisionBaseActivity;->x:Landroid/view/TextureView$SurfaceTextureListener;

    return-void
.end method

.method private A0(Landroid/view/Surface;)V
    .locals 3

    if-eqz p1, :cond_1

    iget-object v0, p0, Lmiuix/provision/ProvisionBaseActivity;->d:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_1

    iget v1, p0, Lmiuix/provision/ProvisionBaseActivity;->e:I

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    :try_start_0
    invoke-virtual {v0}, Landroid/media/MediaPlayer;->reset()V

    iget-object v0, p0, Lmiuix/provision/ProvisionBaseActivity;->d:Landroid/media/MediaPlayer;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "android.resource://"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lmiuix/provision/ProvisionBaseActivity;->e:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, p0, v1}, Landroid/media/MediaPlayer;->setDataSource(Landroid/content/Context;Landroid/net/Uri;)V

    iget-object v0, p0, Lmiuix/provision/ProvisionBaseActivity;->d:Landroid/media/MediaPlayer;

    invoke-virtual {v0, p1}, Landroid/media/MediaPlayer;->setSurface(Landroid/view/Surface;)V

    iget-object p1, p0, Lmiuix/provision/ProvisionBaseActivity;->d:Landroid/media/MediaPlayer;

    new-instance v0, Lmiuix/provision/ProvisionBaseActivity$g;

    invoke-direct {v0, p0}, Lmiuix/provision/ProvisionBaseActivity$g;-><init>(Lmiuix/provision/ProvisionBaseActivity;)V

    invoke-virtual {p1, v0}, Landroid/media/MediaPlayer;->setOnPreparedListener(Landroid/media/MediaPlayer$OnPreparedListener;)V

    iget-object p1, p0, Lmiuix/provision/ProvisionBaseActivity;->d:Landroid/media/MediaPlayer;

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

.method private B0(Landroid/content/Context;)V
    .locals 1

    invoke-static {}, Lbm/d;->m()Z

    move-result v0

    if-nez v0, :cond_1

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lmiuix/provision/ProvisionBaseActivity;->y:Landroid/view/accessibility/AccessibilityManager$TouchExplorationStateChangeListener;

    if-nez v0, :cond_1

    const-string v0, "accessibility"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/view/accessibility/AccessibilityManager;

    new-instance v0, Lmiuix/provision/ProvisionBaseActivity$h;

    invoke-direct {v0, p0}, Lmiuix/provision/ProvisionBaseActivity$h;-><init>(Lmiuix/provision/ProvisionBaseActivity;)V

    iput-object v0, p0, Lmiuix/provision/ProvisionBaseActivity;->y:Landroid/view/accessibility/AccessibilityManager$TouchExplorationStateChangeListener;

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityManager;->addTouchExplorationStateChangeListener(Landroid/view/accessibility/AccessibilityManager$TouchExplorationStateChangeListener;)Z

    :cond_1
    :goto_0
    return-void
.end method

.method private E0(Landroid/content/Context;)V
    .locals 1

    invoke-static {}, Lbm/d;->m()Z

    move-result v0

    if-nez v0, :cond_1

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lmiuix/provision/ProvisionBaseActivity;->y:Landroid/view/accessibility/AccessibilityManager$TouchExplorationStateChangeListener;

    if-eqz v0, :cond_1

    const-string v0, "accessibility"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/view/accessibility/AccessibilityManager;

    iget-object v0, p0, Lmiuix/provision/ProvisionBaseActivity;->y:Landroid/view/accessibility/AccessibilityManager$TouchExplorationStateChangeListener;

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityManager;->removeTouchExplorationStateChangeListener(Landroid/view/accessibility/AccessibilityManager$TouchExplorationStateChangeListener;)Z

    const/4 p1, 0x0

    iput-object p1, p0, Lmiuix/provision/ProvisionBaseActivity;->y:Landroid/view/accessibility/AccessibilityManager$TouchExplorationStateChangeListener;

    :cond_1
    :goto_0
    return-void
.end method

.method static synthetic c0(Lmiuix/provision/ProvisionBaseActivity;)Z
    .locals 0

    iget-boolean p0, p0, Lmiuix/provision/ProvisionBaseActivity;->r:Z

    return p0
.end method

.method static synthetic d0(Lmiuix/provision/ProvisionBaseActivity;)Landroid/os/Handler;
    .locals 0

    iget-object p0, p0, Lmiuix/provision/ProvisionBaseActivity;->w:Landroid/os/Handler;

    return-object p0
.end method

.method static synthetic e0(Lmiuix/provision/ProvisionBaseActivity;)Z
    .locals 0

    iget-boolean p0, p0, Lmiuix/provision/ProvisionBaseActivity;->s:Z

    return p0
.end method

.method static synthetic f0(Lmiuix/provision/ProvisionBaseActivity;Landroid/view/Surface;)V
    .locals 0

    invoke-direct {p0, p1}, Lmiuix/provision/ProvisionBaseActivity;->A0(Landroid/view/Surface;)V

    return-void
.end method

.method static synthetic g0(Lmiuix/provision/ProvisionBaseActivity;)Landroid/view/TextureView;
    .locals 0

    iget-object p0, p0, Lmiuix/provision/ProvisionBaseActivity;->c:Landroid/view/TextureView;

    return-object p0
.end method

.method static synthetic h0(Lmiuix/provision/ProvisionBaseActivity;)Landroid/media/MediaPlayer;
    .locals 0

    iget-object p0, p0, Lmiuix/provision/ProvisionBaseActivity;->d:Landroid/media/MediaPlayer;

    return-object p0
.end method

.method private i0(Landroid/view/View;)V
    .locals 3

    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lbm/f;->g:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v1

    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    invoke-virtual {p1, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method private u0()Z
    .locals 1

    invoke-virtual {p0}, Lmiuix/provision/ProvisionBaseActivity;->n0()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method


# virtual methods
.method protected C0(Landroid/graphics/drawable/Drawable;)V
    .locals 1

    iget-object v0, p0, Lmiuix/provision/ProvisionBaseActivity;->n:Landroid/widget/ImageView;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    :cond_0
    return-void
.end method

.method public D0()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public F0(Z)V
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

    invoke-static {p0}, Lbm/d;->q(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lmiuix/provision/ProvisionBaseActivity;->k:Landroid/widget/ImageView;

    if-eqz v0, :cond_3

    if-eqz p1, :cond_1

    sget v1, Lmiuix/provision/ProvisionBaseActivity;->A:F

    goto :goto_0

    :cond_1
    sget v1, Lmiuix/provision/ProvisionBaseActivity;->z:F

    :goto_0
    invoke-virtual {v0, v1}, Landroid/view/View;->setAlpha(F)V

    invoke-static {}, Lbm/d;->s()Z

    move-result v0

    if-nez v0, :cond_2

    invoke-direct {p0}, Lmiuix/provision/ProvisionBaseActivity;->u0()Z

    move-result v0

    if-eqz v0, :cond_3

    :cond_2
    iput-boolean p1, p0, Lmiuix/provision/ProvisionBaseActivity;->s:Z

    :cond_3
    return-void
.end method

.method public G0(Z)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " updateButtonState and enabled is "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "OobeUtil2"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {p0}, Lbm/d;->q(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lmiuix/provision/ProvisionBaseActivity;->k:Landroid/widget/ImageView;

    if-eqz v0, :cond_5

    iget-object v1, p0, Lmiuix/provision/ProvisionBaseActivity;->l:Landroid/widget/Button;

    if-eqz v1, :cond_5

    iget-object v1, p0, Lmiuix/provision/ProvisionBaseActivity;->m:Landroid/widget/Button;

    if-eqz v1, :cond_5

    if-eqz p1, :cond_1

    sget v1, Lmiuix/provision/ProvisionBaseActivity;->A:F

    goto :goto_0

    :cond_1
    sget v1, Lmiuix/provision/ProvisionBaseActivity;->z:F

    :goto_0
    invoke-virtual {v0, v1}, Landroid/view/View;->setAlpha(F)V

    iget-object v0, p0, Lmiuix/provision/ProvisionBaseActivity;->l:Landroid/widget/Button;

    if-eqz p1, :cond_2

    sget v1, Lmiuix/provision/ProvisionBaseActivity;->A:F

    goto :goto_1

    :cond_2
    sget v1, Lmiuix/provision/ProvisionBaseActivity;->z:F

    :goto_1
    invoke-virtual {v0, v1}, Landroid/view/View;->setAlpha(F)V

    iget-object v0, p0, Lmiuix/provision/ProvisionBaseActivity;->m:Landroid/widget/Button;

    if-eqz p1, :cond_3

    sget v1, Lmiuix/provision/ProvisionBaseActivity;->A:F

    goto :goto_2

    :cond_3
    sget v1, Lmiuix/provision/ProvisionBaseActivity;->z:F

    :goto_2
    invoke-virtual {v0, v1}, Landroid/view/View;->setAlpha(F)V

    invoke-static {}, Lbm/d;->s()Z

    move-result v0

    if-nez v0, :cond_4

    invoke-direct {p0}, Lmiuix/provision/ProvisionBaseActivity;->u0()Z

    move-result v0

    if-eqz v0, :cond_5

    :cond_4
    iput-boolean p1, p0, Lmiuix/provision/ProvisionBaseActivity;->s:Z

    iget-object v0, p0, Lmiuix/provision/ProvisionBaseActivity;->l:Landroid/widget/Button;

    invoke-virtual {v0, p1}, Landroid/view/View;->setEnabled(Z)V

    iget-object v0, p0, Lmiuix/provision/ProvisionBaseActivity;->m:Landroid/widget/Button;

    invoke-virtual {v0, p1}, Landroid/view/View;->setEnabled(Z)V

    :cond_5
    return-void
.end method

.method public I()V
    .locals 1

    invoke-static {}, Lbm/d;->s()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lmiuix/provision/ProvisionBaseActivity;->G0(Z)V

    return-void
.end method

.method public V()V
    .locals 0

    invoke-virtual {p0}, Lmiuix/provision/ProvisionBaseActivity;->z0()V

    return-void
.end method

.method public dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1

    invoke-static {}, Lbm/d;->s()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-super {p0, p1}, Landroid/app/Activity;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1

    :cond_0
    invoke-virtual {p0}, Lmiuix/provision/ProvisionBaseActivity;->r0()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-super {p0, p1}, Landroid/app/Activity;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1

    :cond_1
    const/4 p1, 0x1

    return p1
.end method

.method public j()V
    .locals 0

    invoke-virtual {p0}, Lmiuix/provision/ProvisionBaseActivity;->x0()V

    invoke-virtual {p0}, Landroidx/activity/ComponentActivity;->onBackPressed()V

    return-void
.end method

.method protected j0()I
    .locals 3

    iget-object v0, p0, Lmiuix/provision/ProvisionBaseActivity;->g:Landroid/view/View;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    move-result v0

    return v0

    :cond_0
    invoke-static {}, Lbm/d;->c()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lbm/f;->c:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lbm/f;->i:I

    :goto_0
    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    add-int/2addr v0, v1

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lbm/f;->d:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    add-int/2addr v0, v1

    return v0

    :cond_1
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lbm/f;->c:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lbm/f;->h:I

    goto :goto_0
.end method

.method protected k0()I
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public l0()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public m0()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public n0()Z
    .locals 1

    invoke-static {p0}, Lbm/d;->q(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    return v0

    :cond_0
    const/4 v0, 0x1

    return v0
.end method

.method public o0()Z
    .locals 1

    invoke-static {p0}, Lbm/d;->q(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    return v0

    :cond_0
    const/4 v0, 0x1

    return v0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 6

    invoke-super {p0, p1}, Lmiuix/appcompat/app/AppCompatActivity;->onCreate(Landroid/os/Bundle;)V

    invoke-static {p0}, Lbm/c;->d(Landroid/content/Context;)Z

    move-result p1

    const-string v0, "OobeUtil2"

    if-eqz p1, :cond_0

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onCreate immersionEnable: "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lmiuix/provision/ProvisionBaseActivity;->t0()Z

    move-result v1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lmiuix/provision/ProvisionBaseActivity;->t0()Z

    move-result p1

    invoke-static {p0, p1}, Lbm/c;->a(Landroid/app/Activity;Z)V

    invoke-virtual {p0}, Lmiuix/provision/ProvisionBaseActivity;->q0()V

    :cond_0
    invoke-virtual {p0}, Lmiuix/provision/ProvisionBaseActivity;->n0()Z

    move-result p1

    iput-boolean p1, p0, Lmiuix/provision/ProvisionBaseActivity;->p:Z

    invoke-static {p0}, Lbm/d;->b(Landroid/content/Context;)Z

    move-result p1

    if-eqz p1, :cond_10

    iget-boolean p1, p0, Lmiuix/provision/ProvisionBaseActivity;->q:Z

    if-nez p1, :cond_10

    sget p1, Lbm/h;->a:I

    invoke-virtual {p0, p1}, Lmiuix/appcompat/app/AppCompatActivity;->setContentView(I)V

    sget p1, Lbm/g;->b:I

    invoke-virtual {p0, p1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    iput-object p1, p0, Lmiuix/provision/ProvisionBaseActivity;->k:Landroid/widget/ImageView;

    sget p1, Lbm/g;->a:I

    invoke-virtual {p0, p1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/Button;

    iput-object p1, p0, Lmiuix/provision/ProvisionBaseActivity;->l:Landroid/widget/Button;

    sget p1, Lbm/g;->l:I

    invoke-virtual {p0, p1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/Button;

    iput-object p1, p0, Lmiuix/provision/ProvisionBaseActivity;->m:Landroid/widget/Button;

    const/4 p1, 0x1

    new-array v1, p1, [Landroid/view/View;

    iget-object v2, p0, Lmiuix/provision/ProvisionBaseActivity;->k:Landroid/widget/ImageView;

    const/4 v3, 0x0

    aput-object v2, v1, v3

    invoke-static {v1}, Lmiuix/animation/Folme;->useAt([Landroid/view/View;)Lmiuix/animation/IFolme;

    move-result-object v1

    invoke-interface {v1}, Lmiuix/animation/IFolme;->touch()Lmiuix/animation/ITouchStyle;

    move-result-object v1

    iget-object v2, p0, Lmiuix/provision/ProvisionBaseActivity;->k:Landroid/widget/ImageView;

    new-array v4, v3, [Lmiuix/animation/base/AnimConfig;

    invoke-interface {v1, v2, v4}, Lmiuix/animation/ITouchStyle;->handleTouchOf(Landroid/view/View;[Lmiuix/animation/base/AnimConfig;)V

    new-array v1, p1, [Landroid/view/View;

    iget-object v2, p0, Lmiuix/provision/ProvisionBaseActivity;->l:Landroid/widget/Button;

    aput-object v2, v1, v3

    invoke-static {v1}, Lmiuix/animation/Folme;->useAt([Landroid/view/View;)Lmiuix/animation/IFolme;

    move-result-object v1

    invoke-interface {v1}, Lmiuix/animation/IFolme;->touch()Lmiuix/animation/ITouchStyle;

    move-result-object v1

    iget-object v2, p0, Lmiuix/provision/ProvisionBaseActivity;->l:Landroid/widget/Button;

    new-array v4, v3, [Lmiuix/animation/base/AnimConfig;

    invoke-interface {v1, v2, v4}, Lmiuix/animation/ITouchStyle;->handleTouchOf(Landroid/view/View;[Lmiuix/animation/base/AnimConfig;)V

    new-array p1, p1, [Landroid/view/View;

    iget-object v1, p0, Lmiuix/provision/ProvisionBaseActivity;->m:Landroid/widget/Button;

    aput-object v1, p1, v3

    invoke-static {p1}, Lmiuix/animation/Folme;->useAt([Landroid/view/View;)Lmiuix/animation/IFolme;

    move-result-object p1

    invoke-interface {p1}, Lmiuix/animation/IFolme;->touch()Lmiuix/animation/ITouchStyle;

    move-result-object p1

    iget-object v1, p0, Lmiuix/provision/ProvisionBaseActivity;->m:Landroid/widget/Button;

    new-array v2, v3, [Lmiuix/animation/base/AnimConfig;

    invoke-interface {p1, v1, v2}, Lmiuix/animation/ITouchStyle;->handleTouchOf(Landroid/view/View;[Lmiuix/animation/base/AnimConfig;)V

    iget-boolean p1, p0, Lmiuix/provision/ProvisionBaseActivity;->p:Z

    if-nez p1, :cond_1

    invoke-static {p0}, Lbm/d;->q(Landroid/content/Context;)Z

    move-result p1

    if-eqz p1, :cond_2

    :cond_1
    invoke-virtual {p0}, Lmiuix/provision/ProvisionBaseActivity;->D0()Z

    move-result p1

    if-eqz p1, :cond_2

    iget-object p1, p0, Lmiuix/provision/ProvisionBaseActivity;->k:Landroid/widget/ImageView;

    iget-object v1, p0, Lmiuix/provision/ProvisionBaseActivity;->v:Landroid/view/View$OnClickListener;

    invoke-virtual {p1, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object p1, p0, Lmiuix/provision/ProvisionBaseActivity;->l:Landroid/widget/Button;

    iget-object v1, p0, Lmiuix/provision/ProvisionBaseActivity;->t:Landroid/view/View$OnClickListener;

    invoke-virtual {p1, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object p1, p0, Lmiuix/provision/ProvisionBaseActivity;->m:Landroid/widget/Button;

    iget-object v1, p0, Lmiuix/provision/ProvisionBaseActivity;->u:Landroid/view/View$OnClickListener;

    invoke-virtual {p1, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_2
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " current density is "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lmiuix/provision/ProvisionBaseActivity;->k:Landroid/widget/ImageView;

    invoke-virtual {v1}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    iget v1, v1, Landroid/util/DisplayMetrics;->density:F

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    sget p1, Lbm/g;->h:I

    invoke-virtual {p0, p1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    iput-object p1, p0, Lmiuix/provision/ProvisionBaseActivity;->b:Landroid/widget/ImageView;

    sget p1, Lbm/g;->m:I

    invoke-virtual {p0, p1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/view/TextureView;

    iput-object p1, p0, Lmiuix/provision/ProvisionBaseActivity;->c:Landroid/view/TextureView;

    sget p1, Lbm/g;->i:I

    invoke-virtual {p0, p1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lmiuix/provision/ProvisionBaseActivity;->i:Landroid/widget/TextView;

    sget p1, Lbm/g;->k:I

    invoke-virtual {p0, p1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lmiuix/provision/ProvisionBaseActivity;->a:Landroid/view/View;

    sget p1, Lbm/g;->g:I

    invoke-virtual {p0, p1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lmiuix/provision/ProvisionBaseActivity;->g:Landroid/view/View;

    sget p1, Lbm/g;->d:I

    invoke-virtual {p0, p1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lmiuix/provision/ProvisionBaseActivity;->h:Landroid/view/View;

    sget p1, Lbm/g;->c:I

    invoke-virtual {p0, p1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    iput-object p1, p0, Lmiuix/provision/ProvisionBaseActivity;->n:Landroid/widget/ImageView;

    new-instance p1, Landroid/media/MediaPlayer;

    invoke-direct {p1}, Landroid/media/MediaPlayer;-><init>()V

    iput-object p1, p0, Lmiuix/provision/ProvisionBaseActivity;->d:Landroid/media/MediaPlayer;

    invoke-virtual {p0}, Lmiuix/provision/ProvisionBaseActivity;->m0()Z

    move-result p1

    if-eqz p1, :cond_3

    invoke-static {}, Lbm/d;->m()Z

    move-result p1

    if-nez p1, :cond_3

    iget-object p1, p0, Lmiuix/provision/ProvisionBaseActivity;->c:Landroid/view/TextureView;

    invoke-virtual {p1, v3}, Landroid/view/View;->setVisibility(I)V

    iget-object p1, p0, Lmiuix/provision/ProvisionBaseActivity;->c:Landroid/view/TextureView;

    iget-object v1, p0, Lmiuix/provision/ProvisionBaseActivity;->x:Landroid/view/TextureView$SurfaceTextureListener;

    invoke-virtual {p1, v1}, Landroid/view/TextureView;->setSurfaceTextureListener(Landroid/view/TextureView$SurfaceTextureListener;)V

    :cond_3
    invoke-static {}, Lbm/d;->c()Z

    move-result p1

    if-nez p1, :cond_4

    iget-object p1, p0, Lmiuix/provision/ProvisionBaseActivity;->g:Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->getPaddingLeft()I

    move-result v1

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v4, Lbm/f;->i:I

    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v2

    iget-object v4, p0, Lmiuix/provision/ProvisionBaseActivity;->g:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->getPaddingRight()I

    move-result v4

    iget-object v5, p0, Lmiuix/provision/ProvisionBaseActivity;->g:Landroid/view/View;

    invoke-virtual {v5}, Landroid/view/View;->getPaddingBottom()I

    move-result v5

    invoke-virtual {p1, v1, v2, v4, v5}, Landroid/view/View;->setPadding(IIII)V

    :cond_4
    sget p1, Lbm/g;->j:I

    invoke-virtual {p0, p1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lmiuix/provision/ProvisionBaseActivity;->f:Landroid/widget/TextView;

    const-string p1, "mipro-regular"

    invoke-static {p1, v3}, Landroid/graphics/Typeface;->create(Ljava/lang/String;I)Landroid/graphics/Typeface;

    move-result-object p1

    iget-object v1, p0, Lmiuix/provision/ProvisionBaseActivity;->f:Landroid/widget/TextView;

    invoke-virtual {v1, p1}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    invoke-static {}, Lbm/d;->p()Z

    move-result p1

    if-eqz p1, :cond_5

    iget-object p1, p0, Lmiuix/provision/ProvisionBaseActivity;->f:Landroid/widget/TextView;

    const/16 v1, 0x51

    goto :goto_0

    :cond_5
    iget-object p1, p0, Lmiuix/provision/ProvisionBaseActivity;->f:Landroid/widget/TextView;

    const/16 v1, 0x11

    :goto_0
    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setGravity(I)V

    sget-object p1, Lbm/d;->a:Ljava/lang/String;

    const-string v1, "goku"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_6

    invoke-static {p0}, Lbm/d;->i(Landroid/content/Context;)Z

    move-result p1

    if-eqz p1, :cond_6

    const-string p1, " goku adapt"

    invoke-static {v0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p1, p0, Lmiuix/provision/ProvisionBaseActivity;->g:Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->getPaddingStart()I

    move-result v0

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lbm/f;->b:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v1

    iget-object v2, p0, Lmiuix/provision/ProvisionBaseActivity;->g:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getPaddingEnd()I

    move-result v2

    iget-object v4, p0, Lmiuix/provision/ProvisionBaseActivity;->g:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->getPaddingBottom()I

    move-result v4

    invoke-virtual {p1, v0, v1, v2, v4}, Landroid/view/View;->setPaddingRelative(IIII)V

    sget p1, Lbm/g;->f:I

    invoke-virtual {p0, p1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup$MarginLayoutParams;

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lbm/f;->f:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, v0, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    invoke-virtual {p1, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object p1, p0, Lmiuix/provision/ProvisionBaseActivity;->l:Landroid/widget/Button;

    invoke-direct {p0, p1}, Lmiuix/provision/ProvisionBaseActivity;->i0(Landroid/view/View;)V

    iget-object p1, p0, Lmiuix/provision/ProvisionBaseActivity;->m:Landroid/widget/Button;

    invoke-direct {p0, p1}, Lmiuix/provision/ProvisionBaseActivity;->i0(Landroid/view/View;)V

    :cond_6
    iget-boolean p1, p0, Lmiuix/provision/ProvisionBaseActivity;->p:Z

    const/16 v0, 0x8

    if-nez p1, :cond_9

    iget-object p1, p0, Lmiuix/provision/ProvisionBaseActivity;->n:Landroid/widget/ImageView;

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object p1, p0, Lmiuix/provision/ProvisionBaseActivity;->h:Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    check-cast p1, Landroid/widget/LinearLayout$LayoutParams;

    invoke-virtual {p1, v3, v3, v3, v3}, Landroid/view/ViewGroup$MarginLayoutParams;->setMargins(IIII)V

    iget-object v1, p0, Lmiuix/provision/ProvisionBaseActivity;->h:Landroid/view/View;

    invoke-virtual {v1, p1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    invoke-virtual {p0}, Lmiuix/provision/ProvisionBaseActivity;->o0()Z

    move-result p1

    if-eqz p1, :cond_8

    iget-object p1, p0, Lmiuix/provision/ProvisionBaseActivity;->a:Landroid/view/View;

    invoke-virtual {p1, v3}, Landroid/view/View;->setVisibility(I)V

    iget-object p1, p0, Lmiuix/provision/ProvisionBaseActivity;->i:Landroid/widget/TextView;

    if-eqz p1, :cond_7

    invoke-virtual {p1, v3}, Landroid/view/View;->setVisibility(I)V

    :cond_7
    iget-object p1, p0, Lmiuix/provision/ProvisionBaseActivity;->g:Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->getPaddingStart()I

    move-result v1

    iget-object v2, p0, Lmiuix/provision/ProvisionBaseActivity;->g:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getPaddingEnd()I

    move-result v2

    invoke-virtual {p1, v1, v3, v2, v3}, Landroid/view/View;->setPaddingRelative(IIII)V

    goto :goto_1

    :cond_8
    iget-object p1, p0, Lmiuix/provision/ProvisionBaseActivity;->g:Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->getPaddingStart()I

    move-result v1

    iget-object v2, p0, Lmiuix/provision/ProvisionBaseActivity;->g:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getPaddingEnd()I

    move-result v2

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    sget v5, Lbm/f;->a:I

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v4

    invoke-virtual {p1, v1, v3, v2, v4}, Landroid/view/View;->setPaddingRelative(IIII)V

    :cond_9
    :goto_1
    sget-boolean p1, Lmiui/os/Build;->IS_INTERNATIONAL_BUILD:Z

    if-eqz p1, :cond_a

    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object p1

    invoke-static {p1}, Lbm/d;->a(Landroid/view/Window;)V

    sget p1, Lbm/g;->f:I

    invoke-virtual {p0, p1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup$MarginLayoutParams;

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v4, Lbm/f;->e:I

    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    iput v2, v1, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    invoke-virtual {p1, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :cond_a
    invoke-virtual {p0}, Lmiuix/provision/ProvisionBaseActivity;->l0()Z

    move-result p1

    sget v1, Lbm/g;->f:I

    invoke-virtual {p0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    if-eqz p1, :cond_b

    move p1, v3

    goto :goto_2

    :cond_b
    move p1, v0

    :goto_2
    invoke-virtual {v1, p1}, Landroid/view/View;->setVisibility(I)V

    invoke-virtual {p0}, Lmiuix/provision/ProvisionBaseActivity;->p0()Z

    move-result p1

    iget-object v1, p0, Lmiuix/provision/ProvisionBaseActivity;->g:Landroid/view/View;

    if-eqz p1, :cond_c

    move v0, v3

    :cond_c
    invoke-virtual {v1, v0}, Landroid/view/View;->setVisibility(I)V

    invoke-static {}, Lbm/d;->m()Z

    move-result p1

    if-nez p1, :cond_d

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    invoke-direct {p0, p1}, Lmiuix/provision/ProvisionBaseActivity;->B0(Landroid/content/Context;)V

    :cond_d
    invoke-static {}, Lbm/d;->s()Z

    move-result p1

    if-nez p1, :cond_e

    invoke-direct {p0}, Lmiuix/provision/ProvisionBaseActivity;->u0()Z

    move-result p1

    if-eqz p1, :cond_10

    :cond_e
    invoke-virtual {p0}, Lmiuix/provision/ProvisionBaseActivity;->v0()Z

    move-result p1

    const-wide/16 v0, 0x258

    if-eqz p1, :cond_f

    invoke-virtual {p0, v3}, Lmiuix/provision/ProvisionBaseActivity;->G0(Z)V

    iget-object p1, p0, Lmiuix/provision/ProvisionBaseActivity;->w:Landroid/os/Handler;

    new-instance v2, Lmiuix/provision/ProvisionBaseActivity$d;

    invoke-direct {v2, p0}, Lmiuix/provision/ProvisionBaseActivity$d;-><init>(Lmiuix/provision/ProvisionBaseActivity;)V

    goto :goto_3

    :cond_f
    invoke-virtual {p0, v3}, Lmiuix/provision/ProvisionBaseActivity;->F0(Z)V

    iget-object p1, p0, Lmiuix/provision/ProvisionBaseActivity;->w:Landroid/os/Handler;

    new-instance v2, Lmiuix/provision/ProvisionBaseActivity$e;

    invoke-direct {v2, p0}, Lmiuix/provision/ProvisionBaseActivity$e;-><init>(Lmiuix/provision/ProvisionBaseActivity;)V

    :goto_3
    invoke-virtual {p1, v2, v0, v1}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_10
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p1

    const-string v0, "com.miui.voicetrigger"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_11

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    invoke-virtual {p0}, Lmiuix/provision/ProvisionBaseActivity;->k0()I

    move-result v0

    const-string v1, "new_feature"

    invoke-static {p1, v1, v0}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    :cond_11
    return-void
.end method

.method protected onDestroy()V
    .locals 2

    invoke-super {p0}, Lmiuix/appcompat/app/AppCompatActivity;->onDestroy()V

    iget-object v0, p0, Lmiuix/provision/ProvisionBaseActivity;->b:Landroid/widget/ImageView;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    :cond_0
    iget-object v0, p0, Lmiuix/provision/ProvisionBaseActivity;->n:Landroid/widget/ImageView;

    if-eqz v0, :cond_1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    :cond_1
    invoke-static {}, Lbm/d;->m()Z

    move-result v0

    if-nez v0, :cond_2

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {p0, v0}, Lmiuix/provision/ProvisionBaseActivity;->E0(Landroid/content/Context;)V

    :cond_2
    return-void
.end method

.method protected onResume()V
    .locals 2

    invoke-super {p0}, Landroidx/fragment/app/FragmentActivity;->onResume()V

    invoke-static {p0}, Lbm/c;->d(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onResume immersionEnable: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lmiuix/provision/ProvisionBaseActivity;->t0()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "OobeUtil2"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lmiuix/provision/ProvisionBaseActivity;->t0()Z

    move-result v0

    invoke-static {p0, v0}, Lbm/c;->a(Landroid/app/Activity;Z)V

    :cond_0
    return-void
.end method

.method protected onStart()V
    .locals 2
    .annotation build Landroidx/annotation/RequiresApi;
        api = 0x1a
    .end annotation

    invoke-super {p0}, Landroidx/fragment/app/FragmentActivity;->onStart()V

    iget-boolean v0, p0, Lmiuix/provision/ProvisionBaseActivity;->p:Z

    if-eqz v0, :cond_0

    invoke-static {p0}, Lbm/d;->b(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lmiuix/provision/ProvisionBaseActivity;->q:Z

    if-nez v0, :cond_0

    new-instance v0, Lmiuix/provision/a;

    iget-object v1, p0, Lmiuix/provision/ProvisionBaseActivity;->w:Landroid/os/Handler;

    invoke-direct {v0, p0, v1}, Lmiuix/provision/a;-><init>(Landroid/content/Context;Landroid/os/Handler;)V

    iput-object v0, p0, Lmiuix/provision/ProvisionBaseActivity;->o:Lmiuix/provision/a;

    invoke-virtual {v0}, Lmiuix/provision/a;->j()V

    iget-object v0, p0, Lmiuix/provision/ProvisionBaseActivity;->o:Lmiuix/provision/a;

    invoke-virtual {v0, p0}, Lmiuix/provision/a;->k(Lmiuix/provision/a$d;)V

    iget-object v0, p0, Lmiuix/provision/ProvisionBaseActivity;->o:Lmiuix/provision/a;

    invoke-virtual {p0}, Lmiuix/provision/ProvisionBaseActivity;->j0()I

    move-result v1

    invoke-virtual {v0, v1}, Lmiuix/provision/a;->l(I)V

    :cond_0
    return-void
.end method

.method public onStop()V
    .locals 1

    invoke-super {p0}, Lmiuix/appcompat/app/AppCompatActivity;->onStop()V

    iget-object v0, p0, Lmiuix/provision/ProvisionBaseActivity;->o:Lmiuix/provision/a;

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lmiuix/provision/ProvisionBaseActivity;->p:Z

    if-eqz v0, :cond_0

    invoke-static {p0}, Lbm/d;->b(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lmiuix/provision/ProvisionBaseActivity;->q:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lmiuix/provision/ProvisionBaseActivity;->o:Lmiuix/provision/a;

    invoke-virtual {v0}, Lmiuix/provision/a;->m()V

    const/4 v0, 0x0

    iput-object v0, p0, Lmiuix/provision/ProvisionBaseActivity;->o:Lmiuix/provision/a;

    :cond_0
    return-void
.end method

.method public onWindowFocusChanged(Z)V
    .locals 2

    invoke-super {p0, p1}, Landroid/app/Activity;->onWindowFocusChanged(Z)V

    if-eqz p1, :cond_0

    invoke-static {p0}, Lbm/c;->d(Landroid/content/Context;)Z

    move-result p1

    if-eqz p1, :cond_0

    invoke-static {p0}, Lbm/c;->c(Landroid/content/Context;)Z

    move-result p1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Hide gesture line: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "OobeUtil2"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    invoke-static {p0, p1}, Lbm/c;->b(Landroid/content/Context;Z)V

    :cond_0
    return-void
.end method

.method public p0()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method protected q0()V
    .locals 0

    return-void
.end method

.method protected r0()Z
    .locals 2

    iget-boolean v0, p0, Lmiuix/provision/ProvisionBaseActivity;->p:Z

    const/4 v1, 0x1

    if-nez v0, :cond_0

    return v1

    :cond_0
    iget-object v0, p0, Lmiuix/provision/ProvisionBaseActivity;->o:Lmiuix/provision/a;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lmiuix/provision/a;->i()Z

    move-result v0

    return v0

    :cond_1
    return v1
.end method

.method protected s0()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public setTitle(I)V
    .locals 1

    invoke-super {p0, p1}, Landroid/app/Activity;->setTitle(I)V

    iget-object p1, p0, Lmiuix/provision/ProvisionBaseActivity;->f:Landroid/widget/TextView;

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Landroid/app/Activity;->getTitle()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_0
    return-void
.end method

.method public setTitle(Ljava/lang/CharSequence;)V
    .locals 1

    invoke-super {p0, p1}, Landroid/app/Activity;->setTitle(Ljava/lang/CharSequence;)V

    iget-object p1, p0, Lmiuix/provision/ProvisionBaseActivity;->f:Landroid/widget/TextView;

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Landroid/app/Activity;->getTitle()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_0
    return-void
.end method

.method protected t0()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public v()V
    .locals 1

    invoke-static {}, Lbm/d;->s()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0}, Lmiuix/provision/ProvisionBaseActivity;->r0()Z

    move-result v0

    if-nez v0, :cond_1

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lmiuix/provision/ProvisionBaseActivity;->G0(Z)V

    :cond_1
    return-void
.end method

.method public v0()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public w0()V
    .locals 0

    return-void
.end method

.method protected x0()V
    .locals 0

    return-void
.end method

.method public y()V
    .locals 0

    invoke-virtual {p0}, Lmiuix/provision/ProvisionBaseActivity;->y0()V

    return-void
.end method

.method protected y0()V
    .locals 0

    return-void
.end method

.method protected z0()V
    .locals 0

    return-void
.end method
