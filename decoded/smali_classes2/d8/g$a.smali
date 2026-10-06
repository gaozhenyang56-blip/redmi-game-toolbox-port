.class public Ld8/g$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ld8/g;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation


# instance fields
.field public a:Landroid/view/ViewGroup;

.field public b:Landroid/widget/TextView;

.field public c:Lmiuix/slidingwidget/widget/SlidingButton;

.field public d:Landroid/widget/ImageView;

.field public e:Landroid/widget/ImageView;

.field public f:Landroid/view/View;

.field public g:Landroid/widget/TextView;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private b(Landroid/widget/ImageView;I)V
    .locals 2
    .param p2    # I
        .annotation build Landroidx/annotation/RawRes;
        .end annotation
    .end param

    instance-of v0, p1, Lcom/miui/common/widgets/gif/GifImageView;

    if-eqz v0, :cond_0

    move-object v0, p1

    check-cast v0, Lcom/miui/common/widgets/gif/GifImageView;

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, p2}, Landroid/content/res/Resources;->openRawResource(I)Ljava/io/InputStream;

    move-result-object p2

    invoke-virtual {v0, p2}, Lcom/miui/common/widgets/gif/GifImageView;->setStream(Ljava/io/InputStream;)V

    check-cast p1, Lcom/miui/common/widgets/gif/GifImageView;

    invoke-virtual {p1}, Lcom/miui/common/widgets/gif/GifImageView;->i()V

    :cond_0
    return-void
.end method


# virtual methods
.method public a(Lh8/b;Landroid/widget/CompoundButton$OnCheckedChangeListener;)V
    .locals 4

    if-eqz p1, :cond_6

    invoke-virtual {p1}, Lh8/b;->d()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-static {}, Lj8/p;->d()Z

    move-result v0

    iget-object v1, p0, Ld8/g$a;->a:Landroid/view/ViewGroup;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    iget-object v1, p0, Ld8/g$a;->b:Landroid/widget/TextView;

    if-eqz v1, :cond_1

    invoke-virtual {p1}, Lh8/b;->c()I

    move-result v3

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setText(I)V

    :cond_1
    iget-object v1, p0, Ld8/g$a;->c:Lmiuix/slidingwidget/widget/SlidingButton;

    if-eqz v1, :cond_3

    invoke-virtual {v1, p2}, Landroid/widget/CompoundButton;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    iget-object p2, p0, Ld8/g$a;->c:Lmiuix/slidingwidget/widget/SlidingButton;

    if-nez v0, :cond_2

    invoke-static {}, Li8/c;->J()Z

    move-result v0

    if-eqz v0, :cond_2

    const/4 v2, 0x1

    :cond_2
    invoke-virtual {p2, v2}, Lmiuix/slidingwidget/widget/SlidingButton;->setChecked(Z)V

    iget-object p2, p0, Ld8/g$a;->c:Lmiuix/slidingwidget/widget/SlidingButton;

    invoke-virtual {p2, p1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    :cond_3
    iget-object p2, p0, Ld8/g$a;->d:Landroid/widget/ImageView;

    if-eqz p2, :cond_4

    iget-object v0, p0, Ld8/g$a;->e:Landroid/widget/ImageView;

    if-eqz v0, :cond_4

    move-object v0, p1

    check-cast v0, Lh8/e;

    invoke-virtual {v0}, Lh8/e;->i()I

    move-result v1

    invoke-direct {p0, p2, v1}, Ld8/g$a;->b(Landroid/widget/ImageView;I)V

    iget-object p2, p0, Ld8/g$a;->e:Landroid/widget/ImageView;

    invoke-virtual {v0}, Lh8/e;->h()I

    move-result v0

    invoke-direct {p0, p2, v0}, Ld8/g$a;->b(Landroid/widget/ImageView;I)V

    :cond_4
    iget-object p2, p0, Ld8/g$a;->g:Landroid/widget/TextView;

    if-eqz p2, :cond_5

    invoke-virtual {p1}, Lh8/b;->a()I

    move-result p1

    invoke-virtual {p2, p1}, Landroid/widget/TextView;->setText(I)V

    :cond_5
    return-void

    :cond_6
    :goto_0
    iget-object p1, p0, Ld8/g$a;->a:Landroid/view/ViewGroup;

    const/16 p2, 0x8

    invoke-virtual {p1, p2}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method
