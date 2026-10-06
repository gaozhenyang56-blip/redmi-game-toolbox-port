.class Lmi/c$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmi/c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lmi/c;


# direct methods
.method constructor <init>(Lmi/c;)V
    .locals 0

    iput-object p1, p0, Lmi/c$a;->a:Lmi/c;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    :try_start_0
    iget-object v0, p0, Lmi/c$a;->a:Lmi/c;

    invoke-static {v0}, Lmi/c;->a(Lmi/c;)Loi/a;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lmi/c$a;->a:Lmi/c;

    invoke-static {v0}, Lmi/c;->c(Lmi/c;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lmi/d;->n(Landroid/content/Context;)Lmi/d;

    move-result-object v0

    invoke-virtual {v0}, Lmi/d;->q()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lmi/c$a;->a:Lmi/c;

    invoke-static {v1}, Lmi/c;->p(Lmi/c;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lmi/c$a;->a:Lmi/c;

    invoke-static {v1}, Lmi/c;->c(Lmi/c;)Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lmi/d;->n(Landroid/content/Context;)Lmi/d;

    move-result-object v1

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lmi/d;->m(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "SdkManager"

    invoke-static {v1}, Lni/a;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "mUpdateChecker exception"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_1
    :goto_0
    return-void
.end method
