.class public final Lcom/miui/gamecenter/ui/GameCenterMainView;
.super Landroid/widget/LinearLayout;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/gamecenter/ui/GameCenterMainView$a;
    }
.end annotation


# static fields
.field public static final H:Lcom/miui/gamecenter/ui/GameCenterMainView$a;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# instance fields
.field private A:Z

.field private B:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private C:I

.field private final D:Landroid/util/SparseBooleanArray;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final E:Landroid/util/SparseBooleanArray;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private F:Z

.field private final G:Lrh/c;

.field private a:Lb9/f;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private b:Ljava/time/LocalDateTime;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private c:Landroid/content/Context;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private d:Landroid/widget/ImageView;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private e:Landroid/widget/TextView;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private f:Landroid/view/ViewGroup;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private g:Landroid/view/ViewGroup;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private h:Landroid/widget/LinearLayout;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private i:Landroid/widget/LinearLayout;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private j:Ld9/h;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private k:Ld9/f;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private l:Ld9/j;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private m:Ld9/e;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private n:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private o:Landroidx/recyclerview/widget/RecyclerView;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private p:Landroidx/recyclerview/widget/RecyclerView;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private q:Landroid/widget/ImageView;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private r:Landroid/widget/TextView;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private s:Lq6/f;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lq6/f<",
            "Lb9/e$a;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private t:Landroid/view/ViewGroup;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private u:Landroid/view/ViewGroup;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private v:Lq6/f;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lq6/f<",
            "Lb9/c;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private w:Lc9/e;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lc9/e<",
            "Lb9/e;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private x:Landroidx/recyclerview/widget/LinearLayoutManager;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private y:Landroidx/recyclerview/widget/StaggeredGridLayoutManager;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private z:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/miui/gamecenter/ui/GameCenterMainView$a;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/miui/gamecenter/ui/GameCenterMainView$a;-><init>(Lbk/g;)V

    sput-object v0, Lcom/miui/gamecenter/ui/GameCenterMainView;->H:Lcom/miui/gamecenter/ui/GameCenterMainView$a;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
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

    const/4 v4, 0x0

    const/4 v5, 0x4

    const/4 v6, 0x0

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    invoke-direct/range {v1 .. v6}, Lcom/miui/gamecenter/ui/GameCenterMainView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;IILbk/g;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
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

    invoke-direct {p0, p1, p2, p3}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    new-instance p2, Landroidx/recyclerview/widget/LinearLayoutManager;

    invoke-direct {p2, p1}, Landroidx/recyclerview/widget/LinearLayoutManager;-><init>(Landroid/content/Context;)V

    iput-object p2, p0, Lcom/miui/gamecenter/ui/GameCenterMainView;->x:Landroidx/recyclerview/widget/LinearLayoutManager;

    new-instance p2, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;

    const/4 p3, 0x1

    invoke-direct {p2, p3, p3}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;-><init>(II)V

    iput-object p2, p0, Lcom/miui/gamecenter/ui/GameCenterMainView;->y:Landroidx/recyclerview/widget/StaggeredGridLayoutManager;

    new-instance v4, Landroid/util/SparseBooleanArray;

    invoke-direct {v4}, Landroid/util/SparseBooleanArray;-><init>()V

    iput-object v4, p0, Lcom/miui/gamecenter/ui/GameCenterMainView;->D:Landroid/util/SparseBooleanArray;

    new-instance p2, Landroid/util/SparseBooleanArray;

    invoke-direct {p2}, Landroid/util/SparseBooleanArray;-><init>()V

    iput-object p2, p0, Lcom/miui/gamecenter/ui/GameCenterMainView;->E:Landroid/util/SparseBooleanArray;

    new-instance p2, Lrh/c$b;

    invoke-direct {p2}, Lrh/c$b;-><init>()V

    sget-object v0, Landroid/graphics/Bitmap$Config;->RGB_565:Landroid/graphics/Bitmap$Config;

    invoke-virtual {p2, v0}, Lrh/c$b;->v(Landroid/graphics/Bitmap$Config;)Lrh/c$b;

    move-result-object p2

    sget-object v0, Lsh/d;->d:Lsh/d;

    invoke-virtual {p2, v0}, Lrh/c$b;->C(Lsh/d;)Lrh/c$b;

    move-result-object p2

    invoke-virtual {p2, p3}, Lrh/c$b;->x(Z)Lrh/c$b;

    move-result-object p2

    invoke-virtual {p2, p3}, Lrh/c$b;->y(Z)Lrh/c$b;

    move-result-object p2

    invoke-virtual {p2, p3}, Lrh/c$b;->A(Z)Lrh/c$b;

    move-result-object p2

    invoke-virtual {p2}, Lrh/c$b;->w()Lrh/c;

    move-result-object p2

    iput-object p2, p0, Lcom/miui/gamecenter/ui/GameCenterMainView;->G:Lrh/c;

    iput-object p1, p0, Lcom/miui/gamecenter/ui/GameCenterMainView;->c:Landroid/content/Context;

    invoke-static {}, La8/u0;->b()Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, Lcom/miui/gamecenter/ui/GameCenterMainView;->n:Ljava/lang/String;

    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p2

    const v0, 0x7f0e0190

    invoke-virtual {p2, v0, p0, p3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    const p2, 0x7f0b00dc

    invoke-virtual {p0, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/view/ViewGroup;

    iput-object p2, p0, Lcom/miui/gamecenter/ui/GameCenterMainView;->t:Landroid/view/ViewGroup;

    const p2, 0x7f0b0960

    invoke-virtual {p0, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/view/ViewGroup;

    iput-object p2, p0, Lcom/miui/gamecenter/ui/GameCenterMainView;->u:Landroid/view/ViewGroup;

    const p2, 0x7f0b03eb

    invoke-virtual {p0, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/LinearLayout;

    iput-object p2, p0, Lcom/miui/gamecenter/ui/GameCenterMainView;->h:Landroid/widget/LinearLayout;

    const p2, 0x7f0b0a2a

    invoke-virtual {p0, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/LinearLayout;

    iput-object p2, p0, Lcom/miui/gamecenter/ui/GameCenterMainView;->i:Landroid/widget/LinearLayout;

    const p2, 0x7f0b096a

    invoke-virtual {p0, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroidx/recyclerview/widget/RecyclerView;

    iput-object p2, p0, Lcom/miui/gamecenter/ui/GameCenterMainView;->o:Landroidx/recyclerview/widget/RecyclerView;

    const p2, 0x7f0b09d3

    invoke-virtual {p0, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroidx/recyclerview/widget/RecyclerView;

    iput-object p2, p0, Lcom/miui/gamecenter/ui/GameCenterMainView;->p:Landroidx/recyclerview/widget/RecyclerView;

    const p2, 0x7f0b062a

    invoke-virtual {p0, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/ImageView;

    iput-object p2, p0, Lcom/miui/gamecenter/ui/GameCenterMainView;->q:Landroid/widget/ImageView;

    const p2, 0x7f0b0cc0

    invoke-virtual {p0, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    iput-object p2, p0, Lcom/miui/gamecenter/ui/GameCenterMainView;->r:Landroid/widget/TextView;

    const p2, 0x7f0b0620

    invoke-virtual {p0, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/ImageView;

    iput-object p2, p0, Lcom/miui/gamecenter/ui/GameCenterMainView;->d:Landroid/widget/ImageView;

    const p2, 0x7f0b0ca6

    invoke-virtual {p0, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    iput-object p2, p0, Lcom/miui/gamecenter/ui/GameCenterMainView;->e:Landroid/widget/TextView;

    const p2, 0x7f0b02a2

    invoke-virtual {p0, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/view/ViewGroup;

    iput-object p2, p0, Lcom/miui/gamecenter/ui/GameCenterMainView;->f:Landroid/view/ViewGroup;

    const p2, 0x7f0b09c0

    invoke-virtual {p0, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/view/ViewGroup;

    iput-object p2, p0, Lcom/miui/gamecenter/ui/GameCenterMainView;->g:Landroid/view/ViewGroup;

    iget-object p2, p0, Lcom/miui/gamecenter/ui/GameCenterMainView;->r:Landroid/widget/TextView;

    if-eqz p2, :cond_0

    invoke-virtual {p2, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_0
    new-instance p2, Lq6/f;

    invoke-direct {p2, p1}, Lq6/f;-><init>(Landroid/content/Context;)V

    const/16 p1, 0x1111

    new-instance p3, Lx8/f;

    invoke-direct {p3}, Lx8/f;-><init>()V

    invoke-virtual {p2, p1, p3}, Lq6/f;->n(ILq6/b;)Lq6/f;

    iput-object p2, p0, Lcom/miui/gamecenter/ui/GameCenterMainView;->s:Lq6/f;

    new-instance v6, Lcom/miui/gamecenter/ui/GameCenterMainView$f;

    invoke-direct {v6, p0}, Lcom/miui/gamecenter/ui/GameCenterMainView$f;-><init>(Lcom/miui/gamecenter/ui/GameCenterMainView;)V

    sget-object v5, Lcom/miui/gamecenter/ui/GameCenterMainView$g;->a:Lcom/miui/gamecenter/ui/GameCenterMainView$g;

    iget-object v1, p0, Lcom/miui/gamecenter/ui/GameCenterMainView;->o:Landroidx/recyclerview/widget/RecyclerView;

    iget-object v2, p0, Lcom/miui/gamecenter/ui/GameCenterMainView;->x:Landroidx/recyclerview/widget/LinearLayoutManager;

    iget-object v3, p0, Lcom/miui/gamecenter/ui/GameCenterMainView;->s:Lq6/f;

    move-object v0, p0

    invoke-direct/range {v0 .. v6}, Lcom/miui/gamecenter/ui/GameCenterMainView;->K(Landroidx/recyclerview/widget/RecyclerView;Landroidx/recyclerview/widget/RecyclerView$n;Lq6/f;Landroid/util/SparseBooleanArray;Lak/p;Lak/a;)V

    invoke-direct {p0}, Lcom/miui/gamecenter/ui/GameCenterMainView;->E()V

    invoke-direct {p0}, Lcom/miui/gamecenter/ui/GameCenterMainView;->D()V

    return-void
.end method

.method public synthetic constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;IILbk/g;)V
    .locals 0

    and-int/lit8 p5, p4, 0x2

    if-eqz p5, :cond_0

    const/4 p2, 0x0

    :cond_0
    and-int/lit8 p4, p4, 0x4

    if-eqz p4, :cond_1

    const/4 p3, 0x0

    :cond_1
    invoke-direct {p0, p1, p2, p3}, Lcom/miui/gamecenter/ui/GameCenterMainView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method private static final B(ILcom/miui/gamecenter/ui/GameCenterMainView;Landroid/view/View;Lb9/f$b;)V
    .locals 1

    const-string v0, "this$0"

    invoke-static {p1, v0}, Lbk/m;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "$model"

    invoke-static {p3, v0}, Lbk/m;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x2

    if-ge p0, v0, :cond_0

    iget-object v0, p1, Lcom/miui/gamecenter/ui/GameCenterMainView;->h:Landroid/widget/LinearLayout;

    if-eqz v0, :cond_1

    goto :goto_0

    :cond_0
    iget-object v0, p1, Lcom/miui/gamecenter/ui/GameCenterMainView;->i:Landroid/widget/LinearLayout;

    if-eqz v0, :cond_1

    :goto_0
    invoke-virtual {v0, p2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    :cond_1
    new-instance v0, Ld9/b;

    invoke-direct {v0, p1, p3, p0}, Ld9/b;-><init>(Lcom/miui/gamecenter/ui/GameCenterMainView;Lb9/f$b;I)V

    invoke-virtual {p2, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method private static final C(Lcom/miui/gamecenter/ui/GameCenterMainView;Lb9/f$b;ILandroid/view/View;)V
    .locals 9

    const-string p3, "this$0"

    invoke-static {p0, p3}, Lbk/m;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p3, "$model"

    invoke-static {p1, p3}, Lbk/m;->e(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object p3, Le9/b;->a:Le9/b;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p0

    const-string v0, "context"

    invoke-static {p0, v0}, Lbk/m;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Lb9/f$b;->f()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3, p0, v0}, Le9/b;->f(Landroid/content/Context;Ljava/lang/String;)V

    invoke-virtual {p1}, Lb9/f$b;->h()Ljava/lang/String;

    move-result-object v2

    add-int/lit8 v3, p2, 0x1

    invoke-virtual {p1}, Lb9/f$b;->e()I

    move-result p0

    invoke-static {p0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1}, Lb9/f$b;->f()Ljava/lang/String;

    move-result-object v6

    const-string v1, "\u8fd0\u8425\u5361\u7247"

    const/4 v5, 0x0

    const/4 v7, 0x1

    const/4 v8, 0x1

    invoke-static/range {v1 .. v8}, Le9/a;->d(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZ)V

    return-void
.end method

.method private final D()V
    .locals 3

    new-instance v0, Lcom/miui/gamecenter/ui/GameCenterMainView$c;

    invoke-direct {v0, p0}, Lcom/miui/gamecenter/ui/GameCenterMainView$c;-><init>(Lcom/miui/gamecenter/ui/GameCenterMainView;)V

    sget-object v1, Lc9/h;->a:Lc9/h;

    iget-object v2, p0, Lcom/miui/gamecenter/ui/GameCenterMainView;->n:Ljava/lang/String;

    invoke-virtual {v1, v2, v0}, Lc9/h;->c(Ljava/lang/String;Lc9/e;)V

    new-instance v0, Lcom/miui/gamecenter/ui/GameCenterMainView$b;

    invoke-direct {v0, p0}, Lcom/miui/gamecenter/ui/GameCenterMainView$b;-><init>(Lcom/miui/gamecenter/ui/GameCenterMainView;)V

    iput-object v0, p0, Lcom/miui/gamecenter/ui/GameCenterMainView;->w:Lc9/e;

    invoke-direct {p0}, Lcom/miui/gamecenter/ui/GameCenterMainView;->G()V

    return-void
.end method

.method private final E()V
    .locals 9

    invoke-static {}, Lc9/d;->n()Lc9/d;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/gamecenter/ui/GameCenterMainView;->n:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lc9/d;->k(Ljava/lang/String;)Lb9/d;

    move-result-object v0

    const-string v1, "getInstance().getCasualGameContent(pkgName)"

    invoke-static {v0, v1}, Lbk/m;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0}, Lb9/d;->c()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v2

    const/16 v3, 0x8

    if-eqz v2, :cond_3

    iget-object v0, p0, Lcom/miui/gamecenter/ui/GameCenterMainView;->t:Landroid/view/ViewGroup;

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    :goto_0
    iget-object v0, p0, Lcom/miui/gamecenter/ui/GameCenterMainView;->u:Landroid/view/ViewGroup;

    if-nez v0, :cond_1

    goto :goto_1

    :cond_1
    invoke-virtual {p0}, Landroid/view/View;->getVisibility()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    :goto_1
    iget-object v0, p0, Lcom/miui/gamecenter/ui/GameCenterMainView;->p:Landroidx/recyclerview/widget/RecyclerView;

    if-nez v0, :cond_2

    goto/16 :goto_6

    :cond_2
    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_6

    :cond_3
    invoke-virtual {v0}, Lb9/d;->b()I

    move-result v0

    iget-object v2, p0, Lcom/miui/gamecenter/ui/GameCenterMainView;->t:Landroid/view/ViewGroup;

    if-nez v2, :cond_4

    goto :goto_2

    :cond_4
    invoke-virtual {v2, v3}, Landroid/view/View;->setVisibility(I)V

    :goto_2
    iget-object v2, p0, Lcom/miui/gamecenter/ui/GameCenterMainView;->u:Landroid/view/ViewGroup;

    if-nez v2, :cond_5

    goto :goto_3

    :cond_5
    invoke-virtual {v2, v3}, Landroid/view/View;->setVisibility(I)V

    :goto_3
    iget-object v2, p0, Lcom/miui/gamecenter/ui/GameCenterMainView;->p:Landroidx/recyclerview/widget/RecyclerView;

    if-nez v2, :cond_6

    goto :goto_4

    :cond_6
    invoke-virtual {p0}, Landroid/view/View;->getVisibility()I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/view/View;->setVisibility(I)V

    :goto_4
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/miui/gamecenter/ui/GameCenterMainView;->F:Z

    new-instance v2, Lx8/a;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v3

    const-string v4, "context"

    invoke-static {v3, v4}, Lbk/m;->d(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v4, Lcom/miui/gamecenter/ui/GameCenterMainView$d;

    invoke-direct {v4, v0}, Lcom/miui/gamecenter/ui/GameCenterMainView$d;-><init>(I)V

    invoke-direct {v2, v3, v4}, Lx8/a;-><init>(Landroid/content/Context;Lak/l;)V

    iput-object v2, p0, Lcom/miui/gamecenter/ui/GameCenterMainView;->v:Lq6/f;

    new-instance v0, Lz8/f;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v0, v2}, Lz8/f;-><init>(Landroid/content/Context;)V

    new-instance v2, Lz8/c;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v2, v3}, Lz8/c;-><init>(Landroid/content/Context;)V

    new-instance v3, Ly8/g;

    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f071dbc

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v4

    invoke-direct {v3, v4, v1}, Ly8/g;-><init>(ILjava/util/List;)V

    iget-object v4, p0, Lcom/miui/gamecenter/ui/GameCenterMainView;->p:Landroidx/recyclerview/widget/RecyclerView;

    if-eqz v4, :cond_7

    invoke-virtual {v4, v3}, Landroidx/recyclerview/widget/RecyclerView;->addItemDecoration(Landroidx/recyclerview/widget/RecyclerView$m;)V

    :cond_7
    iget-object v3, p0, Lcom/miui/gamecenter/ui/GameCenterMainView;->v:Lq6/f;

    if-eqz v3, :cond_8

    invoke-virtual {v3, v0}, Lq6/f;->o(Lq6/b;)Lq6/f;

    :cond_8
    iget-object v0, p0, Lcom/miui/gamecenter/ui/GameCenterMainView;->v:Lq6/f;

    if-eqz v0, :cond_9

    invoke-virtual {v0, v2}, Lq6/f;->o(Lq6/b;)Lq6/f;

    :cond_9
    iget-object v0, p0, Lcom/miui/gamecenter/ui/GameCenterMainView;->v:Lq6/f;

    if-nez v0, :cond_a

    goto :goto_5

    :cond_a
    invoke-virtual {v0, v1}, Lq6/f;->F(Ljava/util/List;)V

    :goto_5
    sget-object v7, Lcom/miui/gamecenter/ui/GameCenterMainView$e;->a:Lcom/miui/gamecenter/ui/GameCenterMainView$e;

    iget-object v3, p0, Lcom/miui/gamecenter/ui/GameCenterMainView;->p:Landroidx/recyclerview/widget/RecyclerView;

    iget-object v4, p0, Lcom/miui/gamecenter/ui/GameCenterMainView;->y:Landroidx/recyclerview/widget/StaggeredGridLayoutManager;

    iget-object v5, p0, Lcom/miui/gamecenter/ui/GameCenterMainView;->v:Lq6/f;

    iget-object v6, p0, Lcom/miui/gamecenter/ui/GameCenterMainView;->E:Landroid/util/SparseBooleanArray;

    const/4 v8, 0x0

    move-object v2, p0

    invoke-direct/range {v2 .. v8}, Lcom/miui/gamecenter/ui/GameCenterMainView;->K(Landroidx/recyclerview/widget/RecyclerView;Landroidx/recyclerview/widget/RecyclerView$n;Lq6/f;Landroid/util/SparseBooleanArray;Lak/p;Lak/a;)V

    :goto_6
    return-void
.end method

.method private final F(Landroid/view/View;)Z
    .locals 3

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    invoke-virtual {p1, v0}, Landroid/view/View;->getGlobalVisibleRect(Landroid/graphics/Rect;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v1

    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v2

    if-lt v1, v2, :cond_0

    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v0

    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result p1

    div-int/lit8 p1, p1, 0x2

    if-lt v0, p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method private final G()V
    .locals 4

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/miui/gamecenter/ui/GameCenterMainView;->z:Z

    iget-object v0, p0, Lcom/miui/gamecenter/ui/GameCenterMainView;->w:Lc9/e;

    if-eqz v0, :cond_0

    sget-object v1, Lc9/h;->a:Lc9/h;

    iget-object v2, p0, Lcom/miui/gamecenter/ui/GameCenterMainView;->n:Ljava/lang/String;

    iget v3, p0, Lcom/miui/gamecenter/ui/GameCenterMainView;->C:I

    invoke-virtual {v1, v2, v0, v3}, Lc9/h;->e(Ljava/lang/String;Lc9/e;I)V

    :cond_0
    return-void
.end method

.method private final J()V
    .locals 4

    iget-object v0, p0, Lcom/miui/gamecenter/ui/GameCenterMainView;->b:Ljava/time/LocalDateTime;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/miui/gamecenter/ui/GameCenterMainView;->u:Landroid/view/ViewGroup;

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_1

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    move v0, v2

    :goto_0
    if-eqz v0, :cond_1

    goto :goto_1

    :cond_1
    move v1, v2

    :goto_1
    iget-object v0, p0, Lcom/miui/gamecenter/ui/GameCenterMainView;->a:Lb9/f;

    iget-object v2, p0, Lcom/miui/gamecenter/ui/GameCenterMainView;->b:Ljava/time/LocalDateTime;

    iget-boolean v3, p0, Lcom/miui/gamecenter/ui/GameCenterMainView;->F:Z

    invoke-static {v0, v2, v1, v3}, Le9/a;->g(Lb9/f;Ljava/time/LocalDateTime;ZZ)V

    :cond_2
    return-void
.end method

.method private final K(Landroidx/recyclerview/widget/RecyclerView;Landroidx/recyclerview/widget/RecyclerView$n;Lq6/f;Landroid/util/SparseBooleanArray;Lak/p;Lak/a;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/recyclerview/widget/RecyclerView;",
            "Landroidx/recyclerview/widget/RecyclerView$n;",
            "Lq6/f<",
            "*>;",
            "Landroid/util/SparseBooleanArray;",
            "Lak/p<",
            "-",
            "Ljava/lang/Integer;",
            "Ljava/lang/Object;",
            "Loj/t;",
            ">;",
            "Lak/a<",
            "Loj/t;",
            ">;)V"
        }
    .end annotation

    if-eqz p1, :cond_0

    invoke-virtual {p1, p2}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$n;)V

    invoke-virtual {p1, p3}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$h;)V

    new-instance v7, Lcom/miui/gamecenter/ui/GameCenterMainView$h;

    move-object v0, v7

    move-object v1, p2

    move-object v2, p6

    move-object v3, p0

    move-object v4, p4

    move-object v5, p3

    move-object v6, p5

    invoke-direct/range {v0 .. v6}, Lcom/miui/gamecenter/ui/GameCenterMainView$h;-><init>(Landroidx/recyclerview/widget/RecyclerView$n;Lak/a;Lcom/miui/gamecenter/ui/GameCenterMainView;Landroid/util/SparseBooleanArray;Lq6/f;Lak/p;)V

    invoke-virtual {p1, v7}, Landroidx/recyclerview/widget/RecyclerView;->addOnScrollListener(Landroidx/recyclerview/widget/RecyclerView$s;)V

    :cond_0
    return-void
.end method

.method public static synthetic a(Lcom/miui/gamecenter/ui/GameCenterMainView;Lb9/f$b;ILandroid/view/View;)V
    .locals 0

    invoke-static {p0, p1, p2, p3}, Lcom/miui/gamecenter/ui/GameCenterMainView;->C(Lcom/miui/gamecenter/ui/GameCenterMainView;Lb9/f$b;ILandroid/view/View;)V

    return-void
.end method

.method public static synthetic b(ILcom/miui/gamecenter/ui/GameCenterMainView;Landroid/view/View;Lb9/f$b;)V
    .locals 0

    invoke-static {p0, p1, p2, p3}, Lcom/miui/gamecenter/ui/GameCenterMainView;->B(ILcom/miui/gamecenter/ui/GameCenterMainView;Landroid/view/View;Lb9/f$b;)V

    return-void
.end method

.method public static final synthetic c(Lcom/miui/gamecenter/ui/GameCenterMainView;)Ld9/e;
    .locals 0

    iget-object p0, p0, Lcom/miui/gamecenter/ui/GameCenterMainView;->m:Ld9/e;

    return-object p0
.end method

.method public static final synthetic d(Lcom/miui/gamecenter/ui/GameCenterMainView;)Ld9/f;
    .locals 0

    iget-object p0, p0, Lcom/miui/gamecenter/ui/GameCenterMainView;->k:Ld9/f;

    return-object p0
.end method

.method public static final synthetic e(Lcom/miui/gamecenter/ui/GameCenterMainView;)Ld9/h;
    .locals 0

    iget-object p0, p0, Lcom/miui/gamecenter/ui/GameCenterMainView;->j:Ld9/h;

    return-object p0
.end method

.method public static final synthetic f(Lcom/miui/gamecenter/ui/GameCenterMainView;)Ld9/j;
    .locals 0

    iget-object p0, p0, Lcom/miui/gamecenter/ui/GameCenterMainView;->l:Ld9/j;

    return-object p0
.end method

.method public static final synthetic g(Lcom/miui/gamecenter/ui/GameCenterMainView;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/miui/gamecenter/ui/GameCenterMainView;->A:Z

    return p0
.end method

.method public static final synthetic h(Lcom/miui/gamecenter/ui/GameCenterMainView;)Lrh/c;
    .locals 0

    iget-object p0, p0, Lcom/miui/gamecenter/ui/GameCenterMainView;->G:Lrh/c;

    return-object p0
.end method

.method public static final synthetic i(Lcom/miui/gamecenter/ui/GameCenterMainView;)I
    .locals 0

    iget p0, p0, Lcom/miui/gamecenter/ui/GameCenterMainView;->C:I

    return p0
.end method

.method public static final synthetic j(Lcom/miui/gamecenter/ui/GameCenterMainView;)Lq6/f;
    .locals 0

    iget-object p0, p0, Lcom/miui/gamecenter/ui/GameCenterMainView;->s:Lq6/f;

    return-object p0
.end method

.method public static final synthetic k(Lcom/miui/gamecenter/ui/GameCenterMainView;)Landroid/view/ViewGroup;
    .locals 0

    iget-object p0, p0, Lcom/miui/gamecenter/ui/GameCenterMainView;->u:Landroid/view/ViewGroup;

    return-object p0
.end method

.method public static final synthetic l(Lcom/miui/gamecenter/ui/GameCenterMainView;)Landroid/widget/ImageView;
    .locals 0

    iget-object p0, p0, Lcom/miui/gamecenter/ui/GameCenterMainView;->q:Landroid/widget/ImageView;

    return-object p0
.end method

.method public static final synthetic m(Lcom/miui/gamecenter/ui/GameCenterMainView;)Landroid/widget/TextView;
    .locals 0

    iget-object p0, p0, Lcom/miui/gamecenter/ui/GameCenterMainView;->e:Landroid/widget/TextView;

    return-object p0
.end method

.method public static final synthetic n(Lcom/miui/gamecenter/ui/GameCenterMainView;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/miui/gamecenter/ui/GameCenterMainView;->z:Z

    return p0
.end method

.method public static final synthetic o(Lcom/miui/gamecenter/ui/GameCenterMainView;Landroid/view/View;)Z
    .locals 0

    invoke-direct {p0, p1}, Lcom/miui/gamecenter/ui/GameCenterMainView;->F(Landroid/view/View;)Z

    move-result p0

    return p0
.end method

.method public static final synthetic p(Lcom/miui/gamecenter/ui/GameCenterMainView;)V
    .locals 0

    invoke-direct {p0}, Lcom/miui/gamecenter/ui/GameCenterMainView;->G()V

    return-void
.end method

.method public static final synthetic q(Lcom/miui/gamecenter/ui/GameCenterMainView;Ld9/e;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/gamecenter/ui/GameCenterMainView;->m:Ld9/e;

    return-void
.end method

.method public static final synthetic r(Lcom/miui/gamecenter/ui/GameCenterMainView;Ld9/f;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/gamecenter/ui/GameCenterMainView;->k:Ld9/f;

    return-void
.end method

.method public static final synthetic s(Lcom/miui/gamecenter/ui/GameCenterMainView;Ld9/h;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/gamecenter/ui/GameCenterMainView;->j:Ld9/h;

    return-void
.end method

.method private final setViewVisibility(Z)V
    .locals 4

    const/16 v0, 0x8

    const/4 v1, 0x0

    if-eqz p1, :cond_0

    move v2, v0

    goto :goto_0

    :cond_0
    move v2, v1

    :goto_0
    iget-object v3, p0, Lcom/miui/gamecenter/ui/GameCenterMainView;->d:Landroid/widget/ImageView;

    if-nez v3, :cond_1

    goto :goto_1

    :cond_1
    invoke-virtual {v3, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    :goto_1
    iget-object v3, p0, Lcom/miui/gamecenter/ui/GameCenterMainView;->e:Landroid/widget/TextView;

    if-nez v3, :cond_2

    goto :goto_2

    :cond_2
    invoke-virtual {v3, v2}, Landroid/view/View;->setVisibility(I)V

    :goto_2
    iget-object v3, p0, Lcom/miui/gamecenter/ui/GameCenterMainView;->g:Landroid/view/ViewGroup;

    if-nez v3, :cond_3

    goto :goto_3

    :cond_3
    invoke-virtual {v3, v2}, Landroid/view/View;->setVisibility(I)V

    :goto_3
    iget-object v2, p0, Lcom/miui/gamecenter/ui/GameCenterMainView;->f:Landroid/view/ViewGroup;

    if-nez v2, :cond_4

    goto :goto_4

    :cond_4
    if-eqz p1, :cond_5

    move v0, v1

    :cond_5
    invoke-virtual {v2, v0}, Landroid/view/View;->setVisibility(I)V

    :goto_4
    return-void
.end method

.method public static final synthetic t(Lcom/miui/gamecenter/ui/GameCenterMainView;Ld9/j;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/gamecenter/ui/GameCenterMainView;->l:Ld9/j;

    return-void
.end method

.method public static final synthetic u(Lcom/miui/gamecenter/ui/GameCenterMainView;Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/miui/gamecenter/ui/GameCenterMainView;->A:Z

    return-void
.end method

.method public static final synthetic v(Lcom/miui/gamecenter/ui/GameCenterMainView;Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/miui/gamecenter/ui/GameCenterMainView;->z:Z

    return-void
.end method

.method public static final synthetic w(Lcom/miui/gamecenter/ui/GameCenterMainView;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/gamecenter/ui/GameCenterMainView;->B:Ljava/lang/String;

    return-void
.end method

.method public static final synthetic x(Lcom/miui/gamecenter/ui/GameCenterMainView;I)V
    .locals 0

    iput p1, p0, Lcom/miui/gamecenter/ui/GameCenterMainView;->C:I

    return-void
.end method

.method public static final synthetic y(Lcom/miui/gamecenter/ui/GameCenterMainView;Lb9/f;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/gamecenter/ui/GameCenterMainView;->a:Lb9/f;

    return-void
.end method

.method public static final synthetic z(Lcom/miui/gamecenter/ui/GameCenterMainView;Z)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/miui/gamecenter/ui/GameCenterMainView;->setViewVisibility(Z)V

    return-void
.end method


# virtual methods
.method public final A(ILandroid/view/View;Lb9/f$b;)V
    .locals 1
    .param p2    # Landroid/view/View;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p3    # Lb9/f$b;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "model"

    invoke-static {p3, v0}, Lbk/m;->e(Ljava/lang/Object;Ljava/lang/String;)V

    if-eqz p2, :cond_0

    new-instance v0, Ld9/a;

    invoke-direct {v0, p1, p0, p2, p3}, Ld9/a;-><init>(ILcom/miui/gamecenter/ui/GameCenterMainView;Landroid/view/View;Lb9/f$b;)V

    invoke-virtual {p0, v0}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    :cond_0
    return-void
.end method

.method public final H()V
    .locals 0

    invoke-direct {p0}, Lcom/miui/gamecenter/ui/GameCenterMainView;->J()V

    return-void
.end method

.method public final I()V
    .locals 2

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1a

    if-lt v0, v1, :cond_0

    invoke-static {}, Ljava/time/LocalDateTime;->now()Ljava/time/LocalDateTime;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/gamecenter/ui/GameCenterMainView;->b:Ljava/time/LocalDateTime;

    :cond_0
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 3
    .param p1    # Landroid/view/View;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    iget-object v0, p0, Lcom/miui/gamecenter/ui/GameCenterMainView;->r:Landroid/widget/TextView;

    invoke-static {p1, v0}, Lbk/m;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/miui/gamecenter/ui/GameCenterMainView;->B:Ljava/lang/String;

    if-eqz p1, :cond_0

    sget-object v0, Le9/b;->a:Le9/b;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "context"

    invoke-static {v1, v2}, Lbk/m;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0, v1, p1}, Le9/b;->f(Landroid/content/Context;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/miui/gamecenter/ui/GameCenterMainView;->B:Ljava/lang/String;

    const/4 v0, 0x1

    const-string v1, "\u6587\u7ae0\u63a8\u8350_\u66f4\u591a"

    invoke-static {v1, v1, p1, v0}, Le9/a;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    :cond_0
    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 1

    invoke-direct {p0}, Lcom/miui/gamecenter/ui/GameCenterMainView;->J()V

    iget-object v0, p0, Lcom/miui/gamecenter/ui/GameCenterMainView;->D:Landroid/util/SparseBooleanArray;

    invoke-virtual {v0}, Landroid/util/SparseBooleanArray;->clear()V

    invoke-super {p0}, Landroid/widget/LinearLayout;->onDetachedFromWindow()V

    return-void
.end method
