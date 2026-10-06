.class public Lnj/i;
.super Lnj/g;
.source "SourceFile"


# instance fields
.field private a:[[I

.field private b:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Character;",
            ">;"
        }
    .end annotation
.end field

.field c:I

.field d:I


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lnj/g;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lnj/i;->a:[[I

    iput-object v0, p0, Lnj/i;->b:Ljava/util/List;

    const/4 v0, 0x0

    iput v0, p0, Lnj/i;->c:I

    iput v0, p0, Lnj/i;->d:I

    return-void
.end method


# virtual methods
.method protected a()I
    .locals 1

    iget-object v0, p0, Lnj/i;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public b(Lkj/b;[II)Z
    .locals 5

    invoke-virtual {p1}, Lkj/b;->d()Ljava/lang/String;

    move-result-object p1

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    iget-object v2, p0, Lnj/i;->b:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-lt v0, v2, :cond_0

    return v1

    :cond_0
    iget-object v2, p0, Lnj/i;->b:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Character;

    invoke-virtual {v2}, Ljava/lang/Character;->charValue()C

    move-result v2

    invoke-virtual {p1, v2}, Ljava/lang/String;->indexOf(I)I

    move-result v2

    const/4 v3, -0x1

    const/4 v4, 0x1

    if-eq v2, v3, :cond_1

    add-int v1, p3, v0

    aget v2, p2, v1

    add-int/2addr v2, v4

    aput v2, p2, v1

    move v1, v4

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public d(Ljava/io/DataInputStream;)V
    .locals 4

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lnj/i;->b:Ljava/util/List;

    invoke-virtual {p1}, Ljava/io/DataInputStream;->readInt()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-lt v1, v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p1}, Ljava/io/DataInputStream;->readChar()C

    move-result v2

    iget-object v3, p0, Lnj/i;->b:Ljava/util/List;

    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    invoke-interface {v3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method
