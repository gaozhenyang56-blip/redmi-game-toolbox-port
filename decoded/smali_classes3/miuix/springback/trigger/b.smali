.class public abstract Lmiuix/springback/trigger/b;
.super Lmiuix/springback/trigger/a;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lmiuix/springback/trigger/b$k;,
        Lmiuix/springback/trigger/b$j;,
        Lmiuix/springback/trigger/b$f;,
        Lmiuix/springback/trigger/b$g;,
        Lmiuix/springback/trigger/b$h;,
        Lmiuix/springback/trigger/b$m;,
        Lmiuix/springback/trigger/b$l;,
        Lmiuix/springback/trigger/b$i;
    }
.end annotation


# instance fields
.field protected A:I

.field protected B:I

.field private C:J

.field private D:I

.field private E:Z

.field private F:Z

.field private G:Z

.field private H:Z

.field private I:Z

.field private J:Landroid/view/View$OnLayoutChangeListener;

.field private K:Lmiuix/springback/view/SpringBackLayout$a;

.field private L:Lfl/f;

.field private M:Lmiuix/springback/trigger/a$c$b;

.field private N:Lmiuix/springback/trigger/a$b$a;

.field protected final O:Lmiuix/springback/trigger/b$i;

.field protected final P:Lmiuix/springback/trigger/b$l;

.field protected final Q:Lmiuix/springback/trigger/b$g;

.field protected final R:Lmiuix/springback/trigger/b$f;

.field protected final S:Lmiuix/springback/trigger/b$m;

.field protected final T:Lmiuix/springback/trigger/b$h;

.field private g:Lmiuix/springback/trigger/a$a;

.field protected h:Landroid/content/Context;

.field protected i:Landroid/view/LayoutInflater;

.field public j:Lmiuix/springback/view/SpringBackLayout;

.field private k:Landroid/widget/RelativeLayout;

.field private l:Landroid/widget/FrameLayout;

.field private m:Landroid/view/View;

.field private n:Landroid/view/View;

.field private o:Landroid/view/View;

.field private p:Lmiuix/animation/utils/VelocityMonitor;

.field private q:Lmiuix/springback/trigger/d;

.field private r:Lmiuix/springback/trigger/b$j;

.field private s:Lmiuix/springback/trigger/b$k;

.field private t:Lmiuix/springback/trigger/a$b$b;

.field private u:Lmiuix/springback/trigger/a$d$a;

.field private v:Lmiuix/springback/trigger/a$c$a;

.field private w:F

.field private x:I

.field private y:Z

.field private z:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 3

    invoke-direct {p0, p1}, Lmiuix/springback/trigger/a;-><init>(Landroid/content/Context;)V

    const/4 v0, 0x0

    iput v0, p0, Lmiuix/springback/trigger/b;->w:F

    const/4 v0, 0x1

    iput-boolean v0, p0, Lmiuix/springback/trigger/b;->y:Z

    const/4 v0, 0x0

    iput-boolean v0, p0, Lmiuix/springback/trigger/b;->z:Z

    const-wide/16 v1, -0x1

    iput-wide v1, p0, Lmiuix/springback/trigger/b;->C:J

    const/4 v1, -0x1

    iput v1, p0, Lmiuix/springback/trigger/b;->D:I

    iput-boolean v0, p0, Lmiuix/springback/trigger/b;->E:Z

    iput-boolean v0, p0, Lmiuix/springback/trigger/b;->F:Z

    iput-boolean v0, p0, Lmiuix/springback/trigger/b;->G:Z

    iput-boolean v0, p0, Lmiuix/springback/trigger/b;->H:Z

    iput-boolean v0, p0, Lmiuix/springback/trigger/b;->I:Z

    new-instance v0, Lmiuix/springback/trigger/b$a;

    invoke-direct {v0, p0}, Lmiuix/springback/trigger/b$a;-><init>(Lmiuix/springback/trigger/b;)V

    iput-object v0, p0, Lmiuix/springback/trigger/b;->J:Landroid/view/View$OnLayoutChangeListener;

    new-instance v0, Lmiuix/springback/trigger/b$b;

    invoke-direct {v0, p0}, Lmiuix/springback/trigger/b$b;-><init>(Lmiuix/springback/trigger/b;)V

    iput-object v0, p0, Lmiuix/springback/trigger/b;->K:Lmiuix/springback/view/SpringBackLayout$a;

    new-instance v0, Lmiuix/springback/trigger/b$c;

    invoke-direct {v0, p0}, Lmiuix/springback/trigger/b$c;-><init>(Lmiuix/springback/trigger/b;)V

    iput-object v0, p0, Lmiuix/springback/trigger/b;->L:Lfl/f;

    new-instance v0, Lmiuix/springback/trigger/b$d;

    invoke-direct {v0, p0}, Lmiuix/springback/trigger/b$d;-><init>(Lmiuix/springback/trigger/b;)V

    iput-object v0, p0, Lmiuix/springback/trigger/b;->M:Lmiuix/springback/trigger/a$c$b;

    new-instance v0, Lmiuix/springback/trigger/b$e;

    invoke-direct {v0, p0}, Lmiuix/springback/trigger/b$e;-><init>(Lmiuix/springback/trigger/b;)V

    iput-object v0, p0, Lmiuix/springback/trigger/b;->N:Lmiuix/springback/trigger/a$b$a;

    new-instance v0, Lmiuix/springback/trigger/b$i;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lmiuix/springback/trigger/b$i;-><init>(Lmiuix/springback/trigger/b;Lmiuix/springback/trigger/b$a;)V

    iput-object v0, p0, Lmiuix/springback/trigger/b;->O:Lmiuix/springback/trigger/b$i;

    new-instance v2, Lmiuix/springback/trigger/b$l;

    invoke-direct {v2, p0, v1}, Lmiuix/springback/trigger/b$l;-><init>(Lmiuix/springback/trigger/b;Lmiuix/springback/trigger/b$a;)V

    iput-object v2, p0, Lmiuix/springback/trigger/b;->P:Lmiuix/springback/trigger/b$l;

    new-instance v2, Lmiuix/springback/trigger/b$g;

    invoke-direct {v2, p0, v1}, Lmiuix/springback/trigger/b$g;-><init>(Lmiuix/springback/trigger/b;Lmiuix/springback/trigger/b$a;)V

    iput-object v2, p0, Lmiuix/springback/trigger/b;->Q:Lmiuix/springback/trigger/b$g;

    new-instance v2, Lmiuix/springback/trigger/b$f;

    invoke-direct {v2, p0, v1}, Lmiuix/springback/trigger/b$f;-><init>(Lmiuix/springback/trigger/b;Lmiuix/springback/trigger/b$a;)V

    iput-object v2, p0, Lmiuix/springback/trigger/b;->R:Lmiuix/springback/trigger/b$f;

    new-instance v2, Lmiuix/springback/trigger/b$m;

    invoke-direct {v2, p0, v1}, Lmiuix/springback/trigger/b$m;-><init>(Lmiuix/springback/trigger/b;Lmiuix/springback/trigger/b$a;)V

    iput-object v2, p0, Lmiuix/springback/trigger/b;->S:Lmiuix/springback/trigger/b$m;

    new-instance v2, Lmiuix/springback/trigger/b$h;

    invoke-direct {v2, p0, v1}, Lmiuix/springback/trigger/b$h;-><init>(Lmiuix/springback/trigger/b;Lmiuix/springback/trigger/b$a;)V

    iput-object v2, p0, Lmiuix/springback/trigger/b;->T:Lmiuix/springback/trigger/b$h;

    iput-object v0, p0, Lmiuix/springback/trigger/b;->q:Lmiuix/springback/trigger/d;

    invoke-direct {p0, p1}, Lmiuix/springback/trigger/b;->a0(Landroid/content/Context;)V

    return-void
