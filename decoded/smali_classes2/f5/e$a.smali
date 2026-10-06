.class Lf5/e$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/widget/SectionIndexer;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lf5/e;->o(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lf5/e;


# direct methods
.method constructor <init>(Lf5/e;)V
    .locals 0

    iput-object p1, p0, Lf5/e$a;->a:Lf5/e;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getPositionForSection(I)I
    .locals 1

    iget-object v0, p0, Lf5/e$a;->a:Lf5/e;

    invoke-static {v0}, Lf5/e;->a(Lf5/e;)[Ljava/lang/String;

    move-result-object v0

    aget-object p1, v0, p1

    iget-object v0, p0, Lf5/e$a;->a:Lf5/e;

    invoke-static {v0, p1}, Lf5/e;->b(Lf5/e;Ljava/lang/String;)I

    move-result p1

    return p1
.end method

.method public getSectionForPosition(I)I
    .locals 4

    iget-object v0, p0, Lf5/e$a;->a:Lf5/e;

    invoke-static {v0}, Lf5/e;->c(Lf5/e;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    const/4 v1, -0x1

    if-eqz v0, :cond_0

    return v1

    :cond_0
    iget-object v0, p0, Lf5/e$a;->a:Lf5/e;

    invoke-static {v0}, Lf5/e;->c(Lf5/e;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lg5/c;

    invoke-virtual {p1}, Lg5/c;->d()Ljava/lang/String;

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Ljava/lang/String;->charAt(I)C

    move-result p1

    invoke-static {p1}, Ljava/lang/Character;->toLowerCase(C)C

    move-result p1

    :goto_0
    iget-object v2, p0, Lf5/e$a;->a:Lf5/e;

    invoke-static {v2}, Lf5/e;->a(Lf5/e;)[Ljava/lang/String;

    move-result-object v2

    array-length v2, v2

    if-ge v0, v2, :cond_3

    iget-object v2, p0, Lf5/e$a;->a:Lf5/e;

    invoke-static {v2, p1}, Lf5/e;->d(Lf5/e;C)Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-static {p1}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lf5/e$a;->a:Lf5/e;

    invoke-static {v3}, Lf5/e;->a(Lf5/e;)[Ljava/lang/String;

    move-result-object v3

    aget-object v3, v3, v0

    invoke-virtual {v3}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    goto :goto_1

    :cond_1
    iget-object v2, p0, Lf5/e$a;->a:Lf5/e;

    invoke-static {v2}, Lf5/e;->a(Lf5/e;)[Ljava/lang/String;

    move-result-object v2

    aget-object v2, v2, v0

    const-string v3, "#"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    goto :goto_1

    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_3
    move v0, v1

    :goto_1
    if-eq v0, v1, :cond_4

    iget-object p1, p0, Lf5/e$a;->a:Lf5/e;

    invoke-static {p1, v0}, Lf5/e;->f(Lf5/e;I)I

    :cond_4
    iget-object p1, p0, Lf5/e$a;->a:Lf5/e;

    invoke-static {p1}, Lf5/e;->e(Lf5/e;)I

    move-result p1

    return p1
.end method

.method public getSections()[Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lf5/e$a;->a:Lf5/e;

    invoke-static {v0}, Lf5/e;->a(Lf5/e;)[Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
