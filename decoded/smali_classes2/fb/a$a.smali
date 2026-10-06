.class Lfb/a$a;
.super Landroidx/recyclerview/widget/RecyclerView$c0;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lfb/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "a"
.end annotation


# instance fields
.field a:Landroid/widget/ImageView;

.field b:Landroid/widget/TextView;

.field c:Landroid/widget/TextView;

.field d:Lcom/miui/optimizemanage/view/StateCheckBox;

.field public e:I

.field public f:I

.field final synthetic g:Lfb/a;


# direct methods
.method public constructor <init>(Lfb/a;Landroid/view/View;Lfb/a;)V
    .locals 0
    .param p1    # Lfb/a;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    iput-object p1, p0, Lfb/a$a;->g:Lfb/a;

    invoke-direct {p0, p2}, Landroidx/recyclerview/widget/RecyclerView$c0;-><init>(Landroid/view/View;)V

    const p1, 0x7f0b0506

    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    iput-object p1, p0, Lfb/a$a;->a:Landroid/widget/ImageView;

    const p1, 0x7f0b0bc9

    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lfb/a$a;->b:Landroid/widget/TextView;

    const p1, 0x7f0b0b21

    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lfb/a$a;->c:Landroid/widget/TextView;

    const p1, 0x7f0b0226

    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/miui/optimizemanage/view/StateCheckBox;

    iput-object p1, p0, Lfb/a$a;->d:Lcom/miui/optimizemanage/view/StateCheckBox;

    invoke-virtual {p2, p3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object p1, p0, Lfb/a$a;->d:Lcom/miui/optimizemanage/view/StateCheckBox;

    invoke-virtual {p1, p3}, Lcom/miui/optimizemanage/view/StateCheckBox;->setOnStateChangeListener(Lcom/miui/optimizemanage/view/StateCheckBox$b;)V

    return-void
.end method


# virtual methods
.method public a(II)V
    .locals 2

    iget-object v0, p0, Lfb/a$a;->g:Lfb/a;

    invoke-virtual {v0, p1}, Lfb/a;->p(I)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    check-cast v0, Ljb/b;

    iget-object v1, p0, Lfb/a$a;->g:Lfb/a;

    invoke-virtual {v1, p1, p2}, Lfb/a;->o(II)Ljava/lang/Object;

    move-result-object p1

    const/4 p2, 0x0

    if-eqz p1, :cond_1

    move-object p2, p1

    check-cast p2, Ljb/f;

    :cond_1
    if-eqz p2, :cond_4

    invoke-virtual {v0}, Ljb/b;->h()Ljb/j;

    move-result-object p1

    sget-object v0, Ljb/j;->c:Ljb/j;

    if-eq p1, v0, :cond_4

    iget-object p1, p0, Lfb/a$a;->d:Lcom/miui/optimizemanage/view/StateCheckBox;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    iget-object p1, p0, Lfb/a$a;->d:Lcom/miui/optimizemanage/view/StateCheckBox;

    iget-boolean p2, p2, Ljb/f;->m:Z

    if-eqz p2, :cond_2

    sget-object p2, Lcom/miui/optimizemanage/view/StateCheckBox$c;->c:Lcom/miui/optimizemanage/view/StateCheckBox$c;

    goto :goto_0

    :cond_2
    sget-object p2, Lcom/miui/optimizemanage/view/StateCheckBox$c;->a:Lcom/miui/optimizemanage/view/StateCheckBox$c;

    :goto_0
    invoke-virtual {p1, p2}, Lcom/miui/optimizemanage/view/StateCheckBox;->setState(Lcom/miui/optimizemanage/view/StateCheckBox$c;)V

    iget-object p1, p0, Lfb/a$a;->d:Lcom/miui/optimizemanage/view/StateCheckBox;

    iget-object p2, p0, Lfb/a$a;->g:Lfb/a;

    invoke-static {p2}, Lfb/a;->k(Lfb/a;)Ljb/i;

    move-result-object p2

    sget-object v1, Ljb/i;->d:Ljb/i;

    if-eq p2, v1, :cond_3

    const/4 v0, 0x1

    :cond_3
    invoke-virtual {p1, v0}, Lcom/miui/optimizemanage/view/StateCheckBox;->setCheckEnable(Z)V

    :cond_4
    return-void
.end method

.method public b(II)V
    .locals 7

    invoke-static {}, Lcom/miui/securitycenter/Application;->A()Lcom/miui/securitycenter/Application;

    move-result-object v0

    iget-object v1, p0, Lfb/a$a;->g:Lfb/a;

    invoke-virtual {v1, p1}, Lfb/a;->p(I)Ljava/lang/Object;

    move-result-object v1

    if-nez v1, :cond_0

    return-void

    :cond_0
    check-cast v1, Ljb/b;

    iget-object v2, p0, Landroidx/recyclerview/widget/RecyclerView$c0;->itemView:Landroid/view/View;

    iget-object v3, p0, Lfb/a$a;->d:Lcom/miui/optimizemanage/view/StateCheckBox;

    invoke-virtual {v3, p0}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    invoke-virtual {v2, p0}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    invoke-static {v0}, Li4/a;->k(Landroid/content/Context;)Li4/a;

    move-result-object v3

    iget-object v4, p0, Lfb/a$a;->g:Lfb/a;

    invoke-virtual {v4, p1, p2}, Lfb/a;->o(II)Ljava/lang/Object;

    move-result-object v4

    const/4 v5, 0x0

    if-eqz v4, :cond_1

    move-object v5, v4

    check-cast v5, Ljb/f;

    :cond_1
    if-eqz v5, :cond_6

    iput p1, p0, Lfb/a$a;->e:I

    iput p2, p0, Lfb/a$a;->f:I

    iget p1, v5, Ljb/f;->b:I

    invoke-static {p1}, Landroid/os/UserHandle;->getUserId(I)I

    move-result p1

    const/16 p2, 0x3e7

    if-ne p1, p2, :cond_2

    iget-object p1, v5, Ljb/f;->a:Ljava/lang/String;

    const-string p2, "pkg_icon_xspace://"

    goto :goto_0

    :cond_2
    iget-object p1, v5, Ljb/f;->a:Ljava/lang/String;

    const-string p2, "pkg_icon://"

    :goto_0
    invoke-virtual {p2, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iget-object p2, p0, Lfb/a$a;->a:Landroid/widget/ImageView;

    sget-object v4, Lx4/o0;->f:Lrh/c;

    const v6, 0x7f0804c9

    invoke-static {p1, p2, v4, v6}, Lx4/o0;->e(Ljava/lang/String;Landroid/widget/ImageView;Lrh/c;I)V

    :try_start_0
    iget-object p1, p0, Lfb/a$a;->b:Landroid/widget/TextView;

    iget-object p2, v5, Ljb/f;->a:Ljava/lang/String;

    invoke-virtual {v3, p2}, Li4/a;->f(Ljava/lang/String;)Li4/b;

    move-result-object p2

    invoke-virtual {p2}, Li4/b;->a()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    invoke-virtual {v1}, Ljb/b;->h()Ljb/j;

    move-result-object p1

    sget-object p2, Ljb/j;->c:Ljb/j;

    const/4 v1, 0x1

    const/4 v3, 0x0

    if-ne p1, p2, :cond_3

    invoke-virtual {v2, v1}, Landroid/view/View;->setFocusable(Z)V

    iget-object p1, p0, Lfb/a$a;->d:Lcom/miui/optimizemanage/view/StateCheckBox;

    const/16 p2, 0x8

    invoke-virtual {p1, p2}, Landroid/view/View;->setVisibility(I)V

    iget-object p1, p0, Lfb/a$a;->c:Landroid/widget/TextView;

    invoke-virtual {p1, p2}, Landroid/view/View;->setVisibility(I)V

    invoke-virtual {v2, v1}, Landroid/view/View;->setFocusable(Z)V

    invoke-virtual {v2, v3}, Landroid/view/View;->setClickable(Z)V

    goto :goto_3

    :cond_3
    iget-wide p1, v5, Ljb/f;->d:J

    invoke-static {v0, p1, p2}, Lsm/a;->a(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object p1

    iget-object p2, p0, Lfb/a$a;->c:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v2, 0x7f120f59

    new-array v4, v1, [Ljava/lang/Object;

    aput-object p1, v4, v3

    invoke-virtual {v0, v2, v4}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object p1, p0, Lfb/a$a;->c:Landroid/widget/TextView;

    invoke-virtual {p1, v3}, Landroid/view/View;->setVisibility(I)V

    iget-object p1, p0, Lfb/a$a;->d:Lcom/miui/optimizemanage/view/StateCheckBox;

    invoke-virtual {p1, v3}, Landroid/view/View;->setVisibility(I)V

    iget-object p1, p0, Lfb/a$a;->d:Lcom/miui/optimizemanage/view/StateCheckBox;

    iget-boolean p2, v5, Ljb/f;->m:Z

    if-eqz p2, :cond_4

    sget-object p2, Lcom/miui/optimizemanage/view/StateCheckBox$c;->c:Lcom/miui/optimizemanage/view/StateCheckBox$c;

    goto :goto_1

    :cond_4
    sget-object p2, Lcom/miui/optimizemanage/view/StateCheckBox$c;->a:Lcom/miui/optimizemanage/view/StateCheckBox$c;

    :goto_1
    invoke-virtual {p1, p2}, Lcom/miui/optimizemanage/view/StateCheckBox;->setState(Lcom/miui/optimizemanage/view/StateCheckBox$c;)V

    iget-object p1, p0, Lfb/a$a;->d:Lcom/miui/optimizemanage/view/StateCheckBox;

    iget-object p2, p0, Lfb/a$a;->g:Lfb/a;

    invoke-static {p2}, Lfb/a;->k(Lfb/a;)Ljb/i;

    move-result-object p2

    sget-object v0, Ljb/i;->d:Ljb/i;

    if-eq p2, v0, :cond_5

    goto :goto_2

    :cond_5
    move v1, v3

    :goto_2
    invoke-virtual {p1, v1}, Lcom/miui/optimizemanage/view/StateCheckBox;->setCheckEnable(Z)V

    :cond_6
    :goto_3
    return-void
.end method
