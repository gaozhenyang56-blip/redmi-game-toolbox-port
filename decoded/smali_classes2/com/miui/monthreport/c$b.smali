.class Lcom/miui/monthreport/c$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/monthreport/c;->o()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/miui/monthreport/c;


# direct methods
.method constructor <init>(Lcom/miui/monthreport/c;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/monthreport/c$b;->a:Lcom/miui/monthreport/c;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    iget-object v0, p0, Lcom/miui/monthreport/c$b;->a:Lcom/miui/monthreport/c;

    invoke-static {v0}, Lcom/miui/monthreport/c;->e(Lcom/miui/monthreport/c;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/miui/monthreport/c$b;->a:Lcom/miui/monthreport/c;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/miui/monthreport/c;->f(Lcom/miui/monthreport/c;Z)Z

    new-instance v0, Lcom/miui/monthreport/c$c;

    iget-object v1, p0, Lcom/miui/monthreport/c$b;->a:Lcom/miui/monthreport/c;

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/miui/monthreport/c$c;-><init>(Lcom/miui/monthreport/c;Lcom/miui/monthreport/c$a;)V

    invoke-static {}, Lcom/miui/monthreport/c;->g()Ljava/util/concurrent/Executor;

    move-result-object v1

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Void;

    invoke-virtual {v0, v1, v2}, Landroid/os/AsyncTask;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    :cond_0
    return-void
.end method
