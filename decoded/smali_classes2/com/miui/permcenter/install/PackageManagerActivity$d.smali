.class public Lcom/miui/permcenter/install/PackageManagerActivity$d;
.super Lwb/a;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/permcenter/install/PackageManagerActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "d"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/permcenter/install/PackageManagerActivity$d$d;,
        Lcom/miui/permcenter/install/PackageManagerActivity$d$b;,
        Lcom/miui/permcenter/install/PackageManagerActivity$d$a;,
        Lcom/miui/permcenter/install/PackageManagerActivity$d$c;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lwb/a<",
        "Lcom/miui/permcenter/install/PackageManagerActivity$d$d;",
        ">;"
    }
.end annotation


# instance fields
.field private b:Lmiuix/appcompat/app/AppCompatActivity;

.field private c:Lxb/f;

.field private d:Lxb/b;

.field private e:Landroid/widget/CompoundButton$OnCheckedChangeListener;

.field private f:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final g:I


# direct methods
.method public constructor <init>(Lmiuix/appcompat/app/AppCompatActivity;)V
    .locals 1

    invoke-direct {p0}, Lwb/a;-><init>()V

    new-instance v0, Lxb/f;

    invoke-direct {v0}, Lxb/f;-><init>()V

    iput-object v0, p0, Lcom/miui/permcenter/install/PackageManagerActivity$d;->c:Lxb/f;

    const/4 v0, 0x1

    iput v0, p0, Lcom/miui/permcenter/install/PackageManagerActivity$d;->g:I

    iput-object p1, p0, Lcom/miui/permcenter/install/PackageManagerActivity$d;->b:Lmiuix/appcompat/app/AppCompatActivity;

    invoke-static {p1}, Lxb/b;->m(Landroid/content/Context;)Lxb/b;

    move-result-object p1

    iput-object p1, p0, Lcom/miui/permcenter/install/PackageManagerActivity$d;->d:Lxb/b;

    return-void
.end method


# virtual methods
.method public getItemCount()I
    .locals 2

    iget-object v0, p0, Lcom/miui/permcenter/install/PackageManagerActivity$d;->c:Lxb/f;

    invoke-virtual {v0}, Lxb/f;->a()Ljava/util/List;

    move-result-object v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/permcenter/install/PackageManagerActivity$d;->c:Lxb/f;

    invoke-virtual {v0}, Lxb/f;->a()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    add-int/2addr v0, v1

    return v0

    :cond_0
    return v1
.end method

.method public getItemViewGroup(I)I
    .locals 3

    invoke-static {}, Lbl/l;->a()I

    move-result v0

    const/high16 v1, -0x80000000

    const/4 v2, 0x1

    if-gt v0, v2, :cond_0

    return v1

    :cond_0
    iget-object v0, p0, Lcom/miui/permcenter/install/PackageManagerActivity$d;->c:Lxb/f;

    invoke-virtual {v0}, Lxb/f;->a()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_2

    if-nez p1, :cond_1

    return v1

    :cond_1
    const/4 p1, 0x2

    return p1

    :cond_2
    return v1
.end method

.method public getItemViewType(I)I
    .locals 1

    iget-object v0, p0, Lcom/miui/permcenter/install/PackageManagerActivity$d;->c:Lxb/f;

    invoke-virtual {v0}, Lxb/f;->a()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_1

    if-nez p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x2

    return p1

    :cond_1
    const/4 p1, 0x0

    return p1
.end method

