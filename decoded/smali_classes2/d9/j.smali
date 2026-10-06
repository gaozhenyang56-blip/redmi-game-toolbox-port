.class public final Ld9/j;
.super Landroid/widget/LinearLayout;
.source "SourceFile"


# instance fields
.field private a:Landroid/widget/TextView;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private b:Landroid/widget/TextView;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private c:Landroid/widget/ImageView;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private d:Landroid/widget/LinearLayout;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private final e:Lrh/c;


# direct methods
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

    invoke-direct {p0, p1, p2, p3}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    new-instance p2, Lrh/c$b;

    invoke-direct {p2}, Lrh/c$b;-><init>()V

    sget-object p3, Landroid/graphics/Bitmap$Config;->RGB_565:Landroid/graphics/Bitmap$Config;

    invoke-virtual {p2, p3}, Lrh/c$b;->v(Landroid/graphics/Bitmap$Config;)Lrh/c$b;

    move-result-object p2

    sget-object p3, Lsh/d;->d:Lsh/d;

    invoke-virtual {p2, p3}, Lrh/c$b;->C(Lsh/d;)Lrh/c$b;

    move-result-object p2

    const/4 p3, 0x1

    invoke-virtual {p2, p3}, Lrh/c$b;->x(Z)Lrh/c$b;

    move-result-object p2

    invoke-virtual {p2, p3}, Lrh/c$b;->y(Z)Lrh/c$b;

    move-result-object p2

    invoke-virtual {p2, p3}, Lrh/c$b;->A(Z)Lrh/c$b;

    move-result-object p2

    invoke-virtual {p2}, Lrh/c$b;->w()Lrh/c;

    move-result-object p2

    iput-object p2, p0, Ld9/j;->e:Lrh/c;

    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p1

    const p2, 0x7f0e0197

    invoke-virtual {p1, p2, p0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    const p1, 0x7f0b09c2

    invoke-virtual {p0, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/LinearLayout;

    iput-object p1, p0, Ld9/j;->d:Landroid/widget/LinearLayout;

    const p1, 0x7f0b0c55

    invoke-virtual {p0, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Ld9/j;->a:Landroid/widget/TextView;

    const p1, 0x7f0b0cf3

    invoke-virtual {p0, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Ld9/j;->b:Landroid/widget/TextView;

    const p1, 0x7f0b061b

    invoke-virtual {p0, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    iput-object p1, p0, Ld9/j;->c:Landroid/widget/ImageView;

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
    invoke-direct {p0, p1, p2, p3}, Ld9/j;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public static synthetic a(Ljava/lang/String;Ld9/j;)V
    .locals 0

    invoke-static {p0, p1}, Ld9/j;->c(Ljava/lang/String;Ld9/j;)V

    return-void
.end method

.method private static final c(Ljava/lang/String;Ld9/j;)V
    .locals 1

    const-string v0, "$it"

    invoke-static {p0, v0}, Lbk/m;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "this$0"

    invoke-static {p1, v0}, Lbk/m;->e(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p1, Ld9/j;->c:Landroid/widget/ImageView;

    iget-object p1, p1, Ld9/j;->e:Lrh/c;

    invoke-static {p0, v0, p1}, Lx4/o0;->h(Ljava/lang/String;Landroid/widget/ImageView;Lrh/c;)V

    return-void
.end method


# virtual methods
.method public final b(Lb9/f$b;I)V
    .locals 2
    .param p1    # Lb9/f$b;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "model"

    invoke-static {p1, v0}, Lbk/m;->e(Ljava/lang/Object;Ljava/lang/String;)V

    rem-int/lit8 p2, p2, 0x2

    if-eqz p2, :cond_3

    iget-object p2, p0, Ld9/j;->d:Landroid/widget/LinearLayout;

    const/4 v0, 0x0

    if-eqz p2, :cond_0

    invoke-virtual {p2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p2

    goto :goto_0

    :cond_0
    move-object p2, v0

    :goto_0
    instance-of v1, p2, Landroid/view/ViewGroup$MarginLayoutParams;

    if-eqz v1, :cond_1

    move-object v0, p2

    check-cast v0, Landroid/view/ViewGroup$MarginLayoutParams;

    :cond_1
    if-nez v0, :cond_2

    goto :goto_1

    :cond_2
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    const v1, 0x7f070b63

    invoke-virtual {p2, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p2

    iput p2, v0, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    :cond_3
    :goto_1
    iget-object p2, p0, Ld9/j;->a:Landroid/widget/TextView;

    if-nez p2, :cond_4

    goto :goto_2

    :cond_4
    invoke-virtual {p1}, Lb9/f$b;->j()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :goto_2
    iget-object p2, p0, Ld9/j;->b:Landroid/widget/TextView;

    if-nez p2, :cond_5

    goto :goto_3

    :cond_5
    invoke-virtual {p1}, Lb9/f$b;->h()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :goto_3
    invoke-virtual {p1}, Lb9/f$b;->d()Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_6

    new-instance p2, Ld9/i;

    invoke-direct {p2, p1, p0}, Ld9/i;-><init>(Ljava/lang/String;Ld9/j;)V

    invoke-virtual {p0, p2}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    :cond_6
    return-void
.end method
