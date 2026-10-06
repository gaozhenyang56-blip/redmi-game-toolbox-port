.class public Lcom/miui/gamebooster/customview/y;
.super Landroid/widget/FrameLayout;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Landroid/widget/RadioGroup$OnCheckedChangeListener;
.implements Landroid/view/View$OnTouchListener;
.implements Lcom/miui/gamebooster/voicechanger/SettingsView$c;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/gamebooster/customview/y$j;
    }
.end annotation


# instance fields
.field private A:Lcom/miui/gamebooster/customview/y$j;

.field private B:Landroid/os/Handler;

.field private C:Ls8/w;

.field private D:Landroid/view/animation/RotateAnimation;

.field private E:Lo8/a;

.field private a:Landroid/media/AudioManager;

.field private b:I

.field private c:Landroid/widget/RadioGroup;

.field private d:Landroid/widget/RadioButton;

.field private e:Landroid/widget/RadioButton;

.field private f:Landroid/view/View;

.field private g:Lcom/miui/gamebooster/customview/AuditionView;

.field private h:Landroid/view/View;

.field private i:Landroid/view/View;

.field private j:Lcom/miui/gamebooster/voicechanger/SettingsView;

.field private k:Lcom/miui/gamebooster/customview/VoiceModeView;

.field private l:Landroid/view/ViewGroup;

.field private m:Landroid/widget/TextView;

.field private n:Landroid/widget/TextView;

.field private o:Landroid/widget/ImageView;

.field private p:Landroid/widget/ImageView;

.field private q:Landroid/view/View;

.field private r:Lmiuix/recyclerview/widget/RecyclerView;

.field private s:Lq6/f;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lq6/f<",
            "Lcom/miui/gamebooster/voicechanger/model/VoiceModel;",
            ">;"
        }
    .end annotation
.end field

.field private t:Landroidx/recyclerview/widget/GridLayoutManager;

.field private final u:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/miui/gamebooster/voicechanger/model/VoiceModel;",
            ">;"
        }
    .end annotation
.end field

.field private final v:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/miui/gamebooster/voicechanger/model/VoiceModel;",
            ">;"
        }
    .end annotation
.end field

.field private w:Landroid/animation/ValueAnimator;

.field private x:I

.field private y:Ljava/lang/String;

.field private z:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    const/4 p1, 0x0

    iput p1, p0, Lcom/miui/gamebooster/customview/y;->b:I

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/miui/gamebooster/customview/y;->u:Ljava/util/List;

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/miui/gamebooster/customview/y;->v:Ljava/util/List;

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/miui/gamebooster/customview/y;->z:Z

    new-instance p1, Landroid/os/Handler;

    invoke-direct {p1}, Landroid/os/Handler;-><init>()V

    iput-object p1, p0, Lcom/miui/gamebooster/customview/y;->B:Landroid/os/Handler;

    new-instance p1, Lcom/miui/gamebooster/customview/y$b;

    invoke-direct {p1, p0}, Lcom/miui/gamebooster/customview/y$b;-><init>(Lcom/miui/gamebooster/customview/y;)V

    iput-object p1, p0, Lcom/miui/gamebooster/customview/y;->E:Lo8/a;

    invoke-direct {p0}, Lcom/miui/gamebooster/customview/y;->L()V

    return-void
.end method

