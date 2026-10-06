.class Ljg/e$e;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljg/e;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljg/e;


# direct methods
.method constructor <init>(Ljg/e;)V
    .locals 0

    iput-object p1, p0, Ljg/e$e;->a:Ljg/e;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Ljg/e$e;->a:Ljg/e;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Ljg/e;->m(Ljg/e;Z)V

    return-void
.end method
