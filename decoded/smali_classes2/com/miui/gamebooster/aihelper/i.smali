.class public final Lcom/miui/gamebooster/aihelper/i;
.super Landroidx/constraintlayout/widget/ConstraintLayout;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/gamebooster/aihelper/i$b;
    }
.end annotation


# static fields
.field public static final i:Lcom/miui/gamebooster/aihelper/i$b;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# instance fields
.field private final a:Lcom/miui/gamebooster/aihelper/d;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private b:Lcom/miui/gamebooster/aihelper/GameAISettingsDTO;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private c:Lak/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lak/a<",
            "Loj/t;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private final d:Lcom/miui/gamebooster/aihelper/i$e;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final e:Loj/f;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final f:Loj/f;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final g:Loj/f;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final h:Loj/f;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/miui/gamebooster/aihelper/i$b;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/miui/gamebooster/aihelper/i$b;-><init>(Lbk/g;)V

    sput-object v0, Lcom/miui/gamebooster/aihelper/i;->i:Lcom/miui/gamebooster/aihelper/i$b;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 8
    .param p1    # Landroid/content/Context;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lkotlin/jvm/JvmOverloads;
    .end annotation

    const-string v0, "context"

    invoke-static {p1, v0}, Lbk/m;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/16 v6, 0xe

    const/4 v7, 0x0

    move-object v1, p0

    move-object v2, p1

    invoke-direct/range {v1 .. v7}, Lcom/miui/gamebooster/aihelper/i;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;IIILbk/g;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 7
    .param p1    # Landroid/content/Context;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Landroid/util/AttributeSet;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation build Lkotlin/jvm/JvmOverloads;
    .end annotation

    const-string v0, "context"

    invoke-static {p1, v0}, Lbk/m;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, p1, p2, p3, p4}, Landroidx/constraintlayout/widget/ConstraintLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    new-instance p2, Lcom/miui/gamebooster/aihelper/d;

    invoke-direct {p2, p1}, Lcom/miui/gamebooster/aihelper/d;-><init>(Landroid/content/Context;)V

    iput-object p2, p0, Lcom/miui/gamebooster/aihelper/i;->a:Lcom/miui/gamebooster/aihelper/d;

    new-instance p2, Lcom/miui/gamebooster/aihelper/i$e;

    invoke-direct {p2, p0}, Lcom/miui/gamebooster/aihelper/i$e;-><init>(Lcom/miui/gamebooster/aihelper/i;)V

    iput-object p2, p0, Lcom/miui/gamebooster/aihelper/i;->d:Lcom/miui/gamebooster/aihelper/i$e;

    new-instance p2, Lcom/miui/gamebooster/aihelper/i$c;

    invoke-direct {p2, p0}, Lcom/miui/gamebooster/aihelper/i$c;-><init>(Lcom/miui/gamebooster/aihelper/i;)V

    invoke-static {p2}, Loj/g;->a(Lak/a;)Loj/f;

    move-result-object p2

    iput-object p2, p0, Lcom/miui/gamebooster/aihelper/i;->e:Loj/f;

    new-instance p2, Lcom/miui/gamebooster/aihelper/i$f;

    invoke-direct {p2, p0}, Lcom/miui/gamebooster/aihelper/i$f;-><init>(Lcom/miui/gamebooster/aihelper/i;)V

    invoke-static {p2}, Loj/g;->a(Lak/a;)Loj/f;

    move-result-object p2

    iput-object p2, p0, Lcom/miui/gamebooster/aihelper/i;->f:Loj/f;

    new-instance p2, Lcom/miui/gamebooster/aihelper/i$d;

    invoke-direct {p2, p0}, Lcom/miui/gamebooster/aihelper/i$d;-><init>(Lcom/miui/gamebooster/aihelper/i;)V

    invoke-static {p2}, Loj/g;->a(Lak/a;)Loj/f;

    move-result-object p2

    iput-object p2, p0, Lcom/miui/gamebooster/aihelper/i;->g:Loj/f;

    new-instance p2, Lcom/miui/gamebooster/aihelper/i$g;

    invoke-direct {p2, p0}, Lcom/miui/gamebooster/aihelper/i$g;-><init>(Lcom/miui/gamebooster/aihelper/i;)V

    invoke-static {p2}, Loj/g;->a(Lak/a;)Loj/f;

    move-result-object p2

    iput-object p2, p0, Lcom/miui/gamebooster/aihelper/i;->h:Loj/f;

    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p2

    const p3, 0x7f0e01a3

    invoke-virtual {p2, p3, p0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    invoke-direct {p0}, Lcom/miui/gamebooster/aihelper/i;->getRecyclerView()Landroidx/recyclerview/widget/RecyclerView;

    move-result-object p2

    invoke-direct {p0}, Lcom/miui/gamebooster/aihelper/i;->getAdapter()Lcom/miui/gamebooster/aihelper/a;

    move-result-object p3

    invoke-virtual {p2, p3}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$h;)V

    invoke-direct {p0}, Lcom/miui/gamebooster/aihelper/i;->getRecyclerView()Landroidx/recyclerview/widget/RecyclerView;

    move-result-object p2

    new-instance p3, Landroidx/recyclerview/widget/LinearLayoutManager;

    const/4 p4, 0x1

    const/4 v0, 0x0

    invoke-direct {p3, p1, p4, v0}, Landroidx/recyclerview/widget/LinearLayoutManager;-><init>(Landroid/content/Context;IZ)V

    invoke-virtual {p2, p3}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$n;)V

    invoke-static {}, Llk/j0;->b()Llk/i0;

    move-result-object v1

    new-instance v4, Lcom/miui/gamebooster/aihelper/i$a;

    const/4 p2, 0x0

    invoke-direct {v4, p0, p1, p2}, Lcom/miui/gamebooster/aihelper/i$a;-><init>(Lcom/miui/gamebooster/aihelper/i;Landroid/content/Context;Ltj/d;)V

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v5, 0x3

    const/4 v6, 0x0

    invoke-static/range {v1 .. v6}, Llk/g;->b(Llk/i0;Ltj/g;Llk/k0;Lak/p;ILjava/lang/Object;)Llk/s1;

    invoke-direct {p0}, Lcom/miui/gamebooster/aihelper/i;->getBackBtn()Landroid/view/View;

    move-result-object p1

    new-instance p2, Lcom/miui/gamebooster/aihelper/g;

    invoke-direct {p2, p0}, Lcom/miui/gamebooster/aihelper/g;-><init>(Lcom/miui/gamebooster/aihelper/i;)V

    invoke-virtual {p1, p2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public synthetic constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;IIILbk/g;)V
    .locals 1

    and-int/lit8 p6, p5, 0x2

    if-eqz p6, :cond_0

    const/4 p2, 0x0

    :cond_0
    and-int/lit8 p6, p5, 0x4

    const/4 v0, 0x0

    if-eqz p6, :cond_1

    move p3, v0

    :cond_1
    and-int/lit8 p5, p5, 0x8

    if-eqz p5, :cond_2

    move p4, v0

    :cond_2
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/miui/gamebooster/aihelper/i;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    return-void
.end method

