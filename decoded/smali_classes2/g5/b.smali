.class public Lg5/b;
.super Lg5/i;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lg5/i;-><init>()V

    return-void
.end method

.method public static synthetic c(I)V
    .locals 0

    invoke-static {p0}, Lg5/b;->e(I)V

    return-void
.end method

.method private d(Landroid/content/Context;I)V
    .locals 3

    :try_start_0
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/miui/dock/edit/DockAppEditActivity;

    invoke-direct {v0, p1, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const/high16 v1, 0x10000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    const v1, 0x7f010084

    const v2, 0x7f010085

    invoke-static {p1, v1, v2}, Landroid/app/ActivityOptions;->makeCustomAnimation(Landroid/content/Context;II)Landroid/app/ActivityOptions;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/ActivityOptions;->toBundle()Landroid/os/Bundle;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;Landroid/os/Bundle;)V

    invoke-static {}, Lef/z;->d()Lef/z;

    move-result-object p1

    new-instance v0, Lg5/a;

    invoke-direct {v0, p2}, Lg5/a;-><init>(I)V

    invoke-virtual {p1, v0}, Lef/z;->b(Ljava/lang/Runnable;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void
.end method

.method private static synthetic e(I)V
    .locals 6

    invoke-static {}, Lcom/miui/securitycenter/Application;->A()Lcom/miui/securitycenter/Application;

    move-result-object v0

    invoke-static {v0}, Lm5/f;->g(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    add-int/lit8 p0, p0, -0x2

    :cond_0
    move v0, p0

    const/4 v2, 0x0

    const/4 v3, 0x1

    const/4 v4, -0x1

    const-string v1, ""

    const-string v5, "nothing"

    invoke-static/range {v0 .. v5}, Ll5/b;->d(ILjava/lang/String;Ljava/lang/String;ZILjava/lang/String;)V

    return-void
.end method


# virtual methods
.method public a(Landroidx/recyclerview/widget/RecyclerView$c0;)V
    .locals 1

    iget-object v0, p1, Landroidx/recyclerview/widget/RecyclerView$c0;->itemView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$c0;->getAdapterPosition()I

    move-result p1

    invoke-direct {p0, v0, p1}, Lg5/b;->d(Landroid/content/Context;I)V

    return-void
.end method

.method public b(Landroidx/recyclerview/widget/RecyclerView$c0;)V
    .locals 4

    instance-of v0, p1, Ld5/d$b;

    const v1, 0x7f08085a

    if-eqz v0, :cond_0

    move-object v0, p1

    check-cast v0, Ld5/d$b;

    iget-object v0, v0, Ld5/d$b;->a:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/widget/FrameLayout$LayoutParams;

    invoke-static {}, Lcom/miui/securitycenter/Application;->A()Lcom/miui/securitycenter/Application;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f070381

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v2

    iput v2, v1, Landroid/widget/FrameLayout$LayoutParams;->bottomMargin:I

    invoke-virtual {v0, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_0

    :cond_0
    instance-of v0, p1, Lq6/i;

    if-eqz v0, :cond_1

    move-object v0, p1

    check-cast v0, Lq6/i;

    const v2, 0x7f0b0530

    invoke-virtual {v0, v2}, Lq6/i;->e(I)Landroid/view/View;

    move-result-object v0

    instance-of v2, v0, Landroid/widget/ImageView;

    if-eqz v2, :cond_2

    move-object v2, v0

    check-cast v2, Landroid/widget/ImageView;

    invoke-virtual {v2, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :cond_2
    :goto_0
    if-eqz v0, :cond_3

    iget-object p1, p1, Landroidx/recyclerview/widget/RecyclerView$c0;->itemView:Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    const v1, 0x7f120b2b

    invoke-virtual {p1, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    :cond_3
    return-void
.end method
