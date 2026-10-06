.class public abstract Lw2/f$d;
.super Ljava/io/OutputStream;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lw2/f;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x404
    name = "d"
.end annotation


# instance fields
.field protected a:Ljava/io/OutputStream;

.field final synthetic b:Lw2/f;


# direct methods
.method public constructor <init>(Lw2/f;Ljava/io/OutputStream;)V
    .locals 0

    iput-object p1, p0, Lw2/f$d;->b:Lw2/f;

    invoke-direct {p0}, Ljava/io/OutputStream;-><init>()V

    if-eqz p2, :cond_0

    iput-object p2, p0, Lw2/f$d;->a:Ljava/io/OutputStream;

    return-void

    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "outputstream is null"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method


# virtual methods
.method public abstract c()V
.end method

.method public close()V
    .locals 1

    iget-object v0, p0, Lw2/f$d;->a:Ljava/io/OutputStream;

    invoke-virtual {v0}, Ljava/io/OutputStream;->close()V

    return-void
.end method

.method public flush()V
    .locals 1

    iget-object v0, p0, Lw2/f$d;->a:Ljava/io/OutputStream;

    invoke-virtual {v0}, Ljava/io/OutputStream;->flush()V

    return-void
.end method

.method public write(I)V
    .locals 1

    iget-object v0, p0, Lw2/f$d;->a:Ljava/io/OutputStream;

    invoke-virtual {v0, p1}, Ljava/io/OutputStream;->write(I)V

    return-void
.end method

.method public write([B)V
    .locals 1

    iget-object v0, p0, Lw2/f$d;->a:Ljava/io/OutputStream;

    invoke-virtual {v0, p1}, Ljava/io/OutputStream;->write([B)V

    return-void
.end method

.method public write([BII)V
    .locals 1

    iget-object v0, p0, Lw2/f$d;->a:Ljava/io/OutputStream;

    invoke-virtual {v0, p1, p2, p3}, Ljava/io/OutputStream;->write([BII)V

    return-void
.end method
