.class public Lt5/q;
.super Landroid/widget/BaseAdapter;
.source "SourceFile"

# interfaces
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lt5/q$c;,
        Lt5/q$b;
    }
.end annotation


# instance fields
.field private a:Landroid/content/Context;

.field private b:Landroid/view/LayoutInflater;

.field private c:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/miui/gamebooster/model/d;",
            ">;"
        }
    .end annotation
.end field

.field private d:Lt5/q$b;

.field private e:Landroid/view/View$OnClickListener;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lt5/q;->c:Ljava/util/ArrayList;

    new-instance v0, Lt5/q$a;

    invoke-direct {v0, p0}, Lt5/q$a;-><init>(Lt5/q;)V

    iput-object v0, p0, Lt5/q;->e:Landroid/view/View$OnClickListener;

    iput-object p1, p0, Lt5/q;->a:Landroid/content/Context;

    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p1

    iput-object p1, p0, Lt5/q;->b:Landroid/view/LayoutInflater;

    return-void
.end method

.method static synthetic a(Lt5/q;)Lt5/q$b;
    .locals 0

    iget-object p0, p0, Lt5/q;->d:Lt5/q$b;

    return-object p0
.end method


# virtual methods
.method public b(Lt5/q$b;)V
    .locals 0

    iput-object p1, p0, Lt5/q;->d:Lt5/q$b;

    return-void
.end method

.method public c(Ljava/util/ArrayList;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/miui/gamebooster/model/d;",
            ">;)V"
        }
    .end annotation

    iget-object v0, p0, Lt5/q;->c:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    iget-object v0, p0, Lt5/q;->c:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    invoke-virtual {p0}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    return-void
.end method

.method public getCount()I
    .locals 1

    iget-object v0, p0, Lt5/q;->c:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lt5/q;->c:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-le v0, p1, :cond_0

    iget-object v0, p0, Lt5/q;->c:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public getItemId(I)J
    .locals 2

    int-to-long v0, p1

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 5

    if-nez p2, :cond_2

    iget-object p2, p0, Lt5/q;->b:Landroid/view/LayoutInflater;

    const p3, 0x7f0e01ed

    const/4 v0, 0x0

    invoke-virtual {p2, p3, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    new-instance p3, Lt5/q$c;

    invoke-direct {p3}, Lt5/q$c;-><init>()V

    const v0, 0x7f0b0506

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p3, Lt5/q$c;->a:Landroid/widget/ImageView;

    const v0, 0x7f0b0bc9

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p3, Lt5/q$c;->b:Landroid/widget/TextView;

    const v0, 0x7f0b0a9f

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CompoundButton;

    iput-object v0, p3, Lt5/q$c;->c:Landroid/widget/CompoundButton;

    instance-of v1, v0, Lmiuix/slidingwidget/widget/SlidingButton;

    if-eqz v1, :cond_0

    check-cast v0, Lmiuix/slidingwidget/widget/SlidingButton;

    invoke-virtual {v0, p0}, Lmiuix/slidingwidget/widget/SlidingButton;->setOnPerformCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    goto :goto_0

    :cond_0
    instance-of v1, v0, Lcom/miui/gamebooster/widget/SwitchButton;

    if-eqz v1, :cond_1

    invoke-virtual {v0, p0}, Landroid/widget/CompoundButton;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    :cond_1
    :goto_0
    invoke-virtual {p2, p3}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    goto :goto_1

    :cond_2
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lt5/q$c;

    :goto_1
    iget-object v0, p0, Lt5/q;->c:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/miui/gamebooster/model/d;

    invoke-virtual {p1}, Lcom/miui/gamebooster/model/d;->a()Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-static {v0}, Lx4/z1;->m(I)I

    move-result v0

    const/16 v1, 0x3e7

    const v2, 0x7f0806a8

    if-ne v0, v1, :cond_3

    invoke-virtual {p1}, Lcom/miui/gamebooster/model/d;->a()Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    iget-object v0, v0, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    const-string v1, "pkg_icon_xspace://"

    goto :goto_2

    :cond_3
    invoke-virtual {p1}, Lcom/miui/gamebooster/model/d;->a()Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    iget-object v0, v0, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    const-string v1, "pkg_icon://"

    :goto_2
    invoke-virtual {v1, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p3, Lt5/q$c;->a:Landroid/widget/ImageView;

    sget-object v3, Lx4/o0;->f:Lrh/c;

    iget-object v4, p0, Lt5/q;->a:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-static {v0, v1, v3, v2}, Lx4/o0;->f(Ljava/lang/String;Landroid/widget/ImageView;Lrh/c;Landroid/graphics/drawable/Drawable;)V

    iget-object v0, p3, Lt5/q$c;->b:Landroid/widget/TextView;

    invoke-virtual {p1}, Lcom/miui/gamebooster/model/d;->c()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p3, Lt5/q$c;->c:Landroid/widget/CompoundButton;

    invoke-virtual {v0, p1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    iget-object v0, p3, Lt5/q$c;->c:Landroid/widget/CompoundButton;

    instance-of v1, v0, Lcom/miui/gamebooster/widget/SwitchButton;

    if-eqz v1, :cond_4

    check-cast v0, Lcom/miui/gamebooster/widget/SwitchButton;

    invoke-virtual {p1}, Lcom/miui/gamebooster/model/d;->d()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/miui/gamebooster/widget/SwitchButton;->setCheckedImmediatelyNoEvent(Z)V

    goto :goto_3

    :cond_4
    invoke-virtual {p1}, Lcom/miui/gamebooster/model/d;->d()Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/CompoundButton;->setChecked(Z)V

    :goto_3
    iget-object v0, p0, Lt5/q;->e:Landroid/view/View$OnClickListener;

    invoke-virtual {p2, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p3, Lt5/q$c;->c:Landroid/widget/CompoundButton;

    invoke-virtual {p1}, Lcom/miui/gamebooster/model/d;->e()Z

    move-result v1

    xor-int/lit8 v1, v1, 0x1

    invoke-virtual {v0, v1}, Landroid/view/View;->setEnabled(Z)V

    iget-object v0, p3, Lt5/q$c;->b:Landroid/widget/TextView;

    invoke-virtual {p1}, Lcom/miui/gamebooster/model/d;->e()Z

    move-result v1

    const/high16 v2, 0x3f000000    # 0.5f

    const/high16 v3, 0x3f800000    # 1.0f

    if-eqz v1, :cond_5

    move v1, v2

    goto :goto_4

    :cond_5
    move v1, v3

    :goto_4
    invoke-virtual {v0, v1}, Landroid/view/View;->setAlpha(F)V

    iget-object p3, p3, Lt5/q$c;->a:Landroid/widget/ImageView;

    invoke-virtual {p1}, Lcom/miui/gamebooster/model/d;->e()Z

    move-result p1

    if-eqz p1, :cond_6

    goto :goto_5

    :cond_6
    move v2, v3

    :goto_5
    invoke-virtual {p3, v2}, Landroid/view/View;->setAlpha(F)V

    return-object p2
.end method

.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 1

    iget-object v0, p0, Lt5/q;->d:Lt5/q$b;

    if-eqz v0, :cond_0

    invoke-interface {v0, p0, p1, p2}, Lt5/q$b;->r(Lt5/q;Landroid/widget/CompoundButton;Z)V

    :cond_0
    return-void
.end method
