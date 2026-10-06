.class Lmiuix/bottomsheet/d$c;
.super Lmiuix/bottomsheet/BottomSheetBehavior$i;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmiuix/bottomsheet/d;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lmiuix/bottomsheet/d;


# direct methods
.method constructor <init>(Lmiuix/bottomsheet/d;)V
    .locals 0

    iput-object p1, p0, Lmiuix/bottomsheet/d$c;->a:Lmiuix/bottomsheet/d;

    invoke-direct {p0}, Lmiuix/bottomsheet/BottomSheetBehavior$i;-><init>()V

    return-void
.end method


# virtual methods
.method public b(Landroid/view/View;F)V
    .locals 0
    .param p1    # Landroid/view/View;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    return-void
.end method

.method public c(Landroid/view/View;I)V
    .locals 0
    .param p1    # Landroid/view/View;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    const/4 p1, 0x5

    if-ne p2, p1, :cond_0

    iget-object p1, p0, Lmiuix/bottomsheet/d$c;->a:Lmiuix/bottomsheet/d;

    invoke-virtual {p1}, Lmiuix/bottomsheet/d;->cancel()V

    :cond_0
    return-void
.end method
