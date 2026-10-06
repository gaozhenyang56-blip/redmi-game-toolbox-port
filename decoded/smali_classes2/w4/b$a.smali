.class Lw4/b$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lw4/b;->E(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator<",
        "Lw4/c;",
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
.method public a(Lw4/c;Lw4/c;)I
    .locals 2

    invoke-virtual {p1}, Lw4/c;->b()I

    move-result v0

    invoke-virtual {p2}, Lw4/c;->b()I

    move-result v1

    if-le v0, v1, :cond_0

    const/4 p1, -0x1

    return p1

    :cond_0
    invoke-virtual {p1}, Lw4/c;->b()I

    move-result v0

    invoke-virtual {p2}, Lw4/c;->b()I

    move-result v1

    if-ge v0, v1, :cond_1

    const/4 p1, 0x1

    return p1

    :cond_1
    invoke-virtual {p1}, Lw4/c;->d()J

    move-result-wide v0

    invoke-virtual {p2}, Lw4/c;->d()J

    move-result-wide p1

    sub-long/2addr v0, p1

    long-to-int p1, v0

    return p1
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 0

    check-cast p1, Lw4/c;

    check-cast p2, Lw4/c;

    invoke-virtual {p0, p1, p2}, Lw4/b$a;->a(Lw4/c;Lw4/c;)I

    move-result p1

    return p1
.end method
