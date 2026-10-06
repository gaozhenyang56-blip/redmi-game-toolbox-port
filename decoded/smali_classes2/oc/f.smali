.class public final Loc/f;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Comparable<",
        "Loc/f;",
        ">;"
    }
.end annotation


# instance fields
.field private final a:Ljava/lang/String;

.field private final b:Ljava/lang/String;

.field private final c:I

.field private final d:I


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;II)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Loc/f;->b:Ljava/lang/String;

    iput-object p1, p0, Loc/f;->a:Ljava/lang/String;

    iput p3, p0, Loc/f;->c:I

    iput p4, p0, Loc/f;->d:I

    return-void
.end method


# virtual methods
.method public a(Loc/f;)I
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public b()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Loc/f;->b:Ljava/lang/String;

    return-object v0
.end method

.method public c()I
    .locals 1

    iget v0, p0, Loc/f;->d:I

    return v0
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 0

    check-cast p1, Loc/f;

    invoke-virtual {p0, p1}, Loc/f;->a(Loc/f;)I

    move-result p1

    return p1
.end method

.method public d()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Loc/f;->a:Ljava/lang/String;

    return-object v0
.end method

.method public e()I
    .locals 1

    iget v0, p0, Loc/f;->c:I

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    const/4 v1, 0x0

    if-nez p1, :cond_1

    return v1

    :cond_1
    const-class v2, Loc/f;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_2

    return v1

    :cond_2
    check-cast p1, Loc/f;

    iget-object v2, p0, Loc/f;->a:Ljava/lang/String;

    if-nez v2, :cond_3

    iget-object v2, p1, Loc/f;->a:Ljava/lang/String;

    if-eqz v2, :cond_4

    return v1

    :cond_3
    iget-object v3, p1, Loc/f;->a:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_4

    return v1

    :cond_4
    iget v2, p0, Loc/f;->c:I

    iget v3, p1, Loc/f;->c:I

    if-eq v2, v3, :cond_5

    return v1

    :cond_5
    iget v2, p0, Loc/f;->d:I

    iget p1, p1, Loc/f;->d:I

    if-eq v2, p1, :cond_6

    return v1

    :cond_6
    return v0
.end method

.method public hashCode()I
    .locals 2

    iget-object v0, p0, Loc/f;->a:Ljava/lang/String;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    iget v1, p0, Loc/f;->c:I

    add-int/2addr v0, v1

    goto :goto_0

    :cond_0
    iget v0, p0, Loc/f;->c:I

    :goto_0
    iget v1, p0, Loc/f;->d:I

    add-int/2addr v0, v1

    return v0
.end method
