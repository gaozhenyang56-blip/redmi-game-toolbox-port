.class public Ll8/b;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ll8/b$b;
    }
.end annotation


# static fields
.field private static j:Ll8/b$b;

.field private static k:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ll8/b;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private a:Ljava/lang/String;

.field private b:Ljava/lang/String;

.field private c:Ll8/a;

.field private d:F

.field private e:F

.field private f:F

.field private g:F

.field private h:Z

.field private i:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Ll8/b;->k:Ljava/util/Map;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Ll8/b;->h:Z

    return-void
.end method

.method constructor <init>(Ll8/b$b;Ljava/lang/String;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Ll8/b;->h:Z

    new-instance v0, Ll8/a;

    iget-object v1, p1, Ll8/b$b;->a:Landroid/content/Context;

    invoke-direct {v0, v1}, Ll8/a;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Ll8/b;->c:Ll8/a;

    iget-object v0, p1, Ll8/b$b;->g:Ljava/lang/String;

    iput-object v0, p0, Ll8/b;->a:Ljava/lang/String;

    iput-object p2, p0, Ll8/b;->b:Ljava/lang/String;

    invoke-direct {p0}, Ll8/b;->x()V

    invoke-direct {p0}, Ll8/b;->u()Ljava/lang/String;

    move-result-object p2

    const/4 v0, -0x1

    invoke-static {p2, v0}, Lr4/a;->h(Ljava/lang/String;I)I

    move-result p2

    invoke-direct {p0}, Ll8/b;->v()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v0}, Lr4/a;->h(Ljava/lang/String;I)I

    move-result v1

    if-ne p2, v0, :cond_0

    if-ne v1, v0, :cond_0

    iget-object p2, p0, Ll8/b;->c:Ll8/a;

    iget v0, p1, Ll8/b$b;->c:I

    iget v1, p1, Ll8/b$b;->d:I

    invoke-virtual {p2, v0, v1}, Ll8/a;->C(II)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Ll8/b;->c:Ll8/a;

    invoke-virtual {v0, p2, v1}, Ll8/a;->C(II)V

    :goto_0
    iget-object p2, p0, Ll8/b;->c:Ll8/a;

    iget-object v0, p1, Ll8/b$b;->b:Landroid/view/View;

    iget v1, p1, Ll8/b$b;->e:I

    iget p1, p1, Ll8/b$b;->f:I

    invoke-virtual {p2, v0, v1, p1}, Ll8/a;->D(Landroid/view/View;II)V

    return-void
.end method

.method public static A(Ljava/lang/String;)Z
    .locals 1

    sget-object v0, Ll8/b;->k:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Ll8/b;->k:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ll8/b;

    invoke-virtual {p0}, Ll8/b;->y()Z

    move-result p0

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public static D(Landroid/content/Context;)Ll8/b$b;
    .locals 1

    sget-object v0, Ll8/b;->j:Ll8/b$b;

    if-nez v0, :cond_0

    new-instance v0, Ll8/b$b;

    invoke-direct {v0, p0}, Ll8/b$b;-><init>(Landroid/content/Context;)V

    sput-object v0, Ll8/b;->j:Ll8/b$b;

    :cond_0
    sget-object p0, Ll8/b;->j:Ll8/b$b;

    return-object p0
.end method

.method static synthetic a(Ll8/b;)F
    .locals 0

    iget p0, p0, Ll8/b;->d:F

    return p0
.end method

.method static synthetic b(Ll8/b;F)F
    .locals 0

    iput p1, p0, Ll8/b;->d:F

    return p1
.end method

.method static synthetic c(Ll8/b;)F
    .locals 0

    iget p0, p0, Ll8/b;->e:F

    return p0
.end method

.method static synthetic d(Ll8/b;F)F
    .locals 0

    iput p1, p0, Ll8/b;->e:F

    return p1
.end method

.method static synthetic e(Ll8/b;)Ll8/a;
    .locals 0

    iget-object p0, p0, Ll8/b;->c:Ll8/a;

    return-object p0
.end method

.method static synthetic f(Ll8/b;)F
    .locals 0

    iget p0, p0, Ll8/b;->f:F

    return p0
.end method

.method static synthetic g(Ll8/b;F)F
    .locals 0

    iput p1, p0, Ll8/b;->f:F

    return p1
.end method

.method static synthetic h(Ll8/b;)F
    .locals 0

    iget p0, p0, Ll8/b;->g:F

    return p0
