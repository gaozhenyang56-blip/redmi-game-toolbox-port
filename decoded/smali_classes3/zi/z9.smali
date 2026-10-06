.class public Lzi/z9;
.super Lzi/h9;
.source "SourceFile"


# instance fields
.field protected a:I


# direct methods
.method public constructor <init>(I)V
    .locals 0

    invoke-direct {p0}, Lzi/h9;-><init>()V

    iput p1, p0, Lzi/z9;->a:I

    return-void
.end method

.method public constructor <init>(ILjava/lang/String;)V
    .locals 0

    invoke-direct {p0, p2}, Lzi/h9;-><init>(Ljava/lang/String;)V

    iput p1, p0, Lzi/z9;->a:I

    return-void
.end method

.method public constructor <init>(ILjava/lang/Throwable;)V
    .locals 0

    invoke-direct {p0, p2}, Lzi/h9;-><init>(Ljava/lang/Throwable;)V

    iput p1, p0, Lzi/z9;->a:I

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Lzi/h9;-><init>(Ljava/lang/String;)V

    const/4 p1, 0x0

    iput p1, p0, Lzi/z9;->a:I

    return-void
.end method
