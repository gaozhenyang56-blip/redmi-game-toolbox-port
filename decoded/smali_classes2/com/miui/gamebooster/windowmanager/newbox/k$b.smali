.class Lcom/miui/gamebooster/windowmanager/newbox/k$b;
.super Landroidx/recyclerview/widget/RecyclerView$h;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/gamebooster/windowmanager/newbox/k;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "b"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/gamebooster/windowmanager/newbox/k$b$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroidx/recyclerview/widget/RecyclerView$h<",
        "Lcom/miui/gamebooster/windowmanager/newbox/k$c;",
        ">;"
    }
.end annotation


# instance fields
.field private final a:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final b:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private c:Lcom/miui/gamebooster/windowmanager/newbox/k$b$a;

.field private d:I

.field private e:Landroid/content/Context;

.field private f:I

.field private g:I


# direct methods
.method public constructor <init>(Ljava/util/List;Ljava/util/List;Landroid/content/Context;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;",
            "Landroid/content/Context;",
            ")V"
        }
    .end annotation

    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$h;-><init>()V

    iput-object p1, p0, Lcom/miui/gamebooster/windowmanager/newbox/k$b;->a:Ljava/util/List;

    iput-object p2, p0, Lcom/miui/gamebooster/windowmanager/newbox/k$b;->b:Ljava/util/List;

    iput-object p3, p0, Lcom/miui/gamebooster/windowmanager/newbox/k$b;->e:Landroid/content/Context;

    const p1, 0x7f06025b

    invoke-static {p3, p1}, Landroidx/core/content/ContextCompat;->c(Landroid/content/Context;I)I

    move-result p1

    iput p1, p0, Lcom/miui/gamebooster/windowmanager/newbox/k$b;->f:I

    iget-object p1, p0, Lcom/miui/gamebooster/windowmanager/newbox/k$b;->e:Landroid/content/Context;

    const p2, 0x7f06025c

    invoke-static {p1, p2}, Landroidx/core/content/ContextCompat;->c(Landroid/content/Context;I)I

    move-result p1

    iput p1, p0, Lcom/miui/gamebooster/windowmanager/newbox/k$b;->g:I

    return-void
.end method

.method public static synthetic k(Lcom/miui/gamebooster/windowmanager/newbox/k$b;ILandroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/miui/gamebooster/windowmanager/newbox/k$b;->lambda$onBindViewHolder$0(ILandroid/view/View;)V

    return-void
.end method

.method private synthetic lambda$onBindViewHolder$0(ILandroid/view/View;)V
    .locals 1

    iget-object p2, p0, Lcom/miui/gamebooster/windowmanager/newbox/k$b;->c:Lcom/miui/gamebooster/windowmanager/newbox/k$b$a;

    iget-object v0, p0, Lcom/miui/gamebooster/windowmanager/newbox/k$b;->b:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-interface {p2, p1}, Lcom/miui/gamebooster/windowmanager/newbox/k$b$a;->onItemClick(I)V

    return-void
.end method


# virtual methods
.method public getItemCount()I
    .locals 1

    iget-object v0, p0, Lcom/miui/gamebooster/windowmanager/newbox/k$b;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public l(Lcom/miui/gamebooster/windowmanager/newbox/k$c;I)V
    .locals 2

    iget-object v0, p1, Lcom/miui/gamebooster/windowmanager/newbox/k$c;->a:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/miui/gamebooster/windowmanager/newbox/k$b;->a:Ljava/util/List;

    invoke-interface {v1, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/miui/gamebooster/windowmanager/newbox/k$b;->b:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iget v1, p0, Lcom/miui/gamebooster/windowmanager/newbox/k$b;->d:I

    if-ne v0, v1, :cond_0

    iget-object v0, p1, Lcom/miui/gamebooster/windowmanager/newbox/k$c;->a:Landroid/widget/TextView;

    iget v1, p0, Lcom/miui/gamebooster/windowmanager/newbox/k$b;->f:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    iget-object v0, p1, Lcom/miui/gamebooster/windowmanager/newbox/k$c;->b:Landroid/widget/ImageView;

    const/4 v1, 0x0

    goto :goto_0

    :cond_0
    iget-object v0, p1, Lcom/miui/gamebooster/windowmanager/newbox/k$c;->a:Landroid/widget/TextView;

    iget v1, p0, Lcom/miui/gamebooster/windowmanager/newbox/k$b;->g:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    iget-object v0, p1, Lcom/miui/gamebooster/windowmanager/newbox/k$c;->b:Landroid/widget/ImageView;

    const/16 v1, 0x8

    :goto_0
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object p1, p1, Landroidx/recyclerview/widget/RecyclerView$c0;->itemView:Landroid/view/View;

    new-instance v0, Lcom/miui/gamebooster/windowmanager/newbox/l;

    invoke-direct {v0, p0, p2}, Lcom/miui/gamebooster/windowmanager/newbox/l;-><init>(Lcom/miui/gamebooster/windowmanager/newbox/k$b;I)V

    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public m(Landroid/view/ViewGroup;I)Lcom/miui/gamebooster/windowmanager/newbox/k$c;
    .locals 3
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    new-instance p2, Lcom/miui/gamebooster/windowmanager/newbox/k$c;

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f0e0138

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    invoke-direct {p2, p1}, Lcom/miui/gamebooster/windowmanager/newbox/k$c;-><init>(Landroid/view/View;)V

    return-object p2
.end method

.method public n(I)V
    .locals 0

    iput p1, p0, Lcom/miui/gamebooster/windowmanager/newbox/k$b;->d:I

    return-void
.end method

.method public o(Lcom/miui/gamebooster/windowmanager/newbox/k$b$a;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/gamebooster/windowmanager/newbox/k$b;->c:Lcom/miui/gamebooster/windowmanager/newbox/k$b$a;

    return-void
.end method

.method public bridge synthetic onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$c0;I)V
    .locals 0

    check-cast p1, Lcom/miui/gamebooster/windowmanager/newbox/k$c;

    invoke-virtual {p0, p1, p2}, Lcom/miui/gamebooster/windowmanager/newbox/k$b;->l(Lcom/miui/gamebooster/windowmanager/newbox/k$c;I)V

    return-void
.end method

.method public bridge synthetic onCreateViewHolder(Landroid/view/ViewGroup;I)Landroidx/recyclerview/widget/RecyclerView$c0;
    .locals 0
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    invoke-virtual {p0, p1, p2}, Lcom/miui/gamebooster/windowmanager/newbox/k$b;->m(Landroid/view/ViewGroup;I)Lcom/miui/gamebooster/windowmanager/newbox/k$c;

    move-result-object p1

    return-object p1
.end method
