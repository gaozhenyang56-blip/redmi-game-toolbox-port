.class Lbi/k$q;
.super Lcom/qti/flp/ILocationCallback$Stub;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lbi/k;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "q"
.end annotation


# instance fields
.field a:Lbi/b$a;


# virtual methods
.method public o([Landroid/location/Location;)V
    .locals 1

    iget-object v0, p0, Lbi/k$q;->a:Lbi/b$a;

    if-nez v0, :cond_0

    invoke-static {}, Lbi/k;->B()Ljava/lang/String;

    move-result-object p1

    const-string v0, "mCallback is NULL in LocationCallbackWrapper"

    invoke-static {p1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_0
    invoke-static {p1}, Lci/a;->e([Landroid/location/Location;)Lci/d;

    iget-object v0, p0, Lbi/k$q;->a:Lbi/b$a;

    invoke-interface {v0, p1}, Lbi/b$a;->o([Landroid/location/Location;)V

    :goto_0
    return-void
.end method
