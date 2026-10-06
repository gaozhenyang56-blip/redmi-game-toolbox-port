.class public Lcom/miui/gamebooster/xunyou/XunyouGiftItem;
.super Landroid/widget/RelativeLayout;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private a:Landroid/widget/ImageView;

.field private b:Landroid/widget/TextView;

.field private c:Landroid/widget/Button;

.field private d:I

.field private e:Lw8/a;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    invoke-direct {p0, p1}, Lcom/miui/gamebooster/xunyou/XunyouGiftItem;->a(Landroid/content/Context;)V

    return-void
.end method

.method private a(Landroid/content/Context;)V
    .locals 2

    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p1

    const v0, 0x7f0e01f3

    const/4 v1, 0x1

    invoke-virtual {p1, v0, p0, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    const p1, 0x7f0b0481

    invoke-virtual {p0, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    iput-object p1, p0, Lcom/miui/gamebooster/xunyou/XunyouGiftItem;->a:Landroid/widget/ImageView;

    const p1, 0x7f0b0483

    invoke-virtual {p0, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/miui/gamebooster/xunyou/XunyouGiftItem;->b:Landroid/widget/TextView;

    const p1, 0x7f0b0480

    invoke-virtual {p0, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/Button;

    iput-object p1, p0, Lcom/miui/gamebooster/xunyou/XunyouGiftItem;->c:Landroid/widget/Button;

    invoke-virtual {p1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object p1, p0, Lcom/miui/gamebooster/xunyou/XunyouGiftItem;->c:Landroid/widget/Button;

    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f120ac8

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method


# virtual methods
.method public b(Ljava/lang/String;I)V
    .locals 1

    iget-object v0, p0, Lcom/miui/gamebooster/xunyou/XunyouGiftItem;->b:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iput p2, p0, Lcom/miui/gamebooster/xunyou/XunyouGiftItem;->d:I

    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 1

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    const v0, 0x7f0b0480

    if-eq p1, v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lcom/miui/gamebooster/xunyou/XunyouGiftItem;->e:Lw8/a;

    iget v0, p0, Lcom/miui/gamebooster/xunyou/XunyouGiftItem;->d:I

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v0}, Lw8/a;->k(Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method public setGiftCallBack(Lw8/a;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/gamebooster/xunyou/XunyouGiftItem;->e:Lw8/a;

    return-void
.end method

.method public setGiftStatus(Ln6/d;)V
    .locals 3

    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget-object v1, Lcom/miui/gamebooster/xunyou/XunyouGiftItem$a;->a:[I

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    aget p1, v1, p1

    const/4 v1, 0x1

    if-eq p1, v1, :cond_1

    const/4 v1, 0x2

    if-eq p1, v1, :cond_0

    goto :goto_1

    :cond_0
    iget-object p1, p0, Lcom/miui/gamebooster/xunyou/XunyouGiftItem;->a:Landroid/widget/ImageView;

    const v1, 0x7f08072f

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    iget-object p1, p0, Lcom/miui/gamebooster/xunyou/XunyouGiftItem;->c:Landroid/widget/Button;

    const/4 v1, 0x0

    invoke-virtual {p1, v1}, Landroid/view/View;->setEnabled(Z)V

    iget-object p1, p0, Lcom/miui/gamebooster/xunyou/XunyouGiftItem;->c:Landroid/widget/Button;

    const v1, 0x7f080733

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    iget-object p1, p0, Lcom/miui/gamebooster/xunyou/XunyouGiftItem;->c:Landroid/widget/Button;

    const v1, 0x7f0601cf

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setTextColor(I)V

    iget-object p1, p0, Lcom/miui/gamebooster/xunyou/XunyouGiftItem;->b:Landroid/widget/TextView;

    const v1, 0x7f0601d5

    goto :goto_0

    :cond_1
    iget-object p1, p0, Lcom/miui/gamebooster/xunyou/XunyouGiftItem;->a:Landroid/widget/ImageView;

    const v2, 0x7f080732

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {p1, v2}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    iget-object p1, p0, Lcom/miui/gamebooster/xunyou/XunyouGiftItem;->c:Landroid/widget/Button;

    invoke-virtual {p1, v1}, Landroid/view/View;->setEnabled(Z)V

    iget-object p1, p0, Lcom/miui/gamebooster/xunyou/XunyouGiftItem;->c:Landroid/widget/Button;

    const v1, 0x7f08072e

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    iget-object p1, p0, Lcom/miui/gamebooster/xunyou/XunyouGiftItem;->c:Landroid/widget/Button;

    const v1, 0x7f0601ce

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setTextColor(I)V

    iget-object p1, p0, Lcom/miui/gamebooster/xunyou/XunyouGiftItem;->b:Landroid/widget/TextView;

    const v1, 0x7f0601d4

    :goto_0
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setTextColor(I)V

    :goto_1
    return-void
.end method
