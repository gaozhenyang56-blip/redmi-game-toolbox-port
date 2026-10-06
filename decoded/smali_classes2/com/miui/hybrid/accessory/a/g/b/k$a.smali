.class public Lcom/miui/hybrid/accessory/a/g/b/k$a;
.super Lcom/miui/hybrid/accessory/a/g/b/a$a;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/hybrid/accessory/a/g/b/k;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1}, Lcom/miui/hybrid/accessory/a/g/b/a$a;-><init>(ZZ)V

    return-void
.end method

.method public constructor <init>(ZZI)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/miui/hybrid/accessory/a/g/b/a$a;-><init>(ZZI)V

    return-void
.end method


# virtual methods
.method public a(Lcom/miui/hybrid/accessory/a/g/c/b;)Lcom/miui/hybrid/accessory/a/g/b/e;
    .locals 3

    new-instance v0, Lcom/miui/hybrid/accessory/a/g/b/k;

    iget-boolean v1, p0, Lcom/miui/hybrid/accessory/a/g/b/a$a;->a:Z

    iget-boolean v2, p0, Lcom/miui/hybrid/accessory/a/g/b/a$a;->b:Z

    invoke-direct {v0, p1, v1, v2}, Lcom/miui/hybrid/accessory/a/g/b/k;-><init>(Lcom/miui/hybrid/accessory/a/g/c/b;ZZ)V

    iget p1, p0, Lcom/miui/hybrid/accessory/a/g/b/a$a;->c:I

    if-eqz p1, :cond_0

    invoke-virtual {v0, p1}, Lcom/miui/hybrid/accessory/a/g/b/a;->b(I)V

    :cond_0
    return-object v0
.end method
