.class Lzl/a$a;
.super Lbl/n;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lzl/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lbl/n<",
        "Lzl/a;",
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

    invoke-virtual {p0, p1}, Lzl/a$a;->g(Ljava/lang/Object;)Lzl/a;

    move-result-object p1

    return-object p1
.end method

.method protected g(Ljava/lang/Object;)Lzl/a;
    .locals 2

    new-instance v0, Lzl/a;

    check-cast p1, Landroid/content/Context;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Lzl/a;-><init>(Landroid/content/Context;Lzl/a$a;)V

    return-object v0
.end method
