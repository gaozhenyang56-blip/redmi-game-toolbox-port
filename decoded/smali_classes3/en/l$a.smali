.class Len/l$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Len/l;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Len/l;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(ILen/b;)V
    .locals 0

    return-void
.end method

.method public b(ILin/e;IZ)Z
    .locals 0

    int-to-long p3, p3

    invoke-interface {p2, p3, p4}, Lin/e;->skip(J)V

    const/4 p1, 0x1

    return p1
.end method

.method public c(ILjava/util/List;)Z
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Len/c;",
            ">;)Z"
        }
    .end annotation

    const/4 p1, 0x1

    return p1
.end method

.method public d(ILjava/util/List;Z)Z
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Len/c;",
            ">;Z)Z"
        }
    .end annotation

    const/4 p1, 0x1

    return p1
.end method
