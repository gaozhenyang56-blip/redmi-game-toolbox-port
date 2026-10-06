.class Lu2/a$a;
.super Landroid/database/ContentObserver;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lu2/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lu2/a;


# direct methods
.method constructor <init>(Lu2/a;Landroid/os/Handler;)V
    .locals 0

    iput-object p1, p0, Lu2/a$a;->a:Lu2/a;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 2

    new-instance p1, Lu2/a$a$a;

    invoke-direct {p1, p0}, Lu2/a$a$a;-><init>(Lu2/a$a;)V

    invoke-static {p1}, Lx4/f;->b(Ljava/lang/Runnable;)V

    iget-object p1, p0, Lu2/a$a;->a:Lu2/a;

    invoke-static {p1}, Lu2/a;->c(Lu2/a;)Ljava/util/concurrent/atomic/AtomicLong;

    move-result-object p1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-virtual {p1, v0, v1}, Ljava/util/concurrent/atomic/AtomicLong;->set(J)V

    return-void
.end method
