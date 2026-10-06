.class Ljg/e$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ljg/e;->H(ZII)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Z

.field final synthetic b:I

.field final synthetic c:I

.field final synthetic d:Ljg/e;


# direct methods
.method constructor <init>(Ljg/e;ZII)V
    .locals 0

    iput-object p1, p0, Ljg/e$b;->d:Ljg/e;

    iput-boolean p2, p0, Ljg/e$b;->a:Z

    iput p3, p0, Ljg/e$b;->b:I

    iput p4, p0, Ljg/e$b;->c:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    iget-object v0, p0, Ljg/e$b;->d:Ljg/e;

    iget-boolean v1, p0, Ljg/e$b;->a:Z

    iget v2, p0, Ljg/e$b;->b:I

    iget v3, p0, Ljg/e$b;->c:I

    invoke-static {v0, v1, v2, v3}, Ljg/e;->k(Ljg/e;ZII)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Ljg/e$b;->d:Ljg/e;

    const/4 v1, 0x0

    invoke-virtual {v0, v1, v1}, Ljg/e;->W(ZZ)V

    :cond_0
    return-void
.end method
