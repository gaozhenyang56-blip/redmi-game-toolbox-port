.class Lmiuix/bottomsheet/i$d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lmiuix/bottomsheet/BottomSheetBehavior$n;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lmiuix/bottomsheet/i;->A()Landroid/widget/FrameLayout;
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

    iput-object p1, p0, Lmiuix/bottomsheet/i$d;->a:Lmiuix/bottomsheet/i;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(I)V
    .locals 1

    const/4 v0, 0x5

    if-ne p1, v0, :cond_0

    iget-object p1, p0, Lmiuix/bottomsheet/i$d;->a:Lmiuix/bottomsheet/i;

    const/4 v0, 0x1

    invoke-static {p1, v0}, Lmiuix/bottomsheet/i;->r(Lmiuix/bottomsheet/i;Z)Z

    iget-object p1, p0, Lmiuix/bottomsheet/i$d;->a:Lmiuix/bottomsheet/i;

    invoke-static {p1}, Lmiuix/bottomsheet/i;->s(Lmiuix/bottomsheet/i;)Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lmiuix/bottomsheet/i$d;->a:Lmiuix/bottomsheet/i;

    invoke-static {p1}, Lmiuix/bottomsheet/i;->t(Lmiuix/bottomsheet/i;)Landroid/view/View;

    move-result-object p1

    invoke-static {p1}, Lmiuix/bottomsheet/i$j;->a(Landroid/view/View;)V

    :cond_0
    return-void
.end method

.method public b(I)V
    .locals 1

    const/4 v0, 0x5

    if-ne p1, v0, :cond_0

    iget-object p1, p0, Lmiuix/bottomsheet/i$d;->a:Lmiuix/bottomsheet/i;

    invoke-static {p1}, Lmiuix/bottomsheet/i;->u(Lmiuix/bottomsheet/i;)V

    :cond_0
    return-void
.end method
