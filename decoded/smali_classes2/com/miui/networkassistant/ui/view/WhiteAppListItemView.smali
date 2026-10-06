.class public Lcom/miui/networkassistant/ui/view/WhiteAppListItemView;
.super Landroid/widget/LinearLayout;
.source "SourceFile"

# interfaces
.implements Lcom/miui/networkassistant/ui/view/BindableView;
.implements Landroid/view/View$OnClickListener;
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/widget/LinearLayout;",
        "Lcom/miui/networkassistant/ui/view/BindableView<",
        "Lcom/miui/networkassistant/model/WhiteListItem;",
        ">;",
        "Landroid/view/View$OnClickListener;",
        "Landroid/widget/CompoundButton$OnCheckedChangeListener;"
    }
.end annotation


# instance fields
.field protected mAdapterListener:Lcom/miui/networkassistant/ui/adapter/PinnedListAdapter$AppSelectionAdapterListener;

.field protected mContext:Landroid/content/Context;

.field protected mIconView:Landroid/widget/ImageView;

.field protected mListItem:Lcom/miui/networkassistant/model/WhiteListItem;

.field protected mSlidingButton:Lmiuix/slidingwidget/widget/SlidingButton;

.field protected mSummaryView:Landroid/widget/TextView;

.field protected mTitleView:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/miui/networkassistant/ui/view/WhiteAppListItemView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    iput-object p1, p0, Lcom/miui/networkassistant/ui/view/WhiteAppListItemView;->mContext:Landroid/content/Context;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/miui/networkassistant/ui/view/WhiteAppListItemView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    iput-object p1, p0, Lcom/miui/networkassistant/ui/view/WhiteAppListItemView;->mContext:Landroid/content/Context;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    iput-object p1, p0, Lcom/miui/networkassistant/ui/view/WhiteAppListItemView;->mContext:Landroid/content/Context;

    return-void
.end method

.method private setIconView(Ljava/lang/String;)V
    .locals 2

    invoke-static {}, Lcom/miui/networkassistant/utils/IconCacheHelper;->getInstance()Lcom/miui/networkassistant/utils/IconCacheHelper;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/networkassistant/ui/view/WhiteAppListItemView;->mIconView:Landroid/widget/ImageView;

    invoke-virtual {v0, v1, p1}, Lcom/miui/networkassistant/utils/IconCacheHelper;->setIconToImageView(Landroid/widget/ImageView;Ljava/lang/String;)V

    return-void
.end method

