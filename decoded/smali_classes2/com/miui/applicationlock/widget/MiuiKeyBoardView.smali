.class public Lcom/miui/applicationlock/widget/MiuiKeyBoardView;
.super Landroid/widget/FrameLayout;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/applicationlock/widget/MiuiKeyBoardView$b;,
        Lcom/miui/applicationlock/widget/MiuiKeyBoardView$KeyButton;
    }
.end annotation


# static fields
.field private static final K:F

.field private static final L:F

.field private static final M:F

.field private static final N:F

.field private static final O:F

.field private static final P:[[F

.field private static final Q:[[F

.field private static final R:[[F

.field private static final S:[[F


# instance fields
.field private A:J

.field private final B:Landroid/animation/ValueAnimator;

.field private C:Landroid/view/animation/Animation;

.field private D:Landroid/view/animation/Animation;

.field public E:I

.field private F:I

.field private G:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/miui/applicationlock/widget/MiuiKeyBoardView$b;",
            ">;"
        }
    .end annotation
.end field

.field private final H:Landroid/content/res/Configuration;

.field private final I:Ljava/lang/Runnable;

.field private final J:Ljava/lang/Runnable;

.field private a:Landroid/widget/TextView;

.field private b:Landroid/widget/FrameLayout;

.field private c:Landroid/widget/FrameLayout;

.field private d:Landroid/widget/FrameLayout;

.field private e:Landroid/view/View;

.field private f:Landroid/view/View;

.field private g:Landroid/view/View;

.field private h:Landroid/view/View;

.field private i:Landroid/view/View;

.field private j:Landroid/view/View;

.field private k:Landroid/view/View;

.field private l:Landroid/view/View;

.field private m:Landroid/view/View;

.field private n:Landroid/view/View;

.field private o:Landroid/view/View;

.field private p:Landroid/view/View;

.field private q:Landroid/view/View;

.field private final r:Landroid/content/Context;

.field private final s:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/miui/applicationlock/widget/MiuiKeyBoardView$KeyButton;",
            ">;"
        }
    .end annotation
.end field

.field private t:Z

.field private u:Z

.field private v:I

.field private w:I

.field private x:I

.field private y:I

.field private z:Z


# direct methods
.method static constructor <clinit>()V
    .locals 18

    invoke-static {}, Lx4/y;->s()Z

    move-result v0

    if-eqz v0, :cond_0

    const v0, 0x3e0f5c29    # 0.14f

    goto :goto_0

    :cond_0
    const v0, 0x3e051eb8    # 0.13f

    :goto_0
    sput v0, Lcom/miui/applicationlock/widget/MiuiKeyBoardView;->K:F

    invoke-static {}, Lx4/y;->s()Z

    move-result v0

    if-eqz v0, :cond_1

    const v0, 0x3fc8f5c3    # 1.57f

    goto :goto_1

    :cond_1
    const v0, 0x3fcccccd    # 1.6f

    :goto_1
    sput v0, Lcom/miui/applicationlock/widget/MiuiKeyBoardView;->L:F

    invoke-static {}, Lx4/y;->s()Z

    move-result v1

    if-eqz v1, :cond_2

    const v1, 0x4053d70a    # 3.31f

    goto :goto_2

    :cond_2
    const v1, 0x4059999a    # 3.4f

    :goto_2
    sput v1, Lcom/miui/applicationlock/widget/MiuiKeyBoardView;->M:F

    invoke-static {}, Lx4/y;->s()Z

    move-result v2

    if-eqz v2, :cond_3

    const v2, 0x40070a3d    # 2.11f

    goto :goto_3

    :cond_3
    const v2, 0x400ccccd    # 2.2f

    :goto_3
    sput v2, Lcom/miui/applicationlock/widget/MiuiKeyBoardView;->N:F

    invoke-static {}, Lx4/y;->s()Z

    move-result v3

    if-eqz v3, :cond_4

    const v3, 0x408b851f    # 4.36f

    goto :goto_4

    :cond_4
    const v3, 0x40933333    # 4.6f

    :goto_4
    sput v3, Lcom/miui/applicationlock/widget/MiuiKeyBoardView;->O:F

    const/4 v4, 0x5

    new-array v5, v4, [[F

    const/16 v6, 0xa

    new-array v7, v6, [F

    fill-array-data v7, :array_0

    const/4 v8, 0x0

    aput-object v7, v5, v8

    new-array v7, v6, [F

    fill-array-data v7, :array_1

    const/4 v9, 0x1

    aput-object v7, v5, v9

    const/16 v7, 0x9

    new-array v10, v7, [F

    fill-array-data v10, :array_2

    const/4 v11, 0x2

    aput-object v10, v5, v11

    new-array v10, v7, [F

    aput v0, v10, v8

    const/high16 v12, 0x3f800000    # 1.0f

    aput v12, v10, v9

    aput v12, v10, v11

    const/4 v13, 0x3

    aput v12, v10, v13

    const/4 v14, 0x4

    aput v12, v10, v14

    aput v12, v10, v4

    const/4 v15, 0x6

    aput v12, v10, v15

    const/16 v16, 0x7

    aput v12, v10, v16

    const/16 v17, 0x8

    aput v0, v10, v17

    aput-object v10, v5, v13

    new-array v10, v15, [F

    aput v0, v10, v8

    aput v0, v10, v9

    aput v12, v10, v11

    aput v2, v10, v13

    aput v12, v10, v14

    aput v1, v10, v4

    aput-object v10, v5, v14

    sput-object v5, Lcom/miui/applicationlock/widget/MiuiKeyBoardView;->P:[[F

    new-array v2, v4, [[F

    new-array v5, v6, [F

    fill-array-data v5, :array_3

    aput-object v5, v2, v8

    new-array v5, v6, [F

    fill-array-data v5, :array_4

    aput-object v5, v2, v9

    new-array v5, v7, [F

    fill-array-data v5, :array_5

    aput-object v5, v2, v11

    new-array v5, v7, [F

    aput v0, v5, v8

    aput v12, v5, v9

    aput v12, v5, v11

    aput v12, v5, v13

    aput v12, v5, v14

    aput v12, v5, v4

    aput v12, v5, v15

    aput v12, v5, v16

    aput v0, v5, v17

    aput-object v5, v2, v13

    new-array v0, v13, [F

    aput v1, v0, v8

    aput v3, v0, v9

    aput v1, v0, v11

    aput-object v0, v2, v14

    sput-object v2, Lcom/miui/applicationlock/widget/MiuiKeyBoardView;->Q:[[F

    new-array v0, v14, [[F

    new-array v1, v13, [F

    fill-array-data v1, :array_6

    aput-object v1, v0, v8

    new-array v1, v13, [F

    fill-array-data v1, :array_7

    aput-object v1, v0, v9

    new-array v1, v13, [F

    fill-array-data v1, :array_8

    aput-object v1, v0, v11

    new-array v1, v13, [F

    fill-array-data v1, :array_9

    aput-object v1, v0, v13

    sput-object v0, Lcom/miui/applicationlock/widget/MiuiKeyBoardView;->R:[[F

    new-array v0, v14, [[F

    new-array v1, v13, [F

    fill-array-data v1, :array_a

    aput-object v1, v0, v8

    new-array v1, v13, [F

    fill-array-data v1, :array_b

    aput-object v1, v0, v9

    new-array v1, v13, [F

    fill-array-data v1, :array_c

    aput-object v1, v0, v11

    new-array v1, v13, [F

    fill-array-data v1, :array_d

    aput-object v1, v0, v13

    sput-object v0, Lcom/miui/applicationlock/widget/MiuiKeyBoardView;->S:[[F

    return-void

    nop

    :array_0
    .array-data 4
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
    .end array-data

    :array_1
    .array-data 4
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
    .end array-data

    :array_2
    .array-data 4
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
    .end array-data

    :array_3
    .array-data 4
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
    .end array-data

    :array_4
    .array-data 4
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
    .end array-data

    :array_5
    .array-data 4
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
    .end array-data

    :array_6
    .array-data 4
        0x40733333    # 3.8f
        0x40733333    # 3.8f
        0x40733333    # 3.8f
    .end array-data

    :array_7
    .array-data 4
        0x40733333    # 3.8f
        0x40733333    # 3.8f
        0x40733333    # 3.8f
    .end array-data

    :array_8
    .array-data 4
        0x40733333    # 3.8f
        0x40733333    # 3.8f
        0x40733333    # 3.8f
    .end array-data

    :array_9
    .array-data 4
        0x40733333    # 3.8f
        0x40733333    # 3.8f
        0x40733333    # 3.8f
    .end array-data

    :array_a
    .array-data 4
        0x406ccccd    # 3.7f
        0x406ccccd    # 3.7f
        0x406ccccd    # 3.7f
    .end array-data

    :array_b
    .array-data 4
        0x406ccccd    # 3.7f
        0x406ccccd    # 3.7f
        0x406ccccd    # 3.7f
    .end array-data

    :array_c
    .array-data 4
        0x406ccccd    # 3.7f
        0x406ccccd    # 3.7f
        0x406ccccd    # 3.7f
    .end array-data

    :array_d
    .array-data 4
        0x406ccccd    # 3.7f
        0x406ccccd    # 3.7f
        0x406ccccd    # 3.7f
    .end array-data
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, -0x1

    invoke-direct {p0, p1, p2, v0}, Lcom/miui/applicationlock/widget/MiuiKeyBoardView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    iput-object p2, p0, Lcom/miui/applicationlock/widget/MiuiKeyBoardView;->s:Ljava/util/ArrayList;

    const/4 p2, 0x0

    iput-boolean p2, p0, Lcom/miui/applicationlock/widget/MiuiKeyBoardView;->t:Z

    iput-boolean p2, p0, Lcom/miui/applicationlock/widget/MiuiKeyBoardView;->u:Z

    iput-boolean p2, p0, Lcom/miui/applicationlock/widget/MiuiKeyBoardView;->z:Z

    const-wide/16 p2, 0x0

    iput-wide p2, p0, Lcom/miui/applicationlock/widget/MiuiKeyBoardView;->A:J

    new-instance p2, Landroid/animation/ValueAnimator;

    invoke-direct {p2}, Landroid/animation/ValueAnimator;-><init>()V

    iput-object p2, p0, Lcom/miui/applicationlock/widget/MiuiKeyBoardView;->B:Landroid/animation/ValueAnimator;

    const/4 p2, 0x0

    iput-object p2, p0, Lcom/miui/applicationlock/widget/MiuiKeyBoardView;->C:Landroid/view/animation/Animation;

    iput-object p2, p0, Lcom/miui/applicationlock/widget/MiuiKeyBoardView;->D:Landroid/view/animation/Animation;

    new-instance p2, Landroid/content/res/Configuration;

    invoke-direct {p2}, Landroid/content/res/Configuration;-><init>()V

    iput-object p2, p0, Lcom/miui/applicationlock/widget/MiuiKeyBoardView;->H:Landroid/content/res/Configuration;

    new-instance p2, Lcom/miui/applicationlock/widget/MiuiKeyBoardView$a;

    invoke-direct {p2, p0}, Lcom/miui/applicationlock/widget/MiuiKeyBoardView$a;-><init>(Lcom/miui/applicationlock/widget/MiuiKeyBoardView;)V

    iput-object p2, p0, Lcom/miui/applicationlock/widget/MiuiKeyBoardView;->I:Ljava/lang/Runnable;

    new-instance p2, Lcom/miui/applicationlock/widget/g;

    invoke-direct {p2, p0}, Lcom/miui/applicationlock/widget/g;-><init>(Lcom/miui/applicationlock/widget/MiuiKeyBoardView;)V

    iput-object p2, p0, Lcom/miui/applicationlock/widget/MiuiKeyBoardView;->J:Ljava/lang/Runnable;

    iput-object p1, p0, Lcom/miui/applicationlock/widget/MiuiKeyBoardView;->r:Landroid/content/Context;

    const p2, 0x7f0e0265

    invoke-static {p1, p2, p0}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    const p2, 0x7f0e0267

    invoke-static {p1, p2, p0}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    const p2, 0x7f0e0266

    invoke-static {p1, p2, p0}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    const p2, 0x7f0e0264

    invoke-static {p1, p2, p0}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Landroid/view/View;->setFocusableInTouchMode(Z)V

    return-void
.end method

.method public static synthetic a(Lcom/miui/applicationlock/widget/MiuiKeyBoardView;)V
    .locals 0

    invoke-direct {p0}, Lcom/miui/applicationlock/widget/MiuiKeyBoardView;->i()V

    return-void
.end method

.method public static synthetic b(Lcom/miui/applicationlock/widget/MiuiKeyBoardView;Landroid/animation/ValueAnimator;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/miui/applicationlock/widget/MiuiKeyBoardView;->j(Landroid/animation/ValueAnimator;)V

    return-void
.end method

.method static synthetic c(Lcom/miui/applicationlock/widget/MiuiKeyBoardView;)V
    .locals 0

    invoke-direct {p0}, Lcom/miui/applicationlock/widget/MiuiKeyBoardView;->k()V

    return-void
.end method

.method private d(Landroid/view/View;I)V
    .locals 1

    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    iput p2, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    invoke-virtual {p1, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method private f(Landroid/view/View;)V
    .locals 7

    instance-of v0, p1, Lcom/miui/applicationlock/widget/MiuiKeyBoardView$KeyButton;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/miui/applicationlock/widget/MiuiKeyBoardView;->a:Landroid/widget/TextView;

    move-object v1, p1

    check-cast v1, Lcom/miui/applicationlock/widget/MiuiKeyBoardView$KeyButton;

    invoke-virtual {v1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/miui/applicationlock/widget/MiuiKeyBoardView;->a:Landroid/widget/TextView;

    sget-object v1, Landroid/graphics/Typeface;->DEFAULT_BOLD:Landroid/graphics/Typeface;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    iget-object v0, p0, Lcom/miui/applicationlock/widget/MiuiKeyBoardView;->r:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0710d8

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lcom/miui/applicationlock/widget/MiuiKeyBoardView;->x:I

    iget-object v0, p0, Lcom/miui/applicationlock/widget/MiuiKeyBoardView;->r:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lcom/miui/applicationlock/widget/MiuiKeyBoardView;->y:I

    iget-object v0, p0, Lcom/miui/applicationlock/widget/MiuiKeyBoardView;->a:Landroid/widget/TextView;

    iget v1, p0, Lcom/miui/applicationlock/widget/MiuiKeyBoardView;->x:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setWidth(I)V

    iget-object v0, p0, Lcom/miui/applicationlock/widget/MiuiKeyBoardView;->a:Landroid/widget/TextView;

    iget v1, p0, Lcom/miui/applicationlock/widget/MiuiKeyBoardView;->y:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setHeight(I)V

    const/4 v0, 0x2

    new-array v1, v0, [F

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-direct {p0, p1, v1, v2, v3}, Lcom/miui/applicationlock/widget/MiuiKeyBoardView;->g(Landroid/view/View;[FZZ)F

    aget v4, v1, v2

    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v5

    iget v6, p0, Lcom/miui/applicationlock/widget/MiuiKeyBoardView;->x:I

    sub-int/2addr v5, v6

    div-int/2addr v5, v0

    int-to-float v0, v5

    add-float/2addr v4, v0

    float-to-int v0, v4

    iput v0, p0, Lcom/miui/applicationlock/widget/MiuiKeyBoardView;->v:I

    const/4 v4, 0x4

    if-gez v0, :cond_0

    iput v4, p0, Lcom/miui/applicationlock/widget/MiuiKeyBoardView;->v:I

    goto :goto_0

    :cond_0
    add-int/2addr v0, v6

    iget-object v5, p0, Lcom/miui/applicationlock/widget/MiuiKeyBoardView;->b:Landroid/widget/FrameLayout;

    invoke-virtual {v5}, Landroid/view/View;->getWidth()I

    move-result v5

    if-le v0, v5, :cond_1

    iget-object v0, p0, Lcom/miui/applicationlock/widget/MiuiKeyBoardView;->b:Landroid/widget/FrameLayout;

    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    move-result v0

    iget v5, p0, Lcom/miui/applicationlock/widget/MiuiKeyBoardView;->x:I

    sub-int/2addr v0, v5

    sub-int/2addr v0, v4

    iput v0, p0, Lcom/miui/applicationlock/widget/MiuiKeyBoardView;->v:I

    :cond_1
    :goto_0
    aget v0, v1, v3

    iget v1, p0, Lcom/miui/applicationlock/widget/MiuiKeyBoardView;->y:I

    int-to-float v1, v1

    sub-float/2addr v0, v1

    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result p1

    int-to-float p1, p1

    sget v1, Lcom/miui/applicationlock/widget/MiuiKeyBoardView;->K:F

    mul-float/2addr p1, v1

    sub-float/2addr v0, p1

    float-to-int p1, v0

    iput p1, p0, Lcom/miui/applicationlock/widget/MiuiKeyBoardView;->w:I

    invoke-direct {p0, v3}, Lcom/miui/applicationlock/widget/MiuiKeyBoardView;->r(Z)V

    iget-object p1, p0, Lcom/miui/applicationlock/widget/MiuiKeyBoardView;->a:Landroid/widget/TextView;

    invoke-virtual {p1, v2}, Landroid/view/View;->setVisibility(I)V

    :cond_2
    return-void
.end method

.method private g(Landroid/view/View;[FZZ)F
    .locals 8

    const/4 v0, 0x1

    const/4 v1, 0x0

    aput v1, p2, v0

    const/4 v2, 0x0

    aput v1, p2, v2

    if-eqz p3, :cond_0

    invoke-virtual {p1}, Landroid/view/View;->getMatrix()Landroid/graphics/Matrix;

    move-result-object v1

    invoke-virtual {v1, p2}, Landroid/graphics/Matrix;->mapPoints([F)V

    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getScaleX()F

    move-result v1

    const/high16 v3, 0x3f800000    # 1.0f

    mul-float/2addr v1, v3

    aget v4, p2, v2

    invoke-virtual {p1}, Landroid/view/View;->getLeft()I

    move-result v5

    int-to-float v5, v5

    add-float/2addr v4, v5

    aput v4, p2, v2

    aget v4, p2, v0

    invoke-virtual {p1}, Landroid/view/View;->getTop()I

    move-result v5

    int-to-float v5, v5

    add-float/2addr v4, v5

    aput v4, p2, v0

    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v4

    :goto_0
    instance-of v5, v4, Landroid/view/View;

    if-eqz v5, :cond_2

    if-eq v4, p0, :cond_2

    check-cast v4, Landroid/view/View;

    if-eqz p3, :cond_1

    invoke-virtual {v4}, Landroid/view/View;->getMatrix()Landroid/graphics/Matrix;

    move-result-object v5

    invoke-virtual {v5, p2}, Landroid/graphics/Matrix;->mapPoints([F)V

    invoke-virtual {v4}, Landroid/view/View;->getScaleX()F

    move-result v5

    mul-float/2addr v1, v5

    :cond_1
    aget v5, p2, v2

    invoke-virtual {v4}, Landroid/view/View;->getLeft()I

    move-result v6

    invoke-virtual {v4}, Landroid/view/View;->getScrollX()I

    move-result v7

    sub-int/2addr v6, v7

    int-to-float v6, v6

    add-float/2addr v5, v6

    aput v5, p2, v2

    aget v5, p2, v0

    invoke-virtual {v4}, Landroid/view/View;->getTop()I

    move-result v6

    invoke-virtual {v4}, Landroid/view/View;->getScrollY()I

    move-result v7

    sub-int/2addr v6, v7

    int-to-float v6, v6

    add-float/2addr v5, v6

    aput v5, p2, v0

    invoke-virtual {v4}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v4

    goto :goto_0

    :cond_2
    if-eqz p4, :cond_3

    aget p3, p2, v2

    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result p4

    int-to-float p4, p4

    sub-float/2addr v3, v1

    mul-float/2addr p4, v3

    const/high16 v4, 0x40000000    # 2.0f

    div-float/2addr p4, v4

    sub-float/2addr p3, p4

    aput p3, p2, v2

    aget p3, p2, v0

    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result p1

    int-to-float p1, p1

    mul-float/2addr p1, v3

    div-float/2addr p1, v4

    sub-float/2addr p3, p1

    aput p3, p2, v0

    :cond_3
    return v1
.end method

.method private synthetic i()V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/miui/applicationlock/widget/MiuiKeyBoardView;->r(Z)V

    return-void
.end method

.method private synthetic j(Landroid/animation/ValueAnimator;)V
    .locals 1

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    iget-object v0, p0, Lcom/miui/applicationlock/widget/MiuiKeyBoardView;->a:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/view/View;->setAlpha(F)V

    return-void
.end method

.method private k()V
    .locals 2

    iget-object v0, p0, Lcom/miui/applicationlock/widget/MiuiKeyBoardView;->G:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/miui/applicationlock/widget/MiuiKeyBoardView$b;

    invoke-interface {v1}, Lcom/miui/applicationlock/widget/MiuiKeyBoardView$b;->b()V

    goto :goto_0

    :cond_0
    return-void
.end method

.method private l()V
    .locals 2

    iget-object v0, p0, Lcom/miui/applicationlock/widget/MiuiKeyBoardView;->G:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/miui/applicationlock/widget/MiuiKeyBoardView$b;

    invoke-interface {v1}, Lcom/miui/applicationlock/widget/MiuiKeyBoardView$b;->a()V

    goto :goto_0

    :cond_0
    return-void
.end method

.method private m(Ljava/lang/CharSequence;)V
    .locals 2

    iget-object v0, p0, Lcom/miui/applicationlock/widget/MiuiKeyBoardView;->G:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/miui/applicationlock/widget/MiuiKeyBoardView$b;

    invoke-interface {v1, p1}, Lcom/miui/applicationlock/widget/MiuiKeyBoardView$b;->c(Ljava/lang/CharSequence;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method private n()V
    .locals 5

    iget-object v0, p0, Lcom/miui/applicationlock/widget/MiuiKeyBoardView;->s:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/miui/applicationlock/widget/MiuiKeyBoardView$KeyButton;

    invoke-virtual {v1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v3

    instance-of v3, v3, Ljava/lang/String;

    if-eqz v3, :cond_0

    invoke-virtual {v1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v4

    if-ne v4, v2, :cond_0

    invoke-virtual {v3}, Ljava/lang/String;->toCharArray()[C

    move-result-object v2

    const/4 v4, 0x0

    aget-char v2, v2, v4

    invoke-static {v2}, Ljava/lang/Character;->isLowerCase(C)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-boolean v2, p0, Lcom/miui/applicationlock/widget/MiuiKeyBoardView;->t:Z

    if-eqz v2, :cond_1

    invoke-virtual {v3}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v2

    goto :goto_1

    :cond_1
    invoke-virtual {v3}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v2

    :goto_1
    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    :cond_2
    iget-boolean v0, p0, Lcom/miui/applicationlock/widget/MiuiKeyBoardView;->t:Z

    xor-int/2addr v0, v2

    iput-boolean v0, p0, Lcom/miui/applicationlock/widget/MiuiKeyBoardView;->t:Z

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/miui/applicationlock/widget/MiuiKeyBoardView;->e:Landroid/view/View;

    const v1, 0x7f0809c4

    goto :goto_2

    :cond_3
    iget-object v0, p0, Lcom/miui/applicationlock/widget/MiuiKeyBoardView;->e:Landroid/view/View;

    const v1, 0x7f0809c3

    :goto_2
    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundResource(I)V

    return-void
.end method

.method private o()V
    .locals 2

    iget-boolean v0, p0, Lcom/miui/applicationlock/widget/MiuiKeyBoardView;->u:Z

    xor-int/lit8 v0, v0, 0x1

    iput-boolean v0, p0, Lcom/miui/applicationlock/widget/MiuiKeyBoardView;->u:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/applicationlock/widget/MiuiKeyBoardView;->h:Landroid/view/View;

    const v1, 0x7f0809d5

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/miui/applicationlock/widget/MiuiKeyBoardView;->h:Landroid/view/View;

    const v1, 0x7f0809d3

    :goto_0
    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundResource(I)V

    return-void
.end method

.method private p(Z)V
    .locals 4

    invoke-static {}, Lx4/y;->s()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/applicationlock/widget/MiuiKeyBoardView;->d:Landroid/widget/FrameLayout;

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/miui/applicationlock/widget/MiuiKeyBoardView;->s()V

    :cond_0
    iget-object v0, p0, Lcom/miui/applicationlock/widget/MiuiKeyBoardView;->b:Landroid/widget/FrameLayout;

    const/4 v1, 0x0

    const/4 v2, 0x4

    if-eqz p1, :cond_1

    move v3, v1

    goto :goto_0

    :cond_1
    move v3, v2

    :goto_0
    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/miui/applicationlock/widget/MiuiKeyBoardView;->c:Landroid/widget/FrameLayout;

    if-eqz p1, :cond_2

    move v1, v2

    :cond_2
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    iget-object p1, p0, Lcom/miui/applicationlock/widget/MiuiKeyBoardView;->d:Landroid/widget/FrameLayout;

    invoke-virtual {p1, v2}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method

.method private q()V
    .locals 2

    iget-object v0, p0, Lcom/miui/applicationlock/widget/MiuiKeyBoardView;->d:Landroid/widget/FrameLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/miui/applicationlock/widget/MiuiKeyBoardView;->b:Landroid/widget/FrameLayout;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/miui/applicationlock/widget/MiuiKeyBoardView;->c:Landroid/widget/FrameLayout;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    invoke-static {}, Lx4/y;->s()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/miui/applicationlock/widget/MiuiKeyBoardView;->t()V

    :cond_0
    return-void
.end method

.method private r(Z)V
    .locals 3

    iget-object v0, p0, Lcom/miui/applicationlock/widget/MiuiKeyBoardView;->B:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    iget-object v0, p0, Lcom/miui/applicationlock/widget/MiuiKeyBoardView;->J:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Landroid/view/View;->removeCallbacks(Ljava/lang/Runnable;)Z

    iget-object v0, p0, Lcom/miui/applicationlock/widget/MiuiKeyBoardView;->B:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/Animator;->removeAllListeners()V

    iget-object v0, p0, Lcom/miui/applicationlock/widget/MiuiKeyBoardView;->B:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->removeAllUpdateListeners()V

    const/4 v0, 0x2

    iget-object v1, p0, Lcom/miui/applicationlock/widget/MiuiKeyBoardView;->B:Landroid/animation/ValueAnimator;

    new-array v0, v0, [F

    if-eqz p1, :cond_0

    fill-array-data v0, :array_0

    invoke-virtual {v1, v0}, Landroid/animation/ValueAnimator;->setFloatValues([F)V

    goto :goto_0

    :cond_0
    fill-array-data v0, :array_1

    invoke-virtual {v1, v0}, Landroid/animation/ValueAnimator;->setFloatValues([F)V

    :goto_0
    iget-object v0, p0, Lcom/miui/applicationlock/widget/MiuiKeyBoardView;->B:Landroid/animation/ValueAnimator;

    const-wide/16 v1, 0x64

    invoke-virtual {v0, v1, v2}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    iget-object v0, p0, Lcom/miui/applicationlock/widget/MiuiKeyBoardView;->a:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/miui/applicationlock/widget/MiuiKeyBoardView;->a:Landroid/widget/TextView;

    iget v1, p0, Lcom/miui/applicationlock/widget/MiuiKeyBoardView;->x:I

    int-to-float v1, v1

    const/high16 v2, 0x3f000000    # 0.5f

    mul-float/2addr v1, v2

    invoke-virtual {v0, v1}, Landroid/view/View;->setPivotX(F)V

    iget-object v0, p0, Lcom/miui/applicationlock/widget/MiuiKeyBoardView;->a:Landroid/widget/TextView;

    iget v1, p0, Lcom/miui/applicationlock/widget/MiuiKeyBoardView;->y:I

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setPivotY(F)V

    iget-object v0, p0, Lcom/miui/applicationlock/widget/MiuiKeyBoardView;->B:Landroid/animation/ValueAnimator;

    new-instance v1, Lcom/miui/applicationlock/widget/h;

    invoke-direct {v1, p0}, Lcom/miui/applicationlock/widget/h;-><init>(Lcom/miui/applicationlock/widget/MiuiKeyBoardView;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    iget-object v0, p0, Lcom/miui/applicationlock/widget/MiuiKeyBoardView;->B:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    iput-boolean p1, p0, Lcom/miui/applicationlock/widget/MiuiKeyBoardView;->z:Z

    if-eqz p1, :cond_1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/miui/applicationlock/widget/MiuiKeyBoardView;->A:J

    :cond_1
    return-void

    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data

    :array_1
    .array-data 4
        0x3f800000    # 1.0f
        0x0
    .end array-data
.end method

.method private s()V
    .locals 3

    invoke-virtual {p0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout$LayoutParams;

    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f071252

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v1

    iput v1, v0, Landroid/widget/LinearLayout$LayoutParams;->height:I

    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f071253

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v1

    iput v1, v0, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f071251

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v1

    iput v1, v0, Landroid/widget/LinearLayout$LayoutParams;->bottomMargin:I

    invoke-virtual {p0, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method private setOnTouchAndClickListenerForKey(Landroid/view/ViewGroup;)V
    .locals 4

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_2

    invoke-virtual {p1, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    instance-of v3, v2, Lcom/miui/applicationlock/widget/MiuiKeyBoardView$KeyButton;

    if-eqz v3, :cond_0

    invoke-virtual {v2, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-virtual {v2, p0}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    iget-object v3, p0, Lcom/miui/applicationlock/widget/MiuiKeyBoardView;->s:Ljava/util/ArrayList;

    check-cast v2, Lcom/miui/applicationlock/widget/MiuiKeyBoardView$KeyButton;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_0
    instance-of v3, v2, Landroid/view/ViewGroup;

    if-eqz v3, :cond_1

    check-cast v2, Landroid/view/ViewGroup;

    invoke-direct {p0, v2}, Lcom/miui/applicationlock/widget/MiuiKeyBoardView;->setOnTouchAndClickListenerForKey(Landroid/view/ViewGroup;)V

    :cond_1
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    return-void
.end method

.method private t()V
    .locals 3

    invoke-virtual {p0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout$LayoutParams;

    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f071255

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v1

    iput v1, v0, Landroid/widget/LinearLayout$LayoutParams;->height:I

    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f071256

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v1

    iput v1, v0, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f071254

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v1

    iput v1, v0, Landroid/widget/LinearLayout$LayoutParams;->bottomMargin:I

    invoke-virtual {p0, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method


# virtual methods
.method public e(Lcom/miui/applicationlock/widget/MiuiKeyBoardView$b;)V
    .locals 2

    iget-object v0, p0, Lcom/miui/applicationlock/widget/MiuiKeyBoardView;->G:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/miui/applicationlock/widget/MiuiKeyBoardView$b;

    invoke-virtual {p1, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    return-void

    :cond_1
    iget-object v0, p0, Lcom/miui/applicationlock/widget/MiuiKeyBoardView;->G:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method h(Landroid/view/ViewGroup;IIIII[[F)V
    .locals 17

    move/from16 v0, p3

    move/from16 v1, p4

    move-object/from16 v2, p7

    array-length v3, v2

    move-object/from16 v3, p0

    iget v4, v3, Lcom/miui/applicationlock/widget/MiuiKeyBoardView;->E:I

    array-length v5, v2

    const/4 v7, 0x0

    const/4 v8, 0x0

    :goto_0
    if-ge v7, v5, :cond_3

    aget-object v9, v2, v7

    const/4 v10, 0x0

    array-length v11, v9

    const/4 v12, 0x0

    :goto_1
    if-ge v12, v11, :cond_0

    aget v13, v9, v12

    int-to-float v14, v0

    mul-float/2addr v13, v14

    add-float/2addr v10, v13

    add-int/lit8 v12, v12, 0x1

    goto :goto_1

    :cond_0
    array-length v11, v9

    add-int/lit8 v11, v11, -0x1

    mul-int/2addr v11, v1

    int-to-float v11, v11

    add-float/2addr v10, v11

    move/from16 v11, p2

    int-to-float v12, v11

    sub-float/2addr v12, v10

    const/high16 v10, 0x40000000    # 2.0f

    div-float/2addr v12, v10

    float-to-int v10, v12

    array-length v12, v9

    const/4 v13, 0x0

    :goto_2
    if-ge v13, v12, :cond_2

    aget v14, v9, v13

    move-object/from16 v15, p1

    invoke-virtual {v15, v8}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v16

    move-object/from16 v6, v16

    check-cast v6, Lcom/miui/applicationlock/widget/MiuiKeyBoardView$KeyButton;

    invoke-virtual {v6}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v2

    const-string v3, "!"

    invoke-virtual {v3, v2}, Ljava/lang/String;->contentEquals(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    int-to-float v2, v10

    int-to-float v3, v0

    const/high16 v16, 0x3f800000    # 1.0f

    sub-float v16, v14, v16

    mul-float v3, v3, v16

    add-float/2addr v2, v3

    float-to-int v2, v2

    goto :goto_3

    :cond_1
    move v2, v10

    :goto_3
    int-to-float v3, v10

    int-to-float v10, v0

    mul-float/2addr v10, v14

    add-float v14, v3, v10

    float-to-int v14, v14

    add-int v0, v4, p5

    invoke-virtual {v6, v2, v4, v14, v0}, Lcom/miui/applicationlock/widget/MiuiKeyBoardView$KeyButton;->layout(IIII)V

    int-to-float v0, v1

    add-float/2addr v10, v0

    add-float/2addr v3, v10

    float-to-int v10, v3

    add-int/lit8 v8, v8, 0x1

    add-int/lit8 v13, v13, 0x1

    move-object/from16 v3, p0

    move/from16 v0, p3

    move-object/from16 v2, p7

    goto :goto_2

    :cond_2
    move-object/from16 v15, p1

    add-int v0, p6, p5

    add-int/2addr v4, v0

    add-int/lit8 v7, v7, 0x1

    move-object/from16 v3, p0

    move/from16 v0, p3

    move-object/from16 v2, p7

    goto :goto_0

    :cond_3
    return-void
.end method

.method protected onAttachedToWindow()V
    .locals 2

    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setClipChildren(Z)V

    :cond_0
    invoke-super {p0}, Landroid/widget/FrameLayout;->onAttachedToWindow()V

    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 2

    invoke-virtual {p0}, Landroid/view/View;->isEnabled()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/miui/applicationlock/widget/MiuiKeyBoardView;->e:Landroid/view/View;

    if-ne p1, v0, :cond_1

    invoke-direct {p0}, Lcom/miui/applicationlock/widget/MiuiKeyBoardView;->n()V

    goto/16 :goto_4

    :cond_1
    iget-object v0, p0, Lcom/miui/applicationlock/widget/MiuiKeyBoardView;->h:Landroid/view/View;

    if-ne p1, v0, :cond_2

    invoke-direct {p0}, Lcom/miui/applicationlock/widget/MiuiKeyBoardView;->o()V

    goto/16 :goto_4

    :cond_2
    iget-object v0, p0, Lcom/miui/applicationlock/widget/MiuiKeyBoardView;->i:Landroid/view/View;

    if-ne p1, v0, :cond_3

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lcom/miui/applicationlock/widget/MiuiKeyBoardView;->p(Z)V

    goto :goto_4

    :cond_3
    iget-object v0, p0, Lcom/miui/applicationlock/widget/MiuiKeyBoardView;->l:Landroid/view/View;

    const/4 v1, 0x1

    if-ne p1, v0, :cond_4

    :goto_0
    invoke-direct {p0, v1}, Lcom/miui/applicationlock/widget/MiuiKeyBoardView;->p(Z)V

    goto :goto_4

    :cond_4
    iget-object v0, p0, Lcom/miui/applicationlock/widget/MiuiKeyBoardView;->j:Landroid/view/View;

    if-ne p1, v0, :cond_5

    invoke-direct {p0}, Lcom/miui/applicationlock/widget/MiuiKeyBoardView;->q()V

    goto :goto_4

    :cond_5
    iget-object v0, p0, Lcom/miui/applicationlock/widget/MiuiKeyBoardView;->q:Landroid/view/View;

    if-ne p1, v0, :cond_6

    goto :goto_0

    :cond_6
    iget-object v0, p0, Lcom/miui/applicationlock/widget/MiuiKeyBoardView;->f:Landroid/view/View;

    if-eq p1, v0, :cond_c

    iget-object v0, p0, Lcom/miui/applicationlock/widget/MiuiKeyBoardView;->k:Landroid/view/View;

    if-eq p1, v0, :cond_c

    iget-object v0, p0, Lcom/miui/applicationlock/widget/MiuiKeyBoardView;->p:Landroid/view/View;

    if-ne p1, v0, :cond_7

    goto :goto_3

    :cond_7
    iget-object v0, p0, Lcom/miui/applicationlock/widget/MiuiKeyBoardView;->n:Landroid/view/View;

    if-eq p1, v0, :cond_b

    iget-object v0, p0, Lcom/miui/applicationlock/widget/MiuiKeyBoardView;->o:Landroid/view/View;

    if-ne p1, v0, :cond_8

    goto :goto_2

    :cond_8
    iget-object v0, p0, Lcom/miui/applicationlock/widget/MiuiKeyBoardView;->m:Landroid/view/View;

    if-eq p1, v0, :cond_a

    iget-object v0, p0, Lcom/miui/applicationlock/widget/MiuiKeyBoardView;->g:Landroid/view/View;

    if-ne p1, v0, :cond_9

    goto :goto_1

    :cond_9
    check-cast p1, Lcom/miui/applicationlock/widget/MiuiKeyBoardView$KeyButton;

    invoke-virtual {p1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/miui/applicationlock/widget/MiuiKeyBoardView;->m(Ljava/lang/CharSequence;)V

    iget-boolean p1, p0, Lcom/miui/applicationlock/widget/MiuiKeyBoardView;->u:Z

    if-nez p1, :cond_d

    iget-object p1, p0, Lcom/miui/applicationlock/widget/MiuiKeyBoardView;->c:Landroid/widget/FrameLayout;

    invoke-virtual {p1}, Landroid/view/View;->getVisibility()I

    move-result p1

    if-nez p1, :cond_d

    goto :goto_0

    :cond_a
    :goto_1
    const-string p1, " "

    invoke-direct {p0, p1}, Lcom/miui/applicationlock/widget/MiuiKeyBoardView;->m(Ljava/lang/CharSequence;)V

    goto :goto_4

    :cond_b
    :goto_2
    invoke-direct {p0}, Lcom/miui/applicationlock/widget/MiuiKeyBoardView;->l()V

    goto :goto_4

    :cond_c
    :goto_3
    invoke-direct {p0}, Lcom/miui/applicationlock/widget/MiuiKeyBoardView;->k()V

    :cond_d
    :goto_4
    return-void
.end method

.method protected onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 1

    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    invoke-static {}, Lx4/y;->s()Z

    move-result v0

    if-nez v0, :cond_3

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lx4/y;->m(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_1

    :cond_0
    iget-object v0, p0, Lcom/miui/applicationlock/widget/MiuiKeyBoardView;->H:Landroid/content/res/Configuration;

    invoke-virtual {v0, p1}, Landroid/content/res/Configuration;->updateFrom(Landroid/content/res/Configuration;)I

    move-result p1

    and-int/lit16 p1, p1, 0x80

    if-eqz p1, :cond_1

    const/4 p1, 0x1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    :goto_0
    if-eqz p1, :cond_3

    invoke-static {}, Lx4/y;->s()Z

    move-result p1

    if-eqz p1, :cond_3

    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v0, 0x7f0710dd

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    iput p1, p0, Lcom/miui/applicationlock/widget/MiuiKeyBoardView;->E:I

    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v0, 0x7f0710dc

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    iput p1, p0, Lcom/miui/applicationlock/widget/MiuiKeyBoardView;->F:I

    iget-object p1, p0, Lcom/miui/applicationlock/widget/MiuiKeyBoardView;->d:Landroid/widget/FrameLayout;

    invoke-virtual {p1}, Landroid/view/View;->getVisibility()I

    move-result p1

    if-nez p1, :cond_2

    invoke-direct {p0}, Lcom/miui/applicationlock/widget/MiuiKeyBoardView;->t()V

    goto :goto_1

    :cond_2
    invoke-direct {p0}, Lcom/miui/applicationlock/widget/MiuiKeyBoardView;->s()V

    :cond_3
    :goto_1
    return-void
.end method

.method protected onFinishInflate()V
    .locals 2

    invoke-super {p0}, Landroid/widget/FrameLayout;->onFinishInflate()V

    iget-object v0, p0, Lcom/miui/applicationlock/widget/MiuiKeyBoardView;->r:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0710dd

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lcom/miui/applicationlock/widget/MiuiKeyBoardView;->E:I

    const v1, 0x7f0710dc

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/miui/applicationlock/widget/MiuiKeyBoardView;->F:I

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f01008e

    invoke-static {v0, v1}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/applicationlock/widget/MiuiKeyBoardView;->C:Landroid/view/animation/Animation;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f010088

    invoke-static {v0, v1}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/applicationlock/widget/MiuiKeyBoardView;->D:Landroid/view/animation/Animation;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/miui/applicationlock/widget/MiuiKeyBoardView;->G:Ljava/util/ArrayList;

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->setClipChildren(Z)V

    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->setClipToPadding(Z)V

    const v1, 0x7f0b08ee

    invoke-virtual {p0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/miui/applicationlock/widget/MiuiKeyBoardView;->a:Landroid/widget/TextView;

    const v1, 0x7f0b064a

    invoke-virtual {p0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/FrameLayout;

    iput-object v1, p0, Lcom/miui/applicationlock/widget/MiuiKeyBoardView;->b:Landroid/widget/FrameLayout;

    invoke-virtual {v1, v0}, Landroid/view/View;->setVisibility(I)V

    const v0, 0x7f0b01a6

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/applicationlock/widget/MiuiKeyBoardView;->e:Landroid/view/View;

    const v0, 0x7f0b01b3

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/applicationlock/widget/MiuiKeyBoardView;->f:Landroid/view/View;

    const v0, 0x7f0b01c5

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/applicationlock/widget/MiuiKeyBoardView;->i:Landroid/view/View;

    const v0, 0x7f0b01c4

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/applicationlock/widget/MiuiKeyBoardView;->j:Landroid/view/View;

    const v0, 0x7f0b01b5

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/applicationlock/widget/MiuiKeyBoardView;->g:Landroid/view/View;

    const v0, 0x7f0b01b4

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/applicationlock/widget/MiuiKeyBoardView;->o:Landroid/view/View;

    const v0, 0x7f0b064c

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    iput-object v0, p0, Lcom/miui/applicationlock/widget/MiuiKeyBoardView;->c:Landroid/widget/FrameLayout;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    const v0, 0x7f0b01c9

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/applicationlock/widget/MiuiKeyBoardView;->k:Landroid/view/View;

    const v0, 0x7f0b01ca

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/applicationlock/widget/MiuiKeyBoardView;->h:Landroid/view/View;

    const v0, 0x7f0b01c3

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/applicationlock/widget/MiuiKeyBoardView;->l:Landroid/view/View;

    const v0, 0x7f0b01cc

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/applicationlock/widget/MiuiKeyBoardView;->m:Landroid/view/View;

    const v0, 0x7f0b01cb

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/applicationlock/widget/MiuiKeyBoardView;->n:Landroid/view/View;

    const v0, 0x7f0b064b

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    iput-object v0, p0, Lcom/miui/applicationlock/widget/MiuiKeyBoardView;->d:Landroid/widget/FrameLayout;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    const v0, 0x7f0b01b8

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/applicationlock/widget/MiuiKeyBoardView;->p:Landroid/view/View;

    const v0, 0x7f0b01a4

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/applicationlock/widget/MiuiKeyBoardView;->q:Landroid/view/View;

    iget-object v0, p0, Lcom/miui/applicationlock/widget/MiuiKeyBoardView;->b:Landroid/widget/FrameLayout;

    invoke-direct {p0, v0}, Lcom/miui/applicationlock/widget/MiuiKeyBoardView;->setOnTouchAndClickListenerForKey(Landroid/view/ViewGroup;)V

    iget-object v0, p0, Lcom/miui/applicationlock/widget/MiuiKeyBoardView;->c:Landroid/widget/FrameLayout;

    invoke-direct {p0, v0}, Lcom/miui/applicationlock/widget/MiuiKeyBoardView;->setOnTouchAndClickListenerForKey(Landroid/view/ViewGroup;)V

    iget-object v0, p0, Lcom/miui/applicationlock/widget/MiuiKeyBoardView;->d:Landroid/widget/FrameLayout;

    invoke-direct {p0, v0}, Lcom/miui/applicationlock/widget/MiuiKeyBoardView;->setOnTouchAndClickListenerForKey(Landroid/view/ViewGroup;)V

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lx4/g;->g(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f070723

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iget-object v1, p0, Lcom/miui/applicationlock/widget/MiuiKeyBoardView;->b:Landroid/widget/FrameLayout;

    invoke-direct {p0, v1, v0}, Lcom/miui/applicationlock/widget/MiuiKeyBoardView;->d(Landroid/view/View;I)V

    iget-object v1, p0, Lcom/miui/applicationlock/widget/MiuiKeyBoardView;->c:Landroid/widget/FrameLayout;

    invoke-direct {p0, v1, v0}, Lcom/miui/applicationlock/widget/MiuiKeyBoardView;->d(Landroid/view/View;I)V

    iget-object v1, p0, Lcom/miui/applicationlock/widget/MiuiKeyBoardView;->d:Landroid/widget/FrameLayout;

    invoke-direct {p0, v1, v0}, Lcom/miui/applicationlock/widget/MiuiKeyBoardView;->d(Landroid/view/View;I)V

    :cond_0
    return-void
.end method

.method protected onLayout(ZIIII)V
    .locals 17

    move-object/from16 v8, p0

    sub-int v9, p4, p2

    sub-int v10, p5, p3

    iget v0, v8, Lcom/miui/applicationlock/widget/MiuiKeyBoardView;->F:I

    mul-int/lit8 v0, v0, 0x2

    sub-int v0, v9, v0

    sget-object v7, Lcom/miui/applicationlock/widget/MiuiKeyBoardView;->P:[[F

    const/4 v1, 0x0

    aget-object v2, v7, v1

    array-length v2, v2

    div-int/2addr v0, v2

    int-to-float v0, v0

    const v2, 0x3f91eb85    # 1.14f

    div-float/2addr v0, v2

    float-to-int v11, v0

    int-to-float v0, v11

    const v2, 0x3e0f5c29    # 0.14f

    mul-float/2addr v0, v2

    float-to-int v12, v0

    iget v0, v8, Lcom/miui/applicationlock/widget/MiuiKeyBoardView;->E:I

    mul-int/lit8 v0, v0, 0x2

    sub-int v0, v10, v0

    array-length v2, v7

    div-int/2addr v0, v2

    int-to-float v0, v0

    sget v13, Lcom/miui/applicationlock/widget/MiuiKeyBoardView;->K:F

    const/high16 v14, 0x3f800000    # 1.0f

    add-float v2, v13, v14

    div-float/2addr v0, v2

    float-to-int v15, v0

    int-to-float v0, v15

    invoke-static {}, Lx4/y;->s()Z

    move-result v2

    if-eqz v2, :cond_0

    const v2, 0x3e4ccccd    # 0.2f

    goto :goto_0

    :cond_0
    move v2, v13

    :goto_0
    mul-float/2addr v0, v2

    float-to-int v6, v0

    iget-object v0, v8, Lcom/miui/applicationlock/widget/MiuiKeyBoardView;->b:Landroid/widget/FrameLayout;

    invoke-virtual {v0, v1, v1, v9, v10}, Landroid/view/View;->layout(IIII)V

    iget-object v0, v8, Lcom/miui/applicationlock/widget/MiuiKeyBoardView;->c:Landroid/widget/FrameLayout;

    invoke-virtual {v0, v1, v1, v9, v10}, Landroid/view/View;->layout(IIII)V

    iget-object v0, v8, Lcom/miui/applicationlock/widget/MiuiKeyBoardView;->d:Landroid/widget/FrameLayout;

    invoke-virtual {v0, v1, v1, v9, v10}, Landroid/view/View;->layout(IIII)V

    iget-object v1, v8, Lcom/miui/applicationlock/widget/MiuiKeyBoardView;->b:Landroid/widget/FrameLayout;

    move-object/from16 v0, p0

    move v2, v9

    move v3, v11

    move v4, v12

    move v5, v15

    move/from16 v16, v6

    invoke-virtual/range {v0 .. v7}, Lcom/miui/applicationlock/widget/MiuiKeyBoardView;->h(Landroid/view/ViewGroup;IIIII[[F)V

    iget-object v1, v8, Lcom/miui/applicationlock/widget/MiuiKeyBoardView;->c:Landroid/widget/FrameLayout;

    sget-object v7, Lcom/miui/applicationlock/widget/MiuiKeyBoardView;->Q:[[F

    invoke-virtual/range {v0 .. v7}, Lcom/miui/applicationlock/widget/MiuiKeyBoardView;->h(Landroid/view/ViewGroup;IIIII[[F)V

    iget v0, v8, Lcom/miui/applicationlock/widget/MiuiKeyBoardView;->E:I

    mul-int/lit8 v0, v0, 0x2

    sub-int/2addr v10, v0

    sget-object v0, Lcom/miui/applicationlock/widget/MiuiKeyBoardView;->R:[[F

    array-length v1, v0

    div-int/2addr v10, v1

    int-to-float v1, v10

    add-float/2addr v13, v14

    div-float/2addr v1, v13

    float-to-int v5, v1

    iget-object v1, v8, Lcom/miui/applicationlock/widget/MiuiKeyBoardView;->d:Landroid/widget/FrameLayout;

    invoke-static {}, Lx4/y;->s()Z

    move-result v2

    if-eqz v2, :cond_1

    sget-object v0, Lcom/miui/applicationlock/widget/MiuiKeyBoardView;->S:[[F

    :cond_1
    move-object v7, v0

    move-object/from16 v0, p0

    move v2, v9

    move v3, v11

    move v4, v12

    move/from16 v6, v16

    invoke-virtual/range {v0 .. v7}, Lcom/miui/applicationlock/widget/MiuiKeyBoardView;->h(Landroid/view/ViewGroup;IIIII[[F)V

    iget-object v0, v8, Lcom/miui/applicationlock/widget/MiuiKeyBoardView;->a:Landroid/widget/TextView;

    iget v1, v8, Lcom/miui/applicationlock/widget/MiuiKeyBoardView;->v:I

    iget v2, v8, Lcom/miui/applicationlock/widget/MiuiKeyBoardView;->w:I

    iget v3, v8, Lcom/miui/applicationlock/widget/MiuiKeyBoardView;->x:I

    add-int/2addr v3, v1

    iget v4, v8, Lcom/miui/applicationlock/widget/MiuiKeyBoardView;->y:I

    add-int/2addr v4, v2

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/view/View;->layout(IIII)V

    return-void
.end method

.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 6

    invoke-virtual {p0}, Landroid/view/View;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_7

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result p2

    const/4 v0, 0x1

    if-eqz p2, :cond_4

    if-eq p2, v0, :cond_0

    const/4 v0, 0x3

    if-eq p2, v0, :cond_0

    goto :goto_1

    :cond_0
    const-wide/16 v0, 0x12c

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iget-wide v4, p0, Lcom/miui/applicationlock/widget/MiuiKeyBoardView;->A:J

    sub-long/2addr v2, v4

    sub-long/2addr v0, v2

    iget-boolean p2, p0, Lcom/miui/applicationlock/widget/MiuiKeyBoardView;->z:Z

    if-eqz p2, :cond_2

    iget-object p2, p0, Lcom/miui/applicationlock/widget/MiuiKeyBoardView;->J:Ljava/lang/Runnable;

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-lez v4, :cond_1

    goto :goto_0

    :cond_1
    move-wide v0, v2

    :goto_0
    invoke-virtual {p0, p2, v0, v1}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_2
    iget-object p2, p0, Lcom/miui/applicationlock/widget/MiuiKeyBoardView;->f:Landroid/view/View;

    if-eq p1, p2, :cond_3

    iget-object p2, p0, Lcom/miui/applicationlock/widget/MiuiKeyBoardView;->k:Landroid/view/View;

    if-eq p1, p2, :cond_3

    iget-object p2, p0, Lcom/miui/applicationlock/widget/MiuiKeyBoardView;->p:Landroid/view/View;

    if-ne p1, p2, :cond_7

    :cond_3
    iget-object p1, p0, Lcom/miui/applicationlock/widget/MiuiKeyBoardView;->I:Ljava/lang/Runnable;

    invoke-virtual {p0, p1}, Landroid/view/View;->removeCallbacks(Ljava/lang/Runnable;)Z

    goto :goto_1

    :cond_4
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object p2

    instance-of p2, p2, Ljava/lang/String;

    if-eqz p2, :cond_5

    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/String;

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result p2

    if-ne p2, v0, :cond_5

    invoke-direct {p0, p1}, Lcom/miui/applicationlock/widget/MiuiKeyBoardView;->f(Landroid/view/View;)V

    :cond_5
    iget-object p2, p0, Lcom/miui/applicationlock/widget/MiuiKeyBoardView;->f:Landroid/view/View;

    if-eq p1, p2, :cond_6

    iget-object p2, p0, Lcom/miui/applicationlock/widget/MiuiKeyBoardView;->k:Landroid/view/View;

    if-eq p1, p2, :cond_6

    iget-object p2, p0, Lcom/miui/applicationlock/widget/MiuiKeyBoardView;->p:Landroid/view/View;

    if-ne p1, p2, :cond_7

    :cond_6
    iget-object p1, p0, Lcom/miui/applicationlock/widget/MiuiKeyBoardView;->I:Ljava/lang/Runnable;

    const-wide/16 v0, 0x1f4

    invoke-virtual {p0, p1, v0, v1}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_7
    :goto_1
    const/4 p1, 0x0

    return p1
.end method
