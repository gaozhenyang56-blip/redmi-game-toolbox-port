.class public Lzi/m1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private a:Ljava/lang/String;

.field private b:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Landroid/content/Context;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/ref/WeakReference;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/ref/WeakReference<",
            "Landroid/content/Context;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lzi/m1;->a:Ljava/lang/String;

    iput-object p2, p0, Lzi/m1;->b:Ljava/lang/ref/WeakReference;

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    iget-object v0, p0, Lzi/m1;->b:Ljava/lang/ref/WeakReference;

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    if-nez v0, :cond_1

    return-void

    :cond_1
    iget-object v1, p0, Lzi/m1;->a:Ljava/lang/String;

    invoke-static {v1}, Lzi/x1;->a(Ljava/lang/String;)J

    move-result-wide v1

    sget-wide v3, Lzi/l1;->b:J

    cmp-long v1, v1, v3

    if-lez v1, :cond_2

    iget-object v1, p0, Lzi/m1;->a:Ljava/lang/String;

    invoke-static {v1}, Lzi/p1;->i(Ljava/lang/String;)Lzi/p1;

    move-result-object v1

    iget-object v2, p0, Lzi/m1;->a:Ljava/lang/String;

    invoke-static {v2}, Lzi/o1;->l(Ljava/lang/String;)Lzi/o1;

    move-result-object v2

    invoke-virtual {v1, v2}, Lzi/s1$a;->g(Lzi/s1$a;)V

    iget-object v3, p0, Lzi/m1;->a:Ljava/lang/String;

    const/16 v4, 0x3e8

    invoke-static {v0, v3, v4}, Lzi/n1;->j(Landroid/content/Context;Ljava/lang/String;I)Lzi/n1;

    move-result-object v3

    invoke-virtual {v2, v3}, Lzi/s1$a;->g(Lzi/s1$a;)V

    invoke-static {v0}, Lzi/s1;->c(Landroid/content/Context;)Lzi/s1;

    move-result-object v0

    invoke-virtual {v0, v1}, Lzi/s1;->e(Lzi/s1$a;)V

    goto :goto_0

    :cond_2
    const-string v0, "=====> do not need clean db"

    invoke-static {v0}, Lpi/c;->y(Ljava/lang/String;)V

    :goto_0
    return-void
.end method
