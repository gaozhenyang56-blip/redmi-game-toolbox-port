.class Lbd/a$b;
.super Landroidx/recyclerview/widget/RecyclerView$c0;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lbd/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "b"
.end annotation


# instance fields
.field private final a:Landroid/widget/ImageView;

.field private final b:Landroid/widget/TextView;

.field private final c:Lrh/c;

.field final synthetic d:Lbd/a;


# direct methods
.method public constructor <init>(Lbd/a;Landroid/view/View;)V
    .locals 2
    .param p1    # Lbd/a;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    iput-object p1, p0, Lbd/a$b;->d:Lbd/a;

    invoke-direct {p0, p2}, Landroidx/recyclerview/widget/RecyclerView$c0;-><init>(Landroid/view/View;)V

    new-instance p1, Lrh/c$b;

    invoke-direct {p1}, Lrh/c$b;-><init>()V

    const v0, 0x7f080823

    invoke-virtual {p1, v0}, Lrh/c$b;->I(I)Lrh/c$b;

    move-result-object p1

    invoke-virtual {p1, v0}, Lrh/c$b;->H(I)Lrh/c$b;

    move-result-object p1

    invoke-virtual {p1, v0}, Lrh/c$b;->G(I)Lrh/c$b;

    move-result-object p1

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lrh/c$b;->E(Z)Lrh/c$b;

    move-result-object p1

    invoke-virtual {p1, v0}, Lrh/c$b;->x(Z)Lrh/c$b;

    move-result-object p1

    sget-object v1, Lsh/d;->d:Lsh/d;

    invoke-virtual {p1, v1}, Lrh/c$b;->C(Lsh/d;)Lrh/c$b;

    move-result-object p1

    invoke-virtual {p1, v0}, Lrh/c$b;->y(Z)Lrh/c$b;

    move-result-object p1

    invoke-virtual {p1, v0}, Lrh/c$b;->A(Z)Lrh/c$b;

    move-result-object p1

    sget-object v0, Landroid/graphics/Bitmap$Config;->RGB_565:Landroid/graphics/Bitmap$Config;

    invoke-virtual {p1, v0}, Lrh/c$b;->v(Landroid/graphics/Bitmap$Config;)Lrh/c$b;

    move-result-object p1

    invoke-virtual {p1}, Lrh/c$b;->w()Lrh/c;

    move-result-object p1

    iput-object p1, p0, Lbd/a$b;->c:Lrh/c;

    const p1, 0x7f0b0506

    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    iput-object p1, p0, Lbd/a$b;->a:Landroid/widget/ImageView;

    const p1, 0x7f0b0bc9

    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lbd/a$b;->b:Landroid/widget/TextView;

    const p1, 0x7f0b0600

    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    const v0, 0x7f0804f4

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    new-instance p1, Lbd/b;

    invoke-direct {p1, p0}, Lbd/b;-><init>(Lbd/a$b;)V

    invoke-virtual {p2, p1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public static synthetic a(Lbd/a$b;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lbd/a$b;->lambda$new$0(Landroid/view/View;)V

    return-void
.end method

.method private synthetic lambda$new$0(Landroid/view/View;)V
    .locals 1

    iget-object p1, p0, Lbd/a$b;->a:Landroid/widget/ImageView;

    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lbd/a$b;->d:Lbd/a;

    invoke-static {p1}, Lbd/a;->k(Lbd/a;)Landroid/os/Handler;

    move-result-object p1

    const/16 v0, 0x193

    invoke-virtual {p1, v0}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object p1

    iget-object v0, p0, Lbd/a$b;->a:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V

    :cond_0
    return-void
.end method


# virtual methods
.method public b(Lcom/miui/common/card/GridFunctionData;)V
    .locals 2

    iget-object v0, p0, Lbd/a$b;->a:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    iget-object v0, p0, Lbd/a$b;->b:Landroid/widget/TextView;

    invoke-virtual {p1}, Lcom/miui/common/card/GridFunctionData;->getTitle()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {p1}, Lcom/miui/common/card/GridFunctionData;->isUseLocalPic()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lbd/a$b;->a:Landroid/widget/ImageView;

    invoke-virtual {p1}, Lcom/miui/common/card/GridFunctionData;->getLocalPicResoourceId()I

    move-result p1

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Lcom/miui/common/card/GridFunctionData;->getIcon()Ljava/lang/String;

    move-result-object p1

    iget-object v0, p0, Lbd/a$b;->a:Landroid/widget/ImageView;

    iget-object v1, p0, Lbd/a$b;->c:Lrh/c;

    invoke-static {p1, v0, v1}, Lx4/o0;->d(Ljava/lang/String;Landroid/widget/ImageView;Lrh/c;)V

    :goto_0
    return-void
.end method
