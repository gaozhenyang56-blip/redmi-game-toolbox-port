.class public final Lt5/k$h;
.super Lt5/k$g;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lt5/k;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "h"
.end annotation


# instance fields
.field private final a:Loj/f;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field final synthetic b:Lt5/k;


# direct methods
.method public constructor <init>(Lt5/k;Landroid/view/View;)V
    .locals 1
    .param p1    # Lt5/k;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/View;",
            ")V"
        }
    .end annotation

    const-string v0, "itemView"

    invoke-static {p2, v0}, Lbk/m;->e(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lt5/k$h;->b:Lt5/k;

    invoke-direct {p0, p2}, Lt5/k$g;-><init>(Landroid/view/View;)V

    new-instance v0, Lt5/k$h$b;

    invoke-direct {v0, p2}, Lt5/k$h$b;-><init>(Landroid/view/View;)V

    invoke-static {v0}, Loj/g;->a(Lak/a;)Loj/f;

    move-result-object p2

    iput-object p2, p0, Lt5/k$h;->a:Loj/f;

    invoke-direct {p0}, Lt5/k$h;->c()Lmiuix/androidbasewidget/widget/SeekBar;

    move-result-object p2

    new-instance v0, Lt5/k$h$a;

    invoke-direct {v0, p0, p1}, Lt5/k$h$a;-><init>(Lt5/k$h;Lt5/k;)V

    invoke-virtual {p2, v0}, Lmiuix/androidbasewidget/widget/SeekBar;->setOnSeekBarChangeListener(Landroid/widget/SeekBar$OnSeekBarChangeListener;)V

    return-void
.end method

.method private final c()Lmiuix/androidbasewidget/widget/SeekBar;
    .locals 2

    iget-object v0, p0, Lt5/k$h;->a:Loj/f;

    invoke-interface {v0}, Loj/f;->getValue()Ljava/lang/Object;

    move-result-object v0

    const-string v1, "<get-seekBar>(...)"

    invoke-static {v0, v1}, Lbk/m;->d(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Lmiuix/androidbasewidget/widget/SeekBar;

    return-object v0
.end method


# virtual methods
.method public a(Lt5/k$b;)V
    .locals 1
    .param p1    # Lt5/k$b;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "model"

    invoke-static {p1, v0}, Lbk/m;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-super {p0, p1}, Lt5/k$g;->a(Lt5/k$b;)V

    invoke-virtual {p0, p1}, Lt5/k$h;->b(Lt5/k$b;)V

    return-void
.end method

.method public b(Lt5/k$b;)V
    .locals 3
    .param p1    # Lt5/k$b;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "model"

    invoke-static {p1, v0}, Lbk/m;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-super {p0, p1}, Lt5/k$g;->b(Lt5/k$b;)V

    instance-of v0, p1, Lt5/k$e;

    if-eqz v0, :cond_2

    move-object v0, p1

    check-cast v0, Lt5/k$e;

    invoke-virtual {v0}, Lt5/k$e;->d()Ljava/lang/Integer;

    move-result-object v0

    const/16 v1, 0x8

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/lang/Number;->intValue()I

    move-result v0

    invoke-direct {p0}, Lt5/k$h;->c()Lmiuix/androidbasewidget/widget/SeekBar;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/widget/ProgressBar;->setProgress(I)V

    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView$c0;->itemView:Landroid/view/View;

    sget-object v2, La8/s0;->g:La8/s0$a;

    invoke-virtual {v2}, La8/s0$a;->a()La8/s0;

    move-result-object v2

    invoke-virtual {p1}, Lt5/k$b;->a()I

    move-result p1

    invoke-virtual {v2, p1}, La8/s0;->s(I)Z

    move-result p1

    if-eqz p1, :cond_0

    move p1, v1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    invoke-virtual {v0, p1}, Landroid/view/View;->setVisibility(I)V

    sget-object p1, Loj/t;->a:Loj/t;

    goto :goto_1

    :cond_1
    const/4 p1, 0x0

    :goto_1
    if-nez p1, :cond_2

    iget-object p1, p0, Landroidx/recyclerview/widget/RecyclerView$c0;->itemView:Landroid/view/View;

    invoke-virtual {p1, v1}, Landroid/view/View;->setVisibility(I)V

    :cond_2
    return-void
.end method
