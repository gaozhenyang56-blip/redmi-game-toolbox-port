.class public Landroidx/constraintlayout/motion/widget/r$b;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/constraintlayout/motion/widget/r;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "b"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/constraintlayout/motion/widget/r$b$a;
    }
.end annotation


# instance fields
.field private a:I

.field private b:Z

.field private c:I

.field private d:I

.field private e:I

.field private f:Ljava/lang/String;

.field private g:I

.field private h:I

.field private i:F

.field private final j:Landroidx/constraintlayout/motion/widget/r;

.field private k:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroidx/constraintlayout/motion/widget/g;",
            ">;"
        }
    .end annotation
.end field

.field private l:Landroidx/constraintlayout/motion/widget/s;

.field private m:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroidx/constraintlayout/motion/widget/r$b$a;",
            ">;"
        }
    .end annotation
.end field

.field private n:I

.field private o:Z

.field private p:I

.field private q:I

.field private r:I


# direct methods
.method public constructor <init>(ILandroidx/constraintlayout/motion/widget/r;II)V
    .locals 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    iput v0, p0, Landroidx/constraintlayout/motion/widget/r$b;->a:I

    const/4 v1, 0x0

    iput-boolean v1, p0, Landroidx/constraintlayout/motion/widget/r$b;->b:Z

    iput v0, p0, Landroidx/constraintlayout/motion/widget/r$b;->c:I

    iput v0, p0, Landroidx/constraintlayout/motion/widget/r$b;->d:I

    iput v1, p0, Landroidx/constraintlayout/motion/widget/r$b;->e:I

    const/4 v2, 0x0

    iput-object v2, p0, Landroidx/constraintlayout/motion/widget/r$b;->f:Ljava/lang/String;

    iput v0, p0, Landroidx/constraintlayout/motion/widget/r$b;->g:I

    const/16 v3, 0x190

    iput v3, p0, Landroidx/constraintlayout/motion/widget/r$b;->h:I

    const/4 v3, 0x0

    iput v3, p0, Landroidx/constraintlayout/motion/widget/r$b;->i:F

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iput-object v3, p0, Landroidx/constraintlayout/motion/widget/r$b;->k:Ljava/util/ArrayList;

    iput-object v2, p0, Landroidx/constraintlayout/motion/widget/r$b;->l:Landroidx/constraintlayout/motion/widget/s;

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Landroidx/constraintlayout/motion/widget/r$b;->m:Ljava/util/ArrayList;

    iput v1, p0, Landroidx/constraintlayout/motion/widget/r$b;->n:I

    iput-boolean v1, p0, Landroidx/constraintlayout/motion/widget/r$b;->o:Z

    iput v0, p0, Landroidx/constraintlayout/motion/widget/r$b;->p:I

    iput v1, p0, Landroidx/constraintlayout/motion/widget/r$b;->q:I

    iput v1, p0, Landroidx/constraintlayout/motion/widget/r$b;->r:I

    iput p1, p0, Landroidx/constraintlayout/motion/widget/r$b;->a:I

    iput-object p2, p0, Landroidx/constraintlayout/motion/widget/r$b;->j:Landroidx/constraintlayout/motion/widget/r;

    iput p3, p0, Landroidx/constraintlayout/motion/widget/r$b;->d:I

    iput p4, p0, Landroidx/constraintlayout/motion/widget/r$b;->c:I

    invoke-static {p2}, Landroidx/constraintlayout/motion/widget/r;->e(Landroidx/constraintlayout/motion/widget/r;)I

    move-result p1

    iput p1, p0, Landroidx/constraintlayout/motion/widget/r$b;->h:I

    invoke-static {p2}, Landroidx/constraintlayout/motion/widget/r;->a(Landroidx/constraintlayout/motion/widget/r;)I

    move-result p1

    iput p1, p0, Landroidx/constraintlayout/motion/widget/r$b;->q:I

    return-void
.end method

