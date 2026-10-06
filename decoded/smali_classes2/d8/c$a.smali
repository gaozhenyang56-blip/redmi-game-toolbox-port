.class public Ld8/c$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ld8/c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation


# instance fields
.field public a:Landroid/widget/FrameLayout;

.field public b:Landroid/widget/TextView;

.field public c:Lcom/miui/gamebooster/videobox/view/DisplayStyleImageView;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lh8/c;Landroid/view/View$OnClickListener;)V
    .locals 3

    iget-object v0, p0, Ld8/c$a;->a:Landroid/widget/FrameLayout;

    if-nez p1, :cond_0

    const/4 v1, 0x4

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    if-nez p1, :cond_1

    return-void

    :cond_1
    iget-object v0, p0, Ld8/c$a;->a:Landroid/widget/FrameLayout;

    invoke-virtual {v0, p1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    iget-object v0, p0, Ld8/c$a;->a:Landroid/widget/FrameLayout;

    invoke-virtual {v0, p2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-virtual {p1}, Lh8/c;->i()Z

    move-result p2

    iget-object v0, p0, Ld8/c$a;->b:Landroid/widget/TextView;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {p1}, Lh8/b;->c()I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Ld8/c$a;->b:Landroid/widget/TextView;

    invoke-virtual {v0, p2}, Landroid/widget/TextView;->setSelected(Z)V

    :cond_2
    iget-object v0, p0, Ld8/c$a;->c:Lcom/miui/gamebooster/videobox/view/DisplayStyleImageView;

    if-eqz v0, :cond_3

    invoke-virtual {p1}, Lh8/c;->h()I

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Ld8/c$a;->c:Lcom/miui/gamebooster/videobox/view/DisplayStyleImageView;

    invoke-virtual {v0, p2}, Lcom/miui/gamebooster/videobox/view/DisplayStyleImageView;->setDrawBorder(Z)V

    iget-object p2, p0, Ld8/c$a;->c:Lcom/miui/gamebooster/videobox/view/DisplayStyleImageView;

    invoke-virtual {p1}, Lh8/c;->h()I

    move-result p1

    invoke-virtual {p2, p1}, Landroid/widget/ImageView;->setImageResource(I)V

    :cond_3
    return-void
.end method
