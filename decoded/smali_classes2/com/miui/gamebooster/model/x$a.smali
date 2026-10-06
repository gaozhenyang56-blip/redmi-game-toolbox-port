.class public Lcom/miui/gamebooster/model/x$a;
.super Lt5/b;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/gamebooster/model/x;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "a"
.end annotation


# instance fields
.field private a:Landroid/content/Context;

.field private b:Landroid/widget/TextView;

.field final synthetic c:Lcom/miui/gamebooster/model/x;


# direct methods
.method public constructor <init>(Lcom/miui/gamebooster/model/x;Landroid/view/View;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/gamebooster/model/x$a;->c:Lcom/miui/gamebooster/model/x;

    invoke-direct {p0, p2}, Lt5/b;-><init>(Landroid/view/View;)V

    invoke-virtual {p2}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    iput-object p1, p0, Lcom/miui/gamebooster/model/x$a;->a:Landroid/content/Context;

    invoke-virtual {p0, p2}, Lcom/miui/gamebooster/model/x$a;->b(Landroid/view/View;)V

    return-void
.end method


# virtual methods
.method public a(Landroid/view/View;ILjava/lang/Object;Lt5/r$c;)V
    .locals 2

    check-cast p3, Lcom/miui/gamebooster/model/x;

    if-nez p2, :cond_0

    invoke-virtual {p1}, Landroid/view/View;->getPaddingLeft()I

    move-result p2

    const/4 p4, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getPaddingLeft()I

    move-result p2

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p4

    invoke-virtual {p4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p4

    const v0, 0x7f070b63

    invoke-virtual {p4, v0}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result p4

    :goto_0
    invoke-virtual {p1}, Landroid/view/View;->getPaddingRight()I

    move-result v0

    invoke-virtual {p1}, Landroid/view/View;->getPaddingBottom()I

    move-result v1

    invoke-virtual {p1, p2, p4, v0, v1}, Landroid/view/View;->setPadding(IIII)V

    iget-object p1, p0, Lcom/miui/gamebooster/model/x$a;->b:Landroid/widget/TextView;

    invoke-virtual {p3}, Lcom/miui/gamebooster/model/x;->g()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public b(Landroid/view/View;)V
    .locals 1

    const v0, 0x7f0b0cf3

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/miui/gamebooster/model/x$a;->b:Landroid/widget/TextView;

    return-void
.end method
