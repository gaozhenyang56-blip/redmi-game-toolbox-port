.class Lcom/miui/gamebooster/mutiwindow/a$b;
.super Landroid/os/AsyncTask;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/gamebooster/mutiwindow/a;->j()V
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
        "Ljava/util/List<",
        "Ljava/lang/String;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/miui/gamebooster/mutiwindow/a;


# direct methods
.method constructor <init>(Lcom/miui/gamebooster/mutiwindow/a;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/gamebooster/mutiwindow/a$b;->a:Lcom/miui/gamebooster/mutiwindow/a;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method protected varargs a([Ljava/lang/Void;)Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/Void;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    iget-object p1, p0, Lcom/miui/gamebooster/mutiwindow/a$b;->a:Lcom/miui/gamebooster/mutiwindow/a;

    invoke-static {p1}, Lcom/miui/gamebooster/mutiwindow/a;->c(Lcom/miui/gamebooster/mutiwindow/a;)Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/miui/gamebooster/ui/QuickReplySettingsActivity;->n0(Landroid/content/Context;)Ljava/util/List;

    move-result-object p1

    return-object p1
.end method

.method protected b(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    invoke-super {p0, p1}, Landroid/os/AsyncTask;->onPostExecute(Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/miui/gamebooster/mutiwindow/a$b;->a:Lcom/miui/gamebooster/mutiwindow/a;

    invoke-static {v0}, Lcom/miui/gamebooster/mutiwindow/a;->d(Lcom/miui/gamebooster/mutiwindow/a;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    if-eqz p1, :cond_0

    :try_start_0
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/miui/gamebooster/mutiwindow/a$b;->a:Lcom/miui/gamebooster/mutiwindow/a;

    invoke-static {v1}, Lcom/miui/gamebooster/mutiwindow/a;->g(Lcom/miui/gamebooster/mutiwindow/a;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    :cond_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/miui/gamebooster/mutiwindow/a$b;->a([Ljava/lang/Void;)Ljava/util/List;

    move-result-object p1

    return-object p1
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Ljava/util/List;

    invoke-virtual {p0, p1}, Lcom/miui/gamebooster/mutiwindow/a$b;->b(Ljava/util/List;)V

    return-void
.end method
