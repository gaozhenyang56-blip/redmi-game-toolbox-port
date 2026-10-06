.class public Ll2/a;
.super Ll2/c;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ll2/a$a;
    }
.end annotation


# instance fields
.field public d:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public e:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ll2/a$a;",
            ">;"
        }
    .end annotation
.end field

.field private f:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public g:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field public h:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field public i:Landroid/util/SparseBooleanArray;

.field private j:I

.field private k:Landroid/view/View;

.field private l:Landroidx/appcompat/app/ActionBar;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/view/View;Landroidx/appcompat/app/ActionBar;)V
    .locals 3

    invoke-direct {p0, p1}, Ll2/c;-><init>(Landroid/content/Context;)V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Ll2/a;->d:Ljava/util/List;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Ll2/a;->e:Ljava/util/List;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Ll2/a;->f:Ljava/util/HashMap;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Ll2/a;->g:Ljava/util/List;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Ll2/a;->h:Ljava/util/List;

    new-instance v0, Landroid/util/SparseBooleanArray;

    invoke-direct {v0}, Landroid/util/SparseBooleanArray;-><init>()V

    iput-object v0, p0, Ll2/a;->i:Landroid/util/SparseBooleanArray;

    const/4 v0, 0x0

    iput v0, p0, Ll2/a;->j:I

    if-eqz p2, :cond_0

    iput-object p2, p0, Ll2/a;->k:Landroid/view/View;

    iput-object p3, p0, Ll2/a;->l:Landroidx/appcompat/app/ActionBar;

    invoke-virtual {p2, v0}, Landroid/view/View;->setEnabled(Z)V

    :cond_0
    invoke-static {p1}, Lm2/f;->e(Landroid/content/Context;)Lorg/json/JSONArray;

    move-result-object p1

    if-eqz p1, :cond_1

    :goto_0
    invoke-virtual {p1}, Lorg/json/JSONArray;->length()I

    move-result p2

    if-ge v0, p2, :cond_1

    invoke-virtual {p1, v0}, Lorg/json/JSONArray;->optJSONObject(I)Lorg/json/JSONObject;

    move-result-object p2

    iget-object p3, p0, Ll2/a;->g:Ljava/util/List;

    iget v1, p0, Ll2/a;->j:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {p3, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object p3, p0, Ll2/a;->d:Ljava/util/List;

    const-string v1, "n"

    invoke-virtual {p2, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {p3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object p3, p0, Ll2/a;->h:Ljava/util/List;

    const-string v2, "l"

    invoke-virtual {p2, v2}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v2

    invoke-virtual {p2, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p0, v2, p2}, Ll2/a;->k(Lorg/json/JSONArray;Ljava/lang/String;)I

    move-result p2

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-interface {p3, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method


# virtual methods
.method protected b()I
    .locals 1

    const v0, 0x1020001

    return v0
.end method

.method protected c()I
    .locals 1

    const v0, 0x7f0e006a

    return v0
.end method

.method public d(IIZLandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 0

    const p3, 0x7f0b07e7

    invoke-virtual {p4, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p3

    check-cast p3, Landroid/widget/TextView;

    invoke-virtual {p0, p1, p2}, Ll2/a;->getChild(II)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ll2/a$a;

    iget-object p1, p1, Ll2/a$a;->a:Ljava/lang/String;

    invoke-virtual {p3, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-object p4
.end method

.method protected e()I
    .locals 1

    const v0, 0x1020001

    return v0
.end method

.method protected f()I
    .locals 1

    const v0, 0x7f0e006b

    return v0
.end method

.method protected g(IZLandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 7

    const p4, 0x7f0b07e7

    invoke-virtual {p3, p4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p4

    check-cast p4, Landroid/widget/TextView;

    const v0, 0x7f0b04f4

    invoke-virtual {p3, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-virtual {p0, p1}, Ll2/a;->getGroup(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {p4, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const p4, 0x7f0b056c

    const v1, 0x7f0b0571

    const/16 v2, 0x8

    const/4 v3, 0x0

    if-eqz p2, :cond_0

    invoke-virtual {p3, p4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    invoke-virtual {p2, v2}, Landroid/view/View;->setVisibility(I)V

    invoke-virtual {p3, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    goto :goto_0

    :cond_0
    invoke-virtual {p3, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    invoke-virtual {p2, v2}, Landroid/view/View;->setVisibility(I)V

    invoke-virtual {p3, p4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    :goto_0
    invoke-virtual {p2, v3}, Landroid/view/View;->setVisibility(I)V

    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    move p4, v3

    move v1, p4

    :goto_1
    iget-object v4, p0, Ll2/a;->h:Ljava/util/List;

    invoke-interface {v4, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    if-ge p4, v4, :cond_2

    iget-object v4, p0, Ll2/a;->i:Landroid/util/SparseBooleanArray;

    iget-object v5, p0, Ll2/a;->g:Ljava/util/List;

    invoke-interface {v5, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    add-int/2addr v5, p4

    invoke-virtual {v4, v5}, Landroid/util/SparseBooleanArray;->get(I)Z

    move-result v4

    if-eqz v4, :cond_1

    add-int/lit8 v1, v1, 0x1

    iget-object v4, p0, Ll2/a;->e:Ljava/util/List;

    iget-object v5, p0, Ll2/a;->g:Ljava/util/List;

    invoke-interface {v5, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    add-int/2addr v5, p4

    invoke-interface {v4, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ll2/a$a;

    invoke-interface {p2, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_1
    add-int/lit8 p4, p4, 0x1

    goto :goto_1

    :cond_2
    if-nez v1, :cond_3

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_3

    :cond_3
    iget-object p4, p0, Ll2/a;->h:Ljava/util/List;

    invoke-interface {p4, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    if-ne v1, p1, :cond_4

    iget-object p1, p0, Ll2/c;->c:Landroid/content/Context;

    const p2, 0x7f1200e5

    invoke-virtual {p1, p2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    :goto_2
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_3

    :cond_4
    const/4 p1, 0x1

    if-ne v1, p1, :cond_5

    iget-object p4, p0, Ll2/c;->c:Landroid/content/Context;

    const v1, 0x7f120f6f

    new-array p1, p1, [Ljava/lang/Object;

    invoke-interface {p2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ll2/a$a;

    iget-object p2, p2, Ll2/a$a;->a:Ljava/lang/String;

    aput-object p2, p1, v3

    invoke-virtual {p4, v1, p1}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    goto :goto_2

    :cond_5
    const/4 p4, 0x2

    if-ne v1, p4, :cond_6

    iget-object v1, p0, Ll2/c;->c:Landroid/content/Context;

    const v2, 0x7f121ae5

    new-array p4, p4, [Ljava/lang/Object;

    invoke-interface {p2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ll2/a$a;

    iget-object v4, v4, Ll2/a$a;->a:Ljava/lang/String;

    aput-object v4, p4, v3

    invoke-interface {p2, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ll2/a$a;

    iget-object p2, p2, Ll2/a$a;->a:Ljava/lang/String;

    aput-object p2, p4, p1

    invoke-virtual {v1, v2, p4}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    goto :goto_2

    :cond_6
    iget-object v2, p0, Ll2/c;->c:Landroid/content/Context;

    const v4, 0x7f1200c1

    const/4 v5, 0x3

    new-array v5, v5, [Ljava/lang/Object;

    invoke-interface {p2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ll2/a$a;

    iget-object v6, v6, Ll2/a$a;->a:Ljava/lang/String;

    aput-object v6, v5, v3

    invoke-interface {p2, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ll2/a$a;

    iget-object p2, p2, Ll2/a$a;->a:Ljava/lang/String;

    aput-object p2, v5, p1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, v5, p4

    invoke-virtual {v2, v4, v5}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    goto :goto_2

    :goto_3
    return-object p3
.end method

.method public getChild(II)Ljava/lang/Object;
    .locals 2

    iget-object v0, p0, Ll2/a;->e:Ljava/util/List;

    iget-object v1, p0, Ll2/a;->g:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    add-int/2addr p1, p2

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public getChildId(II)J
    .locals 1

    iget-object v0, p0, Ll2/a;->g:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    add-int/2addr p1, p2

    int-to-long p1, p1

    return-wide p1
.end method

.method public getChildrenCount(I)I
    .locals 2

    iget-object v0, p0, Ll2/a;->h:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    const/4 p1, 0x0

    return p1

    :cond_0
    iget-object v0, p0, Ll2/a;->h:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    return p1
.end method

.method public getGroup(I)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Ll2/a;->d:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public getGroupCount()I
    .locals 1

    iget-object v0, p0, Ll2/a;->d:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getGroupId(I)J
    .locals 2

    iget-object v0, p0, Ll2/a;->e:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    add-int/2addr v0, p1

    int-to-long v0, v0

    return-wide v0
.end method

.method public hasStableIds()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method protected i(IIZ)V
    .locals 3

    iget-object v0, p0, Ll2/a;->g:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iget-object v1, p0, Ll2/a;->i:Landroid/util/SparseBooleanArray;

    add-int/2addr p2, v0

    invoke-virtual {v1, p2, p3}, Landroid/util/SparseBooleanArray;->put(IZ)V

    const/4 p2, 0x0

    move p3, p2

    :goto_0
    iget-object v1, p0, Ll2/a;->h:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-ge p3, v1, :cond_1

    iget-object v1, p0, Ll2/a;->i:Landroid/util/SparseBooleanArray;

    add-int v2, v0, p3

    invoke-virtual {v1, v2}, Landroid/util/SparseBooleanArray;->get(I)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 p2, 0x1

    goto :goto_1

    :cond_0
    add-int/lit8 p3, p3, 0x1

    goto :goto_0

    :cond_1
    :goto_1
    iget-object p3, p0, Ll2/a;->i:Landroid/util/SparseBooleanArray;

    iget-object v0, p0, Ll2/a;->e:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    add-int/2addr p1, v0

    invoke-virtual {p3, p1, p2}, Landroid/util/SparseBooleanArray;->put(IZ)V

    invoke-virtual {p0}, Ll2/a;->m()V

    return-void
.end method

.method public isChildSelectable(II)Z
    .locals 0

    const/4 p1, 0x1

    return p1
.end method

.method protected j(IZ)V
    .locals 2

    invoke-virtual {p0, p1}, Ll2/a;->getChildrenCount(I)I

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Ll2/a;->g:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iget-object v1, p0, Ll2/a;->i:Landroid/util/SparseBooleanArray;

    invoke-virtual {v1, v0, p2}, Landroid/util/SparseBooleanArray;->put(IZ)V

    iget-object v0, p0, Ll2/a;->i:Landroid/util/SparseBooleanArray;

    iget-object v1, p0, Ll2/a;->e:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    add-int/2addr v1, p1

    invoke-virtual {v0, v1, p2}, Landroid/util/SparseBooleanArray;->put(IZ)V

    :cond_0
    invoke-virtual {p0}, Ll2/a;->m()V

    return-void
.end method

.method public k(Lorg/json/JSONArray;Ljava/lang/String;)I
    .locals 5

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p1}, Lorg/json/JSONArray;->length()I

    move-result v1

    if-ge v0, v1, :cond_0

    invoke-virtual {p1, v0}, Lorg/json/JSONArray;->optJSONObject(I)Lorg/json/JSONObject;

    move-result-object v1

    const-string v2, "n"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "c"

    invoke-virtual {v1, v3}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v1

    iget-object v3, p0, Ll2/a;->e:Ljava/util/List;

    new-instance v4, Ll2/a$a;

    invoke-direct {v4, p0, v2, v1, p2}, Ll2/a$a;-><init>(Ll2/a;Ljava/lang/String;ILjava/lang/String;)V

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v1, p0, Ll2/a;->f:Ljava/util/HashMap;

    invoke-virtual {v1, v2, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget v1, p0, Ll2/a;->j:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Ll2/a;->j:I

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Lorg/json/JSONArray;->length()I

    move-result p1

    return p1
.end method

.method public l(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Ll2/a;->f:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    return-object p1
.end method

.method public m()V
    .locals 6

    iget-object v0, p0, Ll2/a;->k:Landroid/view/View;

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_1

    iget v3, p0, Ll2/c;->b:I

    if-lez v3, :cond_0

    move v3, v1

    goto :goto_0

    :cond_0
    move v3, v2

    :goto_0
    invoke-virtual {v0, v3}, Landroid/view/View;->setEnabled(Z)V

    :cond_1
    iget-object v0, p0, Ll2/a;->l:Landroidx/appcompat/app/ActionBar;

    if-eqz v0, :cond_3

    iget v3, p0, Ll2/c;->b:I

    if-lez v3, :cond_2

    iget-object v3, p0, Ll2/c;->c:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f1217ef

    new-array v1, v1, [Ljava/lang/Object;

    iget v5, p0, Ll2/c;->b:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v1, v2

    invoke-virtual {v3, v4, v1}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroidx/appcompat/app/ActionBar;->setTitle(Ljava/lang/CharSequence;)V

    goto :goto_1

    :cond_2
    const v1, 0x7f1217ee

    invoke-virtual {v0, v1}, Landroidx/appcompat/app/ActionBar;->setTitle(I)V

    :cond_3
    :goto_1
    invoke-virtual {p0}, Landroid/widget/BaseExpandableListAdapter;->notifyDataSetChanged()V

    return-void
.end method
