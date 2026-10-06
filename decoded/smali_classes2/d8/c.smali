.class public Ld8/c;
.super Landroid/widget/BaseAdapter;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ld8/c$b;,
        Ld8/c$a;
    }
.end annotation


# instance fields
.field private a:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lh8/b;",
            ">;"
        }
    .end annotation
.end field

.field private b:Z


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Ld8/c;->a:Ljava/util/List;

    const/4 v0, 0x1

    iput-boolean v0, p0, Ld8/c;->b:Z

    invoke-static {}, Lcom/miui/securitycenter/Application;->A()Lcom/miui/securitycenter/Application;

    move-result-object v0

    sget-object v1, Lg8/a;->e:Lg8/a;

    invoke-static {v0, v1}, Lf8/a;->e(Landroid/content/Context;Lg8/a;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Ld8/c;->a:Ljava/util/List;

    return-void
.end method

.method private a(Landroid/view/View;)V
    .locals 1

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object p1

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/graphics/drawable/Drawable;->setAutoMirrored(Z)V

    :cond_1
    :goto_0
    return-void
.end method


# virtual methods
.method public b(I)Lh8/b;
    .locals 1

    iget-object v0, p0, Ld8/c;->a:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lh8/b;

    return-object p1
.end method

.method public c(Z)V
    .locals 0

    iput-boolean p1, p0, Ld8/c;->b:Z

    return-void
.end method

.method public getCount()I
    .locals 2

    iget-object v0, p0, Ld8/c;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    iget-object v1, p0, Ld8/c;->a:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    rem-int/lit8 v1, v1, 0x2

    add-int/2addr v0, v1

    return v0
.end method

.method public bridge synthetic getItem(I)Ljava/lang/Object;
    .locals 0

    invoke-virtual {p0, p1}, Ld8/c;->b(I)Lh8/b;

    move-result-object p1

    return-object p1
.end method

.method public getItemId(I)J
    .locals 2

    int-to-long v0, p1

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 2

    if-nez p2, :cond_0

    invoke-virtual {p3}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-static {p2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p2

    const v0, 0x7f0e0532

    const/4 v1, 0x0

    invoke-virtual {p2, v0, p3, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p2

    new-instance p3, Ld8/c$b;

    invoke-direct {p3}, Ld8/c$b;-><init>()V

    iget-object v0, p3, Ld8/c$b;->a:Ld8/c$a;

    const v1, 0x7f0b0598

    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/FrameLayout;

    iput-object v1, v0, Ld8/c$a;->a:Landroid/widget/FrameLayout;

    iget-object v0, p3, Ld8/c$b;->a:Ld8/c$a;

    const v1, 0x7f0b054d

    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/miui/gamebooster/videobox/view/DisplayStyleImageView;

    iput-object v1, v0, Ld8/c$a;->c:Lcom/miui/gamebooster/videobox/view/DisplayStyleImageView;

    iget-object v0, p3, Ld8/c$b;->a:Ld8/c$a;

    const v1, 0x7f0b0bca

    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, v0, Ld8/c$a;->b:Landroid/widget/TextView;

    iget-object v0, p3, Ld8/c$b;->a:Ld8/c$a;

    iget-object v0, v0, Ld8/c$a;->b:Landroid/widget/TextView;

    invoke-direct {p0, v0}, Ld8/c;->a(Landroid/view/View;)V

    iget-object v0, p3, Ld8/c$b;->b:Ld8/c$a;

    const v1, 0x7f0b0599

    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/FrameLayout;

    iput-object v1, v0, Ld8/c$a;->a:Landroid/widget/FrameLayout;

    iget-object v0, p3, Ld8/c$b;->b:Ld8/c$a;

    const v1, 0x7f0b054f

    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/miui/gamebooster/videobox/view/DisplayStyleImageView;

    iput-object v1, v0, Ld8/c$a;->c:Lcom/miui/gamebooster/videobox/view/DisplayStyleImageView;

    iget-object v0, p3, Ld8/c$b;->b:Ld8/c$a;

    const v1, 0x7f0b0bcb

    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, v0, Ld8/c$a;->b:Landroid/widget/TextView;

    iget-object v0, p3, Ld8/c$b;->b:Ld8/c$a;

    iget-object v0, v0, Ld8/c$a;->b:Landroid/widget/TextView;

    invoke-direct {p0, v0}, Ld8/c;->a(Landroid/view/View;)V

    invoke-virtual {p2, p3}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    :cond_0
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ld8/c$b;

    mul-int/lit8 p1, p1, 0x2

    add-int/lit8 v0, p1, 0x1

    if-eqz p3, :cond_2

    iget-object v1, p0, Ld8/c;->a:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge p1, v1, :cond_2

    iget-object v1, p0, Ld8/c;->a:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lh8/c;

    iget-object v1, p0, Ld8/c;->a:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    iget-object v1, p0, Ld8/c;->a:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lh8/c;

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p3, p1, v0, p0}, Ld8/c$b;->a(Lh8/c;Lh8/c;Landroid/view/View$OnClickListener;)V

    :cond_2
    return-object p2
.end method

.method public onClick(Landroid/view/View;)V
    .locals 5

    iget-boolean v0, p0, Ld8/c;->b:Z

    if-eqz v0, :cond_4

    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_4

    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    instance-of v0, v0, Lh8/c;

    if-nez v0, :cond_0

    goto :goto_2

    :cond_0
    invoke-static {}, Lj8/p;->o()V

    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lh8/c;

    iget-object v1, p0, Ld8/c;->a:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_1
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lh8/b;

    instance-of v3, v2, Lh8/c;

    if-eqz v3, :cond_1

    check-cast v2, Lh8/c;

    invoke-virtual {v2}, Lh8/c;->g()I

    move-result v3

    invoke-virtual {v0}, Lh8/c;->g()I

    move-result v4

    if-ne v3, v4, :cond_2

    const/4 v3, 0x1

    goto :goto_1

    :cond_2
    const/4 v3, 0x0

    :goto_1
    invoke-virtual {v2, v3}, Lh8/c;->j(Z)V

    goto :goto_0

    :cond_3
    invoke-virtual {v0, p1}, Lh8/c;->onClick(Landroid/view/View;)V

    invoke-virtual {p0}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    invoke-virtual {v0}, Lh8/c;->g()I

    move-result p1

    invoke-static {p1}, Lcom/miui/gamebooster/utils/a$o;->m(I)V

    return-void

    :cond_4
    :goto_2
    const-string p1, "DisplayStyleSettings"

    const-string v0, "Display style click failed."

    invoke-static {p1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method
