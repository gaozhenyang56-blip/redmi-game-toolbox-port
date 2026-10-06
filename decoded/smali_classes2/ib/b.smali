.class public Lib/b;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lib/b$a;
    }
.end annotation


# instance fields
.field private a:Lib/a;


# direct methods
.method public constructor <init>(Z)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lib/a;

    invoke-direct {v0, p1}, Lib/a;-><init>(Z)V

    iput-object v0, p0, Lib/b;->a:Lib/a;

    return-void
.end method


# virtual methods
.method public a()I
    .locals 1

    iget-object v0, p0, Lib/b;->a:Lib/a;

    invoke-virtual {v0}, Lib/a;->b()I

    move-result v0

    return v0
.end method

.method public b(I)Lib/b$a;
    .locals 3

    new-instance v0, Lib/b$a;

    invoke-direct {v0}, Lib/b$a;-><init>()V

    :try_start_0
    iget-object v1, p0, Lib/b;->a:Lib/a;

    invoke-virtual {v1, p1}, Lib/a;->d(I)Lib/a$b;

    move-result-object p1

    iget-object v1, p1, Lib/a$b;->j:Ljava/lang/String;

    iput-object v1, v0, Lib/b$a;->a:Ljava/lang/String;

    iget v1, p1, Lib/a$b;->b:I

    iput v1, v0, Lib/b$a;->b:I

    iget v1, p1, Lib/a$b;->a:I

    iput v1, v0, Lib/b$a;->c:I

    iget-wide v1, p1, Lib/a$b;->o:J

    iput-wide v1, v0, Lib/b$a;->d:J

    iget v1, p1, Lib/a$b;->q:I

    int-to-long v1, v1

    iput-wide v1, v0, Lib/b$a;->e:J

    iget-wide v1, p1, Lib/a$b;->p:J

    iput-wide v1, v0, Lib/b$a;->f:J

    iget v1, p1, Lib/a$b;->r:I

    int-to-long v1, v1

    iput-wide v1, v0, Lib/b$a;->g:J

    iget-wide v1, p1, Lib/a$b;->m:J

    iput-wide v1, v0, Lib/b$a;->h:J

    iget-wide v1, p1, Lib/a$b;->n:J

    iput-wide v1, v0, Lib/b$a;->i:J

    iget-boolean v1, p1, Lib/a$b;->z:Z

    iput-boolean v1, v0, Lib/b$a;->j:Z

    iget-boolean v1, p1, Lib/a$b;->y:Z

    iput-boolean v1, v0, Lib/b$a;->k:Z

    iget-wide v1, p1, Lib/a$b;->w:J

    iput-wide v1, v0, Lib/b$a;->l:J
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    const-string v1, "ProcessCpuTrackerWr"

    const-string v2, "getStats"

    invoke-static {v1, v2, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    return-object v0
.end method

.method public c()V
    .locals 1

    iget-object v0, p0, Lib/b;->a:Lib/a;

    invoke-virtual {v0}, Lib/a;->e()V

    return-void
.end method

.method public d()V
    .locals 1

    iget-object v0, p0, Lib/b;->a:Lib/a;

    invoke-virtual {v0}, Lib/a;->i()V

    return-void
.end method
