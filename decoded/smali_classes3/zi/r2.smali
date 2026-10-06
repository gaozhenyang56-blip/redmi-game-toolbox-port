.class Lzi/r2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Landroid/content/Context;

.field final synthetic b:Ljava/lang/String;

.field final synthetic c:Z

.field final synthetic d:J

.field final synthetic e:I

.field final synthetic f:J

.field final synthetic g:I

.field final synthetic h:Ljava/lang/String;

.field final synthetic i:I


# direct methods
.method constructor <init>(Landroid/content/Context;Ljava/lang/String;ZJIJILjava/lang/String;I)V
    .locals 0

    iput-object p1, p0, Lzi/r2;->a:Landroid/content/Context;

    iput-object p2, p0, Lzi/r2;->b:Ljava/lang/String;

    iput-boolean p3, p0, Lzi/r2;->c:Z

    iput-wide p4, p0, Lzi/r2;->d:J

    iput p6, p0, Lzi/r2;->e:I

    iput-wide p7, p0, Lzi/r2;->f:J

    iput p9, p0, Lzi/r2;->g:I

    iput-object p10, p0, Lzi/r2;->h:Ljava/lang/String;

    iput p11, p0, Lzi/r2;->i:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 11

    :try_start_0
    iget-object v0, p0, Lzi/r2;->a:Landroid/content/Context;

    iget-object v1, p0, Lzi/r2;->b:Ljava/lang/String;

    iget-boolean v2, p0, Lzi/r2;->c:Z

    iget-wide v3, p0, Lzi/r2;->d:J

    iget v5, p0, Lzi/r2;->e:I

    iget-wide v6, p0, Lzi/r2;->f:J

    iget v8, p0, Lzi/r2;->g:I

    iget-object v9, p0, Lzi/r2;->h:Ljava/lang/String;

    iget v10, p0, Lzi/r2;->i:I

    invoke-static/range {v0 .. v10}, Lzi/q2;->o(Landroid/content/Context;Ljava/lang/String;ZJIJILjava/lang/String;I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "DisconnectStatsSP onDisconnection exception: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lpi/c;->n(Ljava/lang/String;)V

    :goto_0
    return-void
.end method
