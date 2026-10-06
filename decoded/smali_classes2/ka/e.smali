.class public Lka/e;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lla/a;)Lga/b;
    .locals 4

    new-instance v0, Lga/b;

    invoke-direct {v0}, Lga/b;-><init>()V

    iget-object v1, p1, Lla/a;->b:Ljava/util/LinkedList;

    invoke-virtual {v1}, Ljava/util/LinkedList;->size()I

    move-result v1

    iget-object p1, p1, Lla/a;->b:Ljava/util/LinkedList;

    add-int/lit8 v2, v1, -0x5

    const/4 v3, 0x0

    invoke-static {v3, v2}, Ljava/lang/Math;->max(II)I

    move-result v2

    invoke-virtual {p1, v2, v1}, Ljava/util/AbstractList;->subList(II)Ljava/util/List;

    move-result-object p1

    iput-object p1, v0, Lga/b;->a:Ljava/util/List;

    return-object v0
.end method
