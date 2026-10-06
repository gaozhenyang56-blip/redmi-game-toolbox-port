.class public Lzb/e;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final a:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lzb/b;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lzb/e;->a:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public a(ILzb/b;)V
    .locals 2

    if-nez p2, :cond_0

    return-void

    :cond_0
    iget-object p1, p0, Lzb/e;->a:Ljava/util/List;

    invoke-interface {p1, p2}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result p1

    const/4 v0, -0x1

    if-ne p1, v0, :cond_1

    iget-object p1, p0, Lzb/e;->a:Ljava/util/List;

    invoke-interface {p1, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    instance-of v0, p2, Lzb/f;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lzb/e;->a:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lzb/b;

    invoke-virtual {p2}, Lzb/b;->d()J

    move-result-wide v0

    invoke-virtual {p1, v0, v1}, Lzb/b;->b(J)V

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lzb/e;->a:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lzb/b;

    invoke-virtual {p2}, Lzb/b;->c()I

    move-result p2

    invoke-virtual {p1, p2}, Lzb/b;->a(I)V

    :goto_0
    return-void
.end method

.method public b()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lzb/b;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lzb/e;->a:Ljava/util/List;

    return-object v0
.end method
