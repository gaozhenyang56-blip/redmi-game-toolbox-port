.class Lbi/k$e;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lbi/k;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "e"
.end annotation


# instance fields
.field a:Ljava/lang/Object;

.field b:I

.field c:Lbi/c$a;

.field d:Lbi/c$d;

.field volatile e:Z

.field final synthetic f:Lbi/k;


# direct methods
.method public constructor <init>(Lbi/k;Ljava/lang/Object;ILbi/c$a;Lbi/c$d;)V
    .locals 0

    iput-object p1, p0, Lbi/k$e;->f:Lbi/k;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lbi/k$e;->a:Ljava/lang/Object;

    iput p3, p0, Lbi/k$e;->b:I

    iput-object p4, p0, Lbi/k$e;->c:Lbi/c$a;

    iput-object p5, p0, Lbi/k$e;->d:Lbi/c$d;

    const/4 p1, 0x0

    iput-boolean p1, p0, Lbi/k$e;->e:Z

    return-void
.end method


# virtual methods
.method public a()Lbi/c$a;
    .locals 1

    iget-object v0, p0, Lbi/k$e;->c:Lbi/c$a;

    return-object v0
.end method

.method public b()Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lbi/k$e;->a:Ljava/lang/Object;

    return-object v0
.end method

.method public c()Lbi/c$d;
    .locals 1

    iget-object v0, p0, Lbi/k$e;->d:Lbi/c$d;

    return-object v0
.end method

.method public d()I
    .locals 1

    iget v0, p0, Lbi/k$e;->b:I

    return v0
.end method

.method public e(I)V
    .locals 0

    iput p1, p0, Lbi/k$e;->b:I

    return-void
.end method
