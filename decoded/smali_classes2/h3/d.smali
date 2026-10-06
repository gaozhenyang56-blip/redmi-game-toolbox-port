.class public Lh3/d;
.super Lh3/f;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lh3/d$a;
    }
.end annotation


# instance fields
.field private i:I

.field private j:Ljava/lang/String;

.field private k:Ljava/lang/String;

.field private l:Ljava/lang/String;

.field private m:Ljava/lang/String;

.field private n:Ljava/lang/String;

.field private o:J

.field private p:J

.field private q:J

.field private r:Z

.field private s:Z

.field private t:Le3/g;

.field private u:Landroid/content/pm/ApplicationInfo;


# direct methods
.method public constructor <init>()V
    .locals 2

    const v0, 0x7f0e007c

    invoke-direct {p0, v0}, Lh3/f;-><init>(I)V

    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lh3/d;->o:J

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lh3/d;->p:J

    const/4 v0, 0x1

    iput-boolean v0, p0, Lh3/d;->s:Z

    return-void
.end method

.method static synthetic j(Lh3/d;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lh3/d;->k:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic k(Lh3/d;)Z
    .locals 0

    iget-boolean p0, p0, Lh3/d;->s:Z

    return p0
.end method

.method static synthetic l(Lh3/d;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lh3/d;->l:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic m(Lh3/d;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lh3/d;->n:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic n(Lh3/d;)J
    .locals 2

    iget-wide v0, p0, Lh3/d;->p:J

    return-wide v0
.end method

.method static synthetic o(Lh3/d;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lh3/d;->m:Ljava/lang/String;

    return-object p0
.end method


# virtual methods
.method public A(Landroid/content/pm/PackageInfo;)V
    .locals 2

    iget-object v0, p1, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iput-object v0, p0, Lh3/d;->u:Landroid/content/pm/ApplicationInfo;

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->uid:I

    iput v0, p0, Lh3/d;->i:I

    iget-object v0, p1, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    iput-object v0, p0, Lh3/d;->j:Ljava/lang/String;

    iget-wide v0, p1, Landroid/content/pm/PackageInfo;->firstInstallTime:J

    iput-wide v0, p0, Lh3/d;->q:J

    return-void
.end method

.method public B(Z)V
    .locals 0

    iput-boolean p1, p0, Lh3/d;->s:Z

    return-void
.end method

.method public C(Z)V
    .locals 0

    iput-boolean p1, p0, Lh3/d;->r:Z

    return-void
.end method

.method public D(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lh3/d;->l:Ljava/lang/String;

    return-void
.end method

.method public E(Le3/g;)V
    .locals 0

    iput-object p1, p0, Lh3/d;->t:Le3/g;

    return-void
.end method

.method public F(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lh3/d;->n:Ljava/lang/String;

    return-void
.end method

.method public G(J)V
    .locals 0

    iput-wide p1, p0, Lh3/d;->p:J

    return-void
.end method

.method public H(J)V
    .locals 0

    iput-wide p1, p0, Lh3/d;->o:J

    return-void
.end method

.method public I(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lh3/d;->m:Ljava/lang/String;

    return-void
.end method

.method public d(I)V
    .locals 0

    iput p1, p0, Lh3/f;->g:I

    return-void
.end method

.method public p()Landroid/content/pm/ApplicationInfo;
    .locals 1

    iget-object v0, p0, Lh3/d;->u:Landroid/content/pm/ApplicationInfo;

    return-object v0
.end method

.method public q()J
    .locals 2

    iget-wide v0, p0, Lh3/d;->q:J

    return-wide v0
.end method

.method public r()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lh3/d;->l:Ljava/lang/String;

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const-string v0, ""

    :goto_0
    return-object v0
.end method

.method public s()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lh3/d;->j:Ljava/lang/String;

    return-object v0
.end method

.method public t()Le3/g;
    .locals 1

    iget-object v0, p0, Lh3/d;->t:Le3/g;

    return-object v0
.end method

.method public u()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lh3/d;->n:Ljava/lang/String;

    return-object v0
.end method

.method public v()J
    .locals 2

    iget-wide v0, p0, Lh3/d;->p:J

    return-wide v0
.end method

.method public w()I
    .locals 1

    iget v0, p0, Lh3/d;->i:I

    return v0
.end method

.method public x()J
    .locals 2

    iget-wide v0, p0, Lh3/d;->o:J

    return-wide v0
.end method

.method public y()Z
    .locals 1

    iget-boolean v0, p0, Lh3/d;->s:Z

    return v0
.end method

.method public z(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lh3/d;->k:Ljava/lang/String;

    return-void
.end method
