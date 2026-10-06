.class public Lcom/miui/hybrid/accessory/a/g/e;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static a(Lcom/miui/hybrid/accessory/a/g/a;[B)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Lcom/miui/hybrid/accessory/a/g/a<",
            "TT;*>;>(TT;[B)V"
        }
    .end annotation

    if-eqz p1, :cond_0

    new-instance v0, Lcom/miui/hybrid/accessory/a/g/c;

    new-instance v1, Lcom/miui/hybrid/accessory/a/g/b/k$a;

    array-length v2, p1

    const/4 v3, 0x1

    invoke-direct {v1, v3, v3, v2}, Lcom/miui/hybrid/accessory/a/g/b/k$a;-><init>(ZZI)V

    invoke-direct {v0, v1}, Lcom/miui/hybrid/accessory/a/g/c;-><init>(Lcom/miui/hybrid/accessory/a/g/b/g;)V

    invoke-virtual {v0, p0, p1}, Lcom/miui/hybrid/accessory/a/g/c;->a(Lcom/miui/hybrid/accessory/a/g/a;[B)V

    return-void

    :cond_0
    new-instance p0, Lcom/miui/hybrid/accessory/a/g/d;

    const-string p1, "the message byte is empty."

    invoke-direct {p0, p1}, Lcom/miui/hybrid/accessory/a/g/d;-><init>(Ljava/lang/String;)V

    throw p0
.end method
