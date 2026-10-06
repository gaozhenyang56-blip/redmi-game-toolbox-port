.class public Lnj/h;
.super Lnj/g;
.source "SourceFile"


# instance fields
.field a:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "[I>;"
        }
    .end annotation
.end field

.field b:I

.field c:I

.field d:I


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lnj/g;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lnj/h;->a:Ljava/util/List;

    const/4 v0, 0x0

    iput v0, p0, Lnj/h;->b:I

    iput v0, p0, Lnj/h;->c:I

    iput v0, p0, Lnj/h;->d:I

    return-void
.end method

.method private e(Lkj/b;)I
    .locals 0

    invoke-virtual {p1}, Lkj/b;->d()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p1

    return p1
.end method


# virtual methods
.method public b(Lkj/b;[II)Z
    .locals 1

    invoke-direct {p0, p1}, Lnj/h;->e(Lkj/b;)I

    move-result p1

    iget v0, p0, Lnj/h;->d:I

    if-lt p1, v0, :cond_0

    aget p1, p2, p3

    const/4 v0, 0x1

    add-int/2addr p1, v0

    aput p1, p2, p3

    return v0

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public d(Ljava/io/DataInputStream;)V
    .locals 0

    invoke-virtual {p1}, Ljava/io/DataInputStream;->readInt()I

    move-result p1

    iput p1, p0, Lnj/h;->d:I

    return-void
.end method