.method public static synthetic f(Lcom/miui/gamebooster/aihelper/i;Landroid/view/View;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/miui/gamebooster/aihelper/i;->g(Lcom/miui/gamebooster/aihelper/i;Landroid/view/View;)V

    return-void
.end method

.method private static final g(Lcom/miui/gamebooster/aihelper/i;Landroid/view/View;)V
    .locals 0

    const-string p1, "this$0"

    invoke-static {p0, p1}, Lbk/m;->e(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/miui/gamebooster/aihelper/i;->c:Lak/a;

    if-eqz p0, :cond_0

    invoke-interface {p0}, Lak/a;->invoke()Ljava/lang/Object;

    :cond_0
    return-void
.end method

.method private final getAdapter()Lcom/miui/gamebooster/aihelper/a;
    .locals 1

    iget-object v0, p0, Lcom/miui/gamebooster/aihelper/i;->e:Loj/f;

    invoke-interface {v0}, Loj/f;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/gamebooster/aihelper/a;

    return-object v0
.end method

.method private final getBackBtn()Landroid/view/View;
    .locals 1

    iget-object v0, p0, Lcom/miui/gamebooster/aihelper/i;->g:Loj/f;

    invoke-interface {v0}, Loj/f;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    return-object v0
.end method

.method private final getRecyclerView()Landroidx/recyclerview/widget/RecyclerView;
    .locals 1

    iget-object v0, p0, Lcom/miui/gamebooster/aihelper/i;->f:Loj/f;

    invoke-interface {v0}, Loj/f;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/recyclerview/widget/RecyclerView;

    return-object v0
.end method

.method private final getTitleView()Landroid/widget/TextView;
    .locals 1

    iget-object v0, p0, Lcom/miui/gamebooster/aihelper/i;->h:Loj/f;

    invoke-interface {v0}, Loj/f;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    return-object v0
.end method

.method public static final synthetic h(Lcom/miui/gamebooster/aihelper/i;)Lcom/miui/gamebooster/aihelper/d;
    .locals 0

    iget-object p0, p0, Lcom/miui/gamebooster/aihelper/i;->a:Lcom/miui/gamebooster/aihelper/d;

    return-object p0
.end method

.method public static final synthetic i(Lcom/miui/gamebooster/aihelper/i;)Lcom/miui/gamebooster/aihelper/i$e;
    .locals 0

    iget-object p0, p0, Lcom/miui/gamebooster/aihelper/i;->d:Lcom/miui/gamebooster/aihelper/i$e;

    return-object p0
.end method

.method public static final synthetic j(Lcom/miui/gamebooster/aihelper/i;Lcom/miui/gamebooster/aihelper/GameAISettingsDTO;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/gamebooster/aihelper/i;->b:Lcom/miui/gamebooster/aihelper/GameAISettingsDTO;

    return-void
.end method

.method public static final synthetic k(Lcom/miui/gamebooster/aihelper/i;Lcom/miui/gamebooster/aihelper/GameAISettingsDTO;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/miui/gamebooster/aihelper/i;->m(Lcom/miui/gamebooster/aihelper/GameAISettingsDTO;)V

    return-void
.end method

.method private final m(Lcom/miui/gamebooster/aihelper/GameAISettingsDTO;)V
    .locals 1

    invoke-direct {p0}, Lcom/miui/gamebooster/aihelper/i;->getAdapter()Lcom/miui/gamebooster/aihelper/a;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/miui/gamebooster/aihelper/a;->n(Lcom/miui/gamebooster/aihelper/GameAISettingsDTO;)V

    return-void
.end method


# virtual methods
.method public final getBackListener()Lak/a;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lak/a<",
            "Loj/t;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    iget-object v0, p0, Lcom/miui/gamebooster/aihelper/i;->c:Lak/a;

    return-object v0
.end method

.method public final l(Ljava/lang/String;)V
    .locals 1
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "packageName"

    invoke-static {p1, v0}, Lbk/m;->e(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/miui/gamebooster/aihelper/i;->a:Lcom/miui/gamebooster/aihelper/d;

    invoke-virtual {v0, p1}, Lcom/miui/gamebooster/aihelper/d;->j(Ljava/lang/String;)V

    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 1

    iget-object v0, p0, Lcom/miui/gamebooster/aihelper/i;->b:Lcom/miui/gamebooster/aihelper/GameAISettingsDTO;

    invoke-static {v0}, Lcom/miui/gamebooster/windowmanager/newbox/q;->g(Lcom/miui/gamebooster/aihelper/GameAISettingsDTO;)V

    iget-object v0, p0, Lcom/miui/gamebooster/aihelper/i;->a:Lcom/miui/gamebooster/aihelper/d;

    invoke-virtual {v0}, Lcom/miui/gamebooster/aihelper/d;->k()V

    invoke-super {p0}, Landroid/view/ViewGroup;->onDetachedFromWindow()V

    return-void
.end method

.method public final setBackListener(Lak/a;)V
    .locals 0
    .param p1    # Lak/a;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lak/a<",
            "Loj/t;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/miui/gamebooster/aihelper/i;->c:Lak/a;

    return-void
.end method
