.class public Lzi/j9$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lzi/p9;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lzi/j9;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation


# instance fields
.field protected a:Z

.field protected b:Z

.field protected c:I


# direct methods
.method public constructor <init>()V
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1}, Lzi/j9$a;-><init>(ZZ)V

    return-void
.end method

.method public constructor <init>(ZZ)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lzi/j9$a;-><init>(ZZI)V

    return-void
.end method

.method public constructor <init>(ZZI)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean p1, p0, Lzi/j9$a;->a:Z

    iput-boolean p2, p0, Lzi/j9$a;->b:Z

    iput p3, p0, Lzi/j9$a;->c:I

    return-void
.end method


# virtual methods
.method public L(Lzi/y9;)Lzi/n9;
    .locals 3

    new-instance v0, Lzi/j9;

    iget-boolean v1, p0, Lzi/j9$a;->a:Z

    iget-boolean v2, p0, Lzi/j9$a;->b:Z

    invoke-direct {v0, p1, v1, v2}, Lzi/j9;-><init>(Lzi/y9;ZZ)V

    iget p1, p0, Lzi/j9$a;->c:I

    if-eqz p1, :cond_0

    invoke-virtual {v0, p1}, Lzi/j9;->L(I)V

    :cond_0
    return-object v0
.end method
