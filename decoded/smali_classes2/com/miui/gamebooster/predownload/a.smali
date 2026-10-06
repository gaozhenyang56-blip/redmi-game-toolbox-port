.class public Lcom/miui/gamebooster/predownload/a;
.super Lcom/miui/gamebooster/predownload/b;
.source "SourceFile"


# direct methods
.method public constructor <init>(Lcom/miui/gamebooster/predownload/b$c;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/miui/gamebooster/predownload/b;-><init>(Lcom/miui/gamebooster/predownload/b$c;)V

    return-void
.end method


# virtual methods
.method public bridge synthetic d(Ljava/lang/Object;I)Z
    .locals 0

    check-cast p1, Li7/a;

    invoke-virtual {p0, p1, p2}, Lcom/miui/gamebooster/predownload/a;->j(Li7/a;I)Z

    move-result p1

    return p1
.end method

.method public j(Li7/a;I)Z
    .locals 0

    iget-object p1, p1, Li7/a;->a:Ljava/lang/String;

    const-string p2, "com.tencent.tmgp.sgame"

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method protected n(Landroid/widget/TextView;Li7/a;)V
    .locals 2

    iget-object v0, p2, Li7/a;->d:Lj7/a;

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-boolean v1, p2, Li7/a;->b:Z

    invoke-virtual {p1, v1}, Landroid/view/View;->setActivated(Z)V

    invoke-virtual {v0}, Lj7/a;->f()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-static {}, Lk7/f;->k()Lk7/f;

    move-result-object v1

    invoke-virtual {v1}, Lk7/f;->m()Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 v1, 0x0

    goto :goto_0

    :cond_1
    const/16 v1, 0x8

    :goto_0
    invoke-static {p1, v1}, Ldb/i;->k(Landroid/view/View;I)V

    invoke-virtual {p0, v0}, Lcom/miui/gamebooster/predownload/b;->l(Lj7/a;)Z

    move-result v1

    if-eqz v1, :cond_2

    const v1, 0x7f120a97

    goto :goto_1

    :cond_2
    const v1, 0x7f120a8d

    :goto_1
    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setText(I)V

    invoke-virtual {p0, v0}, Lcom/miui/gamebooster/predownload/b;->l(Lj7/a;)Z

    move-result v1

    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setSelected(Z)V

    invoke-static {}, Lx4/y1;->f()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-static {p1}, Le8/a;->a(Landroid/view/View;)V

    :cond_3
    new-instance v1, Lcom/miui/gamebooster/predownload/a$a;

    invoke-direct {v1, p0, p2, v0}, Lcom/miui/gamebooster/predownload/a$a;-><init>(Lcom/miui/gamebooster/predownload/a;Li7/a;Lj7/a;)V

    invoke-virtual {p1, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method
