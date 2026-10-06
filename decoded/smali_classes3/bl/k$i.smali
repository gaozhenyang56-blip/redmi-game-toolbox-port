.class public Lbl/k$i;
.super Lbl/k$b;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lbl/k;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "i"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lbl/k$b<",
        "TT;>;"
    }
.end annotation


# direct methods
.method constructor <init>(Lbl/k$e;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lbl/k$e<",
            "TT;>;I)V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Lbl/k$b;-><init>(Lbl/k$e;I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic a(Ljava/lang/Object;)V
    .locals 0

    invoke-super {p0, p1}, Lbl/k$b;->a(Ljava/lang/Object;)V

    return-void
.end method

.method public bridge synthetic acquire()Ljava/lang/Object;
    .locals 1

    invoke-super {p0}, Lbl/k$b;->acquire()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic b()V
    .locals 0

    invoke-super {p0}, Lbl/k$b;->b()V

    return-void
.end method

.method final c(Ljava/lang/Class;I)Lbl/k$c;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "TT;>;I)",
            "Lbl/k$c<",
            "TT;>;"
        }
    .end annotation

    invoke-static {p1, p2}, Lbl/k;->i(Ljava/lang/Class;I)Lbl/k$h;

    move-result-object p1

    return-object p1
.end method

.method final d(Lbl/k$c;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lbl/k$c<",
            "TT;>;I)V"
        }
    .end annotation

    check-cast p1, Lbl/k$h;

    invoke-static {p1, p2}, Lbl/k;->h(Lbl/k$h;I)V

    return-void
.end method