.end method

.method static synthetic A(Lmiuix/springback/trigger/b;Lmiuix/springback/trigger/a$a;Lmiuix/springback/trigger/a$a;I)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lmiuix/springback/trigger/b;->G0(Lmiuix/springback/trigger/a$a;Lmiuix/springback/trigger/a$a;I)V

    return-void
.end method

.method private A0(I)V
    .locals 1

    iget-object v0, p0, Lmiuix/springback/trigger/b;->u:Lmiuix/springback/trigger/a$d$a;

    if-eqz v0, :cond_0

    invoke-interface {v0, p1}, Lmiuix/springback/trigger/a$d$a;->b(I)V

    :cond_0
    return-void
.end method

.method static synthetic B(Lmiuix/springback/trigger/b;)I
    .locals 0

    iget p0, p0, Lmiuix/springback/trigger/b;->D:I

    return p0
.end method

.method private B0(I)V
    .locals 1

    iget-object v0, p0, Lmiuix/springback/trigger/b;->u:Lmiuix/springback/trigger/a$d$a;

    if-eqz v0, :cond_0

    invoke-interface {v0, p1}, Lmiuix/springback/trigger/a$d$a;->j(I)V

    :cond_0
    return-void
.end method

.method static synthetic C(Lmiuix/springback/trigger/b;I)I
    .locals 0

    iput p1, p0, Lmiuix/springback/trigger/b;->D:I

    return p1
.end method

.method private C0(I)V
    .locals 1

    iget-object v0, p0, Lmiuix/springback/trigger/b;->u:Lmiuix/springback/trigger/a$d$a;

    if-eqz v0, :cond_0

    invoke-interface {v0, p1}, Lmiuix/springback/trigger/a$d$a;->h(I)V

    :cond_0
    return-void
.end method

.method static synthetic D(Lmiuix/springback/trigger/b;Z)Z
    .locals 0

    iput-boolean p1, p0, Lmiuix/springback/trigger/b;->y:Z

    return p1
.end method

.method private D0(I)V
    .locals 1

    iget-object v0, p0, Lmiuix/springback/trigger/b;->u:Lmiuix/springback/trigger/a$d$a;

    if-eqz v0, :cond_0

    invoke-interface {v0, p1}, Lmiuix/springback/trigger/a$d$a;->i(I)V

    :cond_0
    return-void
.end method

.method static synthetic E(Lmiuix/springback/trigger/b;)Z
    .locals 0

    iget-boolean p0, p0, Lmiuix/springback/trigger/b;->I:Z

    return p0
.end method

.method private E0(I)V
    .locals 1

    iget-object v0, p0, Lmiuix/springback/trigger/b;->u:Lmiuix/springback/trigger/a$d$a;

    if-eqz v0, :cond_0

    invoke-interface {v0, p1}, Lmiuix/springback/trigger/a$d$a;->a(I)V

    :cond_0
    return-void
.end method

.method static synthetic F(Lmiuix/springback/trigger/b;Z)Z
    .locals 0

    iput-boolean p1, p0, Lmiuix/springback/trigger/b;->I:Z

    return p1
.end method

.method private F0(Lmiuix/springback/trigger/a$a;I)V
    .locals 1

    if-eqz p1, :cond_0

    instance-of v0, p1, Lmiuix/springback/trigger/a$b;

    if-eqz v0, :cond_0

    invoke-direct {p0, p2}, Lmiuix/springback/trigger/b;->n0(I)V

    goto :goto_0

    :cond_0
    if-eqz p1, :cond_1

    instance-of v0, p1, Lmiuix/springback/trigger/a$d;

    if-eqz v0, :cond_1

    invoke-direct {p0, p2}, Lmiuix/springback/trigger/b;->w0(I)V

    goto :goto_0

    :cond_1
    if-eqz p1, :cond_2

    instance-of p1, p1, Lmiuix/springback/trigger/a$c;

    if-eqz p1, :cond_2

    invoke-direct {p0, p2}, Lmiuix/springback/trigger/b;->e0(I)V

    :cond_2
    :goto_0
    return-void
.end method

.method static synthetic G(Lmiuix/springback/trigger/b;)Lmiuix/animation/utils/VelocityMonitor;
    .locals 0

    iget-object p0, p0, Lmiuix/springback/trigger/b;->p:Lmiuix/animation/utils/VelocityMonitor;

    return-object p0
.end method

