.class Le5/j$a;
.super Lmiuix/animation/listener/TransitionListener;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Le5/j;->i(Le5/i;Le5/n;Landroid/graphics/Rect;FFI)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:I

.field final synthetic b:Le5/i;

.field final synthetic c:F

.field final synthetic d:F


# direct methods
.method constructor <init>(ILe5/i;FF)V
    .locals 0

    iput p1, p0, Le5/j$a;->a:I

    iput-object p2, p0, Le5/j$a;->b:Le5/i;

    iput p3, p0, Le5/j$a;->c:F

    iput p4, p0, Le5/j$a;->d:F

    invoke-direct {p0}, Lmiuix/animation/listener/TransitionListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onComplete(Ljava/lang/Object;)V
    .locals 2

    invoke-super {p0, p1}, Lmiuix/animation/listener/TransitionListener;->onComplete(Ljava/lang/Object;)V

    iget p1, p0, Le5/j$a;->a:I

    const/4 v0, 0x1

    if-eq p1, v0, :cond_3

    const/4 v0, 0x2

    if-eq p1, v0, :cond_2

    const/4 v0, 0x3

    if-eq p1, v0, :cond_1

    const/4 v0, 0x4

    if-eq p1, v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object p1, p0, Le5/j$a;->b:Le5/i;

    if-eqz p1, :cond_4

    invoke-virtual {p1}, Le5/i;->V()V

    goto :goto_0

    :cond_1
    iget-object p1, p0, Le5/j$a;->b:Le5/i;

    if-eqz p1, :cond_4

    iget v0, p0, Le5/j$a;->c:F

    iget v1, p0, Le5/j$a;->d:F

    invoke-virtual {p1, v0, v1}, Le5/i;->m0(FF)V

    goto :goto_0

    :cond_2
    iget-object p1, p0, Le5/j$a;->b:Le5/i;

    if-eqz p1, :cond_4

    iget v0, p0, Le5/j$a;->c:F

    iget v1, p0, Le5/j$a;->d:F

    invoke-virtual {p1, v0, v1}, Le5/i;->g0(FF)V

    goto :goto_0

    :cond_3
    iget-object p1, p0, Le5/j$a;->b:Le5/i;

    if-eqz p1, :cond_4

    invoke-virtual {p1}, Le5/i;->s()V

    :cond_4
    :goto_0
    return-void
.end method
