.class public Ld8/d;
.super Landroid/widget/BaseAdapter;
.source "SourceFile"

# interfaces
.implements Lk8/b;
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ld8/d$b;,
        Ld8/d$a;
    }
.end annotation


# static fields
.field private static d:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lh8/b;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private a:Z

.field private b:Z

.field private c:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Ld8/d;->d:Ljava/util/List;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Ld8/d;->a:Z

    invoke-static {}, Lcom/miui/securitycenter/Application;->A()Lcom/miui/securitycenter/Application;

    move-result-object v0

    sget-object v1, Lg8/a;->m:Lg8/a;

    invoke-static {v0, v1}, Lf8/a;->e(Landroid/content/Context;Lg8/a;)Ljava/util/List;

    move-result-object v0

    sput-object v0, Ld8/d;->d:Ljava/util/List;

    invoke-static {}, La8/t;->k()Z

    move-result v0

    iput-boolean v0, p0, Ld8/d;->b:Z

    return-void
.end method


# virtual methods
.method public a(Lk8/a;I)V
    .locals 1

    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    instance-of v0, v0, Lh8/d;

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lh8/d;

    invoke-virtual {v0, p2}, Lh8/d;->k(I)V

    invoke-virtual {v0, p1}, Lh8/d;->onClick(Landroid/view/View;)V

    invoke-virtual {v0}, Lh8/d;->g()I

    move-result p1

    invoke-virtual {v0}, Lh8/d;->i()I

    move-result p2

    invoke-static {p1, p2}, Lcom/miui/gamebooster/utils/a$o;->o(II)V

    return-void

    :cond_1
    :goto_0
    const-string p1, "DolbySettingsAdapter"

    const-string p2, "Model can not be null and must instance of DolbySettingsModel"

    invoke-static {p1, p2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public b(I)Lh8/b;
    .locals 1

    sget-object v0, Ld8/d;->d:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lh8/b;

    return-object p1
.end method

.method public c(Z)V
    .locals 0

    iput-boolean p1, p0, Ld8/d;->c:Z

    invoke-virtual {p0}, Ld8/d;->d()V

    invoke-virtual {p0}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    return-void
.end method

.method public d()V
    .locals 1

    invoke-static {}, La8/t;->k()Z

    move-result v0

    iput-boolean v0, p0, Ld8/d;->b:Z

    const/4 v0, 0x1

    iput-boolean v0, p0, Ld8/d;->a:Z

    return-void
.end method

.method public getCount()I
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public bridge synthetic getItem(I)Ljava/lang/Object;
    .locals 0

    invoke-virtual {p0, p1}, Ld8/d;->b(I)Lh8/b;

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

    const/4 p1, 0x0

    if-nez p2, :cond_0

    invoke-virtual {p3}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-static {p2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p2

    const v0, 0x7f0e0533

    invoke-virtual {p2, v0, p3, p1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p2

    new-instance p3, Ld8/d$b;

    invoke-direct {p3}, Ld8/d$b;-><init>()V

    const v0, 0x7f0b09de

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lmiuix/slidingwidget/widget/SlidingButton;

    iput-object v0, p3, Ld8/d$b;->c:Lmiuix/slidingwidget/widget/SlidingButton;

    const v0, 0x7f0b0c67

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p3, Ld8/d$b;->d:Landroid/widget/TextView;

    iget-object v0, p3, Ld8/d$b;->a:Ld8/d$a;

    const v1, 0x7f0b0598

    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    iput-object v1, v0, Ld8/d$a;->a:Landroid/view/ViewGroup;

    iget-object v0, p3, Ld8/d$b;->a:Ld8/d$a;

    const v1, 0x7f0b054d

    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, v0, Ld8/d$a;->b:Landroid/widget/ImageView;

    iget-object v0, p3, Ld8/d$b;->a:Ld8/d$a;

    const v1, 0x7f0b0a37

    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/miui/gamebooster/videobox/view/SrsLevelSeekBarPro;

    iput-object v1, v0, Ld8/d$a;->c:Lcom/miui/gamebooster/videobox/view/SrsLevelSeekBarPro;

    iget-object v0, p3, Ld8/d$b;->b:Ld8/d$a;

    const v1, 0x7f0b0599

    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    iput-object v1, v0, Ld8/d$a;->a:Landroid/view/ViewGroup;

    iget-object v0, p3, Ld8/d$b;->b:Ld8/d$a;

    const v1, 0x7f0b054f

    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, v0, Ld8/d$a;->b:Landroid/widget/ImageView;

    iget-object v0, p3, Ld8/d$b;->b:Ld8/d$a;

    const v1, 0x7f0b0a38

    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/miui/gamebooster/videobox/view/SrsLevelSeekBarPro;

    iput-object v1, v0, Ld8/d$a;->c:Lcom/miui/gamebooster/videobox/view/SrsLevelSeekBarPro;

    invoke-virtual {p2, p3}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    :cond_0
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object p3

    if-eqz p3, :cond_6

    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object p3

    instance-of p3, p3, Ld8/d$b;

    if-eqz p3, :cond_6

    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ld8/d$b;

    iget-object p3, p3, Ld8/d$b;->c:Lmiuix/slidingwidget/widget/SlidingButton;

    iget-boolean v0, p0, Ld8/d;->a:Z

    const/4 v1, 0x1

    if-eqz v0, :cond_4

    if-eqz p3, :cond_4

    const/4 v0, 0x0

    invoke-virtual {p3, v0}, Landroid/widget/CompoundButton;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    const/16 v0, 0xc

    invoke-static {p3, v0}, Lj8/d;->a(Landroid/view/View;I)Z

    move-result v0

    if-nez v0, :cond_2

    iget-boolean v0, p0, Ld8/d;->c:Z

    if-nez v0, :cond_1

    invoke-static {}, La8/t;->j()Z

    move-result v0

    if-nez v0, :cond_1

    move v0, v1

    goto :goto_0

    :cond_1
    move v0, p1

    :goto_0
    invoke-virtual {p3, v0}, Landroid/view/View;->setEnabled(Z)V

    :cond_2
    invoke-static {}, Lj8/p;->d()Z

    move-result v0

    if-nez v0, :cond_3

    iget-boolean v0, p0, Ld8/d;->b:Z

    if-eqz v0, :cond_3

    move v0, v1

    goto :goto_1

    :cond_3
    move v0, p1

    :goto_1
    invoke-virtual {p3, v0}, Lmiuix/slidingwidget/widget/SlidingButton;->setChecked(Z)V

    invoke-virtual {p3, p0}, Landroid/widget/CompoundButton;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    sget-object v0, Ld8/d;->d:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p3, v0}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    iput-boolean p1, p0, Ld8/d;->a:Z

    :cond_4
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ld8/d$b;

    iget-object p3, p3, Ld8/d$b;->d:Landroid/widget/TextView;

    invoke-static {}, Lj8/o;->c()Lj8/o;

    move-result-object v0

    invoke-virtual {v0}, Lj8/o;->h()Z

    move-result v0

    if-eqz v0, :cond_5

    goto :goto_2

    :cond_5
    const/16 p1, 0x8

    :goto_2
    invoke-virtual {p3, p1}, Landroid/view/View;->setVisibility(I)V

    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ld8/d$b;

    iget-object p1, p1, Ld8/d$b;->a:Ld8/d$a;

    sget-object p3, Ld8/d;->d:Ljava/util/List;

    invoke-interface {p3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lh8/b;

    iget-boolean v0, p0, Ld8/d;->c:Z

    iget-boolean v1, p0, Ld8/d;->b:Z

    invoke-virtual {p1, p3, v0, v1, p0}, Ld8/d$a;->a(Lh8/b;ZZLk8/b;)V

    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ld8/d$b;

    iget-object p1, p1, Ld8/d$b;->b:Ld8/d$a;

    sget-object p3, Ld8/d;->d:Ljava/util/List;

    const/4 v0, 0x2

    invoke-interface {p3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lh8/b;

    iget-boolean v0, p0, Ld8/d;->c:Z

    iget-boolean v1, p0, Ld8/d;->b:Z

    invoke-virtual {p1, p3, v0, v1, p0}, Ld8/d$a;->a(Lh8/b;ZZLk8/b;)V

    :cond_6
    return-object p2
.end method

.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 1

    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    instance-of v0, v0, Lh8/d;

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    iput-boolean p2, p0, Ld8/d;->b:Z

    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lh8/d;

    invoke-virtual {v0, p2}, Lh8/d;->l(Z)V

    invoke-virtual {v0, p1}, Lh8/d;->onClick(Landroid/view/View;)V

    invoke-virtual {p0}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    return-void

    :cond_1
    :goto_0
    const-string p1, "DolbySettingsAdapter"

    const-string p2, "Model can not be null and must be instance of AdvancedSettingsModel"

    invoke-static {p1, p2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method
