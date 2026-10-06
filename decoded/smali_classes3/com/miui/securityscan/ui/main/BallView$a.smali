.class public Lcom/miui/securityscan/ui/main/BallView$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/securityscan/ui/main/BallView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "a"
.end annotation


# instance fields
.field private a:F

.field private b:J

.field private c:J

.field private d:Lcom/miui/securityscan/ui/main/BallView$b;

.field private e:Lcom/miui/securityscan/ui/main/BallView$b;

.field private f:Landroid/graphics/Point;

.field private g:I

.field private h:I

.field private i:I

.field private j:Z

.field private k:Landroid/graphics/LinearGradient;

.field private l:Landroid/graphics/LinearGradient;

.field final synthetic m:Lcom/miui/securityscan/ui/main/BallView;


# direct methods
.method public constructor <init>(Lcom/miui/securityscan/ui/main/BallView;)V
    .locals 1

    iput-object p1, p0, Lcom/miui/securityscan/ui/main/BallView$a;->m:Lcom/miui/securityscan/ui/main/BallView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p1}, Lcom/miui/securityscan/ui/main/BallView;->a(Lcom/miui/securityscan/ui/main/BallView;)Landroid/graphics/Point;

    move-result-object v0

    iget v0, v0, Landroid/graphics/Point;->x:I

    iput v0, p0, Lcom/miui/securityscan/ui/main/BallView$a;->g:I

    invoke-static {p1}, Lcom/miui/securityscan/ui/main/BallView;->a(Lcom/miui/securityscan/ui/main/BallView;)Landroid/graphics/Point;

    move-result-object p1

    iget p1, p1, Landroid/graphics/Point;->y:I

    iput p1, p0, Lcom/miui/securityscan/ui/main/BallView$a;->h:I

    const/4 p1, 0x0

    iput p1, p0, Lcom/miui/securityscan/ui/main/BallView$a;->i:I

    iput-boolean p1, p0, Lcom/miui/securityscan/ui/main/BallView$a;->j:Z

    return-void
.end method


