.class Lmiuix/bottomsheet/d$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lmiuix/bottomsheet/d;->wrapInBottomSheet(ILandroid/view/View;Landroid/view/ViewGroup$LayoutParams;)Landroid/view/View;
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

    iput-object p1, p0, Lmiuix/bottomsheet/d$a;->a:Lmiuix/bottomsheet/d;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    iget-object p1, p0, Lmiuix/bottomsheet/d$a;->a:Lmiuix/bottomsheet/d;

    iget-boolean v0, p1, Lmiuix/bottomsheet/d;->f:Z

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Landroid/app/Dialog;->isShowing()Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lmiuix/bottomsheet/d$a;->a:Lmiuix/bottomsheet/d;

    invoke-virtual {p1}, Lmiuix/bottomsheet/d;->shouldWindowCloseOnTouchOutside()Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lmiuix/bottomsheet/d$a;->a:Lmiuix/bottomsheet/d;

    invoke-virtual {p1}, Lmiuix/bottomsheet/d;->cancel()V

    :cond_0
    return-void
.end method
