.class public final Lcom/miui/gamebooster/customview/b;
.super Lcom/miui/gamebooster/customview/l;
.source "SourceFile"


# instance fields
.field private final d:Landroid/util/AttributeSet;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private e:Lcom/miui/gamebooster/customview/c$e;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private final f:Ln7/a;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private g:Lt5/a;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field public h:Ljf/g;

.field private final i:Ljava/util/List;
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

.field private final j:Lcom/miui/gamebooster/customview/b$a;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;ILcom/miui/gamebooster/customview/c$e;)V
    .locals 1
    .param p1    # Landroid/content/Context;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Landroid/util/AttributeSet;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p4    # Lcom/miui/gamebooster/customview/c$e;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation build Lkotlin/jvm/JvmOverloads;
    .end annotation

    const-string v0, "context"

    invoke-static {p1, v0}, Lbk/m;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, p1, p2, p3}, Lcom/miui/gamebooster/customview/l;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    iput-object p2, p0, Lcom/miui/gamebooster/customview/b;->d:Landroid/util/AttributeSet;

    iput-object p4, p0, Lcom/miui/gamebooster/customview/b;->e:Lcom/miui/gamebooster/customview/c$e;

    new-instance p1, Ln7/a;

    invoke-direct {p1}, Ln7/a;-><init>()V

    iput-object p1, p0, Lcom/miui/gamebooster/customview/b;->f:Ln7/a;

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/miui/gamebooster/customview/b;->i:Ljava/util/List;

    new-instance p1, Lcom/miui/gamebooster/customview/b$a;

    invoke-direct {p1, p0}, Lcom/miui/gamebooster/customview/b$a;-><init>(Lcom/miui/gamebooster/customview/b;)V

    iput-object p1, p0, Lcom/miui/gamebooster/customview/b;->j:Lcom/miui/gamebooster/customview/b$a;

    invoke-direct {p0}, Lcom/miui/gamebooster/customview/b;->e()V

    return-void
.end method

.method public synthetic constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;ILcom/miui/gamebooster/customview/c$e;ILbk/g;)V
    .locals 1

    and-int/lit8 p6, p5, 0x2

    const/4 v0, 0x0

    if-eqz p6, :cond_0

    move-object p2, v0

    :cond_0
    and-int/lit8 p6, p5, 0x4

    if-eqz p6, :cond_1

    const/4 p3, 0x0

    :cond_1
    and-int/lit8 p5, p5, 0x8

    if-eqz p5, :cond_2

    move-object p4, v0

    :cond_2
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/miui/gamebooster/customview/b;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;ILcom/miui/gamebooster/customview/c$e;)V

    return-void
.end method

.method public static synthetic a(Lcom/miui/gamebooster/customview/b;Landroid/view/View;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/miui/gamebooster/customview/b;->f(Lcom/miui/gamebooster/customview/b;Landroid/view/View;)V

    return-void
.end method

.method public static final synthetic b(Lcom/miui/gamebooster/customview/b;)V
    .locals 0

    invoke-direct {p0}, Lcom/miui/gamebooster/customview/b;->d()V

    return-void
.end method

.method public static final synthetic c(Lcom/miui/gamebooster/customview/b;)Ljava/util/List;
    .locals 0

    iget-object p0, p0, Lcom/miui/gamebooster/customview/b;->i:Ljava/util/List;

    return-object p0
.end method

.method private final d()V
    .locals 4

    iget-object v0, p0, Lcom/miui/gamebooster/customview/b;->g:Lt5/a;

    if-nez v0, :cond_0

    new-instance v0, Lt5/a;

    iget-object v1, p0, Lcom/miui/gamebooster/customview/b;->i:Ljava/util/List;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    const-string v3, "context"

    invoke-static {v2, v3}, Lbk/m;->d(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v3, p0, Lcom/miui/gamebooster/customview/b;->j:Lcom/miui/gamebooster/customview/b$a;

    invoke-direct {v0, v1, v2, v3}, Lt5/a;-><init>(Ljava/util/List;Landroid/content/Context;Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    iput-object v0, p0, Lcom/miui/gamebooster/customview/b;->g:Lt5/a;

    :cond_0
    new-instance v0, Landroidx/recyclerview/widget/LinearLayoutManager;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroidx/recyclerview/widget/LinearLayoutManager;-><init>(Landroid/content/Context;)V

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/LinearLayoutManager;->setOrientation(I)V

    invoke-virtual {p0}, Lcom/miui/gamebooster/customview/b;->getBinding()Ljf/g;

    move-result-object v1

    iget-object v1, v1, Ljf/g;->b:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v1, v0}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$n;)V

    invoke-virtual {p0}, Lcom/miui/gamebooster/customview/b;->getBinding()Ljf/g;

    move-result-object v0

    iget-object v0, v0, Ljf/g;->b:Landroidx/recyclerview/widget/RecyclerView;

    iget-object v1, p0, Lcom/miui/gamebooster/customview/b;->g:Lt5/a;

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$h;)V

    return-void
