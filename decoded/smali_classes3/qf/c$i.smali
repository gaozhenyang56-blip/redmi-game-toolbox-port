.class Lqf/c$i;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lqf/c;->g0(J)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:J


# direct methods
.method constructor <init>(J)V
    .locals 0

    iput-wide p1, p0, Lqf/c$i;->a:J

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    iget-wide v0, p0, Lqf/c$i;->a:J

    invoke-static {v0, v1}, Lqf/c;->p(J)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-wide v0, p0, Lqf/c$i;->a:J

    const-string v2, "newcheck_result_time1"

    invoke-static {v2, v0, v1}, Lqf/c;->f(Ljava/lang/String;J)V

    :cond_0
    return-void
.end method
