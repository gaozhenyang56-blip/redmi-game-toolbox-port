.class public final synthetic Lef/f;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Lef/m;

.field public final synthetic b:Ljava/util/concurrent/Executor;

.field public final synthetic c:Lef/m$a;


# direct methods
.method public synthetic constructor <init>(Lef/m;Ljava/util/concurrent/Executor;Lef/m$a;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lef/f;->a:Lef/m;

    iput-object p2, p0, Lef/f;->b:Ljava/util/concurrent/Executor;

    iput-object p3, p0, Lef/f;->c:Lef/m$a;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    iget-object v0, p0, Lef/f;->a:Lef/m;

    iget-object v1, p0, Lef/f;->b:Ljava/util/concurrent/Executor;

    iget-object v2, p0, Lef/f;->c:Lef/m$a;

    invoke-static {v0, v1, v2}, Lef/m;->k(Lef/m;Ljava/util/concurrent/Executor;Lef/m$a;)V

    return-void
.end method
