.class Lth/b$c;
.super Lth/b$b;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lth/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "c"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lth/b<",
        "TE;>.b;"
    }
.end annotation


# instance fields
.field final synthetic e:Lth/b;


# direct methods
.method private constructor <init>(Lth/b;)V
    .locals 0

    iput-object p1, p0, Lth/b$c;->e:Lth/b;

    invoke-direct {p0, p1}, Lth/b$b;-><init>(Lth/b;)V

    return-void
.end method

.method synthetic constructor <init>(Lth/b;Lth/b$a;)V
    .locals 0

    invoke-direct {p0, p1}, Lth/b$c;-><init>(Lth/b;)V

    return-void
.end method


# virtual methods
.method b()Lth/b$d;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lth/b$d<",
            "TE;>;"
        }
    .end annotation

    iget-object v0, p0, Lth/b$c;->e:Lth/b;

    iget-object v0, v0, Lth/b;->a:Lth/b$d;

    return-object v0
.end method

.method c(Lth/b$d;)Lth/b$d;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lth/b$d<",
            "TE;>;)",
            "Lth/b$d<",
            "TE;>;"
        }
    .end annotation

    iget-object p1, p1, Lth/b$d;->c:Lth/b$d;

    return-object p1
.end method
