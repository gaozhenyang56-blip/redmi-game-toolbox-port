.class Lsf/i$c$a;
.super Landroid/os/AsyncTask;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lsf/i$c;->onReceive(Landroid/content/Context;Landroid/content/Intent;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Lx4/c1$a;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Landroid/content/Context;

.field final synthetic b:Lsf/i;

.field final synthetic c:Ljava/util/List;

.field final synthetic d:Lsf/i$c;


# direct methods
.method constructor <init>(Lsf/i$c;Landroid/content/Context;Lsf/i;Ljava/util/List;)V
    .locals 0

    iput-object p1, p0, Lsf/i$c$a;->d:Lsf/i$c;

    iput-object p2, p0, Lsf/i$c$a;->a:Landroid/content/Context;

    iput-object p3, p0, Lsf/i$c$a;->b:Lsf/i;

    iput-object p4, p0, Lsf/i$c$a;->c:Ljava/util/List;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method protected varargs a([Ljava/lang/Void;)Lx4/c1$a;
    .locals 2

    iget-object p1, p0, Lsf/i$c$a;->a:Landroid/content/Context;

    invoke-static {p1}, Lx4/c1;->d(Landroid/content/Context;)Lx4/c1$a;

    move-result-object p1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "networkassist : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lx4/q0;->a(Ljava/lang/String;)V

    return-object p1
.end method

.method protected b(Lx4/c1$a;)V
    .locals 9

    if-eqz p1, :cond_3

    iget-wide v0, p1, Lx4/c1$a;->b:J

    const-wide/16 v2, -0x1

    cmp-long v2, v0, v2

    const-wide/16 v3, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x1

    if-eqz v2, :cond_2

    iget-wide v7, p1, Lx4/c1$a;->a:J

    cmp-long v2, v7, v3

    if-nez v2, :cond_0

    goto :goto_0

    :cond_0
    iget-object v2, p0, Lsf/i$c$a;->b:Lsf/i;

    iget-wide v3, p1, Lx4/c1$a;->c:J

    cmp-long v3, v0, v3

    if-gez v3, :cond_1

    move v5, v6

    :cond_1
    iput-boolean v5, v2, Lsf/i;->m:Z

    iput-boolean v6, v2, Lsf/i;->n:Z

    sub-long/2addr v7, v0

    iput-wide v7, v2, Lsf/i;->o:J

    goto :goto_1

    :cond_2
    :goto_0
    iget-object v0, p0, Lsf/i$c$a;->b:Lsf/i;

    iput-boolean v6, v0, Lsf/i;->m:Z

    iput-boolean v5, v0, Lsf/i;->n:Z

    iput-wide v3, v0, Lsf/i;->o:J

    :goto_1
    iget-object v0, p0, Lsf/i$c$a;->b:Lsf/i;

    iget-boolean p1, p1, Lx4/c1$a;->d:Z

    iput-boolean p1, v0, Lsf/i;->p:Z

    iget-object p1, p0, Lsf/i$c$a;->c:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_2
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Lsf/i$d;

    iget-object v0, p0, Lsf/i$c$a;->b:Lsf/i;

    iget-boolean v2, v0, Lsf/i;->m:Z

    iget-boolean v3, v0, Lsf/i;->n:Z

    iget-wide v4, v0, Lsf/i;->o:J

    iget-boolean v6, v0, Lsf/i;->p:Z

    invoke-interface/range {v1 .. v6}, Lsf/i$d;->onNetworkAssistChange(ZZJZ)V

    goto :goto_2

    :cond_3
    return-void
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lsf/i$c$a;->a([Ljava/lang/Void;)Lx4/c1$a;

    move-result-object p1

    return-object p1
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Lx4/c1$a;

    invoke-virtual {p0, p1}, Lsf/i$c$a;->b(Lx4/c1$a;)V

    return-void
.end method
