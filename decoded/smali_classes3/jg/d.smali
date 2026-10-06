.class public final synthetic Ljg/d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Ljg/e;

.field public final synthetic b:Z

.field public final synthetic c:Z


# direct methods
.method public synthetic constructor <init>(Ljg/e;ZZ)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ljg/d;->a:Ljg/e;

    iput-boolean p2, p0, Ljg/d;->b:Z

    iput-boolean p3, p0, Ljg/d;->c:Z

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    iget-object v0, p0, Ljg/d;->a:Ljg/e;

    iget-boolean v1, p0, Ljg/d;->b:Z

    iget-boolean v2, p0, Ljg/d;->c:Z

    invoke-static {v0, v1, v2}, Ljg/e;->b(Ljg/e;ZZ)V

    return-void
.end method
