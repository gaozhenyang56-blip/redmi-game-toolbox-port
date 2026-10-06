.class public final synthetic Lx5/c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Lx5/e;

.field public final synthetic b:Lc6/c;

.field public final synthetic c:I

.field public final synthetic d:Z


# direct methods
.method public synthetic constructor <init>(Lx5/e;Lc6/c;IZ)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lx5/c;->a:Lx5/e;

    iput-object p2, p0, Lx5/c;->b:Lc6/c;

    iput p3, p0, Lx5/c;->c:I

    iput-boolean p4, p0, Lx5/c;->d:Z

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    iget-object v0, p0, Lx5/c;->a:Lx5/e;

    iget-object v1, p0, Lx5/c;->b:Lc6/c;

    iget v2, p0, Lx5/c;->c:I

    iget-boolean v3, p0, Lx5/c;->d:Z

    invoke-static {v0, v1, v2, v3}, Lx5/e;->a(Lx5/e;Lc6/c;IZ)V

    return-void
.end method
