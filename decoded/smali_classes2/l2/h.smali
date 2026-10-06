.class public Ll2/h;
.super Landroid/widget/BaseExpandableListAdapter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ll2/h$b;,
        Ll2/h$c;,
        Ll2/h$d;
    }
.end annotation


# instance fields
.field private a:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/miui/antispam/db/vo/ProvinceVo;",
            ">;"
        }
    .end annotation
.end field

.field private b:Landroid/content/Context;

.field private c:Ll2/h$d;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List<",
            "Lcom/miui/antispam/db/vo/ProvinceVo;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Landroid/widget/BaseExpandableListAdapter;-><init>()V

    iput-object p1, p0, Ll2/h;->b:Landroid/content/Context;

    iput-object p2, p0, Ll2/h;->a:Ljava/util/List;

    return-void
.end method

.method static synthetic a(Ll2/h;)Ll2/h$d;
    .locals 0

    iget-object p0, p0, Ll2/h;->c:Ll2/h$d;

    return-object p0
.end method


# virtual methods
.method public b(Ll2/h$d;)V
    .locals 0

    iput-object p1, p0, Ll2/h;->c:Ll2/h$d;

    return-void
.end method

.method public getChild(II)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Ll2/h;->a:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/miui/antispam/db/vo/ProvinceVo;

    invoke-virtual {p1}, Lcom/miui/antispam/db/vo/ProvinceVo;->getCityList()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public getChildId(II)J
    .locals 0

    int-to-long p1, p2

    return-wide p1
.end method