.method constructor <init>(Landroidx/constraintlayout/motion/widget/r;Landroid/content/Context;Lorg/xmlpull/v1/XmlPullParser;)V
    .locals 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    iput v0, p0, Landroidx/constraintlayout/motion/widget/r$b;->a:I

    const/4 v1, 0x0

    iput-boolean v1, p0, Landroidx/constraintlayout/motion/widget/r$b;->b:Z

    iput v0, p0, Landroidx/constraintlayout/motion/widget/r$b;->c:I

    iput v0, p0, Landroidx/constraintlayout/motion/widget/r$b;->d:I

    iput v1, p0, Landroidx/constraintlayout/motion/widget/r$b;->e:I

    const/4 v2, 0x0

    iput-object v2, p0, Landroidx/constraintlayout/motion/widget/r$b;->f:Ljava/lang/String;

    iput v0, p0, Landroidx/constraintlayout/motion/widget/r$b;->g:I

    const/16 v3, 0x190

    iput v3, p0, Landroidx/constraintlayout/motion/widget/r$b;->h:I

    const/4 v3, 0x0

    iput v3, p0, Landroidx/constraintlayout/motion/widget/r$b;->i:F

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iput-object v3, p0, Landroidx/constraintlayout/motion/widget/r$b;->k:Ljava/util/ArrayList;

    iput-object v2, p0, Landroidx/constraintlayout/motion/widget/r$b;->l:Landroidx/constraintlayout/motion/widget/s;

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Landroidx/constraintlayout/motion/widget/r$b;->m:Ljava/util/ArrayList;

    iput v1, p0, Landroidx/constraintlayout/motion/widget/r$b;->n:I

    iput-boolean v1, p0, Landroidx/constraintlayout/motion/widget/r$b;->o:Z

    iput v0, p0, Landroidx/constraintlayout/motion/widget/r$b;->p:I

    iput v1, p0, Landroidx/constraintlayout/motion/widget/r$b;->q:I

    iput v1, p0, Landroidx/constraintlayout/motion/widget/r$b;->r:I

    invoke-static {p1}, Landroidx/constraintlayout/motion/widget/r;->e(Landroidx/constraintlayout/motion/widget/r;)I

    move-result v0

    iput v0, p0, Landroidx/constraintlayout/motion/widget/r$b;->h:I

    invoke-static {p1}, Landroidx/constraintlayout/motion/widget/r;->a(Landroidx/constraintlayout/motion/widget/r;)I

    move-result v0

    iput v0, p0, Landroidx/constraintlayout/motion/widget/r$b;->q:I

    iput-object p1, p0, Landroidx/constraintlayout/motion/widget/r$b;->j:Landroidx/constraintlayout/motion/widget/r;

    invoke-static {p3}, Landroid/util/Xml;->asAttributeSet(Lorg/xmlpull/v1/XmlPullParser;)Landroid/util/AttributeSet;

    move-result-object p3

    invoke-direct {p0, p1, p2, p3}, Landroidx/constraintlayout/motion/widget/r$b;->u(Landroidx/constraintlayout/motion/widget/r;Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method constructor <init>(Landroidx/constraintlayout/motion/widget/r;Landroidx/constraintlayout/motion/widget/r$b;)V
    .locals 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    iput v0, p0, Landroidx/constraintlayout/motion/widget/r$b;->a:I

    const/4 v1, 0x0

    iput-boolean v1, p0, Landroidx/constraintlayout/motion/widget/r$b;->b:Z

    iput v0, p0, Landroidx/constraintlayout/motion/widget/r$b;->c:I

    iput v0, p0, Landroidx/constraintlayout/motion/widget/r$b;->d:I

    iput v1, p0, Landroidx/constraintlayout/motion/widget/r$b;->e:I

    const/4 v2, 0x0

    iput-object v2, p0, Landroidx/constraintlayout/motion/widget/r$b;->f:Ljava/lang/String;

    iput v0, p0, Landroidx/constraintlayout/motion/widget/r$b;->g:I

    const/16 v3, 0x190

    iput v3, p0, Landroidx/constraintlayout/motion/widget/r$b;->h:I

    const/4 v3, 0x0

    iput v3, p0, Landroidx/constraintlayout/motion/widget/r$b;->i:F

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iput-object v3, p0, Landroidx/constraintlayout/motion/widget/r$b;->k:Ljava/util/ArrayList;

    iput-object v2, p0, Landroidx/constraintlayout/motion/widget/r$b;->l:Landroidx/constraintlayout/motion/widget/s;

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Landroidx/constraintlayout/motion/widget/r$b;->m:Ljava/util/ArrayList;

    iput v1, p0, Landroidx/constraintlayout/motion/widget/r$b;->n:I

    iput-boolean v1, p0, Landroidx/constraintlayout/motion/widget/r$b;->o:Z

    iput v0, p0, Landroidx/constraintlayout/motion/widget/r$b;->p:I

    iput v1, p0, Landroidx/constraintlayout/motion/widget/r$b;->q:I

    iput v1, p0, Landroidx/constraintlayout/motion/widget/r$b;->r:I

    iput-object p1, p0, Landroidx/constraintlayout/motion/widget/r$b;->j:Landroidx/constraintlayout/motion/widget/r;

    invoke-static {p1}, Landroidx/constraintlayout/motion/widget/r;->e(Landroidx/constraintlayout/motion/widget/r;)I

    move-result p1

    iput p1, p0, Landroidx/constraintlayout/motion/widget/r$b;->h:I

    if-eqz p2, :cond_0

    iget p1, p2, Landroidx/constraintlayout/motion/widget/r$b;->p:I

    iput p1, p0, Landroidx/constraintlayout/motion/widget/r$b;->p:I

    iget p1, p2, Landroidx/constraintlayout/motion/widget/r$b;->e:I

    iput p1, p0, Landroidx/constraintlayout/motion/widget/r$b;->e:I

    iget-object p1, p2, Landroidx/constraintlayout/motion/widget/r$b;->f:Ljava/lang/String;

    iput-object p1, p0, Landroidx/constraintlayout/motion/widget/r$b;->f:Ljava/lang/String;

    iget p1, p2, Landroidx/constraintlayout/motion/widget/r$b;->g:I

    iput p1, p0, Landroidx/constraintlayout/motion/widget/r$b;->g:I

    iget p1, p2, Landroidx/constraintlayout/motion/widget/r$b;->h:I

    iput p1, p0, Landroidx/constraintlayout/motion/widget/r$b;->h:I

    iget-object p1, p2, Landroidx/constraintlayout/motion/widget/r$b;->k:Ljava/util/ArrayList;

    iput-object p1, p0, Landroidx/constraintlayout/motion/widget/r$b;->k:Ljava/util/ArrayList;

    iget p1, p2, Landroidx/constraintlayout/motion/widget/r$b;->i:F

    iput p1, p0, Landroidx/constraintlayout/motion/widget/r$b;->i:F

    iget p1, p2, Landroidx/constraintlayout/motion/widget/r$b;->q:I

    iput p1, p0, Landroidx/constraintlayout/motion/widget/r$b;->q:I

    :cond_0
    return-void
.end method

.method static synthetic a(Landroidx/constraintlayout/motion/widget/r$b;)I
    .locals 0

    iget p0, p0, Landroidx/constraintlayout/motion/widget/r$b;->c:I

    return p0
.end method

.method static synthetic b(Landroidx/constraintlayout/motion/widget/r$b;I)I
    .locals 0

    iput p1, p0, Landroidx/constraintlayout/motion/widget/r$b;->c:I

    return p1
.end method

.method static synthetic c(Landroidx/constraintlayout/motion/widget/r$b;)I
    .locals 0

    iget p0, p0, Landroidx/constraintlayout/motion/widget/r$b;->d:I

    return p0
.end method

.method static synthetic d(Landroidx/constraintlayout/motion/widget/r$b;I)I
    .locals 0

    iput p1, p0, Landroidx/constraintlayout/motion/widget/r$b;->d:I

    return p1
.end method

.method static synthetic e(Landroidx/constraintlayout/motion/widget/r$b;)Z
    .locals 0

    iget-boolean p0, p0, Landroidx/constraintlayout/motion/widget/r$b;->b:Z

    return p0
.end method

.method static synthetic f(Landroidx/constraintlayout/motion/widget/r$b;)Ljava/util/ArrayList;
    .locals 0

    iget-object p0, p0, Landroidx/constraintlayout/motion/widget/r$b;->k:Ljava/util/ArrayList;

    return-object p0
.end method

.method static synthetic g(Landroidx/constraintlayout/motion/widget/r$b;)I
    .locals 0

    iget p0, p0, Landroidx/constraintlayout/motion/widget/r$b;->e:I

    return p0
.end method

.method static synthetic h(Landroidx/constraintlayout/motion/widget/r$b;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Landroidx/constraintlayout/motion/widget/r$b;->f:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic i(Landroidx/constraintlayout/motion/widget/r$b;)I
    .locals 0

    iget p0, p0, Landroidx/constraintlayout/motion/widget/r$b;->g:I

    return p0
.end method

.method static synthetic j(Landroidx/constraintlayout/motion/widget/r$b;)I
    .locals 0

    iget p0, p0, Landroidx/constraintlayout/motion/widget/r$b;->h:I

    return p0
.end method

.method static synthetic k(Landroidx/constraintlayout/motion/widget/r$b;)Landroidx/constraintlayout/motion/widget/s;
    .locals 0

    iget-object p0, p0, Landroidx/constraintlayout/motion/widget/r$b;->l:Landroidx/constraintlayout/motion/widget/s;

    return-object p0
.end method

.method static synthetic l(Landroidx/constraintlayout/motion/widget/r$b;Landroidx/constraintlayout/motion/widget/s;)Landroidx/constraintlayout/motion/widget/s;
    .locals 0

    iput-object p1, p0, Landroidx/constraintlayout/motion/widget/r$b;->l:Landroidx/constraintlayout/motion/widget/s;

    return-object p1
.end method

.method static synthetic m(Landroidx/constraintlayout/motion/widget/r$b;)I
    .locals 0

    iget p0, p0, Landroidx/constraintlayout/motion/widget/r$b;->a:I

    return p0
.end method

.method static synthetic n(Landroidx/constraintlayout/motion/widget/r$b;)Ljava/util/ArrayList;
    .locals 0

    iget-object p0, p0, Landroidx/constraintlayout/motion/widget/r$b;->m:Ljava/util/ArrayList;

    return-object p0
.end method

.method static synthetic o(Landroidx/constraintlayout/motion/widget/r$b;)Z
    .locals 0

    iget-boolean p0, p0, Landroidx/constraintlayout/motion/widget/r$b;->o:Z

    return p0
.end method

.method static synthetic p(Landroidx/constraintlayout/motion/widget/r$b;)I
    .locals 0

    iget p0, p0, Landroidx/constraintlayout/motion/widget/r$b;->n:I

    return p0
.end method

.method static synthetic q(Landroidx/constraintlayout/motion/widget/r$b;)Landroidx/constraintlayout/motion/widget/r;
    .locals 0

    iget-object p0, p0, Landroidx/constraintlayout/motion/widget/r$b;->j:Landroidx/constraintlayout/motion/widget/r;

    return-object p0
.end method

.method private t(Landroidx/constraintlayout/motion/widget/r;Landroid/content/Context;Landroid/content/res/TypedArray;)V
    .locals 9

    invoke-virtual {p3}, Landroid/content/res/TypedArray;->getIndexCount()I

    move-result v0

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    const/4 v3, 0x1

    const/4 v4, -0x1

    if-ge v2, v0, :cond_10

    invoke-virtual {p3, v2}, Landroid/content/res/TypedArray;->getIndex(I)I

    move-result v5

    sget v6, Landroidx/constraintlayout/widget/j;->ja:I

    const-string v7, "xml"

    const-string v8, "layout"

    if-ne v5, v6, :cond_1

    invoke-virtual {p3, v5, v4}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v3

    iput v3, p0, Landroidx/constraintlayout/motion/widget/r$b;->c:I

    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    iget v4, p0, Landroidx/constraintlayout/motion/widget/r$b;->c:I

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getResourceTypeName(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v8, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    new-instance v3, Landroidx/constraintlayout/widget/e;

    invoke-direct {v3}, Landroidx/constraintlayout/widget/e;-><init>()V

    iget v4, p0, Landroidx/constraintlayout/motion/widget/r$b;->c:I

    invoke-virtual {v3, p2, v4}, Landroidx/constraintlayout/widget/e;->A(Landroid/content/Context;I)V

    invoke-static {p1}, Landroidx/constraintlayout/motion/widget/r;->b(Landroidx/constraintlayout/motion/widget/r;)Landroid/util/SparseArray;

    move-result-object v4

    iget v5, p0, Landroidx/constraintlayout/motion/widget/r$b;->c:I

    :goto_1
    invoke-virtual {v4, v5, v3}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    goto/16 :goto_3

    :cond_0
    invoke-virtual {v7, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_f

    iget v3, p0, Landroidx/constraintlayout/motion/widget/r$b;->c:I

    invoke-static {p1, p2, v3}, Landroidx/constraintlayout/motion/widget/r;->c(Landroidx/constraintlayout/motion/widget/r;Landroid/content/Context;I)I

    move-result v3

    iput v3, p0, Landroidx/constraintlayout/motion/widget/r$b;->c:I

    goto/16 :goto_3

    :cond_1
    sget v6, Landroidx/constraintlayout/widget/j;->ka:I

    if-ne v5, v6, :cond_3

    iget v3, p0, Landroidx/constraintlayout/motion/widget/r$b;->d:I

    invoke-virtual {p3, v5, v3}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v3

    iput v3, p0, Landroidx/constraintlayout/motion/widget/r$b;->d:I

    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    iget v4, p0, Landroidx/constraintlayout/motion/widget/r$b;->d:I

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getResourceTypeName(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v8, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    new-instance v3, Landroidx/constraintlayout/widget/e;

    invoke-direct {v3}, Landroidx/constraintlayout/widget/e;-><init>()V

    iget v4, p0, Landroidx/constraintlayout/motion/widget/r$b;->d:I

    invoke-virtual {v3, p2, v4}, Landroidx/constraintlayout/widget/e;->A(Landroid/content/Context;I)V

    invoke-static {p1}, Landroidx/constraintlayout/motion/widget/r;->b(Landroidx/constraintlayout/motion/widget/r;)Landroid/util/SparseArray;

    move-result-object v4

    iget v5, p0, Landroidx/constraintlayout/motion/widget/r$b;->d:I

    goto :goto_1

    :cond_2
    invoke-virtual {v7, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_f

    iget v3, p0, Landroidx/constraintlayout/motion/widget/r$b;->d:I

    invoke-static {p1, p2, v3}, Landroidx/constraintlayout/motion/widget/r;->c(Landroidx/constraintlayout/motion/widget/r;Landroid/content/Context;I)I

    move-result v3

    iput v3, p0, Landroidx/constraintlayout/motion/widget/r$b;->d:I

    goto/16 :goto_3

    :cond_3
    sget v6, Landroidx/constraintlayout/widget/j;->na:I

    if-ne v5, v6, :cond_7

    invoke-virtual {p3, v5}, Landroid/content/res/TypedArray;->peekValue(I)Landroid/util/TypedValue;

    move-result-object v6

    iget v6, v6, Landroid/util/TypedValue;->type:I

    const/4 v7, -0x2

    if-ne v6, v3, :cond_4

    invoke-virtual {p3, v5, v4}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v3

    iput v3, p0, Landroidx/constraintlayout/motion/widget/r$b;->g:I

    if-eq v3, v4, :cond_f

    :goto_2
    iput v7, p0, Landroidx/constraintlayout/motion/widget/r$b;->e:I

    goto/16 :goto_3

    :cond_4
    const/4 v3, 0x3

    if-ne v6, v3, :cond_6

    invoke-virtual {p3, v5}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Landroidx/constraintlayout/motion/widget/r$b;->f:Ljava/lang/String;

    if-eqz v3, :cond_f

    const-string v6, "/"

    invoke-virtual {v3, v6}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v3

    if-lez v3, :cond_5

    invoke-virtual {p3, v5, v4}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v3

    iput v3, p0, Landroidx/constraintlayout/motion/widget/r$b;->g:I

    goto :goto_2

    :cond_5
    iput v4, p0, Landroidx/constraintlayout/motion/widget/r$b;->e:I

    goto/16 :goto_3

    :cond_6
    iget v3, p0, Landroidx/constraintlayout/motion/widget/r$b;->e:I

    invoke-virtual {p3, v5, v3}, Landroid/content/res/TypedArray;->getInteger(II)I

    move-result v3

    iput v3, p0, Landroidx/constraintlayout/motion/widget/r$b;->e:I

    goto/16 :goto_3

    :cond_7
    sget v3, Landroidx/constraintlayout/widget/j;->la:I

    if-ne v5, v3, :cond_8

    iget v3, p0, Landroidx/constraintlayout/motion/widget/r$b;->h:I

    invoke-virtual {p3, v5, v3}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v3

    iput v3, p0, Landroidx/constraintlayout/motion/widget/r$b;->h:I

    const/16 v4, 0x8

    if-ge v3, v4, :cond_f

    iput v4, p0, Landroidx/constraintlayout/motion/widget/r$b;->h:I

    goto :goto_3

    :cond_8
    sget v3, Landroidx/constraintlayout/widget/j;->pa:I

    if-ne v5, v3, :cond_9

    iget v3, p0, Landroidx/constraintlayout/motion/widget/r$b;->i:F

    invoke-virtual {p3, v5, v3}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v3

    iput v3, p0, Landroidx/constraintlayout/motion/widget/r$b;->i:F

    goto :goto_3

    :cond_9
    sget v3, Landroidx/constraintlayout/widget/j;->ia:I

    if-ne v5, v3, :cond_a

    iget v3, p0, Landroidx/constraintlayout/motion/widget/r$b;->n:I

    invoke-virtual {p3, v5, v3}, Landroid/content/res/TypedArray;->getInteger(II)I

    move-result v3

    iput v3, p0, Landroidx/constraintlayout/motion/widget/r$b;->n:I

    goto :goto_3

    :cond_a
    sget v3, Landroidx/constraintlayout/widget/j;->ha:I

    if-ne v5, v3, :cond_b

    iget v3, p0, Landroidx/constraintlayout/motion/widget/r$b;->a:I

    invoke-virtual {p3, v5, v3}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v3

    iput v3, p0, Landroidx/constraintlayout/motion/widget/r$b;->a:I

    goto :goto_3

    :cond_b
    sget v3, Landroidx/constraintlayout/widget/j;->qa:I

    if-ne v5, v3, :cond_c

    iget-boolean v3, p0, Landroidx/constraintlayout/motion/widget/r$b;->o:Z

    invoke-virtual {p3, v5, v3}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v3

    iput-boolean v3, p0, Landroidx/constraintlayout/motion/widget/r$b;->o:Z

    goto :goto_3

    :cond_c
    sget v3, Landroidx/constraintlayout/widget/j;->oa:I

    if-ne v5, v3, :cond_d

    invoke-virtual {p3, v5, v4}, Landroid/content/res/TypedArray;->getInteger(II)I

    move-result v3

    iput v3, p0, Landroidx/constraintlayout/motion/widget/r$b;->p:I

    goto :goto_3

    :cond_d
    sget v3, Landroidx/constraintlayout/widget/j;->ma:I

    if-ne v5, v3, :cond_e

    invoke-virtual {p3, v5, v1}, Landroid/content/res/TypedArray;->getInteger(II)I

    move-result v3

    iput v3, p0, Landroidx/constraintlayout/motion/widget/r$b;->q:I

    goto :goto_3

    :cond_e
    sget v3, Landroidx/constraintlayout/widget/j;->ra:I

    if-ne v5, v3, :cond_f

    invoke-virtual {p3, v5, v1}, Landroid/content/res/TypedArray;->getInteger(II)I

    move-result v3

    iput v3, p0, Landroidx/constraintlayout/motion/widget/r$b;->r:I

    :cond_f
    :goto_3
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_0

    :cond_10
    iget p1, p0, Landroidx/constraintlayout/motion/widget/r$b;->d:I

    if-ne p1, v4, :cond_11

    iput-boolean v3, p0, Landroidx/constraintlayout/motion/widget/r$b;->b:Z

    :cond_11
    return-void
.end method

.method private u(Landroidx/constraintlayout/motion/widget/r;Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    sget-object v0, Landroidx/constraintlayout/widget/j;->ga:[I

    invoke-virtual {p2, p3, v0}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object p3

    invoke-direct {p0, p1, p2, p3}, Landroidx/constraintlayout/motion/widget/r$b;->t(Landroidx/constraintlayout/motion/widget/r;Landroid/content/Context;Landroid/content/res/TypedArray;)V

    invoke-virtual {p3}, Landroid/content/res/TypedArray;->recycle()V

    return-void
.end method


# virtual methods
.method public A()Z
    .locals 1

    iget-boolean v0, p0, Landroidx/constraintlayout/motion/widget/r$b;->o:Z

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public B(I)Z
    .locals 1

    iget v0, p0, Landroidx/constraintlayout/motion/widget/r$b;->r:I

    and-int/2addr p1, v0

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public C(I)V
    .locals 1

    const/16 v0, 0x8

    invoke-static {p1, v0}, Ljava/lang/Math;->max(II)I

    move-result p1

    iput p1, p0, Landroidx/constraintlayout/motion/widget/r$b;->h:I

    return-void
.end method

.method public D(ILjava/lang/String;I)V
    .locals 0

    iput p1, p0, Landroidx/constraintlayout/motion/widget/r$b;->e:I

    iput-object p2, p0, Landroidx/constraintlayout/motion/widget/r$b;->f:Ljava/lang/String;

    iput p3, p0, Landroidx/constraintlayout/motion/widget/r$b;->g:I

    return-void
.end method

.method public E(I)V
    .locals 0

    iput p1, p0, Landroidx/constraintlayout/motion/widget/r$b;->p:I

    return-void
.end method

.method public r(Landroidx/constraintlayout/motion/widget/g;)V
    .locals 1

    iget-object v0, p0, Landroidx/constraintlayout/motion/widget/r$b;->k:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public s(Landroid/content/Context;Lorg/xmlpull/v1/XmlPullParser;)V
    .locals 2

    iget-object v0, p0, Landroidx/constraintlayout/motion/widget/r$b;->m:Ljava/util/ArrayList;

    new-instance v1, Landroidx/constraintlayout/motion/widget/r$b$a;

    invoke-direct {v1, p1, p0, p2}, Landroidx/constraintlayout/motion/widget/r$b$a;-><init>(Landroid/content/Context;Landroidx/constraintlayout/motion/widget/r$b;Lorg/xmlpull/v1/XmlPullParser;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public v()I
    .locals 1

    iget v0, p0, Landroidx/constraintlayout/motion/widget/r$b;->n:I

    return v0
.end method

.method public w()I
    .locals 1

    iget v0, p0, Landroidx/constraintlayout/motion/widget/r$b;->c:I

    return v0
.end method

.method public x()I
    .locals 1

    iget v0, p0, Landroidx/constraintlayout/motion/widget/r$b;->q:I

    return v0
.end method

.method public y()I
    .locals 1

    iget v0, p0, Landroidx/constraintlayout/motion/widget/r$b;->d:I

    return v0
.end method

.method public z()Landroidx/constraintlayout/motion/widget/s;
    .locals 1

    iget-object v0, p0, Landroidx/constraintlayout/motion/widget/r$b;->l:Landroidx/constraintlayout/motion/widget/s;

    return-object v0
.end method
