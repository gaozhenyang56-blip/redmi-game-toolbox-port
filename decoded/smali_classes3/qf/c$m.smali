.class Lqf/c$m;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lqf/c;->T(J)V
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

    iput-wide p1, p0, Lqf/c$m;->a:J

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    iget-wide v0, p0, Lqf/c$m;->a:J

    const-string v2, "newcheck_finish_score"

    invoke-static {v2, v0, v1}, Lqf/c;->f(Ljava/lang/String;J)V

    return-void
.end method
