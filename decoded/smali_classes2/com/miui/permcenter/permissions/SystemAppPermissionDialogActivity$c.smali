.class Lcom/miui/permcenter/permissions/SystemAppPermissionDialogActivity$c;
.super Lwb/a;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/permcenter/permissions/SystemAppPermissionDialogActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "c"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/permcenter/permissions/SystemAppPermissionDialogActivity$c$c;,
        Lcom/miui/permcenter/permissions/SystemAppPermissionDialogActivity$c$b;,
        Lcom/miui/permcenter/permissions/SystemAppPermissionDialogActivity$c$d;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lwb/a<",
        "Landroidx/recyclerview/widget/RecyclerView$c0;",
        ">;"
    }
.end annotation


# instance fields
.field private b:Lcom/miui/permcenter/permissions/SystemAppPermissionDialogActivity;

.field private c:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/miui/permcenter/permissions/SystemAppPermissionDialogActivity;)V
    .locals 1

    invoke-direct {p0}, Lwb/a;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/miui/permcenter/permissions/SystemAppPermissionDialogActivity$c;->c:Ljava/lang/String;

    iput-object p1, p0, Lcom/miui/permcenter/permissions/SystemAppPermissionDialogActivity$c;->b:Lcom/miui/permcenter/permissions/SystemAppPermissionDialogActivity;

    return-void
.end method

