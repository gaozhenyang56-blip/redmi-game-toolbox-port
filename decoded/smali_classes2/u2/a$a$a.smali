.class Lu2/a$a$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lu2/a$a;->onChange(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lu2/a$a;


# direct methods
.method constructor <init>(Lu2/a$a;)V
    .locals 0

    iput-object p1, p0, Lu2/a$a$a;->a:Lu2/a$a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lu2/a$a$a;->a:Lu2/a$a;

    iget-object v0, v0, Lu2/a$a;->a:Lu2/a;

    invoke-static {v0}, Lu2/a;->b(Lu2/a;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v0

    iget-object v1, p0, Lu2/a$a$a;->a:Lu2/a$a;

    iget-object v1, v1, Lu2/a$a;->a:Lu2/a;

    invoke-static {v1}, Lu2/a;->a(Lu2/a;)Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    return-void
.end method
