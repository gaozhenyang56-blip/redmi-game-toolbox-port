.class Lym/y$a;
.super Lym/y;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lym/y;->e(Lym/t;[BII)Lym/y;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lym/t;

.field final synthetic b:I

.field final synthetic c:[B

.field final synthetic d:I


# direct methods
.method constructor <init>(Lym/t;I[BI)V
    .locals 0

    iput-object p1, p0, Lym/y$a;->a:Lym/t;

    iput p2, p0, Lym/y$a;->b:I

    iput-object p3, p0, Lym/y$a;->c:[B

    iput p4, p0, Lym/y$a;->d:I

    invoke-direct {p0}, Lym/y;-><init>()V

    return-void
.end method


# virtual methods
.method public a()J
    .locals 2

    iget v0, p0, Lym/y$a;->b:I

    int-to-long v0, v0

    return-wide v0
.end method

.method public b()Lym/t;
    .locals 1
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    iget-object v0, p0, Lym/y$a;->a:Lym/t;

    return-object v0
.end method

.method public f(Lin/d;)V
    .locals 3

    iget-object v0, p0, Lym/y$a;->c:[B

    iget v1, p0, Lym/y$a;->d:I

    iget v2, p0, Lym/y$a;->b:I

    invoke-interface {p1, v0, v1, v2}, Lin/d;->write([BII)Lin/d;

    return-void
.end method
