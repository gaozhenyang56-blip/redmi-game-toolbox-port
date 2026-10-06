.class public Lcom/miui/permcenter/widget/ContentPressPreference;
.super Landroidx/preference/Preference;
.source "SourceFile"

# interfaces
.implements Lmiuix/preference/b;
.implements Lmiuix/preference/j;
.implements Lmiuix/preference/f;


# instance fields
.field private a:Z

.field private b:Lmiuix/miuixbasewidget/widget/MessageView;

.field private c:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0, p1}, Landroidx/preference/Preference;-><init>(Landroid/content/Context;)V

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/miui/permcenter/widget/ContentPressPreference;->a:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Landroidx/preference/Preference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/miui/permcenter/widget/ContentPressPreference;->a:Z

    return-void
.end method

.method public static synthetic d(Lcom/miui/permcenter/widget/ContentPressPreference;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/miui/permcenter/widget/ContentPressPreference;->lambda$onBindViewHolder$0(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic e(Lcom/miui/permcenter/widget/ContentPressPreference;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/miui/permcenter/widget/ContentPressPreference;->lambda$onBindViewHolder$1(Landroid/view/View;)V

    return-void
.end method

.method private synthetic lambda$onBindViewHolder$0(Landroid/view/View;)V
    .locals 1

    invoke-virtual {p0}, Landroidx/preference/Preference;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p0}, Landroidx/preference/Preference;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method private synthetic lambda$onBindViewHolder$1(Landroid/view/View;)V
    .locals 1

    invoke-virtual {p0}, Landroidx/preference/Preference;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p0}, Landroidx/preference/Preference;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    return-void
.end method


# virtual methods
.method public a()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public b(Landroidx/preference/h;I)V
    .locals 2

    invoke-static {}, Lbl/l;->a()I

    move-result v0

    const/4 v1, 0x1

    if-le v0, v1, :cond_0

    int-to-float p2, p2

    sget v0, Ltm/e;->d:I

    mul-int/lit8 v0, v0, 0x3

    int-to-float v0, v0

    invoke-virtual {p0}, Landroidx/preference/Preference;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    iget v1, v1, Landroid/util/DisplayMetrics;->density:F

    mul-float/2addr v0, v1

    add-float/2addr p2, v0

    float-to-int p2, p2

    iget-object v0, p1, Landroidx/recyclerview/widget/RecyclerView$c0;->itemView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getPaddingTop()I

    move-result v1

    iget-object p1, p1, Landroidx/recyclerview/widget/RecyclerView$c0;->itemView:Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->getPaddingBottom()I

    move-result p1

    invoke-virtual {v0, p2, v1, p2, p1}, Landroid/view/View;->setPadding(IIII)V

    :cond_0
    return-void
.end method

.method public c()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public onBindViewHolder(Landroidx/preference/h;)V
    .locals 2

    invoke-super {p0, p1}, Landroidx/preference/Preference;->onBindViewHolder(Landroidx/preference/h;)V

    iget-object p1, p1, Landroidx/recyclerview/widget/RecyclerView$c0;->itemView:Landroid/view/View;

    const v0, 0x7f0b025b

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    if-eqz v0, :cond_0

    const v1, 0x7f0807e6

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundResource(I)V

    new-instance v1, Lzc/a;

    invoke-direct {v1, p0}, Lzc/a;-><init>(Lcom/miui/permcenter/widget/ContentPressPreference;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_0
    const v0, 0x7f0b0594

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lmiuix/miuixbasewidget/widget/MessageView;

    iput-object v0, p0, Lcom/miui/permcenter/widget/ContentPressPreference;->b:Lmiuix/miuixbasewidget/widget/MessageView;

    iget-object v1, p0, Lcom/miui/permcenter/widget/ContentPressPreference;->c:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lmiuix/miuixbasewidget/widget/MessageView;->setMessage(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/miui/permcenter/widget/ContentPressPreference;->b:Lmiuix/miuixbasewidget/widget/MessageView;

    new-instance v1, Lzc/b;

    invoke-direct {v1, p0}, Lzc/b;-><init>(Lcom/miui/permcenter/widget/ContentPressPreference;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    new-instance v0, Lcom/miui/permcenter/widget/ContentPressPreference$a;

    invoke-direct {v0, p0}, Lcom/miui/permcenter/widget/ContentPressPreference$a;-><init>(Lcom/miui/permcenter/widget/ContentPressPreference;)V

    invoke-virtual {p1, v0}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    invoke-static {p1}, Lx4/h0;->b(Landroid/view/View;)Z

    invoke-static {p1, p1}, Lx4/h0;->f(Landroid/view/View;Landroid/view/View;)V

    return-void
.end method

.method public setText(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/miui/permcenter/widget/ContentPressPreference;->b:Lmiuix/miuixbasewidget/widget/MessageView;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lmiuix/miuixbasewidget/widget/MessageView;->setMessage(Ljava/lang/CharSequence;)V

    :cond_0
    iput-object p1, p0, Lcom/miui/permcenter/widget/ContentPressPreference;->c:Ljava/lang/String;

    return-void
.end method