.method private setSlidingButton(Z)V
    .locals 2

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v1, p0, Lcom/miui/networkassistant/ui/view/WhiteAppListItemView;->mSlidingButton:Lmiuix/slidingwidget/widget/SlidingButton;

    invoke-virtual {v1, v0}, Landroid/widget/CompoundButton;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    iget-object v0, p0, Lcom/miui/networkassistant/ui/view/WhiteAppListItemView;->mSlidingButton:Lmiuix/slidingwidget/widget/SlidingButton;

    invoke-virtual {v0, p1}, Lmiuix/slidingwidget/widget/SlidingButton;->setChecked(Z)V

    invoke-virtual {p0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object p1, p0, Lcom/miui/networkassistant/ui/view/WhiteAppListItemView;->mSlidingButton:Lmiuix/slidingwidget/widget/SlidingButton;

    invoke-virtual {p1, p0}, Landroid/widget/CompoundButton;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    return-void
.end method

.method private setTitleView(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/miui/networkassistant/ui/view/WhiteAppListItemView;->mTitleView:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method private setTitleView(Ljava/lang/String;Ljava/lang/String;)V
    .locals 21

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v2

    invoke-virtual/range {p2 .. p2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v2

    invoke-virtual/range {p2 .. p2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v2

    invoke-virtual/range {p2 .. p2}, Ljava/lang/String;->length()I

    move-result v3

    add-int/2addr v3, v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v3

    const v4, 0x7f1215ee

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x1

    new-array v5, v4, [Ljava/lang/Object;

    const/4 v6, 0x0

    aput-object v2, v5, v6

    invoke-static {v3, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    const/16 v5, 0xe

    const-string v7, "\\"

    const-string v8, "$"

    const-string v9, "("

    const-string v10, ")"

    const-string v11, "*"

    const-string v12, "+"

    const-string v13, "."

    const-string v14, "["

    const-string v15, "]"

    const-string v16, "?"

    const-string v17, "^"

    const-string v18, "{"

    const-string v19, "}"

    const-string v20, "|"

    filled-new-array/range {v7 .. v20}, [Ljava/lang/String;

    move-result-object v7

    move v8, v6

    :goto_0
    if-ge v8, v5, :cond_1

    aget-object v9, v7, v8

    invoke-virtual {v3, v9}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v9

    if-eqz v9, :cond_0

    iget-object v5, v0, Lcom/miui/networkassistant/ui/view/WhiteAppListItemView;->mTitleView:Landroid/widget/TextView;

    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1

    :cond_0
    add-int/lit8 v8, v8, 0x1

    goto :goto_0

    :cond_1
    move v4, v6

    :goto_1
    if-nez v4, :cond_2

    iget-object v4, v0, Lcom/miui/networkassistant/ui/view/WhiteAppListItemView;->mTitleView:Landroid/widget/TextView;

    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->replaceFirst(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v1

    invoke-virtual {v4, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_2
    return-void
.end method


# virtual methods
.method public dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 3

    invoke-virtual {p0}, Landroid/view/View;->getTop()I

    move-result v0

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    const/high16 v2, 0x41a00000    # 20.0f

    invoke-static {v1, v2}, Lx4/a0;->a(Landroid/content/Context;F)I

    move-result v1

    if-lt v0, v1, :cond_1

    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p1, 0x1

    :goto_1
    return p1
.end method

.method public fillData(Lcom/miui/networkassistant/model/WhiteListItem;)V
    .locals 1

    iput-object p1, p0, Lcom/miui/networkassistant/ui/view/WhiteAppListItemView;->mListItem:Lcom/miui/networkassistant/model/WhiteListItem;

    invoke-virtual {p1}, Lcom/miui/networkassistant/model/WhiteListItem;->getPkgName()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/miui/networkassistant/ui/view/WhiteAppListItemView;->setIconView(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/miui/networkassistant/model/WhiteListItem;->getAppLabel()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/miui/networkassistant/ui/view/WhiteAppListItemView;->setTitleView(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/miui/networkassistant/model/WhiteListItem;->isEnabled()Z

    move-result p1

    invoke-direct {p0, p1}, Lcom/miui/networkassistant/ui/view/WhiteAppListItemView;->setSlidingButton(Z)V

    return-void
.end method

.method public fillData(Lcom/miui/networkassistant/model/WhiteListItem;Ljava/lang/String;)V
    .locals 1

    iput-object p1, p0, Lcom/miui/networkassistant/ui/view/WhiteAppListItemView;->mListItem:Lcom/miui/networkassistant/model/WhiteListItem;

    invoke-virtual {p1}, Lcom/miui/networkassistant/model/WhiteListItem;->getPkgName()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/miui/networkassistant/ui/view/WhiteAppListItemView;->setIconView(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/miui/networkassistant/model/WhiteListItem;->getAppLabel()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0, p2}, Lcom/miui/networkassistant/ui/view/WhiteAppListItemView;->setTitleView(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/miui/networkassistant/model/WhiteListItem;->isEnabled()Z

    move-result p1

    invoke-direct {p0, p1}, Lcom/miui/networkassistant/ui/view/WhiteAppListItemView;->setSlidingButton(Z)V

    return-void
.end method

.method public bridge synthetic fillData(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Lcom/miui/networkassistant/model/WhiteListItem;

    invoke-virtual {p0, p1}, Lcom/miui/networkassistant/ui/view/WhiteAppListItemView;->fillData(Lcom/miui/networkassistant/model/WhiteListItem;)V

    return-void
.end method

.method public bridge synthetic fillData(Ljava/lang/Object;Ljava/lang/String;)V
    .locals 0

    check-cast p1, Lcom/miui/networkassistant/model/WhiteListItem;

    invoke-virtual {p0, p1, p2}, Lcom/miui/networkassistant/ui/view/WhiteAppListItemView;->fillData(Lcom/miui/networkassistant/model/WhiteListItem;Ljava/lang/String;)V

    return-void
.end method

.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 2

    iget-object v0, p0, Lcom/miui/networkassistant/ui/view/WhiteAppListItemView;->mAdapterListener:Lcom/miui/networkassistant/ui/adapter/PinnedListAdapter$AppSelectionAdapterListener;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/miui/networkassistant/ui/view/WhiteAppListItemView;->mListItem:Lcom/miui/networkassistant/model/WhiteListItem;

    invoke-interface {v0, p1, v1, p2}, Lcom/miui/networkassistant/ui/adapter/PinnedListAdapter$AppSelectionAdapterListener;->onAppSelected(Landroid/view/View;Ljava/lang/Object;Z)V

    :cond_0
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 1

    iget-object p1, p0, Lcom/miui/networkassistant/ui/view/WhiteAppListItemView;->mAdapterListener:Lcom/miui/networkassistant/ui/adapter/PinnedListAdapter$AppSelectionAdapterListener;

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/miui/networkassistant/ui/view/WhiteAppListItemView;->mListItem:Lcom/miui/networkassistant/model/WhiteListItem;

    invoke-virtual {p1}, Lcom/miui/networkassistant/model/WhiteListItem;->isEnabled()Z

    move-result p1

    xor-int/lit8 p1, p1, 0x1

    iget-object v0, p0, Lcom/miui/networkassistant/ui/view/WhiteAppListItemView;->mSlidingButton:Lmiuix/slidingwidget/widget/SlidingButton;

    invoke-virtual {v0, p1}, Lmiuix/slidingwidget/widget/SlidingButton;->setChecked(Z)V

    :cond_0
    return-void
.end method

.method protected onFinishInflate()V
    .locals 1

    invoke-super {p0}, Landroid/widget/LinearLayout;->onFinishInflate()V

    const v0, 0x7f0b0506

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/miui/networkassistant/ui/view/WhiteAppListItemView;->mIconView:Landroid/widget/ImageView;

    const v0, 0x7f0b0bc9

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/miui/networkassistant/ui/view/WhiteAppListItemView;->mTitleView:Landroid/widget/TextView;

    const v0, 0x7f0b0b21

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/miui/networkassistant/ui/view/WhiteAppListItemView;->mSummaryView:Landroid/widget/TextView;

    const v0, 0x7f0b0a9f

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lmiuix/slidingwidget/widget/SlidingButton;

    iput-object v0, p0, Lcom/miui/networkassistant/ui/view/WhiteAppListItemView;->mSlidingButton:Lmiuix/slidingwidget/widget/SlidingButton;

    return-void
.end method

.method public setOnSelectionListener(Lcom/miui/networkassistant/ui/adapter/PinnedListAdapter$AppSelectionAdapterListener;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/networkassistant/ui/view/WhiteAppListItemView;->mAdapterListener:Lcom/miui/networkassistant/ui/adapter/PinnedListAdapter$AppSelectionAdapterListener;

    return-void
.end method
