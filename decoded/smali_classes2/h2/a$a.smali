.class Lh2/a$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lh2/a;->k(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Z

.field final synthetic b:Lh2/a;


# direct methods
.method constructor <init>(Lh2/a;Z)V
    .locals 0

    iput-object p1, p0, Lh2/a$a;->b:Lh2/a;

    iput-boolean p2, p0, Lh2/a$a;->a:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    const-string v0, "SmsEngineHandler"

    :try_start_0
    iget-boolean v1, p0, Lh2/a$a;->a:Z

    if-eqz v1, :cond_0

    iget-object v1, p0, Lh2/a$a;->b:Lh2/a;

    invoke-static {v1}, Lh2/a;->a(Lh2/a;)Lda/a;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lh2/a$a;->b:Lh2/a;

    invoke-static {v1}, Lh2/a;->a(Lh2/a;)Lda/a;

    move-result-object v1

    invoke-virtual {v1}, Lda/a;->a()V

    :cond_0
    iget-object v1, p0, Lh2/a$a;->b:Lh2/a;

    invoke-static {v1}, Lh2/a;->c(Lh2/a;)Landroid/content/Context;

    move-result-object v2

    invoke-static {v1, v2}, Lh2/a;->d(Lh2/a;Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_1

    iget-object v1, p0, Lh2/a$a;->b:Lh2/a;

    invoke-static {v1}, Lh2/a;->c(Lh2/a;)Landroid/content/Context;

    move-result-object v2

    iget-object v3, p0, Lh2/a$a;->b:Lh2/a;

    invoke-static {v3}, Lh2/a;->e(Lh2/a;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v2, v3}, Lh2/a;->f(Lh2/a;Landroid/content/Context;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    :cond_1
    iget-object v1, p0, Lh2/a$a;->b:Lh2/a;

    invoke-static {v1}, Lh2/a;->e(Lh2/a;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lda/a;->b(Ljava/lang/String;)Lda/a;

    move-result-object v2

    invoke-static {v1, v2}, Lh2/a;->b(Lh2/a;Lda/a;)Lda/a;

    const-string v1, "initNewSmsEngine success."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "initNewSmsEngine failed. "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    :goto_0
    return-void
.end method
