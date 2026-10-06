.class public Lg2/b;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private a:I

.field private b:Ljava/lang/String;

.field private c:Ljava/lang/String;

.field private d:Ljava/lang/String;

.field private e:I

.field private f:I

.field private g:I

.field private h:I

.field private i:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, ""

    iput-object v0, p0, Lg2/b;->d:Ljava/lang/String;

    const/4 v0, 0x0

    iput v0, p0, Lg2/b;->e:I

    const/4 v1, 0x1

    iput v1, p0, Lg2/b;->f:I

    iput v0, p0, Lg2/b;->h:I

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, ""

    iput-object v0, p0, Lg2/b;->d:Ljava/lang/String;

    const/4 v0, 0x0

    iput v0, p0, Lg2/b;->e:I

    const/4 v1, 0x1

    iput v1, p0, Lg2/b;->f:I

    iput v0, p0, Lg2/b;->h:I

    iput-object p1, p0, Lg2/b;->i:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;II)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, ""

    iput-object v0, p0, Lg2/b;->d:Ljava/lang/String;

    const/4 v0, 0x1

    iput v0, p0, Lg2/b;->f:I

    const/4 v0, 0x0

    iput v0, p0, Lg2/b;->h:I

    iput-object p1, p0, Lg2/b;->i:Ljava/lang/String;

    iput-object p2, p0, Lg2/b;->b:Ljava/lang/String;

    iput p3, p0, Lg2/b;->g:I

    iput p4, p0, Lg2/b;->e:I

    return-void
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lg2/b;->i:Ljava/lang/String;

    return-object v0
.end method

.method public b()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lg2/b;->b:Ljava/lang/String;

    return-object v0
.end method

.method public c()I
    .locals 1

    iget v0, p0, Lg2/b;->e:I

    return v0
.end method

.method public d()I
    .locals 1

    iget v0, p0, Lg2/b;->g:I

    return v0
.end method

.method public e(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lg2/b;->c:Ljava/lang/String;

    return-void
.end method

.method public f(I)V
    .locals 0

    iput p1, p0, Lg2/b;->a:I

    return-void
.end method

.method public g(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lg2/b;->d:Ljava/lang/String;

    return-void
.end method

.method public h(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lg2/b;->b:Ljava/lang/String;

    return-void
.end method

.method public i(I)V
    .locals 0

    iput p1, p0, Lg2/b;->e:I

    return-void
.end method

.method public j(I)V
    .locals 0

    iput p1, p0, Lg2/b;->g:I

    return-void
.end method
