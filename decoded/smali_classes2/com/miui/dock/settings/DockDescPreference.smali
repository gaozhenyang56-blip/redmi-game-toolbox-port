.class public Lcom/miui/dock/settings/DockDescPreference;
.super Landroidx/preference/Preference;
.source "SourceFile"

# interfaces
.implements Lmiuix/preference/j;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/dock/settings/DockDescPreference$b;
    }
.end annotation


# static fields
.field private static e:[I


# instance fields
.field private a:Landroid/content/Context;

.field private b:Landroidx/viewpager/widget/ViewPager;

.field private c:Landroid/widget/TextView;

.field private d:Lcom/miui/privacyapps/view/ViewPagerIndicator;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const/4 v0, 0x1

    new-array v0, v0, [I

    const/4 v1, 0x0

    const v2, 0x7f120910

    aput v2, v0, v1

    sput-object v0, Lcom/miui/dock/settings/DockDescPreference;->e:[I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/miui/dock/settings/DockDescPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Landroidx/preference/Preference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    iput-object p1, p0, Lcom/miui/dock/settings/DockDescPreference;->a:Landroid/content/Context;

    invoke-direct {p0}, Lcom/miui/dock/settings/DockDescPreference;->g()V

    return-void
.end method

.method static synthetic d()[I
    .locals 1

    sget-object v0, Lcom/miui/dock/settings/DockDescPreference;->e:[I

    return-object v0
.end method

.method static synthetic e(Lcom/miui/dock/settings/DockDescPreference;)Landroid/widget/TextView;
    .locals 0

    iget-object p0, p0, Lcom/miui/dock/settings/DockDescPreference;->c:Landroid/widget/TextView;

    return-object p0
.end method

.method static synthetic f(Lcom/miui/dock/settings/DockDescPreference;)Lcom/miui/privacyapps/view/ViewPagerIndicator;
    .locals 0

    iget-object p0, p0, Lcom/miui/dock/settings/DockDescPreference;->d:Lcom/miui/privacyapps/view/ViewPagerIndicator;

    return-object p0
.end method

.method private g()V
    .locals 3

    sget-boolean v0, Lmiui/os/Build;->IS_TABLET:Z

    const/4 v1, 0x0

    if-nez v0, :cond_2

    invoke-static {}, Lc5/a;->a()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-static {}, La8/a0;->E()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {}, La8/a0;->F()Z

    move-result v0

    if-nez v0, :cond_1

    sget-object v0, Lcom/miui/dock/settings/DockDescPreference;->e:[I

    const v2, 0x7f120b58

    aput v2, v0, v1

    goto :goto_1

    :cond_1
    sget-object v0, Lcom/miui/dock/settings/DockDescPreference;->e:[I

    const v2, 0x7f120b5a

    aput v2, v0, v1

    goto :goto_1

    :cond_2
    :goto_0
    sget-object v0, Lcom/miui/dock/settings/DockDescPreference;->e:[I

    const v2, 0x7f120b56

    aput v2, v0, v1

    :goto_1
    return-void
.end method


# virtual methods
.method public a()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public c()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public onBindViewHolder(Landroidx/preference/h;)V
    .locals 10

    invoke-super {p0, p1}, Landroidx/preference/Preference;->onBindViewHolder(Landroidx/preference/h;)V

    invoke-virtual {p0}, Landroidx/preference/Preference;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f071e78

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iget-object v2, p1, Landroidx/recyclerview/widget/RecyclerView$c0;->itemView:Landroid/view/View;

    const/4 v3, 0x0

    invoke-virtual {v2, v1, v3, v1, v3}, Landroid/view/View;->setPadding(IIII)V

    iget-object v1, p1, Landroidx/recyclerview/widget/RecyclerView$c0;->itemView:Landroid/view/View;

    const v2, 0x7f0b0d8d

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroidx/viewpager/widget/ViewPager;

    iput-object v1, p0, Lcom/miui/dock/settings/DockDescPreference;->b:Landroidx/viewpager/widget/ViewPager;

    iget-object v1, p1, Landroidx/recyclerview/widget/RecyclerView$c0;->itemView:Landroid/view/View;

    const v2, 0x7f0b0572

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/miui/dock/settings/DockDescPreference;->c:Landroid/widget/TextView;

    iget-object p1, p1, Landroidx/recyclerview/widget/RecyclerView$c0;->itemView:Landroid/view/View;

    const v1, 0x7f0b056b

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/miui/privacyapps/view/ViewPagerIndicator;

    iput-object p1, p0, Lcom/miui/dock/settings/DockDescPreference;->d:Lcom/miui/privacyapps/view/ViewPagerIndicator;

    sget-object v1, Lcom/miui/dock/settings/DockDescPreference;->e:[I

    array-length v1, v1

    const/16 v2, 0x8

    const/4 v4, 0x1

    if-le v1, v4, :cond_0

    move v1, v3

    goto :goto_0

    :cond_0
    move v1, v2

    :goto_0
    invoke-virtual {p1, v1}, Landroid/view/View;->setVisibility(I)V

    const p1, 0x7f071d86

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v7

    iget-object v4, p0, Lcom/miui/dock/settings/DockDescPreference;->d:Lcom/miui/privacyapps/view/ViewPagerIndicator;

    const/4 v5, 0x1

    const p1, 0x7f0603c8

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v8

    const p1, 0x7f0603c7

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v9

    move v6, v7

    invoke-virtual/range {v4 .. v9}, Lcom/miui/privacyapps/view/ViewPagerIndicator;->c(IIIII)V

    iget-object p1, p0, Lcom/miui/dock/settings/DockDescPreference;->c:Landroid/widget/TextView;

    sget-object v0, Lcom/miui/dock/settings/DockDescPreference;->e:[I

    aget v0, v0, v3

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(I)V

    iget-object p1, p0, Lcom/miui/dock/settings/DockDescPreference;->c:Landroid/widget/TextView;

    invoke-virtual {p0}, Landroidx/preference/Preference;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, La8/z;->i(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_1

    move v2, v3

    :cond_1
    invoke-virtual {p1, v2}, Landroid/view/View;->setVisibility(I)V

    sget-boolean p1, Lmiui/os/Build;->IS_TABLET:Z

    if-nez p1, :cond_2

    iget-object p1, p0, Lcom/miui/dock/settings/DockDescPreference;->c:Landroid/widget/TextView;

    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    check-cast p1, Landroid/widget/LinearLayout$LayoutParams;

    invoke-virtual {p0}, Landroidx/preference/Preference;->getContext()Landroid/content/Context;

    move-result-object v0

    const/high16 v1, 0x41a00000    # 20.0f

    invoke-static {v0, v1}, La8/k2;->a(Landroid/content/Context;F)I

    move-result v0

    iput v0, p1, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    iget-object p1, p0, Lcom/miui/dock/settings/DockDescPreference;->b:Landroidx/viewpager/widget/ViewPager;

    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    check-cast p1, Landroid/widget/LinearLayout$LayoutParams;

    iput v3, p1, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    goto :goto_1

    :cond_2
    iget-object p1, p0, Lcom/miui/dock/settings/DockDescPreference;->b:Landroidx/viewpager/widget/ViewPager;

    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    check-cast p1, Landroid/widget/LinearLayout$LayoutParams;

    invoke-virtual {p0}, Landroidx/preference/Preference;->getContext()Landroid/content/Context;

    move-result-object v0

    const/high16 v1, 0x41400000    # 12.0f

    invoke-static {v0, v1}, La8/k2;->a(Landroid/content/Context;F)I

    move-result v0

    iput v0, p1, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    iget-object p1, p0, Lcom/miui/dock/settings/DockDescPreference;->c:Landroid/widget/TextView;

    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    check-cast p1, Landroid/widget/LinearLayout$LayoutParams;

    invoke-virtual {p0}, Landroidx/preference/Preference;->getContext()Landroid/content/Context;

    move-result-object v0

    const/high16 v1, 0x42340000    # 45.0f

    invoke-static {v0, v1}, La8/k2;->a(Landroid/content/Context;F)I

    move-result v0

    iput v0, p1, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    :goto_1
    new-instance p1, Lcom/miui/dock/settings/DockDescPreference$b;

    iget-object v0, p0, Lcom/miui/dock/settings/DockDescPreference;->a:Landroid/content/Context;

    invoke-direct {p1, v0}, Lcom/miui/dock/settings/DockDescPreference$b;-><init>(Landroid/content/Context;)V

    iget-object v0, p0, Lcom/miui/dock/settings/DockDescPreference;->b:Landroidx/viewpager/widget/ViewPager;

    invoke-virtual {v0, p1}, Landroidx/viewpager/widget/ViewPager;->setAdapter(Landroidx/viewpager/widget/a;)V

    iget-object p1, p0, Lcom/miui/dock/settings/DockDescPreference;->b:Landroidx/viewpager/widget/ViewPager;

    new-instance v0, Lcom/miui/dock/settings/DockDescPreference$a;

    invoke-direct {v0, p0}, Lcom/miui/dock/settings/DockDescPreference$a;-><init>(Lcom/miui/dock/settings/DockDescPreference;)V

    invoke-virtual {p1, v0}, Landroidx/viewpager/widget/ViewPager;->setOnPageChangeListener(Landroidx/viewpager/widget/ViewPager$i;)V

    iget-object p1, p0, Lcom/miui/dock/settings/DockDescPreference;->d:Lcom/miui/privacyapps/view/ViewPagerIndicator;

    sget-object v0, Lcom/miui/dock/settings/DockDescPreference;->e:[I

    array-length v0, v0

    invoke-virtual {p1, v0}, Lcom/miui/privacyapps/view/ViewPagerIndicator;->setIndicatorNum(I)V

    return-void
.end method
