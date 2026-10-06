.class public Ll4/d;
.super Ll4/b;
.source "SourceFile"


# instance fields
.field private d:Ljava/lang/String;

.field private e:Ljava/lang/String;

.field private f:Ljava/lang/String;

.field private g:I

.field private h:Ljava/lang/String;

.field private i:Ljava/lang/String;

.field private j:I

.field private k:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ll4/b;",
            ">;"
        }
    .end annotation
.end field

.field private l:I

.field private m:Z

.field private n:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lorg/json/JSONObject;)V
    .locals 2

    invoke-direct {p0}, Ll4/b;-><init>()V

    const/4 v0, 0x1

    iput v0, p0, Ll4/d;->g:I

    const-string v1, "item"

    iput-object v1, p0, Ll4/d;->i:Ljava/lang/String;

    iput v0, p0, Ll4/d;->j:I

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Ll4/d;->k:Ljava/util/List;

    const-string v1, "title"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Ll4/d;->d:Ljava/lang/String;

    const-string v1, "summary"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Ll4/d;->e:Ljava/lang/String;

    const-string v1, "category"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Ll4/d;->f:Ljava/lang/String;

    const-string v1, "cornerTip"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Ll4/d;->h:Ljava/lang/String;

    const-string v1, "template"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Ll4/d;->g:I

    const-string v1, "rowType"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Ll4/d;->i:Ljava/lang/String;

    const-string v1, "perpage"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Ll4/d;->j:I

    const-string v1, "id"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Ll4/d;->n:Ljava/lang/String;

    const-string v1, "visible"

    invoke-virtual {p1, v1, v0}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result p1

    iput-boolean p1, p0, Ll4/d;->m:Z

    return-void
.end method

.method public static i(I)Z
    .locals 2

    const/4 v0, 0x1

    if-eq p0, v0, :cond_0

    const/4 v1, 0x2

    if-eq p0, v1, :cond_0

    const/4 v1, 0x5

    if-eq p0, v1, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    return v0
.end method


# virtual methods
.method public a(ILandroid/view/View;Landroid/content/Context;Ll4/f;)V
    .locals 1

    invoke-super {p0, p1, p2, p3, p4}, Ll4/b;->a(ILandroid/view/View;Landroid/content/Context;Ll4/f;)V

    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ll4/f0;

    iget-object p2, p1, Ll4/f0;->a:Landroid/widget/TextView;

    iget-object p3, p0, Ll4/d;->d:Ljava/lang/String;

    invoke-virtual {p2, p3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object p2, p0, Ll4/d;->h:Ljava/lang/String;

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    const/16 p3, 0x8

    const/4 p4, 0x0

    if-eqz p2, :cond_0

    iget-object p2, p1, Ll4/f0;->b:Landroid/widget/TextView;

    invoke-virtual {p2, p3}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    :cond_0
    iget-object p2, p1, Ll4/f0;->b:Landroid/widget/TextView;

    iget-object v0, p0, Ll4/d;->h:Ljava/lang/String;

    invoke-virtual {p2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object p2, p1, Ll4/f0;->b:Landroid/widget/TextView;

    invoke-virtual {p2, p4}, Landroid/view/View;->setVisibility(I)V

    :goto_0
    iget p2, p0, Ll4/d;->g:I

    const/4 v0, 0x2

    if-ne p2, v0, :cond_1

    iget-object p2, p0, Ll4/d;->k:Ljava/util/List;

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result p2

    iget v0, p0, Ll4/d;->j:I

    if-le p2, v0, :cond_1

    iget-object p2, p1, Ll4/f0;->d:Landroid/widget/TextView;

    invoke-virtual {p2, p4}, Landroid/view/View;->setVisibility(I)V

    iget-object p1, p1, Ll4/f0;->d:Landroid/widget/TextView;

    invoke-virtual {p1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_1

    :cond_1
    iget-object p1, p1, Ll4/f0;->d:Landroid/widget/TextView;

    invoke-virtual {p1, p3}, Landroid/view/View;->setVisibility(I)V

    :goto_1
    return-void
.end method

.method public b()I
    .locals 1

    const v0, 0x7f0e0523

    return v0
.end method

.method public d(Ll4/b;)V
    .locals 1

    iget-object v0, p0, Ll4/d;->k:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public e()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Ll4/d;->n:Ljava/lang/String;

    return-object v0
.end method

.method public f()I
    .locals 1

    iget v0, p0, Ll4/d;->j:I

    return v0
.end method

.method public g()I
    .locals 1

    iget v0, p0, Ll4/d;->g:I

    return v0
.end method

.method public h()I
    .locals 1

    iget-object v0, p0, Ll4/d;->k:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public j()Z
    .locals 2

    iget v0, p0, Ll4/d;->g:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public k()Z
    .locals 1

    iget-boolean v0, p0, Ll4/d;->m:Z

    return v0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 4

    iget p1, p0, Ll4/d;->g:I

    const/4 v0, 0x2

    if-ne p1, v0, :cond_3

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iget v1, p0, Ll4/d;->l:I

    :goto_0
    iget-object v2, p0, Ll4/d;->k:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_0

    iget v2, p0, Ll4/d;->l:I

    iget v3, p0, Ll4/d;->j:I

    add-int/2addr v2, v3

    if-ge v1, v2, :cond_0

    iget-object v2, p0, Ll4/d;->k:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ll4/b;

    invoke-interface {p1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    iget v1, p0, Ll4/d;->l:I

    iget v2, p0, Ll4/d;->j:I

    add-int/2addr v1, v2

    iput v1, p0, Ll4/d;->l:I

    iget-object v2, p0, Ll4/d;->k:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-lt v1, v2, :cond_1

    const/4 v1, 0x0

    iput v1, p0, Ll4/d;->l:I

    :cond_1
    iget v1, p0, Ll4/d;->l:I

    :goto_1
    iget-object v2, p0, Ll4/d;->k:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_2

    iget v2, p0, Ll4/d;->l:I

    iget v3, p0, Ll4/d;->j:I

    add-int/2addr v2, v3

    if-ge v1, v2, :cond_2

    iget-object v2, p0, Ll4/d;->k:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ll4/b;

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_2
    iget-object v1, p0, Ll4/b;->b:Ll4/f;

    invoke-virtual {v1, p0, p1, v0}, Ll4/f;->d(Ll4/b;Ljava/util/List;Ljava/util/List;)V

    :cond_3
    return-void
.end method
