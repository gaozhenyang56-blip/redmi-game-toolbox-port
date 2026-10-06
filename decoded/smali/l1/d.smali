.class public Ll1/d;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ll1/d$b;,
        Ll1/d$a;
    }
.end annotation


# instance fields
.field private final a:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lk1/b;",
            ">;"
        }
    .end annotation
.end field

.field private final b:Lcom/airbnb/lottie/d;

.field private final c:Ljava/lang/String;

.field private final d:J

.field private final e:Ll1/d$a;

.field private final f:J

.field private final g:Ljava/lang/String;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private final h:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lk1/g;",
            ">;"
        }
    .end annotation
.end field

.field private final i:Lj1/l;

.field private final j:I

.field private final k:I

.field private final l:I

.field private final m:F

.field private final n:F

.field private final o:I

.field private final p:I

.field private final q:Lj1/j;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private final r:Lj1/k;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private final s:Lj1/b;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private final t:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lq1/a<",
            "Ljava/lang/Float;",
            ">;>;"
        }
    .end annotation
.end field

.field private final u:Ll1/d$b;

.field private final v:Z


# direct methods
.method public constructor <init>(Ljava/util/List;Lcom/airbnb/lottie/d;Ljava/lang/String;JLl1/d$a;JLjava/lang/String;Ljava/util/List;Lj1/l;IIIFFIILj1/j;Lj1/k;Ljava/util/List;Ll1/d$b;Lj1/b;Z)V
    .locals 3
    .param p9    # Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p19    # Lj1/j;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p20    # Lj1/k;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p23    # Lj1/b;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lk1/b;",
            ">;",
            "Lcom/airbnb/lottie/d;",
            "Ljava/lang/String;",
            "J",
            "Ll1/d$a;",
            "J",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lk1/g;",
            ">;",
            "Lj1/l;",
            "IIIFFII",
            "Lj1/j;",
            "Lj1/k;",
            "Ljava/util/List<",
            "Lq1/a<",
            "Ljava/lang/Float;",
            ">;>;",
            "Ll1/d$b;",
            "Lj1/b;",
            "Z)V"
        }
    .end annotation

    move-object v0, p0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    move-object v1, p1

    iput-object v1, v0, Ll1/d;->a:Ljava/util/List;

    move-object v1, p2

    iput-object v1, v0, Ll1/d;->b:Lcom/airbnb/lottie/d;

    move-object v1, p3

    iput-object v1, v0, Ll1/d;->c:Ljava/lang/String;

    move-wide v1, p4

    iput-wide v1, v0, Ll1/d;->d:J

    move-object v1, p6

    iput-object v1, v0, Ll1/d;->e:Ll1/d$a;

    move-wide v1, p7

    iput-wide v1, v0, Ll1/d;->f:J

    move-object v1, p9

    iput-object v1, v0, Ll1/d;->g:Ljava/lang/String;

    move-object v1, p10

    iput-object v1, v0, Ll1/d;->h:Ljava/util/List;

    move-object v1, p11

    iput-object v1, v0, Ll1/d;->i:Lj1/l;

    move v1, p12

    iput v1, v0, Ll1/d;->j:I

    move/from16 v1, p13

    iput v1, v0, Ll1/d;->k:I

    move/from16 v1, p14

    iput v1, v0, Ll1/d;->l:I

    move/from16 v1, p15

    iput v1, v0, Ll1/d;->m:F

    move/from16 v1, p16

    iput v1, v0, Ll1/d;->n:F

    move/from16 v1, p17

    iput v1, v0, Ll1/d;->o:I

    move/from16 v1, p18

    iput v1, v0, Ll1/d;->p:I

    move-object/from16 v1, p19

    iput-object v1, v0, Ll1/d;->q:Lj1/j;

    move-object/from16 v1, p20

    iput-object v1, v0, Ll1/d;->r:Lj1/k;

    move-object/from16 v1, p21

    iput-object v1, v0, Ll1/d;->t:Ljava/util/List;

    move-object/from16 v1, p22

    iput-object v1, v0, Ll1/d;->u:Ll1/d$b;

    move-object/from16 v1, p23

    iput-object v1, v0, Ll1/d;->s:Lj1/b;

    move/from16 v1, p24

    iput-boolean v1, v0, Ll1/d;->v:Z

    return-void
.end method


# virtual methods
.method a()Lcom/airbnb/lottie/d;
    .locals 1

    iget-object v0, p0, Ll1/d;->b:Lcom/airbnb/lottie/d;

    return-object v0
.end method

.method public b()J
    .locals 2

    iget-wide v0, p0, Ll1/d;->d:J

    return-wide v0