.method private G0(Lmiuix/springback/trigger/a$a;Lmiuix/springback/trigger/a$a;I)V
    .locals 1

    if-eqz p1, :cond_2

    instance-of p2, p1, Lmiuix/springback/trigger/a$b;

    if-eqz p2, :cond_2

    invoke-static {p3}, Ljava/lang/Math;->abs(I)I

    move-result p2

    iget v0, p1, Lmiuix/springback/trigger/a$a;->mEnterPoint:I

    if-ge p2, v0, :cond_0

    invoke-direct {p0, p3}, Lmiuix/springback/trigger/b;->u0(I)V

    :cond_0
    invoke-static {p3}, Ljava/lang/Math;->abs(I)I

    move-result p2

    iget v0, p1, Lmiuix/springback/trigger/a$a;->mEnterPoint:I

    if-lt p2, v0, :cond_1

    invoke-static {p3}, Ljava/lang/Math;->abs(I)I

    move-result p2

    iget v0, p1, Lmiuix/springback/trigger/a$a;->mTriggerPoint:I

    if-ge p2, v0, :cond_1

    invoke-direct {p0, p3}, Lmiuix/springback/trigger/b;->q0(I)V

    :cond_1
    invoke-static {p3}, Ljava/lang/Math;->abs(I)I

    move-result p2

    iget p1, p1, Lmiuix/springback/trigger/a$a;->mTriggerPoint:I

    if-lt p2, p1, :cond_8

    invoke-direct {p0, p3}, Lmiuix/springback/trigger/b;->o0(I)V

    goto :goto_0

    :cond_2
    if-eqz p1, :cond_5

    instance-of p2, p1, Lmiuix/springback/trigger/a$d;

    if-eqz p2, :cond_5

    invoke-static {p3}, Ljava/lang/Math;->abs(I)I

    move-result p2

    iget v0, p1, Lmiuix/springback/trigger/a$a;->mEnterPoint:I

    if-ge p2, v0, :cond_3

    invoke-direct {p0, p3}, Lmiuix/springback/trigger/b;->D0(I)V

    :cond_3
    invoke-static {p3}, Ljava/lang/Math;->abs(I)I

    move-result p2

    iget v0, p1, Lmiuix/springback/trigger/a$a;->mEnterPoint:I

    if-lt p2, v0, :cond_4

    invoke-static {p3}, Ljava/lang/Math;->abs(I)I

    move-result p2

    iget v0, p1, Lmiuix/springback/trigger/a$a;->mTriggerPoint:I

    if-ge p2, v0, :cond_4

    invoke-direct {p0, p3}, Lmiuix/springback/trigger/b;->z0(I)V

    :cond_4
    invoke-static {p3}, Ljava/lang/Math;->abs(I)I

    move-result p2

    iget p1, p1, Lmiuix/springback/trigger/a$a;->mTriggerPoint:I

    if-lt p2, p1, :cond_8

    invoke-direct {p0, p3}, Lmiuix/springback/trigger/b;->x0(I)V

    goto :goto_0

    :cond_5
    if-eqz p1, :cond_8

    instance-of p2, p1, Lmiuix/springback/trigger/a$c;

    if-eqz p2, :cond_8

    invoke-static {p3}, Ljava/lang/Math;->abs(I)I

    move-result p2

    iget v0, p1, Lmiuix/springback/trigger/a$a;->mEnterPoint:I

    if-ge p2, v0, :cond_6

    invoke-direct {p0, p3}, Lmiuix/springback/trigger/b;->l0(I)V

    :cond_6
    invoke-static {p3}, Ljava/lang/Math;->abs(I)I

    move-result p2

    iget v0, p1, Lmiuix/springback/trigger/a$a;->mEnterPoint:I

    if-lt p2, v0, :cond_7

    invoke-static {p3}, Ljava/lang/Math;->abs(I)I

    move-result p2

    iget v0, p1, Lmiuix/springback/trigger/a$a;->mTriggerPoint:I

    if-ge p2, v0, :cond_7

    invoke-direct {p0, p3}, Lmiuix/springback/trigger/b;->h0(I)V

    :cond_7
    invoke-static {p3}, Ljava/lang/Math;->abs(I)I

    move-result p2

    iget p1, p1, Lmiuix/springback/trigger/a$a;->mTriggerPoint:I

    if-lt p2, p1, :cond_8

    invoke-direct {p0, p3}, Lmiuix/springback/trigger/b;->f0(I)V

    :cond_8
    :goto_0
    return-void
.end method

.method static synthetic H(Lmiuix/springback/trigger/b;)F
    .locals 0

    iget p0, p0, Lmiuix/springback/trigger/b;->w:F

    return p0
.end method

.method private H0(Lmiuix/springback/trigger/a$a;I)V
    .locals 1

    if-eqz p1, :cond_0

    instance-of v0, p1, Lmiuix/springback/trigger/a$b;

    if-eqz v0, :cond_0

    invoke-direct {p0, p2}, Lmiuix/springback/trigger/b;->p0(I)V

    goto :goto_0

    :cond_0
    if-eqz p1, :cond_1

    instance-of v0, p1, Lmiuix/springback/trigger/a$d;

    if-eqz v0, :cond_1

    invoke-direct {p0, p2}, Lmiuix/springback/trigger/b;->y0(I)V

    goto :goto_0

    :cond_1
    if-eqz p1, :cond_2

    instance-of p1, p1, Lmiuix/springback/trigger/a$c;

    if-eqz p1, :cond_2

    invoke-direct {p0, p2}, Lmiuix/springback/trigger/b;->g0(I)V

    :cond_2
    :goto_0
    return-void
.end method

.method static synthetic I(Lmiuix/springback/trigger/b;F)F
    .locals 0

    iput p1, p0, Lmiuix/springback/trigger/b;->w:F

    return p1
.end method

.method private I0(Lmiuix/springback/trigger/a$a;I)V
    .locals 1

    if-eqz p1, :cond_0

    instance-of v0, p1, Lmiuix/springback/trigger/a$b;

    if-eqz v0, :cond_0

    invoke-direct {p0, p2}, Lmiuix/springback/trigger/b;->r0(I)V

    goto :goto_0

    :cond_0
    if-eqz p1, :cond_1

    instance-of v0, p1, Lmiuix/springback/trigger/a$d;

    if-eqz v0, :cond_1

    invoke-direct {p0, p2}, Lmiuix/springback/trigger/b;->A0(I)V

    goto :goto_0

    :cond_1
    if-eqz p1, :cond_2

    instance-of p1, p1, Lmiuix/springback/trigger/a$c;

    if-eqz p1, :cond_2

    invoke-direct {p0, p2}, Lmiuix/springback/trigger/b;->i0(I)V

    :cond_2
    :goto_0
    return-void
.end method

.method static synthetic J(Lmiuix/springback/trigger/b;)Landroid/view/View;
    .locals 0

    iget-object p0, p0, Lmiuix/springback/trigger/b;->m:Landroid/view/View;

    return-object p0
.end method

.method private J0(Lmiuix/springback/trigger/a$a;Lmiuix/springback/trigger/a$a;I)V
    .locals 1

    if-eqz p1, :cond_0

    instance-of v0, p1, Lmiuix/springback/trigger/a$b;

    if-eqz v0, :cond_0

    if-eq p2, p1, :cond_0

    invoke-direct {p0, p3}, Lmiuix/springback/trigger/b;->t0(I)V

    goto :goto_0

    :cond_0
    if-eqz p1, :cond_1

    instance-of v0, p1, Lmiuix/springback/trigger/a$d;

    if-eqz v0, :cond_1

    if-eq p2, p1, :cond_1

    invoke-direct {p0, p3}, Lmiuix/springback/trigger/b;->C0(I)V

    goto :goto_0

    :cond_1
    if-eqz p1, :cond_2

    instance-of v0, p1, Lmiuix/springback/trigger/a$c;

    if-eqz v0, :cond_2

    if-eq p2, p1, :cond_2

    invoke-direct {p0, p3}, Lmiuix/springback/trigger/b;->k0(I)V

    :cond_2
    :goto_0
    return-void
.end method

.method static synthetic K(Lmiuix/springback/trigger/b;)Lmiuix/springback/trigger/a$a;
    .locals 0

    iget-object p0, p0, Lmiuix/springback/trigger/b;->g:Lmiuix/springback/trigger/a$a;

    return-object p0
