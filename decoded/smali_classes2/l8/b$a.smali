.class Ll8/b$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ll8/b;->x()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field a:F

.field b:F

.field c:F

.field d:F

.field e:F

.field f:F

.field final synthetic g:Ll8/b;


# direct methods
.method constructor <init>(Ll8/b;)V
    .locals 0

    iput-object p1, p0, Ll8/b$a;->g:Ll8/b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 3
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "ClickableViewAccessibility"
        }
    .end annotation

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result p1

    const/4 v0, 0x0

    if-eqz p1, :cond_6

    const/4 v1, 0x1

    if-eq p1, v1, :cond_3

    const/4 v2, 0x2

    if-eq p1, v2, :cond_0

    const/4 v2, 0x3

    if-eq p1, v2, :cond_3

    goto/16 :goto_1

    :cond_0
    iget p1, p0, Ll8/b$a;->a:F

    cmpl-float v1, p1, v0

    if-nez v1, :cond_1

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawX()F

    move-result p1

    :cond_1
    iput p1, p0, Ll8/b$a;->a:F

    iget p1, p0, Ll8/b$a;->b:F

    cmpl-float v0, p1, v0

    if-nez v0, :cond_2

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawY()F

    move-result p1

    :cond_2
    iput p1, p0, Ll8/b$a;->b:F

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawX()F

    move-result p1

    iget v0, p0, Ll8/b$a;->a:F

    sub-float/2addr p1, v0

    iget v0, p0, Ll8/b$a;->e:F

    add-float/2addr p1, v0

    iput p1, p0, Ll8/b$a;->c:F

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawY()F

    move-result p1

    iget v0, p0, Ll8/b$a;->b:F

    sub-float/2addr p1, v0

    iget v0, p0, Ll8/b$a;->f:F

    add-float/2addr p1, v0

    iput p1, p0, Ll8/b$a;->d:F

    iget v0, p0, Ll8/b$a;->c:F

    float-to-int v1, v0

    int-to-float v1, v1

    sub-float/2addr v0, v1

    iput v0, p0, Ll8/b$a;->e:F

    float-to-int v0, p1

    int-to-float v0, v0

    sub-float/2addr p1, v0

    iput p1, p0, Ll8/b$a;->f:F

    iget-object p1, p0, Ll8/b$a;->g:Ll8/b;

    invoke-static {p1}, Ll8/b;->e(Ll8/b;)Ll8/a;

    move-result-object p1

    iget-object v0, p0, Ll8/b$a;->g:Ll8/b;

    invoke-static {v0}, Ll8/b;->e(Ll8/b;)Ll8/a;

    move-result-object v0

    invoke-virtual {v0}, Ll8/a;->w()I

    move-result v0

    iget v1, p0, Ll8/b$a;->c:F

    float-to-int v1, v1

    add-int/2addr v0, v1

    iget-object v1, p0, Ll8/b$a;->g:Ll8/b;

    invoke-static {v1}, Ll8/b;->e(Ll8/b;)Ll8/a;

    move-result-object v1

    invoke-virtual {v1}, Ll8/a;->x()I

    move-result v1

    iget v2, p0, Ll8/b$a;->d:F

    float-to-int v2, v2

    add-int/2addr v1, v2

    invoke-virtual {p1, v0, v1}, Ll8/a;->E(II)V

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawX()F

    move-result p1

    iput p1, p0, Ll8/b$a;->a:F

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawY()F

    move-result p1

    iput p1, p0, Ll8/b$a;->b:F

    goto/16 :goto_1

    :cond_3
    iget-object p1, p0, Ll8/b$a;->g:Ll8/b;

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawX()F

    move-result v2

    invoke-static {p1, v2}, Ll8/b;->g(Ll8/b;F)F

    iget-object p1, p0, Ll8/b$a;->g:Ll8/b;

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawY()F

    move-result p2

    invoke-static {p1, p2}, Ll8/b;->i(Ll8/b;F)F

    iput v0, p0, Ll8/b$a;->e:F

    iput v0, p0, Ll8/b$a;->f:F

    iput v0, p0, Ll8/b$a;->a:F

    iput v0, p0, Ll8/b$a;->b:F

    iget-object p1, p0, Ll8/b$a;->g:Ll8/b;

    invoke-static {p1}, Ll8/b;->f(Ll8/b;)F

    move-result p2

    iget-object v0, p0, Ll8/b$a;->g:Ll8/b;

    invoke-static {v0}, Ll8/b;->a(Ll8/b;)F

    move-result v0

    sub-float/2addr p2, v0

    invoke-static {p2}, Ljava/lang/Math;->abs(F)F

    move-result p2

    iget-object v0, p0, Ll8/b$a;->g:Ll8/b;

    invoke-static {v0}, Ll8/b;->l(Ll8/b;)I

    move-result v0

    int-to-float v0, v0

    cmpl-float p2, p2, v0

    if-gtz p2, :cond_5

    iget-object p2, p0, Ll8/b$a;->g:Ll8/b;

    invoke-static {p2}, Ll8/b;->h(Ll8/b;)F

    move-result p2

    iget-object v0, p0, Ll8/b$a;->g:Ll8/b;

    invoke-static {v0}, Ll8/b;->c(Ll8/b;)F

    move-result v0

    sub-float/2addr p2, v0

    invoke-static {p2}, Ljava/lang/Math;->abs(F)F

    move-result p2

    iget-object v0, p0, Ll8/b$a;->g:Ll8/b;

    invoke-static {v0}, Ll8/b;->l(Ll8/b;)I

    move-result v0

    int-to-float v0, v0

    cmpl-float p2, p2, v0

    if-lez p2, :cond_4

    goto :goto_0

    :cond_4
    const/4 v1, 0x0

    :cond_5
    :goto_0
    invoke-static {p1, v1}, Ll8/b;->k(Ll8/b;Z)Z

    iget-object p1, p0, Ll8/b$a;->g:Ll8/b;

    invoke-static {p1}, Ll8/b;->m(Ll8/b;)Ljava/lang/String;

    move-result-object p1

    iget-object p2, p0, Ll8/b$a;->g:Ll8/b;

    invoke-static {p2}, Ll8/b;->e(Ll8/b;)Ll8/a;

    move-result-object p2

    invoke-virtual {p2}, Ll8/a;->w()I

    move-result p2

    invoke-static {p1, p2}, Lr4/a;->p(Ljava/lang/String;I)V

    iget-object p1, p0, Ll8/b$a;->g:Ll8/b;

    invoke-static {p1}, Ll8/b;->n(Ll8/b;)Ljava/lang/String;

    move-result-object p1

    iget-object p2, p0, Ll8/b$a;->g:Ll8/b;

    invoke-static {p2}, Ll8/b;->e(Ll8/b;)Ll8/a;

    move-result-object p2

    invoke-virtual {p2}, Ll8/a;->x()I

    move-result p2

    invoke-static {p1, p2}, Lr4/a;->p(Ljava/lang/String;I)V

    goto :goto_1

    :cond_6
    iget-object p1, p0, Ll8/b$a;->g:Ll8/b;

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawX()F

    move-result v1

    invoke-static {p1, v1}, Ll8/b;->b(Ll8/b;F)F

    iget-object p1, p0, Ll8/b$a;->g:Ll8/b;

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawY()F

    move-result v1

    invoke-static {p1, v1}, Ll8/b;->d(Ll8/b;F)F

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawX()F

    move-result p1

    iput p1, p0, Ll8/b$a;->a:F

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawY()F

    move-result p1

    iput p1, p0, Ll8/b$a;->b:F

    iput v0, p0, Ll8/b$a;->e:F

    iput v0, p0, Ll8/b$a;->f:F

    :goto_1
    iget-object p1, p0, Ll8/b$a;->g:Ll8/b;

    invoke-static {p1}, Ll8/b;->j(Ll8/b;)Z

    move-result p1

    return p1
.end method
