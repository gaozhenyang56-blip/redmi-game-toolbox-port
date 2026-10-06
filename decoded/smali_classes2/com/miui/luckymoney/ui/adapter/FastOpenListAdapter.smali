.class public Lcom/miui/luckymoney/ui/adapter/FastOpenListAdapter;
.super Lcom/miui/common/expandableview/a;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/luckymoney/ui/adapter/FastOpenListAdapter$HeaderViewHolder;,
        Lcom/miui/luckymoney/ui/adapter/FastOpenListAdapter$ViewHolder;
    }
.end annotation


# instance fields
.field private enabled:Z

.field private mContext:Landroid/content/Context;

.field private mFastOpenConfig:Lcom/miui/luckymoney/config/FastOpenConfig;

.field private mHeaders:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/miui/luckymoney/model/FastOpenAppInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mInflater:Landroid/view/LayoutInflater;

.field private mOnCheckedChangeListener:Landroid/widget/CompoundButton$OnCheckedChangeListener;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0}, Lcom/miui/common/expandableview/a;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/miui/luckymoney/ui/adapter/FastOpenListAdapter;->mHeaders:Ljava/util/List;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/miui/luckymoney/ui/adapter/FastOpenListAdapter;->enabled:Z

    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/luckymoney/ui/adapter/FastOpenListAdapter;->mInflater:Landroid/view/LayoutInflater;

    iput-object p1, p0, Lcom/miui/luckymoney/ui/adapter/FastOpenListAdapter;->mContext:Landroid/content/Context;

    invoke-static {p1}, Lcom/miui/luckymoney/config/FastOpenConfig;->getInstance(Landroid/content/Context;)Lcom/miui/luckymoney/config/FastOpenConfig;

    move-result-object p1

    iput-object p1, p0, Lcom/miui/luckymoney/ui/adapter/FastOpenListAdapter;->mFastOpenConfig:Lcom/miui/luckymoney/config/FastOpenConfig;

    return-void
.end method


# virtual methods
.method public getCountForSection(I)I
    .locals 1

    iget-object v0, p0, Lcom/miui/luckymoney/ui/adapter/FastOpenListAdapter;->mHeaders:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/miui/luckymoney/model/FastOpenAppInfo;

    invoke-virtual {p1}, Lcom/miui/luckymoney/model/FastOpenAppInfo;->getPackageInfos()Ljava/util/ArrayList;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p1

    return p1
.end method

.method public getData()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/miui/luckymoney/model/FastOpenAppInfo;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/miui/luckymoney/ui/adapter/FastOpenListAdapter;->mHeaders:Ljava/util/List;

    return-object v0
.end method

.method public getItem(II)Ljava/lang/Object;
    .locals 0

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    return-object p1
.end method

.method public getItemId(II)J
    .locals 0

    int-to-long p1, p2

    return-wide p1
.end method