.end method

.method private K0(Lmiuix/springback/trigger/a$a;I)V
    .locals 1

    if-eqz p1, :cond_0

    instance-of v0, p1, Lmiuix/springback/trigger/a$b;

    if-eqz v0, :cond_0

    invoke-direct {p0, p2}, Lmiuix/springback/trigger/b;->v0(I)V

    goto :goto_0

    :cond_0
    if-eqz p1, :cond_1

    instance-of v0, p1, Lmiuix/springback/trigger/a$d;

    if-eqz v0, :cond_1

    invoke-direct {p0, p2}, Lmiuix/springback/trigger/b;->E0(I)V

    goto :goto_0

    :cond_1
    if-eqz p1, :cond_2

    instance-of p1, p1, Lmiuix/springback/trigger/a$c;

    if-eqz p1, :cond_2

    invoke-direct {p0, p2}, Lmiuix/springback/trigger/b;->m0(I)V

    :cond_2
    :goto_0
    return-void
.end method

.method static synthetic L(Lmiuix/springback/trigger/b;Lmiuix/springback/trigger/a$a;)Lmiuix/springback/trigger/a$a;
    .locals 0

    iput-object p1, p0, Lmiuix/springback/trigger/b;->g:Lmiuix/springback/trigger/a$a;

    return-object p1
.end method

.method static synthetic M(Lmiuix/springback/trigger/b;Lmiuix/springback/trigger/a$a;)F
    .locals 0

    invoke-direct {p0, p1}, Lmiuix/springback/trigger/b;->N(Lmiuix/springback/trigger/a$a;)F

    move-result p0

    return p0
.end method

.method private N(Lmiuix/springback/trigger/a$a;)F
    .locals 3

    if-eqz p1, :cond_0

    instance-of v0, p1, Lmiuix/springback/trigger/a$b;

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lmiuix/springback/trigger/b;->V()F

    move-result v0

    goto :goto_0

    :cond_0
    if-eqz p1, :cond_1

    instance-of v0, p1, Lmiuix/springback/trigger/a$c;

    if-eqz v0, :cond_1

    invoke-direct {p0}, Lmiuix/springback/trigger/b;->T()F

    move-result v0

    goto :goto_0

    :cond_1
    if-eqz p1, :cond_2

    instance-of v0, p1, Lmiuix/springback/trigger/a$d;

    if-eqz v0, :cond_2

    invoke-direct {p0}, Lmiuix/springback/trigger/b;->Z()F

    move-result v0

    goto :goto_0

    :cond_2
    const/high16 v0, -0x40800000    # -1.0f

    :goto_0
    const/4 v1, 0x0

    cmpg-float v0, v0, v1

    if-gez v0, :cond_4

    iget v0, p0, Lmiuix/springback/trigger/b;->A:I

    const/high16 v2, 0x3e800000    # 0.25f

    if-gez v0, :cond_3

    invoke-virtual {p0}, Lmiuix/springback/trigger/a;->h()Lmiuix/springback/trigger/a$c;

    move-result-object v0

    if-ne p1, v0, :cond_3

    invoke-virtual {p0}, Lmiuix/springback/trigger/a;->h()Lmiuix/springback/trigger/a$c;

    move-result-object v0

    if-eqz v0, :cond_3

    invoke-virtual {p0}, Lmiuix/springback/trigger/a;->h()Lmiuix/springback/trigger/a$c;

    move-result-object p1

    iget p1, p1, Lmiuix/springback/trigger/a$a;->mTriggerPoint:I

    invoke-virtual {p0}, Lmiuix/springback/trigger/a;->h()Lmiuix/springback/trigger/a$c;

    move-result-object v0

    iget v0, v0, Lmiuix/springback/trigger/a$a;->mEnterPoint:I

    sub-int/2addr p1, v0

    int-to-float p1, p1

    mul-float/2addr p1, v2

    invoke-virtual {p0}, Lmiuix/springback/trigger/a;->h()Lmiuix/springback/trigger/a$c;

    move-result-object v0

    iget v0, v0, Lmiuix/springback/trigger/a$a;->mEnterPoint:I

    :goto_1
    int-to-float v0, v0

    add-float/2addr p1, v0

    return p1

    :cond_3
    iget-object v0, p0, Lmiuix/springback/trigger/b;->g:Lmiuix/springback/trigger/a$a;

    if-eqz v0, :cond_4

    instance-of p1, p1, Lmiuix/springback/trigger/a$b;

    if-eqz p1, :cond_4

    iget p1, v0, Lmiuix/springback/trigger/a$a;->mTriggerPoint:I

    iget v0, v0, Lmiuix/springback/trigger/a$a;->mEnterPoint:I

    sub-int/2addr p1, v0

    int-to-float p1, p1

    mul-float/2addr p1, v2

    goto :goto_1

    :cond_4
    return v1
.end method

.method private N0()V
    .locals 2

    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lmiuix/springback/trigger/b;->C:J

    return-void
.end method

.method private P()J
    .locals 4

    iget-wide v0, p0, Lmiuix/springback/trigger/b;->C:J

    const-wide/16 v2, -0x1

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    const-wide/16 v0, 0x0

    return-wide v0

    :cond_0
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iget-wide v2, p0, Lmiuix/springback/trigger/b;->C:J

    sub-long/2addr v0, v2

    return-wide v0
.end method

.method private T()F
    .locals 1

    iget-object v0, p0, Lmiuix/springback/trigger/b;->v:Lmiuix/springback/trigger/a$c$a;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lmiuix/springback/trigger/a$c$a;->d()F

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method private V()F
    .locals 1

    iget-object v0, p0, Lmiuix/springback/trigger/b;->t:Lmiuix/springback/trigger/a$b$b;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lmiuix/springback/trigger/a$b$b;->d()F

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method private Z()F
    .locals 1

    iget-object v0, p0, Lmiuix/springback/trigger/b;->u:Lmiuix/springback/trigger/a$d$a;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lmiuix/springback/trigger/a$d$a;->d()F

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method private a0(Landroid/content/Context;)V
    .locals 2

    iput-object p1, p0, Lmiuix/springback/trigger/b;->h:Landroid/content/Context;

    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p1

    iput-object p1, p0, Lmiuix/springback/trigger/b;->i:Landroid/view/LayoutInflater;

    new-instance p1, Lmiuix/animation/utils/VelocityMonitor;

    invoke-direct {p1}, Lmiuix/animation/utils/VelocityMonitor;-><init>()V

    iput-object p1, p0, Lmiuix/springback/trigger/b;->p:Lmiuix/animation/utils/VelocityMonitor;

    iget-object p1, p0, Lmiuix/springback/trigger/b;->i:Landroid/view/LayoutInflater;

    sget v0, Lpm/c;->b:I

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/RelativeLayout;

    iput-object p1, p0, Lmiuix/springback/trigger/b;->k:Landroid/widget/RelativeLayout;

    sget v0, Lpm/b;->a:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/FrameLayout;

    iput-object p1, p0, Lmiuix/springback/trigger/b;->l:Landroid/widget/FrameLayout;

    return-void
