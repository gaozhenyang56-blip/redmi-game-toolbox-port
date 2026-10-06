.class public Lcom/miui/apppredict/fragment/a;
.super Landroidx/recyclerview/widget/RecyclerView$h;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/apppredict/fragment/a$a;,
        Lcom/miui/apppredict/fragment/a$b;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroidx/recyclerview/widget/RecyclerView$h<",
        "Lcom/miui/apppredict/fragment/a$b;",
        ">;"
    }
.end annotation


# instance fields
.field private final a:Landroid/content/Context;

.field private b:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ln3/a;",
            ">;"
        }
    .end annotation
.end field

.field private c:Lcom/miui/apppredict/fragment/a$a;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$h;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/miui/apppredict/fragment/a;->b:Ljava/util/List;

    iput-object p1, p0, Lcom/miui/apppredict/fragment/a;->a:Landroid/content/Context;

    return-void
.end method

.method public static synthetic k(Lcom/miui/apppredict/fragment/a;Ln3/a;Lcom/miui/apppredict/fragment/a$b;ILandroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/miui/apppredict/fragment/a;->m(Ln3/a;Lcom/miui/apppredict/fragment/a$b;ILandroid/view/View;)V

    return-void
.end method

.method public static synthetic l(Lcom/miui/apppredict/fragment/a;Ln3/a;Lcom/miui/apppredict/fragment/a$b;ILandroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/miui/apppredict/fragment/a;->n(Ln3/a;Lcom/miui/apppredict/fragment/a$b;ILandroid/view/View;)V

    return-void
.end method

.method private synthetic m(Ln3/a;Lcom/miui/apppredict/fragment/a$b;ILandroid/view/View;)V
    .locals 1

    invoke-virtual {p1}, Ln3/a;->d()Z

    move-result p4

    if-eqz p4, :cond_0

    iget-object p4, p2, Lcom/miui/apppredict/fragment/a$b;->c:Landroid/widget/ImageView;

    const v0, 0x7f080383

    invoke-virtual {p4, v0}, Landroid/view/View;->setBackgroundResource(I)V

    iget-object p2, p2, Lcom/miui/apppredict/fragment/a$b;->c:Landroid/widget/ImageView;

    iget-object p4, p0, Lcom/miui/apppredict/fragment/a;->a:Landroid/content/Context;

    const v0, 0x7f120d87

    goto :goto_0

    :cond_0
    iget-object p4, p2, Lcom/miui/apppredict/fragment/a$b;->c:Landroid/widget/ImageView;

    const v0, 0x7f080384

    invoke-virtual {p4, v0}, Landroid/view/View;->setBackgroundResource(I)V

    iget-object p2, p2, Lcom/miui/apppredict/fragment/a$b;->c:Landroid/widget/ImageView;

    iget-object p4, p0, Lcom/miui/apppredict/fragment/a;->a:Landroid/content/Context;

    const v0, 0x7f120dac

    :goto_0
    invoke-virtual {p4, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p4

    invoke-virtual {p2, p4}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    iget-object p2, p0, Lcom/miui/apppredict/fragment/a;->c:Lcom/miui/apppredict/fragment/a$a;

    if-eqz p2, :cond_1

    invoke-interface {p2, p3, p1}, Lcom/miui/apppredict/fragment/a$a;->a(ILn3/a;)V

    :cond_1
    return-void
.end method

.method private synthetic n(Ln3/a;Lcom/miui/apppredict/fragment/a$b;ILandroid/view/View;)V
    .locals 0

    invoke-virtual {p1}, Ln3/a;->d()Z

    move-result p4

    iget-object p2, p2, Lcom/miui/apppredict/fragment/a$b;->c:Landroid/widget/ImageView;

    if-eqz p4, :cond_0

    const p4, 0x7f080383

    goto :goto_0

    :cond_0
    const p4, 0x7f080384

    :goto_0
    invoke-virtual {p2, p4}, Landroid/view/View;->setBackgroundResource(I)V

    iget-object p2, p0, Lcom/miui/apppredict/fragment/a;->c:Lcom/miui/apppredict/fragment/a$a;

    if-eqz p2, :cond_1

    invoke-interface {p2, p3, p1}, Lcom/miui/apppredict/fragment/a$a;->a(ILn3/a;)V

    :cond_1
    return-void
.end method


# virtual methods
.method public getItemCount()I
    .locals 1

    iget-object v0, p0, Lcom/miui/apppredict/fragment/a;->b:Ljava/util/List;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    :goto_0
    return v0
.end method

.method public o(Lcom/miui/apppredict/fragment/a$b;I)V
    .locals 4

    iget-object v0, p0, Lcom/miui/apppredict/fragment/a;->b:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ln3/a;

    invoke-virtual {v0}, Ln3/a;->c()I

    move-result v1

    const/16 v2, 0x3e7

    if-ne v1, v2, :cond_0

    invoke-virtual {v0}, Ln3/a;->b()Ljava/lang/String;

    move-result-object v1

    const-string v2, "pkg_icon_xspace://"

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Ln3/a;->b()Ljava/lang/String;

    move-result-object v1

    const-string v2, "pkg_icon://"

    :goto_0
    invoke-virtual {v2, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p1, Lcom/miui/apppredict/fragment/a$b;->a:Landroid/widget/ImageView;

    sget-object v3, Lx4/o0;->f:Lrh/c;

    invoke-static {v1, v2, v3}, Lx4/o0;->d(Ljava/lang/String;Landroid/widget/ImageView;Lrh/c;)V

    iget-object v1, p1, Lcom/miui/apppredict/fragment/a$b;->b:Landroid/widget/TextView;

    invoke-virtual {v0}, Ln3/a;->a()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v1, p1, Lcom/miui/apppredict/fragment/a$b;->a:Landroid/widget/ImageView;

    invoke-virtual {v0}, Ln3/a;->a()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    iget-object v1, p1, Lcom/miui/apppredict/fragment/a$b;->c:Landroid/widget/ImageView;

    invoke-virtual {v0}, Ln3/a;->d()Z

    move-result v2

    if-eqz v2, :cond_1

    const v2, 0x7f080384

    goto :goto_1

    :cond_1
    const v2, 0x7f080383

    :goto_1
    invoke-virtual {v1, v2}, Landroid/view/View;->setBackgroundResource(I)V

    iget-object v1, p1, Lcom/miui/apppredict/fragment/a$b;->c:Landroid/widget/ImageView;

    invoke-virtual {v0}, Ln3/a;->d()Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/miui/apppredict/fragment/a;->a:Landroid/content/Context;

    const v3, 0x7f120d87

    goto :goto_2

    :cond_2
    iget-object v2, p0, Lcom/miui/apppredict/fragment/a;->a:Landroid/content/Context;

    const v3, 0x7f120dac

    :goto_2
    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    iget-object v1, p1, Lcom/miui/apppredict/fragment/a$b;->c:Landroid/widget/ImageView;

    new-instance v2, Ln3/b;

    invoke-direct {v2, p0, v0, p1, p2}, Ln3/b;-><init>(Lcom/miui/apppredict/fragment/a;Ln3/a;Lcom/miui/apppredict/fragment/a$b;I)V

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v1, p1, Landroidx/recyclerview/widget/RecyclerView$c0;->itemView:Landroid/view/View;

    new-instance v2, Ln3/c;

    invoke-direct {v2, p0, v0, p1, p2}, Ln3/c;-><init>(Lcom/miui/apppredict/fragment/a;Ln3/a;Lcom/miui/apppredict/fragment/a$b;I)V

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public bridge synthetic onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$c0;I)V
    .locals 0

    check-cast p1, Lcom/miui/apppredict/fragment/a$b;

    invoke-virtual {p0, p1, p2}, Lcom/miui/apppredict/fragment/a;->o(Lcom/miui/apppredict/fragment/a$b;I)V

    return-void
.end method

.method public bridge synthetic onCreateViewHolder(Landroid/view/ViewGroup;I)Landroidx/recyclerview/widget/RecyclerView$c0;
    .locals 0

    invoke-virtual {p0, p1, p2}, Lcom/miui/apppredict/fragment/a;->p(Landroid/view/ViewGroup;I)Lcom/miui/apppredict/fragment/a$b;

    move-result-object p1

    return-object p1
.end method

.method public p(Landroid/view/ViewGroup;I)Lcom/miui/apppredict/fragment/a$b;
    .locals 3

    new-instance p2, Lcom/miui/apppredict/fragment/a$b;

    iget-object v0, p0, Lcom/miui/apppredict/fragment/a;->a:Landroid/content/Context;

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f0e0570

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    invoke-direct {p2, p1}, Lcom/miui/apppredict/fragment/a$b;-><init>(Landroid/view/View;)V

    return-object p2
.end method

.method public q(Lcom/miui/apppredict/fragment/a$a;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/apppredict/fragment/a;->c:Lcom/miui/apppredict/fragment/a$a;

    return-void
.end method

.method public r(Ljava/util/List;Landroid/view/View;Z)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ln3/a;",
            ">;",
            "Landroid/view/View;",
            "Z)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/miui/apppredict/fragment/a;->b:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_0

    if-nez p3, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    const/16 p1, 0x8

    :goto_0
    invoke-virtual {p2, p1}, Landroid/view/View;->setVisibility(I)V

    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$h;->notifyDataSetChanged()V

    return-void
.end method
