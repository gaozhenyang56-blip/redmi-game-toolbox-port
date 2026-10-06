.class Ljg/e$h;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ljg/e;->U(ZZ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Z

.field final synthetic b:Z

.field final synthetic c:Ljg/e;


# direct methods
.method constructor <init>(Ljg/e;ZZ)V
    .locals 0

    iput-object p1, p0, Ljg/e$h;->c:Ljg/e;

    iput-boolean p2, p0, Ljg/e$h;->a:Z

    iput-boolean p3, p0, Ljg/e$h;->b:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    iget-object v0, p0, Ljg/e$h;->c:Ljg/e;

    iget-boolean v1, p0, Ljg/e$h;->a:Z

    iget-boolean v2, p0, Ljg/e$h;->b:Z

    const/4 v3, 0x1

    invoke-static {v0, v1, v2, v3}, Ljg/e;->h(Ljg/e;ZZZ)V

    return-void
.end method
