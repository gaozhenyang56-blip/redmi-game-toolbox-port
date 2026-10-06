.class public Lq6/c;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field a:Lm/h;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lm/h<",
            "Lq6/b<",
            "TT;>;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lm/h;

    invoke-direct {v0}, Lm/h;-><init>()V

    iput-object v0, p0, Lq6/c;->a:Lm/h;

    return-void
.end method


# virtual methods
.method public a(ILq6/b;)Lq6/c;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Lq6/b<",
            "TT;>;)",
            "Lq6/c<",
            "TT;>;"
        }
    .end annotation

    iget-object v0, p0, Lq6/c;->a:Lm/h;

    invoke-virtual {v0, p1}, Lm/h;->e(I)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lq6/c;->a:Lm/h;

    invoke-virtual {v0, p1, p2}, Lm/h;->j(ILjava/lang/Object;)V

    return-object p0

    :cond_0
    new-instance p2, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "An ItemViewType is already registered for the viewType = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ". Already registered ItemViewType is "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lq6/c;->a:Lm/h;

    invoke-virtual {v1, p1}, Lm/h;->e(I)Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p2
.end method

.method public b(Lq6/b;)Lq6/c;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lq6/b<",
            "TT;>;)",
            "Lq6/c<",
            "TT;>;"
        }
    .end annotation

    iget-object v0, p0, Lq6/c;->a:Lm/h;

    invoke-virtual {v0}, Lm/h;->l()I

    move-result v0

    if-eqz p1, :cond_0

    iget-object v1, p0, Lq6/c;->a:Lm/h;

    invoke-virtual {v1, v0, p1}, Lm/h;->j(ILjava/lang/Object;)V

    :cond_0
    return-object p0
.end method

.method public c(Lq6/i;Ljava/lang/Object;I)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lq6/i;",
            "TT;I)V"
        }
    .end annotation

    iget-object v0, p0, Lq6/c;->a:Lm/h;

    invoke-virtual {v0}, Lm/h;->l()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    iget-object v2, p0, Lq6/c;->a:Lm/h;

    invoke-virtual {v2, v1}, Lm/h;->m(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lq6/b;

    invoke-interface {v2, p2, p3}, Lq6/b;->d(Ljava/lang/Object;I)Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2, p1, p2, p3}, Lq6/b;->c(Lq6/i;Ljava/lang/Object;I)V

    return-void

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "No ItemViewTypeManager added that matches position="

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, " in data source"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "ItemViewTypeManager"

    invoke-static {p2, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public d(Ljava/lang/Object;I)I
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;I)I"
        }
    .end annotation

    iget-object v0, p0, Lq6/c;->a:Lm/h;

    invoke-virtual {v0}, Lm/h;->l()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_0
    if-ltz v0, :cond_1

    iget-object v1, p0, Lq6/c;->a:Lm/h;

    invoke-virtual {v1, v0}, Lm/h;->m(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lq6/b;

    invoke-interface {v1, p1, p2}, Lq6/b;->d(Ljava/lang/Object;I)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object p1, p0, Lq6/c;->a:Lm/h;

    invoke-virtual {p1, v0}, Lm/h;->i(I)I

    move-result p1

    return p1

    :cond_0
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_1
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "getItemViewType: No ItemViewType added that matches position="

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, " in data source"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "ItemViewTypeManager"

    invoke-static {p2, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p1, 0x0

    return p1
.end method

.method public e(I)Lq6/b;
    .locals 1

    iget-object v0, p0, Lq6/c;->a:Lm/h;

    invoke-virtual {v0, p1}, Lm/h;->e(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lq6/b;

    return-object p1
.end method

.method public f()I
    .locals 1

    iget-object v0, p0, Lq6/c;->a:Lm/h;

    invoke-virtual {v0}, Lm/h;->l()I

    move-result v0

    return v0
.end method
