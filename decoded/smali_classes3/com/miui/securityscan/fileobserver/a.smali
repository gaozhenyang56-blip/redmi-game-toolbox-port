.class public Lcom/miui/securityscan/fileobserver/a;
.super Landroidx/recyclerview/widget/RecyclerView$h;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/securityscan/fileobserver/a$b;,
        Lcom/miui/securityscan/fileobserver/a$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroidx/recyclerview/widget/RecyclerView$h<",
        "Lcom/miui/securityscan/fileobserver/a$a;",
        ">;"
    }
.end annotation


# instance fields
.field private a:Lcom/miui/securityscan/fileobserver/a$b;

.field private b:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lvf/k;",
            ">;"
        }
    .end annotation
.end field

.field private final c:Lrh/c;


# direct methods
.method public constructor <init>(Lcom/miui/securityscan/fileobserver/a$b;Ljava/util/List;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/miui/securityscan/fileobserver/a$b;",
            "Ljava/util/List<",
            "Lvf/k;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$h;-><init>()V

    new-instance v0, Lrh/c$b;

    invoke-direct {v0}, Lrh/c$b;-><init>()V

    new-instance v1, Lvh/b;

    invoke-static {}, Lcom/miui/securitycenter/Application;->A()Lcom/miui/securitycenter/Application;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0718dc

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    invoke-direct {v1, v2}, Lvh/b;-><init>(I)V

    invoke-virtual {v0, v1}, Lrh/c$b;->B(Lvh/a;)Lrh/c$b;

    move-result-object v0

    sget-object v1, Lsh/d;->e:Lsh/d;

    invoke-virtual {v0, v1}, Lrh/c$b;->C(Lsh/d;)Lrh/c$b;

    move-result-object v0

    sget-object v1, Landroid/graphics/Bitmap$Config;->RGB_565:Landroid/graphics/Bitmap$Config;

    invoke-virtual {v0, v1}, Lrh/c$b;->v(Landroid/graphics/Bitmap$Config;)Lrh/c$b;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lrh/c$b;->A(Z)Lrh/c$b;

    move-result-object v0

    invoke-virtual {v0, v1}, Lrh/c$b;->x(Z)Lrh/c$b;

    move-result-object v0

    invoke-virtual {v0}, Lrh/c$b;->w()Lrh/c;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/securityscan/fileobserver/a;->c:Lrh/c;

    iput-object p1, p0, Lcom/miui/securityscan/fileobserver/a;->a:Lcom/miui/securityscan/fileobserver/a$b;

    iput-object p2, p0, Lcom/miui/securityscan/fileobserver/a;->b:Ljava/util/List;

    return-void
.end method

.method static synthetic k(Lcom/miui/securityscan/fileobserver/a;)Lcom/miui/securityscan/fileobserver/a$b;
    .locals 0

    iget-object p0, p0, Lcom/miui/securityscan/fileobserver/a;->a:Lcom/miui/securityscan/fileobserver/a$b;

    return-object p0
.end method


# virtual methods
.method public getItemCount()I
    .locals 1

    iget-object v0, p0, Lcom/miui/securityscan/fileobserver/a;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public l(Lcom/miui/securityscan/fileobserver/a$a;I)V
    .locals 3
    .param p1    # Lcom/miui/securityscan/fileobserver/a$a;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    iget-object v0, p0, Lcom/miui/securityscan/fileobserver/a;->b:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lvf/k;

    if-nez p2, :cond_0

    return-void

    :cond_0
    iget-object p1, p1, Lcom/miui/securityscan/fileobserver/a$a;->a:Landroid/widget/ImageView;

    invoke-static {}, Lx4/o0;->n()Lrh/d;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "file://"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p2, p2, Lvf/k;->b:Ljava/lang/String;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    iget-object v1, p0, Lcom/miui/securityscan/fileobserver/a;->c:Lrh/c;

    invoke-virtual {v0, p2, p1, v1}, Lrh/d;->h(Ljava/lang/String;Landroid/widget/ImageView;Lrh/c;)V

    return-void
.end method

.method public m(Landroid/view/ViewGroup;I)Lcom/miui/securityscan/fileobserver/a$a;
    .locals 2
    .param p1    # Landroid/view/ViewGroup;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-static {p2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p2

    const v0, 0x7f0e011a

    const/4 v1, 0x0

    invoke-virtual {p2, v0, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    new-instance p2, Lcom/miui/securityscan/fileobserver/a$a;

    invoke-direct {p2, p0, p1}, Lcom/miui/securityscan/fileobserver/a$a;-><init>(Lcom/miui/securityscan/fileobserver/a;Landroid/view/View;)V

    return-object p2
.end method

.method public bridge synthetic onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$c0;I)V
    .locals 0
    .param p1    # Landroidx/recyclerview/widget/RecyclerView$c0;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    check-cast p1, Lcom/miui/securityscan/fileobserver/a$a;

    invoke-virtual {p0, p1, p2}, Lcom/miui/securityscan/fileobserver/a;->l(Lcom/miui/securityscan/fileobserver/a$a;I)V

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

    invoke-virtual {p0, p1, p2}, Lcom/miui/securityscan/fileobserver/a;->m(Landroid/view/ViewGroup;I)Lcom/miui/securityscan/fileobserver/a$a;

    move-result-object p1

    return-object p1
.end method
