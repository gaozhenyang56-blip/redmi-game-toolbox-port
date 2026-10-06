.class Lwl/c$a;
.super Lbl/k$e;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lwl/c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lbl/k$e<",
        "Lwl/a;",
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

    invoke-virtual {p0}, Lwl/c$a;->e()Lwl/a;

    move-result-object v0

    return-object v0
.end method

.method public e()Lwl/a;
    .locals 1

    new-instance v0, Lwl/a;

    invoke-direct {v0}, Lwl/a;-><init>()V

    return-object v0
.end method
