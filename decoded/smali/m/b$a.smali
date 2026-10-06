.class Lm/b$a;
.super Lm/d;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lm/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lm/d<",
        "TE;>;"
    }
.end annotation


# instance fields
.field final synthetic d:Lm/b;


# direct methods
.method constructor <init>(Lm/b;)V
    .locals 0

    iput-object p1, p0, Lm/b$a;->d:Lm/b;

    iget p1, p1, Lm/b;->c:I

    invoke-direct {p0, p1}, Lm/d;-><init>(I)V

    return-void
.end method


# virtual methods
.method protected a(I)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TE;"
        }
    .end annotation

    iget-object v0, p0, Lm/b$a;->d:Lm/b;

    invoke-virtual {v0, p1}, Lm/b;->h(I)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method protected b(I)V
    .locals 1

    iget-object v0, p0, Lm/b$a;->d:Lm/b;

    invoke-virtual {v0, p1}, Lm/b;->g(I)Ljava/lang/Object;

    return-void
.end method
