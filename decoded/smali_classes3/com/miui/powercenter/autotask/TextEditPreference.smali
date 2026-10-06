.class public Lcom/miui/powercenter/autotask/TextEditPreference;
.super Landroidx/preference/Preference;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/powercenter/autotask/TextEditPreference$b;
    }
.end annotation


# instance fields
.field private a:Landroid/widget/EditText;

.field private b:Ljava/lang/String;

.field private c:Lcom/miui/powercenter/autotask/TextEditPreference$b;

.field private d:Landroid/text/TextWatcher;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Landroidx/preference/Preference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const-string p1, ""

    iput-object p1, p0, Lcom/miui/powercenter/autotask/TextEditPreference;->b:Ljava/lang/String;

    new-instance p1, Lcom/miui/powercenter/autotask/TextEditPreference$a;

    invoke-direct {p1, p0}, Lcom/miui/powercenter/autotask/TextEditPreference$a;-><init>(Lcom/miui/powercenter/autotask/TextEditPreference;)V

    iput-object p1, p0, Lcom/miui/powercenter/autotask/TextEditPreference;->d:Landroid/text/TextWatcher;

    invoke-direct {p0}, Lcom/miui/powercenter/autotask/TextEditPreference;->f()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Landroidx/preference/Preference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const-string p1, ""

    iput-object p1, p0, Lcom/miui/powercenter/autotask/TextEditPreference;->b:Ljava/lang/String;

    new-instance p1, Lcom/miui/powercenter/autotask/TextEditPreference$a;

    invoke-direct {p1, p0}, Lcom/miui/powercenter/autotask/TextEditPreference$a;-><init>(Lcom/miui/powercenter/autotask/TextEditPreference;)V

    iput-object p1, p0, Lcom/miui/powercenter/autotask/TextEditPreference;->d:Landroid/text/TextWatcher;

    invoke-direct {p0}, Lcom/miui/powercenter/autotask/TextEditPreference;->f()V

    return-void
.end method

.method static synthetic d(Lcom/miui/powercenter/autotask/TextEditPreference;)Lcom/miui/powercenter/autotask/TextEditPreference$b;
    .locals 0

    iget-object p0, p0, Lcom/miui/powercenter/autotask/TextEditPreference;->c:Lcom/miui/powercenter/autotask/TextEditPreference$b;

    return-object p0
.end method

.method static synthetic e(Lcom/miui/powercenter/autotask/TextEditPreference;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    iput-object p1, p0, Lcom/miui/powercenter/autotask/TextEditPreference;->b:Ljava/lang/String;

    return-object p1
.end method

.method private f()V
    .locals 1

    const v0, 0x7f0e03cf

    invoke-virtual {p0, v0}, Landroidx/preference/Preference;->setLayoutResource(I)V

    return-void
.end method

.method private h()V
    .locals 2

    iget-object v0, p0, Lcom/miui/powercenter/autotask/TextEditPreference;->a:Landroid/widget/EditText;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/miui/powercenter/autotask/TextEditPreference;->d:Landroid/text/TextWatcher;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->removeTextChangedListener(Landroid/text/TextWatcher;)V

    iget-object v0, p0, Lcom/miui/powercenter/autotask/TextEditPreference;->a:Landroid/widget/EditText;

    iget-object v1, p0, Lcom/miui/powercenter/autotask/TextEditPreference;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/miui/powercenter/autotask/TextEditPreference;->a:Landroid/widget/EditText;

    iget-object v1, p0, Lcom/miui/powercenter/autotask/TextEditPreference;->d:Landroid/text/TextWatcher;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->addTextChangedListener(Landroid/text/TextWatcher;)V

    :cond_0
    return-void
.end method


# virtual methods
.method public g(Lcom/miui/powercenter/autotask/TextEditPreference$b;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/powercenter/autotask/TextEditPreference;->c:Lcom/miui/powercenter/autotask/TextEditPreference$b;

    return-void
.end method

.method public onBindViewHolder(Landroidx/preference/h;)V
    .locals 5

    iget-object v0, p1, Landroidx/recyclerview/widget/RecyclerView$c0;->itemView:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundColor(I)V

    const v0, 0x7f0b088a

    invoke-virtual {p1, v0}, Landroidx/preference/h;->a(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    const v2, 0x7f0b088c

    invoke-virtual {p1, v2}, Landroidx/preference/h;->a(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {p0}, Landroidx/preference/Preference;->getContext()Landroid/content/Context;

    move-result-object v3

    check-cast v3, Lcom/miui/common/base/BaseActivity;

    invoke-static {v3}, Lx4/t;->F(Landroid/app/Activity;)Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-virtual {p0}, Landroidx/preference/Preference;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0716de

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v3

    invoke-virtual {v0, v3, v1, v3, v1}, Landroid/view/View;->setPadding(IIII)V

    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-virtual {p0}, Landroidx/preference/Preference;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v3, 0x7f0716df

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v1

    iput v1, v0, Landroid/widget/RelativeLayout$LayoutParams;->leftMargin:I

    invoke-virtual {p0}, Landroidx/preference/Preference;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v1

    iput v1, v0, Landroid/widget/RelativeLayout$LayoutParams;->rightMargin:I

    invoke-virtual {v2, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :cond_0
    const v0, 0x7f0b035c

    invoke-virtual {p1, v0}, Landroidx/preference/h;->a(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/EditText;

    iput-object p1, p0, Lcom/miui/powercenter/autotask/TextEditPreference;->a:Landroid/widget/EditText;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setSelectAllOnFocus(Z)V

    invoke-direct {p0}, Lcom/miui/powercenter/autotask/TextEditPreference;->h()V

    return-void
.end method

.method public setText(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/powercenter/autotask/TextEditPreference;->b:Ljava/lang/String;

    invoke-direct {p0}, Lcom/miui/powercenter/autotask/TextEditPreference;->h()V

    return-void
.end method
