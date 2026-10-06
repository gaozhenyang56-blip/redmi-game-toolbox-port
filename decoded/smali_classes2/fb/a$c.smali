.class public Lfb/a$c;
.super Landroidx/recyclerview/widget/RecyclerView$c0;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lfb/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "c"
.end annotation


# instance fields
.field public a:Landroid/widget/TextView;

.field public b:Landroid/widget/ImageView;

.field public c:Landroid/widget/TextView;

.field public d:Lmiuix/androidbasewidget/widget/ProgressBar;

.field public e:Landroid/widget/ImageView;

.field public f:Lcom/miui/optimizemanage/view/StateCheckBox;

.field public g:I

.field public h:Ljb/j;

.field final synthetic i:Lfb/a;


# direct methods
.method public constructor <init>(Lfb/a;Landroid/view/View;Lfb/a;)V
    .locals 0
    .param p1    # Lfb/a;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    iput-object p1, p0, Lfb/a$c;->i:Lfb/a;

    invoke-direct {p0, p2}, Landroidx/recyclerview/widget/RecyclerView$c0;-><init>(Landroid/view/View;)V

    const p1, 0x7f0b0bc9

    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lfb/a$c;->a:Landroid/widget/TextView;

    const p1, 0x7f0b056b

    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    iput-object p1, p0, Lfb/a$c;->b:Landroid/widget/ImageView;

    const p1, 0x7f0b0b21

    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lfb/a$c;->c:Landroid/widget/TextView;

    const p1, 0x7f0b0915

    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lmiuix/androidbasewidget/widget/ProgressBar;

    iput-object p1, p0, Lfb/a$c;->d:Lmiuix/androidbasewidget/widget/ProgressBar;

    const p1, 0x7f0b0637

    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    iput-object p1, p0, Lfb/a$c;->e:Landroid/widget/ImageView;

    const p1, 0x7f0b022a

    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/miui/optimizemanage/view/StateCheckBox;

    iput-object p1, p0, Lfb/a$c;->f:Lcom/miui/optimizemanage/view/StateCheckBox;

    invoke-virtual {p2, p3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object p1, p0, Lfb/a$c;->f:Lcom/miui/optimizemanage/view/StateCheckBox;

    invoke-virtual {p1, p3}, Lcom/miui/optimizemanage/view/StateCheckBox;->setOnStateChangeListener(Lcom/miui/optimizemanage/view/StateCheckBox$b;)V

    return-void
.end method


# virtual methods
.method public a(I)V
    .locals 10

    iget-object v0, p0, Lfb/a$c;->i:Lfb/a;

    invoke-virtual {v0, p1}, Lfb/a;->p(I)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    check-cast v0, Ljb/b;

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lfb/a$c;->f:Lcom/miui/optimizemanage/view/StateCheckBox;

    invoke-virtual {v1, p0}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    iget-object v1, p0, Landroidx/recyclerview/widget/RecyclerView$c0;->itemView:Landroid/view/View;

    invoke-virtual {v1, p0}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    iget-object v1, p0, Landroidx/recyclerview/widget/RecyclerView$c0;->itemView:Landroid/view/View;

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljb/b;->b()I

    move-result v4

    if-lez v4, :cond_1

    move v4, v2

    goto :goto_1

    :cond_1
    move v4, v3

    :goto_1
    invoke-virtual {v1, v4}, Landroid/view/View;->setClickable(Z)V

    if-eqz v0, :cond_9

    invoke-virtual {v0}, Ljb/b;->d()Ljava/util/List;

    move-result-object v1

    if-eqz v1, :cond_9

    invoke-virtual {v0}, Ljb/b;->i()Z

    move-result v1

    iget-object v4, p0, Lfb/a$c;->f:Lcom/miui/optimizemanage/view/StateCheckBox;

    invoke-virtual {v0}, Ljb/b;->a()Lcom/miui/optimizemanage/view/StateCheckBox$c;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/miui/optimizemanage/view/StateCheckBox;->setState(Lcom/miui/optimizemanage/view/StateCheckBox$c;)V

    invoke-virtual {v0}, Ljb/b;->h()Ljb/j;

    move-result-object v4

    iput-object v4, p0, Lfb/a$c;->h:Ljb/j;

    iput p1, p0, Lfb/a$c;->g:I

    iget-object p1, p0, Lfb/a$c;->a:Landroid/widget/TextView;

    invoke-virtual {v0}, Ljb/b;->g()I

    move-result v4

    invoke-virtual {p1, v4}, Landroid/widget/TextView;->setText(I)V

    iget-object p1, p0, Lfb/a$c;->i:Lfb/a;

    invoke-static {p1}, Lfb/a;->k(Lfb/a;)Ljb/i;

    move-result-object p1

    sget-object v4, Ljb/i;->b:Ljb/i;

    const/4 v5, 0x4

    const/16 v6, 0x8

    if-eq p1, v4, :cond_7

    iget-object p1, p0, Lfb/a$c;->i:Lfb/a;

    invoke-static {p1}, Lfb/a;->k(Lfb/a;)Ljb/i;

    move-result-object p1

    sget-object v7, Ljb/i;->a:Ljb/i;

    if-ne p1, v7, :cond_2

    goto/16 :goto_6

    :cond_2
    iget-object p1, p0, Lfb/a$c;->d:Lmiuix/androidbasewidget/widget/ProgressBar;

    invoke-virtual {p1, v6}, Landroid/view/View;->setVisibility(I)V

    iget-object p1, p0, Lfb/a$c;->e:Landroid/widget/ImageView;

    invoke-virtual {p1, v6}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object p1, p0, Lfb/a$c;->c:Landroid/widget/TextView;

    invoke-virtual {p1, v3}, Landroid/view/View;->setVisibility(I)V

    invoke-virtual {v0}, Ljb/b;->h()Ljb/j;

    move-result-object p1

    sget-object v6, Ljb/j;->c:Ljb/j;

    if-ne p1, v6, :cond_3

    move p1, v2

    goto :goto_2

    :cond_3
    move p1, v3

    :goto_2
    if-eqz p1, :cond_4

    invoke-virtual {v0}, Ljb/b;->b()I

    move-result p1

    iget-object v6, p0, Lfb/a$c;->f:Lcom/miui/optimizemanage/view/StateCheckBox;

    invoke-virtual {v6, v5}, Landroid/view/View;->setVisibility(I)V

    goto :goto_3

    :cond_4
    invoke-virtual {v0}, Ljb/b;->e()I

    move-result p1

    iget-object v5, p0, Lfb/a$c;->f:Lcom/miui/optimizemanage/view/StateCheckBox;

    invoke-virtual {v5, v3}, Landroid/view/View;->setVisibility(I)V

    :goto_3
    iget-object v5, p0, Lfb/a$c;->c:Landroid/widget/TextView;

    invoke-static {}, Lcom/miui/securitycenter/Application;->A()Lcom/miui/securitycenter/Application;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f10008c

    new-array v8, v2, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v8, v3

    invoke-virtual {v6, v7, p1, v8}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v5, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {v0}, Ljb/b;->b()I

    move-result p1

    if-lez p1, :cond_5

    iget-object p1, p0, Lfb/a$c;->i:Lfb/a;

    invoke-static {p1}, Lfb/a;->k(Lfb/a;)Ljb/i;

    move-result-object p1

    if-eq p1, v4, :cond_5

    iget-object p1, p0, Lfb/a$c;->i:Lfb/a;

    invoke-static {p1}, Lfb/a;->k(Lfb/a;)Ljb/i;

    move-result-object p1

    sget-object v0, Ljb/i;->d:Ljb/i;

    if-eq p1, v0, :cond_5

    move p1, v2

    goto :goto_4

    :cond_5
    move p1, v3

    :goto_4
    iget-object v0, p0, Lfb/a$c;->b:Landroid/widget/ImageView;

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v0, p0, Lfb/a$c;->b:Landroid/widget/ImageView;

    iget-object v4, p0, Lfb/a$c;->i:Lfb/a;

    if-eqz p1, :cond_6

    if-eqz v1, :cond_6

    goto :goto_5

    :cond_6
    move v2, v3

    :goto_5
    invoke-static {v4, v2}, Lfb/a;->l(Lfb/a;Z)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    iget-object v0, p0, Lfb/a$c;->f:Lcom/miui/optimizemanage/view/StateCheckBox;

    invoke-virtual {v0, p1}, Lcom/miui/optimizemanage/view/StateCheckBox;->setCheckEnable(Z)V

    goto :goto_8

    :cond_7
    :goto_6
    invoke-virtual {v0}, Ljb/b;->f()I

    move-result p1

    if-nez p1, :cond_8

    iget-object p1, p0, Lfb/a$c;->d:Lmiuix/androidbasewidget/widget/ProgressBar;

    invoke-virtual {p1, v3}, Landroid/view/View;->setVisibility(I)V

    iget-object p1, p0, Lfb/a$c;->e:Landroid/widget/ImageView;

    invoke-virtual {p1, v6}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_7

    :cond_8
    iget-object p1, p0, Lfb/a$c;->d:Lmiuix/androidbasewidget/widget/ProgressBar;

    invoke-virtual {p1, v6}, Landroid/view/View;->setVisibility(I)V

    iget-object p1, p0, Lfb/a$c;->e:Landroid/widget/ImageView;

    invoke-virtual {p1, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    :goto_7
    iget-object p1, p0, Lfb/a$c;->b:Landroid/widget/ImageView;

    invoke-virtual {p1, v5}, Landroid/widget/ImageView;->setVisibility(I)V

    :cond_9
    :goto_8
    return-void
.end method
