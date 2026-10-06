.class public Lyk/b$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lyk/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation


# instance fields
.field a:Lyk/b;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lyk/b;

    invoke-direct {v0}, Lyk/b;-><init>()V

    iput-object v0, p0, Lyk/b$a;->a:Lyk/b;

    return-void
.end method

.method public static b(III)Lyk/b;
    .locals 4

    const/4 v0, 0x3

    const/4 v1, 0x2

    if-eq p0, v1, :cond_1

    if-ne p0, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    return-object p0

    :cond_1
    :goto_0
    new-instance p0, Lyk/b$a;

    invoke-direct {p0}, Lyk/b$a;-><init>()V

    invoke-virtual {p0, p2}, Lyk/b$a;->c(I)Lyk/b$a;

    move-result-object p0

    new-array p2, v0, [I

    fill-array-data p2, :array_0

    invoke-virtual {p0, p2}, Lyk/b$a;->e([I)Lyk/b$a;

    move-result-object p0

    const/4 p2, 0x4

    new-array p2, p2, [I

    const/4 v2, 0x0

    aput v2, p2, v2

    const/4 v2, 0x1

    mul-int/lit8 v3, p1, 0x2

    aput v3, p2, v2

    mul-int/lit8 v2, p1, 0x4

    aput v2, p2, v1

    mul-int/lit8 p1, p1, 0xb

    aput p1, p2, v0

    invoke-virtual {p0, p2}, Lyk/b$a;->d([I)Lyk/b$a;

    move-result-object p0

    const/16 p1, 0x44c

    invoke-virtual {p0, p1}, Lyk/b$a;->f(I)Lyk/b$a;

    move-result-object p0

    invoke-virtual {p0}, Lyk/b$a;->a()Lyk/b;

    move-result-object p0

    return-object p0

    nop

    :array_0
    .array-data 4
        0x1a4
        0x280
        0x320
    .end array-data
.end method


# virtual methods
.method public a()Lyk/b;
    .locals 1

    iget-object v0, p0, Lyk/b$a;->a:Lyk/b;

    return-object v0
.end method

.method public c(I)Lyk/b$a;
    .locals 1

    iget-object v0, p0, Lyk/b$a;->a:Lyk/b;

    invoke-static {v0, p1}, Lyk/b;->a(Lyk/b;I)I

    return-object p0
.end method

.method public varargs d([I)Lyk/b$a;
    .locals 1

    iget-object v0, p0, Lyk/b$a;->a:Lyk/b;

    invoke-static {v0, p1}, Lyk/b;->c(Lyk/b;[I)[I

    return-object p0
.end method

.method public varargs e([I)Lyk/b$a;
    .locals 1

    iget-object v0, p0, Lyk/b$a;->a:Lyk/b;

    invoke-static {v0, p1}, Lyk/b;->b(Lyk/b;[I)[I

    return-object p0
.end method

.method public f(I)Lyk/b$a;
    .locals 1

    iget-object v0, p0, Lyk/b$a;->a:Lyk/b;

    invoke-static {v0, p1}, Lyk/b;->d(Lyk/b;I)I

    return-object p0
.end method