.end method

.method private final e()V
    .locals 8

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const/4 v1, 0x1

    invoke-static {v0, p0, v1}, Ljf/g;->b(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Ljf/g;

    move-result-object v0

    const-string v1, "inflate(LayoutInflater.from(context), this, true)"

    invoke-static {v0, v1}, Lbk/m;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/miui/gamebooster/customview/b;->setBinding(Ljf/g;)V

    invoke-virtual {p0}, Lcom/miui/gamebooster/customview/b;->getBinding()Ljf/g;

    move-result-object v0

    iget-object v0, v0, Ljf/g;->c:Lcom/miui/gamebooster/windowmanager/GBTopbarLayout;

    new-instance v1, Lcom/miui/gamebooster/customview/a;

    invoke-direct {v1, p0}, Lcom/miui/gamebooster/customview/a;-><init>(Lcom/miui/gamebooster/customview/b;)V

    invoke-virtual {v0, v1}, Lcom/miui/gamebooster/windowmanager/GBTopbarLayout;->setOnBackListener(Lcom/miui/gamebooster/windowmanager/GBTopbarLayout$a;)V

    invoke-virtual {p0}, Lcom/miui/gamebooster/customview/l;->getViewCoroutineScope()Llk/i0;

    move-result-object v2

    new-instance v5, Lcom/miui/gamebooster/customview/b$b;

    const/4 v0, 0x0

    invoke-direct {v5, p0, v0}, Lcom/miui/gamebooster/customview/b$b;-><init>(Lcom/miui/gamebooster/customview/b;Ltj/d;)V

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v6, 0x3

    const/4 v7, 0x0

    invoke-static/range {v2 .. v7}, Llk/g;->b(Llk/i0;Ltj/g;Llk/k0;Lak/p;ILjava/lang/Object;)Llk/s1;

    return-void
.end method

.method private static final f(Lcom/miui/gamebooster/customview/b;Landroid/view/View;)V
    .locals 0

    const-string p1, "this$0"

    invoke-static {p0, p1}, Lbk/m;->e(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/miui/gamebooster/customview/b;->e:Lcom/miui/gamebooster/customview/c$e;

    if-eqz p1, :cond_0

    invoke-interface {p1, p0}, Lcom/miui/gamebooster/customview/c$e;->a(Landroid/view/ViewGroup;)V

    :cond_0
    return-void
.end method


# virtual methods
.method public final getAttrs()Landroid/util/AttributeSet;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    iget-object v0, p0, Lcom/miui/gamebooster/customview/b;->d:Landroid/util/AttributeSet;

    return-object v0
.end method

.method public final getBinding()Ljf/g;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object v0, p0, Lcom/miui/gamebooster/customview/b;->h:Ljf/g;

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    const-string v0, "binding"

    invoke-static {v0}, Lbk/m;->r(Ljava/lang/String;)V

    const/4 v0, 0x0

    return-object v0
.end method

.method public final getPageChangeListener()Lcom/miui/gamebooster/customview/c$e;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    iget-object v0, p0, Lcom/miui/gamebooster/customview/b;->e:Lcom/miui/gamebooster/customview/c$e;

    return-object v0
.end method

.method public final get_adapter()Lt5/a;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    iget-object v0, p0, Lcom/miui/gamebooster/customview/b;->g:Lt5/a;

    return-object v0
.end method

.method public final get_repository()Ln7/a;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object v0, p0, Lcom/miui/gamebooster/customview/b;->f:Ln7/a;

    return-object v0
.end method

.method public final setBinding(Ljf/g;)V
    .locals 1
    .param p1    # Ljf/g;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lbk/m;->e(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/miui/gamebooster/customview/b;->h:Ljf/g;

    return-void
.end method

.method public final setPageChangeListener(Lcom/miui/gamebooster/customview/c$e;)V
    .locals 0
    .param p1    # Lcom/miui/gamebooster/customview/c$e;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    iput-object p1, p0, Lcom/miui/gamebooster/customview/b;->e:Lcom/miui/gamebooster/customview/c$e;

    return-void
.end method

.method public final set_adapter(Lt5/a;)V
    .locals 0
    .param p1    # Lt5/a;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    iput-object p1, p0, Lcom/miui/gamebooster/customview/b;->g:Lt5/a;

    return-void
.end method
