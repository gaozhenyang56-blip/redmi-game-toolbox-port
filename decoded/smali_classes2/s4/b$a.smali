.class public Ls4/b$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ls4/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation


# instance fields
.field public a:I

.field public b:I

.field public c:I

.field public d:I

.field public e:I


# direct methods
.method public constructor <init>(IIIII)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Ls4/b$a;->a:I

    iput p2, p0, Ls4/b$a;->b:I

    iput p3, p0, Ls4/b$a;->c:I

    iput p4, p0, Ls4/b$a;->d:I

    iput p5, p0, Ls4/b$a;->e:I

    return-void
.end method