.end method

.method private e0(I)V
    .locals 1

    iget-object v0, p0, Lmiuix/springback/trigger/b;->v:Lmiuix/springback/trigger/a$c$a;

    if-eqz v0, :cond_0

    invoke-interface {v0, p1}, Lmiuix/springback/trigger/a$c$a;->e(I)V

    :cond_0
    return-void
.end method

.method private f0(I)V
    .locals 1

    iget-object v0, p0, Lmiuix/springback/trigger/b;->v:Lmiuix/springback/trigger/a$c$a;

    if-eqz v0, :cond_0

    invoke-interface {v0, p1}, Lmiuix/springback/trigger/a$c$a;->f(I)V

    :cond_0
    return-void
.end method

.method private g0(I)V
    .locals 1

    iget-object v0, p0, Lmiuix/springback/trigger/b;->v:Lmiuix/springback/trigger/a$c$a;

    if-eqz v0, :cond_0

    invoke-interface {v0, p1}, Lmiuix/springback/trigger/a$c$a;->c(I)V

    :cond_0
    return-void
.end method

.method private h0(I)V
    .locals 1

    iget-object v0, p0, Lmiuix/springback/trigger/b;->v:Lmiuix/springback/trigger/a$c$a;

    if-eqz v0, :cond_0

    invoke-interface {v0, p1}, Lmiuix/springback/trigger/a$c$a;->g(I)V

    :cond_0
    return-void
.end method

.method static synthetic i(Lmiuix/springback/trigger/b;)Landroid/widget/RelativeLayout;
    .locals 0

    iget-object p0, p0, Lmiuix/springback/trigger/b;->k:Landroid/widget/RelativeLayout;

    return-object p0
.end method

.method private i0(I)V
    .locals 1

    iget-object v0, p0, Lmiuix/springback/trigger/b;->v:Lmiuix/springback/trigger/a$c$a;

    if-eqz v0, :cond_0

    invoke-interface {v0, p1}, Lmiuix/springback/trigger/a$c$a;->b(I)V

    :cond_0
    return-void
.end method

.method static synthetic j(Lmiuix/springback/trigger/b;)Lmiuix/springback/trigger/d;
    .locals 0

    iget-object p0, p0, Lmiuix/springback/trigger/b;->q:Lmiuix/springback/trigger/d;

    return-object p0
.end method

.method private j0(I)V
    .locals 1

    iget-object v0, p0, Lmiuix/springback/trigger/b;->v:Lmiuix/springback/trigger/a$c$a;

    if-eqz v0, :cond_0

    invoke-interface {v0, p1}, Lmiuix/springback/trigger/a$c$a;->j(I)V

    :cond_0
    return-void
.end method

.method static synthetic k(Lmiuix/springback/trigger/b;)Lmiuix/springback/trigger/b$k;
    .locals 0

    iget-object p0, p0, Lmiuix/springback/trigger/b;->s:Lmiuix/springback/trigger/b$k;

    return-object p0
.end method

.method private k0(I)V
    .locals 1

    iget-object v0, p0, Lmiuix/springback/trigger/b;->v:Lmiuix/springback/trigger/a$c$a;

    if-eqz v0, :cond_0

    invoke-interface {v0, p1}, Lmiuix/springback/trigger/a$c$a;->h(I)V

    :cond_0
    return-void
.end method

.method static synthetic l(Lmiuix/springback/trigger/b;)Z
    .locals 0

    iget-boolean p0, p0, Lmiuix/springback/trigger/b;->H:Z

    return p0
.end method

.method private l0(I)V
    .locals 1

    iget-object v0, p0, Lmiuix/springback/trigger/b;->v:Lmiuix/springback/trigger/a$c$a;

    if-eqz v0, :cond_0

    invoke-interface {v0, p1}, Lmiuix/springback/trigger/a$c$a;->i(I)V

    :cond_0
    return-void
.end method

.method static synthetic m(Lmiuix/springback/trigger/b;Z)Z
    .locals 0

    iput-boolean p1, p0, Lmiuix/springback/trigger/b;->H:Z

    return p1
.end method

.method private m0(I)V
    .locals 1

    iget-object v0, p0, Lmiuix/springback/trigger/b;->v:Lmiuix/springback/trigger/a$c$a;

    if-eqz v0, :cond_0

    invoke-interface {v0, p1}, Lmiuix/springback/trigger/a$c$a;->a(I)V

    :cond_0
    return-void
.end method

.method static synthetic n(Lmiuix/springback/trigger/b;)Lmiuix/springback/trigger/b$j;
    .locals 0

    iget-object p0, p0, Lmiuix/springback/trigger/b;->r:Lmiuix/springback/trigger/b$j;

    return-object p0
.end method

.method private n0(I)V
    .locals 1

    iget-object v0, p0, Lmiuix/springback/trigger/b;->t:Lmiuix/springback/trigger/a$b$b;

    if-eqz v0, :cond_0

    invoke-interface {v0, p1}, Lmiuix/springback/trigger/a$b$b;->e(I)V

    :cond_0
    return-void
.end method

.method static synthetic o(Lmiuix/springback/trigger/b;)J
    .locals 2

    invoke-direct {p0}, Lmiuix/springback/trigger/b;->P()J

    move-result-wide v0

    return-wide v0
.end method

.method private o0(I)V
    .locals 1

    iget-object v0, p0, Lmiuix/springback/trigger/b;->t:Lmiuix/springback/trigger/a$b$b;

    if-eqz v0, :cond_0

    invoke-interface {v0, p1}, Lmiuix/springback/trigger/a$b$b;->f(I)V

    :cond_0
    return-void
.end method

.method static synthetic p(Lmiuix/springback/trigger/b;)V
    .locals 0

    invoke-direct {p0}, Lmiuix/springback/trigger/b;->N0()V

    return-void
.end method

.method private p0(I)V
    .locals 1

    iget-object v0, p0, Lmiuix/springback/trigger/b;->t:Lmiuix/springback/trigger/a$b$b;

    if-eqz v0, :cond_0

    invoke-interface {v0, p1}, Lmiuix/springback/trigger/a$b$b;->c(I)V

    :cond_0
    return-void
.end method

.method static synthetic q(Lmiuix/springback/trigger/b;Lmiuix/springback/trigger/a$a;Lmiuix/springback/trigger/a$a;I)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lmiuix/springback/trigger/b;->J0(Lmiuix/springback/trigger/a$a;Lmiuix/springback/trigger/a$a;I)V

    return-void
.end method