.end method

.method c()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lq1/a<",
            "Ljava/lang/Float;",
            ">;>;"
        }
    .end annotation

    iget-object v0, p0, Ll1/d;->t:Ljava/util/List;

    return-object v0
.end method

.method public d()Ll1/d$a;
    .locals 1

    iget-object v0, p0, Ll1/d;->e:Ll1/d$a;

    return-object v0
.end method

.method e()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lk1/g;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Ll1/d;->h:Ljava/util/List;

    return-object v0
.end method

.method f()Ll1/d$b;
    .locals 1

    iget-object v0, p0, Ll1/d;->u:Ll1/d$b;

    return-object v0
.end method

.method g()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Ll1/d;->c:Ljava/lang/String;

    return-object v0
.end method

.method h()J
    .locals 2

    iget-wide v0, p0, Ll1/d;->f:J

    return-wide v0
.end method

.method i()I
    .locals 1

    iget v0, p0, Ll1/d;->p:I

    return v0
.end method

.method j()I
    .locals 1

    iget v0, p0, Ll1/d;->o:I

    return v0
.end method

.method k()Ljava/lang/String;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    iget-object v0, p0, Ll1/d;->g:Ljava/lang/String;

    return-object v0
.end method

.method l()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lk1/b;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Ll1/d;->a:Ljava/util/List;

    return-object v0
.end method

.method m()I
    .locals 1

    iget v0, p0, Ll1/d;->l:I

    return v0
.end method

.method n()I
    .locals 1

    iget v0, p0, Ll1/d;->k:I

    return v0
.end method

.method o()I
    .locals 1

    iget v0, p0, Ll1/d;->j:I

    return v0
.end method

.method p()F
    .locals 2

    iget v0, p0, Ll1/d;->n:F

    iget-object v1, p0, Ll1/d;->b:Lcom/airbnb/lottie/d;

    invoke-virtual {v1}, Lcom/airbnb/lottie/d;->e()F

    move-result v1

    div-float/2addr v0, v1

    return v0
.end method

.method q()Lj1/j;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    iget-object v0, p0, Ll1/d;->q:Lj1/j;

    return-object v0
.end method

.method r()Lj1/k;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    iget-object v0, p0, Ll1/d;->r:Lj1/k;

    return-object v0
.end method

.method s()Lj1/b;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    iget-object v0, p0, Ll1/d;->s:Lj1/b;

    return-object v0
.end method

.method t()F
    .locals 1

    iget v0, p0, Ll1/d;->m:F

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    const-string v0, ""

    invoke-virtual {p0, v0}, Ll1/d;->w(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method u()Lj1/l;
    .locals 1

    iget-object v0, p0, Ll1/d;->i:Lj1/l;

    return-object v0
.end method

.method public v()Z
    .locals 1

    iget-boolean v0, p0, Ll1/d;->v:Z

    return v0
.end method

.method public w(Ljava/lang/String;)Ljava/lang/String;
    .locals 6

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ll1/d;->g()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Ll1/d;->b:Lcom/airbnb/lottie/d;

    invoke-virtual {p0}, Ll1/d;->h()J

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Lcom/airbnb/lottie/d;->s(J)Ll1/d;

    move-result-object v2

    if-eqz v2, :cond_1

    const-string v3, "\t\tParents: "

    :goto_0
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ll1/d;->g()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Ll1/d;->b:Lcom/airbnb/lottie/d;

    invoke-virtual {v2}, Ll1/d;->h()J

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Lcom/airbnb/lottie/d;->s(J)Ll1/d;

    move-result-object v2

    if-eqz v2, :cond_0

    const-string v3, "->"

    goto :goto_0

    :cond_0
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_1
    invoke-virtual {p0}, Ll1/d;->e()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_2

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "\tMasks: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ll1/d;->e()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_2
    invoke-virtual {p0}, Ll1/d;->o()I

    move-result v2

    if-eqz v2, :cond_3

    invoke-virtual {p0}, Ll1/d;->n()I

    move-result v2

    if-eqz v2, :cond_3

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "\tBackground: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v2, Ljava/util/Locale;->US:Ljava/util/Locale;

    const/4 v3, 0x3

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-virtual {p0}, Ll1/d;->o()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x1

    invoke-virtual {p0}, Ll1/d;->n()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x2

    invoke-virtual {p0}, Ll1/d;->m()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    const-string v4, "%dx%d %X\n"

    invoke-static {v2, v4, v3}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_3
    iget-object v2, p0, Ll1/d;->a:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_4

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "\tShapes:\n"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Ll1/d;->a:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_4

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "\t\t"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    :cond_4
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method
