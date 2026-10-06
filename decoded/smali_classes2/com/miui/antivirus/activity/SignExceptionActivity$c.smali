.class Lcom/miui/antivirus/activity/SignExceptionActivity$c;
.super Lmiuix/recyclerview/card/e;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/antivirus/activity/SignExceptionActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "c"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lmiuix/recyclerview/card/e<",
        "Lcom/miui/antivirus/activity/SignExceptionActivity$b;",
        ">;"
    }
.end annotation


# instance fields
.field private a:Landroid/view/LayoutInflater;

.field private b:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private c:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/miui/antivirus/model/a;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic d:Lcom/miui/antivirus/activity/SignExceptionActivity;


# direct methods
.method public constructor <init>(Lcom/miui/antivirus/activity/SignExceptionActivity;Landroid/content/Context;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/antivirus/activity/SignExceptionActivity$c;->d:Lcom/miui/antivirus/activity/SignExceptionActivity;

    invoke-direct {p0}, Lmiuix/recyclerview/card/e;-><init>()V

    new-instance p1, Ljava/util/HashSet;

    invoke-direct {p1}, Ljava/util/HashSet;-><init>()V

    iput-object p1, p0, Lcom/miui/antivirus/activity/SignExceptionActivity$c;->b:Ljava/util/Set;

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/miui/antivirus/activity/SignExceptionActivity$c;->c:Ljava/util/List;

    invoke-static {p2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p1

    iput-object p1, p0, Lcom/miui/antivirus/activity/SignExceptionActivity$c;->a:Landroid/view/LayoutInflater;

    return-void
.end method

.method static synthetic k(Lcom/miui/antivirus/activity/SignExceptionActivity$c;)Ljava/util/Set;
    .locals 0

    iget-object p0, p0, Lcom/miui/antivirus/activity/SignExceptionActivity$c;->b:Ljava/util/Set;

    return-object p0
.end method


# virtual methods
.method public getItemCount()I
    .locals 1

    iget-object v0, p0, Lcom/miui/antivirus/activity/SignExceptionActivity$c;->c:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getItemViewGroup(I)I
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public l()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/miui/antivirus/activity/SignExceptionActivity$c;->b:Ljava/util/Set;

    return-object v0
.end method

.method public m(Lcom/miui/antivirus/activity/SignExceptionActivity$b;I)V
    .locals 3
    .param p1    # Lcom/miui/antivirus/activity/SignExceptionActivity$b;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    iget-object v0, p0, Lcom/miui/antivirus/activity/SignExceptionActivity$c;->c:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/miui/antivirus/model/d;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "pkg_icon://"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Lcom/miui/antivirus/model/d;->o()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p1, Lcom/miui/antivirus/activity/SignExceptionActivity$b;->b:Landroid/widget/ImageView;

    sget-object v2, Lx4/o0;->f:Lrh/c;

    invoke-static {v0, v1, v2}, Lx4/o0;->d(Ljava/lang/String;Landroid/widget/ImageView;Lrh/c;)V

    iget-object v0, p1, Lcom/miui/antivirus/activity/SignExceptionActivity$b;->c:Landroid/widget/TextView;

    invoke-virtual {p2}, Lcom/miui/antivirus/model/d;->i()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p1, Lcom/miui/antivirus/activity/SignExceptionActivity$b;->d:Landroid/widget/CheckBox;

    invoke-virtual {v0, p2}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    iget-object p2, p1, Lcom/miui/antivirus/activity/SignExceptionActivity$b;->d:Landroid/widget/CheckBox;

    const/4 v0, 0x0

    invoke-virtual {p2, v0}, Landroid/widget/CompoundButton;->setChecked(Z)V

    iget-object p2, p1, Lcom/miui/antivirus/activity/SignExceptionActivity$b;->d:Landroid/widget/CheckBox;

    new-instance v0, Lcom/miui/antivirus/activity/SignExceptionActivity$c$a;

    invoke-direct {v0, p0}, Lcom/miui/antivirus/activity/SignExceptionActivity$c$a;-><init>(Lcom/miui/antivirus/activity/SignExceptionActivity$c;)V

    invoke-virtual {p2, v0}, Landroid/widget/CompoundButton;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    iget-object p2, p1, Lcom/miui/antivirus/activity/SignExceptionActivity$b;->a:Landroid/view/View;

    new-instance v0, Lcom/miui/antivirus/activity/SignExceptionActivity$c$b;

    invoke-direct {v0, p0, p1}, Lcom/miui/antivirus/activity/SignExceptionActivity$c$b;-><init>(Lcom/miui/antivirus/activity/SignExceptionActivity$c;Lcom/miui/antivirus/activity/SignExceptionActivity$b;)V

    invoke-virtual {p2, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public n(Landroid/view/ViewGroup;I)Lcom/miui/antivirus/activity/SignExceptionActivity$b;
    .locals 2
    .param p1    # Landroid/view/ViewGroup;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    iget-object p2, p0, Lcom/miui/antivirus/activity/SignExceptionActivity$c;->a:Landroid/view/LayoutInflater;

    const v0, 0x7f0e04d0

    const/4 v1, 0x0

    invoke-virtual {p2, v0, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    new-instance p2, Lcom/miui/antivirus/activity/SignExceptionActivity$b;

    const/4 v0, 0x0

    invoke-direct {p2, p1, v0}, Lcom/miui/antivirus/activity/SignExceptionActivity$b;-><init>(Landroid/view/View;Lcom/miui/antivirus/activity/SignExceptionActivity$a;)V

    return-object p2
.end method

.method public o(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/miui/antivirus/model/a;",
            ">;)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/miui/antivirus/activity/SignExceptionActivity$c;->b:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->clear()V

    iget-object v0, p0, Lcom/miui/antivirus/activity/SignExceptionActivity$c;->c:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/miui/antivirus/activity/SignExceptionActivity$c;->c:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    :cond_0
    return-void
.end method

.method public bridge synthetic onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$c0;I)V
    .locals 0
    .param p1    # Landroidx/recyclerview/widget/RecyclerView$c0;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    check-cast p1, Lcom/miui/antivirus/activity/SignExceptionActivity$b;

    invoke-virtual {p0, p1, p2}, Lcom/miui/antivirus/activity/SignExceptionActivity$c;->m(Lcom/miui/antivirus/activity/SignExceptionActivity$b;I)V

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

    invoke-virtual {p0, p1, p2}, Lcom/miui/antivirus/activity/SignExceptionActivity$c;->n(Landroid/view/ViewGroup;I)Lcom/miui/antivirus/activity/SignExceptionActivity$b;

    move-result-object p1

    return-object p1
.end method

.method public setHasStableIds()V
    .locals 0

    return-void
.end method
