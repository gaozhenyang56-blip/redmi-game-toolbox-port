.class Lmiuix/springback/trigger/a$a$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmiuix/springback/trigger/a$a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator<",
        "Lmiuix/springback/trigger/a$a;",
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
.method public a(Lmiuix/springback/trigger/a$a;Lmiuix/springback/trigger/a$a;)I
    .locals 0

    iget p1, p1, Lmiuix/springback/trigger/a$a;->mEnterPoint:I

    iget p2, p2, Lmiuix/springback/trigger/a$a;->mEnterPoint:I

    invoke-static {p1, p2}, Ljava/lang/Integer;->compare(II)I

    move-result p1

    return p1
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 0

    check-cast p1, Lmiuix/springback/trigger/a$a;

    check-cast p2, Lmiuix/springback/trigger/a$a;

    invoke-virtual {p0, p1, p2}, Lmiuix/springback/trigger/a$a$a;->a(Lmiuix/springback/trigger/a$a;Lmiuix/springback/trigger/a$a;)I

    move-result p1

    return p1
.end method
