.class Lmiuix/bottomsheet/i$i;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lmiuix/bottomsheet/BottomSheetBehavior$h;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lmiuix/bottomsheet/i;->x()V
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

    iput-object p1, p0, Lmiuix/bottomsheet/i$i;->a:Lmiuix/bottomsheet/i;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static synthetic b(Lmiuix/bottomsheet/i$i;)V
    .locals 0

    invoke-direct {p0}, Lmiuix/bottomsheet/i$i;->c()V

    return-void
.end method

.method private synthetic c()V
    .locals 1

    iget-object v0, p0, Lmiuix/bottomsheet/i$i;->a:Lmiuix/bottomsheet/i;

    invoke-static {v0}, Lmiuix/bottomsheet/i;->m(Lmiuix/bottomsheet/i;)V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 2

    iget-object v0, p0, Lmiuix/bottomsheet/i$i;->a:Lmiuix/bottomsheet/i;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lmiuix/bottomsheet/i;->r(Lmiuix/bottomsheet/i;Z)Z

    return-void
.end method

.method public onAnimationEnd()V
    .locals 2

    iget-object v0, p0, Lmiuix/bottomsheet/i$i;->a:Lmiuix/bottomsheet/i;

    invoke-static {v0}, Lmiuix/bottomsheet/i;->i(Lmiuix/bottomsheet/i;)Ljava/lang/Runnable;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lmiuix/bottomsheet/i$i;->a:Lmiuix/bottomsheet/i;

    invoke-static {v0}, Lmiuix/bottomsheet/i;->f(Lmiuix/bottomsheet/i;)Lmiuix/bottomsheet/BottomSheetView;

    move-result-object v0

    iget-object v1, p0, Lmiuix/bottomsheet/i$i;->a:Lmiuix/bottomsheet/i;

    invoke-static {v1}, Lmiuix/bottomsheet/i;->i(Lmiuix/bottomsheet/i;)Ljava/lang/Runnable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/View;->removeCallbacks(Ljava/lang/Runnable;)Z

    :cond_0
    iget-object v0, p0, Lmiuix/bottomsheet/i$i;->a:Lmiuix/bottomsheet/i;

    invoke-static {v0}, Lmiuix/bottomsheet/i;->l(Lmiuix/bottomsheet/i;)Landroid/view/ViewGroup;

    move-result-object v0

    new-instance v1, Lmiuix/bottomsheet/k;

    invoke-direct {v1, p0}, Lmiuix/bottomsheet/k;-><init>(Lmiuix/bottomsheet/i$i;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    return-void
.end method
