.class public Lcom/miui/networkassistant/ui/view/SelectOperatorPreference;
.super Landroidx/preference/Preference;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/networkassistant/ui/view/SelectOperatorPreference$ClickListener;
    }
.end annotation


# instance fields
.field listener:Lcom/miui/networkassistant/ui/view/SelectOperatorPreference$ClickListener;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0, p1}, Landroidx/preference/Preference;-><init>(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Landroidx/preference/Preference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const p1, 0x7f0e04a6

    invoke-virtual {p0, p1}, Landroidx/preference/Preference;->setLayoutResource(I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Landroidx/preference/Preference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const p1, 0x7f0e04a6

    invoke-virtual {p0, p1}, Landroidx/preference/Preference;->setLayoutResource(I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 0

    invoke-direct {p0, p1, p2, p3, p4}, Landroidx/preference/Preference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    return-void
.end method

.method public static synthetic d(Lcom/miui/networkassistant/ui/view/SelectOperatorPreference;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/miui/networkassistant/ui/view/SelectOperatorPreference;->lambda$onBindViewHolder$3(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic e(Lcom/miui/networkassistant/ui/view/SelectOperatorPreference;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/miui/networkassistant/ui/view/SelectOperatorPreference;->lambda$onBindViewHolder$0(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic f(Lcom/miui/networkassistant/ui/view/SelectOperatorPreference;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/miui/networkassistant/ui/view/SelectOperatorPreference;->lambda$onBindViewHolder$2(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic g(Lcom/miui/networkassistant/ui/view/SelectOperatorPreference;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/miui/networkassistant/ui/view/SelectOperatorPreference;->lambda$onBindViewHolder$1(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic h(Lcom/miui/networkassistant/ui/view/SelectOperatorPreference;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/miui/networkassistant/ui/view/SelectOperatorPreference;->lambda$onBindViewHolder$4(Landroid/view/View;)V

    return-void
.end method

.method private synthetic lambda$onBindViewHolder$0(Landroid/view/View;)V
    .locals 1

    iget-object p1, p0, Lcom/miui/networkassistant/ui/view/SelectOperatorPreference;->listener:Lcom/miui/networkassistant/ui/view/SelectOperatorPreference$ClickListener;

    const/4 v0, 0x0

    invoke-interface {p1, v0}, Lcom/miui/networkassistant/ui/view/SelectOperatorPreference$ClickListener;->onClick(I)V

    return-void
.end method

.method private synthetic lambda$onBindViewHolder$1(Landroid/view/View;)V
    .locals 1

    iget-object p1, p0, Lcom/miui/networkassistant/ui/view/SelectOperatorPreference;->listener:Lcom/miui/networkassistant/ui/view/SelectOperatorPreference$ClickListener;

    const/4 v0, 0x1

    invoke-interface {p1, v0}, Lcom/miui/networkassistant/ui/view/SelectOperatorPreference$ClickListener;->onClick(I)V

    return-void
.end method

.method private synthetic lambda$onBindViewHolder$2(Landroid/view/View;)V
    .locals 1

    iget-object p1, p0, Lcom/miui/networkassistant/ui/view/SelectOperatorPreference;->listener:Lcom/miui/networkassistant/ui/view/SelectOperatorPreference$ClickListener;

    const/4 v0, 0x2

    invoke-interface {p1, v0}, Lcom/miui/networkassistant/ui/view/SelectOperatorPreference$ClickListener;->onClick(I)V

    return-void
.end method

.method private synthetic lambda$onBindViewHolder$3(Landroid/view/View;)V
    .locals 1

    iget-object p1, p0, Lcom/miui/networkassistant/ui/view/SelectOperatorPreference;->listener:Lcom/miui/networkassistant/ui/view/SelectOperatorPreference$ClickListener;

    const/4 v0, 0x3

    invoke-interface {p1, v0}, Lcom/miui/networkassistant/ui/view/SelectOperatorPreference$ClickListener;->onClick(I)V

    return-void
.end method

.method private synthetic lambda$onBindViewHolder$4(Landroid/view/View;)V
    .locals 1

    iget-object p1, p0, Lcom/miui/networkassistant/ui/view/SelectOperatorPreference;->listener:Lcom/miui/networkassistant/ui/view/SelectOperatorPreference$ClickListener;

    const/4 v0, 0x4

    invoke-interface {p1, v0}, Lcom/miui/networkassistant/ui/view/SelectOperatorPreference$ClickListener;->onClick(I)V

    return-void
.end method


# virtual methods
.method public getOperator(I)I
    .locals 1

    if-eqz p1, :cond_4

    const/4 v0, 0x1

    if-eq p1, v0, :cond_3

    const/4 v0, 0x2

    if-eq p1, v0, :cond_2

    const/4 v0, 0x3

    if-eq p1, v0, :cond_1

    const/4 v0, 0x4

    if-eq p1, v0, :cond_0

    const p1, 0x7f12075f

    return p1

    :cond_0
    const p1, 0x7f120f86

    return p1

    :cond_1
    const p1, 0x7f120f81

    return p1

    :cond_2
    const p1, 0x7f120f84

    return p1

    :cond_3
    const p1, 0x7f120f85

    return p1

    :cond_4
    const p1, 0x7f120f82

    return p1
.end method

.method public onBindViewHolder(Landroidx/preference/h;)V
    .locals 5

    invoke-super {p0, p1}, Landroidx/preference/Preference;->onBindViewHolder(Landroidx/preference/h;)V

    iget-object v0, p1, Landroidx/recyclerview/widget/RecyclerView$c0;->itemView:Landroid/view/View;

    const v1, 0x7f0b0268

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iget-object v1, p1, Landroidx/recyclerview/widget/RecyclerView$c0;->itemView:Landroid/view/View;

    const v2, 0x7f0b0269

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iget-object v2, p1, Landroidx/recyclerview/widget/RecyclerView$c0;->itemView:Landroid/view/View;

    const v3, 0x7f0b026a

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    iget-object v3, p1, Landroidx/recyclerview/widget/RecyclerView$c0;->itemView:Landroid/view/View;

    const v4, 0x7f0b026b

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    iget-object p1, p1, Landroidx/recyclerview/widget/RecyclerView$c0;->itemView:Landroid/view/View;

    const v4, 0x7f0b026c

    invoke-virtual {p1, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    new-instance v4, Lcom/miui/networkassistant/ui/view/k;

    invoke-direct {v4, p0}, Lcom/miui/networkassistant/ui/view/k;-><init>(Lcom/miui/networkassistant/ui/view/SelectOperatorPreference;)V

    invoke-virtual {v0, v4}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    new-instance v0, Lcom/miui/networkassistant/ui/view/l;

    invoke-direct {v0, p0}, Lcom/miui/networkassistant/ui/view/l;-><init>(Lcom/miui/networkassistant/ui/view/SelectOperatorPreference;)V

    invoke-virtual {v1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    new-instance v0, Lcom/miui/networkassistant/ui/view/m;

    invoke-direct {v0, p0}, Lcom/miui/networkassistant/ui/view/m;-><init>(Lcom/miui/networkassistant/ui/view/SelectOperatorPreference;)V

    invoke-virtual {v2, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    new-instance v0, Lcom/miui/networkassistant/ui/view/n;

    invoke-direct {v0, p0}, Lcom/miui/networkassistant/ui/view/n;-><init>(Lcom/miui/networkassistant/ui/view/SelectOperatorPreference;)V

    invoke-virtual {v3, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    new-instance v0, Lcom/miui/networkassistant/ui/view/o;

    invoke-direct {v0, p0}, Lcom/miui/networkassistant/ui/view/o;-><init>(Lcom/miui/networkassistant/ui/view/SelectOperatorPreference;)V

    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public setListener(Lcom/miui/networkassistant/ui/view/SelectOperatorPreference$ClickListener;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/networkassistant/ui/view/SelectOperatorPreference;->listener:Lcom/miui/networkassistant/ui/view/SelectOperatorPreference$ClickListener;

    return-void
.end method
