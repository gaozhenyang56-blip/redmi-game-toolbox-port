.class Lj2/a$a$b;
.super Landroid/os/AsyncTask;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lj2/a$a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "b"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation


# instance fields
.field a:Lj2/a$b;

.field b:J

.field c:Landroid/app/DownloadManager;

.field final synthetic d:Lj2/a$a;


# direct methods
.method constructor <init>(Lj2/a$a;Lj2/a$b;JLandroid/app/DownloadManager;)V
    .locals 0

    iput-object p1, p0, Lj2/a$a$b;->d:Lj2/a$a;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    iput-object p2, p0, Lj2/a$a$b;->a:Lj2/a$b;

    iput-wide p3, p0, Lj2/a$a$b;->b:J

    iput-object p5, p0, Lj2/a$a$b;->c:Landroid/app/DownloadManager;

    return-void
.end method


# virtual methods
.method protected varargs a([Ljava/lang/Void;)Ljava/lang/Boolean;
    .locals 4

    iget-object p1, p0, Lj2/a$a$b;->d:Lj2/a$a;

    invoke-static {}, Lcom/miui/securitycenter/Application;->A()Lcom/miui/securitycenter/Application;

    move-result-object v0

    iget-wide v1, p0, Lj2/a$a$b;->b:J

    iget-object v3, p0, Lj2/a$a$b;->c:Landroid/app/DownloadManager;

    invoke-static {p1, v0, v1, v2, v3}, Lj2/a$a;->a(Lj2/a$a;Landroid/content/Context;JLandroid/app/DownloadManager;)Z

    move-result p1

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1
.end method

.method protected b(Ljava/lang/Boolean;)V
    .locals 2

    invoke-super {p0, p1}, Landroid/os/AsyncTask;->onPostExecute(Ljava/lang/Object;)V

    invoke-static {}, Lcom/miui/securitycenter/Application;->A()Lcom/miui/securitycenter/Application;

    move-result-object v0

    invoke-static {v0}, Lj2/a;->e(Landroid/content/Context;)Lj2/a;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lj2/a;->a(Lj2/a;Z)Z

    iget-object v0, p0, Lj2/a$a$b;->a:Lj2/a$b;

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 v1, 0x4

    :cond_0
    invoke-interface {v0, v1}, Lj2/a$b;->a(I)V

    :cond_1
    return-void
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lj2/a$a$b;->a([Ljava/lang/Void;)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p0, p1}, Lj2/a$a$b;->b(Ljava/lang/Boolean;)V

    return-void
.end method
