.class public Lcom/miui/networkassistant/ui/adapter/FirewallMobileListAdapter;
.super Lcom/miui/networkassistant/ui/adapter/BaseFirewallAdapter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/networkassistant/ui/adapter/FirewallMobileListAdapter$ViewHolder;,
        Lcom/miui/networkassistant/ui/adapter/FirewallMobileListAdapter$MobileFirewallComparator;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/miui/networkassistant/ui/adapter/BaseFirewallAdapter<",
        "Lcom/miui/networkassistant/ui/adapter/FirewallMobileListAdapter$ViewHolder;",
        ">;"
    }
.end annotation


# instance fields
.field private mAppList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/miui/networkassistant/model/AppInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mIsSystem:Z

.field private mRuleChangedListener:Lcom/miui/networkassistant/ui/view/FirewallRuleView$OnRuleChangedListener;

.field private mSlotNum:I


# direct methods
.method public constructor <init>(Lmiuix/appcompat/app/AppCompatActivity;Ljava/util/ArrayList;Lcom/miui/networkassistant/service/IFirewallBinder;Lcom/miui/networkassistant/ui/view/FirewallRuleView$OnRuleChangedListener;Z)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lmiuix/appcompat/app/AppCompatActivity;",
            "Ljava/util/ArrayList<",
            "Lcom/miui/networkassistant/model/AppInfo;",
            ">;",
            "Lcom/miui/networkassistant/service/IFirewallBinder;",
            "Lcom/miui/networkassistant/ui/view/FirewallRuleView$OnRuleChangedListener;",
            "Z)V"
        }
    .end annotation

    invoke-direct {p0, p1, p3}, Lcom/miui/networkassistant/ui/adapter/BaseFirewallAdapter;-><init>(Lmiuix/appcompat/app/AppCompatActivity;Lcom/miui/networkassistant/service/IFirewallBinder;)V

    iput-object p2, p0, Lcom/miui/networkassistant/ui/adapter/FirewallMobileListAdapter;->mAppList:Ljava/util/ArrayList;

    iput-object p4, p0, Lcom/miui/networkassistant/ui/adapter/FirewallMobileListAdapter;->mRuleChangedListener:Lcom/miui/networkassistant/ui/view/FirewallRuleView$OnRuleChangedListener;

    iput-boolean p5, p0, Lcom/miui/networkassistant/ui/adapter/FirewallMobileListAdapter;->mIsSystem:Z

    return-void
.end method

