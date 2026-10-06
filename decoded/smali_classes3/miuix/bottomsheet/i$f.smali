.class Lmiuix/bottomsheet/i$f;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lmiuix/bottomsheet/i;->L()V
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

    iput-object p1, p0, Lmiuix/bottomsheet/i$f;->a:Lmiuix/bottomsheet/i;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    iget-object v0, p0, Lmiuix/bottomsheet/i$f;->a:Lmiuix/bottomsheet/i;

    invoke-static {v0}, Lmiuix/bottomsheet/i;->v(Lmiuix/bottomsheet/i;)Lmiuix/bottomsheet/BottomSheetBehavior;

    move-result-object v0

    invoke-virtual {v0}, Lmiuix/bottomsheet/BottomSheetBehavior;->getExpandedOffset()I

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lmiuix/bottomsheet/i$f;->a:Lmiuix/bottomsheet/i;

    invoke-static {v0}, Lmiuix/bottomsheet/i;->f(Lmiuix/bottomsheet/i;)Lmiuix/bottomsheet/BottomSheetView;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lmiuix/bottomsheet/i$f;->a:Lmiuix/bottomsheet/i;

    invoke-static {v0}, Lmiuix/bottomsheet/i;->v(Lmiuix/bottomsheet/i;)Lmiuix/bottomsheet/BottomSheetBehavior;

    move-result-object v0

    new-instance v1, Lmiuix/bottomsheet/i$f$a;

    invoke-direct {v1, p0}, Lmiuix/bottomsheet/i$f$a;-><init>(Lmiuix/bottomsheet/i$f;)V

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lmiuix/bottomsheet/BottomSheetBehavior;->startEnterAnimation(Lmiuix/bottomsheet/BottomSheetBehavior$h;Z)Z

    :goto_0
    return-void
.end method
