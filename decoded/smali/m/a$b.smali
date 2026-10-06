.class final Lm/a$b;
.super Lm/d;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lm/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "b"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lm/d<",
        "TK;>;"
    }
.end annotation


# instance fields
.field final synthetic d:Lm/a;


# direct methods
.method constructor <init>(Lm/a;)V
    .locals 0

    iput-object p1, p0, Lm/a$b;->d:Lm/a;

    iget p1, p1, Lm/g;->c:I

    invoke-direct {p0, p1}, Lm/d;-><init>(I)V

    return-void
.end method


# virtual methods
.method protected a(I)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TK;"
        }
    .end annotation

    iget-object v0, p0, Lm/a$b;->d:Lm/a;

    invoke-virtual {v0, p1}, Lm/g;->i(I)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method protected b(I)V
    .locals 1

    iget-object v0, p0, Lm/a$b;->d:Lm/a;

    invoke-virtual {v0, p1}, Lm/g;->k(I)Ljava/lang/Object;

    return-void
.end method
