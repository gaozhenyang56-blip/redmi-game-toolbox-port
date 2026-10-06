.class public final Lcom/miui/gamebooster/customview/k;
.super Landroid/widget/LinearLayout;
.source "SourceFile"


# annotations
.annotation build Landroid/annotation/SuppressLint;
    value = {
        "ViewConstructor"
    }
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/gamebooster/customview/k$b;
    }
.end annotation


# static fields
.field public static final f:Lcom/miui/gamebooster/customview/k$b;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# instance fields
.field private final a:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private b:Lcom/miui/gamebooster/windowmanager/GBTopbarLayout;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private final c:Lt5/k;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final d:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lt5/k$b;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private e:Lt5/k$d;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/miui/gamebooster/customview/k$b;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/miui/gamebooster/customview/k$b;-><init>(Lbk/g;)V

    sput-object v0, Lcom/miui/gamebooster/customview/k;->f:Lcom/miui/gamebooster/customview/k$b;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 8
    .param p1    # Landroid/content/Context;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lkotlin/jvm/JvmOverloads;
    .end annotation

    const-string v0, "ctx"

    invoke-static {p1, v0}, Lbk/m;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "pkg"

    invoke-static {p2, v0}, Lbk/m;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/16 v6, 0xc

    const/4 v7, 0x0

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    invoke-direct/range {v1 .. v7}, Lcom/miui/gamebooster/customview/k;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/util/AttributeSet;IILbk/g;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Landroid/util/AttributeSet;I)V
    .locals 1
    .param p1    # Landroid/content/Context;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p3    # Landroid/util/AttributeSet;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation build Lkotlin/jvm/JvmOverloads;
    .end annotation

    const-string v0, "ctx"

    invoke-static {p1, v0}, Lbk/m;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "pkg"

    invoke-static {p2, v0}, Lbk/m;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, p1, p3, p4}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    iput-object p2, p0, Lcom/miui/gamebooster/customview/k;->a:Ljava/lang/String;

    new-instance p1, Lt5/k;

    invoke-direct {p1, p2}, Lt5/k;-><init>(Ljava/lang/String;)V

    iput-object p1, p0, Lcom/miui/gamebooster/customview/k;->c:Lt5/k;

    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    iput-object p2, p0, Lcom/miui/gamebooster/customview/k;->d:Ljava/util/List;

    const-string p2, "GameFilter_View"

    const-string p3, "init"

    invoke-static {p2, p3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p2, 0x1

    invoke-virtual {p0, p2}, Landroid/widget/LinearLayout;->setOrientation(I)V

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-static {p2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p2

    const p3, 0x7f0e01e9

    invoke-virtual {p2, p3, p0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    const p2, 0x7f0b0bfe

    invoke-virtual {p0, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Lcom/miui/gamebooster/windowmanager/GBTopbarLayout;

    iput-object p2, p0, Lcom/miui/gamebooster/customview/k;->b:Lcom/miui/gamebooster/windowmanager/GBTopbarLayout;

    const p2, 0x7f0b0966

    invoke-virtual {p0, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {p2}, Landroidx/recyclerview/widget/RecyclerView;->getLayoutManager()Landroidx/recyclerview/widget/RecyclerView$n;

    move-result-object p3

    const-string p4, "null cannot be cast to non-null type androidx.recyclerview.widget.GridLayoutManager"

    invoke-static {p3, p4}, Lbk/m;->c(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p3, Landroidx/recyclerview/widget/GridLayoutManager;

    new-instance p4, Lcom/miui/gamebooster/customview/k$a;

    invoke-direct {p4, p0, p3}, Lcom/miui/gamebooster/customview/k$a;-><init>(Lcom/miui/gamebooster/customview/k;Landroidx/recyclerview/widget/GridLayoutManager;)V

    invoke-virtual {p3, p4}, Landroidx/recyclerview/widget/GridLayoutManager;->t(Landroidx/recyclerview/widget/GridLayoutManager$c;)V

    invoke-virtual {p2, p1}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$h;)V

    return-void
.end method

.method public synthetic constructor <init>(Landroid/content/Context;Ljava/lang/String;Landroid/util/AttributeSet;IILbk/g;)V
    .locals 0

    and-int/lit8 p6, p5, 0x4

    if-eqz p6, :cond_0

    const/4 p3, 0x0

    :cond_0
    and-int/lit8 p5, p5, 0x8

    if-eqz p5, :cond_1

    const/4 p4, 0x0

    :cond_1
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/miui/gamebooster/customview/k;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public static final synthetic a(Lcom/miui/gamebooster/customview/k;)Lt5/k;
    .locals 0

    iget-object p0, p0, Lcom/miui/gamebooster/customview/k;->c:Lt5/k;

    return-object p0
.end method


# virtual methods
.method public final b()V
    .locals 4

    iget-object v0, p0, Lcom/miui/gamebooster/customview/k;->d:Ljava/util/List;

    sget-object v1, La8/s0;->g:La8/s0$a;

    invoke-virtual {v1}, La8/s0$a;->a()La8/s0;

    move-result-object v1

    iget-object v2, p0, Lcom/miui/gamebooster/customview/k;->a:Ljava/lang/String;

    invoke-virtual {v1, v2}, La8/s0;->k(Ljava/lang/String;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    iget-object v0, p0, Lcom/miui/gamebooster/customview/k;->c:Lt5/k;

    iget-object v1, p0, Lcom/miui/gamebooster/customview/k;->d:Ljava/util/List;

    invoke-virtual {v0, v1}, Lt5/k;->setData(Ljava/util/List;)V

    iget-object v0, p0, Lcom/miui/gamebooster/customview/k;->c:Lt5/k;

    invoke-virtual {v0}, Lt5/k;->r()Lt5/k$d;

    move-result-object v0

    new-instance v1, Lt5/k$d;

    invoke-virtual {v0}, Lt5/k$d;->a()I

    move-result v2

    invoke-virtual {v0}, Lt5/k$d;->e()Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v0}, Lt5/k$d;->h()Ljava/lang/Integer;

    move-result-object v0

    invoke-direct {v1, v2, v3, v0}, Lt5/k$d;-><init>(ILjava/lang/Boolean;Ljava/lang/Integer;)V

    iput-object v1, p0, Lcom/miui/gamebooster/customview/k;->e:Lt5/k$d;

    return-void
.end method

.method public final getPkg()Ljava/lang/String;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object v0, p0, Lcom/miui/gamebooster/customview/k;->a:Ljava/lang/String;

    return-object v0
.end method

.method protected onAttachedToWindow()V
    .locals 2

    invoke-super {p0}, Landroid/widget/LinearLayout;->onAttachedToWindow()V

    const-string v0, "GameFilter_View"

    const-string v1, "onAttachedToWindow"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/miui/gamebooster/customview/k;->b()V

    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 8

    const-string v0, "GameFilter_View"

    const-string v1, "onDetachedFromWindow"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/miui/gamebooster/customview/k;->c:Lt5/k;

    invoke-virtual {v1}, Lt5/k;->r()Lt5/k$d;

    move-result-object v1

    iget-object v2, p0, Lcom/miui/gamebooster/customview/k;->e:Lt5/k$d;

    const/4 v3, 0x0

    const-string v4, "mDefaultSelect"

    if-nez v2, :cond_0

    invoke-static {v4}, Lbk/m;->r(Ljava/lang/String;)V

    move-object v2, v3

    :cond_0
    invoke-virtual {v2}, Lt5/k$d;->a()I

    move-result v2

    invoke-virtual {v1}, Lt5/k$d;->a()I

    move-result v5

    if-ne v2, v5, :cond_3

    iget-object v2, p0, Lcom/miui/gamebooster/customview/k;->e:Lt5/k$d;

    if-nez v2, :cond_1

    invoke-static {v4}, Lbk/m;->r(Ljava/lang/String;)V

    move-object v2, v3

    :cond_1
    invoke-virtual {v2}, Lt5/k$d;->e()Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v1}, Lt5/k$d;->e()Ljava/lang/Boolean;

    move-result-object v5

    invoke-static {v2, v5}, Lbk/m;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/miui/gamebooster/customview/k;->e:Lt5/k$d;

    if-nez v2, :cond_2

    invoke-static {v4}, Lbk/m;->r(Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    move-object v3, v2

    :goto_0
    invoke-virtual {v3}, Lt5/k$d;->h()Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1}, Lt5/k$d;->h()Ljava/lang/Integer;

    move-result-object v3

    invoke-static {v2, v3}, Lbk/m;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_7

    :cond_3
    iget-object v2, p0, Lcom/miui/gamebooster/customview/k;->a:Ljava/lang/String;

    sget-object v3, La8/s0;->g:La8/s0$a;

    invoke-virtual {v3}, La8/s0$a;->a()La8/s0;

    move-result-object v4

    invoke-virtual {v1}, Lt5/k$d;->a()I

    move-result v5

    invoke-virtual {v4, v5}, La8/s0;->f(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1}, Lt5/k$d;->e()Ljava/lang/Boolean;

    move-result-object v5

    const/4 v6, 0x0

    if-eqz v5, :cond_4

    invoke-virtual {v5}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v5

    goto :goto_1

    :cond_4
    move v5, v6

    :goto_1
    invoke-virtual {v1}, Lt5/k$d;->h()Ljava/lang/Integer;

    move-result-object v7

    if-eqz v7, :cond_5

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v6

    :cond_5
    invoke-static {v2, v4, v5, v6}, Lcom/miui/gamebooster/utils/a;->a0(Ljava/lang/String;Ljava/lang/String;ZI)V

    invoke-virtual {v3}, La8/s0$a;->a()La8/s0;

    move-result-object v2

    invoke-virtual {v1}, Lt5/k$d;->a()I

    move-result v1

    invoke-virtual {v2, v1}, La8/s0;->s(I)Z

    move-result v1

    if-eqz v1, :cond_6

    const-string v1, "Select filter is original!"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    :cond_6
    invoke-virtual {v3}, La8/s0$a;->a()La8/s0;

    move-result-object v0

    new-instance v1, Lcom/miui/gamebooster/customview/k$c;

    invoke-direct {v1, p0}, Lcom/miui/gamebooster/customview/k$c;-><init>(Lcom/miui/gamebooster/customview/k;)V

    invoke-virtual {v0, v1}, La8/s0;->h(Lak/p;)V

    :cond_7
    :goto_2
    iget-object v0, p0, Lcom/miui/gamebooster/customview/k;->d:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    invoke-super {p0}, Landroid/widget/LinearLayout;->onDetachedFromWindow()V

    return-void
.end method

.method public final setOnBackClickListener(Lcom/miui/gamebooster/windowmanager/GBTopbarLayout$a;)V
    .locals 1
    .param p1    # Lcom/miui/gamebooster/windowmanager/GBTopbarLayout$a;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "li"

    invoke-static {p1, v0}, Lbk/m;->e(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/miui/gamebooster/customview/k;->b:Lcom/miui/gamebooster/windowmanager/GBTopbarLayout;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lcom/miui/gamebooster/windowmanager/GBTopbarLayout;->setOnBackListener(Lcom/miui/gamebooster/windowmanager/GBTopbarLayout$a;)V

    :cond_0
    return-void
.end method
