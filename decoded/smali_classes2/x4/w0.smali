.class public final synthetic Lx4/w0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/concurrent/Callable;


# instance fields
.field public final synthetic a:[B

.field public final synthetic b:Z


# direct methods
.method public synthetic constructor <init>([BZ)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lx4/w0;->a:[B

    iput-boolean p2, p0, Lx4/w0;->b:Z

    return-void
.end method


# virtual methods
.method public final call()Ljava/lang/Object;
    .locals 2

    iget-object v0, p0, Lx4/w0;->a:[B

    iget-boolean v1, p0, Lx4/w0;->b:Z

    invoke-static {v0, v1}, Lx4/z0;->b([BZ)[B

    move-result-object v0

    return-object v0
.end method
