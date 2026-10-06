.class public Lcom/miui/permcenter/permissions/b;
.super Lwb/a;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/permcenter/permissions/b$d;,
        Lcom/miui/permcenter/permissions/b$b;,
        Lcom/miui/permcenter/permissions/b$c;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lwb/a<",
        "Lcom/miui/permcenter/permissions/b$d;",
        ">;"
    }
.end annotation


# instance fields
.field private b:Lmiuix/appcompat/app/AppCompatActivity;

.field private c:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/miui/permcenter/AppPermissionInfo;",
            ">;"
        }
    .end annotation
.end field

.field private d:Lcom/miui/permcenter/permissions/b$c;


# direct methods
.method public constructor <init>(Lmiuix/appcompat/app/AppCompatActivity;)V
    .locals 1

    invoke-direct {p0}, Lwb/a;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/miui/permcenter/permissions/b;->c:Ljava/util/List;

    iput-object p1, p0, Lcom/miui/permcenter/permissions/b;->b:Lmiuix/appcompat/app/AppCompatActivity;

    return-void
.end method

.method static synthetic l(Lcom/miui/permcenter/permissions/b;)Lcom/miui/permcenter/permissions/b$c;
    .locals 0

    iget-object p0, p0, Lcom/miui/permcenter/permissions/b;->d:Lcom/miui/permcenter/permissions/b$c;

    return-object p0
.end method


