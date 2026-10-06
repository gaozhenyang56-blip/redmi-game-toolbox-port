.class public final Ly8/f;
.super Landroid/widget/FrameLayout;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ly8/f$a;
    }
.end annotation


# static fields
.field public static final b:Ly8/f$a;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# instance fields
.field private a:Ljf/i;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Ly8/f$a;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ly8/f$a;-><init>(Lbk/g;)V

    sput-object v0, Ly8/f;->b:Ly8/f$a;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 7
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

    const/4 v5, 0x6

    const/4 v6, 0x0

    move-object v1, p0

    move-object v2, p1

    invoke-direct/range {v1 .. v6}, Ly8/f;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;IILbk/g;)V

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

    move-result-object p1

    const/4 p2, 0x1

    invoke-static {p1, p0, p2}, Ljf/i;->b(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Ljf/i;

    move-result-object p1

    const-string p2, "inflate(LayoutInflater.from(context), this, true)"

    invoke-static {p1, p2}, Lbk/m;->d(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Ly8/f;->a:Ljf/i;

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
    invoke-direct {p0, p1, p2, p3}, Ly8/f;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public static synthetic a(Ly8/f;Lb9/b;Landroid/view/View;)V
    .locals 0

    invoke-static {p0, p1, p2}, Ly8/f;->c(Ly8/f;Lb9/b;Landroid/view/View;)V

    return-void
.end method

.method private static final c(Ly8/f;Lb9/b;Landroid/view/View;)V
    .locals 0

    const-string p2, "this$0"

    invoke-static {p0, p2}, Lbk/m;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p2, "$model"

    invoke-static {p1, p2}, Lbk/m;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-virtual {p1}, Lb9/c;->k()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/miui/gamebooster/common/MarketDownloadV2Activity;->f0(Landroid/content/Context;Ljava/lang/String;)V

    return-void
.end method

.method private final d(Lb9/b;)Ljava/util/Map;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lb9/b;",
            ")",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Landroid/text/style/ClickableSpan;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    invoke-virtual {p1}, Lb9/c;->l()Ljava/lang/String;

    move-result-object v1

    const-string v2, ""

    if-nez v1, :cond_0

    move-object v1, v2

    :cond_0
    invoke-virtual {p1}, Lb9/c;->j()Ljava/lang/String;

    move-result-object v3

    if-nez v3, :cond_1

    move-object v3, v2

    :cond_1
    invoke-direct {p0, v3}, Ly8/f;->e(Ljava/lang/String;)Ly8/f$c;

    move-result-object v3

    invoke-interface {v0, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p1}, Lb9/c;->o()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_2

    move-object v1, v2

    :cond_2
    invoke-virtual {p1}, Lb9/c;->p()Ljava/lang/String;

    move-result-object v3

    if-nez v3, :cond_3

    move-object v3, v2

    :cond_3
    invoke-direct {p0, v3}, Ly8/f;->e(Ljava/lang/String;)Ly8/f$c;

    move-result-object v3

    invoke-interface {v0, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p1}, Lb9/c;->m()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_4

    move-object v1, v2

    :cond_4
    invoke-virtual {p1}, Lb9/c;->n()Ljava/lang/String;

    move-result-object p1

    if-nez p1, :cond_5

    goto :goto_0

    :cond_5
    move-object v2, p1

    :goto_0
    invoke-direct {p0, v2}, Ly8/f;->e(Ljava/lang/String;)Ly8/f$c;

    move-result-object p1

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object v0
.end method

.method private final e(Ljava/lang/String;)Ly8/f$c;
    .locals 1

    new-instance v0, Ly8/f$c;

    invoke-direct {v0, p1, p0}, Ly8/f$c;-><init>(Ljava/lang/String;Ly8/f;)V

    return-object v0
.end method


# virtual methods
.method public final b(Lrh/c;Lb9/b;)V
    .locals 5
    .param p1    # Lrh/c;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lb9/b;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "imageOption"

    invoke-static {p1, v0}, Lbk/m;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "model"

    invoke-static {p2, v0}, Lbk/m;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p2}, Lb9/b;->A()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    iget-object v0, p0, Ly8/f;->a:Ljf/i;

    iget-object v0, v0, Ljf/i;->c:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v0, p0, Ly8/f;->a:Ljf/i;

    iget-object v0, v0, Ljf/i;->h:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Ly8/f;->a:Ljf/i;

    iget-object v0, v0, Ljf/i;->f:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Ly8/f;->a:Ljf/i;

    iget-object v0, v0, Ljf/i;->g:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Ly8/f;->a:Ljf/i;

    iget-object v0, v0, Ljf/i;->g:Landroid/widget/TextView;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    const-string v3, "context"

    invoke-static {v2, v3}, Lbk/m;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, p2}, Ly8/f;->d(Lb9/b;)Ljava/util/Map;

    move-result-object v4

    invoke-virtual {p2, v2, v4}, Lb9/b;->C(Landroid/content/Context;Ljava/util/Map;)Landroid/text/SpannableString;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Ly8/f;->a:Ljf/i;

    iget-object v0, v0, Ljf/i;->g:Landroid/widget/TextView;

    invoke-static {}, Lmiuix/androidbasewidget/widget/c;->getInstance()Landroid/text/method/MovementMethod;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setMovementMethod(Landroid/text/method/MovementMethod;)V

    iget-object v0, p0, Ly8/f;->a:Ljf/i;

    iget-object v0, v0, Ljf/i;->h:Landroid/widget/TextView;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2, v3}, Lbk/m;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p2, v2}, Lb9/c;->e(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {p2}, Lb9/c;->c()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v2, 0x5

    if-le v0, v2, :cond_0

    iget-object v0, p0, Ly8/f;->a:Ljf/i;

    iget-object v0, v0, Ljf/i;->f:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    const-string v2, "null cannot be cast to non-null type androidx.constraintlayout.widget.ConstraintLayout.LayoutParams"

    invoke-static {v0, v2}, Lbk/m;->c(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Landroidx/constraintlayout/widget/ConstraintLayout$b;

    const/4 v2, -0x1

    iput v2, v0, Landroidx/constraintlayout/widget/ConstraintLayout$b;->t:I

    iput v1, v0, Landroidx/constraintlayout/widget/ConstraintLayout$b;->v:I

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    const/high16 v2, 0x40c00000    # 6.0f

    invoke-static {v1, v2}, La8/k2;->a(Landroid/content/Context;F)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup$MarginLayoutParams;->setMarginEnd(I)V

    iget-object v1, p0, Ly8/f;->a:Ljf/i;

    iget-object v1, v1, Ljf/i;->f:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :cond_0
    iget-object v0, p0, Ly8/f;->a:Ljf/i;

    iget-object v0, v0, Ljf/i;->f:Landroid/widget/TextView;

    invoke-virtual {p2}, Lb9/c;->c()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {p2}, Lb9/c;->s()Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Ly8/f;->a:Ljf/i;

    iget-object v0, v0, Ljf/i;->h:Landroid/widget/TextView;

    new-instance v1, Ly8/e;

    invoke-direct {v1, p0, p2}, Ly8/e;-><init>(Ly8/f;Lb9/b;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_0

    :cond_1
    invoke-virtual {p2}, Lb9/b;->A()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_2

    iget-object v0, p0, Ly8/f;->a:Ljf/i;

    iget-object v0, v0, Ljf/i;->c:Landroid/widget/ImageView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v0, p0, Ly8/f;->a:Ljf/i;

    iget-object v0, v0, Ljf/i;->h:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Ly8/f;->a:Ljf/i;

    iget-object v0, v0, Ljf/i;->f:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Ly8/f;->a:Ljf/i;

    iget-object v0, v0, Ljf/i;->g:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    :cond_2
    :goto_0
    invoke-virtual {p2}, Lb9/b;->z()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Lxh/a;

    iget-object v2, p0, Ly8/f;->a:Ljf/i;

    iget-object v2, v2, Ljf/i;->d:Landroid/widget/ImageView;

    invoke-direct {v1, v2}, Lxh/a;-><init>(Landroid/widget/ImageView;)V

    new-instance v2, Ly8/f$b;

    invoke-direct {v2, p0}, Ly8/f$b;-><init>(Ly8/f;)V

    invoke-static {v0, v1, p1, v2}, Lx4/o0;->i(Ljava/lang/String;Lxh/b;Lrh/c;Lyh/a;)V

    invoke-virtual {p2}, Lb9/c;->b()Ljava/lang/String;

    move-result-object p2

    iget-object v0, p0, Ly8/f;->a:Ljf/i;

    iget-object v0, v0, Ljf/i;->c:Landroid/widget/ImageView;

    invoke-static {p2, v0, p1}, Lx4/o0;->j(Ljava/lang/String;Landroid/widget/ImageView;Lrh/c;)V

    return-void
.end method

.method public final getBinding()Ljf/i;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object v0, p0, Ly8/f;->a:Ljf/i;

    return-object v0
.end method

.method public final setBinding(Ljf/i;)V
    .locals 1
    .param p1    # Ljf/i;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lbk/m;->e(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Ly8/f;->a:Ljf/i;

    return-void
.end method
