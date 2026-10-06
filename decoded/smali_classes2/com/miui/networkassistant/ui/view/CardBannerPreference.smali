.class public Lcom/miui/networkassistant/ui/view/CardBannerPreference;
.super Landroidx/preference/Preference;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/networkassistant/ui/view/CardBannerPreference$ClickListener;
    }
.end annotation


# instance fields
.field btn:Landroid/widget/Button;

.field btnText:Ljava/lang/String;

.field private enable:Z

.field listener:Lcom/miui/networkassistant/ui/view/CardBannerPreference$ClickListener;

.field summary:Ljava/lang/String;

.field title:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0, p1}, Landroidx/preference/Preference;-><init>(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Landroidx/preference/Preference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const p1, 0x7f0e00d2

    invoke-virtual {p0, p1}, Landroidx/preference/Preference;->setLayoutResource(I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Landroidx/preference/Preference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const p1, 0x7f0e00d2

    invoke-virtual {p0, p1}, Landroidx/preference/Preference;->setLayoutResource(I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 0

    invoke-direct {p0, p1, p2, p3, p4}, Landroidx/preference/Preference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    return-void
.end method

.method public static synthetic d(Lcom/miui/networkassistant/ui/view/CardBannerPreference;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/miui/networkassistant/ui/view/CardBannerPreference;->lambda$onBindViewHolder$0(Landroid/view/View;)V

    return-void
.end method

.method private synthetic lambda$onBindViewHolder$0(Landroid/view/View;)V
    .locals 0

    iget-object p1, p0, Lcom/miui/networkassistant/ui/view/CardBannerPreference;->listener:Lcom/miui/networkassistant/ui/view/CardBannerPreference$ClickListener;

    invoke-interface {p1}, Lcom/miui/networkassistant/ui/view/CardBannerPreference$ClickListener;->onClick()V

    return-void
.end method


# virtual methods
.method public onBindViewHolder(Landroidx/preference/h;)V
    .locals 3

    invoke-super {p0, p1}, Landroidx/preference/Preference;->onBindViewHolder(Landroidx/preference/h;)V

    iget-object v0, p1, Landroidx/recyclerview/widget/RecyclerView$c0;->itemView:Landroid/view/View;

    const v1, 0x7f0b0506

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    sget-object v1, Landroid/widget/ImageView$ScaleType;->CENTER:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    const v1, 0x7f080826

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    iget-object v0, p1, Landroidx/recyclerview/widget/RecyclerView$c0;->itemView:Landroid/view/View;

    const v1, 0x7f0b0bc9

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iget-object v1, p1, Landroidx/recyclerview/widget/RecyclerView$c0;->itemView:Landroid/view/View;

    const v2, 0x7f0b0b21

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iget-object v2, p0, Lcom/miui/networkassistant/ui/view/CardBannerPreference;->title:Ljava/lang/String;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/miui/networkassistant/ui/view/CardBannerPreference;->summary:Ljava/lang/String;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object p1, p1, Landroidx/recyclerview/widget/RecyclerView$c0;->itemView:Landroid/view/View;

    const v0, 0x7f0b01d8

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/Button;

    iput-object p1, p0, Lcom/miui/networkassistant/ui/view/CardBannerPreference;->btn:Landroid/widget/Button;

    iget-boolean p1, p0, Lcom/miui/networkassistant/ui/view/CardBannerPreference;->enable:Z

    invoke-virtual {p0, p1}, Lcom/miui/networkassistant/ui/view/CardBannerPreference;->setBtnEnable(Z)V

    iget-object p1, p0, Lcom/miui/networkassistant/ui/view/CardBannerPreference;->btn:Landroid/widget/Button;

    iget-object v0, p0, Lcom/miui/networkassistant/ui/view/CardBannerPreference;->btnText:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object p1, p0, Lcom/miui/networkassistant/ui/view/CardBannerPreference;->btn:Landroid/widget/Button;

    new-instance v0, Lcom/miui/networkassistant/ui/view/d;

    invoke-direct {v0, p0}, Lcom/miui/networkassistant/ui/view/d;-><init>(Lcom/miui/networkassistant/ui/view/CardBannerPreference;)V

    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public setBannerSummary(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/networkassistant/ui/view/CardBannerPreference;->summary:Ljava/lang/String;

    return-void
.end method

.method public setBannerTitle(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/networkassistant/ui/view/CardBannerPreference;->title:Ljava/lang/String;

    return-void
.end method

.method public setBtnEnable(Z)V
    .locals 2

    iput-boolean p1, p0, Lcom/miui/networkassistant/ui/view/CardBannerPreference;->enable:Z

    iget-object v0, p0, Lcom/miui/networkassistant/ui/view/CardBannerPreference;->btn:Landroid/widget/Button;

    if-nez v0, :cond_0

    return-void

    :cond_0
    if-eqz p1, :cond_1

    const v1, 0x7f081044

    goto :goto_0

    :cond_1
    const v1, 0x7f0807cb

    :goto_0
    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundResource(I)V

    iget-object v0, p0, Lcom/miui/networkassistant/ui/view/CardBannerPreference;->btn:Landroid/widget/Button;

    invoke-virtual {p0}, Landroidx/preference/Preference;->getContext()Landroid/content/Context;

    move-result-object v1

    if-eqz p1, :cond_2

    const p1, 0x7f060d65

    goto :goto_1

    :cond_2
    const p1, 0x7f060dee

    :goto_1
    invoke-virtual {v1, p1}, Landroid/content/Context;->getColor(I)I

    move-result p1

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setTextColor(I)V

    return-void
.end method

.method public setBtnText(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/networkassistant/ui/view/CardBannerPreference;->btnText:Ljava/lang/String;

    return-void
.end method

.method public setListener(Lcom/miui/networkassistant/ui/view/CardBannerPreference$ClickListener;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/networkassistant/ui/view/CardBannerPreference;->listener:Lcom/miui/networkassistant/ui/view/CardBannerPreference$ClickListener;

    return-void
.end method
