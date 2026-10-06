.class public Lcom/miui/gamebooster/predownload/b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lq6/b;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/gamebooster/predownload/b$c;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lq6/b<",
        "Li7/a;",
        ">;"
    }
.end annotation


# instance fields
.field private final a:Lcom/miui/gamebooster/predownload/b$c;


# direct methods
.method public constructor <init>(Lcom/miui/gamebooster/predownload/b$c;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/miui/gamebooster/predownload/b;->a:Lcom/miui/gamebooster/predownload/b$c;

    return-void
.end method

.method public static synthetic f(Lcom/miui/gamebooster/predownload/b;Landroid/widget/TextView;Li7/a;Ljava/lang/String;Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/miui/gamebooster/predownload/b;->k(Landroid/widget/TextView;Li7/a;Ljava/lang/String;Landroid/content/Context;)V

    return-void
.end method

.method static synthetic g(Lcom/miui/gamebooster/predownload/b;)Lcom/miui/gamebooster/predownload/b$c;
    .locals 0

    iget-object p0, p0, Lcom/miui/gamebooster/predownload/b;->a:Lcom/miui/gamebooster/predownload/b$c;

    return-object p0
.end method

.method static synthetic h(Lcom/miui/gamebooster/predownload/b;Landroid/content/Context;Landroid/widget/TextView;Ljava/lang/String;Li7/a;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/miui/gamebooster/predownload/b;->m(Landroid/content/Context;Landroid/widget/TextView;Ljava/lang/String;Li7/a;)V

    return-void
.end method

.method private synthetic k(Landroid/widget/TextView;Li7/a;Ljava/lang/String;Landroid/content/Context;)V
    .locals 0

    invoke-virtual {p0, p1, p2}, Lcom/miui/gamebooster/predownload/b;->n(Landroid/widget/TextView;Li7/a;)V

    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_0

    const/4 p1, 0x0

    invoke-static {p4, p3, p1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    :cond_0
    return-void
.end method

.method private m(Landroid/content/Context;Landroid/widget/TextView;Ljava/lang/String;Li7/a;)V
    .locals 7

    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Runnable;

    invoke-virtual {p2, v0}, Landroid/view/View;->removeCallbacks(Ljava/lang/Runnable;)Z

    new-instance v0, Li7/e;

    move-object v1, v0

    move-object v2, p0

    move-object v3, p2

    move-object v4, p4

    move-object v5, p3

    move-object v6, p1

    invoke-direct/range {v1 .. v6}, Li7/e;-><init>(Lcom/miui/gamebooster/predownload/b;Landroid/widget/TextView;Li7/a;Ljava/lang/String;Landroid/content/Context;)V

    invoke-virtual {p2, v0}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    return-void
.end method


# virtual methods
.method public synthetic a()Z
    .locals 1

    invoke-static {p0}, Lq6/a;->b(Lq6/b;)Z

    move-result v0

    return v0
.end method

.method public b()I
    .locals 1

    const v0, 0x7f0e0203

    return v0
.end method

.method public bridge synthetic c(Lq6/i;Ljava/lang/Object;I)V
    .locals 0

    check-cast p2, Li7/a;

    invoke-virtual {p0, p1, p2, p3}, Lcom/miui/gamebooster/predownload/b;->i(Lq6/i;Li7/a;I)V

    return-void
.end method

.method public bridge synthetic d(Ljava/lang/Object;I)Z
    .locals 0

    check-cast p1, Li7/a;

    invoke-virtual {p0, p1, p2}, Lcom/miui/gamebooster/predownload/b;->j(Li7/a;I)Z

    move-result p1

    return p1
.end method

.method public synthetic e()Landroid/view/View;
    .locals 1

    invoke-static {p0}, Lq6/a;->c(Lq6/b;)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public i(Lq6/i;Li7/a;I)V
    .locals 5

    iget-object v0, p2, Li7/a;->a:Ljava/lang/String;

    const-string v1, "pkg_icon://"

    invoke-virtual {v1, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const v1, 0x7f0b0530

    invoke-virtual {p1, v1}, Lq6/i;->e(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    sget-object v2, Lx4/o0;->f:Lrh/c;

    invoke-virtual {p1}, Lq6/i;->d()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0806a8

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-static {v0, v1, v2, v3}, Lx4/o0;->f(Ljava/lang/String;Landroid/widget/ImageView;Lrh/c;Landroid/graphics/drawable/Drawable;)V

    iget-object v0, p2, Li7/a;->c:Ljava/lang/String;

    const v1, 0x7f0b0be6

    invoke-virtual {p1, v1, v0}, Lq6/i;->f(ILjava/lang/String;)Lq6/i;

    const v0, 0x7f0b0948

    invoke-virtual {p1, v0}, Lq6/i;->e(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/miui/gamebooster/widget/SwitchButton;

    iget-boolean v2, p2, Li7/a;->b:Z

    invoke-virtual {v1, v2}, Lcom/miui/gamebooster/widget/SwitchButton;->setCheckedImmediatelyNoEvent(Z)V

    const v1, 0x7f0b01bd

    invoke-virtual {p1, v1}, Lq6/i;->e(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    invoke-virtual {p0, v1, p2}, Lcom/miui/gamebooster/predownload/b;->n(Landroid/widget/TextView;Li7/a;)V

    invoke-virtual {p1, v0}, Lq6/i;->e(I)Landroid/view/View;

    move-result-object v0

    new-instance v1, Lcom/miui/gamebooster/predownload/b$a;

    invoke-direct {v1, p0, p2, p3, p1}, Lcom/miui/gamebooster/predownload/b$a;-><init>(Lcom/miui/gamebooster/predownload/b;Li7/a;ILq6/i;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public j(Li7/a;I)Z
    .locals 0

    iget-object p1, p1, Li7/a;->a:Ljava/lang/String;

    const-string p2, "com.tencent.tmgp.sgame"

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    xor-int/lit8 p1, p1, 0x1

    return p1
.end method

.method protected l(Lj7/a;)Z
    .locals 0

    invoke-virtual {p1}, Lj7/a;->c()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    return p1
.end method

.method protected n(Landroid/widget/TextView;Li7/a;)V
    .locals 4

    iget-object v0, p2, Li7/a;->d:Lj7/a;

    if-eqz p1, :cond_6

    if-nez v0, :cond_0

    goto :goto_3

    :cond_0
    invoke-static {}, Lx4/y1;->f()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-static {p1}, Le8/a;->a(Landroid/view/View;)V

    :cond_1
    invoke-virtual {v0}, Lj7/a;->f()Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_2

    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {v0}, Lj7/a;->g()Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    const/4 v1, 0x1

    goto :goto_0

    :cond_2
    move v1, v2

    :goto_0
    if-eqz v1, :cond_3

    goto :goto_1

    :cond_3
    const/16 v2, 0x8

    :goto_1
    invoke-static {p1, v2}, Ldb/i;->k(Landroid/view/View;I)V

    if-nez v1, :cond_4

    return-void

    :cond_4
    iget-boolean v1, p2, Li7/a;->b:Z

    invoke-virtual {p1, v1}, Landroid/view/View;->setActivated(Z)V

    invoke-virtual {p0, v0}, Lcom/miui/gamebooster/predownload/b;->l(Lj7/a;)Z

    move-result v1

    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setSelected(Z)V

    invoke-virtual {p0, v0}, Lcom/miui/gamebooster/predownload/b;->l(Lj7/a;)Z

    move-result v1

    if-eqz v1, :cond_5

    const v1, 0x7f120a97

    goto :goto_2

    :cond_5
    const v1, 0x7f120a8d

    :goto_2
    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setText(I)V

    new-instance v1, Lcom/miui/gamebooster/predownload/b$b;

    invoke-direct {v1, p0, p2, v0, p1}, Lcom/miui/gamebooster/predownload/b$b;-><init>(Lcom/miui/gamebooster/predownload/b;Li7/a;Lj7/a;Landroid/widget/TextView;)V

    invoke-virtual {p1, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_6
    :goto_3
    return-void
.end method
