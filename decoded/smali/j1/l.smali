.class public Lj1/l;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lk1/b;


# instance fields
.field private final a:Lj1/e;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private final b:Lj1/m;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lj1/m<",
            "Landroid/graphics/PointF;",
            "Landroid/graphics/PointF;",
            ">;"
        }
    .end annotation
.end field

.field private final c:Lj1/g;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private final d:Lj1/b;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private final e:Lj1/d;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private final f:Lj1/b;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private final g:Lj1/b;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private final h:Lj1/b;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private final i:Lj1/b;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 10

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    move-object v0, p0

    invoke-direct/range {v0 .. v9}, Lj1/l;-><init>(Lj1/e;Lj1/m;Lj1/g;Lj1/b;Lj1/d;Lj1/b;Lj1/b;Lj1/b;Lj1/b;)V

    return-void
.end method

.method public constructor <init>(Lj1/e;Lj1/m;Lj1/g;Lj1/b;Lj1/d;Lj1/b;Lj1/b;Lj1/b;Lj1/b;)V
    .locals 0
    .param p1    # Lj1/e;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p2    # Lj1/m;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p3    # Lj1/g;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p4    # Lj1/b;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p5    # Lj1/d;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p6    # Lj1/b;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p7    # Lj1/b;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p8    # Lj1/b;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p9    # Lj1/b;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lj1/e;",
            "Lj1/m<",
            "Landroid/graphics/PointF;",
            "Landroid/graphics/PointF;",
            ">;",
            "Lj1/g;",
            "Lj1/b;",
            "Lj1/d;",
            "Lj1/b;",
            "Lj1/b;",
            "Lj1/b;",
            "Lj1/b;",
            ")V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lj1/l;->a:Lj1/e;

    iput-object p2, p0, Lj1/l;->b:Lj1/m;

    iput-object p3, p0, Lj1/l;->c:Lj1/g;

    iput-object p4, p0, Lj1/l;->d:Lj1/b;

    iput-object p5, p0, Lj1/l;->e:Lj1/d;

    iput-object p6, p0, Lj1/l;->h:Lj1/b;

    iput-object p7, p0, Lj1/l;->i:Lj1/b;

    iput-object p8, p0, Lj1/l;->f:Lj1/b;

    iput-object p9, p0, Lj1/l;->g:Lj1/b;

    return-void
.end method


# virtual methods
.method public a(Lcom/airbnb/lottie/LottieDrawable;Ll1/a;)Lf1/c;
    .locals 0
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    const/4 p1, 0x0

    return-object p1
.end method

.method public b()Lg1/o;
    .locals 1

    new-instance v0, Lg1/o;

    invoke-direct {v0, p0}, Lg1/o;-><init>(Lj1/l;)V

    return-object v0
.end method

.method public c()Lj1/e;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    iget-object v0, p0, Lj1/l;->a:Lj1/e;

    return-object v0
.end method

.method public d()Lj1/b;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    iget-object v0, p0, Lj1/l;->i:Lj1/b;

    return-object v0
.end method

.method public e()Lj1/d;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    iget-object v0, p0, Lj1/l;->e:Lj1/d;

    return-object v0
.end method

.method public f()Lj1/m;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lj1/m<",
            "Landroid/graphics/PointF;",
            "Landroid/graphics/PointF;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lj1/l;->b:Lj1/m;

    return-object v0
.end method

.method public g()Lj1/b;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    iget-object v0, p0, Lj1/l;->d:Lj1/b;

    return-object v0
.end method

.method public h()Lj1/g;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    iget-object v0, p0, Lj1/l;->c:Lj1/g;

    return-object v0
.end method

.method public i()Lj1/b;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    iget-object v0, p0, Lj1/l;->f:Lj1/b;

    return-object v0
.end method

.method public j()Lj1/b;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    iget-object v0, p0, Lj1/l;->g:Lj1/b;

    return-object v0
.end method

.method public k()Lj1/b;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    iget-object v0, p0, Lj1/l;->h:Lj1/b;

    return-object v0
.end method