# virtual methods
.method public a(Landroid/graphics/Canvas;Landroid/graphics/Paint;I)V
    .locals 6

    invoke-virtual {p0}, Lcom/miui/securityscan/ui/main/BallView$a;->g()J

    move-result-wide v0

    long-to-float v0, v0

    const/high16 v1, 0x3f800000    # 1.0f

    mul-float/2addr v0, v1

    const/high16 v2, 0x447a0000    # 1000.0f

    div-float/2addr v0, v2

    const/high16 v3, 0x42700000    # 60.0f

    mul-float/2addr v0, v3

    float-to-int v0, v0

    if-lt p3, v0, :cond_2

    iget p3, p0, Lcom/miui/securityscan/ui/main/BallView$a;->i:I

    const/4 v0, 0x1

    add-int/2addr p3, v0

    iput p3, p0, Lcom/miui/securityscan/ui/main/BallView$a;->i:I

    invoke-virtual {p0}, Lcom/miui/securityscan/ui/main/BallView$a;->d()J

    move-result-wide v4

    long-to-float p3, v4

    mul-float/2addr p3, v1

    div-float/2addr p3, v2

    mul-float/2addr p3, v3

    float-to-int p3, p3

    iget v2, p0, Lcom/miui/securityscan/ui/main/BallView$a;->i:I

    if-gt v2, p3, :cond_1

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/miui/securityscan/ui/main/BallView$a;->j:Z

    iget-object v0, p0, Lcom/miui/securityscan/ui/main/BallView$a;->m:Lcom/miui/securityscan/ui/main/BallView;

    invoke-static {v0}, Lcom/miui/securityscan/ui/main/BallView;->b(Lcom/miui/securityscan/ui/main/BallView;)Lcom/miui/securityscan/ui/main/BallView$c;

    move-result-object v0

    sget-object v2, Lcom/miui/securityscan/ui/main/BallView$c;->a:Lcom/miui/securityscan/ui/main/BallView$c;

    if-ne v0, v2, :cond_0

    invoke-virtual {p0}, Lcom/miui/securityscan/ui/main/BallView$a;->b()Lcom/miui/securityscan/ui/main/BallView$b;

    move-result-object v0

    invoke-virtual {p0}, Lcom/miui/securityscan/ui/main/BallView$a;->c()Landroid/graphics/LinearGradient;

    move-result-object v2

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/miui/securityscan/ui/main/BallView$a;->h()Lcom/miui/securityscan/ui/main/BallView$b;

    move-result-object v0

    invoke-virtual {p0}, Lcom/miui/securityscan/ui/main/BallView$a;->i()Landroid/graphics/LinearGradient;

    move-result-object v2

    :goto_0
    invoke-virtual {p2, v2}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    invoke-virtual {v0}, Lcom/miui/securityscan/ui/main/BallView$b;->a()I

    move-result v2

    invoke-virtual {v0}, Lcom/miui/securityscan/ui/main/BallView$b;->a()I

    move-result v0

    int-to-float v0, v0

    iget-object v3, p0, Lcom/miui/securityscan/ui/main/BallView$a;->m:Lcom/miui/securityscan/ui/main/BallView;

    iget v4, p0, Lcom/miui/securityscan/ui/main/BallView$a;->i:I

    int-to-float v4, v4

    mul-float/2addr v4, v1

    int-to-float p3, p3

    div-float/2addr v4, p3

    invoke-static {v3, v4}, Lcom/miui/securityscan/ui/main/BallView;->c(Lcom/miui/securityscan/ui/main/BallView;F)F

    move-result v3

    mul-float/2addr v0, v3

    float-to-int v0, v0

    sub-int/2addr v2, v0

    invoke-virtual {p2, v2}, Landroid/graphics/Paint;->setAlpha(I)V

    invoke-virtual {p0}, Lcom/miui/securityscan/ui/main/BallView$a;->e()Landroid/graphics/Point;

    move-result-object v0

    iget v2, v0, Landroid/graphics/Point;->x:I

    iget-object v3, p0, Lcom/miui/securityscan/ui/main/BallView$a;->m:Lcom/miui/securityscan/ui/main/BallView;

    invoke-static {v3}, Lcom/miui/securityscan/ui/main/BallView;->a(Lcom/miui/securityscan/ui/main/BallView;)Landroid/graphics/Point;

    move-result-object v3

    iget v3, v3, Landroid/graphics/Point;->x:I

    sub-int/2addr v2, v3

    iget v0, v0, Landroid/graphics/Point;->y:I

    iget-object v3, p0, Lcom/miui/securityscan/ui/main/BallView$a;->m:Lcom/miui/securityscan/ui/main/BallView;

    invoke-static {v3}, Lcom/miui/securityscan/ui/main/BallView;->a(Lcom/miui/securityscan/ui/main/BallView;)Landroid/graphics/Point;

    move-result-object v3

    iget v3, v3, Landroid/graphics/Point;->y:I

    sub-int/2addr v0, v3

    iget v3, p0, Lcom/miui/securityscan/ui/main/BallView$a;->g:I

    int-to-float v3, v3

    int-to-float v2, v2

    iget-object v4, p0, Lcom/miui/securityscan/ui/main/BallView$a;->m:Lcom/miui/securityscan/ui/main/BallView;

    iget v5, p0, Lcom/miui/securityscan/ui/main/BallView$a;->i:I

    int-to-float v5, v5

    mul-float/2addr v5, v1

    div-float/2addr v5, p3

    invoke-static {v4, v5}, Lcom/miui/securityscan/ui/main/BallView;->d(Lcom/miui/securityscan/ui/main/BallView;F)F

    move-result v4

    mul-float/2addr v2, v4

    add-float/2addr v3, v2

    iget v2, p0, Lcom/miui/securityscan/ui/main/BallView$a;->h:I

    int-to-float v2, v2

    int-to-float v0, v0

    iget-object v4, p0, Lcom/miui/securityscan/ui/main/BallView$a;->m:Lcom/miui/securityscan/ui/main/BallView;

    iget v5, p0, Lcom/miui/securityscan/ui/main/BallView$a;->i:I

    int-to-float v5, v5

    mul-float/2addr v5, v1

    div-float/2addr v5, p3

    invoke-static {v4, v5}, Lcom/miui/securityscan/ui/main/BallView;->d(Lcom/miui/securityscan/ui/main/BallView;F)F

    move-result p3

    mul-float/2addr v0, p3

    add-float/2addr v2, v0

    invoke-virtual {p0}, Lcom/miui/securityscan/ui/main/BallView$a;->f()F

    move-result p3

    invoke-virtual {p1, v3, v2, p3, p2}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    goto :goto_1

    :cond_1
    iput-boolean v0, p0, Lcom/miui/securityscan/ui/main/BallView$a;->j:Z

    :cond_2
    :goto_1
    return-void
