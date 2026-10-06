.class Lfe/d$a$a;
.super Landroid/os/AsyncTask;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lfe/d$a;->v1(Landroid/os/IBinder;)Z
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
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/miui/securitycenter/memory/IMemoryCheck;

.field final synthetic b:Lfe/d$a;


# direct methods
.method constructor <init>(Lfe/d$a;Lcom/miui/securitycenter/memory/IMemoryCheck;)V
    .locals 0

    iput-object p1, p0, Lfe/d$a$a;->b:Lfe/d$a;

    iput-object p2, p0, Lfe/d$a$a;->a:Lcom/miui/securitycenter/memory/IMemoryCheck;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method protected varargs a([Ljava/lang/Void;)Ljava/lang/Void;
    .locals 3

    new-instance p1, Lfe/d$a$a$a;

    invoke-direct {p1, p0}, Lfe/d$a$a$a;-><init>(Lfe/d$a$a;)V

    const/4 v0, 0x0

    :try_start_0
    iget-object v1, p0, Lfe/d$a$a;->a:Lcom/miui/securitycenter/memory/IMemoryCheck;

    invoke-interface {v1, p1}, Lcom/miui/securitycenter/memory/IMemoryCheck;->G1(Lcom/miui/securitycenter/memory/IMemoryScanCallback;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    const-string v1, "MemoryCheckManager"

    const-string v2, "startScan"

    invoke-static {v1, v2, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    iget-object p1, p0, Lfe/d$a$a;->b:Lfe/d$a;

    iget-object p1, p1, Lfe/d$a;->a:Lfe/d$c;

    invoke-interface {p1, v0}, Lfe/d$c;->a(Ljava/util/List;)V

    :goto_0
    iget-object p1, p0, Lfe/d$a$a;->b:Lfe/d$a;

    iget-object p1, p1, Lfe/d$a;->k:Lfe/d;

    invoke-static {p1}, Lfe/d;->a(Lfe/d;)Lo4/a;

    move-result-object p1

    const-string v1, "miui.intent.action.MEMORY_CHECK_SERVICE"

    invoke-virtual {p1, v1}, Lo4/a;->h(Ljava/lang/String;)V

    return-object v0
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lfe/d$a$a;->a([Ljava/lang/Void;)Ljava/lang/Void;

    move-result-object p1

    return-object p1
.end method
