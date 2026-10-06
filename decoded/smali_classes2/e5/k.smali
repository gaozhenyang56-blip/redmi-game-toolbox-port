.class public Le5/k;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnDragListener;


# instance fields
.field private a:Z

.field b:Le5/i;


# direct methods
.method public constructor <init>(Le5/i;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Le5/k;->a:Z

    iput-object p1, p0, Le5/k;->b:Le5/i;

    return-void
.end method


# virtual methods
.method public onDrag(Landroid/view/View;Landroid/view/DragEvent;)Z
    .locals 4

    invoke-virtual {p2}, Landroid/view/DragEvent;->getAction()I

    move-result p1

    invoke-virtual {p2}, Landroid/view/DragEvent;->getX()F

    move-result v0

    invoke-virtual {p2}, Landroid/view/DragEvent;->getY()F

    move-result p2

    const/4 v1, 0x2

    if-eq p1, v1, :cond_0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onDrag: action = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " isDropped = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v3, p0, Le5/k;->a:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "DockItemDragListener"

    invoke-static {v3, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    const/4 v2, 0x1

    if-eq p1, v2, :cond_4

    if-eq p1, v1, :cond_3

    const/4 v1, 0x3

    if-eq p1, v1, :cond_2

    const/4 p2, 0x4

    if-eq p1, p2, :cond_1

    goto :goto_0

    :cond_1
    iget-boolean p1, p0, Le5/k;->a:Z

    if-nez p1, :cond_5

    iget-object p1, p0, Le5/k;->b:Le5/i;

    invoke-virtual {p1}, Le5/i;->s()V

    goto :goto_0

    :cond_2
    iput-boolean v2, p0, Le5/k;->a:Z

    iget-object p1, p0, Le5/k;->b:Le5/i;

    invoke-virtual {p1}, Le5/i;->h0()V

    iget-object p1, p0, Le5/k;->b:Le5/i;

    invoke-virtual {p1, v0, p2}, Le5/i;->g0(FF)V

    goto :goto_0

    :cond_3
    iget-boolean p1, p0, Le5/k;->a:Z

    if-nez p1, :cond_5

    iget-object p1, p0, Le5/k;->b:Le5/i;

    invoke-virtual {p1, v0, p2}, Le5/i;->o0(FF)V

    goto :goto_0

    :cond_4
    iget-object p1, p0, Le5/k;->b:Le5/i;

    invoke-virtual {p1, v0, p2}, Le5/i;->o(FF)V

    :cond_5
    :goto_0
    return v2
.end method
