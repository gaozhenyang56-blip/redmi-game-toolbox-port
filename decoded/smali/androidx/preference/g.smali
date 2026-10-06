.class public Landroidx/preference/g;
.super Landroidx/recyclerview/widget/u;
.source "SourceFile"


# annotations
.annotation build Landroidx/annotation/RestrictTo;
    value = {
        .enum Landroidx/annotation/RestrictTo$a;->c:Landroidx/annotation/RestrictTo$a;
    }
.end annotation

.annotation runtime Ljava/lang/Deprecated;
.end annotation


# instance fields
.field final a:Landroidx/recyclerview/widget/RecyclerView;

.field final b:Landroidx/core/view/a;

.field final c:Landroidx/core/view/a;


# direct methods
.method public constructor <init>(Landroidx/recyclerview/widget/RecyclerView;)V
    .locals 1
    .param p1    # Landroidx/recyclerview/widget/RecyclerView;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    invoke-direct {p0, p1}, Landroidx/recyclerview/widget/u;-><init>(Landroidx/recyclerview/widget/RecyclerView;)V

    invoke-super {p0}, Landroidx/recyclerview/widget/u;->getItemDelegate()Landroidx/core/view/a;

    move-result-object v0

    iput-object v0, p0, Landroidx/preference/g;->b:Landroidx/core/view/a;

    new-instance v0, Landroidx/preference/g$a;

    invoke-direct {v0, p0}, Landroidx/preference/g$a;-><init>(Landroidx/preference/g;)V

    iput-object v0, p0, Landroidx/preference/g;->c:Landroidx/core/view/a;

    iput-object p1, p0, Landroidx/preference/g;->a:Landroidx/recyclerview/widget/RecyclerView;

    return-void
.end method


# virtual methods
.method public getItemDelegate()Landroidx/core/view/a;
    .locals 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    iget-object v0, p0, Landroidx/preference/g;->c:Landroidx/core/view/a;

    return-object v0
.end method
