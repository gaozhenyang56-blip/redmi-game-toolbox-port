.class public Lcom/miui/gamebooster/customview/AuditionView;
.super Landroid/widget/LinearLayout;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/gamebooster/customview/AuditionView$i;,
        Lcom/miui/gamebooster/customview/AuditionView$g;,
        Lcom/miui/gamebooster/customview/AuditionView$h;,
        Lcom/miui/gamebooster/customview/AuditionView$j;
    }
.end annotation


# static fields
.field private static final F:[I


# instance fields
.field private A:J

.field private B:Ljava/lang/String;

.field private C:Lcom/miui/gamebooster/customview/AuditionView$i;

.field private D:Ljava/lang/Runnable;

.field private E:Ljava/util/concurrent/BlockingQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/BlockingQueue<",
            "[S>;"
        }
    .end annotation
.end field

.field private a:Landroid/widget/TextView;

.field private b:Landroid/view/View;

.field private c:Lcom/miui/gamebooster/customview/RecordVolumView;

.field private d:Landroid/widget/ImageView;

.field private e:Lo8/a;

.field private f:Landroid/widget/TextView;

.field private g:Landroid/content/Context;

.field private h:Landroid/media/AudioManager;

.field private i:Landroid/media/AudioRecord;

.field private j:Lcom/miui/gamebooster/customview/AuditionView$h;

.field private k:Landroid/media/AudioTrack;

.field private l:Lcom/miui/gamebooster/customview/AuditionView$g;

.field private m:Lcom/miui/gamebooster/encoder/SoundSupport;

.field private n:Lcom/miui/gamebooster/customview/n;

.field private o:Landroid/animation/AnimatorSet;

.field private p:Landroid/animation/ValueAnimator;

.field private q:Z

.field private r:Z

.field private s:Z

.field private t:Z

.field private u:I

.field private v:I

.field private w:I

.field private x:I

.field private y:I

