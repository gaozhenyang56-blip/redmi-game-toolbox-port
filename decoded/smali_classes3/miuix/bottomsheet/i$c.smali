.class Lmiuix/bottomsheet/i$c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnLayoutChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lmiuix/bottomsheet/i;->M(ILandroid/view/View;Landroid/view/ViewGroup$LayoutParams;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lmiuix/bottomsheet/i;


# direct methods
.method constructor <init>(Lmiuix/bottomsheet/i;)V
    .locals 0

    iput-object p1, p0, Lmiuix/bottomsheet/i$c;->a:Lmiuix/bottomsheet/i;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onLayoutChange(Landroid/view/View;IIIIIIII)V
    .locals 0

    iget-object p1, p0, Lmiuix/bottomsheet/i$c;->a:Lmiuix/bottomsheet/i;

    invoke-static {p1}, Lmiuix/bottomsheet/i;->o(Lmiuix/bottomsheet/i;)Lyk/b;

    move-result-object p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lmiuix/bottomsheet/i$c;->a:Lmiuix/bottomsheet/i;

    invoke-static {p1}, Lmiuix/bottomsheet/i;->p(Lmiuix/bottomsheet/i;)Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lbl/c;->i(Landroid/content/Context;)Lbl/o;

    move-result-object p1

    iget-object p1, p1, Lbl/o;->d:Landroid/graphics/Point;

    sub-int p6, p4, p2

    sub-int p7, p5, p3

    iget-object p2, p0, Lmiuix/bottomsheet/i$c;->a:Lmiuix/bottomsheet/i;

    invoke-static {p2}, Lmiuix/bottomsheet/i;->o(Lmiuix/bottomsheet/i;)Lyk/b;

    move-result-object p2

    iget p3, p1, Landroid/graphics/Point;->x:I

    iget p4, p1, Landroid/graphics/Point;->y:I

    iget-object p1, p0, Lmiuix/bottomsheet/i$c;->a:Lmiuix/bottomsheet/i;

    invoke-static {p1}, Lmiuix/bottomsheet/i;->p(Lmiuix/bottomsheet/i;)Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p1

    iget p1, p1, Landroid/util/DisplayMetrics;->density:F

    const/4 p8, 0x0

    move p5, p6

    move p6, p7

    move p7, p1

    invoke-virtual/range {p2 .. p8}, Lyk/b;->i(IIIIFZ)V

    :cond_0
    return-void
.end method