.method private q0(I)V
    .locals 1

    iget-object v0, p0, Lmiuix/springback/trigger/b;->t:Lmiuix/springback/trigger/a$b$b;

    if-eqz v0, :cond_0

    invoke-interface {v0, p1}, Lmiuix/springback/trigger/a$b$b;->g(I)V

    :cond_0
    return-void
.end method

.method static synthetic r(Lmiuix/springback/trigger/b;Lmiuix/springback/trigger/a$a;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lmiuix/springback/trigger/b;->I0(Lmiuix/springback/trigger/a$a;I)V

    return-void
.end method

.method private r0(I)V
    .locals 1

    iget-object v0, p0, Lmiuix/springback/trigger/b;->t:Lmiuix/springback/trigger/a$b$b;

    if-eqz v0, :cond_0

    invoke-interface {v0, p1}, Lmiuix/springback/trigger/a$b$b;->b(I)V

    :cond_0
    return-void
.end method

.method static synthetic s(Lmiuix/springback/trigger/b;Lmiuix/springback/trigger/a$a;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lmiuix/springback/trigger/b;->K0(Lmiuix/springback/trigger/a$a;I)V

    return-void
.end method

.method private s0(I)V
    .locals 1

    iget-object v0, p0, Lmiuix/springback/trigger/b;->t:Lmiuix/springback/trigger/a$b$b;

    if-eqz v0, :cond_0

    invoke-interface {v0, p1}, Lmiuix/springback/trigger/a$b$b;->j(I)V

    :cond_0
    return-void
.end method

.method static synthetic t(Lmiuix/springback/trigger/b;)Z
    .locals 0

    iget-boolean p0, p0, Lmiuix/springback/trigger/b;->z:Z

    return p0
.end method

.method private t0(I)V
    .locals 1

    iget-object v0, p0, Lmiuix/springback/trigger/b;->t:Lmiuix/springback/trigger/a$b$b;

    if-eqz v0, :cond_0

    invoke-interface {v0, p1}, Lmiuix/springback/trigger/a$b$b;->h(I)V

    :cond_0
    return-void
.end method

.method static synthetic u(Lmiuix/springback/trigger/b;Z)Z
    .locals 0

    iput-boolean p1, p0, Lmiuix/springback/trigger/b;->z:Z

    return p1
.end method

.method private u0(I)V
    .locals 1

    iget-object v0, p0, Lmiuix/springback/trigger/b;->t:Lmiuix/springback/trigger/a$b$b;

    if-eqz v0, :cond_0

    invoke-interface {v0, p1}, Lmiuix/springback/trigger/a$b$b;->i(I)V

    :cond_0
    return-void
.end method

.method static synthetic v(Lmiuix/springback/trigger/b;J)J
    .locals 0

    iput-wide p1, p0, Lmiuix/springback/trigger/b;->C:J

    return-wide p1
.end method

.method private v0(I)V
    .locals 1

    iget-object v0, p0, Lmiuix/springback/trigger/b;->t:Lmiuix/springback/trigger/a$b$b;

    if-eqz v0, :cond_0

    invoke-interface {v0, p1}, Lmiuix/springback/trigger/a$b$b;->a(I)V

    :cond_0
    return-void
.end method

.method static synthetic w(Lmiuix/springback/trigger/b;)I
    .locals 0

    iget p0, p0, Lmiuix/springback/trigger/b;->x:I

    return p0
.end method

.method private w0(I)V
    .locals 1

    iget-object v0, p0, Lmiuix/springback/trigger/b;->u:Lmiuix/springback/trigger/a$d$a;

    if-eqz v0, :cond_0

    invoke-interface {v0, p1}, Lmiuix/springback/trigger/a$d$a;->e(I)V

    :cond_0
    return-void
.end method

.method static synthetic x(Lmiuix/springback/trigger/b;Lmiuix/springback/trigger/a$a;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lmiuix/springback/trigger/b;->H0(Lmiuix/springback/trigger/a$a;I)V

    return-void
.end method

.method private x0(I)V
    .locals 1

    iget-object v0, p0, Lmiuix/springback/trigger/b;->u:Lmiuix/springback/trigger/a$d$a;

    if-eqz v0, :cond_0

    invoke-interface {v0, p1}, Lmiuix/springback/trigger/a$d$a;->f(I)V

    :cond_0
    return-void
.end method

.method static synthetic y(Lmiuix/springback/trigger/b;I)I
    .locals 0

    iput p1, p0, Lmiuix/springback/trigger/b;->x:I

    return p1
.end method

.method private y0(I)V
    .locals 1

    iget-object v0, p0, Lmiuix/springback/trigger/b;->u:Lmiuix/springback/trigger/a$d$a;

    if-eqz v0, :cond_0

    invoke-interface {v0, p1}, Lmiuix/springback/trigger/a$d$a;->c(I)V

    :cond_0
    return-void
.end method

.method static synthetic z(Lmiuix/springback/trigger/b;Lmiuix/springback/trigger/a$a;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lmiuix/springback/trigger/b;->F0(Lmiuix/springback/trigger/a$a;I)V

    return-void
.end method

.method private z0(I)V
    .locals 1

    iget-object v0, p0, Lmiuix/springback/trigger/b;->u:Lmiuix/springback/trigger/a$d$a;

    if-eqz v0, :cond_0

    invoke-interface {v0, p1}, Lmiuix/springback/trigger/a$d$a;->g(I)V

    :cond_0
    return-void
.end method


# virtual methods
.method public abstract L0(Landroid/view/View;IIIIIIII)V
.end method

.method public abstract M0(Lmiuix/springback/view/SpringBackLayout;III)V
.end method

.method public O(Lmiuix/springback/view/SpringBackLayout;)V
    .locals 6

    invoke-virtual {p1}, Lmiuix/springback/view/SpringBackLayout;->J()Z

    move-result v0

    const/4 v1, 0x1

    if-nez v0, :cond_0

    invoke-virtual {p1, v1}, Lmiuix/springback/view/SpringBackLayout;->setSpringBackEnableOnTriggerAttached(Z)V

    :cond_0
    iput-object p1, p0, Lmiuix/springback/trigger/b;->j:Lmiuix/springback/view/SpringBackLayout;

    iget-object v0, p0, Lmiuix/springback/trigger/b;->k:Landroid/widget/RelativeLayout;

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    iget-object v0, p0, Lmiuix/springback/trigger/b;->m:Landroid/view/View;

    const/4 v2, 0x0

    if-eqz v0, :cond_3

    move v0, v2

    move v3, v0

    :goto_0
    iget-object v4, p0, Lmiuix/springback/trigger/b;->j:Lmiuix/springback/view/SpringBackLayout;

    invoke-virtual {v4}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v4

    if-ge v0, v4, :cond_2

    iget-object v4, p0, Lmiuix/springback/trigger/b;->j:Lmiuix/springback/view/SpringBackLayout;

    invoke-virtual {v4, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    iget-object v5, p0, Lmiuix/springback/trigger/b;->m:Landroid/view/View;

    if-ne v4, v5, :cond_1

    move v3, v1

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    if-nez v3, :cond_3

    iget-object v0, p0, Lmiuix/springback/trigger/b;->j:Lmiuix/springback/view/SpringBackLayout;

    iget-object v3, p0, Lmiuix/springback/trigger/b;->m:Landroid/view/View;

    invoke-virtual {v0, v3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    :cond_3
    iget-object v0, p0, Lmiuix/springback/trigger/b;->o:Landroid/view/View;

    if-eqz v0, :cond_6

    move v0, v2

    :goto_1
    iget-object v3, p0, Lmiuix/springback/trigger/b;->l:Landroid/widget/FrameLayout;

    invoke-virtual {v3}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v3

    if-ge v2, v3, :cond_5

    iget-object v3, p0, Lmiuix/springback/trigger/b;->l:Landroid/widget/FrameLayout;

    invoke-virtual {v3, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    iget-object v4, p0, Lmiuix/springback/trigger/b;->o:Landroid/view/View;

    if-ne v3, v4, :cond_4

    move v0, v1

    :cond_4
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_5
    if-nez v0, :cond_6

    iget-object v0, p0, Lmiuix/springback/trigger/b;->l:Landroid/widget/FrameLayout;

    iget-object v1, p0, Lmiuix/springback/trigger/b;->o:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    :cond_6
    iget-object v0, p0, Lmiuix/springback/trigger/b;->J:Landroid/view/View$OnLayoutChangeListener;

    invoke-virtual {p1, v0}, Landroid/view/View;->addOnLayoutChangeListener(Landroid/view/View$OnLayoutChangeListener;)V

    iget-object v0, p0, Lmiuix/springback/trigger/b;->K:Lmiuix/springback/view/SpringBackLayout$a;

    invoke-virtual {p1, v0}, Lmiuix/springback/view/SpringBackLayout;->setOnSpringListener(Lmiuix/springback/view/SpringBackLayout$a;)V

    iget-object v0, p0, Lmiuix/springback/trigger/b;->L:Lfl/f;

    invoke-virtual {p1, v0}, Lmiuix/springback/view/SpringBackLayout;->a(Lfl/f;)V

    return-void
.end method

.method public O0(Lmiuix/springback/trigger/b$j;)V
    .locals 0

    iput-object p1, p0, Lmiuix/springback/trigger/b;->r:Lmiuix/springback/trigger/b$j;

    return-void
.end method

.method public P0(Lmiuix/springback/trigger/a$b$b;)V
    .locals 0

    iput-object p1, p0, Lmiuix/springback/trigger/b;->t:Lmiuix/springback/trigger/a$b$b;

    return-void
.end method

.method public Q()Lmiuix/springback/trigger/a$a;
    .locals 1

    iget-object v0, p0, Lmiuix/springback/trigger/b;->g:Lmiuix/springback/trigger/a$a;

    return-object v0
.end method

.method public Q0(Lmiuix/springback/trigger/a$c$a;)V
    .locals 0

    iput-object p1, p0, Lmiuix/springback/trigger/b;->v:Lmiuix/springback/trigger/a$c$a;

    return-void
.end method

.method public R()Lmiuix/springback/trigger/d;
    .locals 1

    iget-object v0, p0, Lmiuix/springback/trigger/b;->q:Lmiuix/springback/trigger/d;

    return-object v0
.end method

.method public R0(Lmiuix/springback/trigger/a$d$a;)V
    .locals 0

    iput-object p1, p0, Lmiuix/springback/trigger/b;->u:Lmiuix/springback/trigger/a$d$a;

    return-void
.end method

.method public S()Landroid/view/View;
    .locals 1

    iget-object v0, p0, Lmiuix/springback/trigger/b;->m:Landroid/view/View;

    return-object v0
.end method

.method public S0(Lmiuix/springback/trigger/b$k;)V
    .locals 0

    iput-object p1, p0, Lmiuix/springback/trigger/b;->s:Lmiuix/springback/trigger/b$k;

    return-void
.end method

.method protected T0(Lmiuix/springback/trigger/d;)V
    .locals 1

    iput-object p1, p0, Lmiuix/springback/trigger/b;->q:Lmiuix/springback/trigger/d;

    iget-object v0, p0, Lmiuix/springback/trigger/b;->O:Lmiuix/springback/trigger/b$i;

    if-ne p1, v0, :cond_3

    iget-boolean p1, p0, Lmiuix/springback/trigger/b;->y:Z

    if-eqz p1, :cond_2

    iget-object p1, p0, Lmiuix/springback/trigger/b;->g:Lmiuix/springback/trigger/a$a;

    if-eqz p1, :cond_2

    invoke-virtual {p1}, Lmiuix/springback/trigger/a$a;->notifyFinished()V

    iget-object p1, p0, Lmiuix/springback/trigger/b;->g:Lmiuix/springback/trigger/a$a;

    instance-of v0, p1, Lmiuix/springback/trigger/a$b;

    if-eqz v0, :cond_0

    iget p1, p0, Lmiuix/springback/trigger/b;->A:I

    invoke-direct {p0, p1}, Lmiuix/springback/trigger/b;->s0(I)V

    goto :goto_0

    :cond_0
    instance-of v0, p1, Lmiuix/springback/trigger/a$c;

    if-eqz v0, :cond_1

    iget p1, p0, Lmiuix/springback/trigger/b;->A:I

    invoke-direct {p0, p1}, Lmiuix/springback/trigger/b;->j0(I)V

    goto :goto_0

    :cond_1
    instance-of p1, p1, Lmiuix/springback/trigger/a$d;

    if-eqz p1, :cond_2

    iget p1, p0, Lmiuix/springback/trigger/b;->A:I

    invoke-direct {p0, p1}, Lmiuix/springback/trigger/b;->B0(I)V

    :cond_2
    :goto_0
    const/4 p1, 0x0

    iput-object p1, p0, Lmiuix/springback/trigger/b;->g:Lmiuix/springback/trigger/a$a;

    const/4 p1, -0x1

    iput p1, p0, Lmiuix/springback/trigger/b;->D:I

    iget-object p1, p0, Lmiuix/springback/trigger/b;->p:Lmiuix/animation/utils/VelocityMonitor;

    invoke-virtual {p1}, Lmiuix/animation/utils/VelocityMonitor;->clear()V

    :cond_3
    return-void
.end method

.method public U()Landroid/view/View;
    .locals 1

    iget-object v0, p0, Lmiuix/springback/trigger/b;->n:Landroid/view/View;

    return-object v0
.end method

.method public W()Landroid/view/ViewGroup;
    .locals 1

    iget-object v0, p0, Lmiuix/springback/trigger/b;->l:Landroid/widget/FrameLayout;

    return-object v0
.end method

.method public X()Landroid/view/ViewGroup;
    .locals 1

    iget-object v0, p0, Lmiuix/springback/trigger/b;->k:Landroid/widget/RelativeLayout;

    return-object v0
.end method

.method public Y()Landroid/view/View;
    .locals 1

    iget-object v0, p0, Lmiuix/springback/trigger/b;->o:Landroid/view/View;

    return-object v0
.end method

.method public b0()Z
    .locals 1

    iget-boolean v0, p0, Lmiuix/springback/trigger/b;->E:Z

    return v0
.end method

.method public c0()Z
    .locals 1

    iget-boolean v0, p0, Lmiuix/springback/trigger/b;->F:Z

    return v0
.end method

.method public d0()Z
    .locals 1

    iget-boolean v0, p0, Lmiuix/springback/trigger/b;->G:Z

    return v0
.end method

.method public e(Lmiuix/springback/trigger/a$a;)V
    .locals 4

    invoke-super {p0, p1}, Lmiuix/springback/trigger/a;->e(Lmiuix/springback/trigger/a$a;)V

    instance-of v0, p1, Lmiuix/springback/trigger/a$c;

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_1

    iput-boolean v1, p0, Lmiuix/springback/trigger/b;->F:Z

    check-cast p1, Lmiuix/springback/trigger/a$c;

    iget-object v0, p0, Lmiuix/springback/trigger/b;->M:Lmiuix/springback/trigger/a$c$b;

    iput-object v0, p1, Lmiuix/springback/trigger/a$c;->mUpDataListener:Lmiuix/springback/trigger/a$c$b;

    iget-object v0, p0, Lmiuix/springback/trigger/b;->m:Landroid/view/View;

    if-nez v0, :cond_5

    iget-object v0, p0, Lmiuix/springback/trigger/b;->i:Landroid/view/LayoutInflater;

    iget-object v1, p0, Lmiuix/springback/trigger/b;->j:Lmiuix/springback/view/SpringBackLayout;

    invoke-virtual {p1, v0, v1}, Lmiuix/springback/trigger/a$a;->onCreateIndicator(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lmiuix/springback/trigger/b;->m:Landroid/view/View;

    if-nez p1, :cond_0

    iget-object p1, p0, Lmiuix/springback/trigger/b;->i:Landroid/view/LayoutInflater;

    sget v0, Lpm/c;->f:I

    invoke-virtual {p1, v0, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lmiuix/springback/trigger/b;->m:Landroid/view/View;

    :cond_0
    iget-object p1, p0, Lmiuix/springback/trigger/b;->j:Lmiuix/springback/view/SpringBackLayout;

    if-eqz p1, :cond_5

    iget-object v0, p0, Lmiuix/springback/trigger/b;->m:Landroid/view/View;

    if-eqz v0, :cond_5

    goto/16 :goto_0

    :cond_1
    instance-of v0, p1, Lmiuix/springback/trigger/a$b;

    if-eqz v0, :cond_3

    iput-boolean v1, p0, Lmiuix/springback/trigger/b;->E:Z

    check-cast p1, Lmiuix/springback/trigger/a$b;

    iget-object v0, p0, Lmiuix/springback/trigger/b;->N:Lmiuix/springback/trigger/a$b$a;

    iput-object v0, p1, Lmiuix/springback/trigger/a$b;->mCompleteListener:Lmiuix/springback/trigger/a$b$a;

    iget-object v0, p0, Lmiuix/springback/trigger/b;->n:Landroid/view/View;

    if-nez v0, :cond_5

    iget-object v0, p0, Lmiuix/springback/trigger/b;->i:Landroid/view/LayoutInflater;

    iget-object v1, p0, Lmiuix/springback/trigger/b;->k:Landroid/widget/RelativeLayout;

    invoke-virtual {p1, v0, v1}, Lmiuix/springback/trigger/a$a;->onCreateIndicator(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lmiuix/springback/trigger/b;->n:Landroid/view/View;

    if-nez p1, :cond_2

    iget-object p1, p0, Lmiuix/springback/trigger/b;->i:Landroid/view/LayoutInflater;

    sget v0, Lpm/c;->c:I

    invoke-virtual {p1, v0, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p1

    iget-object v0, p0, Lmiuix/springback/trigger/b;->i:Landroid/view/LayoutInflater;

    sget v1, Lpm/c;->d:I

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    iget-object v1, p0, Lmiuix/springback/trigger/b;->i:Landroid/view/LayoutInflater;

    sget v3, Lpm/c;->e:I

    invoke-virtual {v1, v3, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    iget-object v2, p0, Lmiuix/springback/trigger/b;->k:Landroid/widget/RelativeLayout;

    invoke-virtual {v2, p1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    iget-object p1, p0, Lmiuix/springback/trigger/b;->k:Landroid/widget/RelativeLayout;

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    iget-object p1, p0, Lmiuix/springback/trigger/b;->k:Landroid/widget/RelativeLayout;

    invoke-virtual {p1, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    :cond_2
    iget-object p1, p0, Lmiuix/springback/trigger/b;->k:Landroid/widget/RelativeLayout;

    if-eqz p1, :cond_5

    iget-object v0, p0, Lmiuix/springback/trigger/b;->n:Landroid/view/View;

    if-eqz v0, :cond_5

    goto :goto_0

    :cond_3
    instance-of v0, p1, Lmiuix/springback/trigger/a$d;

    if-eqz v0, :cond_5

    iput-boolean v1, p0, Lmiuix/springback/trigger/b;->G:Z

    check-cast p1, Lmiuix/springback/trigger/a$d;

    iget-object v0, p0, Lmiuix/springback/trigger/b;->o:Landroid/view/View;

    if-nez v0, :cond_5

    iget-object v0, p0, Lmiuix/springback/trigger/b;->i:Landroid/view/LayoutInflater;

    iget-object v1, p0, Lmiuix/springback/trigger/b;->l:Landroid/widget/FrameLayout;

    invoke-virtual {p1, v0, v1}, Lmiuix/springback/trigger/a$a;->onCreateIndicator(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lmiuix/springback/trigger/b;->o:Landroid/view/View;

    if-nez p1, :cond_4

    iget-object p1, p0, Lmiuix/springback/trigger/b;->i:Landroid/view/LayoutInflater;

    sget v0, Lpm/c;->a:I

    iget-object v1, p0, Lmiuix/springback/trigger/b;->l:Landroid/widget/FrameLayout;

    const/4 v2, 0x0

    invoke-virtual {p1, v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lmiuix/springback/trigger/b;->o:Landroid/view/View;

    :cond_4
    iget-object p1, p0, Lmiuix/springback/trigger/b;->l:Landroid/widget/FrameLayout;

    if-eqz p1, :cond_5

    iget-object v0, p0, Lmiuix/springback/trigger/b;->o:Landroid/view/View;

    if-eqz v0, :cond_5

    :goto_0
    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    :cond_5
    return-void
.end method
