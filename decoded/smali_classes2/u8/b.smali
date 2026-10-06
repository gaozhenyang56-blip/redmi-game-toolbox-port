.class public Lu8/b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lq6/b;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lq6/b<",
        "Lcom/miui/gamebooster/model/n;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static synthetic f(Lu8/b;Lq6/i;Lcom/miui/gamebooster/model/n;ILandroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3, p4}, Lu8/b;->l(Lq6/i;Lcom/miui/gamebooster/model/n;ILandroid/view/View;)V

    return-void
.end method

.method private h()Ljava/lang/String;
    .locals 2

    :try_start_0
    const-string v0, "key_currentbooster_pkg_uid"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lr4/a;->l(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    aget-object v0, v0, v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    const-string v0, ""

    return-object v0
.end method

.method private j(Landroid/content/Context;Ln6/c;)Z
    .locals 2

    invoke-virtual {p2}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Ln6/c;->y:Ln6/c;

    invoke-virtual {v1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {p1}, La8/i2;->c(Landroid/content/Context;)Z

    move-result p1

    return p1

    :cond_0
    invoke-virtual {p2}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object p1

    sget-object p2, Ln6/c;->n:Ln6/c;

    invoke-virtual {p2}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_1

    invoke-static {}, La8/y0;->f()Z

    move-result p1

    return p1

    :cond_1
    const/4 p1, 0x1

    return p1
.end method

.method private synthetic l(Lq6/i;Lcom/miui/gamebooster/model/n;ILandroid/view/View;)V
    .locals 1

    invoke-virtual {p1}, Lq6/i;->d()Landroid/content/Context;

    move-result-object p4

    invoke-virtual {p2}, Lcom/miui/gamebooster/model/n;->l()Ln6/c;

    move-result-object v0

    invoke-direct {p0, p4, v0}, Lu8/b;->j(Landroid/content/Context;Ln6/c;)Z

    move-result p4

    if-eqz p4, :cond_0

    invoke-virtual {p0, p3, p1, p2}, Lu8/b;->k(ILq6/i;Lcom/miui/gamebooster/model/n;)V

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Lq6/i;->d()Landroid/content/Context;

    move-result-object p3

    invoke-static {p3}, Ls8/h;->I0(Landroid/content/Context;)V

    invoke-virtual {p1}, Lq6/i;->d()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p2}, Lcom/miui/gamebooster/model/n;->d()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/miui/gamebooster/common/MarketDownloadV2Activity;->f0(Landroid/content/Context;Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method private m(Lcom/miui/gamebooster/model/n;Landroid/view/View;)V
    .locals 5

    if-eqz p1, :cond_9

    if-nez p2, :cond_0

    goto :goto_3

    :cond_0
    invoke-virtual {p2}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {p0}, Lu8/b;->h()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lu8/b$a;->a:[I

    invoke-virtual {p1}, Lcom/miui/gamebooster/model/n;->l()Ln6/c;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    aget p1, v2, p1

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eq p1, v2, :cond_7

    const/4 v4, 0x2

    if-eq p1, v4, :cond_3

    const/4 v0, 0x4

    if-eq p1, v0, :cond_2

    const/4 v0, 0x5

    if-eq p1, v0, :cond_1

    goto :goto_1

    :cond_1
    invoke-static {}, La8/o0;->k()Z

    move-result v3

    goto :goto_1

    :cond_2
    invoke-static {}, Li6/a;->h()Li6/a;

    move-result-object p1

    invoke-virtual {p1}, Li6/a;->i()Z

    move-result v3

    goto :goto_1

    :cond_3
    const-string p1, "key_gb_record_ai"

    invoke-static {p1, v1}, La8/i2;->e(Ljava/lang/String;Ljava/lang/String;)Z

    move-result p1

    const-string v4, "key_gb_record_manual"

    invoke-static {v4, v1}, La8/i2;->e(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    if-nez p1, :cond_5

    if-eqz v1, :cond_4

    goto :goto_0

    :cond_4
    move v2, v3

    :cond_5
    :goto_0
    invoke-static {v0}, La8/i2;->c(Landroid/content/Context;)Z

    move-result p1

    if-nez p1, :cond_6

    goto :goto_1

    :cond_6
    move v3, v2

    goto :goto_1

    :cond_7
    invoke-static {}, La8/j2;->d()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, La8/j2;->g(Ljava/lang/String;)Z

    move-result p1

    xor-int/lit8 v3, p1, 0x1

    :goto_1
    if-eqz v3, :cond_8

    const p1, 0x7f0806b1

    goto :goto_2

    :cond_8
    const p1, 0x7f0806b0

    :goto_2
    invoke-virtual {p2, p1}, Landroid/view/View;->setBackgroundResource(I)V

    :cond_9
    :goto_3
    return-void
.end method


# virtual methods
.method public a()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public b()I
    .locals 1

    const v0, 0x7f0e01a6

    return v0
.end method

.method public bridge synthetic c(Lq6/i;Ljava/lang/Object;I)V
    .locals 0

    check-cast p2, Lcom/miui/gamebooster/model/n;

    invoke-virtual {p0, p1, p2, p3}, Lu8/b;->g(Lq6/i;Lcom/miui/gamebooster/model/n;I)V

    return-void
.end method

.method public bridge synthetic d(Ljava/lang/Object;I)Z
    .locals 0

    check-cast p1, Lcom/miui/gamebooster/model/n;

    invoke-virtual {p0, p1, p2}, Lu8/b;->i(Lcom/miui/gamebooster/model/n;I)Z

    move-result p1

    return p1
.end method

.method public synthetic e()Landroid/view/View;
    .locals 1

    invoke-static {p0}, Lq6/a;->c(Lq6/b;)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public g(Lq6/i;Lcom/miui/gamebooster/model/n;I)V
    .locals 4

    invoke-virtual {p2}, Lcom/miui/gamebooster/model/n;->e()I

    move-result v0

    invoke-static {v0}, Lt6/a;->d(I)Ljava/lang/String;

    move-result-object v0

    const v1, 0x7f0b044c

    invoke-virtual {p1, v1}, Lq6/i;->e(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    const v2, 0x7f0b0445

    invoke-virtual {p1, v2}, Lq6/i;->e(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p2}, Lcom/miui/gamebooster/model/n;->i()Ljava/lang/String;

    move-result-object v0

    :goto_0
    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {p2}, Lcom/miui/gamebooster/model/n;->e()I

    move-result v0

    invoke-static {v0}, Lt6/a;->c(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_1

    goto :goto_1

    :cond_1
    invoke-virtual {p2}, Lcom/miui/gamebooster/model/n;->h()Ljava/lang/String;

    move-result-object v0

    :goto_1
    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-static {v1}, La8/d2;->a(Landroid/widget/TextView;)V

    invoke-static {v2}, La8/d2;->a(Landroid/widget/TextView;)V

    const v0, 0x7f0b0447

    invoke-virtual {p1, v0}, Lq6/i;->e(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    invoke-virtual {p2}, Lcom/miui/gamebooster/model/n;->k()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    iget-object v0, p1, Landroidx/recyclerview/widget/RecyclerView$c0;->itemView:Landroid/view/View;

    invoke-direct {p0, p2, v0}, Lu8/b;->m(Lcom/miui/gamebooster/model/n;Landroid/view/View;)V

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1d

    if-lt v0, v1, :cond_2

    iget-object v0, p1, Landroidx/recyclerview/widget/RecyclerView$c0;->itemView:Landroid/view/View;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/miui/dock/sidebar/h;->a(Landroid/view/View;Z)V

    :cond_2
    iget-object v0, p1, Landroidx/recyclerview/widget/RecyclerView$c0;->itemView:Landroid/view/View;

    new-instance v1, Lu8/a;

    invoke-direct {v1, p0, p1, p2, p3}, Lu8/a;-><init>(Lu8/b;Lq6/i;Lcom/miui/gamebooster/model/n;I)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object p1, p1, Landroidx/recyclerview/widget/RecyclerView$c0;->itemView:Landroid/view/View;

    invoke-static {p1}, Le8/a;->a(Landroid/view/View;)V

    return-void
.end method

.method public i(Lcom/miui/gamebooster/model/n;I)Z
    .locals 0

    sget-object p2, Ln6/h;->c:Ln6/h;

    invoke-virtual {p1}, Lcom/miui/gamebooster/model/n;->j()Ln6/h;

    move-result-object p1

    if-ne p2, p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public k(ILq6/i;Lcom/miui/gamebooster/model/n;)V
    .locals 0

    iget-object p1, p2, Landroidx/recyclerview/widget/RecyclerView$c0;->itemView:Landroid/view/View;

    invoke-static {p1}, Le8/a;->a(Landroid/view/View;)V

    return-void
.end method
