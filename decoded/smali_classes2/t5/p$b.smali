.class Lt5/p$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lt5/p;->onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$c0;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:I

.field final synthetic b:Lt5/p;


# direct methods
.method constructor <init>(Lt5/p;I)V
    .locals 0

    iput-object p1, p0, Lt5/p$b;->b:Lt5/p;

    iput p2, p0, Lt5/p$b;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    iget-object p1, p0, Lt5/p$b;->b:Lt5/p;

    invoke-static {p1}, Lt5/p;->k(Lt5/p;)Lt5/p$c;

    move-result-object p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lt5/p$b;->b:Lt5/p;

    invoke-static {p1}, Lt5/p;->k(Lt5/p;)Lt5/p$c;

    move-result-object p1

    iget v0, p0, Lt5/p$b;->a:I

    invoke-interface {p1, v0}, Lt5/p$c;->onItemClick(I)V

    :cond_0
    return-void
.end method
