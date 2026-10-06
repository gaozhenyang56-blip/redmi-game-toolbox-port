.class public Lda/a;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static volatile f:Lda/a;


# instance fields
.field public a:Laa/b;

.field public b:Lca/a;

.field public c:Laa/c;

.field public d:Laa/a;

.field public e:Z


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 4

    const-string v0, "SmsRecognizer"

    const-string v1, "SmsRecognizer init error:"

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v2, "/"

    invoke-virtual {p1, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_0

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    :cond_0
    new-instance v2, Laa/b;

    invoke-direct {v2}, Laa/b;-><init>()V

    iput-object v2, p0, Lda/a;->a:Laa/b;

    const/4 v2, 0x0

    :try_start_0
    new-instance v3, Lca/a;

    invoke-direct {v3, p1}, Lca/a;-><init>(Ljava/lang/String;)V

    iput-object v3, p0, Lda/a;->b:Lca/a;

    new-instance v3, Laa/c;

    invoke-direct {v3, p1}, Laa/c;-><init>(Ljava/lang/String;)V

    iput-object v3, p0, Lda/a;->c:Laa/c;

    new-instance v3, Laa/a;

    invoke-direct {v3, p1}, Laa/a;-><init>(Ljava/lang/String;)V

    iput-object v3, p0, Lda/a;->d:Laa/a;

    const/4 p1, 0x1

    iput-boolean p1, p0, Lda/a;->e:Z
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p1

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    goto :goto_0

    :catch_1
    move-exception p1

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    :goto_0
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    iput-boolean v2, p0, Lda/a;->e:Z

    :goto_1
    return-void
.end method

.method public static declared-synchronized b(Ljava/lang/String;)Lda/a;
    .locals 2

    const-class v0, Lda/a;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lda/a;->f:Lda/a;

    if-nez v1, :cond_1

    monitor-enter v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    sget-object v1, Lda/a;->f:Lda/a;

    if-nez v1, :cond_0

    new-instance v1, Lda/a;

    invoke-direct {v1, p0}, Lda/a;-><init>(Ljava/lang/String;)V

    sput-object v1, Lda/a;->f:Lda/a;

    :cond_0
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    throw p0

    :cond_1
    :goto_0
    sget-object p0, Lda/a;->f:Lda/a;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    monitor-exit v0

    return-object p0

    :catchall_1
    move-exception p0

    monitor-exit v0

    throw p0
.end method


# virtual methods
.method public declared-synchronized a()V
    .locals 1

    monitor-enter p0

    const/4 v0, 0x0

    :try_start_0
    iput-boolean v0, p0, Lda/a;->e:Z

    sget-object v0, Lda/a;->f:Lda/a;

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    sput-object v0, Lda/a;->f:Lda/a;

    :cond_0
    iget-object v0, p0, Lda/a;->a:Laa/b;

    if-eqz v0, :cond_1

    iget-object v0, v0, Laa/b;->a:Lba/b;

    if-eqz v0, :cond_1

    iget-object v0, v0, Lba/b;->a:Ljava/util/Map;

    if-eqz v0, :cond_1

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    :cond_1
    iget-object v0, p0, Lda/a;->b:Lca/a;

    if-eqz v0, :cond_2

    iget-object v0, v0, Lca/a;->c:Ljava/util/Map;

    if-eqz v0, :cond_2

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    :cond_2
    iget-object v0, p0, Lda/a;->c:Laa/c;

    if-eqz v0, :cond_3

    iget-object v0, v0, Laa/c;->c:Lorg/tensorflow/lite/b;

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Lorg/tensorflow/lite/b;->close()V

    :cond_3
    iget-object v0, p0, Lda/a;->d:Laa/a;

    if-eqz v0, :cond_4

    iget-object v0, v0, Laa/a;->c:Lorg/tensorflow/lite/b;

    if-eqz v0, :cond_4

    invoke-virtual {v0}, Lorg/tensorflow/lite/b;->close()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_4
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public c(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 2

    iget-boolean v0, p0, Lda/a;->e:Z

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    if-eqz p2, :cond_4

    const-string v0, ""

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_0

    :cond_1
    sget-object v0, Lz9/a;->a:Ljava/util/regex/Pattern;

    invoke-virtual {v0, p2}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/regex/Matcher;->find()Z

    move-result v0

    if-nez v0, :cond_2

    return v1

    :cond_2
    iget-object v0, p0, Lda/a;->a:Laa/b;

    invoke-virtual {v0, p1, p2}, Laa/b;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-eqz p1, :cond_3

    const/4 p1, 0x1

    return p1

    :cond_3
    iget-object p1, p0, Lda/a;->b:Lca/a;

    invoke-virtual {p1, p2}, Lca/a;->a(Ljava/lang/String;)[[F

    move-result-object p1

    iget-object p2, p0, Lda/a;->d:Laa/a;

    invoke-virtual {p2, p1}, Laa/a;->a([[F)Z

    move-result p1

    return p1

    :cond_4
    :goto_0
    return v1
.end method

.method public d(Ljava/lang/String;)Z
    .locals 3

    iget-boolean v0, p0, Lda/a;->e:Z

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    if-eqz p1, :cond_6

    const-string v0, ""

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_0

    :cond_1
    sget-object v0, Lz9/a;->b:Ljava/util/regex/Pattern;

    invoke-virtual {v0, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/regex/Matcher;->matches()Z

    move-result v0

    if-eqz v0, :cond_2

    return v1

    :cond_2
    sget-object v0, Lz9/a;->c:Ljava/util/regex/Pattern;

    invoke-virtual {v0, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/regex/Matcher;->matches()Z

    move-result v0

    if-eqz v0, :cond_3

    return v1

    :cond_3
    iget-object v0, p0, Lda/a;->a:Laa/b;

    const-string v2, "0"

    invoke-virtual {v0, v2, p1}, Laa/b;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_4

    return v1

    :cond_4
    iget-object v0, p0, Lda/a;->b:Lca/a;

    invoke-virtual {v0, p1}, Lca/a;->a(Ljava/lang/String;)[[F

    move-result-object p1

    iget-object v0, p0, Lda/a;->d:Laa/a;

    invoke-virtual {v0, p1}, Laa/a;->a([[F)Z

    move-result v0

    if-eqz v0, :cond_5

    return v1

    :cond_5
    iget-object v0, p0, Lda/a;->c:Laa/c;

    invoke-virtual {v0, p1}, Laa/c;->a([[F)Z

    move-result p1

    return p1

    :cond_6
    :goto_0
    return v1
.end method
