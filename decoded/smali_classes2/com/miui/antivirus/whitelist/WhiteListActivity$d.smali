.class Lcom/miui/antivirus/whitelist/WhiteListActivity$d;
.super Lmiuix/recyclerview/card/e;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/antivirus/whitelist/WhiteListActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "d"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/antivirus/whitelist/WhiteListActivity$d$b;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lmiuix/recyclerview/card/e<",
        "Lcom/miui/antivirus/whitelist/WhiteListActivity$d$b;",
        ">;"
    }
.end annotation


# instance fields
.field private a:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lcom/miui/antivirus/whitelist/c;",
            ">;"
        }
    .end annotation
.end field

.field private b:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/miui/antivirus/whitelist/b;",
            ">;"
        }
    .end annotation
.end field

.field private c:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/miui/antivirus/whitelist/c;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic d:Lcom/miui/antivirus/whitelist/WhiteListActivity;


# direct methods
.method private constructor <init>(Lcom/miui/antivirus/whitelist/WhiteListActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/antivirus/whitelist/WhiteListActivity$d;->d:Lcom/miui/antivirus/whitelist/WhiteListActivity;

    invoke-direct {p0}, Lmiuix/recyclerview/card/e;-><init>()V

    new-instance p1, Ljava/util/HashSet;

    invoke-direct {p1}, Ljava/util/HashSet;-><init>()V

    iput-object p1, p0, Lcom/miui/antivirus/whitelist/WhiteListActivity$d;->a:Ljava/util/Set;

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/miui/antivirus/whitelist/WhiteListActivity$d;->b:Ljava/util/List;

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/miui/antivirus/whitelist/WhiteListActivity$d;->c:Ljava/util/List;

    return-void
.end method

.method synthetic constructor <init>(Lcom/miui/antivirus/whitelist/WhiteListActivity;Lcom/miui/antivirus/whitelist/WhiteListActivity$a;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/miui/antivirus/whitelist/WhiteListActivity$d;-><init>(Lcom/miui/antivirus/whitelist/WhiteListActivity;)V

    return-void
.end method

.method public static synthetic k(Lcom/miui/antivirus/whitelist/WhiteListActivity$d;Lcom/miui/antivirus/whitelist/WhiteListActivity$d$b;Lcom/miui/antivirus/whitelist/c;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/miui/antivirus/whitelist/WhiteListActivity$d;->o(Lcom/miui/antivirus/whitelist/WhiteListActivity$d$b;Lcom/miui/antivirus/whitelist/c;Landroid/view/View;)V

    return-void
.end method

.method private l()V
    .locals 3

    new-instance v0, Lmiuix/appcompat/app/AlertDialog$Builder;

    iget-object v1, p0, Lcom/miui/antivirus/whitelist/WhiteListActivity$d;->d:Lcom/miui/antivirus/whitelist/WhiteListActivity;

    invoke-direct {v0, v1}, Lmiuix/appcompat/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v1, 0x7f120cda

    invoke-virtual {v0, v1}, Lmiuix/appcompat/app/AlertDialog$Builder;->setTitle(I)Lmiuix/appcompat/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f120cd9

    invoke-virtual {v0, v1}, Lmiuix/appcompat/app/AlertDialog$Builder;->setMessage(I)Lmiuix/appcompat/app/AlertDialog$Builder;

    move-result-object v0

    new-instance v1, Lcom/miui/antivirus/whitelist/WhiteListActivity$d$a;

    invoke-direct {v1, p0}, Lcom/miui/antivirus/whitelist/WhiteListActivity$d$a;-><init>(Lcom/miui/antivirus/whitelist/WhiteListActivity$d;)V

    const v2, 0x7f120477

    invoke-virtual {v0, v2, v1}, Lmiuix/appcompat/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Lmiuix/appcompat/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lmiuix/appcompat/app/AlertDialog$Builder;->show()Lmiuix/appcompat/app/AlertDialog;

    return-void
.end method

.method static synthetic m(Lcom/miui/antivirus/whitelist/WhiteListActivity$d;)Ljava/util/List;
    .locals 0

    iget-object p0, p0, Lcom/miui/antivirus/whitelist/WhiteListActivity$d;->b:Ljava/util/List;

    return-object p0
.end method

.method private n()Z
    .locals 2

    const-string v0, "key_first_enter_virus_whitelist"

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lr4/a;->e(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method private synthetic o(Lcom/miui/antivirus/whitelist/WhiteListActivity$d$b;Lcom/miui/antivirus/whitelist/c;Landroid/view/View;)V
    .locals 0

    invoke-static {p1}, Lcom/miui/antivirus/whitelist/WhiteListActivity$d$b;->c(Lcom/miui/antivirus/whitelist/WhiteListActivity$d$b;)Landroid/widget/CheckBox;

    move-result-object p3

    invoke-virtual {p3}, Landroid/widget/CompoundButton;->isChecked()Z

    move-result p3

    xor-int/lit8 p3, p3, 0x1

    invoke-static {p1}, Lcom/miui/antivirus/whitelist/WhiteListActivity$d$b;->c(Lcom/miui/antivirus/whitelist/WhiteListActivity$d$b;)Landroid/widget/CheckBox;

    move-result-object p1

    invoke-virtual {p1, p3}, Landroid/widget/CompoundButton;->setChecked(Z)V

    iget-object p1, p0, Lcom/miui/antivirus/whitelist/WhiteListActivity$d;->a:Ljava/util/Set;

    if-eqz p3, :cond_0

    invoke-interface {p1, p2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    invoke-interface {p1, p2}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    :goto_0
    invoke-virtual {p2, p3}, Lcom/miui/antivirus/whitelist/c;->h(Z)V

    iget-object p1, p0, Lcom/miui/antivirus/whitelist/WhiteListActivity$d;->d:Lcom/miui/antivirus/whitelist/WhiteListActivity;

    invoke-static {p1}, Lcom/miui/antivirus/whitelist/WhiteListActivity;->g0(Lcom/miui/antivirus/whitelist/WhiteListActivity;)Landroid/widget/Button;

    move-result-object p1

    iget-object p2, p0, Lcom/miui/antivirus/whitelist/WhiteListActivity$d;->a:Ljava/util/Set;

    invoke-interface {p2}, Ljava/util/Set;->isEmpty()Z

    move-result p2

    xor-int/lit8 p2, p2, 0x1

    invoke-virtual {p1, p2}, Landroid/view/View;->setEnabled(Z)V

    return-void
.end method

.method private r(Z)V
    .locals 1

    const-string v0, "key_first_enter_virus_whitelist"

    invoke-static {v0, p1}, Lr4/a;->n(Ljava/lang/String;Z)V

    return-void
.end method


# virtual methods
.method public getItemCount()I
    .locals 1

    iget-object v0, p0, Lcom/miui/antivirus/whitelist/WhiteListActivity$d;->c:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getItemViewGroup(I)I
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public bridge synthetic onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$c0;I)V
    .locals 0
    .param p1    # Landroidx/recyclerview/widget/RecyclerView$c0;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    check-cast p1, Lcom/miui/antivirus/whitelist/WhiteListActivity$d$b;

    invoke-virtual {p0, p1, p2}, Lcom/miui/antivirus/whitelist/WhiteListActivity$d;->p(Lcom/miui/antivirus/whitelist/WhiteListActivity$d$b;I)V

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

    invoke-virtual {p0, p1, p2}, Lcom/miui/antivirus/whitelist/WhiteListActivity$d;->q(Landroid/view/ViewGroup;I)Lcom/miui/antivirus/whitelist/WhiteListActivity$d$b;

    move-result-object p1

    return-object p1
.end method

.method public p(Lcom/miui/antivirus/whitelist/WhiteListActivity$d$b;I)V
    .locals 3
    .param p1    # Lcom/miui/antivirus/whitelist/WhiteListActivity$d$b;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    iget-object v0, p0, Lcom/miui/antivirus/whitelist/WhiteListActivity$d;->c:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/miui/antivirus/whitelist/c;

    invoke-virtual {p2}, Lcom/miui/antivirus/whitelist/c;->d()Lo2/b$c;

    move-result-object v0

    sget-object v1, Lcom/miui/antivirus/whitelist/WhiteListActivity$b;->a:[I

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    aget v0, v1, v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_1

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    goto :goto_1

    :cond_0
    invoke-static {p1}, Lcom/miui/antivirus/whitelist/WhiteListActivity$d$b;->d(Lcom/miui/antivirus/whitelist/WhiteListActivity$d$b;)Landroid/widget/TextView;

    move-result-object v0

    const v1, 0x7f120c29

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "apk_icon://"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Lcom/miui/antivirus/whitelist/c;->c()Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :cond_1
    invoke-static {p1}, Lcom/miui/antivirus/whitelist/WhiteListActivity$d$b;->d(Lcom/miui/antivirus/whitelist/WhiteListActivity$d$b;)Landroid/widget/TextView;

    move-result-object v0

    const v1, 0x7f120c2b

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "pkg_icon://"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Lcom/miui/antivirus/whitelist/c;->e()Ljava/lang/String;

    move-result-object v1

    :goto_0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1}, Lcom/miui/antivirus/whitelist/WhiteListActivity$d$b;->a(Lcom/miui/antivirus/whitelist/WhiteListActivity$d$b;)Landroid/widget/ImageView;

    move-result-object v1

    sget-object v2, Lx4/o0;->f:Lrh/c;

    invoke-static {v0, v1, v2}, Lx4/o0;->d(Ljava/lang/String;Landroid/widget/ImageView;Lrh/c;)V

    :goto_1
    invoke-static {p1}, Lcom/miui/antivirus/whitelist/WhiteListActivity$d$b;->b(Lcom/miui/antivirus/whitelist/WhiteListActivity$d$b;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {p2}, Lcom/miui/antivirus/whitelist/c;->f()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-static {p1}, Lcom/miui/antivirus/whitelist/WhiteListActivity$d$b;->c(Lcom/miui/antivirus/whitelist/WhiteListActivity$d$b;)Landroid/widget/CheckBox;

    move-result-object v0

    invoke-virtual {v0, p2}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    invoke-static {p1}, Lcom/miui/antivirus/whitelist/WhiteListActivity$d$b;->c(Lcom/miui/antivirus/whitelist/WhiteListActivity$d$b;)Landroid/widget/CheckBox;

    move-result-object v0

    invoke-virtual {p2}, Lcom/miui/antivirus/whitelist/c;->g()Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/CompoundButton;->setChecked(Z)V

    iget-object v0, p1, Landroidx/recyclerview/widget/RecyclerView$c0;->itemView:Landroid/view/View;

    new-instance v1, Lcom/miui/antivirus/whitelist/a;

    invoke-direct {v1, p0, p1, p2}, Lcom/miui/antivirus/whitelist/a;-><init>(Lcom/miui/antivirus/whitelist/WhiteListActivity$d;Lcom/miui/antivirus/whitelist/WhiteListActivity$d$b;Lcom/miui/antivirus/whitelist/c;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public q(Landroid/view/ViewGroup;I)Lcom/miui/antivirus/whitelist/WhiteListActivity$d$b;
    .locals 3
    .param p1    # Landroid/view/ViewGroup;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    new-instance p2, Lcom/miui/antivirus/whitelist/WhiteListActivity$d$b;

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f0e0528

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    const/4 v0, 0x0

    invoke-direct {p2, p0, p1, v0}, Lcom/miui/antivirus/whitelist/WhiteListActivity$d$b;-><init>(Lcom/miui/antivirus/whitelist/WhiteListActivity$d;Landroid/view/View;Lcom/miui/antivirus/whitelist/WhiteListActivity$a;)V

    return-object p2
.end method

.method public s(Ljava/util/List;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/miui/antivirus/whitelist/b;",
            ">;)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/miui/antivirus/whitelist/WhiteListActivity$d;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    iget-object v0, p0, Lcom/miui/antivirus/whitelist/WhiteListActivity$d;->b:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    iget-object v0, p0, Lcom/miui/antivirus/whitelist/WhiteListActivity$d;->a:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->clear()V

    iget-object v0, p0, Lcom/miui/antivirus/whitelist/WhiteListActivity$d;->c:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_0

    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/miui/antivirus/whitelist/b;

    iget-object v3, p0, Lcom/miui/antivirus/whitelist/WhiteListActivity$d;->c:Ljava/util/List;

    iget-object v2, v2, Lcom/miui/antivirus/whitelist/b;->b:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lcom/miui/antivirus/whitelist/WhiteListActivity$d;->d:Lcom/miui/antivirus/whitelist/WhiteListActivity;

    invoke-static {p1}, Lcom/miui/antivirus/whitelist/WhiteListActivity;->g0(Lcom/miui/antivirus/whitelist/WhiteListActivity;)Landroid/widget/Button;

    move-result-object p1

    iget-object v1, p0, Lcom/miui/antivirus/whitelist/WhiteListActivity$d;->b:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_1

    move v1, v0

    goto :goto_1

    :cond_1
    const/16 v1, 0x8

    :goto_1
    invoke-virtual {p1, v1}, Landroid/view/View;->setVisibility(I)V

    invoke-direct {p0}, Lcom/miui/antivirus/whitelist/WhiteListActivity$d;->n()Z

    move-result p1

    if-eqz p1, :cond_3

    iget-object p1, p0, Lcom/miui/antivirus/whitelist/WhiteListActivity$d;->b:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_2

    invoke-direct {p0}, Lcom/miui/antivirus/whitelist/WhiteListActivity$d;->l()V

    :cond_2
    invoke-direct {p0, v0}, Lcom/miui/antivirus/whitelist/WhiteListActivity$d;->r(Z)V

    :cond_3
    return-void
.end method

.method public setHasStableIds()V
    .locals 0

    return-void
.end method
