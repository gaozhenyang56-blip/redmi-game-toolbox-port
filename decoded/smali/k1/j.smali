.class public Lk1/j;
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

.field private final d:Lj1/b;

.field private final e:Z


# direct methods
.method public constructor <init>(Ljava/lang/String;Lj1/m;Lj1/f;Lj1/b;Z)V
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
            "Lj1/b;",
            "Z)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lk1/j;->a:Ljava/lang/String;

    iput-object p2, p0, Lk1/j;->b:Lj1/m;

    iput-object p3, p0, Lk1/j;->c:Lj1/f;

    iput-object p4, p0, Lk1/j;->d:Lj1/b;

    iput-boolean p5, p0, Lk1/j;->e:Z

    return-void
.end method


# virtual methods
.method public a(Lcom/airbnb/lottie/LottieDrawable;Ll1/a;)Lf1/c;
    .locals 1

    new-instance v0, Lf1/o;

    invoke-direct {v0, p1, p2, p0}, Lf1/o;-><init>(Lcom/airbnb/lottie/LottieDrawable;Ll1/a;Lk1/j;)V

    return-object v0
.end method

.method public b()Lj1/b;
    .locals 1

    iget-object v0, p0, Lk1/j;->d:Lj1/b;

    return-object v0
.end method

.method public c()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lk1/j;->a:Ljava/lang/String;

    return-object v0
.end method

.method public d()Lj1/m;
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

    iget-object v0, p0, Lk1/j;->b:Lj1/m;

    return-object v0
.end method

.method public e()Lj1/f;
    .locals 1

    iget-object v0, p0, Lk1/j;->c:Lj1/f;

    return-object v0
.end method

.method public f()Z
    .locals 1

    iget-boolean v0, p0, Lk1/j;->e:Z

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "RectangleShape{position="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lk1/j;->b:Lj1/m;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", size="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lk1/j;->c:Lj1/f;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