.end method

.method static synthetic i(Ll8/b;F)F
    .locals 0

    iput p1, p0, Ll8/b;->g:F

    return p1
.end method

.method static synthetic j(Ll8/b;)Z
    .locals 0

    iget-boolean p0, p0, Ll8/b;->h:Z

    return p0
.end method

.method static synthetic k(Ll8/b;Z)Z
    .locals 0

    iput-boolean p1, p0, Ll8/b;->h:Z

    return p1
.end method

.method static synthetic l(Ll8/b;)I
    .locals 0

    iget p0, p0, Ll8/b;->i:I

    return p0
.end method

.method static synthetic m(Ll8/b;)Ljava/lang/String;
    .locals 0

    invoke-direct {p0}, Ll8/b;->u()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static synthetic n(Ll8/b;)Ljava/lang/String;
    .locals 0

    invoke-direct {p0}, Ll8/b;->v()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static synthetic o()Ljava/util/Map;
    .locals 1

    sget-object v0, Ll8/b;->k:Ljava/util/Map;

    return-object v0
.end method

.method public static p()V
    .locals 2

    const-string v0, "default_float_window_tag"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Ll8/b;->r(Ljava/lang/String;Z)V

    return-void
.end method

.method public static q(Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x0

    invoke-static {p0, v0}, Ll8/b;->r(Ljava/lang/String;Z)V

    return-void
.end method

.method public static r(Ljava/lang/String;Z)V
    .locals 1

    sget-object v0, Ll8/b;->k:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    if-eqz p1, :cond_0

    sget-object p1, Ll8/b;->k:Ljava/util/Map;

    invoke-interface {p1, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ll8/b;

    invoke-virtual {p1}, Ll8/b;->B()V

    :cond_0
    sget-object p1, Ll8/b;->k:Ljava/util/Map;

    invoke-interface {p1, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ll8/b;

    invoke-virtual {p1}, Ll8/b;->t()V

    sget-object p1, Ll8/b;->k:Ljava/util/Map;

    invoke-interface {p1, p0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    const/4 p0, 0x0

    sput-object p0, Ll8/b;->j:Ll8/b$b;

    return-void
.end method

.method public static s(Z)V
    .locals 1

    const-string p0, "default_float_window_tag"

    const/4 v0, 0x0

    invoke-static {p0, v0}, Ll8/b;->r(Ljava/lang/String;Z)V

    return-void
.end method

.method private u()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "key_point_x"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Ll8/b;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Ll8/b;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private v()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "key_point_y"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Ll8/b;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Ll8/b;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private x()V
    .locals 2

    invoke-virtual {p0}, Ll8/b;->w()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    new-instance v1, Ll8/b$a;

    invoke-direct {v1, p0}, Ll8/b$a;-><init>(Ll8/b;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    :cond_0
    return-void
.end method

.method public static z()Z
    .locals 1

    const-string v0, "default_float_window_tag"

    invoke-static {v0}, Ll8/b;->A(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method


# virtual methods
.method public B()V
    .locals 2

    invoke-direct {p0}, Ll8/b;->u()Ljava/lang/String;

    move-result-object v0

    const/4 v1, -0x1

    invoke-static {v0, v1}, Lr4/a;->p(Ljava/lang/String;I)V

    invoke-direct {p0}, Ll8/b;->v()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v1}, Lr4/a;->p(Ljava/lang/String;I)V

    return-void
.end method

.method public C()V
    .locals 1

    iget-object v0, p0, Ll8/b;->c:Ll8/a;

    invoke-virtual {v0}, Ll8/a;->y()V

    return-void
.end method

.method public t()V
    .locals 1

    iget-object v0, p0, Ll8/b;->c:Ll8/a;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ll8/a;->r()V

    :cond_0
    return-void
.end method

.method public w()Landroid/view/View;
    .locals 1

    sget-object v0, Ll8/b;->j:Ll8/b$b;

    iget-object v0, v0, Ll8/b$b;->a:Landroid/content/Context;

    invoke-static {v0}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result v0

    iput v0, p0, Ll8/b;->i:I

    sget-object v0, Ll8/b;->j:Ll8/b$b;

    iget-object v0, v0, Ll8/b$b;->b:Landroid/view/View;

    return-object v0
.end method

.method public y()Z
    .locals 1

    iget-object v0, p0, Ll8/b;->c:Ll8/a;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ll8/a;->z()Z

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method
