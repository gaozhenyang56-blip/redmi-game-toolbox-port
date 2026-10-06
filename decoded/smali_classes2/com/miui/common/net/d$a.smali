.class Lcom/miui/common/net/d$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/common/net/d;->b(Ljava/util/List;Ljava/lang/String;)Ljava/lang/String;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator<",
        "Lcom/miui/common/net/b;",
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
.method public a(Lcom/miui/common/net/b;Lcom/miui/common/net/b;)I
    .locals 0

    invoke-virtual {p1}, Lcom/miui/common/net/b;->a()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2}, Lcom/miui/common/net/b;->a()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result p1

    return p1
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 0

    check-cast p1, Lcom/miui/common/net/b;

    check-cast p2, Lcom/miui/common/net/b;

    invoke-virtual {p0, p1, p2}, Lcom/miui/common/net/d$a;->a(Lcom/miui/common/net/b;Lcom/miui/common/net/b;)I

    move-result p1

    return p1
.end method
