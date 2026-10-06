.class Lcom/miui/powercenter/autotask/d$c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/powercenter/autotask/d;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "c"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator<",
        "Lcom/miui/powercenter/autotask/d$d;",
        ">;"
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/miui/powercenter/autotask/d$a;)V
    .locals 0

    invoke-direct {p0}, Lcom/miui/powercenter/autotask/d$c;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/miui/powercenter/autotask/d$d;Lcom/miui/powercenter/autotask/d$d;)I
    .locals 4

    iget-wide v0, p1, Lcom/miui/powercenter/autotask/d$d;->a:J

    iget-wide v2, p2, Lcom/miui/powercenter/autotask/d$d;->a:J

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    const/4 p1, 0x0

    return p1

    :cond_0
    iget p2, p2, Lcom/miui/powercenter/autotask/d$d;->b:I

    iget p1, p1, Lcom/miui/powercenter/autotask/d$d;->b:I

    sub-int/2addr p2, p1

    return p2
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 0

    check-cast p1, Lcom/miui/powercenter/autotask/d$d;

    check-cast p2, Lcom/miui/powercenter/autotask/d$d;

    invoke-virtual {p0, p1, p2}, Lcom/miui/powercenter/autotask/d$c;->a(Lcom/miui/powercenter/autotask/d$d;Lcom/miui/powercenter/autotask/d$d;)I

    move-result p1

    return p1
.end method