.method public getChildView(IIZLandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 1

    if-nez p4, :cond_0

    iget-object p3, p0, Ll2/h;->b:Landroid/content/Context;

    invoke-static {p3}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p3

    const p4, 0x7f0e006a

    const/4 v0, 0x0

    invoke-virtual {p3, p4, p5, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p4

    new-instance p3, Ll2/h$b;

    invoke-direct {p3, p0}, Ll2/h$b;-><init>(Ll2/h;)V

    const p5, 0x7f0b07e7

    invoke-virtual {p4, p5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p5

    check-cast p5, Landroid/widget/TextView;

    iput-object p5, p3, Ll2/h$b;->a:Landroid/widget/TextView;

    const p5, 0x1020001

    invoke-virtual {p4, p5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p5

    check-cast p5, Landroid/widget/CheckBox;

    iput-object p5, p3, Ll2/h$b;->b:Landroid/widget/CheckBox;

    invoke-virtual {p4, p3}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    goto :goto_0

    :cond_0
    invoke-virtual {p4}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ll2/h$b;

    :goto_0
    iget-object p5, p0, Ll2/h;->a:Ljava/util/List;

    invoke-interface {p5, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/miui/antispam/db/vo/ProvinceVo;

    iget-object p5, p3, Ll2/h$b;->a:Landroid/widget/TextView;

    invoke-virtual {p1}, Lcom/miui/antispam/db/vo/ProvinceVo;->getCityList()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/antispam/db/vo/CityVo;

    invoke-virtual {v0}, Lcom/miui/antispam/db/vo/CityVo;->getCityName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p5, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object p3, p3, Ll2/h$b;->b:Landroid/widget/CheckBox;

    invoke-virtual {p1}, Lcom/miui/antispam/db/vo/ProvinceVo;->getCityList()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/miui/antispam/db/vo/CityVo;

    invoke-virtual {p1}, Lcom/miui/antispam/db/vo/CityVo;->isChecked()Z

    move-result p1

    invoke-virtual {p3, p1}, Landroid/widget/CompoundButton;->setChecked(Z)V

    return-object p4
.end method

.method public getChildrenCount(I)I
    .locals 1

    iget-object v0, p0, Ll2/h;->a:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/miui/antispam/db/vo/ProvinceVo;

    invoke-virtual {p1}, Lcom/miui/antispam/db/vo/ProvinceVo;->getCityList()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    return p1
.end method

.method public getGroup(I)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Ll2/h;->a:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public getGroupCount()I
    .locals 1

    iget-object v0, p0, Ll2/h;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getGroupId(I)J
    .locals 2

    int-to-long v0, p1

    return-wide v0
.end method

.method public getGroupView(IZLandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 10

    const/4 v0, 0x0

    if-nez p3, :cond_0

    iget-object p3, p0, Ll2/h;->b:Landroid/content/Context;

    invoke-static {p3}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p3

    const v1, 0x7f0e006b

    invoke-virtual {p3, v1, p4, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p3

    new-instance p4, Ll2/h$c;

    invoke-direct {p4, p0}, Ll2/h$c;-><init>(Ll2/h;)V

    const v1, 0x7f0b0571

    invoke-virtual {p3, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p4, Ll2/h$c;->a:Landroid/widget/ImageView;

    const v1, 0x7f0b056c

    invoke-virtual {p3, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p4, Ll2/h$c;->b:Landroid/widget/ImageView;

    const v1, 0x7f0b07e7

    invoke-virtual {p3, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p4, Ll2/h$c;->c:Landroid/widget/TextView;

    const v1, 0x7f0b04f4

    invoke-virtual {p3, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p4, Ll2/h$c;->d:Landroid/widget/TextView;

    const v1, 0x1020001

    invoke-virtual {p3, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/CheckBox;

    iput-object v1, p4, Ll2/h$c;->e:Landroid/widget/CheckBox;

    invoke-virtual {p3, p4}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    goto :goto_0

    :cond_0
    invoke-virtual {p3}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object p4

    check-cast p4, Ll2/h$c;

    :goto_0
    const/16 v1, 0x8

    if-eqz p2, :cond_1

    iget-object p2, p4, Ll2/h$c;->a:Landroid/widget/ImageView;

    invoke-virtual {p2, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object p2, p4, Ll2/h$c;->b:Landroid/widget/ImageView;

    goto :goto_1

    :cond_1
    iget-object p2, p4, Ll2/h$c;->b:Landroid/widget/ImageView;

    invoke-virtual {p2, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object p2, p4, Ll2/h$c;->a:Landroid/widget/ImageView;

    :goto_1
    invoke-virtual {p2, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object p2, p0, Ll2/h;->a:Ljava/util/List;

    invoke-interface {p2, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/miui/antispam/db/vo/ProvinceVo;

    iget-object v2, p4, Ll2/h$c;->c:Landroid/widget/TextView;

    invoke-virtual {p2}, Lcom/miui/antispam/db/vo/ProvinceVo;->getProvinceName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v2, p4, Ll2/h$c;->e:Landroid/widget/CheckBox;

    invoke-virtual {p2}, Lcom/miui/antispam/db/vo/ProvinceVo;->isChecked()Z

    move-result v3

    invoke-virtual {v2, v3}, Landroid/widget/CompoundButton;->setChecked(Z)V

    iget-object v2, p0, Ll2/h;->a:Ljava/util/List;

    invoke-interface {v2, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/miui/antispam/db/vo/ProvinceVo;

    invoke-virtual {p1}, Lcom/miui/antispam/db/vo/ProvinceVo;->getCityList()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    const/4 v2, 0x1

    if-ne p1, v2, :cond_2

    move p1, v2

    goto :goto_2

    :cond_2
    move p1, v0

    :goto_2
    iget-object v3, p4, Ll2/h$c;->e:Landroid/widget/CheckBox;

    invoke-virtual {v3}, Landroid/widget/CompoundButton;->isChecked()Z

    move-result v3

    if-eqz v3, :cond_9

    iget-object v1, p4, Ll2/h$c;->d:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/view/View;->setVisibility(I)V

    const v1, 0x7f1200e5

    if-eqz p1, :cond_3

    iget-object v2, p4, Ll2/h$c;->d:Landroid/widget/TextView;

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setText(I)V

    goto/16 :goto_4

    :cond_3
    invoke-virtual {p2}, Lcom/miui/antispam/db/vo/ProvinceVo;->getCheckedCityNumbers()I

    move-result v3

    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {p2}, Lcom/miui/antispam/db/vo/ProvinceVo;->getCityList()Ljava/util/List;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_4
    :goto_3
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_5

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/miui/antispam/db/vo/CityVo;

    invoke-virtual {v6}, Lcom/miui/antispam/db/vo/CityVo;->isChecked()Z

    move-result v7

    if-eqz v7, :cond_4

    invoke-interface {v4, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_3

    :cond_5
    invoke-virtual {p2}, Lcom/miui/antispam/db/vo/ProvinceVo;->getCityList()Ljava/util/List;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    if-ne v3, v5, :cond_6

    iget-object v2, p4, Ll2/h$c;->d:Landroid/widget/TextView;

    iget-object v3, p0, Ll2/h;->b:Landroid/content/Context;

    invoke-virtual {v3, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_4

    :cond_6
    if-ne v3, v2, :cond_7

    iget-object v1, p4, Ll2/h$c;->d:Landroid/widget/TextView;

    iget-object v3, p0, Ll2/h;->b:Landroid/content/Context;

    const v5, 0x7f120f6f

    new-array v2, v2, [Ljava/lang/Object;

    invoke-interface {v4, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/miui/antispam/db/vo/CityVo;

    invoke-virtual {v4}, Lcom/miui/antispam/db/vo/CityVo;->getCityName()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v0

    invoke-virtual {v3, v5, v2}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_4

    :cond_7
    const/4 v1, 0x2

    if-ne v3, v1, :cond_8

    iget-object v3, p4, Ll2/h$c;->d:Landroid/widget/TextView;

    iget-object v5, p0, Ll2/h;->b:Landroid/content/Context;

    const v6, 0x7f121ae5

    new-array v1, v1, [Ljava/lang/Object;

    invoke-interface {v4, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/miui/antispam/db/vo/CityVo;

    invoke-virtual {v7}, Lcom/miui/antispam/db/vo/CityVo;->getCityName()Ljava/lang/String;

    move-result-object v7

    aput-object v7, v1, v0

    invoke-interface {v4, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/miui/antispam/db/vo/CityVo;

    invoke-virtual {v4}, Lcom/miui/antispam/db/vo/CityVo;->getCityName()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v1, v2

    invoke-virtual {v5, v6, v1}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_4

    :cond_8
    iget-object v5, p4, Ll2/h$c;->d:Landroid/widget/TextView;

    iget-object v6, p0, Ll2/h;->b:Landroid/content/Context;

    const v7, 0x7f1200c1

    const/4 v8, 0x3

    new-array v8, v8, [Ljava/lang/Object;

    invoke-interface {v4, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/miui/antispam/db/vo/CityVo;

    invoke-virtual {v9}, Lcom/miui/antispam/db/vo/CityVo;->getCityName()Ljava/lang/String;

    move-result-object v9

    aput-object v9, v8, v0

    invoke-interface {v4, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/miui/antispam/db/vo/CityVo;

    invoke-virtual {v4}, Lcom/miui/antispam/db/vo/CityVo;->getCityName()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v8, v2

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v8, v1

    invoke-virtual {v6, v7, v8}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v5, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_4

    :cond_9
    iget-object v2, p4, Ll2/h$c;->d:Landroid/widget/TextView;

    invoke-virtual {v2, v1}, Landroid/view/View;->setVisibility(I)V

    :goto_4
    if-eqz p1, :cond_a

    iget-object p1, p4, Ll2/h$c;->e:Landroid/widget/CheckBox;

    invoke-virtual {p1, v0}, Landroid/view/View;->setClickable(Z)V

    goto :goto_5

    :cond_a
    iget-object p1, p4, Ll2/h$c;->e:Landroid/widget/CheckBox;

    new-instance p4, Ll2/h$a;

    invoke-direct {p4, p0, p2}, Ll2/h$a;-><init>(Ll2/h;Lcom/miui/antispam/db/vo/ProvinceVo;)V

    invoke-virtual {p1, p4}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :goto_5
    return-object p3
.end method

.method public hasStableIds()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public isChildSelectable(II)Z
    .locals 0

    const/4 p1, 0x1

    return p1
.end method
