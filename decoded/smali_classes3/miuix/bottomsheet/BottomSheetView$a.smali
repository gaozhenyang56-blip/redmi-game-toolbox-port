.class Lmiuix/bottomsheet/BottomSheetView$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lmiuix/view/k$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lmiuix/bottomsheet/BottomSheetView;->i(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lmiuix/bottomsheet/BottomSheetView;


# direct methods
.method constructor <init>(Lmiuix/bottomsheet/BottomSheetView;)V
    .locals 0

    iput-object p1, p0, Lmiuix/bottomsheet/BottomSheetView$a;->a:Lmiuix/bottomsheet/BottomSheetView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onBlurApplyStateChanged(Z)V
    .locals 1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lmiuix/bottomsheet/BottomSheetView$a;->a:Lmiuix/bottomsheet/BottomSheetView;

    invoke-static {p1}, Lmiuix/bottomsheet/BottomSheetView;->c(Lmiuix/bottomsheet/BottomSheetView;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lmiuix/bottomsheet/BottomSheetView$a;->a:Lmiuix/bottomsheet/BottomSheetView;

    invoke-static {p1}, Lmiuix/bottomsheet/BottomSheetView;->b(Lmiuix/bottomsheet/BottomSheetView;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    :goto_0
    invoke-virtual {p1, v0}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    iget-object p1, p0, Lmiuix/bottomsheet/BottomSheetView$a;->a:Lmiuix/bottomsheet/BottomSheetView;

    invoke-virtual {p1}, Landroid/view/View;->invalidate()V

    return-void
.end method

.method public onBlurEnableStateChanged(Z)V
    .locals 0

    return-void
.end method

.method public onCreateBlurParams(Lmiuix/view/k;)V
    .locals 4

    iget-object v0, p0, Lmiuix/bottomsheet/BottomSheetView$a;->a:Lmiuix/bottomsheet/BottomSheetView;

    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    sget v1, Lmiuix/bottomsheet/l;->e:I

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Lpl/d;->d(Landroid/content/Context;IZ)Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v1, Ltm/b;->b:[I

    goto :goto_0

    :cond_0
    sget-object v1, Ltm/a;->c:[I

    :goto_0
    iget-object v2, p0, Lmiuix/bottomsheet/BottomSheetView$a;->a:Lmiuix/bottomsheet/BottomSheetView;

    invoke-virtual {v2}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    iget-object v3, p0, Lmiuix/bottomsheet/BottomSheetView$a;->a:Lmiuix/bottomsheet/BottomSheetView;

    invoke-static {v3}, Lmiuix/bottomsheet/BottomSheetView;->b(Lmiuix/bottomsheet/BottomSheetView;)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-static {v2, v3, v1}, Lmiuix/view/k;->d(Landroid/content/Context;Landroid/graphics/drawable/Drawable;[I)[I

    move-result-object v1

    if-eqz v0, :cond_1

    sget-object v0, Ltm/d;->a:[I

    goto :goto_1

    :cond_1
    sget-object v0, Ltm/c;->a:[I

    :goto_1
    const/16 v2, 0x64

    invoke-virtual {p1, v1, v0, v2}, Lmiuix/view/k;->k([I[II)V

    return-void
.end method
