.class public Lqi/a$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lqi/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation


# instance fields
.field private a:I

.field private b:I

.field private c:I

.field private d:Ljava/lang/String;

.field private e:J

.field private f:J

.field private g:J


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    iput v0, p0, Lqi/a$a;->a:I

    iput v0, p0, Lqi/a$a;->b:I

    iput v0, p0, Lqi/a$a;->c:I

    const/4 v0, 0x0

    iput-object v0, p0, Lqi/a$a;->d:Ljava/lang/String;

    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lqi/a$a;->e:J

    iput-wide v0, p0, Lqi/a$a;->f:J

    iput-wide v0, p0, Lqi/a$a;->g:J

    return-void
.end method

.method static synthetic a(Lqi/a$a;)I
    .locals 0

    iget p0, p0, Lqi/a$a;->a:I

    return p0
.end method

.method static synthetic b(Lqi/a$a;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lqi/a$a;->d:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic c(Lqi/a$a;)J
    .locals 2

    iget-wide v0, p0, Lqi/a$a;->e:J

    return-wide v0
.end method

.method static synthetic d(Lqi/a$a;)J
    .locals 2

    iget-wide v0, p0, Lqi/a$a;->f:J

    return-wide v0
.end method

.method static synthetic e(Lqi/a$a;)J
    .locals 2

    iget-wide v0, p0, Lqi/a$a;->g:J

    return-wide v0
.end method

.method static synthetic f(Lqi/a$a;)I
    .locals 0

    iget p0, p0, Lqi/a$a;->b:I

    return p0
.end method

.method static synthetic g(Lqi/a$a;)I
    .locals 0

    iget p0, p0, Lqi/a$a;->c:I

    return p0
.end method


# virtual methods
.method public h(Landroid/content/Context;)Lqi/a;
    .locals 2

    new-instance v0, Lqi/a;

    const/4 v1, 0x0

    invoke-direct {v0, p1, p0, v1}, Lqi/a;-><init>(Landroid/content/Context;Lqi/a$a;Lqi/e;)V

    return-object v0
.end method

.method public i(Ljava/lang/String;)Lqi/a$a;
    .locals 0

    iput-object p1, p0, Lqi/a$a;->d:Ljava/lang/String;

    return-object p0
.end method

.method public j(Z)Lqi/a$a;
    .locals 0

    iput p1, p0, Lqi/a$a;->a:I

    return-object p0
.end method

.method public k(J)Lqi/a$a;
    .locals 0

    iput-wide p1, p0, Lqi/a$a;->f:J

    return-object p0
.end method

.method public l(Z)Lqi/a$a;
    .locals 0

    iput p1, p0, Lqi/a$a;->b:I

    return-object p0
.end method

.method public m(J)Lqi/a$a;
    .locals 0

    iput-wide p1, p0, Lqi/a$a;->e:J

    return-object p0
.end method

.method public n(J)Lqi/a$a;
    .locals 0

    iput-wide p1, p0, Lqi/a$a;->g:J

    return-object p0
.end method

.method public o(Z)Lqi/a$a;
    .locals 0

    iput p1, p0, Lqi/a$a;->c:I

    return-object p0
.end method
