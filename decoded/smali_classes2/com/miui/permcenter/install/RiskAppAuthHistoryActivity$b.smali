.class Lcom/miui/permcenter/install/RiskAppAuthHistoryActivity$b;
.super Landroidx/recyclerview/widget/RecyclerView$h;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/permcenter/install/RiskAppAuthHistoryActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "b"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/permcenter/install/RiskAppAuthHistoryActivity$b$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroidx/recyclerview/widget/RecyclerView$h<",
        "Lcom/miui/permcenter/install/RiskAppAuthHistoryActivity$b$a;",
        ">;"
    }
.end annotation


# instance fields
.field private a:Landroid/content/Context;

.field private b:Lxb/c;


# direct methods
.method constructor <init>(Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$h;-><init>()V

    new-instance v0, Lxb/c;

    invoke-direct {v0}, Lxb/c;-><init>()V

    iput-object v0, p0, Lcom/miui/permcenter/install/RiskAppAuthHistoryActivity$b;->b:Lxb/c;

    iput-object p1, p0, Lcom/miui/permcenter/install/RiskAppAuthHistoryActivity$b;->a:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public getItemCount()I
    .locals 1

    iget-object v0, p0, Lcom/miui/permcenter/install/RiskAppAuthHistoryActivity$b;->b:Lxb/c;

    invoke-virtual {v0}, Lxb/c;->a()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/permcenter/install/RiskAppAuthHistoryActivity$b;->b:Lxb/c;

    invoke-virtual {v0}, Lxb/c;->a()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public k(Lcom/miui/permcenter/install/RiskAppAuthHistoryActivity$b$a;I)V
    .locals 5
    .param p1    # Lcom/miui/permcenter/install/RiskAppAuthHistoryActivity$b$a;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    iget-object v0, p0, Lcom/miui/permcenter/install/RiskAppAuthHistoryActivity$b;->b:Lxb/c;

    invoke-virtual {v0}, Lxb/c;->a()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lxb/d;

    iget-object v0, p1, Lcom/miui/permcenter/install/RiskAppAuthHistoryActivity$b$a;->a:Landroid/widget/TextView;

    invoke-virtual {p2}, Lxb/d;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v1, "yyyy-MM-dd HH:mm:ss"

    invoke-direct {v0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2}, Lxb/d;->c()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "|"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v2, Ljava/util/Date;

    invoke-virtual {p2}, Lxb/d;->b()J

    move-result-wide v3

    invoke-direct {v2, v3, v4}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v0, v2}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    iget-object p1, p1, Lcom/miui/permcenter/install/RiskAppAuthHistoryActivity$b$a;->b:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/miui/permcenter/install/RiskAppAuthHistoryActivity$b;->a:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p2, v1, v2

    const p2, 0x7f1215a2

    invoke-virtual {v0, p2, v1}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public l(Landroid/view/ViewGroup;I)Lcom/miui/permcenter/install/RiskAppAuthHistoryActivity$b$a;
    .locals 3
    .param p1    # Landroid/view/ViewGroup;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    new-instance p2, Lcom/miui/permcenter/install/RiskAppAuthHistoryActivity$b$a;

    iget-object v0, p0, Lcom/miui/permcenter/install/RiskAppAuthHistoryActivity$b;->a:Landroid/content/Context;

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f0e0432

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    invoke-direct {p2, p1}, Lcom/miui/permcenter/install/RiskAppAuthHistoryActivity$b$a;-><init>(Landroid/view/View;)V

    return-object p2
.end method

.method public m(Lxb/c;)V
    .locals 1

    iget-object v0, p0, Lcom/miui/permcenter/install/RiskAppAuthHistoryActivity$b;->b:Lxb/c;

    invoke-virtual {v0}, Lxb/c;->a()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/permcenter/install/RiskAppAuthHistoryActivity$b;->b:Lxb/c;

    invoke-virtual {v0}, Lxb/c;->a()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->clear()V

    :cond_0
    iput-object p1, p0, Lcom/miui/permcenter/install/RiskAppAuthHistoryActivity$b;->b:Lxb/c;

    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$h;->notifyDataSetChanged()V

    return-void
.end method

.method public bridge synthetic onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$c0;I)V
    .locals 0
    .param p1    # Landroidx/recyclerview/widget/RecyclerView$c0;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    check-cast p1, Lcom/miui/permcenter/install/RiskAppAuthHistoryActivity$b$a;

    invoke-virtual {p0, p1, p2}, Lcom/miui/permcenter/install/RiskAppAuthHistoryActivity$b;->k(Lcom/miui/permcenter/install/RiskAppAuthHistoryActivity$b$a;I)V

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

    invoke-virtual {p0, p1, p2}, Lcom/miui/permcenter/install/RiskAppAuthHistoryActivity$b;->l(Landroid/view/ViewGroup;I)Lcom/miui/permcenter/install/RiskAppAuthHistoryActivity$b$a;

    move-result-object p1

    return-object p1
.end method
