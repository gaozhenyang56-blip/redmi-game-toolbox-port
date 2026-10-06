.class public Lqi/a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lqi/a$a;
    }
.end annotation


# instance fields
.field private a:Ljava/lang/String;

.field private b:Z

.field private c:Z

.field private d:Z

.field private e:J

.field private f:J

.field private g:J


# direct methods
.method private constructor <init>(Landroid/content/Context;Lqi/a$a;)V
    .locals 10

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lqi/a;->b:Z

    const/4 v1, 0x0

    iput-boolean v1, p0, Lqi/a;->c:Z

    iput-boolean v1, p0, Lqi/a;->d:Z

    const-wide/32 v2, 0x100000

    iput-wide v2, p0, Lqi/a;->e:J

    const-wide/32 v4, 0x15180

    iput-wide v4, p0, Lqi/a;->f:J

    iput-wide v4, p0, Lqi/a;->g:J

    invoke-static {p2}, Lqi/a$a;->a(Lqi/a$a;)I

    move-result v6

    if-nez v6, :cond_0

    iput-boolean v1, p0, Lqi/a;->b:Z

    goto :goto_0

    :cond_0
    invoke-static {p2}, Lqi/a$a;->a(Lqi/a$a;)I

    move-result v6

    iput-boolean v0, p0, Lqi/a;->b:Z

    :goto_0
    invoke-static {p2}, Lqi/a$a;->b(Lqi/a$a;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_1

    invoke-static {p2}, Lqi/a$a;->b(Lqi/a$a;)Ljava/lang/String;

    move-result-object p1

    goto :goto_1

    :cond_1
    invoke-static {p1}, Lzi/d1;->b(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p1

    :goto_1
    iput-object p1, p0, Lqi/a;->a:Ljava/lang/String;

    invoke-static {p2}, Lqi/a$a;->c(Lqi/a$a;)J

    move-result-wide v6

    const-wide/16 v8, -0x1

    cmp-long p1, v6, v8

    if-lez p1, :cond_2

    invoke-static {p2}, Lqi/a$a;->c(Lqi/a$a;)J

    move-result-wide v2

    :cond_2
    iput-wide v2, p0, Lqi/a;->e:J

    invoke-static {p2}, Lqi/a$a;->d(Lqi/a$a;)J

    move-result-wide v2

    cmp-long p1, v2, v8

    if-lez p1, :cond_3

    invoke-static {p2}, Lqi/a$a;->d(Lqi/a$a;)J

    move-result-wide v2

    iput-wide v2, p0, Lqi/a;->f:J

    goto :goto_2

    :cond_3
    iput-wide v4, p0, Lqi/a;->f:J

    :goto_2
    invoke-static {p2}, Lqi/a$a;->e(Lqi/a$a;)J

    move-result-wide v2

    cmp-long p1, v2, v8

    if-lez p1, :cond_4

    invoke-static {p2}, Lqi/a$a;->e(Lqi/a$a;)J

    move-result-wide v2

    iput-wide v2, p0, Lqi/a;->g:J

    goto :goto_3

    :cond_4
    iput-wide v4, p0, Lqi/a;->g:J

    :goto_3
    invoke-static {p2}, Lqi/a$a;->f(Lqi/a$a;)I

    move-result p1

    if-nez p1, :cond_6

    :cond_5
    iput-boolean v1, p0, Lqi/a;->c:Z

    goto :goto_4

    :cond_6
    invoke-static {p2}, Lqi/a$a;->f(Lqi/a$a;)I

    move-result p1

    if-ne p1, v0, :cond_5

    iput-boolean v0, p0, Lqi/a;->c:Z

    :goto_4
    invoke-static {p2}, Lqi/a$a;->g(Lqi/a$a;)I

    move-result p1

    if-nez p1, :cond_8

    :cond_7
    iput-boolean v1, p0, Lqi/a;->d:Z

    goto :goto_5

    :cond_8
    invoke-static {p2}, Lqi/a$a;->g(Lqi/a$a;)I

    move-result p1

    if-ne p1, v0, :cond_7

    iput-boolean v0, p0, Lqi/a;->d:Z

    :goto_5
    return-void
.end method

.method synthetic constructor <init>(Landroid/content/Context;Lqi/a$a;Lqi/e;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lqi/a;-><init>(Landroid/content/Context;Lqi/a$a;)V

    return-void
.end method

.method public static a(Landroid/content/Context;)Lqi/a;
    .locals 4

    invoke-static {}, Lqi/a;->b()Lqi/a$a;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lqi/a$a;->j(Z)Lqi/a$a;

    move-result-object v0

    invoke-static {p0}, Lzi/d1;->b(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lqi/a$a;->i(Ljava/lang/String;)Lqi/a$a;

    move-result-object v0

    const-wide/32 v1, 0x100000

    invoke-virtual {v0, v1, v2}, Lqi/a$a;->m(J)Lqi/a$a;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lqi/a$a;->l(Z)Lqi/a$a;

    move-result-object v0

    const-wide/32 v2, 0x15180

    invoke-virtual {v0, v2, v3}, Lqi/a$a;->k(J)Lqi/a$a;

    move-result-object v0

    invoke-virtual {v0, v1}, Lqi/a$a;->o(Z)Lqi/a$a;

    move-result-object v0

    invoke-virtual {v0, v2, v3}, Lqi/a$a;->n(J)Lqi/a$a;

    move-result-object v0

    invoke-virtual {v0, p0}, Lqi/a$a;->h(Landroid/content/Context;)Lqi/a;

    move-result-object p0

    return-object p0
.end method

.method public static b()Lqi/a$a;
    .locals 1

    new-instance v0, Lqi/a$a;

    invoke-direct {v0}, Lqi/a$a;-><init>()V

    return-object v0
.end method


# virtual methods
.method public c()J
    .locals 2

    iget-wide v0, p0, Lqi/a;->f:J

    return-wide v0
.end method

.method public d()J
    .locals 2

    iget-wide v0, p0, Lqi/a;->e:J

    return-wide v0
.end method

.method public e()J
    .locals 2

    iget-wide v0, p0, Lqi/a;->g:J

    return-wide v0
.end method

.method public f()Z
    .locals 1

    iget-boolean v0, p0, Lqi/a;->b:Z

    return v0
.end method

.method public g()Z
    .locals 1

    iget-boolean v0, p0, Lqi/a;->c:Z

    return v0
.end method

.method public h()Z
    .locals 1

    iget-boolean v0, p0, Lqi/a;->d:Z

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Config{mEventEncrypted="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lqi/a;->b:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", mAESKey=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lqi/a;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x27

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v1, ", mMaxFileLength="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lqi/a;->e:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ", mEventUploadSwitchOpen="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lqi/a;->c:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", mPerfUploadSwitchOpen="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lqi/a;->d:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", mEventUploadFrequency="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lqi/a;->f:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ", mPerfUploadFrequency="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lqi/a;->g:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
