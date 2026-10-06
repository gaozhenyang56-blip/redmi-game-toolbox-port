.class Lwl/b$a;
.super Lbl/n;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lwl/b;->n(Landroid/content/Context;)Lwl/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lbl/n<",
        "Lwl/b;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lbl/n;-><init>()V

    return-void
.end method


# virtual methods
.method protected bridge synthetic b(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    invoke-virtual {p0, p1}, Lwl/b$a;->g(Ljava/lang/Object;)Lwl/b;

    move-result-object p1

    return-object p1
.end method

.method protected bridge synthetic f(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Lwl/b;

    invoke-virtual {p0, p1, p2}, Lwl/b$a;->h(Lwl/b;Ljava/lang/Object;)V

    return-void
.end method

.method protected g(Ljava/lang/Object;)Lwl/b;
    .locals 2

    new-instance v0, Lwl/b;

    check-cast p1, Landroid/content/Context;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Lwl/b;-><init>(Landroid/content/Context;Lwl/b$a;)V

    return-object v0
.end method

.method protected h(Lwl/b;Ljava/lang/Object;)V
    .locals 0

    invoke-super {p0, p1, p2}, Lbl/n;->f(Ljava/lang/Object;Ljava/lang/Object;)V

    check-cast p2, Landroid/content/Context;

    invoke-static {p1, p2}, Lwl/b;->a(Lwl/b;Landroid/content/Context;)V

    return-void
.end method