.end method

.method public b()Lcom/miui/securityscan/ui/main/BallView$b;
    .locals 1

    iget-object v0, p0, Lcom/miui/securityscan/ui/main/BallView$a;->d:Lcom/miui/securityscan/ui/main/BallView$b;

    return-object v0
.end method

.method public c()Landroid/graphics/LinearGradient;
    .locals 1

    iget-object v0, p0, Lcom/miui/securityscan/ui/main/BallView$a;->k:Landroid/graphics/LinearGradient;

    return-object v0
.end method

.method public d()J
    .locals 2

    iget-wide v0, p0, Lcom/miui/securityscan/ui/main/BallView$a;->c:J

    return-wide v0
.end method

.method public e()Landroid/graphics/Point;
    .locals 1

    iget-object v0, p0, Lcom/miui/securityscan/ui/main/BallView$a;->f:Landroid/graphics/Point;

    return-object v0
.end method

.method public f()F
    .locals 1

    iget v0, p0, Lcom/miui/securityscan/ui/main/BallView$a;->a:F

    return v0
.end method

.method public g()J
    .locals 2

    iget-wide v0, p0, Lcom/miui/securityscan/ui/main/BallView$a;->b:J

    return-wide v0
.end method

.method public h()Lcom/miui/securityscan/ui/main/BallView$b;
    .locals 1

    iget-object v0, p0, Lcom/miui/securityscan/ui/main/BallView$a;->e:Lcom/miui/securityscan/ui/main/BallView$b;

    return-object v0
.end method

.method public i()Landroid/graphics/LinearGradient;
    .locals 1

    iget-object v0, p0, Lcom/miui/securityscan/ui/main/BallView$a;->l:Landroid/graphics/LinearGradient;

    return-object v0
.end method

.method public j()Z
    .locals 1

    iget-boolean v0, p0, Lcom/miui/securityscan/ui/main/BallView$a;->j:Z

    return v0
.end method

.method public k(Lcom/miui/securityscan/ui/main/BallView$b;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/securityscan/ui/main/BallView$a;->d:Lcom/miui/securityscan/ui/main/BallView$b;

    return-void
.end method

.method public l(Landroid/graphics/LinearGradient;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/securityscan/ui/main/BallView$a;->k:Landroid/graphics/LinearGradient;

    return-void
.end method

.method public m(I)V
    .locals 0

    iput p1, p0, Lcom/miui/securityscan/ui/main/BallView$a;->g:I

    return-void
.end method

.method public n(I)V
    .locals 0

    iput p1, p0, Lcom/miui/securityscan/ui/main/BallView$a;->h:I

    return-void
.end method

.method public o(J)V
    .locals 0

    iput-wide p1, p0, Lcom/miui/securityscan/ui/main/BallView$a;->c:J

    return-void
.end method

.method public p(Landroid/graphics/Point;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/securityscan/ui/main/BallView$a;->f:Landroid/graphics/Point;

    return-void
.end method

.method public q(F)V
    .locals 0

    iput p1, p0, Lcom/miui/securityscan/ui/main/BallView$a;->a:F

    return-void
.end method

.method public r(J)V
    .locals 0

    iput-wide p1, p0, Lcom/miui/securityscan/ui/main/BallView$a;->b:J

    return-void
.end method

.method public s(Lcom/miui/securityscan/ui/main/BallView$b;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/securityscan/ui/main/BallView$a;->e:Lcom/miui/securityscan/ui/main/BallView$b;

    return-void
.end method

.method public t(Landroid/graphics/LinearGradient;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/securityscan/ui/main/BallView$a;->l:Landroid/graphics/LinearGradient;

    return-void
.end method