.method private bindViewBySlot(Lcom/miui/networkassistant/ui/adapter/FirewallMobileListAdapter$ViewHolder;Lcom/miui/networkassistant/model/AppInfo;I)V
    .locals 3

    iget-object v0, p2, Lcom/miui/networkassistant/model/AppInfo;->packageName:Ljava/lang/CharSequence;

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "icon_system_app"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/16 v1, 0x8

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    iget-object p2, p1, Lcom/miui/networkassistant/ui/adapter/FirewallMobileListAdapter$ViewHolder;->slidingButton:Lmiuix/slidingwidget/widget/SlidingButton;

    invoke-virtual {p2, v1}, Landroid/view/View;->setVisibility(I)V

    iget-object p1, p1, Lcom/miui/networkassistant/ui/adapter/FirewallMobileListAdapter$ViewHolder;->arrow:Landroid/widget/ImageView;

    invoke-virtual {p1, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_0

    :cond_0
    iget-object v0, p1, Lcom/miui/networkassistant/ui/adapter/FirewallMobileListAdapter$ViewHolder;->arrow:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v0, p1, Lcom/miui/networkassistant/ui/adapter/FirewallMobileListAdapter$ViewHolder;->slidingButton:Lmiuix/slidingwidget/widget/SlidingButton;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/miui/networkassistant/ui/adapter/BaseFirewallAdapter;->mRuleCacher:Lcom/miui/networkassistant/service/wrapper/FirewallRuleCacher;

    invoke-virtual {v0}, Lcom/miui/networkassistant/service/wrapper/FirewallRuleCacher;->notifyRuleChanged()V

    iget-object v0, p1, Lcom/miui/networkassistant/ui/adapter/FirewallMobileListAdapter$ViewHolder;->slidingButton:Lmiuix/slidingwidget/widget/SlidingButton;

    invoke-virtual {v0, p2}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/miui/networkassistant/ui/adapter/BaseFirewallAdapter;->mRuleCacher:Lcom/miui/networkassistant/service/wrapper/FirewallRuleCacher;

    iget-object p2, p2, Lcom/miui/networkassistant/model/AppInfo;->packageName:Ljava/lang/CharSequence;

    invoke-interface {p2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2, p3}, Lcom/miui/networkassistant/service/wrapper/FirewallRuleCacher;->getMobileRule(Ljava/lang/String;I)Lcom/miui/networkassistant/model/FirewallRule;

    move-result-object p2

    sget-object p3, Lcom/miui/networkassistant/model/FirewallRule;->Allow:Lcom/miui/networkassistant/model/FirewallRule;

    if-ne p2, p3, :cond_1

    const/4 v2, 0x1

    :cond_1
    iget-object p2, p1, Lcom/miui/networkassistant/ui/adapter/FirewallMobileListAdapter$ViewHolder;->slidingButton:Lmiuix/slidingwidget/widget/SlidingButton;

    invoke-virtual {p2, v2}, Lmiuix/slidingwidget/widget/SlidingButton;->setChecked(Z)V

    iget-object p2, p1, Lcom/miui/networkassistant/ui/adapter/FirewallMobileListAdapter$ViewHolder;->slidingButton:Lmiuix/slidingwidget/widget/SlidingButton;

    new-instance p3, Lcom/miui/networkassistant/ui/adapter/a;

    invoke-direct {p3, p0, p1}, Lcom/miui/networkassistant/ui/adapter/a;-><init>(Lcom/miui/networkassistant/ui/adapter/FirewallMobileListAdapter;Lcom/miui/networkassistant/ui/adapter/FirewallMobileListAdapter$ViewHolder;)V

    invoke-virtual {p2, p3}, Lmiuix/slidingwidget/widget/SlidingButton;->setOnPerformCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    :goto_0
    return-void
.end method

.method private handleSystemApp(Ljava/util/ArrayList;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/miui/networkassistant/model/AppInfo;",
            ">;)V"
        }
    .end annotation

    iget-boolean v0, p0, Lcom/miui/networkassistant/ui/adapter/FirewallMobileListAdapter;->mIsSystem:Z

    if-nez v0, :cond_1

    new-instance v0, Lcom/miui/networkassistant/model/AppInfo;

    const/16 v1, -0xa

    const/4 v2, 0x0

    const-string v3, "icon_system_app"

    invoke-direct {v0, v3, v1, v2}, Lcom/miui/networkassistant/model/AppInfo;-><init>(Ljava/lang/CharSequence;IZ)V

    iget-boolean v1, p0, Lcom/miui/networkassistant/ui/adapter/BaseFirewallAdapter;->mIsInSearch:Z

    if-eqz v1, :cond_0

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    iget-boolean v1, p0, Lcom/miui/networkassistant/ui/adapter/BaseFirewallAdapter;->mIsInSearch:Z

    if-nez v1, :cond_1

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v1

    invoke-virtual {p1, v1, v0}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public static synthetic k(Lcom/miui/networkassistant/ui/adapter/FirewallMobileListAdapter;Lcom/miui/networkassistant/ui/adapter/FirewallMobileListAdapter$ViewHolder;Landroid/widget/CompoundButton;Z)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/miui/networkassistant/ui/adapter/FirewallMobileListAdapter;->lambda$bindViewBySlot$0(Lcom/miui/networkassistant/ui/adapter/FirewallMobileListAdapter$ViewHolder;Landroid/widget/CompoundButton;Z)V

    return-void
.end method

.method private synthetic lambda$bindViewBySlot$0(Lcom/miui/networkassistant/ui/adapter/FirewallMobileListAdapter$ViewHolder;Landroid/widget/CompoundButton;Z)V
    .locals 3

    if-eqz p3, :cond_0

    sget-object p2, Lcom/miui/networkassistant/model/FirewallRule;->Allow:Lcom/miui/networkassistant/model/FirewallRule;

    goto :goto_0

    :cond_0
    sget-object p2, Lcom/miui/networkassistant/model/FirewallRule;->Restrict:Lcom/miui/networkassistant/model/FirewallRule;

    :goto_0
    if-nez p3, :cond_1

    sget-object v0, Lcom/miui/networkassistant/model/FirewallRule;->Allow:Lcom/miui/networkassistant/model/FirewallRule;

    goto :goto_1

    :cond_1
    sget-object v0, Lcom/miui/networkassistant/model/FirewallRule;->Restrict:Lcom/miui/networkassistant/model/FirewallRule;

    :goto_1
    iget-object v1, p0, Lcom/miui/networkassistant/ui/adapter/FirewallMobileListAdapter;->mRuleChangedListener:Lcom/miui/networkassistant/ui/view/FirewallRuleView$OnRuleChangedListener;

    iget-object v2, p1, Lcom/miui/networkassistant/ui/adapter/FirewallMobileListAdapter$ViewHolder;->slidingButton:Lmiuix/slidingwidget/widget/SlidingButton;

    invoke-interface {v1, v2, v0}, Lcom/miui/networkassistant/ui/view/FirewallRuleView$OnRuleChangedListener;->onRuleChanging(Landroid/view/View;Lcom/miui/networkassistant/model/FirewallRule;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p1, Lcom/miui/networkassistant/ui/adapter/FirewallMobileListAdapter$ViewHolder;->slidingButton:Lmiuix/slidingwidget/widget/SlidingButton;

    invoke-virtual {v0, p3}, Lmiuix/slidingwidget/widget/SlidingButton;->setChecked(Z)V

    iget-object p3, p0, Lcom/miui/networkassistant/ui/adapter/FirewallMobileListAdapter;->mRuleChangedListener:Lcom/miui/networkassistant/ui/view/FirewallRuleView$OnRuleChangedListener;

    iget-object p1, p1, Lcom/miui/networkassistant/ui/adapter/FirewallMobileListAdapter$ViewHolder;->slidingButton:Lmiuix/slidingwidget/widget/SlidingButton;

    invoke-interface {p3, p1, p2}, Lcom/miui/networkassistant/ui/view/FirewallRuleView$OnRuleChangedListener;->onRuleChanged(Landroid/view/View;Lcom/miui/networkassistant/model/FirewallRule;)V

    goto :goto_2

    :cond_2
    iget-object p1, p1, Lcom/miui/networkassistant/ui/adapter/FirewallMobileListAdapter$ViewHolder;->slidingButton:Lmiuix/slidingwidget/widget/SlidingButton;

    xor-int/lit8 p2, p3, 0x1

    invoke-virtual {p1, p2}, Lmiuix/slidingwidget/widget/SlidingButton;->setChecked(Z)V

    :goto_2
    return-void
.end method

.method private setLabelTextView(Landroid/widget/TextView;Ljava/lang/String;Ljava/lang/String;)V
    .locals 22

    move-object/from16 v0, p1

    move-object/from16 v1, p2

    invoke-static/range {p3 .. p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual/range {p1 .. p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_2

    :cond_0
    invoke-virtual/range {p2 .. p2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v2

    invoke-virtual/range {p3 .. p3}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-virtual/range {p2 .. p2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v2

    invoke-virtual/range {p3 .. p3}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v2

    invoke-virtual/range {p3 .. p3}, Ljava/lang/String;->length()I

    move-result v3

    add-int/2addr v3, v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    move-object/from16 v3, p0

    iget-object v4, v3, Lcom/miui/networkassistant/ui/adapter/BaseFirewallAdapter;->mContext:Lmiuix/appcompat/app/AppCompatActivity;

    const v5, 0x7f1215ee

    invoke-virtual {v4, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x1

    new-array v6, v5, [Ljava/lang/Object;

    const/4 v7, 0x0

    aput-object v2, v6, v7

    invoke-static {v4, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    const/16 v6, 0xe

    const-string v8, "\\"

    const-string v9, "$"

    const-string v10, "("

    const-string v11, ")"

    const-string v12, "*"

    const-string v13, "+"

    const-string v14, "."

    const-string v15, "["

    const-string v16, "]"

    const-string v17, "?"

    const-string v18, "^"

    const-string v19, "{"

    const-string v20, "}"

    const-string v21, "|"

    filled-new-array/range {v8 .. v21}, [Ljava/lang/String;

    move-result-object v8

    move v9, v7

    :goto_0
    if-ge v9, v6, :cond_2

    aget-object v10, v8, v9

    invoke-virtual {v4, v10}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v10

    if-eqz v10, :cond_1

    invoke-virtual {v1, v2, v4}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v6

    invoke-virtual {v0, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1

    :cond_1
    add-int/lit8 v9, v9, 0x1

    goto :goto_0

    :cond_2
    move v5, v7

    :goto_1
    if-nez v5, :cond_4

    invoke-virtual {v1, v2, v4}, Ljava/lang/String;->replaceFirst(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_3

    :cond_3
    :goto_2
    move-object/from16 v3, p0

    :cond_4
    :goto_3
    return-void
.end method


# virtual methods
.method public getComparator()Lcom/miui/networkassistant/ui/adapter/BaseFirewallAdapter$FirewallComparator;
    .locals 4

    new-instance v0, Lcom/miui/networkassistant/ui/adapter/FirewallMobileListAdapter$MobileFirewallComparator;

    iget-object v1, p0, Lcom/miui/networkassistant/ui/adapter/BaseFirewallAdapter;->mContext:Lmiuix/appcompat/app/AppCompatActivity;

    iget-object v2, p0, Lcom/miui/networkassistant/ui/adapter/BaseFirewallAdapter;->mRuleCacher:Lcom/miui/networkassistant/service/wrapper/FirewallRuleCacher;

    invoke-virtual {v2}, Lcom/miui/networkassistant/service/wrapper/FirewallRuleCacher;->copy()Lcom/miui/networkassistant/service/wrapper/FirewallRuleCacher;

    move-result-object v2

    iget v3, p0, Lcom/miui/networkassistant/ui/adapter/FirewallMobileListAdapter;->mSlotNum:I

    invoke-direct {v0, v1, v2, v3}, Lcom/miui/networkassistant/ui/adapter/FirewallMobileListAdapter$MobileFirewallComparator;-><init>(Landroid/content/Context;Lcom/miui/networkassistant/service/wrapper/FirewallRuleCacher;I)V

    return-object v0
.end method

.method public bridge synthetic getComparator()Ljava/util/Comparator;
    .locals 1

    invoke-virtual {p0}, Lcom/miui/networkassistant/ui/adapter/FirewallMobileListAdapter;->getComparator()Lcom/miui/networkassistant/ui/adapter/BaseFirewallAdapter$FirewallComparator;

    move-result-object v0

    return-object v0
.end method

.method public getData()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Lcom/miui/networkassistant/model/AppInfo;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/miui/networkassistant/ui/adapter/FirewallMobileListAdapter;->mAppList:Ljava/util/ArrayList;

    return-object v0
.end method

.method protected getFirewallRuleCacherType()I
    .locals 1

    sget-boolean v0, Lcom/miui/networkassistant/utils/DeviceUtil;->IS_DUAL_CARD:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x6

    goto :goto_0

    :cond_0
    const/4 v0, 0x2

    :goto_0
    return v0
.end method

.method public getItemCount()I
    .locals 1

    iget-object v0, p0, Lcom/miui/networkassistant/ui/adapter/FirewallMobileListAdapter;->mAppList:Ljava/util/ArrayList;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    :goto_0
    return v0
.end method

.method public getItemViewGroup(I)I
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public bridge synthetic onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$c0;I)V
    .locals 0
    .param p1    # Landroidx/recyclerview/widget/RecyclerView$c0;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    check-cast p1, Lcom/miui/networkassistant/ui/adapter/FirewallMobileListAdapter$ViewHolder;

    invoke-virtual {p0, p1, p2}, Lcom/miui/networkassistant/ui/adapter/FirewallMobileListAdapter;->onBindViewHolder(Lcom/miui/networkassistant/ui/adapter/FirewallMobileListAdapter$ViewHolder;I)V

    return-void
.end method

.method public onBindViewHolder(Lcom/miui/networkassistant/ui/adapter/FirewallMobileListAdapter$ViewHolder;I)V
    .locals 3
    .param p1    # Lcom/miui/networkassistant/ui/adapter/FirewallMobileListAdapter$ViewHolder;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    invoke-super {p0, p1, p2}, Lcom/miui/networkassistant/ui/adapter/BaseFirewallAdapter;->onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$c0;I)V

    invoke-static {}, Lbl/l;->a()I

    move-result v0

    const/4 v1, 0x1

    if-gt v0, v1, :cond_0

    sget-object v0, Lxc/v;->a:Lxc/v$a;

    iget-object v1, p0, Lcom/miui/networkassistant/ui/adapter/BaseFirewallAdapter;->mContext:Lmiuix/appcompat/app/AppCompatActivity;

    iget-object v2, p1, Landroidx/recyclerview/widget/RecyclerView$c0;->itemView:Landroid/view/View;

    invoke-virtual {v0, v1, v2}, Lxc/v$a;->a(Landroid/content/Context;Landroid/view/View;)V

    goto :goto_0

    :cond_0
    sget-object v0, Lxc/v;->a:Lxc/v$a;

    iget-object v1, p0, Lcom/miui/networkassistant/ui/adapter/BaseFirewallAdapter;->mContext:Lmiuix/appcompat/app/AppCompatActivity;

    iget-object v2, p1, Landroidx/recyclerview/widget/RecyclerView$c0;->itemView:Landroid/view/View;

    invoke-virtual {v0, v1, v2}, Lxc/v$a;->e(Lmiuix/appcompat/app/AppCompatActivity;Landroid/view/View;)V

    :goto_0
    iget-object v0, p0, Lcom/miui/networkassistant/ui/adapter/FirewallMobileListAdapter;->mAppList:Ljava/util/ArrayList;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-le v0, p2, :cond_1

    iget-object v0, p1, Landroidx/recyclerview/widget/RecyclerView$c0;->itemView:Landroid/view/View;

    new-instance v1, Lcom/miui/networkassistant/ui/adapter/FirewallMobileListAdapter$1;

    invoke-direct {v1, p0, p2}, Lcom/miui/networkassistant/ui/adapter/FirewallMobileListAdapter$1;-><init>(Lcom/miui/networkassistant/ui/adapter/FirewallMobileListAdapter;I)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/miui/networkassistant/ui/adapter/FirewallMobileListAdapter;->mAppList:Ljava/util/ArrayList;

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/miui/networkassistant/model/AppInfo;

    invoke-static {}, Lcom/miui/networkassistant/utils/IconCacheHelper;->getInstance()Lcom/miui/networkassistant/utils/IconCacheHelper;

    move-result-object v0

    iget-object v1, p1, Lcom/miui/networkassistant/ui/adapter/FirewallMobileListAdapter$ViewHolder;->icon:Landroid/widget/ImageView;

    iget-object v2, p2, Lcom/miui/networkassistant/model/AppInfo;->packageName:Ljava/lang/CharSequence;

    invoke-interface {v2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/miui/networkassistant/utils/IconCacheHelper;->setIconToImageView(Landroid/widget/ImageView;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/miui/networkassistant/ui/adapter/BaseFirewallAdapter;->mContext:Lmiuix/appcompat/app/AppCompatActivity;

    iget-object v1, p2, Lcom/miui/networkassistant/model/AppInfo;->packageName:Ljava/lang/CharSequence;

    invoke-static {v0, v1}, Lcom/miui/networkassistant/utils/LabelLoadHelper;->loadLabel(Landroid/content/Context;Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v0

    iget-object v1, p1, Lcom/miui/networkassistant/ui/adapter/FirewallMobileListAdapter$ViewHolder;->appName:Landroid/widget/TextView;

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v2, p0, Lcom/miui/networkassistant/ui/adapter/BaseFirewallAdapter;->mSearchInput:Ljava/lang/String;

    invoke-direct {p0, v1, v0, v2}, Lcom/miui/networkassistant/ui/adapter/FirewallMobileListAdapter;->setLabelTextView(Landroid/widget/TextView;Ljava/lang/String;Ljava/lang/String;)V

    iget v0, p0, Lcom/miui/networkassistant/ui/adapter/FirewallMobileListAdapter;->mSlotNum:I

    invoke-direct {p0, p1, p2, v0}, Lcom/miui/networkassistant/ui/adapter/FirewallMobileListAdapter;->bindViewBySlot(Lcom/miui/networkassistant/ui/adapter/FirewallMobileListAdapter$ViewHolder;Lcom/miui/networkassistant/model/AppInfo;I)V

    :cond_1
    return-void
.end method

.method public bridge synthetic onCreateViewHolder(Landroid/view/ViewGroup;I)Landroidx/recyclerview/widget/RecyclerView$c0;
    .locals 0
    .param p1    # Landroid/view/ViewGroup;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    invoke-virtual {p0, p1, p2}, Lcom/miui/networkassistant/ui/adapter/FirewallMobileListAdapter;->onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/miui/networkassistant/ui/adapter/FirewallMobileListAdapter$ViewHolder;

    move-result-object p1

    return-object p1
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/miui/networkassistant/ui/adapter/FirewallMobileListAdapter$ViewHolder;
    .locals 2
    .param p1    # Landroid/view/ViewGroup;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    iget-object p2, p0, Lcom/miui/networkassistant/ui/adapter/BaseFirewallAdapter;->mContext:Lmiuix/appcompat/app/AppCompatActivity;

    invoke-static {p2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p2

    const v0, 0x7f0e02ac

    const/4 v1, 0x0

    invoke-virtual {p2, v0, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    new-instance p2, Lcom/miui/networkassistant/ui/adapter/FirewallMobileListAdapter$ViewHolder;

    invoke-direct {p2, p0, p1}, Lcom/miui/networkassistant/ui/adapter/FirewallMobileListAdapter$ViewHolder;-><init>(Lcom/miui/networkassistant/ui/adapter/FirewallMobileListAdapter;Landroid/view/View;)V

    return-object p2
.end method

.method public setData(Ljava/util/ArrayList;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/miui/networkassistant/model/AppInfo;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/miui/networkassistant/ui/adapter/FirewallMobileListAdapter;->mAppList:Ljava/util/ArrayList;

    invoke-direct {p0, p1}, Lcom/miui/networkassistant/ui/adapter/FirewallMobileListAdapter;->handleSystemApp(Ljava/util/ArrayList;)V

    invoke-virtual {p0}, Lmiuix/recyclerview/card/e;->updateGroupInfo()V

    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$h;->notifyDataSetChanged()V

    return-void
.end method

.method public setHasStableIds()V
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroidx/recyclerview/widget/RecyclerView$h;->setHasStableIds(Z)V

    return-void
.end method

.method public setSlotNum(I)V
    .locals 0

    iput p1, p0, Lcom/miui/networkassistant/ui/adapter/FirewallMobileListAdapter;->mSlotNum:I

    return-void
.end method