.method static synthetic A(Lcom/miui/gamebooster/customview/y;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/miui/gamebooster/customview/y;->z:Z

    return p1
.end method

.method static synthetic B(Lcom/miui/gamebooster/customview/y;)Landroid/animation/ValueAnimator;
    .locals 0

    iget-object p0, p0, Lcom/miui/gamebooster/customview/y;->w:Landroid/animation/ValueAnimator;

    return-object p0
.end method

.method static synthetic C(Lcom/miui/gamebooster/customview/y;Landroid/animation/ValueAnimator;)Landroid/animation/ValueAnimator;
    .locals 0

    iput-object p1, p0, Lcom/miui/gamebooster/customview/y;->w:Landroid/animation/ValueAnimator;

    return-object p1
.end method

.method static synthetic D(Lcom/miui/gamebooster/customview/y;)Lcom/miui/gamebooster/voicechanger/SettingsView;
    .locals 0

    iget-object p0, p0, Lcom/miui/gamebooster/customview/y;->j:Lcom/miui/gamebooster/voicechanger/SettingsView;

    return-object p0
.end method

.method static synthetic E(Lcom/miui/gamebooster/customview/y;)Landroid/view/View;
    .locals 0

    iget-object p0, p0, Lcom/miui/gamebooster/customview/y;->i:Landroid/view/View;

    return-object p0
.end method

.method static synthetic F(Lcom/miui/gamebooster/customview/y;)Landroid/view/View;
    .locals 0

    iget-object p0, p0, Lcom/miui/gamebooster/customview/y;->q:Landroid/view/View;

    return-object p0
.end method

.method static synthetic G(Lcom/miui/gamebooster/customview/y;)Ls8/w;
    .locals 0

    iget-object p0, p0, Lcom/miui/gamebooster/customview/y;->C:Ls8/w;

    return-object p0
.end method

.method private H(Z)V
    .locals 3

    iget-object v0, p0, Lcom/miui/gamebooster/customview/y;->l:Landroid/view/ViewGroup;

    const/4 v1, 0x0

    if-eqz p1, :cond_0

    move v2, v1

    goto :goto_0

    :cond_0
    const/16 v2, 0x8

    :goto_0
    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/miui/gamebooster/customview/y;->p:Landroid/widget/ImageView;

    if-eqz p1, :cond_1

    goto :goto_1

    :cond_1
    const/4 v1, 0x4

    :goto_1
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v0, p0, Lcom/miui/gamebooster/customview/y;->r:Lmiuix/recyclerview/widget/RecyclerView;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/miui/gamebooster/customview/y;->s:Lq6/f;

    if-eqz v0, :cond_3

    if-eqz p1, :cond_2

    iget-object p1, p0, Lcom/miui/gamebooster/customview/y;->u:Ljava/util/List;

    goto :goto_2

    :cond_2
    iget-object p1, p0, Lcom/miui/gamebooster/customview/y;->v:Ljava/util/List;

    :goto_2
    invoke-virtual {v0, p1}, Lq6/f;->F(Ljava/util/List;)V

    invoke-direct {p0}, Lcom/miui/gamebooster/customview/y;->X()V

    iget-object p1, p0, Lcom/miui/gamebooster/customview/y;->s:Lq6/f;

    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$h;->notifyDataSetChanged()V

    :cond_3
    return-void
.end method

.method private I()V
    .locals 2

    invoke-direct {p0}, Lcom/miui/gamebooster/customview/y;->Q()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/miui/gamebooster/customview/y;->B:Landroid/os/Handler;

    new-instance v1, Lcom/miui/gamebooster/customview/v;

    invoke-direct {v1, p0}, Lcom/miui/gamebooster/customview/v;-><init>(Lcom/miui/gamebooster/customview/y;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method private J(Z)V
    .locals 2

    if-nez p1, :cond_0

    iget-object v0, p0, Lcom/miui/gamebooster/customview/y;->j:Lcom/miui/gamebooster/voicechanger/SettingsView;

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    if-eqz p1, :cond_1

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    const v0, 0x7f01004b

    invoke-static {p1, v0}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object p1

    new-instance v0, Lcom/miui/gamebooster/customview/y$c;

    invoke-direct {v0, p0}, Lcom/miui/gamebooster/customview/y$c;-><init>(Lcom/miui/gamebooster/customview/y;)V

    invoke-virtual {p1, v0}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    iget-object v0, p0, Lcom/miui/gamebooster/customview/y;->j:Lcom/miui/gamebooster/voicechanger/SettingsView;

    invoke-virtual {v0, p1}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    goto :goto_0

    :cond_1
    iget-object p1, p0, Lcom/miui/gamebooster/customview/y;->j:Lcom/miui/gamebooster/voicechanger/SettingsView;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    iget-object p1, p0, Lcom/miui/gamebooster/customview/y;->j:Lcom/miui/gamebooster/voicechanger/SettingsView;

    invoke-virtual {p1}, Lcom/miui/gamebooster/voicechanger/SettingsView;->w()V

    iget-object p1, p0, Lcom/miui/gamebooster/customview/y;->j:Lcom/miui/gamebooster/voicechanger/SettingsView;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f01004c

    invoke-static {v0, v1}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    iget-object p1, p0, Lcom/miui/gamebooster/customview/y;->i:Landroid/view/View;

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    iget-object p1, p0, Lcom/miui/gamebooster/customview/y;->q:Landroid/view/View;

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    :goto_0
    return-void
.end method

.method private L()V
    .locals 2

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f0e0218

    invoke-virtual {v0, v1, p0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    const/4 v0, 0x0

    invoke-static {p0, v0}, La8/k0;->o(Landroid/view/View;Z)V

    invoke-direct {p0}, Lcom/miui/gamebooster/customview/y;->P()V

    return-void
.end method

.method private M()V
    .locals 2

    invoke-static {}, Lo8/k;->C()Lo8/k;

    move-result-object v0

    invoke-virtual {v0}, Lo8/k;->A()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_0

    iget-object v1, p0, Lcom/miui/gamebooster/customview/y;->u:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V

    iget-object v1, p0, Lcom/miui/gamebooster/customview/y;->u:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    :cond_0
    invoke-static {}, Lp8/a;->a()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_1

    iget-object v1, p0, Lcom/miui/gamebooster/customview/y;->v:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V

    iget-object v1, p0, Lcom/miui/gamebooster/customview/y;->v:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    :cond_1
    return-void
.end method

.method private N()V
    .locals 8

    iget-object v0, p0, Lcom/miui/gamebooster/customview/y;->D:Landroid/view/animation/RotateAnimation;

    if-eqz v0, :cond_0

    return-void

    :cond_0
    new-instance v0, Landroid/view/animation/RotateAnimation;

    const/4 v2, 0x0

    const/high16 v3, 0x43b40000    # 360.0f

    const/4 v4, 0x1

    const/high16 v5, 0x3f000000    # 0.5f

    const/4 v6, 0x1

    const/high16 v7, 0x3f000000    # 0.5f

    move-object v1, v0

    invoke-direct/range {v1 .. v7}, Landroid/view/animation/RotateAnimation;-><init>(FFIFIF)V

    iput-object v0, p0, Lcom/miui/gamebooster/customview/y;->D:Landroid/view/animation/RotateAnimation;

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Landroid/view/animation/Animation;->setRepeatCount(I)V

    iget-object v0, p0, Lcom/miui/gamebooster/customview/y;->D:Landroid/view/animation/RotateAnimation;

    const-wide/16 v1, 0x3e8

    invoke-virtual {v0, v1, v2}, Landroid/view/animation/Animation;->setDuration(J)V

    iget-object v0, p0, Lcom/miui/gamebooster/customview/y;->D:Landroid/view/animation/RotateAnimation;

    new-instance v1, Landroid/view/animation/LinearInterpolator;

    invoke-direct {v1}, Landroid/view/animation/LinearInterpolator;-><init>()V

    invoke-virtual {v0, v1}, Landroid/view/animation/Animation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    iget-object v0, p0, Lcom/miui/gamebooster/customview/y;->o:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/miui/gamebooster/customview/y;->D:Landroid/view/animation/RotateAnimation;

    invoke-virtual {v0, v1}, Landroid/view/View;->setAnimation(Landroid/view/animation/Animation;)V

    return-void
.end method

.method private O()V
    .locals 3

    iget-object v0, p0, Lcom/miui/gamebooster/customview/y;->h:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f070f63

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v1

    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f070f5f

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v1

    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    iget-object v1, p0, Lcom/miui/gamebooster/customview/y;->h:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v0, p0, Lcom/miui/gamebooster/customview/y;->p:Landroid/widget/ImageView;

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/miui/gamebooster/customview/y;->m:Landroid/widget/TextView;

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/miui/gamebooster/customview/y;->h:Landroid/view/View;

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    return-void
.end method

.method private P()V
    .locals 4

    const v0, 0x7f0b0d89

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/gamebooster/customview/y;->h:Landroid/view/View;

    const v0, 0x7f0b09ae

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Lcom/miui/gamebooster/customview/y;->l:Landroid/view/ViewGroup;

    const v0, 0x7f0b0c99

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/miui/gamebooster/customview/y;->m:Landroid/widget/TextView;

    const v0, 0x7f0b0c9a

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/miui/gamebooster/customview/y;->n:Landroid/widget/TextView;

    const v0, 0x7f0b0619

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/miui/gamebooster/customview/y;->o:Landroid/widget/ImageView;

    const v0, 0x7f0b0c98

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/miui/gamebooster/customview/y;->p:Landroid/widget/ImageView;

    const v0, 0x7f0b0940

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RadioGroup;

    iput-object v0, p0, Lcom/miui/gamebooster/customview/y;->c:Landroid/widget/RadioGroup;

    const v0, 0x7f0b0be0

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/gamebooster/customview/y;->f:Landroid/view/View;

    const v0, 0x7f0b094c

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RadioButton;

    iput-object v0, p0, Lcom/miui/gamebooster/customview/y;->d:Landroid/widget/RadioButton;

    const v0, 0x7f0b0945

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RadioButton;

    iput-object v0, p0, Lcom/miui/gamebooster/customview/y;->e:Landroid/widget/RadioButton;

    const v0, 0x7f0b0498

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lmiuix/recyclerview/widget/RecyclerView;

    iput-object v0, p0, Lcom/miui/gamebooster/customview/y;->r:Lmiuix/recyclerview/widget/RecyclerView;

    const v0, 0x7f0b0124

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/miui/gamebooster/customview/AuditionView;

    iput-object v0, p0, Lcom/miui/gamebooster/customview/y;->g:Lcom/miui/gamebooster/customview/AuditionView;

    iget-object v1, p0, Lcom/miui/gamebooster/customview/y;->E:Lo8/a;

    invoke-virtual {v0, v1}, Lcom/miui/gamebooster/customview/AuditionView;->setVoiceChangerWindow(Lo8/a;)V

    const v0, 0x7f0b03ea

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/gamebooster/customview/y;->i:Landroid/view/View;

    const v0, 0x7f0b047c

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/miui/gamebooster/voicechanger/SettingsView;

    iput-object v0, p0, Lcom/miui/gamebooster/customview/y;->j:Lcom/miui/gamebooster/voicechanger/SettingsView;

    const v0, 0x7f0b06aa

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/gamebooster/customview/y;->q:Landroid/view/View;

    iget-object v0, p0, Lcom/miui/gamebooster/customview/y;->m:Landroid/widget/TextView;

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/miui/gamebooster/customview/y;->n:Landroid/widget/TextView;

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/miui/gamebooster/customview/y;->p:Landroid/widget/ImageView;

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/miui/gamebooster/customview/y;->j:Lcom/miui/gamebooster/voicechanger/SettingsView;

    invoke-virtual {v0, p0}, Lcom/miui/gamebooster/voicechanger/SettingsView;->setMainContent(Lcom/miui/gamebooster/voicechanger/SettingsView$c;)V

    const v0, 0x7f0b013a

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/miui/gamebooster/customview/y;->c:Landroid/widget/RadioGroup;

    invoke-virtual {v0, p0}, Landroid/widget/RadioGroup;->setOnCheckedChangeListener(Landroid/widget/RadioGroup$OnCheckedChangeListener;)V

    invoke-direct {p0}, Lcom/miui/gamebooster/customview/y;->N()V

    invoke-direct {p0}, Lcom/miui/gamebooster/customview/y;->M()V

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "audio"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    iput-object v0, p0, Lcom/miui/gamebooster/customview/y;->a:Landroid/media/AudioManager;

    new-instance v0, Landroidx/recyclerview/widget/GridLayoutManager;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    const/4 v2, 0x4

    invoke-direct {v0, v1, v2}, Landroidx/recyclerview/widget/GridLayoutManager;-><init>(Landroid/content/Context;I)V

    iput-object v0, p0, Lcom/miui/gamebooster/customview/y;->t:Landroidx/recyclerview/widget/GridLayoutManager;

    iget-object v1, p0, Lcom/miui/gamebooster/customview/y;->r:Lmiuix/recyclerview/widget/RecyclerView;

    invoke-virtual {v1, v0}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$n;)V

    new-instance v0, Lq6/f;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lq6/f;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/miui/gamebooster/customview/y;->s:Lq6/f;

    new-instance v1, Lcom/miui/gamebooster/customview/y$a;

    invoke-direct {v1, p0}, Lcom/miui/gamebooster/customview/y$a;-><init>(Lcom/miui/gamebooster/customview/y;)V

    invoke-virtual {v0, v1}, Lq6/f;->o(Lq6/b;)Lq6/f;

    new-instance v0, Ll8/d;

    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v3, 0x7f071e31

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v1

    const/4 v3, 0x0

    invoke-direct {v0, v2, v1, v3}, Ll8/d;-><init>(IIZ)V

    iget-object v1, p0, Lcom/miui/gamebooster/customview/y;->r:Lmiuix/recyclerview/widget/RecyclerView;

    invoke-virtual {v1, v0}, Landroidx/recyclerview/widget/RecyclerView;->addItemDecoration(Landroidx/recyclerview/widget/RecyclerView$m;)V

    iget-object v0, p0, Lcom/miui/gamebooster/customview/y;->r:Lmiuix/recyclerview/widget/RecyclerView;

    iget-object v1, p0, Lcom/miui/gamebooster/customview/y;->s:Lq6/f;

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$h;)V

    invoke-direct {p0}, Lcom/miui/gamebooster/customview/y;->O()V

    iget-object v0, p0, Lcom/miui/gamebooster/customview/y;->p:Landroid/widget/ImageView;

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/miui/gamebooster/customview/y;->m:Landroid/widget/TextView;

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/miui/gamebooster/customview/y;->h:Landroid/view/View;

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    return-void
.end method

.method private Q()Z
    .locals 1

    iget v0, p0, Lcom/miui/gamebooster/customview/y;->b:I

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private synthetic R()V
    .locals 2

    iget-object v0, p0, Lcom/miui/gamebooster/customview/y;->D:Landroid/view/animation/RotateAnimation;

    invoke-virtual {v0}, Landroid/view/animation/Animation;->cancel()V

    iget-object v0, p0, Lcom/miui/gamebooster/customview/y;->o:Landroid/widget/ImageView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v0, p0, Lcom/miui/gamebooster/customview/y;->l:Landroid/view/ViewGroup;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method private synthetic S(Ljava/util/Map;)V
    .locals 2

    invoke-direct {p0}, Lcom/miui/gamebooster/customview/y;->a0()V

    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    iget v0, p0, Lcom/miui/gamebooster/customview/y;->x:I

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    const-string v1, "voice_experience_card_dialog_click"

    invoke-interface {p1, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {v1, p1}, Lcom/miui/gamebooster/utils/a$n;->k(Ljava/lang/String;Ljava/util/Map;)V

    return-void
.end method

.method private synthetic T()V
    .locals 3

    iget-object v0, p0, Lcom/miui/gamebooster/customview/y;->l:Landroid/view/ViewGroup;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/miui/gamebooster/customview/y;->l:Landroid/view/ViewGroup;

    const v2, 0x7f08075b

    invoke-virtual {v0, v2}, Landroid/view/View;->setBackgroundResource(I)V

    iget-object v0, p0, Lcom/miui/gamebooster/customview/y;->o:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v0, p0, Lcom/miui/gamebooster/customview/y;->o:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/miui/gamebooster/customview/y;->D:Landroid/view/animation/RotateAnimation;

    invoke-virtual {v0, v1}, Landroid/view/View;->setAnimation(Landroid/view/animation/Animation;)V

    iget-object v0, p0, Lcom/miui/gamebooster/customview/y;->D:Landroid/view/animation/RotateAnimation;

    invoke-virtual {v0}, Landroid/view/animation/Animation;->startNow()V

    return-void
.end method

.method private synthetic U(Ljava/util/Map;)V
    .locals 0

    const-string p1, "voice_review_click"

    invoke-static {p1}, Lcom/miui/gamebooster/utils/a$n;->i(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/miui/gamebooster/customview/y;->d()V

    return-void
.end method

.method private synthetic V(Ljava/lang/String;)V
    .locals 3

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/miui/gamebooster/customview/y;->m:Landroid/widget/TextView;

    const v1, 0x7f080762

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2, v2, v2}, Landroid/widget/TextView;->setCompoundDrawablesWithIntrinsicBounds(IIII)V

    iget-object v0, p0, Lcom/miui/gamebooster/customview/y;->m:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/miui/gamebooster/customview/y;->m:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object p1, p0, Lcom/miui/gamebooster/customview/y;->m:Landroid/widget/TextView;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f060396

    invoke-static {v0, v1}, Landroidx/core/content/ContextCompat;->c(Landroid/content/Context;I)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setTextColor(I)V

    iget-object p1, p0, Lcom/miui/gamebooster/customview/y;->l:Landroid/view/ViewGroup;

    const v0, 0x7f080761

    invoke-virtual {p1, v0}, Landroid/view/View;->setBackgroundResource(I)V

    iget-object p1, p0, Lcom/miui/gamebooster/customview/y;->m:Landroid/widget/TextView;

    invoke-virtual {p1}, Landroid/view/View;->requestFocus()Z

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lcom/miui/gamebooster/customview/y;->m:Landroid/widget/TextView;

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    :goto_0
    return-void
.end method

.method private W(I)V
    .locals 2

    iget-object v0, p0, Lcom/miui/gamebooster/customview/y;->C:Ls8/w;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ls8/w;->c(Z)V

    :cond_0
    if-nez p1, :cond_1

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, La8/o;->b(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p1}, La8/o;->c(Landroid/content/Context;I)V

    goto :goto_0

    :cond_1
    invoke-static {}, Lo8/k;->C()Lo8/k;

    move-result-object v0

    new-instance v1, Lcom/miui/gamebooster/customview/y$d;

    invoke-direct {v1, p0}, Lcom/miui/gamebooster/customview/y$d;-><init>(Lcom/miui/gamebooster/customview/y;)V

    invoke-virtual {v0, p1, v1}, Lo8/k;->Q(ILcom/miui/gamebooster/service/MiuiVoiceChangeCallback;)V

    :goto_0
    return-void
.end method

.method private X()V
    .locals 4

    iget-object v0, p0, Lcom/miui/gamebooster/customview/y;->s:Lq6/f;

    invoke-virtual {v0}, Lq6/f;->s()Ljava/util/List;

    move-result-object v0

    invoke-static {v0}, Lc7/c;->n(Ljava/util/Collection;)Z

    move-result v1

    if-nez v1, :cond_1

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/miui/gamebooster/voicechanger/model/VoiceModel;

    invoke-static {}, La8/j2;->d()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1}, Lcom/miui/gamebooster/voicechanger/model/VoiceModel;->getType()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v2, 0x1

    goto :goto_1

    :cond_0
    const/4 v2, 0x0

    :goto_1
    invoke-virtual {v1, v2}, Lcom/miui/gamebooster/voicechanger/model/VoiceModel;->setSelected(Z)V

    goto :goto_0

    :cond_1
    return-void
.end method

.method private Y()V
    .locals 2

    iget-object v0, p0, Lcom/miui/gamebooster/customview/y;->B:Landroid/os/Handler;

    new-instance v1, Lcom/miui/gamebooster/customview/y$h;

    invoke-direct {v1, p0}, Lcom/miui/gamebooster/customview/y$h;-><init>(Lcom/miui/gamebooster/customview/y;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method private Z()V
    .locals 2

    invoke-static {}, Lo8/k;->C()Lo8/k;

    move-result-object v0

    new-instance v1, Lcom/miui/gamebooster/customview/y$g;

    invoke-direct {v1, p0}, Lcom/miui/gamebooster/customview/y$g;-><init>(Lcom/miui/gamebooster/customview/y;)V

    invoke-virtual {v0, v1}, Lo8/k;->Y(Lcom/miui/gamebooster/service/MiuiVoiceChangeCallback;)V

    return-void
.end method

.method private a0()V
    .locals 3

    invoke-static {}, Lcom/miui/gamebooster/customview/s;->h()Lcom/miui/gamebooster/customview/s;

    move-result-object v0

    const v1, 0x7f120b11

    invoke-virtual {v0, p0, v1}, Lcom/miui/gamebooster/customview/s;->q(Landroid/view/ViewGroup;I)V

    iget-object v0, p0, Lcom/miui/gamebooster/customview/y;->y:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lo8/k;->C()Lo8/k;

    move-result-object v0

    new-instance v1, Lcom/miui/gamebooster/customview/y$e;

    invoke-direct {v1, p0}, Lcom/miui/gamebooster/customview/y$e;-><init>(Lcom/miui/gamebooster/customview/y;)V

    invoke-virtual {v0, v1}, Lo8/k;->c0(Lcom/miui/networkassistant/vpn/miui/IMiuiVoiceChangeCallback;)V

    goto :goto_0

    :cond_0
    invoke-static {}, Lo8/k;->C()Lo8/k;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/gamebooster/customview/y;->y:Ljava/lang/String;

    new-instance v2, Lcom/miui/gamebooster/customview/y$f;

    invoke-direct {v2, p0}, Lcom/miui/gamebooster/customview/y$f;-><init>(Lcom/miui/gamebooster/customview/y;)V

    invoke-virtual {v0, v1, v2}, Lo8/k;->d0(Ljava/lang/String;Lcom/miui/networkassistant/vpn/miui/IMiuiVoiceChangeCallback;)V

    :goto_0
    return-void
.end method

.method private c0(Ljava/lang/String;Ljava/lang/String;I)V
    .locals 4

    const-string v0, "original"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/gamebooster/customview/y;->a:Landroid/media/AudioManager;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v0, v1, p2, p3}, La8/j2;->p(Landroid/media/AudioManager;Landroid/content/Context;Ljava/lang/String;I)V

    invoke-static {}, La8/j2;->b()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long p3, v0, v2

    if-eqz p3, :cond_1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    sub-long/2addr v2, v0

    const-wide/32 v0, 0xea60

    div-long/2addr v2, v0

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p3, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v0, ""

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-static {p1, p2, p3}, Lcom/miui/gamebooster/utils/a;->H0(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, La8/j2;->c()J

    move-result-wide p1

    add-long/2addr p1, v2

    invoke-static {p1, p2}, La8/j2;->s(J)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/miui/gamebooster/customview/y;->a:Landroid/media/AudioManager;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v0, v1, p1, p2, p3}, La8/j2;->q(Landroid/media/AudioManager;Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;I)V

    invoke-static {}, Lo8/i;->b()Lo8/i;

    move-result-object p1

    const p2, 0x7f120af2

    invoke-virtual {p1, p0, p2}, Lo8/i;->e(Landroid/view/ViewGroup;I)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide p1

    invoke-static {p1, p2}, La8/j2;->r(J)V

    :cond_1
    :goto_0
    return-void
.end method

.method public static synthetic e(Lcom/miui/gamebooster/customview/y;Ljava/util/Map;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/miui/gamebooster/customview/y;->U(Ljava/util/Map;)V

    return-void
.end method

.method private e0(Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 3

    invoke-static {p1}, La8/j2;->l(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const-string p2, ""

    :goto_0
    invoke-static {p1, p2}, La8/j2;->u(Ljava/lang/String;Ljava/lang/String;)V

    const-string p2, "key_currentbooster_pkg_uid"

    const/4 v0, 0x0

    invoke-static {p2, v0}, Lr4/a;->l(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    const/4 v1, -0x1

    if-eqz p2, :cond_1

    const-string v0, ","

    invoke-virtual {p2, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p2

    const/4 v0, 0x0

    aget-object v0, p2, v0

    const/4 v2, 0x1

    :try_start_0
    aget-object p2, p2, v2

    invoke-static {p2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    const-string p2, "VoiceChangerChildView"

    const-string v2, "parseInt error while get uid"

    invoke-static {p2, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    :goto_1
    invoke-static {p1}, La8/j2;->l(Ljava/lang/String;)Z

    move-result p2

    if-eqz p2, :cond_2

    invoke-direct {p0, p1, v0, v1, p3}, Lcom/miui/gamebooster/customview/y;->f0(Ljava/lang/String;Ljava/lang/String;IZ)V

    goto :goto_2

    :cond_2
    invoke-direct {p0, p1, v0, v1}, Lcom/miui/gamebooster/customview/y;->c0(Ljava/lang/String;Ljava/lang/String;I)V

    if-eqz p3, :cond_3

    invoke-static {p1}, Lcom/miui/gamebooster/utils/a;->F0(Ljava/lang/String;)V

    :cond_3
    :goto_2
    return-void
.end method

.method public static synthetic f(Lcom/miui/gamebooster/customview/y;)V
    .locals 0

    invoke-direct {p0}, Lcom/miui/gamebooster/customview/y;->T()V

    return-void
.end method

.method private f0(Ljava/lang/String;Ljava/lang/String;IZ)V
    .locals 4

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, La8/d0;->b(Landroid/content/Context;)Z

    move-result v0

    const-string v1, "0"

    if-nez v0, :cond_0

    new-instance p1, Landroid/content/Intent;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p4

    const-class v0, Lcom/miui/gamebooster/voicechanger/LoginActivity;

    invoke-direct {p1, p4, v0}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const/high16 p4, 0x10000000

    invoke-virtual {p1, p4}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p4

    invoke-virtual {p4, p1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    invoke-virtual {p0}, Lcom/miui/gamebooster/customview/y;->K()V

    iget-object p1, p0, Lcom/miui/gamebooster/customview/y;->a:Landroid/media/AudioManager;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p4

    invoke-static {p1, p4, p2, p3}, La8/j2;->p(Landroid/media/AudioManager;Landroid/content/Context;Ljava/lang/String;I)V

    invoke-static {}, Lo8/k;->C()Lo8/k;

    move-result-object p1

    invoke-virtual {p1, v1, p3}, Lo8/k;->g0(Ljava/lang/String;I)V

    return-void

    :cond_0
    invoke-static {p1}, La8/j2;->k(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2

    invoke-static {}, Lo8/k;->C()Lo8/k;

    move-result-object v0

    invoke-virtual {v0}, Lo8/k;->L()Z

    move-result v0

    if-nez v0, :cond_2

    iget-object p1, p0, Lcom/miui/gamebooster/customview/y;->a:Landroid/media/AudioManager;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {p1, v0, p2, p3}, La8/j2;->p(Landroid/media/AudioManager;Landroid/content/Context;Ljava/lang/String;I)V

    invoke-static {}, Lo8/k;->C()Lo8/k;

    move-result-object p1

    invoke-virtual {p1, v1, p3}, Lo8/k;->g0(Ljava/lang/String;I)V

    invoke-direct {p0}, Lcom/miui/gamebooster/customview/y;->i0()V

    if-eqz p4, :cond_1

    const-string p1, "voice_xunyou_unavalibal"

    invoke-static {p1}, Lcom/miui/gamebooster/utils/a$n;->i(Ljava/lang/String;)V

    :cond_1
    return-void

    :cond_2
    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-static {}, La8/j2;->b()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-eqz v2, :cond_4

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    sub-long/2addr v2, v0

    const-wide/32 v0, 0xea60

    div-long/2addr v2, v0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, p2, v0}, Lcom/miui/gamebooster/utils/a;->H0(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, La8/j2;->c()J

    move-result-wide v0

    add-long/2addr v0, v2

    invoke-static {v0, v1}, La8/j2;->s(J)V

    goto :goto_0

    :cond_3
    invoke-static {}, Lo8/i;->b()Lo8/i;

    move-result-object p2

    const v0, 0x7f120af2

    invoke-virtual {p2, p0, v0}, Lo8/i;->e(Landroid/view/ViewGroup;I)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-static {v0, v1}, La8/j2;->r(J)V

    :cond_4
    :goto_0
    invoke-static {}, Lo8/k;->C()Lo8/k;

    move-result-object p2

    invoke-virtual {p2, p1, p3}, Lo8/k;->g0(Ljava/lang/String;I)V

    if-eqz p4, :cond_5

    const-string p1, "voice_xunyou_avalibal"

    invoke-static {p1}, Lcom/miui/gamebooster/utils/a$n;->i(Ljava/lang/String;)V

    :cond_5
    return-void
.end method

.method public static synthetic g(Lcom/miui/gamebooster/customview/y;)V
    .locals 0

    invoke-direct {p0}, Lcom/miui/gamebooster/customview/y;->R()V

    return-void
.end method

.method private g0(Ljava/lang/String;Z)V
    .locals 11

    if-eqz p2, :cond_0

    new-instance p2, Ljava/util/HashMap;

    invoke-direct {p2}, Ljava/util/HashMap;-><init>()V

    iget v0, p0, Lcom/miui/gamebooster/customview/y;->x:I

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    const-string v1, "voice_experience_card_days"

    invoke-interface {p2, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "voice_experience_card_dialog_show"

    invoke-static {v0, p2}, Lcom/miui/gamebooster/utils/a$n;->k(Ljava/lang/String;Ljava/util/Map;)V

    invoke-static {}, Lcom/miui/gamebooster/customview/s;->h()Lcom/miui/gamebooster/customview/s;

    move-result-object v1

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p2

    const v0, 0x7f120560

    invoke-virtual {p2, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p2

    const v0, 0x7f120567

    invoke-virtual {p2, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    new-instance v7, Lcom/miui/gamebooster/customview/t;

    invoke-direct {v7, p0}, Lcom/miui/gamebooster/customview/t;-><init>(Lcom/miui/gamebooster/customview/y;)V

    const p2, 0x7f080752

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    const p2, 0x7f080754

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    const/4 v10, 0x0

    move-object v2, p0

    move-object v3, p1

    invoke-virtual/range {v1 .. v10}, Lcom/miui/gamebooster/customview/s;->o(Landroid/view/ViewGroup;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/miui/gamebooster/customview/s$b;Lcom/miui/gamebooster/customview/s$b;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;)V

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    iget p2, p0, Lcom/miui/gamebooster/customview/y;->x:I

    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p2

    const-string v0, "voice_experience_card_dialog_click"

    invoke-interface {p1, v0, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p2, "voice_experience_card_dialog_recevie"

    invoke-static {p2, p1}, Lcom/miui/gamebooster/utils/a$n;->k(Ljava/lang/String;Ljava/util/Map;)V

    invoke-direct {p0}, Lcom/miui/gamebooster/customview/y;->a0()V

    :goto_0
    return-void
.end method

.method public static synthetic h(Lcom/miui/gamebooster/customview/y;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/miui/gamebooster/customview/y;->V(Ljava/lang/String;)V

    return-void
.end method

.method private h0()V
    .locals 2

    invoke-direct {p0}, Lcom/miui/gamebooster/customview/y;->Q()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/miui/gamebooster/customview/y;->B:Landroid/os/Handler;

    new-instance v1, Lcom/miui/gamebooster/customview/x;

    invoke-direct {v1, p0}, Lcom/miui/gamebooster/customview/x;-><init>(Lcom/miui/gamebooster/customview/y;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public static synthetic i(Lcom/miui/gamebooster/customview/y;Ljava/util/Map;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/miui/gamebooster/customview/y;->S(Ljava/util/Map;)V

    return-void
.end method

.method private i0()V
    .locals 8

    const-string v0, "voice_review_show"

    invoke-static {v0}, Lcom/miui/gamebooster/utils/a$n;->i(Ljava/lang/String;)V

    invoke-static {}, Lcom/miui/gamebooster/customview/s;->h()Lcom/miui/gamebooster/customview/s;

    move-result-object v1

    new-instance v7, Lcom/miui/gamebooster/customview/u;

    invoke-direct {v7, p0}, Lcom/miui/gamebooster/customview/u;-><init>(Lcom/miui/gamebooster/customview/y;)V

    const v3, 0x7f120b04

    const v4, 0x7f120499

    const v5, 0x7f120568

    const/4 v6, 0x0

    move-object v2, p0

    invoke-virtual/range {v1 .. v7}, Lcom/miui/gamebooster/customview/s;->m(Landroid/view/ViewGroup;IIILcom/miui/gamebooster/customview/s$b;Lcom/miui/gamebooster/customview/s$b;)V

    return-void
.end method

.method static synthetic j(Lcom/miui/gamebooster/customview/y;)Z
    .locals 0

    invoke-direct {p0}, Lcom/miui/gamebooster/customview/y;->Q()Z

    move-result p0

    return p0
.end method

.method private j0()V
    .locals 1

    iget-object v0, p0, Lcom/miui/gamebooster/customview/y;->w:Landroid/animation/ValueAnimator;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/gamebooster/customview/y;->w:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    :cond_0
    return-void
.end method

.method static synthetic k(Lcom/miui/gamebooster/customview/y;)Lcom/miui/gamebooster/customview/VoiceModeView;
    .locals 0

    iget-object p0, p0, Lcom/miui/gamebooster/customview/y;->k:Lcom/miui/gamebooster/customview/VoiceModeView;

    return-object p0
.end method

.method private k0()V
    .locals 2

    invoke-static {}, Lo8/k;->C()Lo8/k;

    move-result-object v0

    invoke-virtual {v0}, Lo8/k;->E()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_0

    iget-object v1, p0, Lcom/miui/gamebooster/customview/y;->u:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V

    iget-object v1, p0, Lcom/miui/gamebooster/customview/y;->u:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    :cond_0
    invoke-direct {p0}, Lcom/miui/gamebooster/customview/y;->Q()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/miui/gamebooster/customview/y;->s:Lq6/f;

    iget-object v1, p0, Lcom/miui/gamebooster/customview/y;->u:Ljava/util/List;

    invoke-virtual {v0, v1}, Lq6/f;->F(Ljava/util/List;)V

    iget-object v0, p0, Lcom/miui/gamebooster/customview/y;->s:Lq6/f;

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView$h;->notifyDataSetChanged()V

    :cond_1
    return-void
.end method

.method static synthetic l(Lcom/miui/gamebooster/customview/y;)I
    .locals 0

    iget p0, p0, Lcom/miui/gamebooster/customview/y;->x:I

    return p0
.end method

.method private l0(Ljava/lang/String;)V
    .locals 2

    iget-object v0, p0, Lcom/miui/gamebooster/customview/y;->B:Landroid/os/Handler;

    new-instance v1, Lcom/miui/gamebooster/customview/w;

    invoke-direct {v1, p0, p1}, Lcom/miui/gamebooster/customview/w;-><init>(Lcom/miui/gamebooster/customview/y;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method static synthetic m(Lcom/miui/gamebooster/customview/y;I)I
    .locals 0

    iput p1, p0, Lcom/miui/gamebooster/customview/y;->x:I

    return p1
.end method

.method private m0(Lcom/miui/gamebooster/voicechanger/model/VoiceTipsModel;)V
    .locals 2

    iget-object v0, p0, Lcom/miui/gamebooster/customview/y;->B:Landroid/os/Handler;

    new-instance v1, Lcom/miui/gamebooster/customview/y$i;

    invoke-direct {v1, p0, p1}, Lcom/miui/gamebooster/customview/y$i;-><init>(Lcom/miui/gamebooster/customview/y;Lcom/miui/gamebooster/voicechanger/model/VoiceTipsModel;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method static synthetic n(Lcom/miui/gamebooster/customview/y;Lcom/miui/gamebooster/customview/VoiceModeView;)Lcom/miui/gamebooster/customview/VoiceModeView;
    .locals 0

    iput-object p1, p0, Lcom/miui/gamebooster/customview/y;->k:Lcom/miui/gamebooster/customview/VoiceModeView;

    return-object p1
.end method

.method private n0(Lcom/miui/gamebooster/customview/VoiceModeView;Ljava/lang/String;Z)V
    .locals 3

    iget-boolean v0, p0, Lcom/miui/gamebooster/customview/y;->z:Z

    if-eqz v0, :cond_4

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/miui/gamebooster/customview/y;->k:Lcom/miui/gamebooster/customview/VoiceModeView;

    const/4 v1, 0x0

    const/4 v2, 0x2

    if-eq p1, v0, :cond_2

    invoke-virtual {v0}, Lcom/miui/gamebooster/customview/VoiceModeView;->getStatus()I

    move-result v0

    if-ne v0, v2, :cond_1

    invoke-direct {p0}, Lcom/miui/gamebooster/customview/y;->j0()V

    iget-object v0, p0, Lcom/miui/gamebooster/customview/y;->g:Lcom/miui/gamebooster/customview/AuditionView;

    invoke-virtual {v0}, Lcom/miui/gamebooster/customview/AuditionView;->T()V

    :cond_1
    iget-object v0, p0, Lcom/miui/gamebooster/customview/y;->k:Lcom/miui/gamebooster/customview/VoiceModeView;

    invoke-virtual {v0, v1}, Lcom/miui/gamebooster/customview/VoiceModeView;->setIonBgStatus(I)V

    :cond_2
    invoke-virtual {p1}, Lcom/miui/gamebooster/customview/VoiceModeView;->getStatus()I

    move-result v0

    if-ne v0, v2, :cond_3

    invoke-direct {p0}, Lcom/miui/gamebooster/customview/y;->j0()V

    iget-object p1, p0, Lcom/miui/gamebooster/customview/y;->g:Lcom/miui/gamebooster/customview/AuditionView;

    invoke-virtual {p1}, Lcom/miui/gamebooster/customview/AuditionView;->T()V

    goto :goto_0

    :cond_3
    if-nez v0, :cond_4

    invoke-virtual {p1}, Lcom/miui/gamebooster/customview/VoiceModeView;->getModeTitle()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p2, v0, p3}, Lcom/miui/gamebooster/customview/y;->e0(Ljava/lang/String;Ljava/lang/String;Z)V

    const/4 p2, 0x1

    invoke-virtual {p1, p2}, Lcom/miui/gamebooster/customview/VoiceModeView;->setIonBgStatus(I)V

    iget-object p1, p0, Lcom/miui/gamebooster/customview/y;->k:Lcom/miui/gamebooster/customview/VoiceModeView;

    invoke-virtual {p1, v1}, Lcom/miui/gamebooster/customview/VoiceModeView;->setIonBgStatus(I)V

    :cond_4
    :goto_0
    return-void
.end method

.method static synthetic o(Lcom/miui/gamebooster/customview/y;)Landroid/os/Handler;
    .locals 0

    iget-object p0, p0, Lcom/miui/gamebooster/customview/y;->B:Landroid/os/Handler;

    return-object p0
.end method

.method static synthetic p(Lcom/miui/gamebooster/customview/y;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    iput-object p1, p0, Lcom/miui/gamebooster/customview/y;->y:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic q(Lcom/miui/gamebooster/customview/y;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/miui/gamebooster/customview/y;->l0(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic r(Lcom/miui/gamebooster/customview/y;)V
    .locals 0

    invoke-direct {p0}, Lcom/miui/gamebooster/customview/y;->I()V

    return-void
.end method

.method static synthetic s(Lcom/miui/gamebooster/customview/y;Lcom/miui/gamebooster/voicechanger/model/VoiceTipsModel;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/miui/gamebooster/customview/y;->m0(Lcom/miui/gamebooster/voicechanger/model/VoiceTipsModel;)V

    return-void
.end method

.method static synthetic t(Lcom/miui/gamebooster/customview/y;)V
    .locals 0

    invoke-direct {p0}, Lcom/miui/gamebooster/customview/y;->Y()V

    return-void
.end method

.method static synthetic u(Lcom/miui/gamebooster/customview/y;Ljava/lang/String;Z)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/miui/gamebooster/customview/y;->g0(Ljava/lang/String;Z)V

    return-void
.end method

.method static synthetic v(Lcom/miui/gamebooster/customview/y;)V
    .locals 0

    invoke-direct {p0}, Lcom/miui/gamebooster/customview/y;->k0()V

    return-void
.end method

.method static synthetic w(Lcom/miui/gamebooster/customview/y;)Landroid/widget/TextView;
    .locals 0

    iget-object p0, p0, Lcom/miui/gamebooster/customview/y;->n:Landroid/widget/TextView;

    return-object p0
.end method

.method static synthetic x(Lcom/miui/gamebooster/customview/y;)Lq6/f;
    .locals 0

    iget-object p0, p0, Lcom/miui/gamebooster/customview/y;->s:Lq6/f;

    return-object p0
.end method

.method static synthetic y(Lcom/miui/gamebooster/customview/y;)Landroid/view/ViewGroup;
    .locals 0

    iget-object p0, p0, Lcom/miui/gamebooster/customview/y;->l:Landroid/view/ViewGroup;

    return-object p0
.end method

.method static synthetic z(Lcom/miui/gamebooster/customview/y;Lcom/miui/gamebooster/customview/VoiceModeView;Ljava/lang/String;Z)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/miui/gamebooster/customview/y;->n0(Lcom/miui/gamebooster/customview/VoiceModeView;Ljava/lang/String;Z)V

    return-void
.end method


# virtual methods
.method public K()V
    .locals 1

    iget-object v0, p0, Lcom/miui/gamebooster/customview/y;->g:Lcom/miui/gamebooster/customview/AuditionView;

    invoke-virtual {v0}, Lcom/miui/gamebooster/customview/AuditionView;->I()V

    return-void
.end method

.method public a()V
    .locals 1

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/miui/gamebooster/customview/y;->J(Z)V

    return-void
.end method

.method public b()V
    .locals 1

    const/4 v0, 0x2

    invoke-direct {p0, v0}, Lcom/miui/gamebooster/customview/y;->W(I)V

    return-void
.end method

.method public b0()V
    .locals 3

    iget-object v0, p0, Lcom/miui/gamebooster/customview/y;->s:Lq6/f;

    invoke-virtual {v0}, Lq6/f;->s()Ljava/util/List;

    move-result-object v0

    invoke-static {v0}, Lc7/c;->n(Ljava/util/Collection;)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/miui/gamebooster/voicechanger/model/VoiceModel;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/miui/gamebooster/voicechanger/model/VoiceModel;->setSelected(Z)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public c()V
    .locals 4

    invoke-direct {p0}, Lcom/miui/gamebooster/customview/y;->k0()V

    invoke-static {}, Lo8/k;->C()Lo8/k;

    move-result-object v0

    invoke-virtual {v0}, Lo8/k;->N()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/gamebooster/customview/y;->t:Landroidx/recyclerview/widget/GridLayoutManager;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/LinearLayoutManager;->findViewByPosition(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/miui/gamebooster/customview/VoiceModeView;

    if-eqz v0, :cond_0

    iput-object v0, p0, Lcom/miui/gamebooster/customview/y;->k:Lcom/miui/gamebooster/customview/VoiceModeView;

    iget-object v2, p0, Lcom/miui/gamebooster/customview/y;->s:Lq6/f;

    invoke-virtual {v2, v1}, Lq6/f;->getItem(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/miui/gamebooster/voicechanger/model/VoiceModel;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/miui/gamebooster/voicechanger/model/VoiceModel;->setSelected(Z)V

    iget-object v3, p0, Lcom/miui/gamebooster/customview/y;->s:Lq6/f;

    invoke-virtual {v3}, Landroidx/recyclerview/widget/RecyclerView$h;->notifyDataSetChanged()V

    invoke-virtual {v2}, Lcom/miui/gamebooster/voicechanger/model/VoiceModel;->getType()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v0, v2, v1}, Lcom/miui/gamebooster/customview/y;->n0(Lcom/miui/gamebooster/customview/VoiceModeView;Ljava/lang/String;Z)V

    :cond_0
    return-void
.end method

.method public d()V
    .locals 3

    invoke-static {}, Lo8/k;->C()Lo8/k;

    move-result-object v0

    invoke-virtual {v0}, Lo8/k;->x()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/miui/gamebooster/utils/a;->D0(Ljava/lang/String;)V

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, La8/d0;->b(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Landroid/content/Intent;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    const-class v2, Lcom/miui/gamebooster/voicechanger/LoginActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const/high16 v1, 0x10000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    invoke-virtual {p0}, Lcom/miui/gamebooster/customview/y;->K()V

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/miui/gamebooster/customview/y;->W(I)V

    :goto_0
    return-void
.end method

.method public d0()V
    .locals 6

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, La8/j2;->h(Landroid/content/Context;)Z

    move-result v0

    invoke-static {}, La8/g0;->A()Z

    move-result v1

    const v2, 0x7f0b094c

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-eqz v0, :cond_0

    if-eqz v1, :cond_0

    iget-object v0, p0, Lcom/miui/gamebooster/customview/y;->f:Landroid/view/View;

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/miui/gamebooster/customview/y;->d:Landroid/widget/RadioButton;

    invoke-virtual {v0, v4}, Landroid/widget/CompoundButton;->setChecked(Z)V

    iget-object v0, p0, Lcom/miui/gamebooster/customview/y;->c:Landroid/widget/RadioGroup;

    invoke-virtual {v0, v2}, Landroid/widget/RadioGroup;->check(I)V

    goto :goto_0

    :cond_0
    const v1, 0x7f1209c1

    const/16 v5, 0x8

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/miui/gamebooster/customview/y;->f:Landroid/view/View;

    invoke-virtual {v0, v5}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/miui/gamebooster/customview/y;->e:Landroid/widget/RadioButton;

    invoke-virtual {v0, v5}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/miui/gamebooster/customview/y;->d:Landroid/widget/RadioButton;

    invoke-virtual {v0, v4}, Landroid/widget/CompoundButton;->setChecked(Z)V

    iget-object v0, p0, Lcom/miui/gamebooster/customview/y;->c:Landroid/widget/RadioGroup;

    invoke-virtual {v0, v2}, Landroid/widget/RadioGroup;->check(I)V

    iget-object v0, p0, Lcom/miui/gamebooster/customview/y;->d:Landroid/widget/RadioButton;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    :goto_0
    iput v3, p0, Lcom/miui/gamebooster/customview/y;->b:I

    invoke-direct {p0, v4}, Lcom/miui/gamebooster/customview/y;->H(Z)V

    goto :goto_1

    :cond_1
    iget-object v0, p0, Lcom/miui/gamebooster/customview/y;->d:Landroid/widget/RadioButton;

    invoke-virtual {v0, v5}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/miui/gamebooster/customview/y;->f:Landroid/view/View;

    invoke-virtual {v0, v5}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/miui/gamebooster/customview/y;->e:Landroid/widget/RadioButton;

    invoke-virtual {v0, v4}, Landroid/widget/CompoundButton;->setChecked(Z)V

    iget-object v0, p0, Lcom/miui/gamebooster/customview/y;->e:Landroid/widget/RadioButton;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    iget-object v0, p0, Lcom/miui/gamebooster/customview/y;->c:Landroid/widget/RadioGroup;

    const v1, 0x7f0b0945

    invoke-virtual {v0, v1}, Landroid/widget/RadioGroup;->check(I)V

    iput v4, p0, Lcom/miui/gamebooster/customview/y;->b:I

    invoke-direct {p0, v3}, Lcom/miui/gamebooster/customview/y;->H(Z)V

    :goto_1
    return-void
.end method

.method public getSelectModel()Lcom/miui/gamebooster/voicechanger/model/VoiceModel;
    .locals 3

    iget-object v0, p0, Lcom/miui/gamebooster/customview/y;->s:Lq6/f;

    invoke-virtual {v0}, Lq6/f;->s()Ljava/util/List;

    move-result-object v0

    invoke-static {v0}, Lc7/c;->n(Ljava/util/Collection;)Z

    move-result v1

    if-nez v1, :cond_1

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/miui/gamebooster/voicechanger/model/VoiceModel;

    invoke-virtual {v1}, Lcom/miui/gamebooster/voicechanger/model/VoiceModel;->isSelected()Z

    move-result v2

    if-eqz v2, :cond_0

    return-object v1

    :cond_1
    const/4 v0, 0x0

    return-object v0
.end method

.method public getSelectView()Lcom/miui/gamebooster/customview/VoiceModeView;
    .locals 3

    iget-object v0, p0, Lcom/miui/gamebooster/customview/y;->s:Lq6/f;

    invoke-virtual {v0}, Lq6/f;->s()Ljava/util/List;

    move-result-object v0

    invoke-static {v0}, Lc7/c;->n(Ljava/util/Collection;)Z

    move-result v1

    if-nez v1, :cond_1

    const/4 v1, 0x0

    :goto_0
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_1

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/miui/gamebooster/voicechanger/model/VoiceModel;

    invoke-virtual {v2}, Lcom/miui/gamebooster/voicechanger/model/VoiceModel;->isSelected()Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v0, p0, Lcom/miui/gamebooster/customview/y;->t:Landroidx/recyclerview/widget/GridLayoutManager;

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/LinearLayoutManager;->findViewByPosition(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/miui/gamebooster/customview/VoiceModeView;

    return-object v0

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    return-object v0
.end method

.method protected onAttachedToWindow()V
    .locals 3

    invoke-super {p0}, Landroid/widget/FrameLayout;->onAttachedToWindow()V

    invoke-direct {p0}, Lcom/miui/gamebooster/customview/y;->Z()V

    invoke-virtual {p0}, Lcom/miui/gamebooster/customview/y;->d0()V

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, La8/d0;->b(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/miui/gamebooster/customview/y;->m:Landroid/widget/TextView;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f120b14

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/miui/gamebooster/customview/y;->m:Landroid/widget/TextView;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f06021a

    invoke-static {v1, v2}, Landroidx/core/content/ContextCompat;->c(Landroid/content/Context;I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    iget-object v0, p0, Lcom/miui/gamebooster/customview/y;->l:Landroid/view/ViewGroup;

    const v1, 0x7f08075b

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundResource(I)V

    iget-object v0, p0, Lcom/miui/gamebooster/customview/y;->m:Landroid/widget/TextView;

    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f071dda

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v1

    const/4 v2, 0x0

    invoke-virtual {v0, v2, v2, v1, v2}, Landroid/widget/TextView;->setPadding(IIII)V

    iget-object v0, p0, Lcom/miui/gamebooster/customview/y;->m:Landroid/widget/TextView;

    const v1, 0x7f080763

    invoke-virtual {v0, v2, v2, v1, v2}, Landroid/widget/TextView;->setCompoundDrawablesWithIntrinsicBounds(IIII)V

    goto :goto_0

    :cond_0
    invoke-direct {p0}, Lcom/miui/gamebooster/customview/y;->h0()V

    invoke-static {}, Lo8/k;->C()Lo8/k;

    move-result-object v0

    invoke-virtual {v0}, Lo8/k;->u0()V

    :goto_0
    return-void
.end method

.method public onCheckedChanged(Landroid/widget/RadioGroup;I)V
    .locals 2

    iget-object p2, p0, Lcom/miui/gamebooster/customview/y;->j:Lcom/miui/gamebooster/voicechanger/SettingsView;

    const/16 v0, 0x8

    invoke-virtual {p2, v0}, Landroid/view/View;->setVisibility(I)V

    iget-object p2, p0, Lcom/miui/gamebooster/customview/y;->i:Landroid/view/View;

    const/4 v0, 0x0

    invoke-virtual {p2, v0}, Landroid/view/View;->setVisibility(I)V

    invoke-virtual {p1}, Landroid/widget/RadioGroup;->getCheckedRadioButtonId()I

    move-result p1

    const p2, 0x7f0b0945

    const/4 v1, 0x1

    if-eq p1, p2, :cond_1

    const p2, 0x7f0b094c

    if-eq p1, p2, :cond_0

    goto :goto_0

    :cond_0
    iput v0, p0, Lcom/miui/gamebooster/customview/y;->b:I

    invoke-direct {p0, v1}, Lcom/miui/gamebooster/customview/y;->H(Z)V

    goto :goto_0

    :cond_1
    iput v1, p0, Lcom/miui/gamebooster/customview/y;->b:I

    invoke-direct {p0, v0}, Lcom/miui/gamebooster/customview/y;->H(Z)V

    :goto_0
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 5

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    const v0, 0x7f0b013a

    if-eq p1, v0, :cond_4

    const/4 v0, 0x0

    packed-switch p1, :pswitch_data_0

    goto/16 :goto_0

    :pswitch_0
    invoke-static {}, Lo8/k;->C()Lo8/k;

    move-result-object p1

    invoke-virtual {p1}, Lo8/k;->J()Z

    move-result p1

    const/4 v1, 0x1

    const-string v2, "voice_experience_card_click"

    const-string v3, "voice_experience_card_days"

    if-eqz p1, :cond_1

    invoke-static {}, Lr8/b;->d()Z

    move-result p1

    if-eqz p1, :cond_0

    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    iget v4, p0, Lcom/miui/gamebooster/customview/y;->x:I

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-interface {p1, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {v2, p1}, Lcom/miui/gamebooster/utils/a$n;->k(Ljava/lang/String;Ljava/util/Map;)V

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v2, 0x7f120b13

    invoke-virtual {p1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    new-array v1, v1, [Ljava/lang/Object;

    iget v2, p0, Lcom/miui/gamebooster/customview/y;->x:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v0

    invoke-static {p1, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1, v0}, Lcom/miui/gamebooster/customview/y;->g0(Ljava/lang/String;Z)V

    return-void

    :cond_0
    invoke-direct {p0}, Lcom/miui/gamebooster/customview/y;->a0()V

    return-void

    :cond_1
    iget-object p1, p0, Lcom/miui/gamebooster/customview/y;->y:Ljava/lang/String;

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_3

    invoke-static {}, Lr8/b;->h()Z

    move-result p1

    if-eqz p1, :cond_2

    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    iget v4, p0, Lcom/miui/gamebooster/customview/y;->x:I

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-interface {p1, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {v2, p1}, Lcom/miui/gamebooster/utils/a$n;->k(Ljava/lang/String;Ljava/util/Map;)V

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v2, 0x7f100048

    iget v3, p0, Lcom/miui/gamebooster/customview/y;->x:I

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v1, v0

    invoke-virtual {p1, v2, v3, v1}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1, v0}, Lcom/miui/gamebooster/customview/y;->g0(Ljava/lang/String;Z)V

    invoke-static {v0}, Lr8/b;->p(Z)V

    return-void

    :cond_2
    invoke-direct {p0}, Lcom/miui/gamebooster/customview/y;->a0()V

    return-void

    :cond_3
    invoke-virtual {p0}, Lcom/miui/gamebooster/customview/y;->d()V

    goto :goto_0

    :pswitch_1
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, La8/d0;->b(Landroid/content/Context;)Z

    move-result p1

    if-nez p1, :cond_5

    new-instance p1, Landroid/content/Intent;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    const-class v1, Lcom/miui/gamebooster/voicechanger/LoginActivity;

    invoke-direct {p1, v0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const/high16 v0, 0x10000000

    invoke-virtual {p1, v0}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    invoke-virtual {p0}, Lcom/miui/gamebooster/customview/y;->K()V

    goto :goto_0

    :pswitch_2
    invoke-direct {p0, v0}, Lcom/miui/gamebooster/customview/y;->J(Z)V

    goto :goto_0

    :cond_4
    iget-object p1, p0, Lcom/miui/gamebooster/customview/y;->A:Lcom/miui/gamebooster/customview/y$j;

    if-eqz p1, :cond_5

    invoke-interface {p1}, Lcom/miui/gamebooster/customview/y$j;->a()V

    :cond_5
    :goto_0
    return-void

    :pswitch_data_0
    .packed-switch 0x7f0b0c98
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method protected onDetachedFromWindow()V
    .locals 2

    invoke-static {}, Lcom/miui/gamebooster/customview/s;->h()Lcom/miui/gamebooster/customview/s;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/gamebooster/customview/s;->e()V

    iget-object v0, p0, Lcom/miui/gamebooster/customview/y;->B:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    invoke-static {}, Lo8/k;->C()Lo8/k;

    move-result-object v0

    invoke-virtual {v0, v1}, Lo8/k;->Y(Lcom/miui/gamebooster/service/MiuiVoiceChangeCallback;)V

    invoke-static {}, Lo8/g;->b()Lo8/g;

    move-result-object v0

    invoke-virtual {v0}, Lo8/g;->e()V

    invoke-super {p0}, Landroid/widget/FrameLayout;->onDetachedFromWindow()V

    return-void
.end method

.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 0

    iget-object p2, p0, Lcom/miui/gamebooster/customview/y;->h:Landroid/view/View;

    if-ne p2, p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public setBackClick(Lcom/miui/gamebooster/customview/y$j;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/gamebooster/customview/y;->A:Lcom/miui/gamebooster/customview/y$j;

    return-void
.end method

.method public setOnStatusChangeListener(Ls8/w;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/gamebooster/customview/y;->C:Ls8/w;

    return-void
.end method
