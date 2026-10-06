.class public Lh3/j;
.super Lh3/f;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lh3/j$a;
    }
.end annotation


# instance fields
.field private i:I


# direct methods
.method public constructor <init>()V
    .locals 1

    const v0, 0x7f0e0061

    invoke-direct {p0, v0}, Lh3/f;-><init>(I)V

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lh3/f;->i(Z)V

    return-void
.end method

.method static synthetic j(Lh3/j;)I
    .locals 0

    iget p0, p0, Lh3/j;->i:I

    return p0
.end method


# virtual methods
.method public k(I)V
    .locals 0

    iput p1, p0, Lh3/j;->i:I

    return-void
.end method
