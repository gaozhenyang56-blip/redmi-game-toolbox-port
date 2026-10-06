.class Lzi/i1;
.super Lzi/h$a;
.source "SourceFile"


# instance fields
.field final synthetic a:Lzi/h1;


# direct methods
.method constructor <init>(Lzi/h1;)V
    .locals 0

    iput-object p1, p0, Lzi/i1;->a:Lzi/h1;

    invoke-direct {p0}, Lzi/h$a;-><init>()V

    return-void
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .locals 1

    const-string v0, "10052"

    return-object v0
.end method

.method public run()V
    .locals 2

    const-string v0, "exec== mUploadJob"

    invoke-static {v0}, Lpi/c;->B(Ljava/lang/String;)V

    iget-object v0, p0, Lzi/i1;->a:Lzi/h1;

    invoke-static {v0}, Lzi/h1;->e(Lzi/h1;)Lzi/v1;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lzi/i1;->a:Lzi/h1;

    invoke-static {v0}, Lzi/h1;->e(Lzi/h1;)Lzi/v1;

    move-result-object v0

    iget-object v1, p0, Lzi/i1;->a:Lzi/h1;

    invoke-static {v1}, Lzi/h1;->a(Lzi/h1;)Landroid/content/Context;

    move-result-object v1

    invoke-interface {v0, v1}, Lzi/v1;->a(Landroid/content/Context;)V

    iget-object v0, p0, Lzi/i1;->a:Lzi/h1;

    const-string v1, "upload_time"

    invoke-static {v0, v1}, Lzi/h1;->h(Lzi/h1;Ljava/lang/String;)V

    :cond_0
    return-void
.end method