.method public static synthetic l(Lcom/miui/permcenter/permissions/SystemAppPermissionDialogActivity$c;Ljava/lang/String;)Z
    .locals 0

    invoke-direct {p0, p1}, Lcom/miui/permcenter/permissions/SystemAppPermissionDialogActivity$c;->n(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method private synthetic n(Ljava/lang/String;)Z
    .locals 0

    iget-object p1, p0, Lcom/miui/permcenter/permissions/SystemAppPermissionDialogActivity$c;->b:Lcom/miui/permcenter/permissions/SystemAppPermissionDialogActivity;

    invoke-static {p1}, Lcom/miui/permcenter/permissions/SystemAppPermissionDialogActivity;->k0(Lcom/miui/permcenter/permissions/SystemAppPermissionDialogActivity;)V

    const/4 p1, 0x1

    return p1
.end method


# virtual methods
.method public getItemCount()I
    .locals 2

    iget-object v0, p0, Lcom/miui/permcenter/permissions/SystemAppPermissionDialogActivity$c;->b:Lcom/miui/permcenter/permissions/SystemAppPermissionDialogActivity;

    invoke-static {v0}, Lcom/miui/permcenter/permissions/SystemAppPermissionDialogActivity;->r0(Lcom/miui/permcenter/permissions/SystemAppPermissionDialogActivity;)[Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/permcenter/permissions/SystemAppPermissionDialogActivity$c;->b:Lcom/miui/permcenter/permissions/SystemAppPermissionDialogActivity;

    invoke-static {v0}, Lcom/miui/permcenter/permissions/SystemAppPermissionDialogActivity;->r0(Lcom/miui/permcenter/permissions/SystemAppPermissionDialogActivity;)[Ljava/lang/String;

    move-result-object v0

    array-length v0, v0

    if-lez v0, :cond_0

    iget-object v0, p0, Lcom/miui/permcenter/permissions/SystemAppPermissionDialogActivity$c;->b:Lcom/miui/permcenter/permissions/SystemAppPermissionDialogActivity;

    invoke-static {v0}, Lcom/miui/permcenter/permissions/SystemAppPermissionDialogActivity;->r0(Lcom/miui/permcenter/permissions/SystemAppPermissionDialogActivity;)[Ljava/lang/String;

    move-result-object v0

    array-length v0, v0

    add-int/2addr v1, v0

    :cond_0
    iget-object v0, p0, Lcom/miui/permcenter/permissions/SystemAppPermissionDialogActivity$c;->c:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    add-int/lit8 v1, v1, 0x1

    :cond_1
    return v1
.end method

.method public getItemViewType(I)I
    .locals 2

    const/4 v0, 0x1

    if-nez p1, :cond_0

    return v0

    :cond_0
    iget-object v1, p0, Lcom/miui/permcenter/permissions/SystemAppPermissionDialogActivity$c;->c:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    invoke-virtual {p0}, Lcom/miui/permcenter/permissions/SystemAppPermissionDialogActivity$c;->getItemCount()I

    move-result v1

    sub-int/2addr v1, v0

    if-ne p1, v1, :cond_1

    const/4 p1, 0x3

    return p1

    :cond_1
    const/4 p1, 0x2

    return p1
.end method

.method public m(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/permcenter/permissions/SystemAppPermissionDialogActivity$c;->c:Ljava/lang/String;

    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$h;->notifyDataSetChanged()V

    return-void
.end method

.method public onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$c0;I)V
    .locals 5
    .annotation build Landroidx/annotation/RequiresApi;
        api = 0x18
    .end annotation

    invoke-super {p0, p1, p2}, Lwb/a;->onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$c0;I)V

    iget-object v0, p0, Lcom/miui/permcenter/permissions/SystemAppPermissionDialogActivity$c;->b:Lcom/miui/permcenter/permissions/SystemAppPermissionDialogActivity;

    iget-object v1, p1, Landroidx/recyclerview/widget/RecyclerView$c0;->itemView:Landroid/view/View;

    invoke-static {v0, v0, v1}, Lcom/miui/permcenter/permissions/SystemAppPermissionDialogActivity;->l0(Lcom/miui/permcenter/permissions/SystemAppPermissionDialogActivity;Landroid/content/Context;Landroid/view/View;)V

    instance-of v0, p1, Lcom/miui/permcenter/permissions/SystemAppPermissionDialogActivity$c$b;

    const/16 v1, 0x8

    const/4 v2, 0x0

    if-eqz v0, :cond_3

    check-cast p1, Lcom/miui/permcenter/permissions/SystemAppPermissionDialogActivity$c$b;

    iget-object p2, p0, Lcom/miui/permcenter/permissions/SystemAppPermissionDialogActivity$c;->b:Lcom/miui/permcenter/permissions/SystemAppPermissionDialogActivity;

    invoke-static {p2}, Lcom/miui/permcenter/permissions/SystemAppPermissionDialogActivity;->m0(Lcom/miui/permcenter/permissions/SystemAppPermissionDialogActivity;)Z

    move-result p2

    if-eqz p2, :cond_0

    iget-object p2, p1, Lcom/miui/permcenter/permissions/SystemAppPermissionDialogActivity$c$b;->a:Landroid/widget/ImageView;

    invoke-virtual {p2, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object p2, p1, Landroidx/recyclerview/widget/RecyclerView$c0;->itemView:Landroid/view/View;

    invoke-virtual {p2}, Landroid/view/View;->getPaddingLeft()I

    move-result v0

    iget-object v1, p0, Lcom/miui/permcenter/permissions/SystemAppPermissionDialogActivity$c;->b:Lcom/miui/permcenter/permissions/SystemAppPermissionDialogActivity;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v3, 0x7f070495

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iget-object v3, p1, Landroidx/recyclerview/widget/RecyclerView$c0;->itemView:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getPaddingRight()I

    move-result v3

    iget-object v4, p1, Landroidx/recyclerview/widget/RecyclerView$c0;->itemView:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->getPaddingBottom()I

    move-result v4

    invoke-virtual {p2, v0, v1, v3, v4}, Landroid/view/View;->setPadding(IIII)V

    iget-object p2, p1, Lcom/miui/permcenter/permissions/SystemAppPermissionDialogActivity$c$b;->b:Landroid/widget/TextView;

    invoke-virtual {p2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p2

    check-cast p2, Landroid/widget/LinearLayout$LayoutParams;

    iput v2, p2, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    iget-object v0, p1, Lcom/miui/permcenter/permissions/SystemAppPermissionDialogActivity$c$b;->b:Landroid/widget/TextView;

    invoke-virtual {v0, p2}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object p2, p1, Lcom/miui/permcenter/permissions/SystemAppPermissionDialogActivity$c$b;->c:Landroid/widget/TextView;

    invoke-virtual {p2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p2

    check-cast p2, Landroid/widget/LinearLayout$LayoutParams;

    iget-object v0, p0, Lcom/miui/permcenter/permissions/SystemAppPermissionDialogActivity$c;->b:Lcom/miui/permcenter/permissions/SystemAppPermissionDialogActivity;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0703ab

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p2, Landroid/widget/LinearLayout$LayoutParams;->bottomMargin:I

    iput v0, p2, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    iget-object v0, p1, Lcom/miui/permcenter/permissions/SystemAppPermissionDialogActivity$c$b;->c:Landroid/widget/TextView;

    invoke-virtual {v0, p2}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_1

    :cond_0
    iget-object p2, p0, Lcom/miui/permcenter/permissions/SystemAppPermissionDialogActivity$c;->b:Lcom/miui/permcenter/permissions/SystemAppPermissionDialogActivity;

    invoke-static {p2}, Lcom/miui/permcenter/permissions/SystemAppPermissionDialogActivity;->n0(Lcom/miui/permcenter/permissions/SystemAppPermissionDialogActivity;)Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    if-eqz p2, :cond_1

    iget-object p2, p0, Lcom/miui/permcenter/permissions/SystemAppPermissionDialogActivity$c;->b:Lcom/miui/permcenter/permissions/SystemAppPermissionDialogActivity;

    iget-object p2, p2, Lcom/miui/permcenter/permissions/SystemAppPermissionDialogActivity;->u:Ljava/lang/String;

    const-string v0, "pkg_icon://"

    invoke-virtual {v0, p2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    goto :goto_0

    :cond_1
    iget-object p2, p0, Lcom/miui/permcenter/permissions/SystemAppPermissionDialogActivity$c;->b:Lcom/miui/permcenter/permissions/SystemAppPermissionDialogActivity;

    invoke-static {p2}, Lcom/miui/permcenter/permissions/SystemAppPermissionDialogActivity;->n0(Lcom/miui/permcenter/permissions/SystemAppPermissionDialogActivity;)Ljava/lang/String;

    move-result-object p2

    :goto_0
    iget-object v0, p1, Lcom/miui/permcenter/permissions/SystemAppPermissionDialogActivity$c$b;->a:Landroid/widget/ImageView;

    const v1, 0x7f08092f

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    iget-object v0, p1, Lcom/miui/permcenter/permissions/SystemAppPermissionDialogActivity$c$b;->a:Landroid/widget/ImageView;

    sget-object v1, Lx4/o0;->f:Lrh/c;

    new-instance v2, Lcom/miui/permcenter/permissions/SystemAppPermissionDialogActivity$c$a;

    invoke-direct {v2, p0}, Lcom/miui/permcenter/permissions/SystemAppPermissionDialogActivity$c$a;-><init>(Lcom/miui/permcenter/permissions/SystemAppPermissionDialogActivity$c;)V

    invoke-static {p2, v0, v1, v2}, Lx4/o0;->g(Ljava/lang/String;Landroid/widget/ImageView;Lrh/c;Lyh/a;)V

    :goto_1
    iget-object p2, p1, Lcom/miui/permcenter/permissions/SystemAppPermissionDialogActivity$c$b;->b:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/miui/permcenter/permissions/SystemAppPermissionDialogActivity$c;->b:Lcom/miui/permcenter/permissions/SystemAppPermissionDialogActivity;

    invoke-static {v0}, Lcom/miui/permcenter/permissions/SystemAppPermissionDialogActivity;->o0(Lcom/miui/permcenter/permissions/SystemAppPermissionDialogActivity;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/miui/permcenter/permissions/SystemAppPermissionDialogActivity$c;->b:Lcom/miui/permcenter/permissions/SystemAppPermissionDialogActivity;

    invoke-static {v0}, Lcom/miui/permcenter/permissions/SystemAppPermissionDialogActivity;->p0(Lcom/miui/permcenter/permissions/SystemAppPermissionDialogActivity;)Ljava/lang/CharSequence;

    move-result-object v0

    goto :goto_2

    :cond_2
    iget-object v0, p0, Lcom/miui/permcenter/permissions/SystemAppPermissionDialogActivity$c;->b:Lcom/miui/permcenter/permissions/SystemAppPermissionDialogActivity;

    invoke-static {v0}, Lcom/miui/permcenter/permissions/SystemAppPermissionDialogActivity;->o0(Lcom/miui/permcenter/permissions/SystemAppPermissionDialogActivity;)Ljava/lang/String;

    move-result-object v0

    :goto_2
    invoke-virtual {p2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object p1, p1, Lcom/miui/permcenter/permissions/SystemAppPermissionDialogActivity$c$b;->c:Landroid/widget/TextView;

    iget-object p2, p0, Lcom/miui/permcenter/permissions/SystemAppPermissionDialogActivity$c;->b:Lcom/miui/permcenter/permissions/SystemAppPermissionDialogActivity;

    invoke-static {p2}, Lcom/miui/permcenter/permissions/SystemAppPermissionDialogActivity;->q0(Lcom/miui/permcenter/permissions/SystemAppPermissionDialogActivity;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    :goto_3
    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_6

    :cond_3
    instance-of v0, p1, Lcom/miui/permcenter/permissions/SystemAppPermissionDialogActivity$c$d;

    const/4 v3, 0x1

    if-eqz v0, :cond_5

    check-cast p1, Lcom/miui/permcenter/permissions/SystemAppPermissionDialogActivity$c$d;

    iget-object v0, p0, Lcom/miui/permcenter/permissions/SystemAppPermissionDialogActivity$c;->b:Lcom/miui/permcenter/permissions/SystemAppPermissionDialogActivity;

    invoke-static {v0}, Lcom/miui/permcenter/permissions/SystemAppPermissionDialogActivity;->r0(Lcom/miui/permcenter/permissions/SystemAppPermissionDialogActivity;)[Ljava/lang/String;

    move-result-object v0

    sub-int/2addr p2, v3

    aget-object v0, v0, p2

    sget-object v1, Lxc/d;->b:Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    iget-object v1, p1, Lcom/miui/permcenter/permissions/SystemAppPermissionDialogActivity$c$d;->a:Landroid/widget/ImageView;

    sget-object v2, Lxc/d;->b:Ljava/util/Map;

    invoke-interface {v2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    goto :goto_4

    :cond_4
    iget-object v1, p1, Lcom/miui/permcenter/permissions/SystemAppPermissionDialogActivity$c$d;->a:Landroid/widget/ImageView;

    sget-object v2, Lxc/d;->a:Ljava/util/Map;

    const v3, 0x7f080e53

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {v2, v0, v3}, Lc3/q;->a(Ljava/util/Map;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    :goto_4
    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    iget-object v1, p1, Lcom/miui/permcenter/permissions/SystemAppPermissionDialogActivity$c$d;->b:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/miui/permcenter/permissions/SystemAppPermissionDialogActivity$c;->b:Lcom/miui/permcenter/permissions/SystemAppPermissionDialogActivity;

    invoke-static {v2, v0}, Lxc/d;->a(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/miui/permcenter/permissions/SystemAppPermissionDialogActivity$c;->b:Lcom/miui/permcenter/permissions/SystemAppPermissionDialogActivity;

    invoke-static {v0}, Lcom/miui/permcenter/permissions/SystemAppPermissionDialogActivity;->s0(Lcom/miui/permcenter/permissions/SystemAppPermissionDialogActivity;)[Ljava/lang/String;

    move-result-object v0

    aget-object v0, v0, p2

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_9

    iget-object p1, p1, Lcom/miui/permcenter/permissions/SystemAppPermissionDialogActivity$c$d;->c:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/miui/permcenter/permissions/SystemAppPermissionDialogActivity$c;->b:Lcom/miui/permcenter/permissions/SystemAppPermissionDialogActivity;

    invoke-static {v0}, Lcom/miui/permcenter/permissions/SystemAppPermissionDialogActivity;->s0(Lcom/miui/permcenter/permissions/SystemAppPermissionDialogActivity;)[Ljava/lang/String;

    move-result-object v0

    aget-object p2, v0, p2

    goto :goto_3

    :cond_5
    instance-of p2, p1, Lcom/miui/permcenter/permissions/SystemAppPermissionDialogActivity$c$c;

    if-eqz p2, :cond_9

    check-cast p1, Lcom/miui/permcenter/permissions/SystemAppPermissionDialogActivity$c$c;

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object p2

    invoke-virtual {p2}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_6

    const-string v0, "en"

    invoke-virtual {p2, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p2

    if-eqz p2, :cond_6

    iget-object p2, p1, Lcom/miui/permcenter/permissions/SystemAppPermissionDialogActivity$c$c;->a:Landroid/widget/ImageView;

    const v0, 0x7f080eb1

    goto :goto_5

    :cond_6
    iget-object p2, p1, Lcom/miui/permcenter/permissions/SystemAppPermissionDialogActivity$c$c;->a:Landroid/widget/ImageView;

    const v0, 0x7f080eb0

    :goto_5
    invoke-virtual {p2, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    iget-object p2, p0, Lcom/miui/permcenter/permissions/SystemAppPermissionDialogActivity$c;->b:Lcom/miui/permcenter/permissions/SystemAppPermissionDialogActivity;

    invoke-static {p2}, Lcom/miui/permcenter/permissions/SystemAppPermissionDialogActivity;->m0(Lcom/miui/permcenter/permissions/SystemAppPermissionDialogActivity;)Z

    move-result p2

    if-eqz p2, :cond_7

    iget-object p2, p1, Lcom/miui/permcenter/permissions/SystemAppPermissionDialogActivity$c$c;->a:Landroid/widget/ImageView;

    invoke-virtual {p2, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    :cond_7
    iget-object p2, p0, Lcom/miui/permcenter/permissions/SystemAppPermissionDialogActivity$c;->b:Lcom/miui/permcenter/permissions/SystemAppPermissionDialogActivity;

    invoke-static {p2}, Lcom/miui/permcenter/permissions/SystemAppPermissionDialogActivity;->j0(Lcom/miui/permcenter/permissions/SystemAppPermissionDialogActivity;)Landroid/util/ArrayMap;

    move-result-object p2

    if-eqz p2, :cond_8

    iget-object p2, p0, Lcom/miui/permcenter/permissions/SystemAppPermissionDialogActivity$c;->b:Lcom/miui/permcenter/permissions/SystemAppPermissionDialogActivity;

    invoke-static {p2}, Lcom/miui/permcenter/permissions/SystemAppPermissionDialogActivity;->j0(Lcom/miui/permcenter/permissions/SystemAppPermissionDialogActivity;)Landroid/util/ArrayMap;

    move-result-object p2

    invoke-virtual {p2}, Landroid/util/ArrayMap;->isEmpty()Z

    move-result p2

    if-nez p2, :cond_8

    iget-object p2, p1, Lcom/miui/permcenter/permissions/SystemAppPermissionDialogActivity$c$c;->b:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/miui/permcenter/permissions/SystemAppPermissionDialogActivity$c;->b:Lcom/miui/permcenter/permissions/SystemAppPermissionDialogActivity;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f121921

    new-array v3, v3, [Ljava/lang/Object;

    iget-object v4, p0, Lcom/miui/permcenter/permissions/SystemAppPermissionDialogActivity$c;->c:Ljava/lang/String;

    aput-object v4, v3, v2

    invoke-virtual {v0, v1, v3}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object p1, p1, Lcom/miui/permcenter/permissions/SystemAppPermissionDialogActivity$c$c;->b:Landroid/widget/TextView;

    new-instance p2, Lcc/d;

    new-instance v0, Lcom/miui/permcenter/permissions/o;

    invoke-direct {v0, p0}, Lcom/miui/permcenter/permissions/o;-><init>(Lcom/miui/permcenter/permissions/SystemAppPermissionDialogActivity$c;)V

    invoke-direct {p2, v0}, Lcc/d;-><init>(Lcc/c;)V

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setMovementMethod(Landroid/text/method/MovementMethod;)V

    goto :goto_6

    :cond_8
    iget-object p1, p1, Lcom/miui/permcenter/permissions/SystemAppPermissionDialogActivity$c$c;->b:Landroid/widget/TextView;

    iget-object p2, p0, Lcom/miui/permcenter/permissions/SystemAppPermissionDialogActivity$c;->b:Lcom/miui/permcenter/permissions/SystemAppPermissionDialogActivity;

    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    const v0, 0x7f121920

    new-array v1, v3, [Ljava/lang/Object;

    iget-object v3, p0, Lcom/miui/permcenter/permissions/SystemAppPermissionDialogActivity$c;->c:Ljava/lang/String;

    aput-object v3, v1, v2

    invoke-virtual {p2, v0, v1}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    goto/16 :goto_3

    :cond_9
    :goto_6
    return-void
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Landroidx/recyclerview/widget/RecyclerView$c0;
    .locals 3

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-ne p2, v1, :cond_0

    new-instance p2, Lcom/miui/permcenter/permissions/SystemAppPermissionDialogActivity$c$b;

    iget-object v1, p0, Lcom/miui/permcenter/permissions/SystemAppPermissionDialogActivity$c;->b:Lcom/miui/permcenter/permissions/SystemAppPermissionDialogActivity;

    invoke-static {v1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    const v2, 0x7f0e010b

    invoke-virtual {v1, v2, p1, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    invoke-direct {p2, p1}, Lcom/miui/permcenter/permissions/SystemAppPermissionDialogActivity$c$b;-><init>(Landroid/view/View;)V

    return-object p2

    :cond_0
    const/4 v1, 0x2

    if-ne p2, v1, :cond_1

    new-instance p2, Lcom/miui/permcenter/permissions/SystemAppPermissionDialogActivity$c$d;

    iget-object v1, p0, Lcom/miui/permcenter/permissions/SystemAppPermissionDialogActivity$c;->b:Lcom/miui/permcenter/permissions/SystemAppPermissionDialogActivity;

    invoke-static {v1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    const v2, 0x7f0e0253

    invoke-virtual {v1, v2, p1, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    invoke-direct {p2, p1}, Lcom/miui/permcenter/permissions/SystemAppPermissionDialogActivity$c$d;-><init>(Landroid/view/View;)V

    return-object p2

    :cond_1
    new-instance p2, Lcom/miui/permcenter/permissions/SystemAppPermissionDialogActivity$c$c;

    iget-object v1, p0, Lcom/miui/permcenter/permissions/SystemAppPermissionDialogActivity$c;->b:Lcom/miui/permcenter/permissions/SystemAppPermissionDialogActivity;

    invoke-static {v1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    const v2, 0x7f0e0251

    invoke-virtual {v1, v2, p1, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    invoke-direct {p2, p1}, Lcom/miui/permcenter/permissions/SystemAppPermissionDialogActivity$c$c;-><init>(Landroid/view/View;)V

    return-object p2
.end method
