.class public final Lt5/k$h$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/widget/SeekBar$OnSeekBarChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lt5/k$h;-><init>(Lt5/k;Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field final synthetic a:Lt5/k$h;

.field final synthetic b:Lt5/k;


# direct methods
.method constructor <init>(Lt5/k$h;Lt5/k;)V
    .locals 0

    iput-object p1, p0, Lt5/k$h$a;->a:Lt5/k$h;

    iput-object p2, p0, Lt5/k$h$a;->b:Lt5/k;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onProgressChanged(Landroid/widget/SeekBar;IZ)V
    .locals 3
    .param p1    # Landroid/widget/SeekBar;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    if-eqz p3, :cond_0

    iget-object p1, p0, Lt5/k$h$a;->a:Lt5/k$h;

    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$c0;->getBindingAdapterPosition()I

    move-result p1

    const/4 p3, -0x1

    if-eq p1, p3, :cond_0

    iget-object p1, p0, Lt5/k$h$a;->b:Lt5/k;

    invoke-static {p1}, Lt5/k;->m(Lt5/k;)Lak/p;

    move-result-object p1

    iget-object p3, p0, Lt5/k$h$a;->a:Lt5/k$h;

    invoke-virtual {p3}, Landroidx/recyclerview/widget/RecyclerView$c0;->getBindingAdapterPosition()I

    move-result p3

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    const/4 v0, 0x1

    new-array v0, v0, [Loj/l;

    const/4 v1, 0x0

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    const-string v2, "STRENGTH"

    invoke-static {v2, p2}, Loj/q;->a(Ljava/lang/Object;Ljava/lang/Object;)Loj/l;

    move-result-object p2

    aput-object p2, v0, v1

    invoke-static {v0}, Lqj/d0;->e([Loj/l;)Ljava/util/HashMap;

    move-result-object p2

    invoke-interface {p1, p3, p2}, Lak/p;->invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    return-void
.end method

.method public onStartTrackingTouch(Landroid/widget/SeekBar;)V
    .locals 0
    .param p1    # Landroid/widget/SeekBar;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    return-void
.end method

.method public onStopTrackingTouch(Landroid/widget/SeekBar;)V
    .locals 0
    .param p1    # Landroid/widget/SeekBar;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    return-void
.end method
