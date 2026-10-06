.class Lbi/k$r;
.super Lcom/qti/flp/IMaxPowerAllocatedCallback$Stub;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lbi/k;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "r"
.end annotation


# instance fields
.field a:Lbi/n$a;


# virtual methods
.method public s(D)V
    .locals 1

    iget-object v0, p0, Lbi/k$r;->a:Lbi/n$a;

    if-nez v0, :cond_0

    invoke-static {}, Lbi/k;->B()Ljava/lang/String;

    move-result-object p1

    const-string p2, "mCallback is NULL in MaxPowerAllocatedCallbackWrapper"

    invoke-static {p1, p2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_0
    invoke-interface {v0, p1, p2}, Lbi/n$a;->s(D)V

    :goto_0
    return-void
.end method
