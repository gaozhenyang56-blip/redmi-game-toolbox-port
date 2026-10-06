.class Ljg/e$c;
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

    iput-object p1, p0, Ljg/e$c;->d:Ljg/e;

    iput-boolean p2, p0, Ljg/e$c;->a:Z

    iput p3, p0, Ljg/e$c;->b:I

    iput p4, p0, Ljg/e$c;->c:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    iget-object v0, p0, Ljg/e$c;->d:Ljg/e;

    iget-boolean v1, p0, Ljg/e$c;->a:Z

    iget v2, p0, Ljg/e$c;->b:I

    iget v3, p0, Ljg/e$c;->c:I

    invoke-static {v0, v1, v2, v3}, Ljg/e;->l(Ljg/e;ZII)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "auto"

    invoke-static {v0}, Lpg/e;->h(Ljava/lang/String;)V

    iget-object v0, p0, Ljg/e$c;->d:Ljg/e;

    invoke-static {v0}, Ljg/e;->u(Ljg/e;)Landroid/content/Context;

    move-result-object v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lme/w;->F0(Landroid/content/Context;ZZ)V

    :cond_0
    return-void
.end method
