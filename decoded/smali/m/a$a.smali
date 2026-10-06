.class final Lm/a$a;
.super Ljava/util/AbstractSet;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lm/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/AbstractSet<",
        "Ljava/util/Map$Entry<",
        "TK;TV;>;>;"
    }
.end annotation


# instance fields
.field final synthetic a:Lm/a;


# direct methods
.method constructor <init>(Lm/a;)V
    .locals 0

    iput-object p1, p0, Lm/a$a;->a:Lm/a;

    invoke-direct {p0}, Ljava/util/AbstractSet;-><init>()V

    return-void
.end method


# virtual methods
.method public iterator()Ljava/util/Iterator;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator<",
            "Ljava/util/Map$Entry<",
            "TK;TV;>;>;"
        }
    .end annotation

    new-instance v0, Lm/a$d;

    iget-object v1, p0, Lm/a$a;->a:Lm/a;

    invoke-direct {v0, v1}, Lm/a$d;-><init>(Lm/a;)V

    return-object v0
.end method

.method public size()I
    .locals 1

    iget-object v0, p0, Lm/a$a;->a:Lm/a;

    iget v0, v0, Lm/g;->c:I

    return v0
.end method