.field private z:J


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x4

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Lcom/miui/gamebooster/customview/AuditionView;->F:[I

    return-void

    nop

    :array_0
    .array-data 4
        0x7
        0x1
        0x0
        0x5
    .end array-data
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2

    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 p2, 0x0

    iput-boolean p2, p0, Lcom/miui/gamebooster/customview/AuditionView;->r:Z

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/miui/gamebooster/customview/AuditionView;->z:J

    new-instance p2, Lcom/miui/gamebooster/customview/AuditionView$a;

    invoke-direct {p2, p0}, Lcom/miui/gamebooster/customview/AuditionView$a;-><init>(Lcom/miui/gamebooster/customview/AuditionView;)V

    iput-object p2, p0, Lcom/miui/gamebooster/customview/AuditionView;->D:Ljava/lang/Runnable;

    new-instance p2, Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-direct {p2}, Ljava/util/concurrent/LinkedBlockingQueue;-><init>()V

    iput-object p2, p0, Lcom/miui/gamebooster/customview/AuditionView;->E:Ljava/util/concurrent/BlockingQueue;

    invoke-direct {p0, p1}, Lcom/miui/gamebooster/customview/AuditionView;->M(Landroid/content/Context;)V

    return-void
.end method

.method static synthetic A(Lcom/miui/gamebooster/customview/AuditionView;)V
    .locals 0

    invoke-direct {p0}, Lcom/miui/gamebooster/customview/AuditionView;->U()V

    return-void
.end method

.method static synthetic B(Lcom/miui/gamebooster/customview/AuditionView;)Lcom/miui/gamebooster/customview/RecordVolumView;
    .locals 0

    iget-object p0, p0, Lcom/miui/gamebooster/customview/AuditionView;->c:Lcom/miui/gamebooster/customview/RecordVolumView;

    return-object p0
.end method

.method static synthetic C(Lcom/miui/gamebooster/customview/AuditionView;)Lcom/miui/gamebooster/customview/n;
    .locals 0

    iget-object p0, p0, Lcom/miui/gamebooster/customview/AuditionView;->n:Lcom/miui/gamebooster/customview/n;

    return-object p0
.end method

.method static synthetic D(Lcom/miui/gamebooster/customview/AuditionView;)Landroid/widget/ImageView;
    .locals 0

    iget-object p0, p0, Lcom/miui/gamebooster/customview/AuditionView;->d:Landroid/widget/ImageView;

    return-object p0
.end method

.method static synthetic E(Lcom/miui/gamebooster/customview/AuditionView;)Landroid/view/View;
    .locals 0

    iget-object p0, p0, Lcom/miui/gamebooster/customview/AuditionView;->b:Landroid/view/View;

    return-object p0
.end method

.method static synthetic F(Lcom/miui/gamebooster/customview/AuditionView;)Landroid/content/Context;
    .locals 0

    iget-object p0, p0, Lcom/miui/gamebooster/customview/AuditionView;->g:Landroid/content/Context;

    return-object p0
.end method

.method static synthetic G(Lcom/miui/gamebooster/customview/AuditionView;)Landroid/widget/TextView;
    .locals 0

    iget-object p0, p0, Lcom/miui/gamebooster/customview/AuditionView;->a:Landroid/widget/TextView;

    return-object p0
.end method

.method private H()V
    .locals 1

    iget-object v0, p0, Lcom/miui/gamebooster/customview/AuditionView;->p:Landroid/animation/ValueAnimator;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/gamebooster/customview/AuditionView;->p:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    :cond_0
    return-void
.end method

.method private J()V
    .locals 1

    iget-object v0, p0, Lcom/miui/gamebooster/customview/AuditionView;->o:Landroid/animation/AnimatorSet;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/gamebooster/customview/AuditionView;->o:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->cancel()V

    :cond_0
    return-void
.end method

.method private K()Landroid/media/AudioRecord;
    .locals 13

    const/16 v0, 0x3e80

    const/16 v1, 0x10

    const/4 v2, 0x2

    invoke-static {v0, v1, v2}, Landroid/media/AudioRecord;->getMinBufferSize(III)I

    move-result v0

    const/4 v1, 0x1

    const/16 v3, 0x6400

    if-ge v3, v0, :cond_0

    div-int/lit16 v0, v0, 0x400

    add-int/2addr v0, v1

    mul-int/lit16 v0, v0, 0x400

    mul-int/lit8 v3, v0, 0x2

    :cond_0
    sget-object v0, Lcom/miui/gamebooster/customview/AuditionView;->F:[I

    array-length v2, v0

    const/4 v4, 0x0

    const/4 v10, 0x0

    move v11, v4

    move-object v4, v10

    :goto_0
    if-ge v11, v2, :cond_3

    aget v5, v0, v11

    new-instance v12, Landroid/media/AudioRecord;

    const/16 v6, 0x3e80

    const/16 v7, 0x10

    const/4 v8, 0x2

    move-object v4, v12

    move v9, v3

    invoke-direct/range {v4 .. v9}, Landroid/media/AudioRecord;-><init>(IIIII)V

    invoke-virtual {v12}, Landroid/media/AudioRecord;->getState()I

    move-result v4

    if-eq v4, v1, :cond_1

    invoke-virtual {v12}, Landroid/media/AudioRecord;->release()V

    move-object v4, v10

    goto :goto_1

    :cond_1
    move-object v4, v12

    :goto_1
    if-eqz v4, :cond_2

    goto :goto_2

    :cond_2
    add-int/lit8 v11, v11, 0x1

    goto :goto_0

    :cond_3
    :goto_2
    return-object v4
.end method

.method private L()V
    .locals 2

    :try_start_0
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1d

    if-le v0, v1, :cond_0

    const-class v0, Landroid/media/AudioManager;

    const-string v1, "STREAM_ASSISTANT"

    invoke-static {v0, v1}, Lbh/f;->m(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    :goto_0
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iput v0, p0, Lcom/miui/gamebooster/customview/AuditionView;->y:I

    goto :goto_1

    :cond_0
    const-class v0, Landroid/media/AudioManager;

    const-string v1, "STREAM_VOICEASSIST"

    invoke-static {v0, v1}, Lbh/f;->m(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const/4 v0, 0x1

    iput v0, p0, Lcom/miui/gamebooster/customview/AuditionView;->y:I

    const-string v0, "AuditionView"

    const-string v1, "get stream voiceassist failed"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_1
    return-void
.end method

.method private M(Landroid/content/Context;)V
    .locals 9

    iput-object p1, p0, Lcom/miui/gamebooster/customview/AuditionView;->g:Landroid/content/Context;

    invoke-direct {p0}, Lcom/miui/gamebooster/customview/AuditionView;->K()Landroid/media/AudioRecord;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/gamebooster/customview/AuditionView;->i:Landroid/media/AudioRecord;

    iget-object v0, p0, Lcom/miui/gamebooster/customview/AuditionView;->g:Landroid/content/Context;

    const-string v1, "audio"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    iput-object v0, p0, Lcom/miui/gamebooster/customview/AuditionView;->h:Landroid/media/AudioManager;

    new-instance v0, Lcom/miui/gamebooster/customview/AuditionView$i;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/miui/gamebooster/customview/AuditionView$i;-><init>(Lcom/miui/gamebooster/customview/AuditionView;Lcom/miui/gamebooster/customview/AuditionView$a;)V

    iput-object v0, p0, Lcom/miui/gamebooster/customview/AuditionView;->C:Lcom/miui/gamebooster/customview/AuditionView$i;

    invoke-direct {p0}, Lcom/miui/gamebooster/customview/AuditionView;->L()V

    invoke-direct {p0}, Lcom/miui/gamebooster/customview/AuditionView;->O()Z

    move-result v0

    iput-boolean v0, p0, Lcom/miui/gamebooster/customview/AuditionView;->t:Z

    const/4 v1, 0x0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/miui/gamebooster/customview/AuditionView;->h:Landroid/media/AudioManager;

    const/4 v2, 0x3

    invoke-virtual {v0, v2}, Landroid/media/AudioManager;->getStreamVolume(I)I

    move-result v0

    iput v0, p0, Lcom/miui/gamebooster/customview/AuditionView;->u:I

    iget-object v0, p0, Lcom/miui/gamebooster/customview/AuditionView;->h:Landroid/media/AudioManager;

    invoke-virtual {v0, v1}, Landroid/media/AudioManager;->getStreamVolume(I)I

    move-result v0

    iput v0, p0, Lcom/miui/gamebooster/customview/AuditionView;->w:I

    iget-object v0, p0, Lcom/miui/gamebooster/customview/AuditionView;->h:Landroid/media/AudioManager;

    iget v2, p0, Lcom/miui/gamebooster/customview/AuditionView;->y:I

    invoke-virtual {v0, v2}, Landroid/media/AudioManager;->getStreamVolume(I)I

    move-result v0

    iput v0, p0, Lcom/miui/gamebooster/customview/AuditionView;->v:I

    :cond_0
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p1

    const v0, 0x7f0e0214

    invoke-virtual {p1, v0, p0, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    const v0, 0x7f0b057c

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/miui/gamebooster/customview/AuditionView;->a:Landroid/widget/TextView;

    const v0, 0x7f0b0bc3

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/gamebooster/customview/AuditionView;->b:Landroid/view/View;

    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v2, 0x7f1209fc

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v4

    const/4 v5, 0x1

    new-array v6, v5, [Ljava/lang/Object;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v6, v1

    const-string v7, "%d"

    invoke-static {v4, v7, v6}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v1

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v4

    new-array v6, v5, [Ljava/lang/Object;

    const/16 v8, 0xa

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v6, v1

    invoke-static {v4, v7, v6}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v3, v5

    invoke-virtual {v0, v2, v3}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/gamebooster/customview/AuditionView;->B:Ljava/lang/String;

    iget-object v1, p0, Lcom/miui/gamebooster/customview/AuditionView;->a:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const v0, 0x7f0b0961

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/miui/gamebooster/customview/AuditionView;->d:Landroid/widget/ImageView;

    const v0, 0x7f0b0963

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/miui/gamebooster/customview/RecordVolumView;

    iput-object v0, p0, Lcom/miui/gamebooster/customview/AuditionView;->c:Lcom/miui/gamebooster/customview/RecordVolumView;

    const v0, 0x7f0b0cac

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/miui/gamebooster/customview/AuditionView;->f:Landroid/widget/TextView;

    iget-object p1, p0, Lcom/miui/gamebooster/customview/AuditionView;->d:Landroid/widget/ImageView;

    invoke-virtual {p1, p0}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    new-instance p1, Lcom/miui/gamebooster/customview/n;

    iget-object v0, p0, Lcom/miui/gamebooster/customview/AuditionView;->g:Landroid/content/Context;

    invoke-direct {p1, v0}, Lcom/miui/gamebooster/customview/n;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, Lcom/miui/gamebooster/customview/AuditionView;->n:Lcom/miui/gamebooster/customview/n;

    iget-object v0, p0, Lcom/miui/gamebooster/customview/AuditionView;->d:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method private N()Z
    .locals 1

    invoke-static {}, La8/j2;->d()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, La8/j2;->l(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method private O()Z
    .locals 2

    iget-object v0, p0, Lcom/miui/gamebooster/customview/AuditionView;->g:Landroid/content/Context;

    const-string v1, "notification"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationManager;

    invoke-virtual {v0}, Landroid/app/NotificationManager;->getCurrentInterruptionFilter()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private P(Z)V
    .locals 2

    :try_start_0
    iget-object v0, p0, Lcom/miui/gamebooster/customview/AuditionView;->E:Ljava/util/concurrent/BlockingQueue;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/Collection;->clear()V

    iget-object v0, p0, Lcom/miui/gamebooster/customview/AuditionView;->E:Ljava/util/concurrent/BlockingQueue;

    invoke-static {}, Lo8/k;->C()Lo8/k;

    move-result-object v1

    invoke-virtual {v1, p1}, Lo8/k;->u(Z)[S

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/concurrent/BlockingQueue;->put(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_0
    :goto_0
    return-void
.end method

.method private Q()V
    .locals 7

    const/4 v0, 0x4

    new-array v1, v0, [I

    fill-array-data v1, :array_0

    invoke-static {v1}, Landroid/animation/ValueAnimator;->ofInt([I)Landroid/animation/ValueAnimator;

    move-result-object v1

    const-wide/16 v2, 0x1f4

    invoke-virtual {v1, v2, v3}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    const/16 v4, 0x14

    invoke-virtual {v1, v4}, Landroid/animation/ValueAnimator;->setRepeatCount(I)V

    const/4 v5, 0x2

    invoke-virtual {v1, v5}, Landroid/animation/ValueAnimator;->setRepeatMode(I)V

    new-instance v6, Lcom/miui/gamebooster/customview/AuditionView$c;

    invoke-direct {v6, p0}, Lcom/miui/gamebooster/customview/AuditionView$c;-><init>(Lcom/miui/gamebooster/customview/AuditionView;)V

    invoke-virtual {v1, v6}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    new-array v0, v0, [F

    fill-array-data v0, :array_1

    invoke-static {v0}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v0

    invoke-virtual {v0, v2, v3}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    invoke-virtual {v0, v4}, Landroid/animation/ValueAnimator;->setRepeatCount(I)V

    invoke-virtual {v0, v5}, Landroid/animation/ValueAnimator;->setRepeatMode(I)V

    new-instance v2, Lcom/miui/gamebooster/customview/AuditionView$d;

    invoke-direct {v2, p0}, Lcom/miui/gamebooster/customview/AuditionView$d;-><init>(Lcom/miui/gamebooster/customview/AuditionView;)V

    invoke-virtual {v0, v2}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    new-instance v2, Landroid/animation/AnimatorSet;

    invoke-direct {v2}, Landroid/animation/AnimatorSet;-><init>()V

    iput-object v2, p0, Lcom/miui/gamebooster/customview/AuditionView;->o:Landroid/animation/AnimatorSet;

    new-instance v3, Landroid/view/animation/LinearInterpolator;

    invoke-direct {v3}, Landroid/view/animation/LinearInterpolator;-><init>()V

    invoke-virtual {v2, v3}, Landroid/animation/AnimatorSet;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    iget-object v2, p0, Lcom/miui/gamebooster/customview/AuditionView;->o:Landroid/animation/AnimatorSet;

    new-array v3, v5, [Landroid/animation/Animator;

    const/4 v4, 0x0

    aput-object v1, v3, v4

    const/4 v1, 0x1

    aput-object v0, v3, v1

    invoke-virtual {v2, v3}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    iget-object v0, p0, Lcom/miui/gamebooster/customview/AuditionView;->o:Landroid/animation/AnimatorSet;

    new-instance v1, Lcom/miui/gamebooster/customview/AuditionView$e;

    invoke-direct {v1, p0}, Lcom/miui/gamebooster/customview/AuditionView$e;-><init>(Lcom/miui/gamebooster/customview/AuditionView;)V

    invoke-virtual {v0, v1}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    iget-object v0, p0, Lcom/miui/gamebooster/customview/AuditionView;->o:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->start()V

    return-void

    :array_0
    .array-data 4
        0xff
        0x99
        0x99
        0xff
    .end array-data

    :array_1
    .array-data 4
        0x3f800000    # 1.0f
        0x3f8ccccd    # 1.1f
        0x3f8ccccd    # 1.1f
        0x3f800000    # 1.0f
    .end array-data
.end method

.method private R()V
    .locals 3

    const/4 v0, 0x6

    new-array v0, v0, [F

    fill-array-data v0, :array_0

    invoke-static {v0}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/gamebooster/customview/AuditionView;->p:Landroid/animation/ValueAnimator;

    const-wide/16 v1, 0x7d0

    invoke-virtual {v0, v1, v2}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    iget-object v0, p0, Lcom/miui/gamebooster/customview/AuditionView;->p:Landroid/animation/ValueAnimator;

    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->setRepeatCount(I)V

    iget-object v0, p0, Lcom/miui/gamebooster/customview/AuditionView;->p:Landroid/animation/ValueAnimator;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->setRepeatMode(I)V

    iget-object v0, p0, Lcom/miui/gamebooster/customview/AuditionView;->p:Landroid/animation/ValueAnimator;

    new-instance v1, Lcom/miui/gamebooster/customview/AuditionView$b;

    invoke-direct {v1, p0}, Lcom/miui/gamebooster/customview/AuditionView$b;-><init>(Lcom/miui/gamebooster/customview/AuditionView;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    iget-object v0, p0, Lcom/miui/gamebooster/customview/AuditionView;->p:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    return-void

    nop

    :array_0
    .array-data 4
        0x3f800000    # 1.0f
        0x40a00000    # 5.0f
        0x41100000    # 9.0f
        0x41100000    # 9.0f
        0x40a00000    # 5.0f
        0x3f800000    # 1.0f
    .end array-data
.end method

.method private S()V
    .locals 2

    iget-object v0, p0, Lcom/miui/gamebooster/customview/AuditionView;->g:Landroid/content/Context;

    const v1, 0x7f010048

    invoke-static {v0, v1}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/gamebooster/customview/AuditionView;->c:Lcom/miui/gamebooster/customview/RecordVolumView;

    invoke-virtual {v1, v0}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    new-instance v1, Lcom/miui/gamebooster/customview/AuditionView$f;

    invoke-direct {v1, p0}, Lcom/miui/gamebooster/customview/AuditionView$f;-><init>(Lcom/miui/gamebooster/customview/AuditionView;)V

    invoke-virtual {v0, v1}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    return-void
.end method

.method private U()V
    .locals 4

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/miui/gamebooster/customview/AuditionView;->z:J

    sub-long/2addr v0, v2

    iput-wide v0, p0, Lcom/miui/gamebooster/customview/AuditionView;->z:J

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/miui/gamebooster/customview/AuditionView;->q:Z

    iget-object v1, p0, Lcom/miui/gamebooster/customview/AuditionView;->e:Lo8/a;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lo8/a;->c(Z)V

    iput-boolean v0, p0, Lcom/miui/gamebooster/customview/AuditionView;->r:Z

    invoke-direct {p0}, Lcom/miui/gamebooster/customview/AuditionView;->S()V

    iget-object v1, p0, Lcom/miui/gamebooster/customview/AuditionView;->n:Lcom/miui/gamebooster/customview/n;

    invoke-virtual {v1, v0}, Lcom/miui/gamebooster/customview/n;->a(Z)V

    invoke-direct {p0}, Lcom/miui/gamebooster/customview/AuditionView;->J()V

    invoke-direct {p0}, Lcom/miui/gamebooster/customview/AuditionView;->H()V

    iget-object v0, p0, Lcom/miui/gamebooster/customview/AuditionView;->l:Lcom/miui/gamebooster/customview/AuditionView$g;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/miui/gamebooster/customview/AuditionView$g;->d()V

    :cond_0
    iget-object v0, p0, Lcom/miui/gamebooster/customview/AuditionView;->i:Landroid/media/AudioRecord;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/media/AudioRecord;->stop()V

    :cond_1
    iget-object v0, p0, Lcom/miui/gamebooster/customview/AuditionView;->m:Lcom/miui/gamebooster/encoder/SoundSupport;

    invoke-virtual {v0}, Lcom/miui/gamebooster/encoder/SoundSupport;->release()V

    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/miui/gamebooster/customview/AuditionView$j;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/miui/gamebooster/customview/AuditionView$j;-><init>(Lcom/miui/gamebooster/customview/AuditionView;Lcom/miui/gamebooster/customview/AuditionView$a;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    return-void
.end method

.method static synthetic a(Lcom/miui/gamebooster/customview/AuditionView;)I
    .locals 0

    iget p0, p0, Lcom/miui/gamebooster/customview/AuditionView;->x:I

    return p0
.end method

.method static synthetic b(Lcom/miui/gamebooster/customview/AuditionView;I)I
    .locals 0

    iput p1, p0, Lcom/miui/gamebooster/customview/AuditionView;->x:I

    return p1
.end method

.method static synthetic c(Lcom/miui/gamebooster/customview/AuditionView;I)I
    .locals 1

    iget v0, p0, Lcom/miui/gamebooster/customview/AuditionView;->x:I

    add-int/2addr v0, p1

    iput v0, p0, Lcom/miui/gamebooster/customview/AuditionView;->x:I

    return v0
.end method

.method static synthetic d(Lcom/miui/gamebooster/customview/AuditionView;)Lcom/miui/gamebooster/customview/AuditionView$i;
    .locals 0

    iget-object p0, p0, Lcom/miui/gamebooster/customview/AuditionView;->C:Lcom/miui/gamebooster/customview/AuditionView$i;

    return-object p0
.end method

.method static synthetic e(Lcom/miui/gamebooster/customview/AuditionView;)Z
    .locals 0

    invoke-direct {p0}, Lcom/miui/gamebooster/customview/AuditionView;->N()Z

    move-result p0

    return p0
.end method

.method static synthetic f(Lcom/miui/gamebooster/customview/AuditionView;Z)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/miui/gamebooster/customview/AuditionView;->P(Z)V

    return-void
.end method

.method static synthetic g(Lcom/miui/gamebooster/customview/AuditionView;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/miui/gamebooster/customview/AuditionView;->t:Z

    return p0
.end method

.method private getToastParent()Landroid/view/ViewGroup;
    .locals 2

    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Landroid/view/ViewParent;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Landroid/view/ViewParent;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    instance-of v1, v0, Landroid/widget/FrameLayout;

    if-eqz v1, :cond_0

    :cond_1
    check-cast v0, Landroid/view/ViewGroup;

    return-object v0
.end method

.method static synthetic h(Lcom/miui/gamebooster/customview/AuditionView;)Landroid/media/AudioManager;
    .locals 0

    iget-object p0, p0, Lcom/miui/gamebooster/customview/AuditionView;->h:Landroid/media/AudioManager;

    return-object p0
.end method

.method static synthetic i(Lcom/miui/gamebooster/customview/AuditionView;)I
    .locals 0

    iget p0, p0, Lcom/miui/gamebooster/customview/AuditionView;->v:I

    return p0
.end method

.method static synthetic j(Lcom/miui/gamebooster/customview/AuditionView;I)I
    .locals 0

    iput p1, p0, Lcom/miui/gamebooster/customview/AuditionView;->v:I

    return p1
.end method

.method static synthetic k(Lcom/miui/gamebooster/customview/AuditionView;)I
    .locals 0

    iget p0, p0, Lcom/miui/gamebooster/customview/AuditionView;->y:I

    return p0
.end method

.method static synthetic l(Lcom/miui/gamebooster/customview/AuditionView;)Landroid/media/AudioTrack;
    .locals 0

    iget-object p0, p0, Lcom/miui/gamebooster/customview/AuditionView;->k:Landroid/media/AudioTrack;

    return-object p0
.end method

.method static synthetic m(Lcom/miui/gamebooster/customview/AuditionView;Landroid/media/AudioTrack;)Landroid/media/AudioTrack;
    .locals 0

    iput-object p1, p0, Lcom/miui/gamebooster/customview/AuditionView;->k:Landroid/media/AudioTrack;

    return-object p1
.end method

.method static synthetic n(Lcom/miui/gamebooster/customview/AuditionView;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/miui/gamebooster/customview/AuditionView;->q:Z

    return p0
.end method

.method static synthetic o(Lcom/miui/gamebooster/customview/AuditionView;)Ljava/util/concurrent/BlockingQueue;
    .locals 0

    iget-object p0, p0, Lcom/miui/gamebooster/customview/AuditionView;->E:Ljava/util/concurrent/BlockingQueue;

    return-object p0
.end method

.method static synthetic p(Lcom/miui/gamebooster/customview/AuditionView;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/miui/gamebooster/customview/AuditionView;->r:Z

    return p0
.end method

.method static synthetic q(Lcom/miui/gamebooster/customview/AuditionView;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/miui/gamebooster/customview/AuditionView;->r:Z

    return p1
.end method

.method static synthetic r(Lcom/miui/gamebooster/customview/AuditionView;)I
    .locals 0

    iget p0, p0, Lcom/miui/gamebooster/customview/AuditionView;->u:I

    return p0
.end method

.method static synthetic s(Lcom/miui/gamebooster/customview/AuditionView;)I
    .locals 0

    iget p0, p0, Lcom/miui/gamebooster/customview/AuditionView;->w:I

    return p0
.end method

.method static synthetic t(Lcom/miui/gamebooster/customview/AuditionView;)Landroid/media/AudioRecord;
    .locals 0

    invoke-direct {p0}, Lcom/miui/gamebooster/customview/AuditionView;->K()Landroid/media/AudioRecord;

    move-result-object p0

    return-object p0
.end method

.method static synthetic u(Lcom/miui/gamebooster/customview/AuditionView;)Lcom/miui/gamebooster/customview/AuditionView$g;
    .locals 0

    iget-object p0, p0, Lcom/miui/gamebooster/customview/AuditionView;->l:Lcom/miui/gamebooster/customview/AuditionView$g;

    return-object p0
.end method

.method static synthetic v(Lcom/miui/gamebooster/customview/AuditionView;)Lcom/miui/gamebooster/encoder/SoundSupport;
    .locals 0

    iget-object p0, p0, Lcom/miui/gamebooster/customview/AuditionView;->m:Lcom/miui/gamebooster/encoder/SoundSupport;

    return-object p0
.end method

.method static synthetic w(Lcom/miui/gamebooster/customview/AuditionView;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/miui/gamebooster/customview/AuditionView;->B:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic x(Lcom/miui/gamebooster/customview/AuditionView;)Lo8/a;
    .locals 0

    iget-object p0, p0, Lcom/miui/gamebooster/customview/AuditionView;->e:Lo8/a;

    return-object p0
.end method

.method static synthetic y(Lcom/miui/gamebooster/customview/AuditionView;)J
    .locals 2

    iget-wide v0, p0, Lcom/miui/gamebooster/customview/AuditionView;->z:J

    return-wide v0
.end method

.method static synthetic z(Lcom/miui/gamebooster/customview/AuditionView;)Ljava/lang/Runnable;
    .locals 0

    iget-object p0, p0, Lcom/miui/gamebooster/customview/AuditionView;->D:Ljava/lang/Runnable;

    return-object p0
.end method


# virtual methods
.method public I()V
    .locals 4

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/miui/gamebooster/customview/AuditionView;->r:Z

    iget-object v0, p0, Lcom/miui/gamebooster/customview/AuditionView;->k:Landroid/media/AudioTrack;

    const/4 v1, 0x3

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/media/AudioTrack;->getPlayState()I

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/gamebooster/customview/AuditionView;->k:Landroid/media/AudioTrack;

    invoke-virtual {v0}, Landroid/media/AudioTrack;->getPlayState()I

    move-result v0

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/miui/gamebooster/customview/AuditionView;->k:Landroid/media/AudioTrack;

    invoke-virtual {v0}, Landroid/media/AudioTrack;->stop()V

    iget-object v0, p0, Lcom/miui/gamebooster/customview/AuditionView;->k:Landroid/media/AudioTrack;

    invoke-virtual {v0}, Landroid/media/AudioTrack;->release()V

    :cond_0
    iget-object v0, p0, Lcom/miui/gamebooster/customview/AuditionView;->i:Landroid/media/AudioRecord;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/media/AudioRecord;->release()V

    :cond_1
    iget-boolean v0, p0, Lcom/miui/gamebooster/customview/AuditionView;->t:Z

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/miui/gamebooster/customview/AuditionView;->h:Landroid/media/AudioManager;

    iget v2, p0, Lcom/miui/gamebooster/customview/AuditionView;->u:I

    const/4 v3, 0x4

    invoke-virtual {v0, v1, v2, v3}, Landroid/media/AudioManager;->setStreamVolume(III)V

    iget-object v0, p0, Lcom/miui/gamebooster/customview/AuditionView;->h:Landroid/media/AudioManager;

    const/4 v1, 0x0

    iget v2, p0, Lcom/miui/gamebooster/customview/AuditionView;->w:I

    invoke-virtual {v0, v1, v2, v3}, Landroid/media/AudioManager;->setStreamVolume(III)V

    iget-object v0, p0, Lcom/miui/gamebooster/customview/AuditionView;->h:Landroid/media/AudioManager;

    iget v1, p0, Lcom/miui/gamebooster/customview/AuditionView;->y:I

    iget v2, p0, Lcom/miui/gamebooster/customview/AuditionView;->v:I

    invoke-virtual {v0, v1, v2, v3}, Landroid/media/AudioManager;->setStreamVolume(III)V

    :cond_2
    iget-object v0, p0, Lcom/miui/gamebooster/customview/AuditionView;->C:Lcom/miui/gamebooster/customview/AuditionView$i;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    return-void
.end method

.method public T()V
    .locals 4

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/miui/gamebooster/customview/AuditionView;->r:Z

    iget-object v0, p0, Lcom/miui/gamebooster/customview/AuditionView;->k:Landroid/media/AudioTrack;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/media/AudioTrack;->getState()I

    move-result v0

    const/4 v1, 0x3

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/gamebooster/customview/AuditionView;->k:Landroid/media/AudioTrack;

    invoke-virtual {v0}, Landroid/media/AudioTrack;->getPlayState()I

    move-result v0

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/miui/gamebooster/customview/AuditionView;->k:Landroid/media/AudioTrack;

    invoke-virtual {v0}, Landroid/media/AudioTrack;->stop()V

    iget-object v0, p0, Lcom/miui/gamebooster/customview/AuditionView;->k:Landroid/media/AudioTrack;

    invoke-virtual {v0}, Landroid/media/AudioTrack;->release()V

    :cond_0
    iget-object v0, p0, Lcom/miui/gamebooster/customview/AuditionView;->E:Ljava/util/concurrent/BlockingQueue;

    invoke-interface {v0}, Ljava/util/Collection;->clear()V

    iget-object v0, p0, Lcom/miui/gamebooster/customview/AuditionView;->C:Lcom/miui/gamebooster/customview/AuditionView$i;

    const/4 v2, 0x2

    invoke-virtual {v0, v2}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    iget-boolean v0, p0, Lcom/miui/gamebooster/customview/AuditionView;->t:Z

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/miui/gamebooster/customview/AuditionView;->h:Landroid/media/AudioManager;

    iget v2, p0, Lcom/miui/gamebooster/customview/AuditionView;->u:I

    const/4 v3, 0x4

    invoke-virtual {v0, v1, v2, v3}, Landroid/media/AudioManager;->setStreamVolume(III)V

    iget-object v0, p0, Lcom/miui/gamebooster/customview/AuditionView;->h:Landroid/media/AudioManager;

    const/4 v1, 0x0

    iget v2, p0, Lcom/miui/gamebooster/customview/AuditionView;->w:I

    invoke-virtual {v0, v1, v2, v3}, Landroid/media/AudioManager;->setStreamVolume(III)V

    iget-object v0, p0, Lcom/miui/gamebooster/customview/AuditionView;->h:Landroid/media/AudioManager;

    iget v1, p0, Lcom/miui/gamebooster/customview/AuditionView;->y:I

    iget v2, p0, Lcom/miui/gamebooster/customview/AuditionView;->v:I

    invoke-virtual {v0, v1, v2, v3}, Landroid/media/AudioManager;->setStreamVolume(III)V

    :cond_1
    return-void
.end method

.method protected onMeasure(II)V
    .locals 2

    invoke-super {p0, p1, p2}, Landroid/widget/LinearLayout;->onMeasure(II)V

    iget-object v0, p0, Lcom/miui/gamebooster/customview/AuditionView;->f:Landroid/widget/TextView;

    invoke-virtual {p0, v0, p1, p2}, Landroid/view/ViewGroup;->measureChild(Landroid/view/View;II)V

    invoke-virtual {p0}, Landroid/view/View;->getMeasuredWidth()I

    move-result p1

    iget-object p2, p0, Lcom/miui/gamebooster/customview/AuditionView;->f:Landroid/widget/TextView;

    invoke-virtual {p2}, Landroid/view/View;->getMeasuredWidth()I

    move-result p2

    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f071dcf

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    sub-int/2addr p1, p2

    iget-object p2, p0, Lcom/miui/gamebooster/customview/AuditionView;->b:Landroid/view/View;

    invoke-virtual {p2}, Landroid/view/View;->getPaddingStart()I

    move-result p2

    sub-int/2addr p1, p2

    iget-object p2, p0, Lcom/miui/gamebooster/customview/AuditionView;->b:Landroid/view/View;

    invoke-virtual {p2}, Landroid/view/View;->getPaddingEnd()I

    move-result p2

    sub-int/2addr p1, p2

    sub-int/2addr p1, v0

    iget-object p2, p0, Lcom/miui/gamebooster/customview/AuditionView;->a:Landroid/widget/TextView;

    invoke-virtual {p2, p1}, Landroid/widget/TextView;->setMaxWidth(I)V

    return-void
.end method

.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 8

    iget-object v0, p0, Lcom/miui/gamebooster/customview/AuditionView;->d:Landroid/widget/ImageView;

    const/4 v1, 0x1

    if-ne p1, v0, :cond_b

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result p1

    const/4 p2, 0x3

    if-eqz p1, :cond_2

    if-eq p1, v1, :cond_0

    goto/16 :goto_1

    :cond_0
    iget-boolean p1, p0, Lcom/miui/gamebooster/customview/AuditionView;->s:Z

    if-nez p1, :cond_b

    iget-object p1, p0, Lcom/miui/gamebooster/customview/AuditionView;->k:Landroid/media/AudioTrack;

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Landroid/media/AudioTrack;->getPlayState()I

    move-result p1

    if-ne p1, p2, :cond_1

    goto/16 :goto_1

    :cond_1
    iget-object p1, p0, Lcom/miui/gamebooster/customview/AuditionView;->C:Lcom/miui/gamebooster/customview/AuditionView$i;

    iget-object p2, p0, Lcom/miui/gamebooster/customview/AuditionView;->D:Ljava/lang/Runnable;

    invoke-virtual {p1, p2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    invoke-direct {p0}, Lcom/miui/gamebooster/customview/AuditionView;->U()V

    goto/16 :goto_1

    :cond_2
    invoke-static {}, La8/j2;->a()Z

    move-result p1

    const/4 v0, 0x0

    if-nez p1, :cond_3

    new-instance p1, Landroid/content/Intent;

    const-string p2, "com.miui.gamebooster.action.XUNYOU_ALERT_ACTIVITY"

    invoke-direct {p1, p2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    iget-object p2, p0, Lcom/miui/gamebooster/customview/AuditionView;->g:Landroid/content/Context;

    invoke-virtual {p2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    const-string p2, "alertType"

    const-string v1, "voice_changer_permission_dialog"

    invoke-virtual {p1, p2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const/high16 p2, 0x10000000

    invoke-virtual {p1, p2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    iget-object p2, p0, Lcom/miui/gamebooster/customview/AuditionView;->g:Landroid/content/Context;

    invoke-virtual {p2, p1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    return v0

    :cond_3
    invoke-direct {p0}, Lcom/miui/gamebooster/customview/AuditionView;->N()Z

    move-result p1

    if-eqz p1, :cond_4

    iget-object p1, p0, Lcom/miui/gamebooster/customview/AuditionView;->g:Landroid/content/Context;

    invoke-static {p1}, La8/d0;->b(Landroid/content/Context;)Z

    move-result p1

    if-nez p1, :cond_4

    invoke-static {}, Lo8/i;->b()Lo8/i;

    move-result-object p1

    invoke-direct {p0}, Lcom/miui/gamebooster/customview/AuditionView;->getToastParent()Landroid/view/ViewGroup;

    move-result-object p2

    const v1, 0x7f120b14

    invoke-virtual {p1, p2, v1}, Lo8/i;->e(Landroid/view/ViewGroup;I)V

    return v0

    :cond_4
    iget-wide v2, p0, Lcom/miui/gamebooster/customview/AuditionView;->A:J

    const-wide/16 v4, 0x0

    cmp-long p1, v2, v4

    const-wide/16 v2, 0x3e8

    if-nez p1, :cond_5

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    sub-long/2addr v4, v2

    iput-wide v4, p0, Lcom/miui/gamebooster/customview/AuditionView;->A:J

    :cond_5
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    iget-wide v6, p0, Lcom/miui/gamebooster/customview/AuditionView;->A:J

    sub-long/2addr v4, v6

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    iput-wide v6, p0, Lcom/miui/gamebooster/customview/AuditionView;->A:J

    cmp-long p1, v4, v2

    if-gez p1, :cond_6

    iput-boolean v1, p0, Lcom/miui/gamebooster/customview/AuditionView;->s:Z

    invoke-static {}, Lo8/i;->b()Lo8/i;

    move-result-object p1

    invoke-direct {p0}, Lcom/miui/gamebooster/customview/AuditionView;->getToastParent()Landroid/view/ViewGroup;

    move-result-object p2

    const v0, 0x7f120a81

    invoke-virtual {p1, p2, v0}, Lo8/i;->e(Landroid/view/ViewGroup;I)V

    goto/16 :goto_1

    :cond_6
    iput-boolean v0, p0, Lcom/miui/gamebooster/customview/AuditionView;->s:Z

    iget-object p1, p0, Lcom/miui/gamebooster/customview/AuditionView;->k:Landroid/media/AudioTrack;

    if-eqz p1, :cond_7

    invoke-virtual {p1}, Landroid/media/AudioTrack;->getPlayState()I

    move-result p1

    if-ne p1, p2, :cond_7

    invoke-virtual {p0}, Lcom/miui/gamebooster/customview/AuditionView;->T()V

    :cond_7
    iget-boolean p1, p0, Lcom/miui/gamebooster/customview/AuditionView;->t:Z

    if-nez p1, :cond_8

    iget-object p1, p0, Lcom/miui/gamebooster/customview/AuditionView;->h:Landroid/media/AudioManager;

    invoke-virtual {p1, p2}, Landroid/media/AudioManager;->getStreamVolume(I)I

    move-result p1

    iput p1, p0, Lcom/miui/gamebooster/customview/AuditionView;->u:I

    iget-object p1, p0, Lcom/miui/gamebooster/customview/AuditionView;->h:Landroid/media/AudioManager;

    invoke-virtual {p1, v0}, Landroid/media/AudioManager;->getStreamVolume(I)I

    move-result p1

    iput p1, p0, Lcom/miui/gamebooster/customview/AuditionView;->w:I

    iget-object p1, p0, Lcom/miui/gamebooster/customview/AuditionView;->h:Landroid/media/AudioManager;

    const/4 v4, 0x4

    invoke-virtual {p1, p2, v0, v4}, Landroid/media/AudioManager;->setStreamVolume(III)V

    iget-object p1, p0, Lcom/miui/gamebooster/customview/AuditionView;->h:Landroid/media/AudioManager;

    invoke-virtual {p1, v0, v0, v4}, Landroid/media/AudioManager;->setStreamVolume(III)V

    :cond_8
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide p1

    iput-wide p1, p0, Lcom/miui/gamebooster/customview/AuditionView;->z:J

    iput-boolean v1, p0, Lcom/miui/gamebooster/customview/AuditionView;->q:Z

    iget-object p1, p0, Lcom/miui/gamebooster/customview/AuditionView;->e:Lo8/a;

    invoke-virtual {p1, v0}, Lo8/a;->c(Z)V

    new-instance p1, Lcom/miui/gamebooster/encoder/SoundSupport;

    const/16 p2, 0x3e80

    invoke-direct {p1, p2, v1}, Lcom/miui/gamebooster/encoder/SoundSupport;-><init>(II)V

    iput-object p1, p0, Lcom/miui/gamebooster/customview/AuditionView;->m:Lcom/miui/gamebooster/encoder/SoundSupport;

    iget-object p1, p0, Lcom/miui/gamebooster/customview/AuditionView;->n:Lcom/miui/gamebooster/customview/n;

    invoke-virtual {p1, v1}, Lcom/miui/gamebooster/customview/n;->a(Z)V

    iget-object p1, p0, Lcom/miui/gamebooster/customview/AuditionView;->E:Ljava/util/concurrent/BlockingQueue;

    invoke-interface {p1}, Ljava/util/Collection;->clear()V

    iget-object p1, p0, Lcom/miui/gamebooster/customview/AuditionView;->i:Landroid/media/AudioRecord;

    if-eqz p1, :cond_9

    invoke-virtual {p1}, Landroid/media/AudioRecord;->startRecording()V

    :cond_9
    iget-object p1, p0, Lcom/miui/gamebooster/customview/AuditionView;->c:Lcom/miui/gamebooster/customview/RecordVolumView;

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    iget-object p1, p0, Lcom/miui/gamebooster/customview/AuditionView;->g:Landroid/content/Context;

    const p2, 0x7f010047

    invoke-static {p1, p2}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object p1

    iget-object p2, p0, Lcom/miui/gamebooster/customview/AuditionView;->c:Lcom/miui/gamebooster/customview/RecordVolumView;

    invoke-virtual {p2, p1}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    iget-object p1, p0, Lcom/miui/gamebooster/customview/AuditionView;->b:Landroid/view/View;

    const/16 p2, 0x8

    invoke-virtual {p1, p2}, Landroid/view/View;->setVisibility(I)V

    iget-object p1, p0, Lcom/miui/gamebooster/customview/AuditionView;->c:Lcom/miui/gamebooster/customview/RecordVolumView;

    invoke-virtual {p1, v0}, Lcom/miui/gamebooster/customview/RecordVolumView;->setTime(I)V

    iget-object p1, p0, Lcom/miui/gamebooster/customview/AuditionView;->C:Lcom/miui/gamebooster/customview/AuditionView$i;

    iget-object p2, p0, Lcom/miui/gamebooster/customview/AuditionView;->D:Ljava/lang/Runnable;

    invoke-virtual {p1, p2, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    invoke-direct {p0}, Lcom/miui/gamebooster/customview/AuditionView;->N()Z

    move-result p1

    if-nez p1, :cond_a

    new-instance p1, Lcom/miui/gamebooster/customview/AuditionView$g;

    invoke-direct {p1, p0}, Lcom/miui/gamebooster/customview/AuditionView$g;-><init>(Lcom/miui/gamebooster/customview/AuditionView;)V

    iput-object p1, p0, Lcom/miui/gamebooster/customview/AuditionView;->l:Lcom/miui/gamebooster/customview/AuditionView$g;

    invoke-virtual {p1}, Ljava/lang/Thread;->start()V

    goto :goto_0

    :cond_a
    invoke-static {}, Lo8/k;->C()Lo8/k;

    move-result-object p1

    invoke-virtual {p1}, Lo8/k;->L()Z

    move-result p1

    invoke-static {p1}, Lcom/miui/gamebooster/utils/a;->R(Z)V

    :goto_0
    new-instance p1, Lcom/miui/gamebooster/customview/AuditionView$h;

    iget-object p2, p0, Lcom/miui/gamebooster/customview/AuditionView;->i:Landroid/media/AudioRecord;

    invoke-direct {p1, p0, p2}, Lcom/miui/gamebooster/customview/AuditionView$h;-><init>(Lcom/miui/gamebooster/customview/AuditionView;Landroid/media/AudioRecord;)V

    iput-object p1, p0, Lcom/miui/gamebooster/customview/AuditionView;->j:Lcom/miui/gamebooster/customview/AuditionView$h;

    invoke-virtual {p1}, Ljava/lang/Thread;->start()V

    invoke-direct {p0}, Lcom/miui/gamebooster/customview/AuditionView;->Q()V

    invoke-direct {p0}, Lcom/miui/gamebooster/customview/AuditionView;->R()V

    :cond_b
    :goto_1
    return v1
.end method

.method public setInstructSelected(Z)V
    .locals 1

    iget-object v0, p0, Lcom/miui/gamebooster/customview/AuditionView;->a:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setSelected(Z)V

    return-void
.end method

.method public setVoiceChangerWindow(Lo8/a;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/gamebooster/customview/AuditionView;->e:Lo8/a;

    return-void
.end method
