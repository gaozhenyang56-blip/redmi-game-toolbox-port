.class public final Lt5/a;
.super Landroidx/recyclerview/widget/RecyclerView$h;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lt5/a$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroidx/recyclerview/widget/RecyclerView$h<",
        "Lt5/a$a;",
        ">;"
    }
.end annotation


# instance fields
.field private final a:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/miui/gamebooster/model/e;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final b:Landroid/content/Context;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private c:Landroid/widget/CompoundButton$OnCheckedChangeListener;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/util/List;Landroid/content/Context;Landroid/widget/CompoundButton$OnCheckedChangeListener;)V
    .locals 1
    .param p1    # Ljava/util/List;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Landroid/content/Context;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p3    # Landroid/widget/CompoundButton$OnCheckedChangeListener;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/miui/gamebooster/model/e;",
            ">;",
            "Landroid/content/Context;",
            "Landroid/widget/CompoundButton$OnCheckedChangeListener;",
            ")V"
        }
    .end annotation

    const-string v0, "_apps"

    invoke-static {p1, v0}, Lbk/m;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "_context"

    invoke-static {p2, v0}, Lbk/m;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$h;-><init>()V

    iput-object p1, p0, Lt5/a;->a:Ljava/util/List;

    iput-object p2, p0, Lt5/a;->b:Landroid/content/Context;

    iput-object p3, p0, Lt5/a;->c:Landroid/widget/CompoundButton$OnCheckedChangeListener;

    return-void
.end method


# virtual methods
.method public getItemCount()I
    .locals 1

    iget-object v0, p0, Lt5/a;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public k(Lt5/a$a;I)V
    .locals 3
    .param p1    # Lt5/a$a;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "holder"

    invoke-static {p1, v0}, Lbk/m;->e(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lt5/a;->a:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/miui/gamebooster/model/e;

    invoke-virtual {p1}, Lt5/a$a;->a()Ljf/f;

    move-result-object v0

    iget-object v0, v0, Ljf/f;->d:Lcom/miui/gamebooster/videobox/view/MarqueeTextView;

    invoke-virtual {p2}, Lcom/miui/gamebooster/model/e;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {p2}, Lcom/miui/gamebooster/model/e;->b()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lt5/a$a;->a()Ljf/f;

    move-result-object v1

    iget-object v1, v1, Ljf/f;->b:Landroid/widget/ImageView;

    sget-object v2, Lx4/o0;->f:Lrh/c;

    invoke-static {v0, v1, v2}, Lx4/o0;->d(Ljava/lang/String;Landroid/widget/ImageView;Lrh/c;)V

    :cond_0
    invoke-virtual {p1}, Lt5/a$a;->a()Ljf/f;

    move-result-object v0

    iget-object v0, v0, Ljf/f;->c:Lmiuix/slidingwidget/widget/SlidingButton;

    invoke-virtual {p2}, Lcom/miui/gamebooster/model/e;->d()Z

    move-result v1

    invoke-virtual {v0, v1}, Lmiuix/slidingwidget/widget/SlidingButton;->setChecked(Z)V

    invoke-virtual {p1}, Lt5/a$a;->a()Ljf/f;

    move-result-object v0

    iget-object v0, v0, Ljf/f;->c:Lmiuix/slidingwidget/widget/SlidingButton;

    invoke-virtual {v0, p2}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    invoke-virtual {p1}, Lt5/a$a;->a()Ljf/f;

    move-result-object p1

    iget-object p1, p1, Ljf/f;->c:Lmiuix/slidingwidget/widget/SlidingButton;

    iget-object p2, p0, Lt5/a;->c:Landroid/widget/CompoundButton$OnCheckedChangeListener;

    invoke-virtual {p1, p2}, Lmiuix/slidingwidget/widget/SlidingButton;->setOnPerformCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    return-void
.end method

.method public l(Landroid/view/ViewGroup;I)Lt5/a$a;
    .locals 1
    .param p1    # Landroid/view/ViewGroup;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string p2, "parent"

    invoke-static {p1, p2}, Lbk/m;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-static {p2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p2

    const/4 v0, 0x0

    invoke-static {p2, p1, v0}, Ljf/f;->c(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Ljf/f;

    move-result-object p1

    const-string p2, "inflate(LayoutInflater.f\u2026.context), parent, false)"

    invoke-static {p1, p2}, Lbk/m;->d(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance p2, Lt5/a$a;

    invoke-direct {p2, p0, p1}, Lt5/a$a;-><init>(Lt5/a;Ljf/f;)V

    return-object p2
.end method

.method public bridge synthetic onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$c0;I)V
    .locals 0

    check-cast p1, Lt5/a$a;

    invoke-virtual {p0, p1, p2}, Lt5/a;->k(Lt5/a$a;I)V

    return-void
.end method

.method public bridge synthetic onCreateViewHolder(Landroid/view/ViewGroup;I)Landroidx/recyclerview/widget/RecyclerView$c0;
    .locals 0

    invoke-virtual {p0, p1, p2}, Lt5/a;->l(Landroid/view/ViewGroup;I)Lt5/a$a;

    move-result-object p1

    return-object p1
.end method
