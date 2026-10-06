.class public Lk1/i;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lk1/b;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lk1/i$a;
    }
.end annotation


# instance fields
.field private final a:Ljava/lang/String;

.field private final b:Lk1/i$a;

.field private final c:Lj1/b;

.field private final d:Lj1/m;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lj1/m<",
            "Landroid/graphics/PointF;",
            "Landroid/graphics/PointF;",
            ">;"
        }
    .end annotation
.end field

.field private final e:Lj1/b;

.field private final f:Lj1/b;

.field private final g:Lj1/b;

.field private final h:Lj1/b;

.field private final i:Lj1/b;

.field private final j:Z


# direct methods
.method public constructor <init>(Ljava/lang/String;Lk1/i$a;Lj1/b;Lj1/m;Lj1/b;Lj1/b;Lj1/b;Lj1/b;Lj1/b;Z)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lk1/i$a;",
            "Lj1/b;",
            "Lj1/m<",
            "Landroid/graphics/PointF;",
            "Landroid/graphics/PointF;",
            ">;",
            "Lj1/b;",
            "Lj1/b;",
            "Lj1/b;",
            "Lj1/b;",
            "Lj1/b;",
            "Z)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lk1/i;->a:Ljava/lang/String;

    iput-object p2, p0, Lk1/i;->b:Lk1/i$a;

    iput-object p3, p0, Lk1/i;->c:Lj1/b;

    iput-object p4, p0, Lk1/i;->d:Lj1/m;

    iput-object p5, p0, Lk1/i;->e:Lj1/b;

    iput-object p6, p0, Lk1/i;->f:Lj1/b;

    iput-object p7, p0, Lk1/i;->g:Lj1/b;

    iput-object p8, p0, Lk1/i;->h:Lj1/b;

    iput-object p9, p0, Lk1/i;->i:Lj1/b;

    iput-boolean p10, p0, Lk1/i;->j:Z

    return-void
.end method


# virtual methods
.method public a(Lcom/airbnb/lottie/LottieDrawable;Ll1/a;)Lf1/c;
    .locals 1

    new-instance v0, Lf1/n;

    invoke-direct {v0, p1, p2, p0}, Lf1/n;-><init>(Lcom/airbnb/lottie/LottieDrawable;Ll1/a;Lk1/i;)V

    return-object v0
.end method

.method public b()Lj1/b;
    .locals 1

    iget-object v0, p0, Lk1/i;->f:Lj1/b;

    return-object v0
.end method

.method public c()Lj1/b;
    .locals 1

    iget-object v0, p0, Lk1/i;->h:Lj1/b;

    return-object v0
.end method

.method public d()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lk1/i;->a:Ljava/lang/String;

    return-object v0
.end method

.method public e()Lj1/b;
    .locals 1

    iget-object v0, p0, Lk1/i;->g:Lj1/b;

    return-object v0
.end method

.method public f()Lj1/b;
    .locals 1

    iget-object v0, p0, Lk1/i;->i:Lj1/b;

    return-object v0
.end method

.method public g()Lj1/b;
    .locals 1

    iget-object v0, p0, Lk1/i;->c:Lj1/b;

    return-object v0
.end method

.method public h()Lj1/m;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lj1/m<",
            "Landroid/graphics/PointF;",
            "Landroid/graphics/PointF;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lk1/i;->d:Lj1/m;

    return-object v0
.end method

.method public i()Lj1/b;
    .locals 1

    iget-object v0, p0, Lk1/i;->e:Lj1/b;

    return-object v0
.end method

.method public j()Lk1/i$a;
    .locals 1

    iget-object v0, p0, Lk1/i;->b:Lk1/i$a;

    return-object v0
.end method

.method public k()Z
    .locals 1

    iget-boolean v0, p0, Lk1/i;->j:Z

    return v0
.end method
