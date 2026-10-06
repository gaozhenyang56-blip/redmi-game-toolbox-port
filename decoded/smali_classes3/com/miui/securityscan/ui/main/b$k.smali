.class Lcom/miui/securityscan/ui/main/b$k;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/securityscan/ui/main/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "k"
.end annotation


# static fields
.field private static g:Ljava/lang/String; = "GLThreadManager"


# instance fields
.field private a:Z

.field private b:I

.field private c:Z

.field private d:Z

.field private e:Z

.field private f:Lcom/miui/securityscan/ui/main/b$j;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/miui/securityscan/ui/main/b$a;)V
    .locals 0

    invoke-direct {p0}, Lcom/miui/securityscan/ui/main/b$k;-><init>()V

    return-void
.end method

.method private b()V
    .locals 1

    iget-boolean v0, p0, Lcom/miui/securityscan/ui/main/b$k;->a:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/miui/securityscan/ui/main/b$k;->a:Z

    :cond_0
    return-void
.end method


# virtual methods
.method public declared-synchronized a(Ljavax/microedition/khronos/opengles/GL10;)V
    .locals 4

    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lcom/miui/securityscan/ui/main/b$k;->c:Z

    if-nez v0, :cond_3

    invoke-direct {p0}, Lcom/miui/securityscan/ui/main/b$k;->b()V

    const/16 v0, 0x1f01

    invoke-interface {p1, v0}, Ljavax/microedition/khronos/opengles/GL10;->glGetString(I)Ljava/lang/String;

    move-result-object p1

    iget v0, p0, Lcom/miui/securityscan/ui/main/b$k;->b:I

    const/high16 v1, 0x20000

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-ge v0, v1, :cond_1

    const-string v0, "Q3Dimension MSM7500 "

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    move v0, v3

    goto :goto_0

    :cond_0
    move v0, v2

    :goto_0
    iput-boolean v0, p0, Lcom/miui/securityscan/ui/main/b$k;->d:Z

    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V

    :cond_1
    iget-boolean v0, p0, Lcom/miui/securityscan/ui/main/b$k;->d:Z

    if-nez v0, :cond_2

    move v2, v3

    :cond_2
    iput-boolean v2, p0, Lcom/miui/securityscan/ui/main/b$k;->e:Z

    sget-object v0, Lcom/miui/securityscan/ui/main/b$k;->g:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "checkGLDriver renderer = \""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "\" multipleContextsAllowed = "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean p1, p0, Lcom/miui/securityscan/ui/main/b$k;->d:Z

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string p1, " mLimitedGLESContexts = "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean p1, p0, Lcom/miui/securityscan/ui/main/b$k;->e:Z

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    iput-boolean v3, p0, Lcom/miui/securityscan/ui/main/b$k;->c:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_3
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public c(Lcom/miui/securityscan/ui/main/b$j;)V
    .locals 1

    iget-object v0, p0, Lcom/miui/securityscan/ui/main/b$k;->f:Lcom/miui/securityscan/ui/main/b$j;

    if-ne v0, p1, :cond_0

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/miui/securityscan/ui/main/b$k;->f:Lcom/miui/securityscan/ui/main/b$j;

    :cond_0
    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V

    return-void
.end method

.method public declared-synchronized d()Z
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lcom/miui/securityscan/ui/main/b$k;->e:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized e()Z
    .locals 1

    monitor-enter p0

    :try_start_0
    invoke-direct {p0}, Lcom/miui/securityscan/ui/main/b$k;->b()V

    iget-boolean v0, p0, Lcom/miui/securityscan/ui/main/b$k;->d:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    xor-int/lit8 v0, v0, 0x1

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized f(Lcom/miui/securityscan/ui/main/b$j;)V
    .locals 4

    monitor-enter p0

    :try_start_0
    const-string v0, "GLThread"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "exiting tid="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Thread;->getId()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x1

    invoke-static {p1, v0}, Lcom/miui/securityscan/ui/main/b$j;->b(Lcom/miui/securityscan/ui/main/b$j;Z)Z

    iget-object v0, p0, Lcom/miui/securityscan/ui/main/b$k;->f:Lcom/miui/securityscan/ui/main/b$j;

    if-ne v0, p1, :cond_0

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/miui/securityscan/ui/main/b$k;->f:Lcom/miui/securityscan/ui/main/b$j;

    :cond_0
    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public g(Lcom/miui/securityscan/ui/main/b$j;)Z
    .locals 2

    iget-object v0, p0, Lcom/miui/securityscan/ui/main/b$k;->f:Lcom/miui/securityscan/ui/main/b$j;

    const/4 v1, 0x1

    if-eq v0, p1, :cond_3

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-direct {p0}, Lcom/miui/securityscan/ui/main/b$k;->b()V

    iget-boolean p1, p0, Lcom/miui/securityscan/ui/main/b$k;->d:Z

    if-eqz p1, :cond_1

    return v1

    :cond_1
    iget-object p1, p0, Lcom/miui/securityscan/ui/main/b$k;->f:Lcom/miui/securityscan/ui/main/b$j;

    if-eqz p1, :cond_2

    invoke-virtual {p1}, Lcom/miui/securityscan/ui/main/b$j;->j()V

    :cond_2
    const/4 p1, 0x0

    return p1

    :cond_3
    :goto_0
    iput-object p1, p0, Lcom/miui/securityscan/ui/main/b$k;->f:Lcom/miui/securityscan/ui/main/b$j;

    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V

    return v1
.end method
