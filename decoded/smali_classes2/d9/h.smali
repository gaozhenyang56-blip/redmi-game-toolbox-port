.class public final Ld9/h;
.super Landroid/widget/FrameLayout;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ld9/h$a;
    }
.end annotation


# static fields
.field public static final f:Ld9/h$a;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# instance fields
.field private a:Landroid/widget/TextView;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private b:Landroidx/recyclerview/widget/RecyclerView;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private c:Landroid/widget/TextView;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private d:Lq6/f;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lq6/f<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private e:Landroid/view/ViewGroup;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Ld9/h$a;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ld9/h$a;-><init>(Lbk/g;)V

    sput-object v0, Ld9/h;->f:Ld9/h$a;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
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

    invoke-direct {p0, p1, p2, p3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p2

    const p3, 0x7f0e0195

    invoke-virtual {p2, p3, p0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    const p2, 0x7f0b0465

    invoke-virtual {p0, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/view/ViewGroup;

    iput-object p2, p0, Ld9/h;->e:Landroid/view/ViewGroup;

    const p2, 0x7f0b0c55

    invoke-virtual {p0, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    iput-object p2, p0, Ld9/h;->a:Landroid/widget/TextView;

    const p2, 0x7f0b0969

    invoke-virtual {p0, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroidx/recyclerview/widget/RecyclerView;

    iput-object p2, p0, Ld9/h;->b:Landroidx/recyclerview/widget/RecyclerView;

    const p2, 0x7f0b0cf3

    invoke-virtual {p0, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    iput-object p2, p0, Ld9/h;->c:Landroid/widget/TextView;

    iget-object p2, p0, Ld9/h;->b:Landroidx/recyclerview/widget/RecyclerView;

    if-nez p2, :cond_0

    goto :goto_0

    :cond_0
    new-instance p3, Landroidx/recyclerview/widget/LinearLayoutManager;

    const/4 v0, 0x0

    invoke-direct {p3, p1, v0, v0}, Landroidx/recyclerview/widget/LinearLayoutManager;-><init>(Landroid/content/Context;IZ)V

    invoke-virtual {p2, p3}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$n;)V

    :goto_0
    new-instance p2, Lq6/f;

    invoke-direct {p2, p1}, Lq6/f;-><init>(Landroid/content/Context;)V

    iput-object p2, p0, Ld9/h;->d:Lq6/f;

    iget-object p1, p0, Ld9/h;->b:Landroidx/recyclerview/widget/RecyclerView;

    if-nez p1, :cond_1

    goto :goto_1

    :cond_1
    invoke-virtual {p1, p2}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$h;)V

    :goto_1
    new-instance p1, Lx8/d;

    invoke-direct {p1}, Lx8/d;-><init>()V

    iget-object p2, p0, Ld9/h;->d:Lq6/f;

    if-eqz p2, :cond_2

    const/16 p3, 0x112

    invoke-virtual {p2, p3, p1}, Lq6/f;->n(ILq6/b;)Lq6/f;

    :cond_2
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
    invoke-direct {p0, p1, p2, p3}, Ld9/h;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public static synthetic a(Ld9/h;Ljava/util/List;)V
    .locals 0

    invoke-static {p0, p1}, Ld9/h;->c(Ld9/h;Ljava/util/List;)V

    return-void
.end method

.method private static final c(Ld9/h;Ljava/util/List;)V
    .locals 1

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lbk/m;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "$it1"

    invoke-static {p1, v0}, Lbk/m;->e(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Ld9/h;->d:Lq6/f;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lq6/f;->p(Ljava/util/List;)V

    :cond_0
    iget-object p0, p0, Ld9/h;->d:Lq6/f;

    if-eqz p0, :cond_1

    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$h;->notifyDataSetChanged()V

    :cond_1
    return-void
.end method


# virtual methods
.method public final b(Lb9/f$b;I)V
    .locals 3
    .param p1    # Lb9/f$b;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "model"

    invoke-static {p1, v0}, Lbk/m;->e(Ljava/lang/Object;Ljava/lang/String;)V

    rem-int/lit8 p2, p2, 0x2

    const/4 v0, 0x0

    if-eqz p2, :cond_3

    iget-object p2, p0, Ld9/h;->e:Landroid/view/ViewGroup;

    if-eqz p2, :cond_0

    invoke-virtual {p2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p2

    goto :goto_0

    :cond_0
    move-object p2, v0

    :goto_0
    instance-of v1, p2, Landroid/view/ViewGroup$MarginLayoutParams;

    if-eqz v1, :cond_1

    check-cast p2, Landroid/view/ViewGroup$MarginLayoutParams;

    goto :goto_1

    :cond_1
    move-object p2, v0

    :goto_1
    if-nez p2, :cond_2

    goto :goto_2

    :cond_2
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f070b63

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p2, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    :cond_3
    :goto_2
    iget-object p2, p0, Ld9/h;->a:Landroid/widget/TextView;

    if-nez p2, :cond_4

    goto :goto_3

    :cond_4
    invoke-virtual {p1}, Lb9/f$b;->g()Lb9/f$b$c;

    move-result-object v1

    if-eqz v1, :cond_5

    invoke-virtual {v1}, Lb9/f$b$c;->c()Ljava/lang/String;

    move-result-object v0

    :cond_5
    invoke-virtual {p2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :goto_3
    iget-object p2, p0, Ld9/h;->c:Landroid/widget/TextView;

    if-nez p2, :cond_6

    goto :goto_4

    :cond_6
    invoke-virtual {p1}, Lb9/f$b;->h()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :goto_4
    invoke-virtual {p1}, Lb9/f$b;->g()Lb9/f$b$c;

    move-result-object p1

    if-eqz p1, :cond_7

    invoke-virtual {p1}, Lb9/f$b$c;->b()Ljava/util/List;

    move-result-object p1

    if-eqz p1, :cond_7

    new-instance p2, Ld9/g;

    invoke-direct {p2, p0, p1}, Ld9/g;-><init>(Ld9/h;Ljava/util/List;)V

    invoke-virtual {p0, p2}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    :cond_7
    return-void
.end method
