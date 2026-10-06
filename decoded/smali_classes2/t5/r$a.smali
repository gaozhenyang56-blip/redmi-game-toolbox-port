.class Lt5/r$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lt5/r$c;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lt5/r;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lt5/r;


# direct methods
.method constructor <init>(Lt5/r;)V
    .locals 0

    iput-object p1, p0, Lt5/r$a;->a:Lt5/r;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public t(IZ)V
    .locals 1

    iget-object v0, p0, Lt5/r$a;->a:Lt5/r;

    invoke-static {v0, p2}, Lt5/r;->a(Lt5/r;Z)Z

    iget-object v0, p0, Lt5/r$a;->a:Lt5/r;

    invoke-static {v0}, Lt5/r;->b(Lt5/r;)Lt5/r$c;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lt5/r$a;->a:Lt5/r;

    invoke-static {v0}, Lt5/r;->b(Lt5/r;)Lt5/r$c;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Lt5/r$c;->t(IZ)V

    :cond_0
    iget-object p1, p0, Lt5/r$a;->a:Lt5/r;

    invoke-static {p1}, Lt5/r;->c(Lt5/r;)V

    iget-object p1, p0, Lt5/r$a;->a:Lt5/r;

    invoke-virtual {p1}, Lt5/r;->notifyDataSetChanged()V

    return-void
.end method

.method public x(I)V
    .locals 1

    iget-object v0, p0, Lt5/r$a;->a:Lt5/r;

    invoke-static {v0}, Lt5/r;->c(Lt5/r;)V

    iget-object v0, p0, Lt5/r$a;->a:Lt5/r;

    invoke-static {v0}, Lt5/r;->b(Lt5/r;)Lt5/r$c;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lt5/r$a;->a:Lt5/r;

    invoke-static {v0}, Lt5/r;->b(Lt5/r;)Lt5/r$c;

    move-result-object v0

    invoke-interface {v0, p1}, Lt5/r$c;->x(I)V

    :cond_0
    return-void
.end method
