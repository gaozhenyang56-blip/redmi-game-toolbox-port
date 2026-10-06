.class public Ld8/l;
.super Landroid/widget/BaseAdapter;
.source "SourceFile"

# interfaces
.implements Lk8/b;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ld8/l$b;,
        Ld8/l$a;
    }
.end annotation


# static fields
.field private static b:Ljava/util/List;
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


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Ld8/l;->b:Ljava/util/List;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    invoke-static {}, Lcom/miui/securitycenter/Application;->A()Lcom/miui/securitycenter/Application;

    move-result-object v0

    sget-object v1, Lg8/a;->f:Lg8/a;

    invoke-static {v0, v1}, Lf8/a;->e(Landroid/content/Context;Lg8/a;)Ljava/util/List;

    move-result-object v0

    sput-object v0, Ld8/l;->b:Ljava/util/List;

    return-void
.end method

.method public static synthetic b(Landroid/view/View;)V
    .locals 0

    invoke-static {p0}, Ld8/l;->e(Landroid/view/View;)V

    return-void
.end method

.method static synthetic c(Ld8/l;)Z
    .locals 0

    iget-boolean p0, p0, Ld8/l;->a:Z

    return p0
.end method

.method private static synthetic e(Landroid/view/View;)V
    .locals 0

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

    instance-of v0, v0, Lh8/g;

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-static {}, Lj8/p;->n()Z

    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lh8/g;

    invoke-virtual {v0, p2}, Lh8/g;->s(I)V

    invoke-virtual {v0, p1}, Lh8/g;->onClick(Landroid/view/View;)V

    invoke-virtual {v0}, Lh8/g;->k()I

    move-result p1

    invoke-virtual {v0}, Lh8/g;->m()I

    move-result p2

    invoke-static {p1, p2}, Lcom/miui/gamebooster/utils/a$o;->z(II)V

    return-void

    :cond_1
    :goto_0
    const-string p1, "SrsSettingsAdapter"

    const-string p2, "Model can not be null and must instance of SrsSettingsModel"

    invoke-static {p1, p2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public d(I)Lh8/b;
    .locals 1

    sget-object v0, Ld8/l;->b:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lh8/b;

    return-object p1
.end method

.method public f(Z)V
    .locals 0

    iput-boolean p1, p0, Ld8/l;->a:Z

    return-void
.end method

.method public getCount()I
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public bridge synthetic getItem(I)Ljava/lang/Object;
    .locals 0

    invoke-virtual {p0, p1}, Ld8/l;->d(I)Lh8/b;

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

    if-nez p2, :cond_2

    invoke-virtual {p3}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-static {p2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p2

    invoke-static {}, Lj8/m;->n()Z

    move-result v0

    if-eqz v0, :cond_0

    const v0, 0x7f0e052f

    goto :goto_0

    :cond_0
    const v0, 0x7f0e0537

    :goto_0
    invoke-virtual {p2, v0, p3, p1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p2

    new-instance p3, Ld8/l$b;

    invoke-direct {p3}, Ld8/l$b;-><init>()V

    iget-object v0, p3, Ld8/l$b;->a:Ld8/l$a;

    const v1, 0x7f0b065f

    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    iput-object v1, v0, Ld8/l$a;->a:Landroid/view/ViewGroup;

    iget-object v0, p3, Ld8/l$b;->a:Ld8/l$a;

    const v1, 0x7f0b09df

    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lmiuix/slidingwidget/widget/SlidingButton;

    iput-object v1, v0, Ld8/l$a;->f:Lmiuix/slidingwidget/widget/SlidingButton;

    iget-object v0, p3, Ld8/l$b;->a:Ld8/l$a;

    const v1, 0x7f0b0c1b

    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, v0, Ld8/l$a;->c:Landroid/widget/TextView;

    iget-object v0, p3, Ld8/l$b;->b:Ld8/l$a;

    const v1, 0x7f0b067f

    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    iput-object v1, v0, Ld8/l$a;->a:Landroid/view/ViewGroup;

    iget-object v0, p3, Ld8/l$b;->b:Ld8/l$a;

    const v1, 0x7f0b09e0

    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lmiuix/slidingwidget/widget/SlidingButton;

    iput-object v1, v0, Ld8/l$a;->f:Lmiuix/slidingwidget/widget/SlidingButton;

    iget-object v0, p3, Ld8/l$b;->b:Ld8/l$a;

    const v1, 0x7f0b0c87

    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, v0, Ld8/l$a;->c:Landroid/widget/TextView;

    iget-object v0, p3, Ld8/l$b;->c:Ld8/l$a;

    const v1, 0x7f0b069f

    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    iput-object v1, v0, Ld8/l$a;->a:Landroid/view/ViewGroup;

    iget-object v0, p3, Ld8/l$b;->c:Ld8/l$a;

    const v1, 0x7f0b09e1

    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lmiuix/slidingwidget/widget/SlidingButton;

    iput-object v1, v0, Ld8/l$a;->f:Lmiuix/slidingwidget/widget/SlidingButton;

    iget-object v0, p3, Ld8/l$b;->c:Ld8/l$a;

    const v1, 0x7f0b0cd4

    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, v0, Ld8/l$a;->c:Landroid/widget/TextView;

    iget-object v0, p3, Ld8/l$b;->d:Ld8/l$a;

    const v1, 0x7f0b0598

    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    iput-object v1, v0, Ld8/l$a;->a:Landroid/view/ViewGroup;

    iget-object v0, p3, Ld8/l$b;->d:Ld8/l$a;

    const v1, 0x7f0b054d

    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, v0, Ld8/l$a;->b:Landroid/widget/ImageView;

    invoke-static {}, Lj8/m;->n()Z

    move-result v0

    const v1, 0x7f0b0a37

    if-eqz v0, :cond_1

    iget-object v0, p3, Ld8/l$b;->d:Ld8/l$a;

    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/miui/gamebooster/videobox/view/SrsLevelSeekBar;

    iput-object v1, v0, Ld8/l$a;->d:Lcom/miui/gamebooster/videobox/view/SrsLevelSeekBar;

    goto :goto_1

    :cond_1
    iget-object v0, p3, Ld8/l$b;->d:Ld8/l$a;

    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/miui/gamebooster/videobox/view/SrsLevelSeekBarPro;

    iput-object v1, v0, Ld8/l$a;->e:Lcom/miui/gamebooster/videobox/view/SrsLevelSeekBarPro;

    :goto_1
    iget-object v0, p3, Ld8/l$b;->e:Ld8/l$a;

    const v1, 0x7f0b0599

    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    iput-object v1, v0, Ld8/l$a;->a:Landroid/view/ViewGroup;

    iget-object v0, p3, Ld8/l$b;->e:Ld8/l$a;

    const v1, 0x7f0b054f

    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, v0, Ld8/l$a;->b:Landroid/widget/ImageView;

    iget-object v0, p3, Ld8/l$b;->e:Ld8/l$a;

    const v1, 0x7f0b0cf6

    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, v0, Ld8/l$a;->c:Landroid/widget/TextView;

    iget-object v0, p3, Ld8/l$b;->e:Ld8/l$a;

    const v1, 0x7f0b0a38

    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/miui/gamebooster/videobox/view/SrsLevelSeekBarPro;

    iput-object v1, v0, Ld8/l$a;->e:Lcom/miui/gamebooster/videobox/view/SrsLevelSeekBarPro;

    invoke-virtual {p2, p3}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    :cond_2
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object p3

    if-eqz p3, :cond_3

    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object p3

    instance-of p3, p3, Ld8/l$b;

    if-eqz p3, :cond_3

    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ld8/l$b;

    iget-object p3, p3, Ld8/l$b;->a:Ld8/l$a;

    sget-object v0, Ld8/l;->b:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lh8/b;

    invoke-virtual {p3, p1, p0, p0}, Ld8/l$a;->d(Lh8/b;Lk8/b;Ld8/l;)V

    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ld8/l$b;

    iget-object p1, p1, Ld8/l$b;->b:Ld8/l$a;

    sget-object p3, Ld8/l;->b:Ljava/util/List;

    const/4 v0, 0x1

    invoke-interface {p3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lh8/b;

    invoke-virtual {p1, p3, p0, p0}, Ld8/l$a;->d(Lh8/b;Lk8/b;Ld8/l;)V

    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ld8/l$b;

    iget-object p1, p1, Ld8/l$b;->c:Ld8/l$a;

    sget-object p3, Ld8/l;->b:Ljava/util/List;

    const/4 v0, 0x2

    invoke-interface {p3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lh8/b;

    invoke-virtual {p1, p3, p0, p0}, Ld8/l$a;->d(Lh8/b;Lk8/b;Ld8/l;)V

    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ld8/l$b;

    iget-object p1, p1, Ld8/l$b;->d:Ld8/l$a;

    sget-object p3, Ld8/l;->b:Ljava/util/List;

    const/4 v0, 0x3

    invoke-interface {p3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lh8/b;

    invoke-virtual {p1, p3, p0, p0}, Ld8/l$a;->d(Lh8/b;Lk8/b;Ld8/l;)V

    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ld8/l$b;

    iget-object p1, p1, Ld8/l$b;->e:Ld8/l$a;

    sget-object p3, Ld8/l;->b:Ljava/util/List;

    const/4 v0, 0x4

    invoke-interface {p3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lh8/b;

    invoke-virtual {p1, p3, p0, p0}, Ld8/l$a;->d(Lh8/b;Lk8/b;Ld8/l;)V

    :cond_3
    new-instance p1, Ld8/h;

    invoke-direct {p1}, Ld8/h;-><init>()V

    invoke-virtual {p2, p1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-object p2
.end method
