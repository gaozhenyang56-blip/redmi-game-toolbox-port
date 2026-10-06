.class public Lzi/o9;
.super Lzi/h9;
.source "SourceFile"


# instance fields
.field protected a:I


# direct methods
.method public constructor <init>(ILjava/lang/String;)V
    .locals 0

    invoke-direct {p0, p2}, Lzi/h9;-><init>(Ljava/lang/String;)V

    iput p1, p0, Lzi/o9;->a:I

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Lzi/h9;-><init>(Ljava/lang/String;)V

    const/4 p1, 0x0

    iput p1, p0, Lzi/o9;->a:I

    return-void
.end method