.method public getItemView(IILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 2

    if-nez p3, :cond_0

    iget-object p3, p0, Lcom/miui/luckymoney/ui/adapter/FastOpenListAdapter;->mInflater:Landroid/view/LayoutInflater;

    const p4, 0x7f0e02b8

    const/4 v0, 0x0

    invoke-virtual {p3, p4, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p3

    new-instance p4, Lcom/miui/luckymoney/ui/adapter/FastOpenListAdapter$ViewHolder;

    invoke-direct {p4}, Lcom/miui/luckymoney/ui/adapter/FastOpenListAdapter$ViewHolder;-><init>()V

    const v0, 0x7f0b05c1

    invoke-virtual {p3, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p4, Lcom/miui/luckymoney/ui/adapter/FastOpenListAdapter$ViewHolder;->itemViewLayout:Landroid/widget/LinearLayout;

    const v0, 0x7f0b0506

    invoke-virtual {p3, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p4, Lcom/miui/luckymoney/ui/adapter/FastOpenListAdapter$ViewHolder;->icon:Landroid/widget/ImageView;

    const v0, 0x7f0b0bc9

    invoke-virtual {p3, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p4, Lcom/miui/luckymoney/ui/adapter/FastOpenListAdapter$ViewHolder;->title:Landroid/widget/TextView;

    const v0, 0x7f0b0a9f

    invoke-virtual {p3, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lmiuix/slidingwidget/widget/SlidingButton;

    iput-object v0, p4, Lcom/miui/luckymoney/ui/adapter/FastOpenListAdapter$ViewHolder;->slidingButton:Lmiuix/slidingwidget/widget/SlidingButton;

    iget-object v1, p0, Lcom/miui/luckymoney/ui/adapter/FastOpenListAdapter;->mOnCheckedChangeListener:Landroid/widget/CompoundButton$OnCheckedChangeListener;

    invoke-virtual {v0, v1}, Landroid/widget/CompoundButton;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    invoke-virtual {p3, p4}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    goto :goto_0

    :cond_0
    invoke-virtual {p3}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object p4

    check-cast p4, Lcom/miui/luckymoney/ui/adapter/FastOpenListAdapter$ViewHolder;

    :goto_0
    iget-object v0, p0, Lcom/miui/luckymoney/ui/adapter/FastOpenListAdapter;->mHeaders:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/miui/luckymoney/model/FastOpenAppInfo;

    invoke-virtual {p1}, Lcom/miui/luckymoney/model/FastOpenAppInfo;->getPackageInfos()Ljava/util/ArrayList;

    move-result-object p1

    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/content/pm/PackageInfo;

    iget-object p2, p1, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    const-string v0, "pkg_icon://"

    invoke-virtual {v0, p2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    iget-object v0, p4, Lcom/miui/luckymoney/ui/adapter/FastOpenListAdapter$ViewHolder;->icon:Landroid/widget/ImageView;

    sget-object v1, Lx4/o0;->f:Lrh/c;

    invoke-static {p2, v0, v1}, Lx4/o0;->d(Ljava/lang/String;Landroid/widget/ImageView;Lrh/c;)V

    iget-object p2, p4, Lcom/miui/luckymoney/ui/adapter/FastOpenListAdapter$ViewHolder;->title:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/miui/luckymoney/ui/adapter/FastOpenListAdapter;->mContext:Landroid/content/Context;

    iget-object v1, p1, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    invoke-static {v0, v1}, Lx4/f1;->P(Landroid/content/Context;Landroid/content/pm/ApplicationInfo;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object p2, p4, Lcom/miui/luckymoney/ui/adapter/FastOpenListAdapter$ViewHolder;->slidingButton:Lmiuix/slidingwidget/widget/SlidingButton;

    invoke-virtual {p2, p1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    iget-object p2, p4, Lcom/miui/luckymoney/ui/adapter/FastOpenListAdapter$ViewHolder;->slidingButton:Lmiuix/slidingwidget/widget/SlidingButton;

    iget-object v0, p0, Lcom/miui/luckymoney/ui/adapter/FastOpenListAdapter;->mFastOpenConfig:Lcom/miui/luckymoney/config/FastOpenConfig;

    iget-object p1, p1, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v0, p1}, Lcom/miui/luckymoney/config/FastOpenConfig;->contains(Ljava/lang/String;)Z

    move-result p1

    const/4 v0, 0x1

    xor-int/2addr p1, v0

    invoke-virtual {p2, p1}, Lmiuix/slidingwidget/widget/SlidingButton;->setChecked(Z)V

    iget-object p1, p4, Lcom/miui/luckymoney/ui/adapter/FastOpenListAdapter$ViewHolder;->slidingButton:Lmiuix/slidingwidget/widget/SlidingButton;

    iget-boolean p2, p0, Lcom/miui/luckymoney/ui/adapter/FastOpenListAdapter;->enabled:Z

    invoke-virtual {p1, p2}, Landroid/view/View;->setEnabled(Z)V

    iget-object p1, p0, Lcom/miui/luckymoney/ui/adapter/FastOpenListAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    iget-object p2, p4, Lcom/miui/luckymoney/ui/adapter/FastOpenListAdapter$ViewHolder;->title:Landroid/widget/TextView;

    iget-boolean v1, p0, Lcom/miui/luckymoney/ui/adapter/FastOpenListAdapter;->enabled:Z

    if-eqz v1, :cond_1

    const v1, 0x7f060418

    goto :goto_1

    :cond_1
    const v1, 0x7f060417

    :goto_1
    invoke-virtual {p1, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {p2, v1}, Landroid/widget/TextView;->setTextColor(I)V

    invoke-static {}, Lx4/a0;->F()Z

    move-result p2

    if-eqz p2, :cond_2

    iget-object p2, p4, Lcom/miui/luckymoney/ui/adapter/FastOpenListAdapter$ViewHolder;->title:Landroid/widget/TextView;

    invoke-static {v0}, Landroid/graphics/Typeface;->defaultFromStyle(I)Landroid/graphics/Typeface;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    iget-object p2, p4, Lcom/miui/luckymoney/ui/adapter/FastOpenListAdapter$ViewHolder;->icon:Landroid/widget/ImageView;

    invoke-virtual {p2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p2

    check-cast p2, Landroid/widget/LinearLayout$LayoutParams;

    invoke-virtual {p1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    invoke-static {v0}, Lx4/a0;->z(Landroid/content/res/Configuration;)Z

    const v0, 0x7f07112e

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    iput v0, p2, Landroid/widget/LinearLayout$LayoutParams;->width:I

    iput v0, p2, Landroid/widget/LinearLayout$LayoutParams;->height:I

    const p2, 0x7f071108

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result p1

    float-to-int p1, p1

    iget-object p2, p4, Lcom/miui/luckymoney/ui/adapter/FastOpenListAdapter$ViewHolder;->itemViewLayout:Landroid/widget/LinearLayout;

    const/4 p4, 0x0

    invoke-virtual {p2, p1, p4, p1, p4}, Landroid/view/View;->setPadding(IIII)V

    :cond_2
    return-object p3
.end method

.method public getSectionCount()I
    .locals 1

    iget-object v0, p0, Lcom/miui/luckymoney/ui/adapter/FastOpenListAdapter;->mHeaders:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getSectionHeaderView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 2

    if-nez p2, :cond_0

    iget-object p2, p0, Lcom/miui/luckymoney/ui/adapter/FastOpenListAdapter;->mInflater:Landroid/view/LayoutInflater;

    const p3, 0x7f0e02b7

    const/4 v0, 0x0

    invoke-virtual {p2, p3, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    new-instance p3, Lcom/miui/luckymoney/ui/adapter/FastOpenListAdapter$HeaderViewHolder;

    invoke-direct {p3, v0}, Lcom/miui/luckymoney/ui/adapter/FastOpenListAdapter$HeaderViewHolder;-><init>(Lcom/miui/luckymoney/ui/adapter/FastOpenListAdapter$1;)V

    const v0, 0x7f0b05bb

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    invoke-static {p3, v0}, Lcom/miui/luckymoney/ui/adapter/FastOpenListAdapter$HeaderViewHolder;->access$102(Lcom/miui/luckymoney/ui/adapter/FastOpenListAdapter$HeaderViewHolder;Landroid/widget/FrameLayout;)Landroid/widget/FrameLayout;

    const v0, 0x7f0b04e1

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-static {p3, v0}, Lcom/miui/luckymoney/ui/adapter/FastOpenListAdapter$HeaderViewHolder;->access$202(Lcom/miui/luckymoney/ui/adapter/FastOpenListAdapter$HeaderViewHolder;Landroid/widget/TextView;)Landroid/widget/TextView;

    invoke-virtual {p2, p3}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    goto :goto_0

    :cond_0
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/miui/luckymoney/ui/adapter/FastOpenListAdapter$HeaderViewHolder;

    :goto_0
    invoke-static {p3}, Lcom/miui/luckymoney/ui/adapter/FastOpenListAdapter$HeaderViewHolder;->access$200(Lcom/miui/luckymoney/ui/adapter/FastOpenListAdapter$HeaderViewHolder;)Landroid/widget/TextView;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/luckymoney/ui/adapter/FastOpenListAdapter;->mHeaders:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/miui/luckymoney/model/FastOpenAppInfo;

    invoke-virtual {v1}, Lcom/miui/luckymoney/model/FastOpenAppInfo;->getTitle()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-static {p3}, Lcom/miui/luckymoney/ui/adapter/FastOpenListAdapter$HeaderViewHolder;->access$200(Lcom/miui/luckymoney/ui/adapter/FastOpenListAdapter$HeaderViewHolder;)Landroid/widget/TextView;

    move-result-object p3

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p3, p1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    const/4 p1, 0x0

    invoke-virtual {p2, p1}, Landroid/view/View;->setClickable(Z)V

    invoke-virtual {p2, p1}, Landroid/view/View;->setLongClickable(Z)V

    return-object p2
.end method

.method public isEnabled()Z
    .locals 1

    iget-boolean v0, p0, Lcom/miui/luckymoney/ui/adapter/FastOpenListAdapter;->enabled:Z

    return v0
.end method

.method public setEnabled(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/miui/luckymoney/ui/adapter/FastOpenListAdapter;->enabled:Z

    invoke-virtual {p0}, Lcom/miui/common/expandableview/a;->notifyDataSetChanged()V

    return-void
.end method

.method public setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/luckymoney/ui/adapter/FastOpenListAdapter;->mOnCheckedChangeListener:Landroid/widget/CompoundButton$OnCheckedChangeListener;

    return-void
.end method

.method public updateData(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/miui/luckymoney/model/FastOpenAppInfo;",
            ">;)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/miui/luckymoney/ui/adapter/FastOpenListAdapter;->mHeaders:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    iget-object v0, p0, Lcom/miui/luckymoney/ui/adapter/FastOpenListAdapter;->mHeaders:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    invoke-virtual {p0}, Lcom/miui/common/expandableview/a;->notifyDataSetChanged()V

    return-void
.end method

.method public updateHeader(Landroid/view/View;)V
    .locals 2

    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object p1

    instance-of v0, p1, Lcom/miui/luckymoney/ui/adapter/FastOpenListAdapter$HeaderViewHolder;

    if-eqz v0, :cond_0

    check-cast p1, Lcom/miui/luckymoney/ui/adapter/FastOpenListAdapter$HeaderViewHolder;

    invoke-static {p1}, Lcom/miui/luckymoney/ui/adapter/FastOpenListAdapter$HeaderViewHolder;->access$200(Lcom/miui/luckymoney/ui/adapter/FastOpenListAdapter$HeaderViewHolder;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-static {p1}, Lcom/miui/luckymoney/ui/adapter/FastOpenListAdapter$HeaderViewHolder;->access$200(Lcom/miui/luckymoney/ui/adapter/FastOpenListAdapter$HeaderViewHolder;)Landroid/widget/TextView;

    move-result-object p1

    iget-object v1, p0, Lcom/miui/luckymoney/ui/adapter/FastOpenListAdapter;->mHeaders:Ljava/util/List;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/luckymoney/model/FastOpenAppInfo;

    invoke-virtual {v0}, Lcom/miui/luckymoney/model/FastOpenAppInfo;->getTitle()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_0
    return-void
.end method