.method public l(Lcom/miui/permcenter/install/PackageManagerActivity$d$d;I)V
    .locals 3
    .param p1    # Lcom/miui/permcenter/install/PackageManagerActivity$d$d;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    invoke-super {p0, p1, p2}, Lwb/a;->onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$c0;I)V

    sget-object v0, Lxc/v;->a:Lxc/v$a;

    iget-object v1, p0, Lcom/miui/permcenter/install/PackageManagerActivity$d;->b:Lmiuix/appcompat/app/AppCompatActivity;

    iget-object v2, p1, Landroidx/recyclerview/widget/RecyclerView$c0;->itemView:Landroid/view/View;

    invoke-virtual {v0, v1, v2}, Lxc/v$a;->d(Lmiuix/appcompat/app/AppCompatActivity;Landroid/view/View;)V

    instance-of v0, p1, Lcom/miui/permcenter/install/PackageManagerActivity$d$a;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/permcenter/install/PackageManagerActivity$d;->c:Lxb/f;

    invoke-virtual {v0}, Lxb/f;->a()Ljava/util/List;

    move-result-object v0

    add-int/lit8 p2, p2, -0x1

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lxb/g;

    iget-object v0, p0, Lcom/miui/permcenter/install/PackageManagerActivity$d;->d:Lxb/b;

    invoke-virtual {p2}, Lxb/g;->c()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lxb/b;->l(Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/permcenter/install/PackageManagerActivity$d;->f:Ljava/util/ArrayList;

    invoke-virtual {p1, p2, v0, v1}, Lcom/miui/permcenter/install/PackageManagerActivity$d$d;->b(Lxb/g;Ljava/io/File;Ljava/util/List;)V

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Lcom/miui/permcenter/install/PackageManagerActivity$d$d;->a()V

    :goto_0
    return-void
.end method

.method public m(Landroid/view/ViewGroup;I)Lcom/miui/permcenter/install/PackageManagerActivity$d$d;
    .locals 3
    .param p1    # Landroid/view/ViewGroup;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    const/4 v0, 0x0

    if-eqz p2, :cond_2

    const/4 v1, 0x1

    if-eq p2, v1, :cond_1

    const/4 v1, 0x2

    if-eq p2, v1, :cond_0

    const/4 p1, 0x0

    return-object p1

    :cond_0
    new-instance p2, Lcom/miui/permcenter/install/PackageManagerActivity$d$a;

    iget-object v1, p0, Lcom/miui/permcenter/install/PackageManagerActivity$d;->b:Lmiuix/appcompat/app/AppCompatActivity;

    invoke-static {v1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    const v2, 0x7f0e0430

    invoke-virtual {v1, v2, p1, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    iget-object v0, p0, Lcom/miui/permcenter/install/PackageManagerActivity$d;->e:Landroid/widget/CompoundButton$OnCheckedChangeListener;

    invoke-direct {p2, p1, v0}, Lcom/miui/permcenter/install/PackageManagerActivity$d$a;-><init>(Landroid/view/View;Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    return-object p2

    :cond_1
    new-instance p2, Lcom/miui/permcenter/install/PackageManagerActivity$d$c;

    iget-object v1, p0, Lcom/miui/permcenter/install/PackageManagerActivity$d;->b:Lmiuix/appcompat/app/AppCompatActivity;

    invoke-static {v1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    const v2, 0x7f0e02aa

    invoke-virtual {v1, v2, p1, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    invoke-direct {p2, p1}, Lcom/miui/permcenter/install/PackageManagerActivity$d$c;-><init>(Landroid/view/View;)V

    return-object p2

    :cond_2
    new-instance p2, Lcom/miui/permcenter/install/PackageManagerActivity$d$b;

    iget-object v1, p0, Lcom/miui/permcenter/install/PackageManagerActivity$d;->b:Lmiuix/appcompat/app/AppCompatActivity;

    invoke-static {v1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    const v2, 0x7f0e015b

    invoke-virtual {v1, v2, p1, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    invoke-direct {p2, p1}, Lcom/miui/permcenter/install/PackageManagerActivity$d$b;-><init>(Landroid/view/View;)V

    return-object p2
.end method

.method public n(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/permcenter/install/PackageManagerActivity$d;->e:Landroid/widget/CompoundButton$OnCheckedChangeListener;

    return-void
.end method

.method public o(Lxb/f;Ljava/util/ArrayList;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lxb/f;",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    iput-object p2, p0, Lcom/miui/permcenter/install/PackageManagerActivity$d;->f:Ljava/util/ArrayList;

    iput-object p1, p0, Lcom/miui/permcenter/install/PackageManagerActivity$d;->c:Lxb/f;

    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$h;->notifyDataSetChanged()V

    return-void
.end method

.method public bridge synthetic onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$c0;I)V
    .locals 0
    .param p1    # Landroidx/recyclerview/widget/RecyclerView$c0;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    check-cast p1, Lcom/miui/permcenter/install/PackageManagerActivity$d$d;

    invoke-virtual {p0, p1, p2}, Lcom/miui/permcenter/install/PackageManagerActivity$d;->l(Lcom/miui/permcenter/install/PackageManagerActivity$d$d;I)V

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

    invoke-virtual {p0, p1, p2}, Lcom/miui/permcenter/install/PackageManagerActivity$d;->m(Landroid/view/ViewGroup;I)Lcom/miui/permcenter/install/PackageManagerActivity$d$d;

    move-result-object p1

    return-object p1
.end method
