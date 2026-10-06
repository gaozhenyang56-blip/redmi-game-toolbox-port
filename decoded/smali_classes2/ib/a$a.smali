.class Lib/a$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lib/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator<",
        "Lib/a$b;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lib/a$b;Lib/a$b;)I
    .locals 4

    iget v0, p1, Lib/a$b;->q:I

    iget v1, p1, Lib/a$b;->r:I

    add-int/2addr v0, v1

    iget v1, p2, Lib/a$b;->q:I

    iget v2, p2, Lib/a$b;->r:I

    add-int/2addr v1, v2

    const/4 v2, -0x1

    const/4 v3, 0x1

    if-eq v0, v1, :cond_1

    if-le v0, v1, :cond_0

    goto :goto_0

    :cond_0
    move v2, v3

    :goto_0
    return v2

    :cond_1
    iget-boolean v0, p1, Lib/a$b;->z:Z

    iget-boolean v1, p2, Lib/a$b;->z:Z

    if-eq v0, v1, :cond_3

    if-eqz v0, :cond_2

    goto :goto_1

    :cond_2
    move v2, v3

    :goto_1
    return v2

    :cond_3
    iget-boolean p1, p1, Lib/a$b;->A:Z

    iget-boolean p2, p2, Lib/a$b;->A:Z

    if-eq p1, p2, :cond_5

    if-eqz v0, :cond_4

    goto :goto_2

    :cond_4
    move v2, v3

    :goto_2
    return v2

    :cond_5
    const/4 p1, 0x0

    return p1
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 0

    check-cast p1, Lib/a$b;

    check-cast p2, Lib/a$b;

    invoke-virtual {p0, p1, p2}, Lib/a$a;->a(Lib/a$b;Lib/a$b;)I

    move-result p1

    return p1
.end method
