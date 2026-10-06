.class Lcom/miui/powercenter/autotask/c$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/powercenter/autotask/c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "b"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Comparable<",
        "Lcom/miui/powercenter/autotask/c$b;",
        ">;"
    }
.end annotation


# instance fields
.field a:J

.field b:J

.field c:Z


# direct methods
.method private constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/miui/powercenter/autotask/c$b;->c:Z

    return-void
.end method

.method synthetic constructor <init>(Lcom/miui/powercenter/autotask/c$a;)V
    .locals 0

    invoke-direct {p0}, Lcom/miui/powercenter/autotask/c$b;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/miui/powercenter/autotask/c$b;)I
    .locals 4

    iget-wide v0, p0, Lcom/miui/powercenter/autotask/c$b;->b:J

    iget-wide v2, p1, Lcom/miui/powercenter/autotask/c$b;->b:J

    sub-long/2addr v0, v2

    long-to-int p1, v0

    return p1
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 0

    check-cast p1, Lcom/miui/powercenter/autotask/c$b;

    invoke-virtual {p0, p1}, Lcom/miui/powercenter/autotask/c$b;->a(Lcom/miui/powercenter/autotask/c$b;)I

    move-result p1

    return p1
.end method
