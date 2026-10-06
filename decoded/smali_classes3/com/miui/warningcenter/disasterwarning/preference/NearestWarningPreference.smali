.class public Lcom/miui/warningcenter/disasterwarning/preference/NearestWarningPreference;
.super Landroidx/preference/Preference;
.source "SourceFile"


# instance fields
.field private mAlertModel:Lcom/miui/warningcenter/disasterwarning/model/DisasterAlertModel;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0, p1}, Landroidx/preference/Preference;-><init>(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Landroidx/preference/Preference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Landroidx/preference/Preference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method static synthetic access$000(Lcom/miui/warningcenter/disasterwarning/preference/NearestWarningPreference;)Lcom/miui/warningcenter/disasterwarning/model/DisasterAlertModel;
    .locals 0

    iget-object p0, p0, Lcom/miui/warningcenter/disasterwarning/preference/NearestWarningPreference;->mAlertModel:Lcom/miui/warningcenter/disasterwarning/model/DisasterAlertModel;

    return-object p0
.end method

.method static synthetic access$100(Lcom/miui/warningcenter/disasterwarning/preference/NearestWarningPreference;Lcom/miui/warningcenter/disasterwarning/model/DisasterAlertModel;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/miui/warningcenter/disasterwarning/preference/NearestWarningPreference;->startDisasterDetail(Lcom/miui/warningcenter/disasterwarning/model/DisasterAlertModel;)V

    return-void
.end method

.method private startDisasterDetail(Lcom/miui/warningcenter/disasterwarning/model/DisasterAlertModel;)V
    .locals 1

    invoke-virtual {p0}, Landroidx/preference/Preference;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/miui/warningcenter/disasterwarning/WarningCenterDisasterDetailActivity;->show(Landroid/content/Context;Lcom/miui/warningcenter/disasterwarning/model/DisasterAlertModel;)V

    return-void
.end method


# virtual methods
.method public onBindViewHolder(Landroidx/preference/h;)V
    .locals 11

    invoke-super {p0, p1}, Landroidx/preference/Preference;->onBindViewHolder(Landroidx/preference/h;)V

    iget-object v0, p1, Landroidx/recyclerview/widget/RecyclerView$c0;->itemView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroidx/recyclerview/widget/RecyclerView$o;

    invoke-virtual {p0}, Landroidx/preference/Preference;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f071e0c

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    invoke-static {}, Lx4/t;->p()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {p0}, Landroidx/preference/Preference;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f070cfd

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Landroidx/preference/Preference;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f070cf3

    :goto_0
    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    invoke-virtual {v0, v2, v1, v2, v1}, Landroid/view/ViewGroup$MarginLayoutParams;->setMargins(IIII)V

    iget-object v0, p1, Landroidx/recyclerview/widget/RecyclerView$c0;->itemView:Landroid/view/View;

    const v1, 0x7f0b0cf3

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iget-object v1, p1, Landroidx/recyclerview/widget/RecyclerView$c0;->itemView:Landroid/view/View;

    const v2, 0x7f0b0c58

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iget-object v2, p1, Landroidx/recyclerview/widget/RecyclerView$c0;->itemView:Landroid/view/View;

    const v3, 0x7f0b0c93

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iget-object v3, p1, Landroidx/recyclerview/widget/RecyclerView$c0;->itemView:Landroid/view/View;

    const v4, 0x7f0b0c71

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iget-object v4, p1, Landroidx/recyclerview/widget/RecyclerView$c0;->itemView:Landroid/view/View;

    const v5, 0x7f0b0641

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Lcom/miui/warningcenter/disasterwarning/view/DrawBitmapView;

    iget-object v5, p1, Landroidx/recyclerview/widget/RecyclerView$c0;->itemView:Landroid/view/View;

    const v6, 0x7f0b027f

    invoke-virtual {v5, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/RelativeLayout;

    iget-object p1, p1, Landroidx/recyclerview/widget/RecyclerView$c0;->itemView:Landroid/view/View;

    new-instance v6, Lcom/miui/warningcenter/disasterwarning/preference/NearestWarningPreference$1;

    invoke-direct {v6, p0}, Lcom/miui/warningcenter/disasterwarning/preference/NearestWarningPreference$1;-><init>(Lcom/miui/warningcenter/disasterwarning/preference/NearestWarningPreference;)V

    invoke-virtual {p1, v6}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object p1, p0, Lcom/miui/warningcenter/disasterwarning/preference/NearestWarningPreference;->mAlertModel:Lcom/miui/warningcenter/disasterwarning/model/DisasterAlertModel;

    if-eqz p1, :cond_11

    const/4 p1, 0x0

    invoke-virtual {v3, p1}, Landroid/view/View;->setVisibility(I)V

    iget-object v6, p0, Lcom/miui/warningcenter/disasterwarning/preference/NearestWarningPreference;->mAlertModel:Lcom/miui/warningcenter/disasterwarning/model/DisasterAlertModel;

    invoke-virtual {v6}, Lcom/miui/warningcenter/disasterwarning/model/DisasterAlertModel;->getMsgType()Ljava/lang/String;

    move-result-object v6

    const-string v7, "Alert"

    invoke-virtual {v7, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_1

    const v6, 0x7f121c29

    :goto_1
    invoke-virtual {v3, v6}, Landroid/widget/TextView;->setText(I)V

    goto :goto_2

    :cond_1
    iget-object v6, p0, Lcom/miui/warningcenter/disasterwarning/preference/NearestWarningPreference;->mAlertModel:Lcom/miui/warningcenter/disasterwarning/model/DisasterAlertModel;

    invoke-virtual {v6}, Lcom/miui/warningcenter/disasterwarning/model/DisasterAlertModel;->getMsgType()Ljava/lang/String;

    move-result-object v6

    const-string v7, "Update"

    invoke-virtual {v7, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_2

    const v6, 0x7f121c2a

    goto :goto_1

    :cond_2
    iget-object v6, p0, Lcom/miui/warningcenter/disasterwarning/preference/NearestWarningPreference;->mAlertModel:Lcom/miui/warningcenter/disasterwarning/model/DisasterAlertModel;

    invoke-virtual {v6}, Lcom/miui/warningcenter/disasterwarning/model/DisasterAlertModel;->getMsgType()Ljava/lang/String;

    move-result-object v6

    const-string v7, "Cancel"

    invoke-virtual {v7, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_3

    const v6, 0x7f121c28

    goto :goto_1

    :cond_3
    :goto_2
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v7, p0, Lcom/miui/warningcenter/disasterwarning/preference/NearestWarningPreference;->mAlertModel:Lcom/miui/warningcenter/disasterwarning/model/DisasterAlertModel;

    invoke-virtual {v7}, Lcom/miui/warningcenter/disasterwarning/model/DisasterAlertModel;->getEffective()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, " "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v8, p0, Lcom/miui/warningcenter/disasterwarning/preference/NearestWarningPreference;->mAlertModel:Lcom/miui/warningcenter/disasterwarning/model/DisasterAlertModel;

    invoke-virtual {v8}, Lcom/miui/warningcenter/disasterwarning/model/DisasterAlertModel;->getSender()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    :try_start_0
    new-instance v8, Ljava/text/SimpleDateFormat;

    const-string v9, "yyyy-MM-dd HH:mm:ss"

    invoke-direct {v8, v9}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    iget-object v9, p0, Lcom/miui/warningcenter/disasterwarning/preference/NearestWarningPreference;->mAlertModel:Lcom/miui/warningcenter/disasterwarning/model/DisasterAlertModel;

    invoke-virtual {v9}, Lcom/miui/warningcenter/disasterwarning/model/DisasterAlertModel;->getEffective()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/text/DateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v8

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v7, p0, Lcom/miui/warningcenter/disasterwarning/preference/NearestWarningPreference;->mAlertModel:Lcom/miui/warningcenter/disasterwarning/model/DisasterAlertModel;

    invoke-virtual {v7}, Lcom/miui/warningcenter/disasterwarning/model/DisasterAlertModel;->getSender()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v1, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_3

    :catch_0
    invoke-virtual {v1, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :goto_3
    iget-object v6, p0, Lcom/miui/warningcenter/disasterwarning/preference/NearestWarningPreference;->mAlertModel:Lcom/miui/warningcenter/disasterwarning/model/DisasterAlertModel;

    invoke-virtual {v6}, Lcom/miui/warningcenter/disasterwarning/model/DisasterAlertModel;->getSeverity()Ljava/lang/String;

    move-result-object v6

    const-string v7, "red"

    invoke-virtual {v7, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    const-string v7, "yellow"

    if-eqz v6, :cond_4

    const v6, 0x7f0810c9

    invoke-virtual {v5, v6}, Landroid/view/View;->setBackgroundResource(I)V

    invoke-virtual {p0}, Landroidx/preference/Preference;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f121c1d

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0}, Landroidx/preference/Preference;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v8, 0x7f121bfa    # 1.9421255E38f

    :goto_4
    invoke-virtual {v6, v8}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    goto/16 :goto_5

    :cond_4
    iget-object v6, p0, Lcom/miui/warningcenter/disasterwarning/preference/NearestWarningPreference;->mAlertModel:Lcom/miui/warningcenter/disasterwarning/model/DisasterAlertModel;

    invoke-virtual {v6}, Lcom/miui/warningcenter/disasterwarning/model/DisasterAlertModel;->getSeverity()Ljava/lang/String;

    move-result-object v6

    const-string v8, "orange"

    invoke-virtual {v8, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_5

    const v6, 0x7f0810c7

    invoke-virtual {v5, v6}, Landroid/view/View;->setBackgroundResource(I)V

    invoke-virtual {p0}, Landroidx/preference/Preference;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f121c06

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0}, Landroidx/preference/Preference;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v8, 0x7f121bfb

    goto :goto_4

    :cond_5
    iget-object v6, p0, Lcom/miui/warningcenter/disasterwarning/preference/NearestWarningPreference;->mAlertModel:Lcom/miui/warningcenter/disasterwarning/model/DisasterAlertModel;

    invoke-virtual {v6}, Lcom/miui/warningcenter/disasterwarning/model/DisasterAlertModel;->getSeverity()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v7, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_6

    const v6, 0x7f0810cc

    invoke-virtual {v5, v6}, Landroid/view/View;->setBackgroundResource(I)V

    invoke-virtual {p0}, Landroidx/preference/Preference;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f121c2b

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0}, Landroidx/preference/Preference;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v8, 0x7f121bfc

    goto :goto_4

    :cond_6
    const v6, 0x7f0810c4

    invoke-virtual {v5, v6}, Landroid/view/View;->setBackgroundResource(I)V

    invoke-virtual {p0}, Landroidx/preference/Preference;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f121be5

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0}, Landroidx/preference/Preference;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v8, 0x7f121bfd

    goto/16 :goto_4

    :goto_5
    invoke-virtual {p0}, Landroidx/preference/Preference;->getContext()Landroid/content/Context;

    move-result-object v8

    invoke-virtual {v8}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    const v9, 0x7f060e62

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getColor(I)I

    move-result v8

    iget-object v9, p0, Lcom/miui/warningcenter/disasterwarning/preference/NearestWarningPreference;->mAlertModel:Lcom/miui/warningcenter/disasterwarning/model/DisasterAlertModel;

    invoke-virtual {v9}, Lcom/miui/warningcenter/disasterwarning/model/DisasterAlertModel;->getSeverity()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v7, v9}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_7

    invoke-virtual {p0}, Landroidx/preference/Preference;->getContext()Landroid/content/Context;

    move-result-object v7

    invoke-virtual {v7}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v8, 0x7f060e63

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getColor(I)I

    move-result v8

    :cond_7
    invoke-virtual {v2, v8}, Landroid/widget/TextView;->setTextColor(I)V

    invoke-virtual {v1, v8}, Landroid/widget/TextView;->setTextColor(I)V

    invoke-virtual {v3, v8}, Landroid/widget/TextView;->setTextColor(I)V

    iget-object v1, p0, Lcom/miui/warningcenter/disasterwarning/preference/NearestWarningPreference;->mAlertModel:Lcom/miui/warningcenter/disasterwarning/model/DisasterAlertModel;

    invoke-virtual {v1}, Lcom/miui/warningcenter/disasterwarning/model/DisasterAlertModel;->getWarningType()Ljava/lang/String;

    move-result-object v1

    const-string v3, "accurate"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const-string v3, ")"

    const-string v7, "("

    if-eqz v1, :cond_8

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v8, p0, Lcom/miui/warningcenter/disasterwarning/preference/NearestWarningPreference;->mAlertModel:Lcom/miui/warningcenter/disasterwarning/model/DisasterAlertModel;

    invoke-virtual {v8}, Lcom/miui/warningcenter/disasterwarning/model/DisasterAlertModel;->getHeadline()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    goto :goto_6

    :cond_8
    const v8, 0x7f121c09

    sget-object v9, Lcom/miui/warningcenter/disasterwarning/Utils;->TITLE_LIST:Ljava/util/Map;

    iget-object v10, p0, Lcom/miui/warningcenter/disasterwarning/preference/NearestWarningPreference;->mAlertModel:Lcom/miui/warningcenter/disasterwarning/model/DisasterAlertModel;

    invoke-virtual {v10}, Lcom/miui/warningcenter/disasterwarning/model/DisasterAlertModel;->getEventType()Ljava/lang/String;

    move-result-object v10

    invoke-interface {v9, v10}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_9

    iget-object v8, p0, Lcom/miui/warningcenter/disasterwarning/preference/NearestWarningPreference;->mAlertModel:Lcom/miui/warningcenter/disasterwarning/model/DisasterAlertModel;

    invoke-virtual {v8}, Lcom/miui/warningcenter/disasterwarning/model/DisasterAlertModel;->getEventType()Ljava/lang/String;

    move-result-object v8

    invoke-interface {v9, v8}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/Integer;

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v8

    :cond_9
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Landroidx/preference/Preference;->getContext()Landroid/content/Context;

    move-result-object v10

    invoke-virtual {v10}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    invoke-virtual {v10, v8}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    :goto_6
    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const v0, 0x7f0810f4

    sget-object v3, Lcom/miui/warningcenter/disasterwarning/Utils;->ICON_LIST:Ljava/util/Map;

    iget-object v5, p0, Lcom/miui/warningcenter/disasterwarning/preference/NearestWarningPreference;->mAlertModel:Lcom/miui/warningcenter/disasterwarning/model/DisasterAlertModel;

    invoke-virtual {v5}, Lcom/miui/warningcenter/disasterwarning/model/DisasterAlertModel;->getEventType()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v3, v5}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_a

    iget-object v0, p0, Lcom/miui/warningcenter/disasterwarning/preference/NearestWarningPreference;->mAlertModel:Lcom/miui/warningcenter/disasterwarning/model/DisasterAlertModel;

    invoke-virtual {v0}, Lcom/miui/warningcenter/disasterwarning/model/DisasterAlertModel;->getEventType()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v3, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    :cond_a
    const-string v3, ""

    if-eqz v1, :cond_e

    iget-object v1, p0, Lcom/miui/warningcenter/disasterwarning/preference/NearestWarningPreference;->mAlertModel:Lcom/miui/warningcenter/disasterwarning/model/DisasterAlertModel;

    invoke-virtual {v1}, Lcom/miui/warningcenter/disasterwarning/model/DisasterAlertModel;->getProvince()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_b

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    :cond_b
    iget-object v1, p0, Lcom/miui/warningcenter/disasterwarning/preference/NearestWarningPreference;->mAlertModel:Lcom/miui/warningcenter/disasterwarning/model/DisasterAlertModel;

    invoke-virtual {v1}, Lcom/miui/warningcenter/disasterwarning/model/DisasterAlertModel;->getCity()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_c

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    :cond_c
    iget-object v5, p0, Lcom/miui/warningcenter/disasterwarning/preference/NearestWarningPreference;->mAlertModel:Lcom/miui/warningcenter/disasterwarning/model/DisasterAlertModel;

    invoke-virtual {v5}, Lcom/miui/warningcenter/disasterwarning/model/DisasterAlertModel;->getCounty()Ljava/lang/String;

    move-result-object v5

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_d

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    :cond_d
    iget-object v1, p0, Lcom/miui/warningcenter/disasterwarning/preference/NearestWarningPreference;->mAlertModel:Lcom/miui/warningcenter/disasterwarning/model/DisasterAlertModel;

    invoke-virtual {v1}, Lcom/miui/warningcenter/disasterwarning/model/DisasterAlertModel;->getLocation()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_f

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    goto :goto_7

    :cond_e
    iget-object v1, p0, Lcom/miui/warningcenter/disasterwarning/preference/NearestWarningPreference;->mAlertModel:Lcom/miui/warningcenter/disasterwarning/model/DisasterAlertModel;

    invoke-virtual {v1}, Lcom/miui/warningcenter/disasterwarning/model/DisasterAlertModel;->getReceivePosition()Ljava/lang/String;

    move-result-object v3

    :cond_f
    :goto_7
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_10

    const/16 p1, 0x8

    invoke-virtual {v2, p1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_8

    :cond_10
    invoke-virtual {v2, p1}, Landroid/view/View;->setVisibility(I)V

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :goto_8
    invoke-virtual {v4, v0}, Lcom/miui/warningcenter/disasterwarning/view/DrawBitmapView;->setResourceId(I)V

    :cond_11
    return-void
.end method

.method public setModel(Lcom/miui/warningcenter/disasterwarning/model/DisasterAlertModel;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/warningcenter/disasterwarning/preference/NearestWarningPreference;->mAlertModel:Lcom/miui/warningcenter/disasterwarning/model/DisasterAlertModel;

    invoke-virtual {p0}, Landroidx/preference/Preference;->notifyChanged()V

    return-void
.end method
