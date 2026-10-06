.class Lzi/j3$b;
.super Lzi/k$b;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lzi/j3;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "b"
.end annotation


# instance fields
.field a:J

.field final synthetic b:Lzi/j3;


# direct methods
.method constructor <init>(Lzi/j3;)V
    .locals 2

    iput-object p1, p0, Lzi/j3$b;->b:Lzi/j3;

    invoke-direct {p0}, Lzi/k$b;-><init>()V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lzi/j3$b;->a:J

    return-void
.end method


# virtual methods
.method public b()V
    .locals 0

    return-void
.end method

.method public d()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method final e()Z
    .locals 4

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lzi/j3$b;->a:J

    sub-long/2addr v0, v2

    const-wide/32 v2, 0xa4cb800

    cmp-long v0, v0, v2

    if-lez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method
