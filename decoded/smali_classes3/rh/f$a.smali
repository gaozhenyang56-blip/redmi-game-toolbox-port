.class Lrh/f$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lrh/f;->r(Lrh/h;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lrh/h;

.field final synthetic b:Lrh/f;


# direct methods
.method constructor <init>(Lrh/f;Lrh/h;)V
    .locals 0

    iput-object p1, p0, Lrh/f$a;->b:Lrh/f;

    iput-object p2, p0, Lrh/f$a;->a:Lrh/h;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lrh/f$a;->b:Lrh/f;

    iget-object v0, v0, Lrh/f;->a:Lrh/e;

    iget-object v0, v0, Lrh/e;->o:Llh/a;

    iget-object v1, p0, Lrh/f$a;->a:Lrh/h;

    invoke-virtual {v1}, Lrh/h;->n()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Llh/a;->a(Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lrh/f$a;->b:Lrh/f;

    invoke-static {v1}, Lrh/f;->a(Lrh/f;)V

    if-eqz v0, :cond_1

    iget-object v0, p0, Lrh/f$a;->b:Lrh/f;

    invoke-static {v0}, Lrh/f;->b(Lrh/f;)Ljava/util/concurrent/Executor;

    move-result-object v0

    goto :goto_1

    :cond_1
    iget-object v0, p0, Lrh/f$a;->b:Lrh/f;

    invoke-static {v0}, Lrh/f;->c(Lrh/f;)Ljava/util/concurrent/Executor;

    move-result-object v0

    :goto_1
    iget-object v1, p0, Lrh/f$a;->a:Lrh/h;

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method
