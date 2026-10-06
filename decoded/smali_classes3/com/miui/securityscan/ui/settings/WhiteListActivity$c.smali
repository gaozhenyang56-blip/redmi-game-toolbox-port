.class Lcom/miui/securityscan/ui/settings/WhiteListActivity$c;
.super Landroid/os/AsyncTask;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/securityscan/ui/settings/WhiteListActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "c"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field private a:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic b:Lcom/miui/securityscan/ui/settings/WhiteListActivity;


# direct methods
.method public constructor <init>(Lcom/miui/securityscan/ui/settings/WhiteListActivity;Ljava/util/Set;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/miui/securityscan/ui/settings/WhiteListActivity$c;->b:Lcom/miui/securityscan/ui/settings/WhiteListActivity;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    iput-object p2, p0, Lcom/miui/securityscan/ui/settings/WhiteListActivity$c;->a:Ljava/util/Set;

    return-void
.end method


# virtual methods
.method protected varargs a([Ljava/lang/Void;)Ljava/lang/Void;
    .locals 1

    iget-object p1, p0, Lcom/miui/securityscan/ui/settings/WhiteListActivity$c;->a:Ljava/util/Set;

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Leg/p;->c(Ljava/lang/String;)I

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method

.method protected b(Ljava/lang/Void;)V
    .locals 2

    new-instance p1, Lcom/miui/securityscan/ui/settings/WhiteListActivity$b;

    iget-object v0, p0, Lcom/miui/securityscan/ui/settings/WhiteListActivity$c;->b:Lcom/miui/securityscan/ui/settings/WhiteListActivity;

    const/4 v1, 0x0

    invoke-direct {p1, v0, v1}, Lcom/miui/securityscan/ui/settings/WhiteListActivity$b;-><init>(Lcom/miui/securityscan/ui/settings/WhiteListActivity;Lcom/miui/securityscan/ui/settings/WhiteListActivity$a;)V

    const/4 v0, 0x1

    invoke-static {v0}, Ljava/util/concurrent/Executors;->newFixedThreadPool(I)Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Void;

    invoke-virtual {p1, v0, v1}, Landroid/os/AsyncTask;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    return-void
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/miui/securityscan/ui/settings/WhiteListActivity$c;->a([Ljava/lang/Void;)Ljava/lang/Void;

    move-result-object p1

    return-object p1
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/miui/securityscan/ui/settings/WhiteListActivity$c;->b(Ljava/lang/Void;)V

    return-void
.end method
