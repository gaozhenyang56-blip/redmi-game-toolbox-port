.class Lbl/e$b;
.super Lbl/k$e;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lbl/e;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lbl/k$e<",
        "Ljava/io/CharArrayWriter;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lbl/k$e;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic a()Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0}, Lbl/e$b;->e()Ljava/io/CharArrayWriter;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic d(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Ljava/io/CharArrayWriter;

    invoke-virtual {p0, p1}, Lbl/e$b;->f(Ljava/io/CharArrayWriter;)V

    return-void
.end method

.method public e()Ljava/io/CharArrayWriter;
    .locals 1

    new-instance v0, Ljava/io/CharArrayWriter;

    invoke-direct {v0}, Ljava/io/CharArrayWriter;-><init>()V

    return-object v0
.end method

.method public f(Ljava/io/CharArrayWriter;)V
    .locals 0

    invoke-virtual {p1}, Ljava/io/CharArrayWriter;->reset()V

    return-void
.end method
