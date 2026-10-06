.class public Lk1/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lk1/b;


# instance fields
.field private final a:Ljava/lang/String;

.field private final b:Lj1/m;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lj1/m<",
            "Landroid/graphics/PointF;",
            "Landroid/graphics/PointF;",
            ">;"
        }
    .end annotation
.end field

.field private final c:Lj1/f;

.field private final d:Z

.field private final e:Z


# direct methods
.method public constructor <init>(Ljava/lang/String;Lj1/m;Lj1/f;ZZ)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lj1/m<",
            "Landroid/graphics/PointF;",
            "Landroid/graphics/PointF;",
            ">;",
            "Lj1/f;",
            "ZZ)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lk1/a;->a:Ljava/lang/String;

    iput-object p2, p0, Lk1/a;->b:Lj1/m;

    iput-object p3, p0, Lk1/a;->c:Lj1/f;

    iput-boolean p4, p0, Lk1/a;->d:Z

    iput-boolean p5, p0, Lk1/a;->e:Z

    return-void
.end method


# virtual methods
.method public a(Lcom/airbnb/lottie/LottieDrawable;Ll1/a;)Lf1/c;
    .locals 1

    new-instance v0, Lf1/f;

    invoke-direct {v0, p1, p2, p0}, Lf1/f;-><init>(Lcom/airbnb/lottie/LottieDrawable;Ll1/a;Lk1/a;)V

    return-object v0
.end method

.method public b()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lk1/a;->a:Ljava/lang/String;

    return-object v0
.end method

.method public c()Lj1/m;
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

    iget-object v0, p0, Lk1/a;->b:Lj1/m;

    return-object v0
.end method

.method public d()Lj1/f;
    .locals 1

    iget-object v0, p0, Lk1/a;->c:Lj1/f;

    return-object v0
.end method

.method public e()Z
    .locals 1

    iget-boolean v0, p0, Lk1/a;->e:Z

    return v0
.end method

.method public f()Z
    .locals 1

    iget-boolean v0, p0, Lk1/a;->d:Z

    return v0
.end method
