.class Lzi/b3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Landroid/content/Context;

.field final synthetic b:J

.field final synthetic c:Z


# direct methods
.method constructor <init>(Landroid/content/Context;JZ)V
    .locals 0

    iput-object p1, p0, Lzi/b3;->a:Landroid/content/Context;

    iput-wide p2, p0, Lzi/b3;->b:J

    iput-boolean p4, p0, Lzi/b3;->c:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    :try_start_0
    iget-object v0, p0, Lzi/b3;->a:Landroid/content/Context;

    iget-wide v1, p0, Lzi/b3;->b:J

    iget-boolean v3, p0, Lzi/b3;->c:Z

    invoke-static {v0, v1, v2, v3}, Lzi/z2;->o(Landroid/content/Context;JZ)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "PowerStatsSP onReceiveMsg exception: "

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
