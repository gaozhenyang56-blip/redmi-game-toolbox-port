.class Lzl/b$a;
.super Lbl/n;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lzl/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lbl/n<",
        "Lzl/b;",
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
.method protected bridge synthetic a()Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0}, Lzl/b$a;->g()Lzl/b;

    move-result-object v0

    return-object v0
.end method

.method protected g()Lzl/b;
    .locals 2

    new-instance v0, Lzl/b;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lzl/b;-><init>(Lzl/b$a;)V

    return-object v0
.end method
