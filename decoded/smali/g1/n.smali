.class public Lg1/n;
.super Lg1/f;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lg1/f<",
        "Li1/b;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lq1/a<",
            "Li1/b;",
            ">;>;)V"
        }
    .end annotation

    invoke-direct {p0, p1}, Lg1/f;-><init>(Ljava/util/List;)V

    return-void
.end method


# virtual methods
.method bridge synthetic i(Lq1/a;F)Ljava/lang/Object;
    .locals 0

    invoke-virtual {p0, p1, p2}, Lg1/n;->o(Lq1/a;F)Li1/b;

    move-result-object p1

    return-object p1
.end method

.method o(Lq1/a;F)Li1/b;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lq1/a<",
            "Li1/b;",
            ">;F)",
            "Li1/b;"
        }
    .end annotation

    iget-object p1, p1, Lq1/a;->b:Ljava/lang/Object;

    check-cast p1, Li1/b;

    return-object p1
.end method
