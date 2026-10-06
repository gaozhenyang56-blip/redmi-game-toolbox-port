.class Lcom/miui/permcenter/permissions/AppPermissionsTabActivity$f;
.super Landroidx/viewpager/widget/a;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/permcenter/permissions/AppPermissionsTabActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "f"
.end annotation


# instance fields
.field private a:Landroid/content/Context;

.field private b:[Lcom/miui/permcenter/permissions/AppPermissionsTabActivity$e;

.field final synthetic c:Lcom/miui/permcenter/permissions/AppPermissionsTabActivity;


# direct methods
.method public constructor <init>(Lcom/miui/permcenter/permissions/AppPermissionsTabActivity;Landroid/content/Context;[Lcom/miui/permcenter/permissions/AppPermissionsTabActivity$e;)V
    .locals 0
    .param p2    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    iput-object p1, p0, Lcom/miui/permcenter/permissions/AppPermissionsTabActivity$f;->c:Lcom/miui/permcenter/permissions/AppPermissionsTabActivity;

    invoke-direct {p0}, Landroidx/viewpager/widget/a;-><init>()V

    iput-object p2, p0, Lcom/miui/permcenter/permissions/AppPermissionsTabActivity$f;->a:Landroid/content/Context;

    iput-object p3, p0, Lcom/miui/permcenter/permissions/AppPermissionsTabActivity$f;->b:[Lcom/miui/permcenter/permissions/AppPermissionsTabActivity$e;

    return-void
.end method


# virtual methods
.method public destroyItem(Landroid/view/ViewGroup;ILjava/lang/Object;)V
    .locals 0
    .param p1    # Landroid/view/ViewGroup;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # Ljava/lang/Object;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    check-cast p1, Landroidx/viewpager/widget/ViewPager;

    check-cast p3, Landroid/view/View;

    invoke-virtual {p1, p3}, Landroidx/viewpager/widget/ViewPager;->removeView(Landroid/view/View;)V

    return-void
.end method

.method public getCount()I
    .locals 1

    iget-object v0, p0, Lcom/miui/permcenter/permissions/AppPermissionsTabActivity$f;->b:[Lcom/miui/permcenter/permissions/AppPermissionsTabActivity$e;

    array-length v0, v0

    return v0
.end method

.method public instantiateItem(Landroid/view/ViewGroup;I)Ljava/lang/Object;
    .locals 8
    .param p1    # Landroid/view/ViewGroup;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    iget-object v0, p0, Lcom/miui/permcenter/permissions/AppPermissionsTabActivity$f;->a:Landroid/content/Context;

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f0e0433

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    const v1, 0x7f0b08d2

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iget-object v2, p0, Lcom/miui/permcenter/permissions/AppPermissionsTabActivity$f;->a:Landroid/content/Context;

    iget-object v3, p0, Lcom/miui/permcenter/permissions/AppPermissionsTabActivity$f;->b:[Lcom/miui/permcenter/permissions/AppPermissionsTabActivity$e;

    aget-object v3, v3, p2

    iget v3, v3, Lcom/miui/permcenter/permissions/AppPermissionsTabActivity$e;->a:I

    invoke-virtual {v2, v3}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    const v1, 0x7f0b08d6

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iget-object v2, p0, Lcom/miui/permcenter/permissions/AppPermissionsTabActivity$f;->b:[Lcom/miui/permcenter/permissions/AppPermissionsTabActivity$e;

    aget-object v2, v2, p2

    iget v2, v2, Lcom/miui/permcenter/permissions/AppPermissionsTabActivity$e;->b:I

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(I)V

    iget-object v1, p0, Lcom/miui/permcenter/permissions/AppPermissionsTabActivity$f;->b:[Lcom/miui/permcenter/permissions/AppPermissionsTabActivity$e;

    aget-object v1, v1, p2

    iget v1, v1, Lcom/miui/permcenter/permissions/AppPermissionsTabActivity$e;->c:I

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/miui/permcenter/permissions/AppPermissionsTabActivity$f;->c:Lcom/miui/permcenter/permissions/AppPermissionsTabActivity;

    invoke-static {v1}, Lx4/u;->b(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_0

    const v1, 0x7f0b08d4

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iget-object v2, p0, Lcom/miui/permcenter/permissions/AppPermissionsTabActivity$f;->c:Lcom/miui/permcenter/permissions/AppPermissionsTabActivity;

    const v3, 0x7f121172

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    const-string v5, "https://privacy.miui.com"

    const/4 v6, 0x0

    aput-object v5, v4, v6

    const/4 v5, 0x1

    const v7, 0x7f121176

    invoke-virtual {v2, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v4, v5

    invoke-virtual {v2, v3, v4}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {}, Landroid/text/method/LinkMovementMethod;->getInstance()Landroid/text/method/MovementMethod;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setMovementMethod(Landroid/text/method/MovementMethod;)V

    invoke-static {v2}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {v1, v6}, Landroid/view/View;->setVisibility(I)V

    :cond_0
    check-cast p1, Landroidx/viewpager/widget/ViewPager;

    invoke-virtual {p1, v0, p2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;I)V

    return-object v0
.end method

.method public isViewFromObject(Landroid/view/View;Ljava/lang/Object;)Z
    .locals 0
    .param p1    # Landroid/view/View;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/Object;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    if-ne p1, p2, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method
