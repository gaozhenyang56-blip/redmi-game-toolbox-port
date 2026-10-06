.class Lmiuix/internal/widget/f$c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnLayoutChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lmiuix/internal/widget/f;->prepareShow(Landroid/view/View;Landroid/view/ViewGroup;Landroid/graphics/Rect;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private a:I

.field final synthetic b:Lmiuix/internal/widget/f;


# direct methods
.method constructor <init>(Lmiuix/internal/widget/f;)V
    .locals 0

    iput-object p1, p0, Lmiuix/internal/widget/f$c;->b:Lmiuix/internal/widget/f;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p1, -0x1

    iput p1, p0, Lmiuix/internal/widget/f$c;->a:I

    return-void
.end method


# virtual methods
.method public onLayoutChange(Landroid/view/View;IIIIIIII)V
    .locals 0

    iget-object p1, p0, Lmiuix/internal/widget/f$c;->b:Lmiuix/internal/widget/f;

    iget-object p1, p1, Lmiuix/internal/widget/f;->mContentView:Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->getMeasuredHeight()I

    move-result p1

    iget p2, p0, Lmiuix/internal/widget/f$c;->a:I

    const/4 p4, -0x1

    if-eq p2, p4, :cond_0

    if-eq p2, p1, :cond_3

    :cond_0
    const/4 p2, 0x1

    iget-object p4, p0, Lmiuix/internal/widget/f$c;->b:Lmiuix/internal/widget/f;

    invoke-static {p4}, Lmiuix/internal/widget/f;->access$600(Lmiuix/internal/widget/f;)Landroid/widget/ListView;

    move-result-object p4

    invoke-virtual {p4}, Landroid/widget/ListView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object p4

    if-eqz p4, :cond_2

    iget-object p2, p0, Lmiuix/internal/widget/f$c;->b:Lmiuix/internal/widget/f;

    invoke-static {p2}, Lmiuix/internal/widget/f;->access$100(Lmiuix/internal/widget/f;)Landroid/view/View;

    move-result-object p2

    new-instance p4, Landroid/graphics/Rect;

    invoke-direct {p4}, Landroid/graphics/Rect;-><init>()V

    if-eqz p2, :cond_1

    iget-object p6, p0, Lmiuix/internal/widget/f$c;->b:Lmiuix/internal/widget/f;

    invoke-static {p6, p2}, Lmiuix/internal/widget/f;->access$700(Lmiuix/internal/widget/f;Landroid/view/View;)Landroid/view/View;

    move-result-object p2

    invoke-static {p2, p4}, Lpl/j;->c(Landroid/view/View;Landroid/graphics/Rect;)V

    goto :goto_0

    :cond_1
    iget-object p2, p0, Lmiuix/internal/widget/f$c;->b:Lmiuix/internal/widget/f;

    invoke-static {p2}, Lmiuix/internal/widget/f;->access$800(Lmiuix/internal/widget/f;)Landroid/content/Context;

    move-result-object p2

    invoke-static {p2}, Lbl/c;->i(Landroid/content/Context;)Lbl/o;

    move-result-object p2

    iget-object p2, p2, Lbl/o;->c:Landroid/graphics/Point;

    iget p6, p2, Landroid/graphics/Point;->x:I

    iget p2, p2, Landroid/graphics/Point;->y:I

    const/4 p7, 0x0

    invoke-virtual {p4, p7, p7, p6, p2}, Landroid/graphics/Rect;->set(IIII)V

    :goto_0
    iget-object p2, p0, Lmiuix/internal/widget/f$c;->b:Lmiuix/internal/widget/f;

    sub-int/2addr p5, p3

    invoke-virtual {p2, p5, p4}, Lmiuix/internal/widget/f;->isNeedScroll(ILandroid/graphics/Rect;)Z

    move-result p2

    :cond_2
    iget-object p3, p0, Lmiuix/internal/widget/f$c;->b:Lmiuix/internal/widget/f;

    iget-object p3, p3, Lmiuix/internal/widget/f;->mContentView:Landroid/view/View;

    invoke-virtual {p3, p2}, Landroid/view/View;->setEnabled(Z)V

    iget-object p3, p0, Lmiuix/internal/widget/f$c;->b:Lmiuix/internal/widget/f;

    invoke-static {p3}, Lmiuix/internal/widget/f;->access$600(Lmiuix/internal/widget/f;)Landroid/widget/ListView;

    move-result-object p3

    invoke-virtual {p3, p2}, Landroid/view/View;->setVerticalScrollBarEnabled(Z)V

    iput p1, p0, Lmiuix/internal/widget/f$c;->a:I

    :cond_3
    return-void
.end method
