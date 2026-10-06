.class final Lcn/b$a;
.super Lin/g;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "a"
.end annotation


# instance fields
.field b:J


# direct methods
.method constructor <init>(Lin/s;)V
    .locals 0

    invoke-direct {p0, p1}, Lin/g;-><init>(Lin/s;)V

    return-void
.end method


# virtual methods
.method public K(Lin/c;J)V
    .locals 2

    invoke-super {p0, p1, p2, p3}, Lin/g;->K(Lin/c;J)V

    iget-wide v0, p0, Lcn/b$a;->b:J

    add-long/2addr v0, p2

    iput-wide v0, p0, Lcn/b$a;->b:J

    return-void
.end method
