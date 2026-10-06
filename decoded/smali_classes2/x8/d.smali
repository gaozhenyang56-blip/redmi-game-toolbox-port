.class public final Lx8/d;
.super Lx8/c;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lx8/c<",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Lx8/c;-><init>()V

    invoke-static {}, Lcom/miui/securitycenter/Application;->z()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f07083d

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v0

    int-to-float v0, v0

    invoke-virtual {p0, v0}, Lx8/c;->i(F)V

    return-void
.end method


# virtual methods
.method public a()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public b()I
    .locals 1

    const v0, 0x7f0e0196

    return v0
.end method

.method public bridge synthetic c(Lq6/i;Ljava/lang/Object;I)V
    .locals 0

    check-cast p2, Ljava/lang/String;

    invoke-virtual {p0, p1, p2, p3}, Lx8/d;->j(Lq6/i;Ljava/lang/String;I)V

    return-void
.end method

.method public bridge synthetic d(Ljava/lang/Object;I)Z
    .locals 0

    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1, p2}, Lx8/d;->k(Ljava/lang/String;I)Z

    move-result p1

    return p1
.end method

.method public j(Lq6/i;Ljava/lang/String;I)V
    .locals 2
    .param p1    # Lq6/i;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    const-string v0, "holder"

    invoke-static {p1, v0}, Lbk/m;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const v0, 0x7f0b05bc

    invoke-virtual {p1, v0}, Lq6/i;->e(I)Landroid/view/View;

    move-result-object p1

    instance-of v0, p1, Landroid/widget/ImageView;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    check-cast p1, Landroid/widget/ImageView;

    goto :goto_0

    :cond_0
    move-object p1, v1

    :goto_0
    if-eqz p1, :cond_4

    if-eqz p3, :cond_3

    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p3

    instance-of v0, p3, Landroid/view/ViewGroup$MarginLayoutParams;

    if-eqz v0, :cond_1

    move-object v1, p3

    check-cast v1, Landroid/view/ViewGroup$MarginLayoutParams;

    :cond_1
    if-nez v1, :cond_2

    goto :goto_1

    :cond_2
    invoke-static {}, Lcom/miui/securitycenter/Application;->z()Landroid/content/res/Resources;

    move-result-object p3

    const v0, 0x7f070979

    invoke-virtual {p3, v0}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result p3

    iput p3, v1, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    :cond_3
    :goto_1
    invoke-virtual {p0}, Lx8/c;->g()Lrh/c;

    move-result-object p3

    invoke-static {p2, p1, p3}, Lx4/o0;->h(Ljava/lang/String;Landroid/widget/ImageView;Lrh/c;)V

    :cond_4
    return-void
.end method

.method public k(Ljava/lang/String;I)Z
    .locals 0
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    xor-int/lit8 p1, p1, 0x1

    return p1
.end method
