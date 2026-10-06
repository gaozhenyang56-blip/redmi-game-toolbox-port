.class public Lg1/d;
.super Lg1/f;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lg1/f<",
        "Lk1/c;",
        ">;"
    }
.end annotation


# instance fields
.field private final i:Lk1/c;


# direct methods
.method public constructor <init>(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lq1/a<",
            "Lk1/c;",
            ">;>;)V"
        }
    .end annotation

    invoke-direct {p0, p1}, Lg1/f;-><init>(Ljava/util/List;)V

    const/4 v0, 0x0

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lq1/a;

    iget-object p1, p1, Lq1/a;->b:Ljava/lang/Object;

    check-cast p1, Lk1/c;

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Lk1/c;->c()I

    move-result v0

    :goto_0
    new-instance p1, Lk1/c;

    new-array v1, v0, [F

    new-array v0, v0, [I

    invoke-direct {p1, v1, v0}, Lk1/c;-><init>([F[I)V

    iput-object p1, p0, Lg1/d;->i:Lk1/c;

    return-void
.end method


# virtual methods
.method bridge synthetic i(Lq1/a;F)Ljava/lang/Object;
    .locals 0

    invoke-virtual {p0, p1, p2}, Lg1/d;->o(Lq1/a;F)Lk1/c;

    move-result-object p1

    return-object p1
.end method

.method o(Lq1/a;F)Lk1/c;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lq1/a<",
            "Lk1/c;",
            ">;F)",
            "Lk1/c;"
        }
    .end annotation

    iget-object v0, p0, Lg1/d;->i:Lk1/c;

    iget-object v1, p1, Lq1/a;->b:Ljava/lang/Object;

    check-cast v1, Lk1/c;

    iget-object p1, p1, Lq1/a;->c:Ljava/lang/Object;

    check-cast p1, Lk1/c;

    invoke-virtual {v0, v1, p1, p2}, Lk1/c;->d(Lk1/c;Lk1/c;F)V

    iget-object p1, p0, Lg1/d;->i:Lk1/c;

    return-object p1
.end method
