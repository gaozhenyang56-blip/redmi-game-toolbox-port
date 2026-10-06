.class Lh2/b$a;
.super Ljava/lang/Thread;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lh2/b;->l()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lh2/b;


# direct methods
.method constructor <init>(Lh2/b;)V
    .locals 0

    iput-object p1, p0, Lh2/b$a;->a:Lh2/b;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lh2/b$a;->a:Lh2/b;

    invoke-static {v0}, Lh2/b;->a(Lh2/b;)V

    iget-object v0, p0, Lh2/b$a;->a:Lh2/b;

    invoke-static {v0}, Lh2/b;->b(Lh2/b;)V

    iget-object v0, p0, Lh2/b$a;->a:Lh2/b;

    invoke-static {v0}, Lh2/b;->d(Lh2/b;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v0

    iget-object v1, p0, Lh2/b$a;->a:Lh2/b;

    invoke-static {v1}, Lh2/b;->c(Lh2/b;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v1

    xor-int/lit8 v1, v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    return-void
.end method
