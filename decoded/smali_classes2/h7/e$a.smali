.class Lh7/e$a;
.super Lh7/a;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lh7/e;->n(Ljava/lang/String;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic d:Lh7/e;


# direct methods
.method constructor <init>(Lh7/e;)V
    .locals 0

    iput-object p1, p0, Lh7/e$a;->d:Lh7/e;

    invoke-direct {p0}, Lh7/a;-><init>()V

    return-void
.end method


# virtual methods
.method public b(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 1

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "onNewReceive: "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "GTB.PBC"

    invoke-static {p2, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p1, p0, Lh7/e$a;->d:Lh7/e;

    invoke-static {p1}, Lh7/e;->d(Lh7/e;)Ljava/lang/String;

    move-result-object p2

    iget-object v0, p0, Lh7/e$a;->d:Lh7/e;

    invoke-static {v0}, Lh7/e;->e(Lh7/e;)I

    move-result v0

    invoke-static {p1, p2, v0}, Lh7/e;->f(Lh7/e;Ljava/lang/String;I)V

    return-void
.end method
