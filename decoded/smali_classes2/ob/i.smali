.class public final Lob/i;
.super Lob/f;
.source "SourceFile"


# instance fields
.field private b:Z

.field private c:I


# direct methods
.method public constructor <init>(ZI)V
    .locals 0

    invoke-direct {p0}, Lob/f;-><init>()V

    iput-boolean p1, p0, Lob/i;->b:Z

    iput p2, p0, Lob/i;->c:I

    return-void
.end method


# virtual methods
.method public a()I
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public final b()Z
    .locals 1

    iget-boolean v0, p0, Lob/i;->b:Z

    return v0
.end method

.method public final c()I
    .locals 1

    iget v0, p0, Lob/i;->c:I

    return v0
.end method

.method public final d(I)V
    .locals 0

    iput p1, p0, Lob/i;->c:I

    return-void
.end method