# virtual methods
.method public getItemCount()I
    .locals 1

    iget-object v0, p0, Lcom/miui/permcenter/permissions/b;->c:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getItemViewGroup(I)I
    .locals 2

    invoke-static {}, Lbl/l;->a()I

    move-result v0

    const/4 v1, 0x1

    if-gt v0, v1, :cond_0

    invoke-super {p0, p1}, Lwb/a;->getItemViewGroup(I)I

    move-result p1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public m(Lcom/miui/permcenter/permissions/b$d;I)V
    .locals 5
    .param p1    # Lcom/miui/permcenter/permissions/b$d;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    invoke-super {p0, p1, p2}, Lwb/a;->onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$c0;I)V

    invoke-static {}, Lbl/l;->a()I

    move-result v0

    const/4 v1, 0x1

    if-gt v0, v1, :cond_0

    sget-object v0, Lxc/v;->a:Lxc/v$a;

    iget-object v2, p0, Lcom/miui/permcenter/permissions/b;->b:Lmiuix/appcompat/app/AppCompatActivity;

    iget-object v3, p1, Landroidx/recyclerview/widget/RecyclerView$c0;->itemView:Landroid/view/View;

    invoke-virtual {v0, v2, v3}, Lxc/v$a;->a(Landroid/content/Context;Landroid/view/View;)V

    goto :goto_0

    :cond_0
    sget-object v0, Lxc/v;->a:Lxc/v$a;

    iget-object v2, p0, Lcom/miui/permcenter/permissions/b;->b:Lmiuix/appcompat/app/AppCompatActivity;

    iget-object v3, p1, Landroidx/recyclerview/widget/RecyclerView$c0;->itemView:Landroid/view/View;

    invoke-virtual {v0, v2, v3}, Lxc/v$a;->e(Lmiuix/appcompat/app/AppCompatActivity;Landroid/view/View;)V

    :goto_0
    iget-object v0, p0, Lcom/miui/permcenter/permissions/b;->c:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/permcenter/AppPermissionInfo;

    invoke-virtual {v0}, Lcom/miui/permcenter/AppPermissionInfo;->getUid()I

    move-result v2

    invoke-static {v2}, Lx4/z1;->m(I)I

    move-result v2

    const/16 v3, 0x3e7

    if-ne v2, v3, :cond_1

    const-string v2, "pkg_icon_xspace://"

    goto :goto_1

    :cond_1
    const-string v2, "pkg_icon://"

    :goto_1
    invoke-virtual {v0}, Lcom/miui/permcenter/AppPermissionInfo;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p1, Lcom/miui/permcenter/permissions/b$d;->a:Landroid/widget/ImageView;

    sget-object v4, Lx4/o0;->f:Lrh/c;

    invoke-static {v2, v3, v4}, Lx4/o0;->d(Ljava/lang/String;Landroid/widget/ImageView;Lrh/c;)V

    iget-object v2, p1, Lcom/miui/permcenter/permissions/b$d;->b:Landroid/widget/TextView;

    iget-object v3, p0, Lcom/miui/permcenter/permissions/b;->b:Lmiuix/appcompat/app/AppCompatActivity;

    invoke-virtual {v0}, Lcom/miui/permcenter/AppPermissionInfo;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lx4/f1;->O(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v2, p1, Landroidx/recyclerview/widget/RecyclerView$c0;->itemView:Landroid/view/View;

    new-instance v3, Lcom/miui/permcenter/permissions/b$a;

    invoke-direct {v3, p0, p2, v0}, Lcom/miui/permcenter/permissions/b$a;-><init>(Lcom/miui/permcenter/permissions/b;ILcom/miui/permcenter/AppPermissionInfo;)V

    invoke-virtual {v2, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-virtual {v0}, Lcom/miui/permcenter/AppPermissionInfo;->getPackageName()Ljava/lang/String;

    move-result-object p2

    const-string v2, "com.miui.hybrid"

    invoke-virtual {p2, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_2

    iget-object p1, p1, Lcom/miui/permcenter/permissions/b$d;->c:Landroid/widget/TextView;

    iget-object p2, p0, Lcom/miui/permcenter/permissions/b;->b:Lmiuix/appcompat/app/AppCompatActivity;

    const v0, 0x7f120d44

    invoke-virtual {p2, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p2

    :goto_2
    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_3

    :cond_2
    invoke-virtual {v0}, Lcom/miui/permcenter/AppPermissionInfo;->isSystem()Z

    move-result p2

    if-nez p2, :cond_3

    invoke-virtual {v0}, Lcom/miui/permcenter/AppPermissionInfo;->isAdaptedRpData()Z

    move-result p2

    if-nez p2, :cond_3

    invoke-virtual {v0}, Lcom/miui/permcenter/AppPermissionInfo;->getCount()I

    move-result p2

    iget-object v0, p1, Lcom/miui/permcenter/permissions/b$d;->c:Landroid/widget/TextView;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    iget-object p1, p1, Lcom/miui/permcenter/permissions/b$d;->c:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/miui/permcenter/permissions/b;->b:Lmiuix/appcompat/app/AppCompatActivity;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v3, 0x7f100050

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v1, v2

    invoke-virtual {v0, v3, p2, v1}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    goto :goto_2

    :cond_3
    iget-object p2, p1, Lcom/miui/permcenter/permissions/b$d;->c:Landroid/widget/TextView;

    const/16 v0, 0x8

    invoke-virtual {p2, v0}, Landroid/view/View;->setVisibility(I)V

    iget-object p1, p1, Lcom/miui/permcenter/permissions/b$d;->c:Landroid/widget/TextView;

    const-string p2, ""

    goto :goto_2

    :goto_3
    return-void
.end method

.method public n(Landroid/view/ViewGroup;I)Lcom/miui/permcenter/permissions/b$d;
    .locals 3
    .param p1    # Landroid/view/ViewGroup;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    new-instance p2, Lcom/miui/permcenter/permissions/b$d;

    iget-object v0, p0, Lcom/miui/permcenter/permissions/b;->b:Lmiuix/appcompat/app/AppCompatActivity;

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f0e042d

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    invoke-direct {p2, p1}, Lcom/miui/permcenter/permissions/b$d;-><init>(Landroid/view/View;)V

    return-object p2
.end method

.method public o(Lcom/miui/permcenter/permissions/b$c;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/permcenter/permissions/b;->d:Lcom/miui/permcenter/permissions/b$c;

    return-void
.end method

.method public bridge synthetic onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$c0;I)V
    .locals 0
    .param p1    # Landroidx/recyclerview/widget/RecyclerView$c0;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    check-cast p1, Lcom/miui/permcenter/permissions/b$d;

    invoke-virtual {p0, p1, p2}, Lcom/miui/permcenter/permissions/b;->m(Lcom/miui/permcenter/permissions/b$d;I)V

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

    invoke-virtual {p0, p1, p2}, Lcom/miui/permcenter/permissions/b;->n(Landroid/view/ViewGroup;I)Lcom/miui/permcenter/permissions/b$d;

    move-result-object p1

    return-object p1
.end method

.method public p(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/miui/permcenter/AppPermissionInfo;",
            ">;)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/miui/permcenter/permissions/b;->c:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    iget-object v0, p0, Lcom/miui/permcenter/permissions/b;->c:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$h;->notifyDataSetChanged()V

    return-void
.end method
